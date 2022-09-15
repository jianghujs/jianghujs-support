# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '常量表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant_ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant_ui`;
CREATE TABLE `_constant_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `pageId` varchar(255) DEFAULT 'all' COMMENT '页面id',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `en` text COMMENT '常量内容; object, array',
  `zh` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `pageId_constantKey_unique` (`constantKey`, `pageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 COMMENT = '常量表;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant_ui
# ------------------------------------------------------------

INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'header','object','all',NULL,'{\n\t\"logo\": \"/logo.png\",\n\t\"title\": \"JIANGHU\",\n\t\"menuList\": [{\n\t\t\"categoryId\": \"10004\",\n\t\t\"categoryName\": \"jianghuJS\",\n\t\t\"path\": \"/page/article/10004\",\n\t\t\"isLogin\": true\n\t}, {\n\t\t\"categoryName\": \"Training\",\n\t\t\"path\": \"/page/article/10083\",\n\t\t\"isLogin\": false\n\t}, {\n\t  \"categoryId\": \"10005\",\n\t\t\"categoryName\": \"duoxing-instant message\",\n\t\t\"path\": \"/page/article/10016\",\n\t\t\"isLogin\": true\n\t}, {\n\t    \"categoryId\": \"10009\",\n\t\t\"categoryName\": \"xuanfeng-content management\",\n\t\t\"path\": \"/page/article/10075\",\n\t\t\"isLogin\": true\n\t}, {\n\t  \"categoryId\": \"10010\",\n\t\t\"categoryName\": \"wulin-live classroom\",\n\t\t\"path\": \"/page/article/10076\",\n\t\t\"isLogin\": true\n\t}],\n\t\"userAction\": {\n\t\t\"isOpen\": true,\n\t\t\"admin\": true,\n\t\t\"password\": true,\n\t\t\"logout\": true\n\t}\n}','{\n\t\"logo\": \"/img/logo.svg\",\n\t\"title\": \"JIANGHU\"\n}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,'body','object','home','首页说明文字','{ \r\n  \"title\": \"<span class=\'jianghu-home-hero-accent\'>Progressive</span></br>Enterprise Framework</p>\", \r\n  \"desc\": \"beginners will enjoy learning and using\",\r\n\t\"btnGettingStarted\": \"Getting Started\"\r\n}','{\"title\": \"<span class=\'jianghu-home-hero-accent\'>nunjucks</span></br>DEMO</p>\", \"desc\": \"构建短平快的学习路径，系统学习企业级应用开发的整体框架\", \"btnGettingStarted\": \"开始使用\"}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'features','array','home',NULL,'[{\r\n\t\"title\": \"learn enterprise application development\\n the overall framework\",\r\n\t\"content\": \"start with the overall framework，easy for beginners to learn，grasp the core concepts，improve learning and development efficiency。\",\r\n\t\"img\": \"/images/home/icon-3.png\"\r\n}, {\r\n\t\"title\": \"build the shortest learning path\",\r\n\t\"content\": \"learn what you need，put aside what you dont，bulid the shortest lerning path for enterprise application development。\",\r\n\t\"img\": \"/images/home/icon-4.png\"\r\n}, {\r\n\t\"title\": \"jianghu scaffold \\n quick page generation\",\r\n\t\"content\": \"integrate scaffold jianghu-init，It can be used to quickly build frameworks, pages, management, and other business components。\",\r\n\t\"img\": \"/images/home/icon-2.png\"\r\n}, {\r\n\t\"title\": \"Based on lake JS ecology \\n Out of the box application\",\r\n\t\"content\": \"jianghuJS、duoxing-IM、xuanfeng-Content management、wulin live classroom、training、IT primary programming training。\",\r\n\t\"img\": \"/images/home/icon-1.png\"\r\n}]','[{\r\n\t\"title\": \"学习企业级应用开发\\n整体框架\",\r\n\t\"content\": \"先从整体框架入手，便于新手学习，把握核心概念，提升学习与开发效率。\",\r\n\t\"img\": \"/images/home/icon-3.png\"\r\n}, {\r\n\t\"title\": \"构建最短学习路径\",\r\n\t\"content\": \"用到学习，不用的先放一放，构建能够开发企业级应用的最短学习路径。\",\r\n\t\"img\": \"/images/home/icon-4.png\"\r\n}, {\r\n\t\"title\": \"江湖脚手架\\n快速生成页面\",\r\n\t\"content\": \"集成脚手架 jianghu-init，可用于快速构建框架、页面、管理等业务组件。\",\r\n\t\"img\": \"/images/home/icon-2.png\"\r\n}, {\r\n\t\"title\": \"基于江湖JS生态\\n开箱即用的江湖应用\",\r\n\t\"content\": \"江湖JS、多星-即时通讯、旋风-内容管理、武林直播课堂、training、IT初级编程培训等。\",\r\n\t\"img\": \"/images/home/icon-1.png\"\r\n}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'links','array','all',NULL,'[{\r\n\t\"label\": \"Reference\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"EggJS\",\r\n\t\t\"path\": \"https://www.eggjs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"CNode\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"jianghu application\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"jianghuJS\",\r\n\t\t\"path\": \"/page/article/10005\"\r\n\t}, {\r\n\t\t\"title\": \"xuanfeng content management\",\r\n\t\t\"path\": \"/page/article/10075\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"community\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"CNode commuinty\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"BBS\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"submit feedback\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"release the log\",\r\n\t\t\"path\": \"\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"take part in the discussion\",\r\n\t\"img\": \"OR code link\"\r\n}]','[{\r\n\t\"label\": \"Reference\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"EggJS\",\r\n\t\t\"path\": \"https://www.eggjs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"CNode\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"江湖应用\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"江湖JS\",\r\n\t\t\"path\": \"/page/article/10005\"\r\n\t}, {\r\n\t\t\"title\": \"旋风内容管理\",\r\n\t\t\"path\": \"/page/article/10075\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"社区\",\r\n\t\"list\": [{\r\n\t\t\"title\": \"CNode 社区\",\r\n\t\t\"path\": \"https://cnodejs.org/\"\r\n\t}, {\r\n\t\t\"title\": \"论坛\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"提交反馈\",\r\n\t\t\"path\": \"\"\r\n\t}, {\r\n\t\t\"title\": \"发布日志\",\r\n\t\t\"path\": \"\"\r\n\t}]\r\n}, {\r\n\t\"label\": \"参与讨论\",\r\n\t\"img\": \"二维码链接\"\r\n}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'footer','object','all','','{ \"copyright\": \"Copyright © 2022 openjianghu.org\" }','{ \"copyright\": \"Copyright © 2022 cn.openjianghu.org\" }','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'article','object','article',NULL,'{\"comment\": {\"isOpen\": false}}','{\"comment\": {\"isOpen\": true}}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'errorInfo','object','home','错误信息','{\"title\": \"Error\", \"contentEnum\": { \"article_not_found\": \"Article not found\" } }','{\"title\": \"错误\", \"contentEnum\": { \"article_not_found\": \"文章找不到\" } }','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'index','object','all',NULL,NULL,'{\"tabList\": [\r\n\t{\r\n    \"title\": \"技术\",\r\n    \"icon\": \"fas fa-chart-pie fa-fw\",\r\n    \"total\": 111,\r\n\t\t\"path\": \"tech\",\r\n\t\t\"categoryList\": [\r\n\t\t\t{\"title\": \"程序员\", \"value\": 1000},\r\n\t\t\t{\"title\": \"Python\", \"value\": 1001}\r\n\t\t]\r\n  },\r\n  {\r\n    \"title\": \"创意\",\r\n    \"icon\": \"fas fa-chart-line fa-fw\",\r\n    \"total\": 22,\r\n\t\t\"path\": \"creative\"\r\n  },\r\n  {\r\n    \"title\": \"好玩\",\r\n    \"icon\": \"fas fa-cogs fa-fw\",\r\n    \"total\": 13,\r\n\t\t\"path\": \"play\"\r\n  },\r\n  {\r\n    \"title\": \"最热\",\r\n    \"icon\": \"fas fa-cogs fa-fw\",\r\n    \"total\": 44,\r\n\t\t\"path\": \"hot\"\r\n  },\r\n  {\r\n    \"title\": \"全部\",\r\n    \"icon\": \"fas fa-cogs fa-fw\",\r\n    \"total\": 55,\r\n\t\t\"path\": \"all\"\r\n  }\r\n] }','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (23,'button','object','all','按钮','{\"add\": \"Add\", \"edit\": \"Edit\",\"login\":\"Login\",\"changePassword\":\"Change Password\",\"logout\":\"Logout\",\"manage\":\"Manage\",\"visitor\":\"Visitor\",\"homeTitle\":\"Home\",\"oldPassword\":\"Old Password\",\"newPassword\":\"New Password\",\"newPasswordAgain\":\"New Password Again\",\"cancel\":\"Cancel\",\"modify\":\"Modify\",\"search\":\"Search\",\"rememberPassword\":\"Remember password\",\"password\":\"password\",\"account\":\"account\",\"loginSuc\":\"Login Success\"}','{\"add\": \"新增\", \"edit\": \"编辑\",\"login\":\"登录\",\"changePassword\":\"修改密码\",\"logout\":\"退出登录\",\"manage\":\"管理后台\",\"visitor\":\"游客\",\"homeTitle\":\"首页\",\"oldPassword\":\"原密码\",\"newPassword\":\"新密码\",\"newPasswordAgain\":\"再次确认新密码\",\"cancel\":\"取消\",\"modify\":\"修改\",\"search\":\"搜索\",\"rememberPassword\":\"记住密码\",\"password\":\"密码\",\"account\":\"账号\",\"loginSuc\":\"登录成功\"}','insert',NULL,NULL,NULL);
INSERT INTO `_constant_ui` (`id`,`constantKey`,`constantType`,`pageId`,`desc`,`en`,`zh`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (24,'home','object','all',NULL,NULL,'{\"tabList\": [\r\n\t{\r\n    \"title\": \"技术\",\r\n    \"icon\": \"fas fa-chart-pie fa-fw\",\r\n    \"total\": 111,\r\n\t\t\"path\": \"tech\",\r\n\t\t\"categoryList\": [\r\n\t\t\t{\"title\": \"程序员\", \"id\": 1000},\r\n\t\t\t{\"title\": \"Python\", \"id\": 1001}\r\n\t\t]\r\n  },\r\n  {\r\n    \"title\": \"创意\",\r\n    \"icon\": \"fas fa-chart-line fa-fw\",\r\n    \"total\": 22,\r\n\t\t\"path\": \"creative\"\r\n  },\r\n  {\r\n    \"title\": \"好玩\",\r\n    \"icon\": \"fas fa-cogs fa-fw\",\r\n    \"total\": 13,\r\n\t\t\"path\": \"play\"\r\n  },\r\n  {\r\n    \"title\": \"最热\",\r\n    \"icon\": \"fas fa-cogs fa-fw\",\r\n    \"total\": 44,\r\n\t\t\"path\": \"hot\"\r\n  },\r\n  {\r\n    \"title\": \"全部\",\r\n    \"icon\": \"fas fa-cogs fa-fw\",\r\n    \"total\": 55,\r\n\t\t\"path\": \"all\"\r\n  }\r\n] }','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 COMMENT = '群组表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _group
# ------------------------------------------------------------

INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminGroup','管理组','管理组',NULL,'{}','insert',NULL,NULL,NULL);
INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'wudang','武当','武当',NULL,'{}','insert',NULL,NULL,NULL);
INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'gaibang','丐帮','丐帮',NULL,'{}','insert',NULL,NULL,NULL);
INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'huashan','华山派','华山派',NULL,'{}','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageFile` varchar(255) DEFAULT NULL COMMENT 'page文件指定; 默认使用pageId.html',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageHook` varchar(255) DEFAULT NULL COMMENT 'seo hook',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 COMMENT = '页面表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','helpV3','帮助',NULL,'dynamicInMenu','11','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','loginV3','登陆','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','','','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'manual',NULL,'操作手册',NULL,'dynamicInMenu','0','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'home','','seo','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"},\r\n    {\"field\": \"njk\", \"service\": \"njk\", \"serviceFunc\": \"test\"}\n  ]\n}','seo','','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (39,'categoryManagement','','分类管理','','showInMenu','3','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (40,'webWrite',NULL,'web主题发布',NULL,'seo','0','update','vscode','vscode','2022-08-19T12:12:01+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (41,'webArticle',NULL,'web帖子详情',NULL,'seo','0','update','vscode','vscode','2022-08-19T14:31:35+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (42,'commentManagement',NULL,'评论管理',NULL,'showInMenu','0','insert','vscode','vscode','2022-08-19T14:35:59+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (43,'webCategory',NULL,'web分类详情',NULL,'seo','0','update','vscode','vscode','2022-08-19T22:45:57+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (44,'webMember',NULL,'web个人中心',NULL,'seo','0','insert','vscode','vscode','2022-08-19T14:36:35+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (45,'webTag',NULL,'tag',NULL,'seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,'webHelp',NULL,'help',NULL,'seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (47,'node',NULL,'节点列表','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,'nodeDetail',NULL,'节点详情','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (49,'subject',NULL,'主题','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (50,'createSubject',NULL,'创建主题','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'register',NULL,'注册','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'user',NULL,'个人中心','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'collect',NULL,'我的收藏','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (54,'setting',NULL,'设置','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'message',NULL,'未读消息','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (56,'about',NULL,'关于我们','{\n  \"beforeHook\":[\r\n    {\"field\": \"constantUiMap\", \"service\": \"constantUi\", \"serviceFunc\": \"getConstantUiMap\"},\n\t\t{\"field\": \"userInfo\", \"service\": \"user\", \"serviceFunc\": \"userInfo\"}\n  ]\n}','seo',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageFile`,`pageName`,`pageHook`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (57,'webSetting',NULL,'个人中心设置',NULL,'seo','0','insert','vscode','vscode','2022-08-22T23:27:41+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text NOT NULL COMMENT '数据',
  `packageContent` text NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_record_id` (`recordId`) USING BTREE,
  KEY `index_table_action` (`table`, `operation`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2176 COMMENT = '数据历史表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 398 COMMENT = '请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,NULL,NULL,'login','passwordLogin','✅登陆','service','{}','{\"service\": \"user\", \"serviceFunction\": \"passwordLogin\"}','','','update',NULL,NULL,'2022-04-27T15:32:57+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,NULL,NULL,'allPage','logout','✅登出','service','{}','{\"service\": \"user\", \"serviceFunction\": \"logout\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,NULL,NULL,'allPage','userInfo','✅获取用户信息','service','{}','{\"service\": \"user\", \"serviceFunction\": \"userInfo\"}','','','update',NULL,NULL,'2022-04-27T15:37:21+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (258,NULL,NULL,'allPage','getConstantList','✅查询常量','sql','{}','{\"table\": \"_constant\", \"operation\": \"select\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (374,NULL,NULL,'categoryManagement','selectItemList','✅分类管理-查询列表','sql','{}','{ \"table\": \"view01_category\", \"operation\": \"select\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (375,NULL,'{ \"before\": [\n{\"service\": \"category\", \"serviceFunction\": \"fillInsertItemParamsBeforeHook\"}\n], \"after\": [\n] }','categoryManagement','jhInsertItem','✅分类管理-创建成员','sql','{}','{ \"table\": \"category\", \"operation\": \"jhInsert\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (376,NULL,'{ \"before\": [\n{\"service\": \"category\", \"serviceFunction\": \"fillUpdateItemParamsBeforeHook\"}\n], \"after\": [\n] }','categoryManagement','jhUpdateItem','✅分类管理-更新成员','sql','{}','{ \"table\": \"category\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (377,NULL,NULL,'commentManagement','selectItemList','✅commentManagement查询-查询列表','sql','{}','{\"table\": \"comment\", \"operation\": \"select\"}','','','update','vscode','vscode','2022-08-15T16:35:10+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (378,NULL,'{ \"before\": [\n{\"service\": \"comment\", \"serviceFunction\": \"createCommentIdHook\"}\n]}','commentManagement','insertItem','✅commentManagement查询-添加成员','sql','{}','{\"table\": \"comment\", \"operation\": \"insert\"}','','','update','vscode','vscode','2022-08-15T16:35:10+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (379,NULL,NULL,'commentManagement','updateItem','✅commentManagement查询-更新成员','sql','{}','{\"table\": \"comment\", \"operation\": \"jhUpdate\"}','','','update','vscode','vscode','2022-08-15T16:35:11+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (382,NULL,'{\"before\":[{\"service\":\"article\",\"serviceFunction\":\"createArticleIdHook\"}]}','webWrite','insertItem','✅新增-添加数据','sql',NULL,'{\"table\":\"article\",\"operation\":\"insert\"}','','','update','vscode','vscode','2022-08-19T17:42:01+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (383,NULL,NULL,'webMember','likeItem','✅加入关注','service',NULL,'{\"service\":\"webUser\",\"serviceFunction\":\"likeMember\"}','','','insert','vscode','vscode','2022-08-19T13:49:45+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (384,NULL,NULL,'webMember','dislikeItem','✅取消关注','service',NULL,'{\"service\":\"webUser\",\"serviceFunction\":\"dislikeMember\"}','','','insert','vscode','vscode','2022-08-19T13:49:45+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (385,NULL,NULL,'webArticle','likeArticle','✅新增-添加数据','service',NULL,'{\"service\":\"article\",\"serviceFunction\":\"likeArticle\"}','','','update','vscode','vscode','2022-08-22T13:53:58+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (386,NULL,NULL,'webArticle','dislikeArticle','✅新增-添加数据','service',NULL,'{\"service\":\"article\",\"serviceFunction\":\"dislikeArticle\"}','','','update','vscode','vscode','2022-08-22T13:53:58+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (387,NULL,'{\"before\":[{\"service\":\"comment\",\"serviceFunction\":\"createCommentIdHook\"}],\"after\":[{\"service\":\"comment\",\"serviceFunction\":\"afterUpdateArticleHook\"}]}','webArticle','insertComment','✅新增-添加评论','sql',NULL,'{\"table\":\"comment\",\"operation\":\"insert\"}','','','update','vscode','vscode','2022-08-22T13:53:58+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (388,NULL,NULL,'webCategory','likeCategory','✅查询-查询列表','service',NULL,'{\"service\":\"category\",\"serviceFunction\":\"likeCategory\"}','','','update','vscode','vscode','2022-08-20T09:54:34+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (389,NULL,NULL,'webCategory','dislikeCategory','✅查询-查询列表','service',NULL,'{\"service\":\"category\",\"serviceFunction\":\"dislikeCategory\"}','','','update','vscode','vscode','2022-08-20T09:54:34+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (390,NULL,NULL,'webArticle','disFavoriteArticle','✅查询-查询列表','service',NULL,'{\"service\":\"article\",\"serviceFunction\":\"disfavorArticle\"}','','','update','vscode','vscode','2022-08-22T13:53:58+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (391,NULL,NULL,'webArticle','favoriteArticle','✅新增-添加数据','service',NULL,'{\"service\":\"article\",\"serviceFunction\":\"favoriteArticle\"}','','','update','vscode','vscode','2022-08-22T13:53:58+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (392,NULL,NULL,'webArticle','likeComment','✅新增-添加数据','service',NULL,'{\"service\":\"comment\",\"serviceFunction\":\"likeComment\"}','','','update','vscode','vscode','2022-08-22T13:53:58+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (393,NULL,NULL,'webArticle','dislikeComment','✅新增-添加数据','service',NULL,'{\"service\":\"comment\",\"serviceFunction\":\"dislikeComment\"}','','','update','vscode','vscode','2022-08-22T13:53:58+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (394,NULL,NULL,'webSetting','saveUserInfo','✅新增-添加数据','sql',NULL,'{\"table\":\"user_info\",\"operation\":\"update\"}','','','insert','vscode','vscode','2022-08-23T01:27:48+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (395,NULL,NULL,'allPage','uploadFileDone','✅ 文件分片上传-所有分片上传完毕','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileDone\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (396,NULL,NULL,'allPage','httpUploadByStream','✅ 文件分片上传-http文件流','service','{}','{ \"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\" }','','','update',NULL,NULL,'2022-03-10T22:27:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (397,NULL,NULL,'allPage','resetPassword','✅修改用户密码','service','{}','{ \"service\": \"user\", \"serviceFunction\": \"resetPassword\" }','','','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` text COMMENT '请求body',
  `responseBody` text COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `resourceId_index` (`resourceId`) USING BTREE,
  KEY `packageId_index` (`packageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5053 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 COMMENT = '角色表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _role
# ------------------------------------------------------------

INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'administrator','系统管理员','','insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'boss','掌门','','insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'disciple','门徒','','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COMMENT '测试用例步骤;',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '测试用例表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COMMENT 'ui 动作数据',
  `appDataSchema` text COMMENT 'ui 校验数据',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 COMMENT = 'ui 施工方案';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (111,'categoryManagement','ui','getTableData','✅获取表格数据','{\"main\": [{\"function\": \"getTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (112,'categoryManagement','ui','goToArticleManagementPage','✅去文章管理页面','{\"main\": [{\"function\": \"goToArticleManagementPage\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (113,'categoryManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (114,'categoryManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"getTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (115,'categoryManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (116,'categoryManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"getTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (117,'categoryManagement','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doDeleteItem\"}, {\"function\": \"getTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (118,'categoryManagement','ui','restoreItem','✅还原数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doRestoreItem\"}, {\"function\": \"getTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (119,'commentManagement','ui','startReplyComment','✅打开创建数据抽屉','{\"main\": [{\"function\": \"initialReplyData\"}, {\"function\": \"openReplyCommentDrawer\"}]}',NULL,'update','vscode','vscode','2022-07-23T21:56:56+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (120,'commentManagement','ui','replyComment','✅获取表格数据','{\"before\":[{\"function\":\"formValidate\"},{\"function\":\"confirmReplyCommentDialog\"}],\"main\":[{\"function\":\"doReplyComment\"},{\"function\":\"getTableData\"}],\"after\":[{\"function\":\"closeDrawerShow\"}]}',NULL,'update','vscode','vscode','2022-07-23T21:56:56+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (121,'commentManagement','ui','rejectComment','删除评论','{\"before\":[{\"function\":\"confirmRejectDialog\"}],\"main\":[{\"function\":\"prepareCommentItemData\"},{\"function\":\"doRejectUiAction\"},{\"function\":\"getTableData\"}]}',NULL,'update','vscode','vscode','2022-07-23T21:56:56+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (122,'commentManagement','ui','activeComment','通过评论','{\"before\":[{\"function\":\"confirmAllowDialog\"}],\"main\":[{\"function\":\"prepareCommentItemData\"},{\"function\":\"doAllowComment\"},{\"function\":\"getTableData\"}]}',NULL,'update','vscode','vscode','2022-07-23T21:56:56+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL COMMENT '自增id; 用于生成userId',
  `userId` varchar(255) DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名(登陆)',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户账号状态：活跃或关闭',
  `userType` varchar(255) DEFAULT NULL COMMENT '用户类型; staff, student.',
  `config` mediumtext COMMENT '配置信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_index` (`username`) USING BTREE,
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 COMMENT = '用户表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (42,NULL,'admin','系统管理员','123456','f8b8fd44ea577b4fd3b6eed1ef5f2791','Rqb6MMfg7mZx','active',NULL,NULL,'jhUpdate','admin','系统管理员','2022-08-23T10:15:48+08:00');
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (43,NULL,'W00001','张三丰','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (44,NULL,'W00002','张无忌','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (45,NULL,'G00001','洪七公','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,NULL,'G00002','郭靖','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (47,NULL,'H00001','岳不群','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,NULL,'H00002','令狐冲','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 579 COMMENT = '用户群组角色关联表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (568,'admin','adminGroup','administrator','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (569,'W00001','wudang','boss','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (570,'W00002','wudang','disciple','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (573,'G00001','gaibang','boss','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (574,'G00002','gaibang','disciple','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (577,'H00001','huashan','boss','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (578,'H00002','huashan','disciple','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 COMMENT = '用户群组角色 - 页面 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login','allow','登陆页面; 开放所有用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'*','login','*','help,manual','allow','工具页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'*','login','*','*','allow','所有页面; 开放给登陆用户;','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 137 COMMENT = '用户群组角色 - 请求资源 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login.passwordLogin','allow','登陆resource, 开放给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'*','login','*','allPage.*','allow','工具类resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'*','login','*','*','allow','所有resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(255) DEFAULT NULL COMMENT 'auth token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE,
  KEY `userId_deviceId_index` (`userId`, `deviceId`) USING BTREE,
  KEY `authToken_index` (`authToken`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 COMMENT = '用户session表; deviceId 维度;软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: access_control_student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `access_control_student`;
CREATE TABLE `access_control_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名(登陆)',
  `resourceData` varchar(255) DEFAULT NULL COMMENT '明文密码',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_index` (`username`) USING BTREE,
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 COMMENT = '学生表的 accessControl 表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: access_control_student
# ------------------------------------------------------------

INSERT INTO `access_control_student` (`id`,`userId`,`username`,`resourceData`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (50,'G00001','洪七公','{ \"where\":{\"level\": \"02\"} }','insert',NULL,NULL,NULL);
INSERT INTO `access_control_student` (`id`,`userId`,`username`,`resourceData`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'H00001','岳不群','{ \"where\":{\"level\": \"02\"} }','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `articleId` bigint(20) DEFAULT NULL COMMENT '文章id, 10000 ++',
  `categoryId` varchar(255) DEFAULT NULL COMMENT '分类id',
  `articleGroupName` varchar(255) DEFAULT '' COMMENT '文章所属分组名',
  `articleTagList` text COMMENT '标签; 用, 拼接',
  `articlePublishStatus` varchar(255) DEFAULT '' COMMENT '文章类型(状态)：public, login, draft, deleted',
  `articlePublishTime` varchar(255) DEFAULT NULL COMMENT '文章发布时间',
  `articleConfig` varchar(500) DEFAULT NULL COMMENT '命定页面配置',
  `articleTitle` varchar(255) DEFAULT NULL COMMENT '标题',
  `articleContent` longtext COMMENT '编辑的内容',
  `articleContentForSeo` longtext COMMENT 'HTML 用于渲染',
  `articleCreateTime` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `articleCreateUserId` varchar(255) DEFAULT '' COMMENT '创建者用户ID',
  `articleCreateUsername` varchar(255) DEFAULT '' COMMENT '创建者用户名',
  `articleUpdateTime` varchar(255) DEFAULT '' COMMENT '更新时间',
  `articleUpdateUserId` varchar(255) DEFAULT '' COMMENT '更新者用户ID',
  `articleUpdateUsername` varchar(255) DEFAULT '' COMMENT '更新者用户名',
  `lastReplyAt` varchar(255) DEFAULT NULL COMMENT '最后回复时间',
  `lastReplyUser` varchar(255) DEFAULT NULL COMMENT '最后回复人',
  `lastReplyUserId` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT '' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT '' COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT '' COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT '' COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `article_unique` (`articleId`) USING BTREE,
  KEY `categoryId_index` (`categoryId`) USING BTREE,
  KEY `articlePublishTime` (`articlePublishTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1428;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: article
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article_favorite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_favorite`;
CREATE TABLE `article_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `articleId` varchar(255) DEFAULT NULL COMMENT '文章id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 516;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: article_favorite
# ------------------------------------------------------------

INSERT INTO `article_favorite` (`id`,`userId`,`articleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (515,'admin','100005','insert',NULL,NULL,'2022-08-22T18:13:42+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_info`;
CREATE TABLE `article_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` bigint(20) DEFAULT NULL COMMENT '文章id, 10000 ++',
  `articleViewCount` varchar(255) DEFAULT NULL COMMENT '文章浏览量',
  `articleCommentCount` varchar(255) DEFAULT NULL COMMENT '文章评论数',
  `articleFavoriteCount` varchar(255) DEFAULT NULL COMMENT '文章收藏数',
  `articleLikeCount` varchar(255) DEFAULT NULL COMMENT '点赞数',
  `articleDislikeCount` varchar(255) DEFAULT NULL COMMENT '非点赞数',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `articleId_unique` (`articleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 819;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: article_info
# ------------------------------------------------------------

INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (76,100000,'274',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-04-10T14:48:20+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article_like
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_like`;
CREATE TABLE `article_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `articleId` varchar(255) DEFAULT NULL COMMENT '文章id',
  `likeStatus` varchar(255) DEFAULT NULL COMMENT 'like | dislike',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 558;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: article_like
# ------------------------------------------------------------



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article_view
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article_view`;
CREATE TABLE `article_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` bigint(20) DEFAULT NULL COMMENT '文章id, 10000 ++',
  `userId` varchar(255) DEFAULT NULL COMMENT '浏览用户',
  `viewType` varchar(255) DEFAULT NULL COMMENT '浏览类型; content, audio, video',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `articleId_index` (`articleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12088;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` bigint(255) DEFAULT NULL COMMENT '分类id',
  `categoryName` varchar(255) DEFAULT '',
  `categoryIntro` text,
  `categoryGroup` varchar(255) DEFAULT NULL,
  `categoryGroupSort` varchar(255) DEFAULT NULL,
  `categoryPublishStatus` varchar(255) DEFAULT '',
  `categoryCreateTime` varchar(255) DEFAULT '',
  `categoryCreateUserId` varchar(255) DEFAULT '',
  `categoryCreateUsername` varchar(255) DEFAULT '',
  `categoryUpdateTime` varchar(255) DEFAULT '',
  `categoryUpdateUserId` varchar(255) DEFAULT '',
  `categoryUpdateUsername` varchar(255) DEFAULT '',
  `operation` varchar(255) DEFAULT '',
  `operationByUserId` varchar(255) DEFAULT '',
  `operationByUser` varchar(255) DEFAULT '',
  `categoryFavoriteCount` int(11) DEFAULT '0',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `categoryId_unique` (`categoryId`) USING BTREE,
  KEY `categoryName_unique` (`categoryName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: category
# ------------------------------------------------------------

INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`categoryFavoriteCount`,`operationAt`) VALUES (133,1000,'程序员','程序员简介','程序',NULL,'','','','','','','','','','',0,NULL);
INSERT INTO `category` (`id`,`categoryId`,`categoryName`,`categoryIntro`,`categoryGroup`,`categoryGroupSort`,`categoryPublishStatus`,`categoryCreateTime`,`categoryCreateUserId`,`categoryCreateUsername`,`categoryUpdateTime`,`categoryUpdateUserId`,`categoryUpdateUsername`,`operation`,`operationByUserId`,`operationByUser`,`categoryFavoriteCount`,`operationAt`) VALUES (134,1001,'Python','测试简介文字','程序',NULL,'','','','','','','','','','',0,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentId` varchar(20) DEFAULT NULL COMMENT '评论id',
  `userId` varchar(255) DEFAULT NULL COMMENT '评论人',
  `articleId` varchar(255) DEFAULT NULL COMMENT '评论文章id',
  `likeUserIdList` varchar(255) DEFAULT NULL COMMENT '点赞人列表；使用,拼接',
  `commentContent` longtext COMMENT '评论内容',
  `commentStatus` varchar(255) DEFAULT 'active' COMMENT '评论状态 active、deleted',
  `replyCommentId` varchar(255) DEFAULT NULL COMMENT '回复评论ID',
  `replyCommentContentJson` text COMMENT '回复历史',
  `commentCreateUserId` varchar(255) DEFAULT NULL,
  `commentCreateUsername` varchar(255) DEFAULT NULL,
  `commentCreateTime` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 243;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: comment
# ------------------------------------------------------------

INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (226,'100000',NULL,'100000',NULL,'评论','active',NULL,NULL,NULL,NULL,NULL,'insert','admin','系统管理员','2022-08-20T12:14:15+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: notice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `noticeContent` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `readStatus` varchar(255) DEFAULT NULL COMMENT '是否已读'
) ENGINE = MyISAM;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: notice
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) DEFAULT NULL COMMENT '学生ID',
  `name` varchar(255) DEFAULT NULL COMMENT '学生名字',
  `gender` varchar(255) DEFAULT NULL COMMENT '性别',
  `dateOfBirth` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `classId` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `level` varchar(255) DEFAULT NULL COMMENT '年级',
  `bodyHeight` varchar(255) DEFAULT NULL COMMENT '身高',
  `studentStatus` varchar(255) DEFAULT NULL COMMENT '学生状态',
  `remarks` mediumtext COMMENT '备注',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 176;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: student
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: user_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `userEmail` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `userArticleCount` varchar(255) DEFAULT NULL COMMENT '用户帖子总数',
  `userSignature` varchar(255) DEFAULT NULL COMMENT '用户签名',
  `userGender` varchar(255) DEFAULT NULL COMMENT '性别',
  `userAvatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `userContact` varchar(255) DEFAULT NULL COMMENT '用户资料',
  `lastLoginTime` varchar(255) DEFAULT NULL COMMENT '最后登录时间',
  `userProfileViewCount` varchar(255) DEFAULT NULL COMMENT '被查看次数',
  `userProfilePermission` varchar(255) DEFAULT NULL COMMENT '资料查看权限',
  `articleViewPermission` varchar(255) DEFAULT NULL COMMENT '帖子查看权限',
  `userLevel` varchar(255) DEFAULT NULL COMMENT '用户等级',
  `userWallet` varchar(255) DEFAULT NULL COMMENT '用户钱包',
  `userEp` varchar(255) DEFAULT NULL COMMENT '用户经验',
  `userTitle` varchar(255) DEFAULT NULL COMMENT '头衔',
  `userNotification` varchar(255) DEFAULT NULL COMMENT '主题回复信息',
  `userBirthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `userLastIp` varchar(255) DEFAULT NULL COMMENT '最后登录IP',
  `userOnlineStatus` varchar(255) DEFAULT NULL COMMENT '是否在线',
  `timezone` varchar(255) DEFAULT NULL COMMENT '时区',
  `userHotArticleCount` varchar(255) DEFAULT NULL COMMENT '精华帖数量',
  `userFavoriteCategoryList` varchar(255) DEFAULT NULL COMMENT '收藏分类节点',
  `userFavoriteUserIdList` varchar(255) DEFAULT NULL COMMENT '特别关心用户',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: user_info
# ------------------------------------------------------------

INSERT INTO `user_info` (`id`,`userId`,`userEmail`,`userArticleCount`,`userSignature`,`userGender`,`userAvatar`,`userContact`,`lastLoginTime`,`userProfileViewCount`,`userProfilePermission`,`articleViewPermission`,`userLevel`,`userWallet`,`userEp`,`userTitle`,`userNotification`,`userBirthday`,`userLastIp`,`userOnlineStatus`,`timezone`,`userHotArticleCount`,`userFavoriteCategoryList`,`userFavoriteUserIdList`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'admin','',NULL,'',NULL,'/testFile/1660448512308_626796_1660410560107_435912_1002.png',NULL,NULL,NULL,'login',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1000','admin','update','admin','系统管理员','2022-08-30T16:27:28+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`idSequence` AS `idSequence`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`userType` AS `userType`,
  `_user`.`config` AS `config`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`
from
  `_user`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_article
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_article` AS
select
  `article`.`id` AS `id`,
  `article`.`userId` AS `userId`,
  `article`.`articleId` AS `articleId`,
  `article`.`categoryId` AS `categoryId`,
  `article`.`articleGroupName` AS `articleGroupName`,
  `article`.`articleTagList` AS `articleTagList`,
  `article`.`articlePublishStatus` AS `articlePublishStatus`,
  `article`.`articlePublishTime` AS `articlePublishTime`,
  `article`.`articleConfig` AS `articleConfig`,
  `article`.`articleTitle` AS `articleTitle`,
  `article`.`articleContent` AS `articleContent`,
  `article`.`articleContentForSeo` AS `articleContentForSeo`,
  `article`.`articleCreateTime` AS `articleCreateTime`,
  `article`.`articleCreateUserId` AS `articleCreateUserId`,
  `article`.`articleCreateUsername` AS `articleCreateUsername`,
  `article`.`articleUpdateTime` AS `articleUpdateTime`,
  `article`.`articleUpdateUserId` AS `articleUpdateUserId`,
  `article`.`articleUpdateUsername` AS `articleUpdateUsername`,
  `article`.`lastReplyAt` AS `lastReplyAt`,
  `article`.`lastReplyUser` AS `lastReplyUser`,
  `article`.`operation` AS `operation`,
  `article`.`operationByUserId` AS `operationByUserId`,
  `article`.`operationByUser` AS `operationByUser`,
  `article`.`operationAt` AS `operationAt`,
  count(distinct `comment`.`id`) AS `commentCount`,
  count(distinct `f`.`id`) AS `favoriteCount`,
  count(distinct `v`.`id`) AS `viewCount`,
  count(
  distinct if((`l`.`likeStatus` = 'like'), `l`.`id`, NULL)
  ) AS `likeCount`,
  `category`.`categoryName` AS `categoryName`,
  `user_info`.`userAvatar` AS `userAvatar`
from
  (
  (
    (
    (
      (
      (
        `article`
        left join `comment` on((`article`.`articleId` = `comment`.`articleId`))
      )
      left join `article_favorite` `f` on((`article`.`articleId` = `f`.`articleId`))
      )
      left join `article_like` `l` on((`article`.`articleId` = `l`.`articleId`))
    )
    left join `article_view` `v` on((`article`.`articleId` = `v`.`articleId`))
    )
    left join `category` on(
    (`article`.`categoryId` = `category`.`categoryId`)
    )
  )
  left join `user_info` on(
    (
    convert(`article`.`userId` using utf8mb4) = `user_info`.`userId`
    )
  )
  )
group by
  `article`.`id`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_category
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_category` AS
select
  `category`.`id` AS `id`,
  `category`.`categoryId` AS `categoryId`,
  `category`.`categoryIntro` AS `categoryIntro`,
  `category`.`categoryGroup` AS `categoryGroup`,
  `category`.`categoryGroupSort` AS `categoryGroupSort`,
  `category`.`categoryPublishStatus` AS `categoryPublishStatus`,
  `category`.`categoryCreateTime` AS `categoryCreateTime`,
  `category`.`categoryCreateUserId` AS `categoryCreateUserId`,
  `category`.`categoryCreateUsername` AS `categoryCreateUsername`,
  `category`.`categoryUpdateTime` AS `categoryUpdateTime`,
  `category`.`categoryUpdateUserId` AS `categoryUpdateUserId`,
  `category`.`categoryUpdateUsername` AS `categoryUpdateUsername`,
  `category`.`operation` AS `operation`,
  `category`.`operationByUserId` AS `operationByUserId`,
  `category`.`operationByUser` AS `operationByUser`,
  `category`.`operationAt` AS `operationAt`,
  `category`.`categoryName` AS `categoryName`,
  count(`article`.`id`) AS `articleCount`,
  `category`.`categoryFavoriteCount` AS `categoryFavoriteCount`
from
  (
  `category`
  left join `article` on(
    (`category`.`categoryId` = `article`.`categoryId`)
  )
  )
group by
  `category`.`id`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_comment
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_comment` AS
select
  `comment`.`id` AS `id`,
  `comment`.`commentId` AS `commentId`,
  `comment`.`userId` AS `userId`,
  `comment`.`articleId` AS `articleId`,
  `comment`.`likeUserIdList` AS `likeUserIdList`,
  `comment`.`commentContent` AS `commentContent`,
  `comment`.`commentStatus` AS `commentStatus`,
  `comment`.`replyCommentId` AS `replyCommentId`,
  `comment`.`replyCommentContentJson` AS `replyCommentContentJson`,
  `comment`.`operation` AS `operation`,
  `comment`.`operationByUserId` AS `operationByUserId`,
  `comment`.`operationByUser` AS `operationByUser`,
  `comment`.`operationAt` AS `operationAt`,
  `_user`.`username` AS `username`,
  `user_info`.`userAvatar` AS `userAvatar`
from
  (
  (
    `comment`
    left join `_user` on((`comment`.`userId` = `_user`.`userId`))
  )
  left join `user_info` on((`comment`.`userId` = `user_info`.`userId`))
  );





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_user_info
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_user_info` AS
select
  `_user`.`id` AS `id`,
  `_user`.`idSequence` AS `idSequence`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`userType` AS `userType`,
  `_user`.`config` AS `config`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`,
  `user_info`.`userEmail` AS `userEmail`,
  `user_info`.`userArticleCount` AS `userArticleCount`,
  `user_info`.`userSignature` AS `userSignature`,
  `user_info`.`userGender` AS `userGender`,
  `user_info`.`userAvatar` AS `userAvatar`,
  `user_info`.`userContact` AS `userContact`,
  `user_info`.`lastLoginTime` AS `lastLoginTime`,
  `user_info`.`userProfileViewCount` AS `userProfileViewCount`,
  `user_info`.`userProfilePermission` AS `userProfilePermission`,
  `user_info`.`articleViewPermission` AS `articleViewPermission`,
  `user_info`.`userLevel` AS `userLevel`,
  `user_info`.`userWallet` AS `userWallet`,
  `user_info`.`userEp` AS `userEp`,
  `user_info`.`userTitle` AS `userTitle`,
  `user_info`.`userNotification` AS `userNotification`,
  `user_info`.`userBirthday` AS `userBirthday`,
  `user_info`.`userLastIp` AS `userLastIp`,
  `user_info`.`userOnlineStatus` AS `userOnlineStatus`,
  `user_info`.`timezone` AS `timezone`,
  `user_info`.`userHotArticleCount` AS `userHotArticleCount`,
  `user_info`.`userFavoriteCategoryList` AS `userFavoriteCategoryList`,
  `user_info`.`userFavoriteUserIdList` AS `userFavoriteUserIdList`
from
  (
  `_user`
  left join `user_info` on((`_user`.`userId` = `user_info`.`userId`))
  );





