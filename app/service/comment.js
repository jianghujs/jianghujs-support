'use strict';
const Service = require('egg').Service;
const { BizError, errorInfoEnum } = require('../constant/error');
const { tableEnum } = require('../constant/constant');
const validateUtil = require('@jianghujs/jianghu/app/common/validateUtil');
const idGenerateUtil = require('@jianghujs/jianghu/app/common/idGenerateUtil');
// ========================================常用 require end=============================================
const dayjs = require('dayjs');
const _ = require('lodash');
const actionDataScheme = Object.freeze({
  commentLike: {
    type: 'object',
    additionalProperties: true,
    required: [],
    properties: {
      commentId: { anyOf: [{ type: 'string' }, { type: 'null' }] },
      action: { anyOf: [{ type: 'string' }, { type: 'null' }] },
    },
  },
  selectItemListByKeywordAndType: {
    type: 'object',
    additionalProperties: true,
    required: [],
    properties: {
      type: { anyOf: [{ type: 'string' }, { type: 'null' }] },
      keyword: { anyOf: [{ type: 'string' }, { type: 'null' }] },
    },
  },
  beforeHookForId: {
    type: "object",
    additionalProperties: true,
    required: [],
    properties: {
      id: { anyOf: [{ type: 'string' }, { type: 'null' }] },
    },
  },
});

class CommentService extends Service {

  /**
   * before 生成commentId
   */
  async createCommentIdHook() {
    const { actionData } = this.ctx.request.body.appData;
    const { jianghuKnex } = this.app;
    const { userId, username } = this.ctx.userInfo;
    if (!userId) {
      throw new BizError(errorInfoEnum.user_not_logged_in);
    }
    actionData.userId = userId;
    actionData.commentId = await idGenerateUtil.idPlus({
      knex: jianghuKnex,
      startValue: 100000,
      tableName: tableEnum.comment,
      columnName: 'commentId',
    });
    actionData.commentCreateUserId = userId;
    actionData.commentCreateUsername = username;
    actionData.commentCreateTime = dayjs().format();
    if (actionData.replyCommentId) {
      const commentId = actionData.replyCommentId.split(',');
      const res = await jianghuKnex(tableEnum.view01_comment).where({commentId}).first();
      const history = JSON.parse(res.replyCommentContentJson || '[]');
      history.push(res);
      actionData.replyCommentContentJson = JSON.stringify(history);
    }
  }
  /**
   * before 生成commentId
   */
  async afterUpdateArticleHook() {
    const { actionData: { articleId } } = this.ctx.request.body.appData;
    const { jianghuKnex } = this.app;
    const { userId, username } = this.ctx.userInfo;
    await jianghuKnex(tableEnum.article).where({articleId}).update({lastReplyAt: dayjs().format(), lastReplyUser: username, lastReplyUserId: userId })
  }

  async getPageListForArticle(articleId, p, pageSize = 40) {
    const { jianghuKnex } = this.app;
    const { userId } = this.ctx.userInfo;
    const commentList = await jianghuKnex(tableEnum.view01_comment)
      .orderBy([
        { column: 'operationAt', order: 'desc' }
      ])
      .where({articleId})
      .limit(pageSize)
      .offset((+p -1) * pageSize)
      .select();
    commentList.forEach(e => {
      const likeUserListCache = (e.likeUserIdList || '').split(',');
      e.likeCount = e.likeUserIdList ? likeUserListCache.length : 0;
      e.isLike = e.likeCount ? likeUserListCache.includes(userId) : false;
      e.self = userId === e.userId;
      e.replyCommentContentJson = JSON.parse(e.replyCommentContentJson || '[]');
    })
    const articleCount = await jianghuKnex(tableEnum.comment).where({articleId}).count('id');
    return {
      page: p,
      total: articleCount[0]['count(`id`)'],
      list: commentList,
      start: (+p -1) * pageSize + 1,
      end: (+p -1) * pageSize + commentList.length,
      totalPage: articleCount[0]['count(`id`)'] > pageSize ? Math.ceil(+articleCount[0]['count(`id`)'] / pageSize) : 1
    }
  }

  async likeComment() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    if (!userId) {
      throw new BizError(errorInfoEnum.user_not_logged_in)
    }
    validateUtil.validate(
      actionDataScheme.beforeHookForId,
      actionData
    );
    const { id } = actionData;
    const commentInfo = await jianghuKnex(tableEnum.comment).where({id}).first();
    const likeUserIdListArr = _.compact(_.uniq((commentInfo.likeUserIdList || '').split(',')));
    if (likeUserIdListArr.includes(userId)) {
      throw new BizError(errorInfoEnum.exists_comment_like);
    }
    likeUserIdListArr.push(userId)
    const likeUserIdList = likeUserIdListArr.join(',');
    await jianghuKnex(tableEnum.comment).where({id}).update({likeUserIdList});
  }

  async dislikeComment() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    if (!userId) {
      throw new BizError(errorInfoEnum.user_not_logged_in)
    }
    validateUtil.validate(
      actionDataScheme.beforeHookForId,
      actionData
    );
    const { id } = actionData;
    const commentInfo = await jianghuKnex(tableEnum.comment).where({id}).first();
    const likeUserIdListArr = _.compact(_.uniq((commentInfo.likeUserIdList || '').split(',')));
    const likeUserIdList = likeUserIdListArr.filter(e => e !== userId).join(',');
    await jianghuKnex(tableEnum.comment).where({id}).update({likeUserIdList});
  }

}


module.exports = CommentService;
