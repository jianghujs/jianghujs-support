'use strict';

const path = require('path');
const assert = require('assert');

const { middleware, middlewareMatch } = require('@jianghujs/jianghu/config/middlewareConfig');

const jianghuPathTemp = require.resolve('@jianghujs/jianghu');
const jianghuPath = path.join(jianghuPathTemp, '../');

module.exports = appInfo => {
  assert(appInfo);

  const appId = 'jianghujs-support';
  const uploadDir = path.join(appInfo.baseDir, 'upload');
  const downloadBasePath = `/${appId}/upload`;

  return {
    appId,
    appTitle: '帮助中心',
    appLogo: `/${appId}/public/logo.png`,
    appType: 'single',
    appDirectoryLink: '/',
    indexPage: '/go/1000',
    loginPage: `/${appId}/page/login`,
    helpPage: `/${appId}/page/help`,
    uploadDir,
    adminUrl: `/${appId}/page/login`,
    loginProtect: 'enable',
    language: 'zh',
    downloadBasePath,
    primaryColor: "#4caf50",
    primaryColorA80: "#EEF7EE",
    static: {
      maxAge: 0,
      buffer: false,
      preload: false,
      maxFiles: 0,
      dir: [
        { prefix: `/${appId}/public/`, dir: path.join(appInfo.baseDir, 'app/public') },
        { prefix: `/${appId}/public/`, dir: path.join(jianghuPath, 'app/public') },
        { prefix: `/${appId}/upload/`, dir: uploadDir },
        { prefix: `/upload/`, dir: uploadDir },
      ],
    },
    view: {
      defaultViewEngine: 'nunjucks',
      mapping: { '.html': 'nunjucks' },
      root: [
        path.join(appInfo.baseDir, 'app/view'),
        path.join(jianghuPath, 'app/view'),
      ].join(','),
    },
    // notfound: {
    //   pageUrl: `/${appId}/page/404.html`,
    // },
    middleware: [ ...middleware, 'webPackage', 'webUserInfo', 'webAuthorization' ],
    ...middlewareMatch,
  };

};
