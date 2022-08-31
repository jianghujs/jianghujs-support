const Service = require('egg').Service;
const dayjs = require("dayjs");
const _ = require("loadsh");
const validateUtil = require("@jianghujs/jianghu/app/common/validateUtil");
const idGenerateUtil = require("@jianghujs/jianghu/app/common/idGenerateUtil");
const { tableEnum } = require('../constant/constant');
const { BizError, errorInfoEnum } = require('../constant/error');

const actionDataScheme = Object.freeze({
  beforeHookForCategoryId: {
    type: "object",
    additionalProperties: true,
    required: [],
    properties: {
      categoryId: { anyOf: [{ type: 'string' }, { type: 'null' }] },
    },
  },
});

class CategoryService extends Service {

  async fillInsertItemParamsBeforeHook() {
    let { categoryId } = this.ctx.request.body.appData.actionData;
    const { userId, username } = this.ctx.userInfo;
    const time = dayjs().format();
    const tableName = "category";
    const columnName = "categoryId";
    categoryId = await idGenerateUtil.idPlus({
      knex: this.app.jianghuKnex,
      tableName,
      columnName,
    });
    Object.assign(this.ctx.request.body.appData.actionData, {
      categoryId,
      categoryCreateTime: time,
      categoryCreateUserId: userId,
      categoryCreateUsername: username,
      categoryUpdateTime: time,
      categoryUpdateUserId: userId,
      categoryUpdateUsername: username,
    })
  }


  async fillUpdateItemParamsBeforeHook() {
    const { userId, username } = this.ctx.userInfo;
    const time = dayjs().format();
    Object.assign(this.ctx.request.body.appData.actionData, {
      categoryUpdateTime: time,
      categoryUpdateUserId: userId,
      categoryUpdateUsername: username,
    })
  }

  async getCategoryAllList() {
    const { jianghuKnex } = this.app;
    const allCategoryList = await jianghuKnex(tableEnum.category).select();
    return _.groupBy(allCategoryList, 'categoryGroup');
  }

  async getHotCategoryTopList() {
    const { jianghuKnex } = this.app;
    return await jianghuKnex(tableEnum.category).limit(10).select('categoryId', 'categoryName');
  }

  async getNewCategoryTopList() {
    const { jianghuKnex } = this.app;
    return await jianghuKnex(tableEnum.category).limit(10).select('categoryId', 'categoryName');
  }

  
  async likeCategory() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    if (!userId) {
      throw new BizError(errorInfoEnum.user_not_logged_in);
    }
    validateUtil.validate(
      actionDataScheme.beforeHookForCategoryId,
      actionData
    );
    const userInfo = await jianghuKnex(tableEnum.user_info).where({userId}).first();
    if (!userInfo) {
      const insert = {
        userId,
        userFavoriteCategoryList: actionData.categoryId
      };
      await jianghuKnex(tableEnum.user_info).insert(insert);
    } else {
      
      if (userInfo.userFavoriteCategoryList && userInfo.userFavoriteCategoryList.includes(actionData.categoryId)) {
        throw new BizError(errorInfoEnum.exists_category_like);
      }
      const userFavoriteCategoryList = userInfo.userFavoriteCategoryList ? userInfo.userFavoriteCategoryList + ',' + actionData.userId : actionData.categoryId;
      await jianghuKnex(tableEnum.user_info).where({id: userInfo.id}).update({userFavoriteCategoryList});
    }
  }

  async dislikeCategory() {
    const { userId } = this.ctx.userInfo;
    const { jianghuKnex } = this.app;
    const { actionData } = this.ctx.request.body.appData;
    if (!userId) {
      throw new BizError(errorInfoEnum.user_not_logged_in);
    }
    validateUtil.validate(
      actionDataScheme.beforeHookForCategoryId,
      actionData
    );
    const userInfo = await jianghuKnex(tableEnum.user_info).where({userId}).first();
    if (userInfo) {
      
      if (!userInfo.userFavoriteCategoryList || !userInfo.userFavoriteCategoryList.includes(actionData.categoryId)) {
        throw new Error('并没有关注、无需取消');
      }
      let userFavoriteCategoryList = userInfo.userFavoriteCategoryList.split(',');
      userFavoriteCategoryList = userFavoriteCategoryList.filter(e => e !== actionData.categoryId)
      await jianghuKnex(tableEnum.user_info).where({id: userInfo.id}).update({userFavoriteCategoryList: userFavoriteCategoryList.join(',')});
    } else {
      // 并没有收藏、无需取消
    }
  }

}
module.exports = CategoryService;