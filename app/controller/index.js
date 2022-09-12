'use strict';

const Controller = require('egg').Controller;
const { tableEnum } = require('../constant/constant');
const _ = require('lodash');
const dayjs = require('dayjs');
const { BizError, errorInfoEnum } = require('../constant/error');

class IndexController extends Controller {
  
  constructor(ctx) {
    super(ctx);
    this.userId = this.ctx.userInfo.userId;
  }
  async index() {
    const app = this.app;
    const { jianghuKnex } = app;

    const { tab } = this.ctx.query;
    const { userId } = this.ctx.userInfo;
    let template;
    
    const configs = await this.userInfoAndConstant();
    this.setTabActive(tab, configs);

    const { categoryList = [], path } = configs.constantUiMap.home.tabList.find(e => e.active);
    

    // 查询帖子列表
    configs.articleList = await this.ctx.service.article.getHomeArticleList(path, categoryList);
    if (userId) {
      // 查询收藏节点列表
      configs.userFavoriteCategoryList = await this.ctx.service.webUser.getUserFavoriteCategoryList();
      // 帖子浏览历史
      configs.userArticleViewList = await this.ctx.service.article.getUserArticleView();
    }
    // 最热文章
    configs.hotArticleList = await this.ctx.service.article.getHotArticleList();
    // 节点导航
    configs.categoryAllList = await this.ctx.service.category.getCategoryAllList();
    // 最热节点
    configs.hotCategoryList = await this.ctx.service.category.getHotCategoryTopList();
    // 最近新增节点
    configs.newCategoryList = await this.ctx.service.category.getNewCategoryTopList();
    configs.categoryList = categoryList;
    
    // await this.ctx.render(`page/home.html`, configs);
    this.ctx.redirect(`/go/1000`);
  }

  async category() {
    const app = this.app;
    const { jianghuKnex } = app;
    const { p = 1  } = this.ctx.query;
    const { categoryId  } = this.ctx.params;
    const { userId } = this.ctx.userInfo;
    const pageSize = 20;
    let template;

    const configs = await this.userInfoAndConstant();

    // 分类详情
    configs.categoryInfo = await jianghuKnex(tableEnum.view01_category).where('categoryId', categoryId).first();
    configs.isFavorite = false;
    if (userId) {
      const userInfo = await jianghuKnex(tableEnum.user_info).where({userId}).first();
      const userFavoriteCategoryList = userInfo && userInfo.userFavoriteCategoryList ? userInfo.userFavoriteCategoryList.split(',') : [];
      configs.isFavorite = userFavoriteCategoryList.includes(categoryId);
    }

    // 查询帖子列表
    const articleList = await jianghuKnex(tableEnum.view01_article).where({categoryId})
    .orderBy('lastReplyAt', 'desc')
    .orderBy([
      { column: 'lastReplyAt', order: 'desc' }, 
      { column: 'operationAt', order: 'desc' }
    ])
    .limit(pageSize)
    .offset((+p -1) * pageSize)
    .select();

    // const articleCount = await jianghuKnex(tableEnum.view01_article).where('categoryId', categoryId).count('id');
    configs.articleList = {
      page: p,
      total: configs.categoryInfo.articleCount,
      list: articleList,
      start: (+p -1) * pageSize + 1,
      end: (+p -1) * pageSize + articleList.length,
      totalPage: configs.categoryInfo.articleCount > pageSize ? Math.ceil(+configs.categoryInfo.articleCount / p) : 1
    }
    
    await this.ctx.render(`page/nodeDetail.html`, configs);
  }

  async member() {
    const app = this.app;
    const { jianghuKnex } = app;

    const { userId  } = this.ctx.params;
    const { userId: uid } = this.ctx.userInfo;
    let template;
    const configs = await this.userInfoAndConstant();

    // 用户详情
    configs.userInfo = await jianghuKnex(tableEnum.view01_user_info).where({userId}).first();
    const selfInfo = await jianghuKnex(tableEnum.user_info).where({userId: uid}).first();
    configs.isLike = selfInfo && selfInfo.userFavoriteUserIdList && selfInfo.userFavoriteUserIdList.split(',').includes(userId);

    // 最近回复
    configs.lastCommentList = await jianghuKnex(tableEnum.comment)
      .leftJoin(tableEnum.view01_article, `${tableEnum.comment}.articleId`, `${tableEnum.view01_article}.articleId`)
      .orderBy(`${tableEnum.comment}.commentCreateTime`, 'desc')
      .where(`${tableEnum.comment}.userId`, userId)
      .limit(20)
      .select();

    const articleList = await jianghuKnex(tableEnum.view01_article).orderBy('operationAt', 'desc').where({userId}).limit(20).select();
    // 动态分类节点下帖子显示
    configs.articleList = articleList;
    configs.articleListGroup = _.groupBy(articleList, 'categoryId');
    // TODO 工作/交易/城市相关
    await this.ctx.render(`page/member.html`, configs);
  }

  /**
   * 文章帖子详情
   */
  async article() {
    const app = this.app;
    const { jianghuKnex } = app;

    const { articleId  } = this.ctx.params;
    const { p = 1 } = this.ctx.query;
    const { userId } = this.ctx.userInfo;
    const pageSize = 2;
    const configs = await this.userInfoAndConstant();

    // 帖子详情
    configs.articleInfo = await jianghuKnex(tableEnum.view01_article)
    .leftJoin(tableEnum.user_info, `${tableEnum.view01_article}.userId`, `${tableEnum.user_info}.userId`)
    .where({articleId})
    .first();
    
    configs.isLike = false;
    configs.isFavorite = false;
    if (userId) {
      configs.isLike = await jianghuKnex(tableEnum.article_like).where({userId, likeStatus: 'like'}).first();
      configs.isFavorite = await jianghuKnex(tableEnum.article_favorite).where({userId}).first();
    }

    // 评论列表
    configs.commentList = await this.ctx.service.comment.getPageListForArticle(articleId, p, pageSize);

    if (userId) {
      await jianghuKnex(tableEnum.article_view).insert({articleId, userId});
    }

    const articleList = userId ? await jianghuKnex(tableEnum.article).orderBy('operationAt', 'desc').where({userId}).limit(20).select() : [];
    // 动态分类节点下帖子显示
    configs.articleList = _.groupBy(articleList, 'categoryId');
    // TODO 工作/交易/城市相关
    await this.ctx.render(`page/article.html`, configs);
  }

  async userInfoAndConstant() {
    const { jianghuKnex } = this.app;
    const { userId } = this.ctx.userInfo;
    let userInfo = null;
    if (userId) {
      const userInfo = userId ? await jianghuKnex(tableEnum.view01_user_info).where({userId}).first() : {};
      userInfo.userFavoriteCategoryCount = _.compact((userInfo.userFavoriteCategoryList || '').split(',')).length;
      userInfo.userFavoriteUserCount = _.compact((userInfo.userFavoriteUserIdList || '').split(',')).length;
      userInfo.userFavoriteArticleCount = (await jianghuKnex(tableEnum.article_favorite).where({userId}).select()).length;
    }
    return {
      constantUiMap: await this.getConstantUiMap(),
      userInfo,
      isLogin: !!userId
    }
  }

  /**
   * 获取 constantUi 并转成 map
   */
  async getConstantUiMap() {
    const { jianghuKnex } = this.app;
    const constantUiList = await jianghuKnex(tableEnum._constant_ui).select();
    const constantUiMap = {};
    constantUiList.forEach(constantUi => {
      constantUiMap[constantUi.constantKey] = [ 'array', 'object' ].includes(constantUi.constantType) ? JSON.parse(constantUi[this.app.config.language]) : constantUi[this.app.config.language];
    });

    return constantUiMap;
  }

  /**
   * 设置当前高亮菜单项
   * @param tab
   * @param configs
   */
  setTabActive(tab, configs) {
    const constantUiMap = configs.constantUiMap;
    // 处理 header tab 的选中状态
    if (configs.constantUiMap.home) {
      let index = 0;
      if (tab) {
        index = configs.constantUiMap.home.tabList.findIndex(e => e.path === tab);
        if (index > -1) {
          this.ctx.session.tab = tab;
        }
      } else {
        const sessionTab = this.ctx.session.tab;
        if (sessionTab) {
          index = configs.constantUiMap.home.tabList.findIndex(e => e.path === sessionTab);
        }
      }
      index = index < 0 ? 0 : index;
      configs.constantUiMap.home.tabList[index].active = true;
    }
  }

  async endWith404(configs) {
    configs.checkAlsoArticleList = await this.getCheckAlsoArticleList();
    await this.ctx.render('page/404.html', configs);
  }

  /**
   * 查询文章
   * @param knexQuery
   * @param paged
   * @param pageSize
   */
   async queryArticle(knexQuery, paged, pageSize) {
    if (!paged || paged < 1) {
      paged = 1;
    }
    knexQuery = knexQuery.where('articlePublishStatus', 'in', [ 'login', 'public' ]);
    const knexQueryBakckup = knexQuery.clone();

    // 页码
    const articleAllCount = (await knexQueryBakckup.clone().count())[0]['count(*)'];
    const articleNowPage = paged;
    const articleAllPage = Math.ceil(articleAllCount / pageSize) || 1;
    const articlePageSize = pageSize;
    // 页码超出跳到最后一页
    if (paged > articleAllPage) {
      this.ctx.redirect(this.ctx.url.replace(`p=${paged}`, `p=${articleAllPage}`));
      return null;
    }

    const articleList = await knexQueryBakckup
      .clone()
      .offset((paged - 1) * pageSize)
      .limit(pageSize)
      .orderBy('articlePublishTime', 'desc')
      .select();
    return {
      articleList,
      articleAllCount,
      articleNowPage,
      articleAllPage,
      articlePageSize,
    };
  }
}

module.exports = IndexController;
