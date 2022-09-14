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

INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (75,100052,'125','3','1',NULL,NULL,'update','admin','武林盟主','2022-04-09T20:17:54+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (76,100000,'274',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-04-10T14:48:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (77,100001,'85','7','1',NULL,NULL,'update','admin','武林盟主','2022-04-10T14:41:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (78,100010,'38',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-04-10T11:53:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (79,100002,'56',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-04-10T14:43:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (80,100038,'26',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-09T00:00:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (81,100039,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-08T23:49:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (83,100046,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-08T23:49:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (84,100022,'163',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-09T18:38:29+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (85,100055,'22',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-04-10T14:47:01+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (86,100034,'18',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T14:50:27+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (88,15534,'38',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-14T08:14:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (89,365,'98',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-04-26T16:11:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (90,1565,'108','1','1',NULL,NULL,'update','admin','武林盟主','2022-08-16T22:10:55+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (91,1745,'31',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-07T16:05:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (92,19081,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-10T15:07:27+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (93,20417,'6',NULL,NULL,NULL,NULL,'update','533908S','智慧马ZC','2022-04-17T11:37:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (94,18928,'13',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T15:54:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (95,22924,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-12T19:20:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (96,20192,'56',NULL,'0',NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:29:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (97,20655,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T15:41:57+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (98,19924,'50',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T21:21:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (99,23103,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T15:44:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (100,20997,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T15:44:59+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (101,17960,'28',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-13T16:15:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (102,20067,'195',NULL,'0',NULL,NULL,'update','100013V','SuniJH','2022-04-12T15:27:02+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (103,32912,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-10T15:59:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (104,20767,'9',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T21:51:36+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (105,37979,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T16:28:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (106,18996,'9',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T08:39:29+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (107,19727,'30',NULL,'0',NULL,NULL,'update','100080M','贝贝JH','2022-04-17T00:50:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (108,19143,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-21T15:39:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (109,26829,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T16:15:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (110,15326,'20',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-15T12:55:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (111,17589,'15',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T17:53:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (112,19818,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T06:01:35+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (113,23245,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T16:24:27+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (114,17833,'58','3','1',NULL,NULL,'update','admin','武林盟主','2022-07-13T16:42:58+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (115,19433,'31',NULL,NULL,NULL,NULL,'update','100080M','贝贝JH','2022-04-15T10:23:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (116,32179,'15',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-11T16:12:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (117,41134,'38','1','0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-15T13:50:10+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (118,18020,'38',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-07-18T20:39:30+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (119,28639,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T16:28:15+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (120,16992,'113','1','0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-17T00:03:58+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (121,2936,'91','3','0',NULL,NULL,'update','admin','武林盟主','2022-07-13T11:36:27+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (122,21042,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T21:19:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (123,37673,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T21:26:23+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (124,37557,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-07T22:33:58+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (125,37710,'23',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:36:11+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (126,28930,'10',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T21:56:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (127,33032,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T21:26:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (128,31586,'4',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-04-10T22:18:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (129,40237,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:04:55+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (130,41132,'13',NULL,NULL,NULL,NULL,'update','m2861X','爱薇JP','2022-04-18T06:23:24+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (131,15408,'43',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-17T14:44:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (132,15578,'38',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:50:59+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (133,15829,'47',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-20T17:08:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (134,19393,'9',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:26:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (135,19531,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-10T23:28:34+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (136,18444,'46','2','1',NULL,NULL,'update','539782E','得胜DavidJY','2022-04-17T06:52:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (137,20120,'10',NULL,'0',NULL,NULL,'update','100005W','安宁JH','2022-08-01T09:00:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (138,15353,'39','1','0',NULL,NULL,'update','m3611F','刘计','2022-05-04T15:40:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (139,15737,'47','5','0',NULL,NULL,'update','admin','武林盟主','2022-04-16T06:01:29+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (140,15623,'50',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-17T14:55:37+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (141,17901,'26',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-18T18:10:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (142,20026,'41',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:29:36+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (143,20736,'12',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T10:26:37+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (144,17371,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:29:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (145,18883,'17',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T16:52:24+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (146,18960,'59',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:30:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (147,19343,'7',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-11T14:57:53+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (148,21068,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:01:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (149,20551,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T22:16:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (150,18605,'17',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-18T20:27:56+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (151,19768,'8',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-15T17:37:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (152,17488,'24',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T15:54:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (153,18575,'20','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T23:53:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (154,20620,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:26:37+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (155,19108,'9',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T17:11:30+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (156,41133,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:07:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (157,41131,'4',NULL,NULL,NULL,NULL,'update','531433P','吴路得JH','2022-04-17T15:09:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (158,17546,'31',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-12T11:06:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (159,18169,'8',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T19:20:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (160,18811,'21',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-20T17:02:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (161,15470,'14',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-08T16:13:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (162,18717,'45','2',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T20:03:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (163,19680,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-08T14:18:52+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (164,24154,'39',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T12:15:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (165,20408,'17',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:31:59+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (166,30989,'12',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:36:01+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (167,19761,'45',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-08T14:07:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (168,19952,'27',NULL,'0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-13T20:36:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (169,28769,'3',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-13T22:53:23+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (170,31487,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:40:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (171,18991,'77',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T16:24:37+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (172,19632,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T11:47:55+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (173,38804,'54',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T19:08:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (174,39344,'7',NULL,NULL,NULL,NULL,'update','533524A','云熙SummerYS','2022-04-18T07:56:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (175,11986,'22',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T10:59:30+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (176,18209,'6','1',NULL,NULL,NULL,'update','m3862G','louis','2022-04-16T20:25:46+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (177,19971,'8','1','1',NULL,NULL,'update','admin','武林盟主','2022-08-17T21:11:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (178,25769,'27','1','0',NULL,NULL,'update','admin','武林盟主','2022-07-13T16:18:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (179,23184,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T12:15:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (180,19419,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T21:16:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (181,23339,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T12:15:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (182,28877,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T12:15:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (183,40606,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T12:15:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (184,39132,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T12:15:53+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (185,40505,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-19T13:41:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (186,31901,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T12:15:55+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (187,17469,'8',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T20:09:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (188,23287,'8',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T13:00:27+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (189,20237,'8',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-21T15:39:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (190,21566,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T13:46:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (191,25259,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T13:45:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (192,5965,'27',NULL,'0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-18T06:30:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (193,18147,'26',NULL,'0',NULL,NULL,'update','532960I','张多加WZ','2022-04-15T06:35:41+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (194,1830,'21',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T09:26:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (195,18467,'9','1',NULL,NULL,NULL,'update','m3611F','刘计','2022-05-04T15:40:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (196,20322,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:47:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (197,19228,'2',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-11T15:19:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (198,36779,'2',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-11T15:56:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (199,14189,'19',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-26T12:19:35+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (200,1823,'38',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-05-20T17:00:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (201,1824,'21','3','1',NULL,NULL,'update','admin','武林盟主','2022-04-26T14:06:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (202,1828,'54','2','0',NULL,NULL,'update','admin','武林盟主','2022-08-17T11:29:22+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (203,1592,'50',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T08:57:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (204,10358,'23',NULL,'0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-14T05:05:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (205,1743,'57',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-05-21T15:39:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (206,24379,'14',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-17T04:18:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (207,1827,'26',NULL,NULL,NULL,NULL,'update','m3658K','本善','2022-06-08T16:16:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (208,2861,'20','2',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T20:56:02+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (209,1757,'28','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-05-20T16:37:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (210,1567,'42','1','0',NULL,NULL,'update','admin','武林盟主','2022-07-18T18:11:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (211,1591,'48','2','1',NULL,NULL,'update','100005W','安宁JH','2022-08-01T16:58:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (212,1580,'55','2','1',NULL,NULL,'update','admin','武林盟主','2022-08-17T11:12:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (213,1569,'59','1','1',NULL,NULL,'update','admin','武林盟主','2022-08-16T22:14:28+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (214,24507,'10',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-04-14T19:16:41+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (215,1753,'19','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-07-13T11:22:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (216,1807,'38',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-18T12:52:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (217,1571,'55','6','1',NULL,NULL,'update','admin','武林盟主','2022-07-19T14:24:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (218,1573,'70',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-08-16T22:14:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (219,1752,'31',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-04-26T14:24:37+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (220,5298,'15','1','0',NULL,NULL,'update','531433P','吴路得JH','2022-04-16T09:02:35+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (221,8839,'21',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:13:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (222,14006,'6',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-16T10:53:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (223,2958,'25','2',NULL,NULL,NULL,'update','admin','武林盟主','2022-08-16T22:06:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (224,2914,'26',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-18T18:10:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (225,5471,'37',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T09:23:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (226,9800,'16',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-16T22:07:53+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (227,15552,'34',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-07-19T22:01:53+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (228,9822,'12',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-11T15:12:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (229,6024,'14',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-05-20T16:39:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (230,1740,'63','1','0',NULL,NULL,'update','admin','武林盟主','2022-08-17T14:38:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,1739,'41','1','1',NULL,NULL,'update','admin','武林盟主','2022-08-16T23:26:58+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (232,5879,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-11T14:54:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (233,10800,'18','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-05-21T15:41:29+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (234,1744,'48','1','0',NULL,NULL,'update','admin','武林盟主','2022-08-17T22:28:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (235,5349,'13',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-08-16T23:36:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (236,1741,'42',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-13T11:37:58+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (237,18981,'4',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-07-13T16:14:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (238,18839,'9',NULL,NULL,NULL,NULL,'update','532960I','张多加WZ','2022-04-15T06:35:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (239,1570,'56','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:46:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (240,2941,'19','2',NULL,NULL,NULL,'update','admin','武林盟主','2022-05-07T14:10:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (241,4380,'25',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T10:33:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (242,15655,'8',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-16T18:52:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (243,19223,'6',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-08-17T11:29:52+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (244,2962,'14',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-08-17T13:04:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (245,2943,'16',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T20:13:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (246,17779,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-13T15:45:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (247,20420,'15',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T22:56:02+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (248,1755,'39',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-08-16T22:12:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (249,19165,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-11T20:07:22+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (250,2951,'6','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-26T14:34:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,14260,'29',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:40:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (252,9732,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:50:08+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,1587,'39',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-05-20T09:50:58+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (254,1738,'34',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-07-13T16:11:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (255,9232,'8',NULL,NULL,NULL,NULL,'update','533524A','云熙SummerYS','2022-04-17T01:24:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (256,1829,'33','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-08-11T15:05:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (257,24314,'17',NULL,'0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-18T07:49:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (258,1809,'16','1','0',NULL,NULL,'update','admin','武林盟主','2022-04-16T17:49:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (259,1742,'93','2','0',NULL,NULL,'update','admin','武林盟主','2022-08-17T11:14:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (260,7685,'17',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-04-15T16:33:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (261,1579,'47',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-07-18T18:05:14+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (262,1589,'69','3','1',NULL,NULL,'update','admin','武林盟主','2022-08-17T21:13:41+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (263,16985,'16',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-07-13T16:56:36+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (264,16321,'16',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T13:35:24+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (265,9103,'10',NULL,'0',NULL,NULL,'update','533524A','云熙SummerYS','2022-04-17T21:36:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (266,1770,'35',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-08-17T09:25:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (267,14797,'4',NULL,NULL,NULL,NULL,'update','m3006J','曾愃筠JP','2022-04-18T08:00:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (268,15522,'11',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T19:14:14+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (269,16888,'11',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-16T22:07:52+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (270,1584,'43',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-08-17T11:14:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (271,3144,'91','9','0',NULL,NULL,'update','admin','武林盟主','2022-08-17T10:40:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (272,19290,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T20:17:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (273,19293,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:07:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (274,19929,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-12T19:20:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (275,22675,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T20:17:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (276,1566,'44',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-07T14:18:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (277,1572,'38','2','0',NULL,NULL,'update','admin','武林盟主','2022-07-18T18:08:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (278,2856,'21','4','1',NULL,NULL,'update','admin','武林盟主','2022-05-20T16:46:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (279,9716,'26','2','1',NULL,NULL,'update','m3862G','louis','2022-07-21T22:10:09+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (281,7128,'19',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:33:52+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (282,15502,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T10:42:22+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (283,1577,'50','1','1',NULL,NULL,'update','admin','武林盟主','2022-05-20T16:53:46+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (284,16305,'12',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-07-13T17:01:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (285,9322,'11','4','1',NULL,NULL,'update','H00001','岳不群','2022-05-05T11:10:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (286,8746,'27',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T09:26:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (287,5726,'24',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-05-20T16:11:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (288,8902,'11',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-12T10:41:30+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (289,2873,'15',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-26T16:10:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (290,6158,'14',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-26T14:18:34+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (291,10353,'11',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-05-20T13:14:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (292,1586,'48',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-07-13T16:05:52+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (293,19832,'29','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T22:13:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (294,21882,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-08T14:19:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (295,22918,'25',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-11T22:33:09+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (296,2955,'27',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-17T15:07:24+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (297,14113,'22','1',NULL,NULL,NULL,'update','m3862G','louis','2022-07-21T22:10:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (298,15389,'23','7','0',NULL,NULL,'update','admin','武林盟主','2022-05-21T15:39:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (300,6133,'13',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T08:59:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (301,27598,'2',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-12T11:18:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (302,18426,'10',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:37:09+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (304,19287,'4',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-12T11:19:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (305,19905,'4',NULL,NULL,NULL,NULL,'update','100080M','贝贝JH','2022-04-15T10:18:02+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (306,15558,'11','2',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T20:45:34+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (307,2964,'14','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T22:16:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (308,21274,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-12T12:56:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (309,6104,'8',NULL,'0',NULL,NULL,'update','m3862G','louis','2022-04-15T21:01:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (310,7129,'13',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-04-19T14:00:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (311,19648,'20','3','0',NULL,NULL,'update','m3611F','刘计','2022-04-26T14:42:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (312,20029,'3',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-12T13:30:01+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (314,5424,'14','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T21:01:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (315,18699,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T19:29:28+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (316,6057,'11',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:51:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (317,2953,'15','2',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:49:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (318,41049,'2',NULL,'0',NULL,NULL,'update','100013V','SuniJH','2022-04-12T15:27:12+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (319,41128,'9','2','0',NULL,NULL,'update','100013V','SuniJH','2022-04-12T15:30:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (320,1822,'21',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-18T18:08:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (322,1820,'23',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T17:19:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (324,1578,'55','2','1',NULL,NULL,'update','admin','武林盟主','2022-07-18T18:06:35+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (326,31379,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-12T15:25:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (327,28873,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-12T15:29:10+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (328,33400,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-12T15:29:11+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (329,39130,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-12T15:29:12+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (330,41074,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-12T15:30:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (331,2832,'38',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-07-11T14:54:24+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (332,1825,'33',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-07-13T17:13:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (334,1737,'53','1','0',NULL,NULL,'update','admin','武林盟主','2022-07-13T15:59:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (336,1756,'31',NULL,'0',NULL,NULL,'update','m3006J','曾愃筠JP','2022-04-18T07:59:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (338,15401,'8',NULL,NULL,NULL,NULL,'update','m3862G','louis','2022-04-16T20:23:22+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (340,17560,'17',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-05-22T15:51:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (342,19136,'3','2',NULL,NULL,NULL,'update','m3862G','louis','2022-04-16T20:25:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (343,2947,'23',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-04-16T16:20:12+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (344,19795,'3',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:31:35+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (346,8996,'12','1','0',NULL,NULL,'update','533524A','云熙SummerYS','2022-04-17T01:24:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (348,19373,'8','2',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T22:24:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (349,15492,'7',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-10T20:16:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (351,5859,'19',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-08-17T11:14:37+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (352,19704,'14',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-21T15:41:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (354,8719,'21',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-26T14:07:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (356,16362,'5',NULL,NULL,NULL,NULL,'update','100006D','宁静JH','2022-04-15T04:10:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (358,20722,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-12T19:20:09+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (360,28066,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-12T19:20:22+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (362,1582,'44','3','2',NULL,NULL,'update','admin','武林盟主','2022-08-17T09:24:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (364,19787,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T09:14:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (366,1768,'23',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-04-16T16:48:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (368,24368,'32',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-10T20:33:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (370,24364,'9',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T16:52:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (372,24924,'17',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-17T11:55:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (374,27596,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-13T22:53:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (376,25575,'4',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-12T20:34:15+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (378,9690,'10',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T20:47:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (380,24733,'8',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-16T13:01:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (381,1808,'30',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-05-19T22:48:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (383,2949,'29','1','1',NULL,NULL,'update','admin','武林盟主','2022-07-13T17:31:55+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (385,15376,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T23:39:23+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (387,17929,'4',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-12T21:21:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (389,21697,'5',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-05-08T15:57:24+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (391,15648,'14',NULL,'1',NULL,NULL,'update','m3611F','刘计','2022-04-17T14:49:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (393,18261,'11','1',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T19:33:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (395,20728,'6',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-16T01:29:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (397,20816,'10',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T09:22:54+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (399,22501,'33',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-19T21:03:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (401,19291,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-12T21:46:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (403,22785,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-12T21:46:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (405,35452,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-12T21:46:11+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (407,24515,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-12T21:46:23+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (409,7945,'43','4','1',NULL,NULL,'update','admin','武林盟主','2022-05-19T23:48:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (411,15643,'41',NULL,'1',NULL,NULL,'update','m3611F','刘计','2022-05-03T15:39:27+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (412,20700,'4',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-15T19:58:53+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (413,5793,'11',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T09:02:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (415,15568,'12',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:42:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (417,2538,'23',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-13T16:11:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (419,14346,'23',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T17:12:08+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (421,15836,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T23:55:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (422,24399,'9',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-15T15:17:36+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (423,25107,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:48:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (424,25309,'4','1',NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-15T18:29:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (426,17783,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T20:17:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (428,24358,'8',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-17T14:53:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (430,24936,'5',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-15T23:28:59+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (432,25067,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:31:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (434,25117,'2',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-14T02:44:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (436,26382,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-13T06:51:10+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (438,26654,'2',NULL,'0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-16T06:00:10+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (440,8879,'7',NULL,NULL,NULL,NULL,'update','530807L','马喜乐WZ','2022-04-18T11:43:58+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (442,9517,'8','1','1',NULL,NULL,'update','admin','武林盟主','2022-04-16T16:20:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (444,15759,'30',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:27:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (446,18060,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-13T09:56:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (448,31306,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-13T09:56:23+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (450,1769,'22',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-06-06T22:06:01+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (452,17970,'1',NULL,NULL,NULL,NULL,'insert','m3611F','刘计','2022-04-13T14:42:35+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (454,41153,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-13T14:58:34+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (456,1754,'24',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-07-07T16:06:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (458,17875,'3',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-15T14:04:27+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (460,14106,'22',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T22:28:41+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (462,21659,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-13T16:11:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (463,15427,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-13T16:13:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (465,19282,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-13T16:15:46+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (467,24945,'2',NULL,NULL,NULL,NULL,'update','534755I','薇薇安WZ','2022-04-18T06:37:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (469,19499,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-13T17:52:29+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (470,5791,'12',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-08T15:34:35+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (472,27798,'8',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-13T20:39:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (474,24639,'2',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-13T20:39:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (476,28182,'3',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-13T20:39:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (478,19802,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-13T21:03:02+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (480,7691,'7',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:12:57+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (482,19292,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-13T22:03:01+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (484,2938,'14','2',NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T18:48:36+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (486,19609,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-13T22:30:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (488,18535,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-13T22:32:56+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (490,28924,'3','1','0',NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:26:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (492,1751,'35','1','2',NULL,NULL,'update','admin','武林盟主','2022-05-19T22:43:59+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (494,32263,'12',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-13T22:44:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (496,2960,'16',NULL,'1',NULL,NULL,'update','admin','武林盟主','2022-07-13T17:28:56+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (498,22472,'1',NULL,NULL,NULL,NULL,'insert','100013V','SuniJH','2022-04-13T22:53:09+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (500,27762,'1',NULL,NULL,NULL,NULL,'insert','100013V','SuniJH','2022-04-13T22:53:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (502,22975,'1',NULL,NULL,NULL,NULL,'insert','100013V','SuniJH','2022-04-13T22:54:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (504,18834,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T19:09:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (506,32469,'1',NULL,NULL,NULL,NULL,'insert','100013V','SuniJH','2022-04-13T22:57:53+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (508,20538,'18',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T16:54:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (510,2794,'37',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-20T11:10:01+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (512,27920,'3',NULL,NULL,NULL,NULL,'update','100089S','迪亚JH','2022-04-17T23:59:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (514,38042,'4',NULL,NULL,NULL,NULL,'update','533524A','云熙SummerYS','2022-04-18T07:56:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (516,38122,'1',NULL,NULL,NULL,NULL,'insert','100013V','SuniJH','2022-04-13T23:26:23+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (518,37882,'1',NULL,NULL,NULL,NULL,'insert','100013V','SuniJH','2022-04-13T23:26:28+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (520,15754,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T22:55:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (522,28606,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-13T23:27:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (524,41150,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T18:14:46+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (526,24501,'2',NULL,NULL,NULL,NULL,'update','534755I','薇薇安WZ','2022-04-18T06:27:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (528,1821,'30','3','0',NULL,NULL,'update','admin','武林盟主','2022-07-13T16:00:10+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (530,25208,'5',NULL,NULL,NULL,NULL,'update','537042U','永远JP','2022-04-18T05:58:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (531,27491,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-13T23:31:08+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (533,20692,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-13T23:36:23+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (535,24372,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-13T23:37:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (537,31845,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-13T23:41:52+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (539,15515,'6',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-08-17T11:34:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (541,27508,'2',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-14T03:42:39+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (542,31467,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-14T03:42:59+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (544,24478,'3','1','0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-14T04:53:15+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (546,24624,'2',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-14T08:14:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (548,24595,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-14T08:14:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (550,15384,'12',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:31:10+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (552,19562,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-14T14:47:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (554,19294,'7',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-19T21:04:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (556,19918,'4','1','0',NULL,NULL,'update','admin','武林盟主','2022-08-17T20:13:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (557,41149,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T18:14:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (559,7131,'10',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T05:36:56+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (560,21244,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T17:54:36+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (561,21313,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T17:53:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (563,21392,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T17:53:30+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (565,18511,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-04T21:51:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (566,22718,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T17:54:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (567,8916,'21','1',NULL,NULL,NULL,'update','m3611F','刘计','2022-05-04T23:09:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (568,17523,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:36:56+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (570,15343,'7',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T20:23:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (572,21543,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T18:11:28+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (573,21877,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T18:11:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (574,37719,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T21:38:10+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (576,18035,'5',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:45:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (578,20367,'7',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:30:46+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (580,17311,'3',NULL,NULL,NULL,NULL,'update','100006D','宁静JH','2022-04-15T04:10:15+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (581,21474,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T19:14:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (582,37421,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:35:57+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (584,40475,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-14T21:38:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (585,39262,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-14T21:39:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (587,40764,'3',NULL,NULL,NULL,NULL,'update','m3072L','bryanJP','2022-04-18T12:42:56+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (589,40786,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-14T21:52:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (591,2992,'10',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-05-04T15:40:37+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (593,14061,'9',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-04-15T15:39:28+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (594,19036,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-08T14:07:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (596,31235,'9','1','1',NULL,NULL,'update','admin','武林盟主','2022-04-16T12:13:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (598,19845,'8',NULL,NULL,NULL,NULL,'update','532960I','张多加WZ','2022-04-15T06:34:46+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (600,20071,'9',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-04T20:36:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (602,19820,'1',NULL,NULL,NULL,NULL,'insert','532960I','张多加WZ','2022-04-15T06:35:55+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (604,21501,'1',NULL,NULL,NULL,NULL,'insert','100001X','撒母耳JH','2022-04-15T06:36:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (606,23420,'62','4','1',NULL,NULL,'update','m3611F','刘计','2022-05-03T15:39:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (608,36480,'4',NULL,NULL,NULL,NULL,'update','531433P','吴路得JH','2022-04-17T15:09:22+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (610,20659,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-15T08:39:55+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (612,24916,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-15T08:53:55+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (614,20094,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-15T08:54:23+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (616,15771,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-15T09:13:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (618,33260,'1',NULL,NULL,NULL,NULL,'insert','100080M','贝贝JH','2022-04-15T10:13:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (620,38358,'3','1','0',NULL,NULL,'update','100080M','贝贝JH','2022-04-17T00:46:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (622,32307,'1',NULL,NULL,NULL,NULL,'insert','100080M','贝贝JH','2022-04-15T10:18:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (624,31092,'1','1','1',NULL,NULL,'update','100089S','迪亚JH','2022-04-15T12:14:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (626,41156,'18',NULL,'1',NULL,NULL,'update','m3611F','刘计','2022-04-15T23:38:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (628,41155,'7',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T16:52:28+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (630,19286,'1',NULL,NULL,NULL,NULL,'insert','100003K','友妮JH','2022-04-15T15:21:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (632,18101,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-15T17:06:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (634,24705,'2',NULL,'0',NULL,NULL,'update','100004Q','伽勒JH','2022-04-15T17:40:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (635,19283,'3','1',NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:18:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (637,20583,'1','1',NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:18:52+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (639,38464,'6','2','1',NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:36:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (640,22376,'3',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:31:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (642,19285,'2',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:36:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (644,29148,'4',NULL,NULL,NULL,NULL,'update','100013V','SuniJH','2022-04-15T18:36:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (645,20916,'9',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T09:06:22+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (646,19251,'1',NULL,NULL,NULL,NULL,'insert','m3862G','louis','2022-04-15T21:36:12+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (648,17529,'2',NULL,NULL,NULL,NULL,'update','m3666L','louis01','2022-04-16T21:19:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (650,24298,'12',NULL,NULL,NULL,NULL,'update','m3611F','刘计','2022-05-04T23:24:10+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (651,22885,'11',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T23:52:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (652,24290,'8',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-15T23:52:33+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (654,33280,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-16T00:52:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (656,33133,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-16T00:52:37+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (658,38579,'1',NULL,NULL,NULL,NULL,'insert','100062Y','雅飒JH','2022-04-16T01:33:25+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (660,25178,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-16T05:45:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (662,33473,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-16T05:45:24+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (664,39451,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:02:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (665,33799,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:05:11+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (667,33791,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:07:11+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (669,32974,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:07:15+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (671,25632,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:07:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (673,20813,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:09:02+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (674,27024,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:09:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (676,31376,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:12:19+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (678,31464,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:11:46+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (679,32383,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:11:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (681,31065,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:13:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (683,29272,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:13:17+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (685,21588,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:47:13+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (687,21661,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:48:05+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (688,28407,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:31:24+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (690,28429,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:49:42+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (691,26438,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:49:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (693,22614,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:51:20+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (695,22796,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T12:53:54+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (697,20053,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:54:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (698,18954,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T12:54:44+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (700,15025,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:49:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (702,37709,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T14:36:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (704,18371,'7',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:44:36+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (705,19876,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T14:44:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (707,19719,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-16T14:47:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (708,21044,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T16:55:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (710,22892,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-04-16T16:55:53+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (712,19984,'1',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-04-16T17:42:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (714,22461,'1',NULL,NULL,NULL,NULL,'insert','m3862G','louis','2022-04-16T20:25:53+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (716,41139,'12',NULL,NULL,NULL,NULL,'update','m2861X','爱薇JP','2022-04-18T06:22:49+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (718,24177,'1',NULL,NULL,NULL,NULL,'insert','100005W','安宁JH','2022-04-16T23:18:57+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (720,25024,'4',NULL,NULL,NULL,NULL,'update','534755I','薇薇安WZ','2022-04-18T06:37:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (722,41129,'1',NULL,NULL,NULL,NULL,'insert','100006D','宁静JH','2022-04-17T00:50:02+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (724,41136,'1',NULL,NULL,NULL,NULL,'insert','100006D','宁静JH','2022-04-17T00:50:56+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (726,40706,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-17T01:07:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (728,41138,'5',NULL,NULL,NULL,NULL,'update','531433P','吴路得JH','2022-04-17T15:09:32+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (730,25173,'2',NULL,NULL,NULL,NULL,'update','100004Q','伽勒JH','2022-04-17T04:18:27+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (731,28699,'1',NULL,NULL,NULL,NULL,'insert','100054Z','萝以JH','2022-04-17T05:43:38+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (733,40512,'1',NULL,NULL,NULL,NULL,'insert','531661S','晓光YS','2022-04-17T05:46:50+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (735,37694,'1',NULL,NULL,NULL,NULL,'insert','100054Z','萝以JH','2022-04-17T07:25:34+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (737,24765,'1',NULL,NULL,NULL,NULL,'insert','100004Q','伽勒JH','2022-04-17T11:54:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (739,41141,'56','10','0',NULL,NULL,'update','admin','武林盟主','2022-05-22T17:45:14+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (741,37473,'1',NULL,NULL,NULL,NULL,'insert','532695N','燕子YS','2022-04-17T16:03:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (743,41140,'2',NULL,NULL,NULL,NULL,'update','530807L','马喜乐WZ','2022-04-17T17:46:30+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (744,41142,'38',NULL,'0',NULL,NULL,'update','admin','武林盟主','2022-05-22T17:45:12+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (746,28545,'2',NULL,'1',NULL,NULL,'update','537042U','永远JP','2022-04-18T05:58:54+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (749,31394,'1',NULL,NULL,NULL,NULL,'insert','537042U','永远JP','2022-04-18T06:00:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (750,40608,'1',NULL,NULL,NULL,NULL,'insert','m2861X','爱薇JP','2022-04-18T06:23:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (752,41076,'1',NULL,NULL,NULL,NULL,'insert','m2861X','爱薇JP','2022-04-18T06:23:28+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (754,40737,'1',NULL,NULL,NULL,NULL,'insert','m2861X','爱薇JP','2022-04-18T06:23:34+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (756,28230,'1',NULL,NULL,NULL,NULL,'insert','534755I','薇薇安WZ','2022-04-18T06:27:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (758,39567,'8',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-16T22:15:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (760,38016,'1',NULL,NULL,NULL,NULL,'insert','533524A','云熙SummerYS','2022-04-18T08:44:09+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (762,40288,'1',NULL,NULL,NULL,NULL,'insert','m3072L','bryanJP','2022-04-18T09:00:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (764,40012,'1',NULL,NULL,NULL,NULL,'insert','m3072L','bryanJP','2022-04-18T09:14:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (766,39649,'4',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-07-18T20:37:30+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (768,28003,'1',NULL,NULL,NULL,NULL,'insert','100089S','迪亚JH','2022-04-18T09:59:26+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (770,31402,'1',NULL,NULL,NULL,NULL,'insert','530807L','马喜乐WZ','2022-04-18T10:19:29+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (772,21367,'1',NULL,NULL,NULL,NULL,'insert','537125B','香兰FJ','2022-04-18T11:37:48+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (774,36825,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-18T12:57:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (776,39071,'4',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-18T12:57:16+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (777,38490,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-18T12:57:18+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (779,39500,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-18T13:00:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (780,28817,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-04-18T13:00:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (781,41143,'99',NULL,'2',NULL,NULL,'update','admin','武林盟主','2022-07-18T18:11:43+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (783,20622,'9',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T09:01:21+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (785,24183,'19',NULL,'1',NULL,NULL,'update','W00001','张三丰','2022-05-03T15:30:01+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (787,38176,'19',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-20T01:07:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (788,32541,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-10T20:37:47+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (789,32538,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-05-10T20:38:03+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (791,21000,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-05-10T20:40:40+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (792,20755,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-05-21T15:39:51+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (793,23582,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-07-02T14:22:07+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (795,32508,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-07-02T14:22:31+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (797,39573,'29',NULL,NULL,NULL,NULL,'update','m3862G','louis','2022-07-21T22:10:58+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (799,22724,'1',NULL,NULL,NULL,NULL,'insert','admin','武林盟主','2022-07-08T14:07:46+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (801,20476,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-09T20:19:45+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (803,33022,'27','3',NULL,NULL,NULL,'update','admin','武林盟主','2022-07-19T14:14:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (804,41145,'239',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-03T14:21:35+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (805,19688,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-18T18:05:04+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (807,41144,'6',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T13:04:36+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (809,39817,'2',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-07-18T20:37:28+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (810,39969,'1',NULL,NULL,NULL,NULL,'insert','100005W','安宁JH','2022-07-18T20:37:29+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (812,39647,'1',NULL,NULL,NULL,NULL,'insert','m3862G','louis','2022-07-21T22:11:00+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (814,34597,'3',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-07-29T16:30:11+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (815,20611,'3',NULL,NULL,NULL,NULL,'update','100005W','安宁JH','2022-08-01T09:00:14+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (816,31894,'99',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-16T22:20:06+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (817,29046,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T11:31:29+08:00');
INSERT INTO `article_info` (`id`,`articleId`,`articleViewCount`,`articleCommentCount`,`articleFavoriteCount`,`articleLikeCount`,`articleDislikeCount`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (818,30968,'2',NULL,NULL,NULL,NULL,'update','admin','武林盟主','2022-08-17T21:13:51+08:00');



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

INSERT INTO `article_like` (`id`,`userId`,`articleId`,`likeStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (557,'admin','100006','like','insert',NULL,NULL,'2022-08-22T16:06:16+08:00');



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
# DATA DUMP FOR TABLE: article_view
# ------------------------------------------------------------

INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11750,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-20T23:38:28+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11751,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-21T22:53:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11752,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:08:19+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11753,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:15:48+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11754,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:16:23+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11755,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:16:39+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11756,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:22:03+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11757,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:27:17+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11758,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:28:32+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11759,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:43:41+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11760,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:46:24+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11761,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:51:44+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11762,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:56:19+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11763,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:56:37+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11764,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T09:57:52+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11765,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:04:13+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11766,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:04:34+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11767,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:05:50+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11768,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:06:03+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11769,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:06:08+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11770,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:06:12+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11771,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:06:30+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11772,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:07:47+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11773,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:16:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11774,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:16:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11775,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:27:09+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11776,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:27:51+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11777,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:28:01+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11778,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:28:14+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11779,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:28:33+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11780,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:31:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11781,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:34:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11782,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:35:56+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11783,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:36:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11784,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:37:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11785,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:37:51+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11786,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:39:12+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11787,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:39:17+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11788,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:48:01+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11789,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:49:53+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11790,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:52:35+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11791,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:53:28+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11792,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:55:34+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11793,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:55:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11794,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:56:03+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11795,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:56:30+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11796,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:57:23+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11797,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:57:28+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11798,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T10:58:31+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11799,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:00:02+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11800,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:08:41+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11801,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:09:38+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11802,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:13:07+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11803,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:13:44+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11804,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:41:29+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11805,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:42:26+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11806,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:43:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11807,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:43:17+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11808,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:46:15+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11809,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:46:30+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11810,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:47:00+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11811,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:49:35+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11812,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:57:38+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11813,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:58:20+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11814,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:58:58+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11815,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T11:59:47+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11816,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:00:51+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11817,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:01:04+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11818,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:01:18+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11819,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:02:40+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11820,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:03:18+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11821,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:03:35+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11822,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:04:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11823,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:04:33+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11824,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:07:17+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11825,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:09:10+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11826,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:15:09+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11827,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:19:26+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11828,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:20:27+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11829,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T12:21:14+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11830,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:33:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11831,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:41:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11832,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:43:50+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11833,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:45:20+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11834,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:47:02+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11835,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:47:41+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11836,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:49:46+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11837,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:51:13+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11838,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:52:09+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11839,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:55:18+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11840,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:55:37+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11841,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:56:19+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11842,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:57:18+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11843,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T13:57:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11844,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:00:18+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11845,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:00:32+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11846,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:00:43+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11847,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:01:52+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11848,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:07:56+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11849,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:08:15+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11850,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:08:32+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11851,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:08:42+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11852,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:09:04+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11853,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:09:12+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11854,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:09:21+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11855,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:09:40+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11856,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:19:48+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11857,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:20:52+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11858,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:21:23+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11859,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:21:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11860,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:23:24+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11861,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:23:38+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11862,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:25:01+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11863,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:27:37+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11864,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:28:07+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11865,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:28:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11866,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:28:44+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11867,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:30:12+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11868,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:30:41+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11869,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:31:46+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11870,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:32:54+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11871,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:33:37+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11872,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:35:25+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11873,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:39:30+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11874,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:43:10+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11875,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:43:33+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11876,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:45:41+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11877,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:46:01+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11878,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:46:14+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11879,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:47:31+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11880,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:47:48+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11881,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:48:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11882,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:48:43+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11883,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:52:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11884,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:55:08+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11885,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:55:26+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11886,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:57:15+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11887,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:57:29+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11888,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:58:33+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11889,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:58:54+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11890,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T14:59:52+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11891,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:00:14+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11892,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:01:13+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11893,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:01:46+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11894,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:06:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11895,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:06:56+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11896,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:06:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11897,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:07:38+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11898,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:24:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11899,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:30:10+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11900,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:51:44+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11901,100004,'admin',NULL,'insert',NULL,NULL,'2022-08-22T15:56:42+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11902,100004,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:00:41+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11903,100004,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:02:00+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11904,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:04:43+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11905,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:05:02+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11906,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:05:13+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11907,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:05:18+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11908,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:06:01+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11909,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:06:06+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11910,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:06:12+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11911,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:06:19+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11912,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:06:24+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11913,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:06:30+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11914,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:07:25+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11915,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:28:26+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11916,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:29:15+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11917,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:29:58+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11918,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:31:02+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11919,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:43:49+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11920,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T16:53:40+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11921,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-22T18:08:38+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11922,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T18:13:17+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11923,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T23:06:33+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11924,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-22T23:06:33+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11925,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T09:10:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11926,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T11:45:06+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11927,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T11:45:13+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11928,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T13:37:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11929,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T13:37:23+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11930,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T14:51:56+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11931,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T15:57:54+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11932,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:03:00+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11933,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:03:24+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11934,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:07:39+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11935,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:13:23+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11936,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:14:29+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11937,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:16:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11938,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:17:54+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11939,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:19:58+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11940,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:21:15+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11941,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:24:08+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11942,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T16:28:46+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11943,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T17:41:43+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11944,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-23T17:43:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11945,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-23T20:44:48+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11946,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-27T10:31:01+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11947,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-27T13:43:41+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11948,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-27T13:44:29+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11949,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-27T13:45:35+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11950,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-27T13:46:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11951,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-27T13:50:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11952,100008,'admin',NULL,'insert',NULL,NULL,'2022-08-30T15:32:13+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11953,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-30T15:35:31+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11954,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-30T15:42:10+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11955,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-30T15:48:29+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11956,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-30T15:49:09+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11957,100006,'admin',NULL,'insert',NULL,NULL,'2022-08-30T15:49:31+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11958,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:27:18+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11959,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:28:26+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11960,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:29:01+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11961,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:29:35+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11962,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:30:07+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11963,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:30:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11964,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:30:28+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11965,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:32:23+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11966,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:34:39+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11967,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:35:02+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11968,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:35:18+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11969,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:35:28+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11970,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:36:46+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11971,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:37:29+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11972,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:37:46+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11973,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:37:56+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11974,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:38:26+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11975,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:39:31+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11976,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:40:14+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11977,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:41:36+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11978,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:42:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11979,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:43:02+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11980,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:43:35+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11981,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:43:52+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11982,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:54+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11983,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11984,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11985,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11986,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11987,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11988,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11989,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11990,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11991,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:44:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11992,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11993,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11994,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11995,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11996,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11997,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11998,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11999,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12000,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12001,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12002,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:05+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12003,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12004,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12005,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12006,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12007,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12008,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12009,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12010,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12011,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12012,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12013,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12014,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12015,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12016,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12017,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12018,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12019,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12020,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12021,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12022,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12023,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:17+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12024,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:19+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12025,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:45:43+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12026,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:46:09+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12027,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:47:04+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12028,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:47:39+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12029,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:50:03+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12030,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:50:24+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12031,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:50:36+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12032,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:50:45+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12033,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:50:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12034,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:51:46+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12035,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:53:49+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12036,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:53:54+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12037,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:55:52+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12038,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:56:56+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12039,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:58:19+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12040,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T21:59:04+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12041,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:01:51+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12042,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:02:13+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12043,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:02:38+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12044,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:03:11+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12045,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:06:08+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12046,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:07:47+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12047,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:09:08+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12048,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:10:55+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12049,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:11:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12050,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:11:30+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12051,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:11:42+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12052,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:11:47+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12053,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:11:52+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12054,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:11:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12055,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:13:19+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12056,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:14:09+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12057,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:15:06+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12058,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:15:19+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12059,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:16:06+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12060,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:16:34+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12061,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:16:42+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12062,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:16:51+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12063,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:16:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12064,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:17:07+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12065,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:17:15+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12066,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:17:24+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12067,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:20:57+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12068,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:21:16+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12069,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:21:43+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12070,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:24:46+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12071,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:25:22+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12072,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:25:40+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12073,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:26:03+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12074,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:26:17+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12075,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:26:23+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12076,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:26:34+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12077,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:26:37+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12078,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:27:39+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12079,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:27:44+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12080,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:27:59+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12081,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:28:04+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12082,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:29:56+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12083,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-30T22:33:51+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12084,100008,'admin',NULL,'insert',NULL,NULL,'2022-08-31T11:44:47+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12085,100005,'admin',NULL,'insert',NULL,NULL,'2022-08-31T11:45:10+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12086,100005,'admin',NULL,'insert',NULL,NULL,'2022-09-12T10:54:52+08:00');
INSERT INTO `article_view` (`id`,`articleId`,`userId`,`viewType`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12087,100005,'admin',NULL,'insert',NULL,NULL,'2022-09-12T13:47:43+08:00');



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
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (227,'100001','admin','100005',NULL,'','active',NULL,NULL,NULL,NULL,NULL,'insert','admin','系统管理员','2022-08-22T10:57:37+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (228,'100002','admin','100005',NULL,'','active',NULL,NULL,NULL,NULL,NULL,'insert','admin','系统管理员','2022-08-22T10:57:38+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (229,'100003','admin','100005','','','active',NULL,NULL,NULL,NULL,NULL,'update','admin','系统管理员','2022-08-30T22:21:10+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (230,'100004','admin','100005','admin','','active',NULL,NULL,NULL,NULL,NULL,'update','admin','系统管理员','2022-08-22T13:44:43+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,'100005','admin','100005','','','active',NULL,NULL,NULL,NULL,NULL,'update','admin','系统管理员','2022-08-22T13:47:11+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (232,'100006','admin','100005','','','active',NULL,NULL,NULL,NULL,NULL,'update','admin','系统管理员','2022-08-22T23:06:43+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (233,'100007','admin','100005',NULL,'回复评论','active',NULL,NULL,NULL,NULL,NULL,'insert','admin','系统管理员','2022-08-22T13:54:36+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (234,'100008','admin','100005',NULL,'回复','active',NULL,NULL,NULL,NULL,NULL,'insert','admin','系统管理员','2022-08-22T13:55:31+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (235,'100009','admin','100005',NULL,'回复某一评论测试','active','100008','[{\"id\":234,\"commentId\":\"100008\",\"userId\":\"admin\",\"articleId\":\"100005\",\"likeUserIdList\":null,\"commentContent\":\"回复\",\"commentStatus\":\"active\",\"replyCommentId\":null,\"replyCommentContentJson\":null,\"operation\":\"insert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"系统管理员\",\"operationAt\":\"2022-08-22T13:55:31+08:00\",\"username\":\"系统管理员\"}]',NULL,NULL,NULL,'insert','admin','系统管理员','2022-08-22T14:34:15+08:00');
INSERT INTO `comment` (`id`,`commentId`,`userId`,`articleId`,`likeUserIdList`,`commentContent`,`commentStatus`,`replyCommentId`,`replyCommentContentJson`,`commentCreateUserId`,`commentCreateUsername`,`commentCreateTime`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (242,'100010','admin','100005',NULL,'1232132','active','100009','[{\"id\":234,\"commentId\":\"100008\",\"userId\":\"admin\",\"articleId\":\"100005\",\"likeUserIdList\":null,\"commentContent\":\"回复\",\"commentStatus\":\"active\",\"replyCommentId\":null,\"replyCommentContentJson\":null,\"operation\":\"insert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"系统管理员\",\"operationAt\":\"2022-08-22T13:55:31+08:00\",\"username\":\"系统管理员\"},{\"id\":235,\"commentId\":\"100009\",\"userId\":\"admin\",\"articleId\":\"100005\",\"likeUserIdList\":null,\"commentContent\":\"回复某一评论测试\",\"commentStatus\":\"active\",\"replyCommentId\":\"100008\",\"replyCommentContentJson\":\"[{\\\"id\\\":234,\\\"commentId\\\":\\\"100008\\\",\\\"userId\\\":\\\"admin\\\",\\\"articleId\\\":\\\"100005\\\",\\\"likeUserIdList\\\":null,\\\"commentContent\\\":\\\"回复\\\",\\\"commentStatus\\\":\\\"active\\\",\\\"replyCommentId\\\":null,\\\"replyCommentContentJson\\\":null,\\\"operation\\\":\\\"insert\\\",\\\"operationByUserId\\\":\\\"admin\\\",\\\"operationByUser\\\":\\\"系统管理员\\\",\\\"operationAt\\\":\\\"2022-08-22T13:55:31+08:00\\\",\\\"username\\\":\\\"系统管理员\\\"}]\",\"operation\":\"insert\",\"operationByUserId\":\"admin\",\"operationByUser\":\"系统管理员\",\"operationAt\":\"2022-08-22T14:34:15+08:00\",\"username\":\"系统管理员\"}]',NULL,NULL,NULL,'insert','admin','系统管理员','2022-08-22T15:00:09+08:00');



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





