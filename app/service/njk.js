'use strict';

// ========================================常用 require start===========================================
const Service = require('egg').Service;
// ========================================常用 require end=============================================


class NjkService extends Service {

  async test() {
    return {
      string: 'nunjucks 基础使用demo',
      array: [
        {
          id: 1,
          title: 'njk array test 1'
        },
        {
          id: 2,
          title: 'njk array test 2'
        },
        {
          id: 2,
          title: 'njk array test 3'
        }
      ],
      object: {
        id: 12,
        title: 'test object'
      }
    };
  }
}

module.exports = NjkService;
