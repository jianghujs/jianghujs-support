const Service = require('egg').Service;
const dayjs = require("dayjs");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
const idGenerateUtil = require("@jianghujs/jianghu/app/common/idGenerateUtil");
const { tableEnum } = require('../constant/constant');

const actionDataScheme = Object.freeze({
  beforeHookForUserId: {
    type: "object",
    additionalProperties: true,
    required: [],
    properties: {
      userId: { anyOf: [{ type: 'string' }, { type: 'null' }] },
    },
  },
});

class WebUserService extends Service {

  async getUserFavoriteCategoryList() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    if (!userId) {
      return [];
    }
    const userInfo = await jianghuKnex(tableEnum.user_info).where({userId}).first();
    if (!userInfo || !userInfo.userFavoriteCategoryList) {
      return [];
    }
    const categoryIdList = userInfo.userFavoriteCategoryList.split(',');
    if (!categoryIdList.length) {
      return [];
    }
    return await jianghuKnex(tableEnum.category).where('categoryId', 'in', categoryIdList).select();
  }
  async getuserFavoriteUserIdList() {
    const { userId } = this.ctx;
    const { jianghuKnex } = this.app;
    if (!userId) {
      return [];
    }
    const userInfo = await jianghuKnex(tableEnum.user_info).where({userId}).first();
    if (!userInfo || !userInfo.userFavoriteUserIdList) {
      return [];
    }
    const userIdList = userInfo.userFavoriteUserIdList.split(',');
    if (!userIdList.length) {
      return [];
    }
    return await jianghuKnex(tableEnum.category).where('userId', 'in', userIdList).select();
  }

  async likeMember() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    if (!userId) {
      throw new BizError(errorInfoEnum.user_not_logged_in);
    }
    validateUtil.validate(
      actionDataScheme.beforeHookForUserId,
      actionData
    );
    const userInfo = await jianghuKnex(tableEnum.user_info).where({userId}).first();
    if (!userInfo) {
      const insert = {
        userId,
        userFavoriteUserIdList: actionData.userId
      };
      await jianghuKnex(tableEnum.user_info).insert(insert);
    } else {
      
      if (userInfo.userFavoriteUserIdList && userInfo.userFavoriteUserIdList.includes(actionData.userId)) {
        throw new BizError(errorInfoEnum.exists_category_like);
      }
      const userFavoriteUserIdList = userInfo.userFavoriteUserIdList ? userInfo.userFavoriteUserIdList + ',' + actionData.userId : actionData.userId;
      await jianghuKnex(tableEnum.user_info).where({id: userInfo.id}).update({userFavoriteUserIdList});
    }
  }

  async dislikeMember() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    if (!userId) {
      throw new BizError(errorInfoEnum.user_not_logged_in);
    }
    validateUtil.validate(
      actionDataScheme.beforeHookForUserId,
      actionData
    );
    const userInfo = await jianghuKnex(tableEnum.user_info).where({userId}).first();
    if (userInfo) {
      
      if (!userInfo.userFavoriteUserIdList || !userInfo.userFavoriteUserIdList.includes(actionData.userId)) {
        throw new Error('并没有关注、无需取消');
      }
      let userFavoriteUserIdList = userInfo.userFavoriteUserIdList.split(',');
      userFavoriteUserIdList = userFavoriteUserIdList.filter(e => e !== actionData.userId)
      await jianghuKnex(tableEnum.user_info).where({id: userInfo.id}).update({userFavoriteUserIdList: userFavoriteUserIdList.join(',')});
    } else {
      // 并没有收藏、无需取消
    }
  }

}
module.exports = WebUserService;