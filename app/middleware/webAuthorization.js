'use strict';

const { userStatusEnum, tableEnum } = require('../constant/constant');
const { errorInfoEnum } = require('../constant/error');

module.exports = option => {
  return async (ctx, next) => {
    if (ctx.app.config.loginProtect !== 'enable') {
      await next();
      return;
    }

    // 按 pageId 获取 page 数据
    const pathPage = ctx.request.path.replace(`/${ctx.app.config.appId}/page/`, '');
    if (pathPage.includes(ctx.app.config.appId)) {
      await next();
      return;
    }
    const { packagePage, userInfo } = ctx;
    const { user, userAppList, allowPageList } = userInfo;
    const { pageId } = packagePage;
    const isLoginUser = user && user.userId;
    const { config, jianghuKnex } = ctx.app;
    const { appType, appId } = config;
    // 对于 public page ====》不需要做 用户状态的校验
    // public: { user: "*", group: "public", role: "*" }
    const allUserGroupRolePageList = await jianghuKnex(
      tableEnum._user_group_role_page
    ).select();
    const isNotPublic = !allUserGroupRolePageList.find(
      (rule) =>
        rule.group === "public" && rule.role === "*" && rule.page === pageId
    );
    const { originalUrl } = ctx.request;
    const originalUrlEncode = encodeURIComponent(originalUrl);

    const goToErrorPage = ({ isLoginUser, error }) => {
      if (!isLoginUser) {
        ctx.redirect(
          ctx.app.config.loginPage + `?redirectUrl=${originalUrlEncode}`
        );
      } else {
        const { errorCode, errorReason } = error;
        ctx.redirect(
          `${ctx.app.config.helpPage}?errorCode=${errorCode}&errorReason=${errorReason}`
        );
      }
    };

    // 1. 判断用户是否有当前app的权限
    if (appType === "multiApp") {
      const targetUserApp =
        userAppList && userAppList.find((x) => x.appId === appId);
      if (isNotPublic && !targetUserApp) {
        const { errorCode, errorReason } = errorInfoEnum.request_app_forbidden;
        ctx.redirect(
          `${ctx.app.config.loginPage}?errorCode=${errorCode}&errorReason=${errorReason}`
        );
        return;
      }
    }

    // 2 判断用户状态
    if (isNotPublic && isLoginUser) {
      const { userStatus } = user;
      if (userStatus === userStatusEnum.banned) {
        goToErrorPage({ isLoginUser, error: errorInfoEnum.user_banned });
        return;
      }
      if (userStatus !== userStatusEnum.active) {
        goToErrorPage({ isLoginUser, error: errorInfoEnum.user_status_error });
        return;
      }
    }

    // 3. 判断用户是否有 当前 packagePage 的权限
    if (allowPageList.findIndex((x) => x.pageId === pageId) === -1) {
      goToErrorPage({ isLoginUser, error: errorInfoEnum.page_forbidden });
      return;
    }

    // 4. 已登录 则重定向到首页
    if (pageId === "login" && isLoginUser) {
      ctx.redirect(ctx.app.config.indexPage);
    }
    await next();
  };
};

