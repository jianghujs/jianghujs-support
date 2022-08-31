'use strict';

exports.stringify = obj => {
  return JSON.stringify(obj);
};
/**
 * 文章正文格式化显示指定长度
 * @param {string} content 内容
 * @param {*} length 截取内容长度
 * @return 内容
 */
exports.contentSummary = (content, length = 30) => {
  const reg = /[\\\`\*\_\[\]\#\+\-\!\>]/g;
  // todo remove markdown
  let contentStr = content || '';
  contentStr = contentStr
    .replace(/\[jh-toggle\][\s\S]*?\[\/jh-toggle\]/g, '') // jh-article-query
    .replace(/\[jh-article-query\][\s\S]*?\[\/jh-article-query\]/g, '') // jh-article-query
    .replace(/\[\/?jh-.*?\]/g, '') // jh-tag
    .replace(/!?\[.*?]\(.*?\)/g, '') // markdown []()
    .replace(/<[^>]+>/g, '') // html
    .replace(reg, '');
  if (contentStr.length > length) {
    return contentStr.slice(0, length) + '...';
  }
  return contentStr;

};

exports.imgPath = (path, upload, appId) => {
  if (!path) return `/${appId}/public/images/img-default.png`;
  return upload + path;
};

/**
 * 格式化时间：几分前、几小时前...
 * @param {*} ISOTime ISO时间格式
 * @return timeStr
 */
exports.parseTimeLater = ISOTime => {
  return getDate(ISOTime);
};

/**
 * 拼接资源url
 * @param {string} url url
 * @param {string} path 前缀
 * @return 判断后的resource url
 */
exports.resourceUrl = (url, path, de = '') => {
  if (!url) return de;
  if (!url.includes('http')) {
    return path + url;
  }
  return url;
};

/**
 * 获取评论跳转url-最新留言列表
 * @param {*} comment 拼接评论url
 * @return url
 */
exports.commentLink = comment => {
  if (comment.commentType === 'article') {
    return `/?p=${comment.targetId}#comment-${comment.id}`;
  }
  return `/?page_id=${comment.targetId}#comment-${comment.id}`;
};

/**
 * 格式化数字分隔逗号
 * @param {*} number 数字
 * @param {*} precision 小数位
 * @param {*} splitDesc 分隔符
 * @return 替换后的字符串
 */
exports.formatNumber = (number, precision = 0, splitDesc = ',') => {
  if (!number) return 0;
  precision = +precision; // 这里为了处理precision传入null  +null=0
  const str = number.toFixed(precision);
  const reg = str.indexOf('.') > -1 ? /(\d)(?=(\d{3})+\.)/g : /(\d)(?=(?:\d{3})+$)/g;
  return str.replace(reg, '$1' + splitDesc);
};

/**
 * 格式化时间显示
 * @param {(Object|string|number)} time
 * @param {string} cFormat
 * @return {string}
 */
exports.parseTime = (time, cFormat = '{y}-{m}-{d}') => {
  if (arguments.length === 0) {
    return null;
  }
  const format = cFormat || '{y}-{m}-{d} {h}:{i}:{s}';
  let date;
  if (typeof time === 'object') {
    date = time;
  } else {
    if ((typeof time === 'string') && (/^[0-9]+$/.test(time))) {
      time = parseInt(time);
    }
    if ((typeof time === 'number') && (time.toString().length === 10)) {
      time = time * 1000;
    }
    date = new Date(time);
  }
  const formatObj = {
    y: date.getFullYear(),
    m: date.getMonth() + 1,
    d: date.getDate(),
    h: date.getHours(),
    i: date.getMinutes(),
    s: date.getSeconds(),
    a: date.getDay(),
  };
  const time_str = format.replace(/{(y|m|d|h|i|s|a)+}/g, (result, key) => {
    let value = formatObj[key];
    // Note: getDay() returns 0 on Sunday
    if (key === 'a') {
      return [ '日', '一', '二', '三', '四', '五', '六' ][value];
    }
    if (result.length > 0 && value < 10) {
      value = '0' + value;
    }
    return value || 0;
  });
  return time_str;
};


function getDate(dateTimeStamp) {

  const minute = 1000 * 60;
  const hour = minute * 60;
  const day = hour * 24;
  const halfamonth = day * 15;
  const month = day * 30;
  if (dateTimeStamp === undefined) {

    return false;
  }
  const sTime = new Date(dateTimeStamp).getTime();// 把时间pretime的值转为时间戳

  const now = new Date().getTime();// 获取当前时间的时间戳

  const diffValue = now - sTime;

  if (diffValue < 0) {
    console.log('结束日期不能小于开始日期！');
  }

  const monthC = diffValue / month;
  const weekC = diffValue / (7 * day);
  const dayC = diffValue / day;
  const hourC = diffValue / hour;
  const minC = diffValue / minute;

  if (monthC >= 1) {
    return exports.parseTime(sTime);
    // return '';
  } else if (weekC >= 1) {
    return parseInt(weekC) + ' week ago';
  } else if (dayC >= 1) {
    return parseInt(dayC) + ' days ago';
  } else if (hourC >= 1) {
    return parseInt(hourC) + ' hours ago';
  } else if (minC >= 1) {
    return parseInt(minC) + ' minutes ago';
  }
  return 'just now';
}
