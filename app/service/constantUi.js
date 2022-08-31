'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
const { tableEnum } = require('../constant/constant');
// ========================================常用 require end=============================================


class ConstantUiService extends Service {

  async getConstantUiMap() {
    const { jianghuKnex } = this.app;
    const { pageId } = this.ctx.packagePage;
    const { language = 'zh' } = this.app.config;
    const constantUiList = await jianghuKnex(tableEnum._constant_ui).whereIn('pageId', ['all', pageId]).select();
    // const constantUiMap = Object.fromEntries(
    //   constantUiList.map(obj => [obj.constantKey, JSON.parse(obj[language] || '{}')])
    // );
    const constantUiMap = {};
    constantUiList.forEach(constantUi => {
      constantUiMap[constantUi.constantKey] = [ 'array', 'object' ].includes(constantUi.constantType) ? JSON.parse(constantUi[language]) : constantUi[language];
    });
    this.ctx.constantUiMap = constantUiMap;
    return constantUiMap;
  }
}

module.exports = ConstantUiService;
