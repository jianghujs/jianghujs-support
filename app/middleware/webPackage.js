'use strict';

const { tableEnum } = require('../constant/constant');

module.exports = () => {
  return async (ctx, next) => {
    if (ctx.app.config.loginProtect !== 'enable') {
      await next();
      return;
    }

    const { logger, jianghuKnex } = ctx.app;

    // 按 pageId 获取 page 数据
    let pageId = ctx.request.path.replace(`/${ctx.app.config.appId}/page/`, '');
    if (pageId.includes(ctx.app.config.appId)) {
      await next();
      return;
    }
    pageId = pageId === '/' ? 'home' : pageId;
    // 尝试获取全路径
    let page = null;
    const pageObj = {
      member: 'webMember',
      go: 'webCategory',
      t: 'webArticle',
      write: 'webWrite',
      tag: 'webTag',
      settings: 'webSetting',
      my: 'collect'
    }
    // 除了特殊的多层路由，其它多层路由都变成 /page/pageName/param0/param1...
    // 并将 param[] 放到 ctx.pathParams 中
    if (pageId.includes('/')) {
      const parts = pageId.split('/');
      page = await jianghuKnex(tableEnum._page).where({ pageId: pageObj[parts[1]] }).first();
      if (page && page.pageType === 'seo') {
        ctx.pathParams = parts.splice(1);
      }
    }

    if (!page) {
      page = await jianghuKnex(tableEnum._page).where({ pageId }).first();
    }

    ctx.packagePage = page;
    if (!ctx.packagePage) {
      logger.error(`[page not found error], url: ${ctx.request.url}`);
      ctx.redirect(ctx.app.config.helpPage);
      return;
    }

    await next();
  };
};

