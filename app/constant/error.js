'use strict';

class ValidateError extends Error {
  constructor({ errorCode, errorReason, errorReasonSupplement }) {
    super(JSON.stringify({ errorCode, errorReason, errorReasonSupplement }));
    this.name = 'ValidateError';
    this.errorCode = errorCode;
    this.errorReason = errorReason;
    this.errorReasonSupplement = errorReasonSupplement;
  }
}

class BizError extends Error {
  constructor({ errorCode, errorReason, errorReasonSupplement }) {
    super(JSON.stringify({ errorCode, errorReason, errorReasonSupplement }));
    this.name = 'BizError';
    this.errorCode = errorCode;
    this.errorReason = errorReason;
    this.errorReasonSupplement = errorReasonSupplement;
  }
}

const errorInfoEnum = Object.freeze({
  exists_comment_like: {
    errorCode: "exists_category_like",
    errorReason: "已点赞评论、勿重复操作",
  },
  exists_category_like: {
    errorCode: "exists_category_like",
    errorReason: "已收藏节点、勿重复操作",
  },
  user_not_logged_in: {
    errorCode: "user_not_logged_in",
    errorReason: "用户未登录",
  },
  category_not_found: {
    errorCode: "category_not_found",
    errorReason: "分类节点不存在",
  },
  article_not_found: {
    errorCode: "article_not_found",
    errorReason: "文章不存在",
  },
  article_no_access: {
    errorCode: "article_no_access",
    errorReason: "无权限访问",
  },
  material_is_not_file: {
    errorCode: "material_is_not_file",
    errorReason: "所选素材不是文件类型",
  },
  path_invalid: {
    errorCode: "path_invalid",
    errorReason: "无效的路径",
  },
  target_file_not_exist: {
    errorCode: "target_file_not_exist",
    errorReason: "文件不存在",
  },
  target_folder_invalid: {
    errorCode: "target_folder_invalid",
    errorReason: "粘贴目录不存在",
  },

});

module.exports = {
  ValidateError,
  BizError,
  errorInfoEnum,
};
