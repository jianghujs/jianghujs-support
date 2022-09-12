'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {

  const { router, controller, config } = app;
  const { appId } = config;

  router.get('/', controller.index.index);
  router.post(`/${appId}/resource`, controller.resource.httpRequest);

  router.get('/go/:categoryId', controller.index.category);
  router.get('/member/:userId', controller.index.member);
  router.get('/t/:articleId', controller.index.article);
};

