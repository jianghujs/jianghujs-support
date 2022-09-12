const Service = require('egg').Service;
const dayjs = require("dayjs");
const _ = require("loadsh");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
const idGenerateUtil = require("@jianghujs/jianghu/app/common/idGenerateUtil");
const { tableEnum } = require('../constant/constant');
const { BizError, errorInfoEnum } = require('../constant/error');

const actionDataScheme = Object.freeze({
  beforeHookForArticleId: {
    type: "object",
    additionalProperties: true,
    required: [],
    properties: {
      categoryId: { anyOf: [{ type: 'string' }, { type: 'null' }] },
    },
  },
});

class ArticleService extends Service {

  /**
   * before 生成articleId
   */
   async createArticleIdHook() {
    const { userId, username } = this.ctx.userInfo;
    if (!userId) {
      throw new BizError(errorInfoEnum.user_not_logged_in);
    }
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex } = this.app;
    actionData.articleId = await idGenerateUtil.idPlus({
      knex: jianghuKnex,
      startValue: 100000,
      tableName: tableEnum.article,
      columnName: 'articleId',
    });
    actionData.userId = userId;
    actionData.articleCreateTime = dayjs().format();
  }
  
  async likeArticle() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(
      actionDataScheme.beforeHookForArticleId,
      actionData
    );
    const { articleId } = actionData;
    await jianghuKnex(tableEnum.article_like).where({articleId, userId}).delete();
    const insert = {
      articleId,
      userId,
      likeStatus: 'like'
    };
    await jianghuKnex(tableEnum.article_like).insert(insert);
  }

  async dislikeArticle() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(
      actionDataScheme.beforeHookForArticleId,
      actionData
    );
    const { articleId } = actionData;
    await jianghuKnex(tableEnum.article_like).where({articleId, userId}).delete();
    const insert = {
      articleId,
      userId,
      likeStatus: 'dislike'
    };
    await jianghuKnex(tableEnum.article_like).insert(insert);
  }

  async favoriteArticle() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(
      actionDataScheme.beforeHookForArticleId,
      actionData
    );
    const { articleId } = actionData;
    await jianghuKnex(tableEnum.article_favorite).where({articleId, userId}).delete();
    const insert = {
      articleId,
      userId
    };
    await jianghuKnex(tableEnum.article_favorite).insert(insert);
  }

  async disfavorArticle() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    validateUtil.validate(
      actionDataScheme.beforeHookForArticleId,
      actionData
    );
    const { articleId } = actionData;
    await jianghuKnex(tableEnum.article_favorite).where({articleId, userId}).delete();
  }

  async getUserArticleView() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    return await jianghuKnex(tableEnum.article_view)
    .distinct(`${tableEnum.article_view}.articleId`)
    .leftJoin(tableEnum.article, `${tableEnum.article_view}.articleId`, `${tableEnum.article}.articleId`)
    .orderBy(`${tableEnum.article_view}.operationAt`, 'desc')
    .where(`${tableEnum.article_view}.userId`, userId)
    .limit(5)
    .select(`${tableEnum.article}.articleId`, `${tableEnum.article}.articleTitle`);
  }
  async getHotArticleList() {
    const { jianghuKnex, knex } = this.app;
    return await jianghuKnex(tableEnum.article_view)
    .leftJoin(tableEnum.article, `${tableEnum.article_view}.articleId`, `${tableEnum.article}.articleId`)
    .limit(5)
    .groupBy(`${tableEnum.article_view}.articleId`)
    .orderBy(`count`, 'desc')
    .select(`${tableEnum.article}.articleId`, `${tableEnum.article}.articleTitle`, knex.raw(`count(${tableEnum.article_view}.id) as count`));
  }
  async getHomeArticleList(path, categoryList) {
    const { jianghuKnex } = this.app;
    if (path === 'hot') {
      // 最热
      return await jianghuKnex(tableEnum.view01_article)
      .leftJoin(tableEnum._user, `${tableEnum.view01_article}.userId`, `${tableEnum._user}.userId`)
      .orderBy(`${tableEnum.view01_article}.commentCount`, 'desc')
      .limit(20)
      .select(
        `${tableEnum.view01_article}.userId`, 
        `${tableEnum.view01_article}.articleId`,
        `${tableEnum.view01_article}.userAvatar`,
        `${tableEnum.view01_article}.articleCreateTime`,
        `${tableEnum.view01_article}.articleCreateUsername`,
        `${tableEnum.view01_article}.lastReplyUser`,
        `${tableEnum.view01_article}.categoryName`,
        `${tableEnum.view01_article}.commentCount`,
        `${tableEnum.view01_article}.articleTitle`,
      );
    } else if (path === 'all') {
      // 全部
      return await jianghuKnex(tableEnum.view01_article)
      .leftJoin(tableEnum._user, `${tableEnum.view01_article}.userId`, `${tableEnum._user}.userId`)
      .orderBy(`${tableEnum.view01_article}.operationAt`, 'desc')
      .limit(20)
      .select(
        `${tableEnum.view01_article}.userId`, 
        `${tableEnum.view01_article}.articleId`,
        `${tableEnum.view01_article}.userAvatar`,
        `${tableEnum.view01_article}.articleCreateTime`,
        `${tableEnum.view01_article}.articleCreateUsername`,
        `${tableEnum.view01_article}.lastReplyUser`,
        `${tableEnum.view01_article}.categoryName`,
        `${tableEnum.view01_article}.commentCount`,
        `${tableEnum.view01_article}.articleTitle`,
      );
    } else {
      const categoryIdList = categoryList.map(e => {return e.id});
      // 查询帖子列表
      return await jianghuKnex(tableEnum.view01_article)
      .leftJoin(tableEnum._user, `${tableEnum.view01_article}.userId`, `${tableEnum._user}.userId`)
      .orderBy(`${tableEnum.view01_article}.operationAt`, 'desc')
      .where('categoryId', 'in', categoryIdList)
      .limit(20)
      .select(
        `${tableEnum.view01_article}.userId`, 
        `${tableEnum.view01_article}.articleId`,
        `${tableEnum.view01_article}.userAvatar`,
        `${tableEnum.view01_article}.articleCreateTime`,
        `${tableEnum.view01_article}.articleCreateUsername`,
        `${tableEnum.view01_article}.lastReplyUser`,
        `${tableEnum.view01_article}.categoryName`,
        `${tableEnum.view01_article}.commentCount`,
        `${tableEnum.view01_article}.articleTitle`,
      );
    }
  }
}
module.exports = ArticleService;