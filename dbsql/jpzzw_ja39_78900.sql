/*
 Navicat Premium Data Transfer

 Source Server         : J.精品制造网
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : 122.114.158.39:3306
 Source Schema         : jpzzw_ja39_78900

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 29/03/2022 16:44:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for destoon_404
-- ----------------------------
DROP TABLE IF EXISTS `destoon_404`;
CREATE TABLE `destoon_404`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `refer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `robot` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '404日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_404
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_ad
-- ----------------------------
DROP TABLE IF EXISTS `destoon_ad`;
CREATE TABLE `destoon_ad`  (
  `aid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `currency` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stat` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `text_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `text_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `text_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `text_style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image_src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image_alt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flash_src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flash_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flash_loop` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `key_moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `key_catid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `key_word` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `key_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`aid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_ad
-- ----------------------------
INSERT INTO `destoon_ad` VALUES (1, '1网站首页图片轮播1', 14, 5, 1, 0, '', 'http://www.destoon.com/', '', 0, 'destoon', 1623116605, 'destoon', 1623137646, 1623081600, 1641398399, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/08/153325941.jpg', 'http://www.destoon.com/', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (2, '网站首页图片轮播2', 14, 5, 0, 0, '', 'http://www.destoon.com/', '', 0, 'destoon', 1623116605, 'destoon', 1623137686, 1623081600, 1631203199, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/08/153415431.jpg', 'http://www.destoon.com/', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (3, '首页旗帜A1', 21, 3, 0, 0, '', 'http://www.destoon.com/', '', 0, 'destoon', 1623116605, 'destoon', 1623116605, 1262275200, 1577894399, 0, '', '', '', '', '', '', 'file/image/a1.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (4, '首页旗帜A2', 22, 3, 0, 0, '', 'http://www.destoon.com/', '', 0, 'destoon', 1623116605, 'destoon', 1623116605, 1262275200, 1577894399, 0, '', '', '', '', '', '', 'file/image/a2.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (5, '首页旗帜A3', 23, 3, 0, 0, '', 'http://www.destoon.com/', '', 0, 'destoon', 1623116605, 'destoon', 1623116605, 1262275200, 1577894399, 0, '', '', '', '', '', '', 'file/image/a3.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (6, '首页旗帜A4', 24, 3, 0, 0, '', 'http://www.destoon.com/', '', 0, 'destoon', 1623116605, 'destoon', 1623116605, 1262275200, 1577894399, 0, '', '', '', '', '', '', 'file/image/a4.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (7, '首页旗帜A5', 25, 3, 0, 0, '', 'http://www.destoon.com/', '', 0, 'destoon', 1623116605, 'destoon', 1623116605, 1262275200, 1577894399, 0, '', '', '', '', '', '', 'file/image/a5.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (8, 'one', 26, 3, 0, 0, '', '', '让你的用户在搜索引擎首页找到你', 0, 'destoon', 1623222477, 'destoon', 1623222477, 1623168000, 1631116799, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/150745811.png', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (9, '机械及行业设备1', 27, 3, 0, 0, '', '', '4', 0, 'destoon', 1623223950, 'destoon', 1623226297, 1623168000, 1625846399, 0, '1', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/154520431.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (10, '机械及行业设备', 27, 3, 0, 0, '', '', '4', 0, 'destoon', 1623223969, 'destoon', 1623226327, 1623168000, 1625846399, 0, '1', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/155749201.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (11, '机械及行业设备', 27, 3, 0, 0, '', '', '4', 0, 'destoon', 1623223985, 'destoon', 1623226330, 1623168000, 1625846399, 0, '1', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/155805621.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (12, '仪器、仪表', 27, 3, 0, 0, '', '', '5', 0, 'destoon', 1623224058, 'destoon', 1623226340, 1623168000, 1625846399, 0, '1', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/155821161.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (13, '仪器、仪表', 27, 3, 0, 0, '', '', '5', 0, 'destoon', 1623224070, 'destoon', 1623226342, 1623168000, 1625846399, 0, '1', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/155830471.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (14, '机械及行业设备', 27, 3, 0, 0, '', '', '4', 0, 'destoon', 1623226456, 'destoon', 1623226456, 1623168000, 1625846399, 0, '2', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/161410981.gif', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (15, '仪器、仪表', 27, 3, 0, 0, '', '', '5', 0, 'destoon', 1623226534, 'destoon', 1623226571, 1623168000, 1625846399, 0, '2', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/161610871.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (16, 'two', 26, 3, 0, 0, '', '', '让你的用户在搜索引擎首页找到你', 0, 'destoon', 1623297183, 'destoon', 1623297183, 1623254400, 1625932799, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/115257741.png', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (17, 'three', 26, 3, 0, 0, '', '', '', 0, 'destoon', 1623308751, 'destoon', 1623308751, 1623254400, 1625932799, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150547931.gif', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (18, '中企电子商务', 28, 3, 0, 0, '', '', '安采公司1', 0, 'destoon', 1623405635, 'destoon', 1624003098, 1623340800, 1626019199, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/15/092433271.png', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (19, '中企电子商务', 28, 3, 0, 0, '', '', '安采公司2', 0, 'destoon', 1623405692, 'destoon', 1624003144, 1623340800, 1626019199, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/180124941.png', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (20, '中企电子商务', 28, 3, 0, 0, '', '', '', 0, 'destoon', 1623720332, 'destoon', 1624003148, 1623686400, 1626364799, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/15/092526741.png', '', '', '', '', 1, 0, 0, '', 0, 0, 3);
INSERT INTO `destoon_ad` VALUES (21, '新乡爱采购公司', 26, 3, 0, 0, '', '', '你想不到最好的爱采购公司', 0, 'destoon', 1623721045, 'destoon', 1623721153, 1623686400, 1626364799, 0, '', '', '', '', '', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/15/093718461.jpg', '', '', '', '', 1, 0, 0, '', 0, 0, 3);

-- ----------------------------
-- Table structure for destoon_ad_place
-- ----------------------------
DROP TABLE IF EXISTS `destoon_ad_place`;
CREATE TABLE `destoon_ad_place`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `width` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `price` float UNSIGNED NOT NULL DEFAULT 0,
  `ads` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '广告位' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_ad_place
-- ----------------------------
INSERT INTO `destoon_ad_place` VALUES (1, 5, 6, 1, '供应排名', '', '', '', '', 0, 0, 0, 0, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (2, 6, 6, 1, '求购排名', '', '', '', '', 0, 0, 0, 0, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (3, 16, 6, 1, '商城排名', '', '', '', '', 0, 0, 0, 0, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (4, 4, 6, 1, '公司排名', '', '', '', '', 0, 0, 0, 0, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (14, 0, 5, 1, '首页图片轮播', '', '', '', '', 660, 300, 0, 2, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (15, 5, 7, 1, '供应赞助商链接', '', '', '', '', 0, 0, 0, 0, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (17, 4, 7, 1, '公司赞助商链接', '', '', '', '', 0, 0, 0, 0, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (18, 0, 7, 1, '求购赞助商链接', '', '', '', '', 0, 0, 0, 0, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (19, 8, 7, 1, '展会赞助商链接', '', '', '', '', 0, 0, 0, 0, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (21, 0, 3, 1, '首页旗帜A1', '', '', '', '', 116, 212, 0, 1, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (22, 0, 3, 1, '首页旗帜A2', '', '', '', '', 116, 212, 0, 1, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (23, 0, 3, 1, '首页旗帜A3', '', '', '', '', 116, 212, 0, 1, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (24, 0, 3, 1, '首页旗帜A4', '', '', '', '', 116, 212, 0, 1, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (25, 0, 3, 1, '首页旗帜A5', '', '', '', '', 116, 212, 0, 1, 0, 1623116605, 'destoon', 1623116605, '');
INSERT INTO `destoon_ad_place` VALUES (26, 0, 3, 1, '投放广告位', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/150524881.png', '', '全体页面广告投放', '', 1200, 90, 0, 4, 0, 1623222372, 'destoon', 1623222421, '');
INSERT INTO `destoon_ad_place` VALUES (27, 0, 3, 1, '首页楼层左侧广告', '', '', '', '', 180, 260, 0, 7, 0, 1623223845, 'destoon', 1623223845, '');
INSERT INTO `destoon_ad_place` VALUES (28, 0, 3, 1, '公司广告位', '', '', '', '', 141, 260, 0, 3, 0, 1623405506, 'destoon', 1623405506, '');

-- ----------------------------
-- Table structure for destoon_address
-- ----------------------------
DROP TABLE IF EXISTS `destoon_address`;
CREATE TABLE `destoon_address`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_address
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_admin
-- ----------------------------
DROP TABLE IF EXISTS `destoon_admin`;
CREATE TABLE `destoon_admin`  (
  `adminid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `moduleid` smallint(6) NOT NULL DEFAULT 0,
  `file` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `catid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_admin
-- ----------------------------
INSERT INTO `destoon_admin` VALUES (1, 1, 0, '生成首页', '?action=html', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (2, 1, 0, '更新缓存', '?action=cache', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (3, 1, 0, '网站设置', '?file=setting', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (4, 1, 0, '模块管理', '?file=module', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (5, 1, 0, '数据维护', '?file=database', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (6, 1, 0, '模板管理', '?file=template', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (7, 1, 0, '会员管理', '?moduleid=2', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (8, 1, 0, '单页管理', '?moduleid=3&file=webpage', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (9, 1, 0, '排名推广', '?moduleid=3&file=spread', '', 0, '', '', '');
INSERT INTO `destoon_admin` VALUES (10, 1, 0, '广告管理', '?moduleid=3&file=ad', '', 0, '', '', '');

-- ----------------------------
-- Table structure for destoon_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `destoon_admin_log`;
CREATE TABLE `destoon_admin_log`  (
  `logid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qstring` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `logtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`logid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 527 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_admin_log
-- ----------------------------
INSERT INTO `destoon_admin_log` VALUES (1, 'file=md5&action=add&js=1', 'destoon', '127.0.0.1', 1623116650);
INSERT INTO `destoon_admin_log` VALUES (2, 'file=setting', 'destoon', '127.0.0.1', 1623116657);
INSERT INTO `destoon_admin_log` VALUES (3, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1623117433);
INSERT INTO `destoon_admin_log` VALUES (4, 'rand=47&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1623117433);
INSERT INTO `destoon_admin_log` VALUES (5, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1623117435);
INSERT INTO `destoon_admin_log` VALUES (6, 'rand=87&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1623117435);
INSERT INTO `destoon_admin_log` VALUES (7, 'file=setting', 'destoon', '127.0.0.1', 1623117468);
INSERT INTO `destoon_admin_log` VALUES (8, 'moduleid=1&file=setting&action=html&tab=1', 'destoon', '127.0.0.1', 1623117593);
INSERT INTO `destoon_admin_log` VALUES (9, 'rand=68&moduleid=1&file=setting&tab=1', 'destoon', '127.0.0.1', 1623117593);
INSERT INTO `destoon_admin_log` VALUES (10, 'moduleid=1&file=setting&action=html&tab=1', 'destoon', '127.0.0.1', 1623117605);
INSERT INTO `destoon_admin_log` VALUES (11, 'rand=77&moduleid=1&file=setting&tab=1', 'destoon', '127.0.0.1', 1623117605);
INSERT INTO `destoon_admin_log` VALUES (12, 'moduleid=1&file=setting&action=html&tab=1', 'destoon', '127.0.0.1', 1623117637);
INSERT INTO `destoon_admin_log` VALUES (13, 'rand=28&moduleid=1&file=setting&tab=1', 'destoon', '127.0.0.1', 1623117637);
INSERT INTO `destoon_admin_log` VALUES (14, 'file=setting', 'destoon', '127.0.0.1', 1623120089);
INSERT INTO `destoon_admin_log` VALUES (15, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1623120152);
INSERT INTO `destoon_admin_log` VALUES (16, 'rand=98&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1623120152);
INSERT INTO `destoon_admin_log` VALUES (17, 'file=setting', 'destoon', '127.0.0.1', 1623120166);
INSERT INTO `destoon_admin_log` VALUES (18, 'moduleid=1&file=setting&action=html&tab=1', 'destoon', '127.0.0.1', 1623120185);
INSERT INTO `destoon_admin_log` VALUES (19, 'rand=75&moduleid=1&file=setting&tab=1', 'destoon', '127.0.0.1', 1623120185);
INSERT INTO `destoon_admin_log` VALUES (20, 'moduleid=3&file=ad&action=add&pid=14&widget=1', 'destoon', '127.0.0.1', 1623137495);
INSERT INTO `destoon_admin_log` VALUES (21, 'moduleid=3&file=ad&action=edit&aid=1&pid=14', 'destoon', '127.0.0.1', 1623137597);
INSERT INTO `destoon_admin_log` VALUES (22, 'moduleid=3&file=ad&action=edit&aid=2&pid=14', 'destoon', '127.0.0.1', 1623137649);
INSERT INTO `destoon_admin_log` VALUES (23, 'file=setting', 'destoon', '127.0.0.1', 1623139948);
INSERT INTO `destoon_admin_log` VALUES (24, 'moduleid=3&file=ad&action=add&pid=14&widget=1', 'destoon', '127.0.0.1', 1623139963);
INSERT INTO `destoon_admin_log` VALUES (25, 'file=setting', 'destoon', '127.0.0.1', 1623140203);
INSERT INTO `destoon_admin_log` VALUES (26, 'file=module&action=add', 'destoon', '127.0.0.1', 1623140244);
INSERT INTO `destoon_admin_log` VALUES (27, 'file=setting', 'destoon', '127.0.0.1', 1623140252);
INSERT INTO `destoon_admin_log` VALUES (28, 'file=module&action=edit&modid=16', 'destoon', '127.0.0.1', 1623141790);
INSERT INTO `destoon_admin_log` VALUES (29, 'file=module&action=edit&modid=2', 'destoon', '127.0.0.1', 1623141846);
INSERT INTO `destoon_admin_log` VALUES (30, 'file=module&action=edit&modid=16', 'destoon', '127.0.0.1', 1623141850);
INSERT INTO `destoon_admin_log` VALUES (31, 'file=module&action=edit&modid=16', 'destoon', '127.0.0.1', 1623142255);
INSERT INTO `destoon_admin_log` VALUES (32, 'file=module&action=add', 'destoon', '127.0.0.1', 1623142290);
INSERT INTO `destoon_admin_log` VALUES (33, 'file=module&action=add', 'destoon', '127.0.0.1', 1623142841);
INSERT INTO `destoon_admin_log` VALUES (34, 'rand=56&file=module&action=add', 'destoon', '127.0.0.1', 1623142853);
INSERT INTO `destoon_admin_log` VALUES (35, 'file=module&action=add', 'destoon', '127.0.0.1', 1623142857);
INSERT INTO `destoon_admin_log` VALUES (36, 'rand=92&file=module&action=add', 'destoon', '127.0.0.1', 1623142865);
INSERT INTO `destoon_admin_log` VALUES (37, 'file=module&action=add', 'destoon', '127.0.0.1', 1623142867);
INSERT INTO `destoon_admin_log` VALUES (38, 'file=module&action=edit&modid=3', 'destoon', '127.0.0.1', 1623142919);
INSERT INTO `destoon_admin_log` VALUES (39, 'file=module&action=edit&modid=16', 'destoon', '127.0.0.1', 1623142923);
INSERT INTO `destoon_admin_log` VALUES (40, 'moduleid=16&file=setting&widget=1', 'destoon', '127.0.0.1', 1623142942);
INSERT INTO `destoon_admin_log` VALUES (41, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623143581);
INSERT INTO `destoon_admin_log` VALUES (42, 'file=category&mid=16&action=add&parentid=0', 'destoon', '127.0.0.1', 1623144037);
INSERT INTO `destoon_admin_log` VALUES (43, 'file=template&action=edit&fileid=list&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623144704);
INSERT INTO `destoon_admin_log` VALUES (44, 'file=category&action=add&mid=16&parentid=0', 'destoon', '127.0.0.1', 1623144717);
INSERT INTO `destoon_admin_log` VALUES (45, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623146243);
INSERT INTO `destoon_admin_log` VALUES (46, 'file=category&action=add&mid=16&parentid=0', 'destoon', '127.0.0.1', 1623146343);
INSERT INTO `destoon_admin_log` VALUES (47, 'file=category&action=add&mid=16&parentid=4', 'destoon', '127.0.0.1', 1623146393);
INSERT INTO `destoon_admin_log` VALUES (48, 'file=category&action=edit&mid=16&catid=4', 'destoon', '127.0.0.1', 1623146449);
INSERT INTO `destoon_admin_log` VALUES (49, 'mid=16&file=category&action=edit&catid=6', 'destoon', '127.0.0.1', 1623146471);
INSERT INTO `destoon_admin_log` VALUES (50, 'file=category&action=add&mid=16&parentid=7', 'destoon', '127.0.0.1', 1623146488);
INSERT INTO `destoon_admin_log` VALUES (51, 'file=category&action=add&mid=16&parentid=0', 'destoon', '127.0.0.1', 1623146634);
INSERT INTO `destoon_admin_log` VALUES (52, 'mid=16&file=category&action=edit&catid=7', 'destoon', '127.0.0.1', 1623146650);
INSERT INTO `destoon_admin_log` VALUES (53, 'mid=16&file=category&action=edit&catid=6', 'destoon', '127.0.0.1', 1623146661);
INSERT INTO `destoon_admin_log` VALUES (54, 'file=category&action=add&mid=16&parentid=7', 'destoon', '127.0.0.1', 1623146683);
INSERT INTO `destoon_admin_log` VALUES (55, 'file=category&action=add&mid=16&parentid=10', 'destoon', '127.0.0.1', 1623146722);
INSERT INTO `destoon_admin_log` VALUES (56, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623196958);
INSERT INTO `destoon_admin_log` VALUES (57, 'file=template&action=edit&fileid=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623197163);
INSERT INTO `destoon_admin_log` VALUES (58, 'file=template&action=add&type=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623197169);
INSERT INTO `destoon_admin_log` VALUES (59, 'rand=24&moduleid=16&action=add', 'destoon', '127.0.0.1', 1623197269);
INSERT INTO `destoon_admin_log` VALUES (60, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623197274);
INSERT INTO `destoon_admin_log` VALUES (61, 'rand=26&moduleid=16&action=add', 'destoon', '127.0.0.1', 1623197367);
INSERT INTO `destoon_admin_log` VALUES (62, 'moduleid=16&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623197381);
INSERT INTO `destoon_admin_log` VALUES (63, 'moduleid=16&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623197386);
INSERT INTO `destoon_admin_log` VALUES (64, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623197485);
INSERT INTO `destoon_admin_log` VALUES (65, 'rand=70&moduleid=16&action=add', 'destoon', '127.0.0.1', 1623197588);
INSERT INTO `destoon_admin_log` VALUES (66, 'moduleid=16&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623197594);
INSERT INTO `destoon_admin_log` VALUES (67, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623199723);
INSERT INTO `destoon_admin_log` VALUES (68, 'rand=95&moduleid=16&action=add', 'destoon', '127.0.0.1', 1623199770);
INSERT INTO `destoon_admin_log` VALUES (69, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623200186);
INSERT INTO `destoon_admin_log` VALUES (70, 'rand=16&moduleid=16&action=add', 'destoon', '127.0.0.1', 1623200307);
INSERT INTO `destoon_admin_log` VALUES (71, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623205551);
INSERT INTO `destoon_admin_log` VALUES (72, 'moduleid=6&file=setting', 'destoon', '127.0.0.1', 1623205554);
INSERT INTO `destoon_admin_log` VALUES (73, 'file=category&action=add&mid=6&parentid=0', 'destoon', '127.0.0.1', 1623205573);
INSERT INTO `destoon_admin_log` VALUES (74, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623205781);
INSERT INTO `destoon_admin_log` VALUES (75, 'rand=85&moduleid=6&action=add', 'destoon', '127.0.0.1', 1623206037);
INSERT INTO `destoon_admin_log` VALUES (76, 'rand=68&moduleid=6&action=add', 'destoon', '127.0.0.1', 1623206074);
INSERT INTO `destoon_admin_log` VALUES (77, 'file=category&action=edit&mid=6&catid=2', 'destoon', '127.0.0.1', 1623206109);
INSERT INTO `destoon_admin_log` VALUES (78, 'file=category&action=edit&mid=6&catid=13', 'destoon', '127.0.0.1', 1623206159);
INSERT INTO `destoon_admin_log` VALUES (79, 'file=category&action=add&mid=6&parentid=0', 'destoon', '127.0.0.1', 1623206210);
INSERT INTO `destoon_admin_log` VALUES (80, 'mid=6&file=category&parentid=0&action=delete', 'destoon', '127.0.0.1', 1623206323);
INSERT INTO `destoon_admin_log` VALUES (81, 'moduleid=6&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623207151);
INSERT INTO `destoon_admin_log` VALUES (82, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623207451);
INSERT INTO `destoon_admin_log` VALUES (83, 'rand=35&moduleid=6&action=add', 'destoon', '127.0.0.1', 1623207475);
INSERT INTO `destoon_admin_log` VALUES (84, 'moduleid=6&file=index&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623207501);
INSERT INTO `destoon_admin_log` VALUES (85, 'moduleid=5&action=add', 'destoon', '127.0.0.1', 1623207711);
INSERT INTO `destoon_admin_log` VALUES (86, 'file=category&action=add&mid=5&parentid=0', 'destoon', '127.0.0.1', 1623207757);
INSERT INTO `destoon_admin_log` VALUES (87, 'file=category&action=add&mid=5&parentid=16', 'destoon', '127.0.0.1', 1623207792);
INSERT INTO `destoon_admin_log` VALUES (88, 'file=category&action=edit&mid=5&catid=17', 'destoon', '127.0.0.1', 1623207913);
INSERT INTO `destoon_admin_log` VALUES (89, 'file=category&action=add&mid=5&parentid=0', 'destoon', '127.0.0.1', 1623207921);
INSERT INTO `destoon_admin_log` VALUES (90, 'file=category&action=add&mid=5&parentid=16', 'destoon', '127.0.0.1', 1623207939);
INSERT INTO `destoon_admin_log` VALUES (91, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623208703);
INSERT INTO `destoon_admin_log` VALUES (92, 'rand=55&moduleid=6&action=add', 'destoon', '127.0.0.1', 1623208730);
INSERT INTO `destoon_admin_log` VALUES (93, 'rand=69&moduleid=6&action=add', 'destoon', '127.0.0.1', 1623208824);
INSERT INTO `destoon_admin_log` VALUES (94, 'moduleid=6&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623208829);
INSERT INTO `destoon_admin_log` VALUES (95, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623208992);
INSERT INTO `destoon_admin_log` VALUES (96, 'moduleid=5&action=add', 'destoon', '127.0.0.1', 1623209004);
INSERT INTO `destoon_admin_log` VALUES (97, 'rand=16&moduleid=5&action=add', 'destoon', '127.0.0.1', 1623209450);
INSERT INTO `destoon_admin_log` VALUES (98, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623210142);
INSERT INTO `destoon_admin_log` VALUES (99, 'moduleid=6&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623219454);
INSERT INTO `destoon_admin_log` VALUES (100, 'file=category&action=add&mid=6&parentid=0', 'destoon', '127.0.0.1', 1623221104);
INSERT INTO `destoon_admin_log` VALUES (101, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623221128);
INSERT INTO `destoon_admin_log` VALUES (102, 'rand=11&moduleid=6&action=add', 'destoon', '127.0.0.1', 1623221346);
INSERT INTO `destoon_admin_log` VALUES (103, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623221350);
INSERT INTO `destoon_admin_log` VALUES (104, 'rand=93&moduleid=6&action=add', 'destoon', '127.0.0.1', 1623221379);
INSERT INTO `destoon_admin_log` VALUES (105, 'file=category&action=edit&mid=6&catid=23', 'destoon', '127.0.0.1', 1623221524);
INSERT INTO `destoon_admin_log` VALUES (106, 'moduleid=6&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623222079);
INSERT INTO `destoon_admin_log` VALUES (107, 'moduleid=6&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623222085);
INSERT INTO `destoon_admin_log` VALUES (108, 'moduleid=3&file=ad&action=edit&aid=7&pid=25', 'destoon', '127.0.0.1', 1623222291);
INSERT INTO `destoon_admin_log` VALUES (109, 'moduleid=3&file=ad&action=add&pid=26&widget=1', 'destoon', '127.0.0.1', 1623222390);
INSERT INTO `destoon_admin_log` VALUES (110, 'moduleid=3&file=ad&pid=26&action=add', 'destoon', '127.0.0.1', 1623222395);
INSERT INTO `destoon_admin_log` VALUES (111, 'moduleid=3&file=ad&action=add&pid=26&widget=1', 'destoon', '127.0.0.1', 1623222425);
INSERT INTO `destoon_admin_log` VALUES (112, 'mid=16&file=category&action=edit&catid=4', 'destoon', '127.0.0.1', 1623222889);
INSERT INTO `destoon_admin_log` VALUES (113, 'moduleid=3&file=ad&action=add&pid=27&widget=1', 'destoon', '127.0.0.1', 1623223848);
INSERT INTO `destoon_admin_log` VALUES (114, 'moduleid=3&file=ad&pid=27&action=add', 'destoon', '127.0.0.1', 1623223884);
INSERT INTO `destoon_admin_log` VALUES (115, 'moduleid=3&file=ad&action=add&pid=27&widget=1', 'destoon', '127.0.0.1', 1623224045);
INSERT INTO `destoon_admin_log` VALUES (116, 'moduleid=3&file=ad&pid=27&action=add', 'destoon', '127.0.0.1', 1623224048);
INSERT INTO `destoon_admin_log` VALUES (117, 'moduleid=3&file=ad&action=edit&aid=9&pid=27', 'destoon', '127.0.0.1', 1623224366);
INSERT INTO `destoon_admin_log` VALUES (118, 'moduleid=3&file=ad&action=edit&aid=10&pid=27', 'destoon', '127.0.0.1', 1623225457);
INSERT INTO `destoon_admin_log` VALUES (119, 'moduleid=3&file=ad&action=edit&aid=11&pid=27', 'destoon', '127.0.0.1', 1623225473);
INSERT INTO `destoon_admin_log` VALUES (120, 'moduleid=3&file=ad&action=edit&aid=12&pid=27', 'destoon', '127.0.0.1', 1623225495);
INSERT INTO `destoon_admin_log` VALUES (121, 'moduleid=3&file=ad&action=edit&aid=13&pid=27', 'destoon', '127.0.0.1', 1623225504);
INSERT INTO `destoon_admin_log` VALUES (122, 'moduleid=3&file=ad&pid=27&action=add', 'destoon', '127.0.0.1', 1623225560);
INSERT INTO `destoon_admin_log` VALUES (123, 'moduleid=3&file=ad&action=add&pid=27&widget=1', 'destoon', '127.0.0.1', 1623225649);
INSERT INTO `destoon_admin_log` VALUES (124, 'moduleid=3&file=ad&action=add&pid=26&widget=1', 'destoon', '127.0.0.1', 1623225658);
INSERT INTO `destoon_admin_log` VALUES (125, 'moduleid=3&file=ad&action=edit&aid=8&pid=26', 'destoon', '127.0.0.1', 1623225679);
INSERT INTO `destoon_admin_log` VALUES (126, 'moduleid=3&file=ad&pid=26&action=add', 'destoon', '127.0.0.1', 1623225689);
INSERT INTO `destoon_admin_log` VALUES (127, 'moduleid=3&file=ad&action=edit&aid=8&pid=26', 'destoon', '127.0.0.1', 1623225693);
INSERT INTO `destoon_admin_log` VALUES (128, 'moduleid=3&file=ad&action=add&pid=27&widget=1', 'destoon', '127.0.0.1', 1623226275);
INSERT INTO `destoon_admin_log` VALUES (129, 'moduleid=3&file=ad&action=edit&aid=9&pid=27', 'destoon', '127.0.0.1', 1623226289);
INSERT INTO `destoon_admin_log` VALUES (130, 'moduleid=3&file=ad&action=edit&aid=10&pid=27', 'destoon', '127.0.0.1', 1623226324);
INSERT INTO `destoon_admin_log` VALUES (131, 'moduleid=3&file=ad&action=edit&aid=11&pid=27', 'destoon', '127.0.0.1', 1623226328);
INSERT INTO `destoon_admin_log` VALUES (132, 'moduleid=3&file=ad&action=edit&aid=12&pid=27', 'destoon', '127.0.0.1', 1623226336);
INSERT INTO `destoon_admin_log` VALUES (133, 'moduleid=3&file=ad&action=edit&aid=13&pid=27', 'destoon', '127.0.0.1', 1623226341);
INSERT INTO `destoon_admin_log` VALUES (134, 'moduleid=3&file=ad&pid=27&action=add', 'destoon', '127.0.0.1', 1623226432);
INSERT INTO `destoon_admin_log` VALUES (135, 'moduleid=3&file=ad&action=edit&aid=15&pid=27', 'destoon', '127.0.0.1', 1623226562);
INSERT INTO `destoon_admin_log` VALUES (136, 'file=category&action=add&mid=16&parentid=0', 'destoon', '127.0.0.1', 1623226650);
INSERT INTO `destoon_admin_log` VALUES (137, 'file=category&action=add&mid=16&parentid=5', 'destoon', '127.0.0.1', 1623226682);
INSERT INTO `destoon_admin_log` VALUES (138, 'file=category&action=add&mid=16&parentid=24', 'destoon', '127.0.0.1', 1623226773);
INSERT INTO `destoon_admin_log` VALUES (139, 'moduleid=16&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623226888);
INSERT INTO `destoon_admin_log` VALUES (140, 'moduleid=16&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623226949);
INSERT INTO `destoon_admin_log` VALUES (141, 'moduleid=16&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623226955);
INSERT INTO `destoon_admin_log` VALUES (142, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623286785);
INSERT INTO `destoon_admin_log` VALUES (143, 'moduleid=16&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623288021);
INSERT INTO `destoon_admin_log` VALUES (144, 'moduleid=16&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623288552);
INSERT INTO `destoon_admin_log` VALUES (145, 'moduleid=16&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623288559);
INSERT INTO `destoon_admin_log` VALUES (146, 'moduleid=16&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623289950);
INSERT INTO `destoon_admin_log` VALUES (147, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623290088);
INSERT INTO `destoon_admin_log` VALUES (148, 'moduleid=16&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623290637);
INSERT INTO `destoon_admin_log` VALUES (149, 'moduleid=16&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623290642);
INSERT INTO `destoon_admin_log` VALUES (150, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623290685);
INSERT INTO `destoon_admin_log` VALUES (151, 'moduleid=16&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623290690);
INSERT INTO `destoon_admin_log` VALUES (152, 'moduleid=16&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623290695);
INSERT INTO `destoon_admin_log` VALUES (153, 'moduleid=16&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623290698);
INSERT INTO `destoon_admin_log` VALUES (154, 'moduleid=16&file=index&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623290704);
INSERT INTO `destoon_admin_log` VALUES (155, 'moduleid=16&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623290709);
INSERT INTO `destoon_admin_log` VALUES (156, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623291151);
INSERT INTO `destoon_admin_log` VALUES (157, 'moduleid=8&action=add', 'destoon', '127.0.0.1', 1623291226);
INSERT INTO `destoon_admin_log` VALUES (158, 'moduleid=17&action=add', 'destoon', '127.0.0.1', 1623291235);
INSERT INTO `destoon_admin_log` VALUES (159, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623291243);
INSERT INTO `destoon_admin_log` VALUES (160, 'moduleid=5&action=add', 'destoon', '127.0.0.1', 1623291436);
INSERT INTO `destoon_admin_log` VALUES (161, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623291451);
INSERT INTO `destoon_admin_log` VALUES (162, 'file=setting', 'destoon', '127.0.0.1', 1623291671);
INSERT INTO `destoon_admin_log` VALUES (163, 'file=category&action=edit&mid=16&catid=4', 'destoon', '127.0.0.1', 1623291770);
INSERT INTO `destoon_admin_log` VALUES (164, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623294494);
INSERT INTO `destoon_admin_log` VALUES (165, 'rand=63&moduleid=16&action=add', 'destoon', '127.0.0.1', 1623294568);
INSERT INTO `destoon_admin_log` VALUES (166, 'moduleid=16&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623294620);
INSERT INTO `destoon_admin_log` VALUES (167, 'moduleid=17&action=add', 'destoon', '127.0.0.1', 1623296139);
INSERT INTO `destoon_admin_log` VALUES (168, 'file=category&mid=17&action=add&parentid=0', 'destoon', '127.0.0.1', 1623296151);
INSERT INTO `destoon_admin_log` VALUES (169, 'moduleid=16&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623296817);
INSERT INTO `destoon_admin_log` VALUES (170, 'moduleid=16&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623296842);
INSERT INTO `destoon_admin_log` VALUES (171, 'moduleid=3&file=ad&action=add&pid=26&widget=1', 'destoon', '127.0.0.1', 1623297122);
INSERT INTO `destoon_admin_log` VALUES (172, 'moduleid=3&file=ad&pid=26&action=add', 'destoon', '127.0.0.1', 1623297126);
INSERT INTO `destoon_admin_log` VALUES (173, 'moduleid=3&file=ad&action=edit&aid=8&pid=26', 'destoon', '127.0.0.1', 1623297145);
INSERT INTO `destoon_admin_log` VALUES (174, 'moduleid=3&file=ad&pid=26&action=add', 'destoon', '127.0.0.1', 1623297151);
INSERT INTO `destoon_admin_log` VALUES (175, 'rand=69&moduleid=3&file=ad&action=edit&aid=8&pid=26', 'destoon', '127.0.0.1', 1623297183);
INSERT INTO `destoon_admin_log` VALUES (176, 'moduleid=22&action=add', 'destoon', '127.0.0.1', 1623297316);
INSERT INTO `destoon_admin_log` VALUES (177, 'moduleid=13&action=add', 'destoon', '127.0.0.1', 1623297321);
INSERT INTO `destoon_admin_log` VALUES (178, 'file=category&mid=13&action=add&parentid=0', 'destoon', '127.0.0.1', 1623305942);
INSERT INTO `destoon_admin_log` VALUES (179, 'file=category&action=add&mid=13&parentid=0', 'destoon', '127.0.0.1', 1623305963);
INSERT INTO `destoon_admin_log` VALUES (180, 'moduleid=13&action=add', 'destoon', '127.0.0.1', 1623306037);
INSERT INTO `destoon_admin_log` VALUES (181, 'rand=59&moduleid=13&action=add&catid=28', 'destoon', '127.0.0.1', 1623306189);
INSERT INTO `destoon_admin_log` VALUES (182, 'moduleid=13&action=add', 'destoon', '127.0.0.1', 1623306193);
INSERT INTO `destoon_admin_log` VALUES (183, 'rand=61&moduleid=13&action=add&catid=28', 'destoon', '127.0.0.1', 1623306223);
INSERT INTO `destoon_admin_log` VALUES (184, 'moduleid=13&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623306226);
INSERT INTO `destoon_admin_log` VALUES (185, 'moduleid=13&action=add', 'destoon', '127.0.0.1', 1623306231);
INSERT INTO `destoon_admin_log` VALUES (186, 'rand=82&moduleid=13&action=add&catid=28', 'destoon', '127.0.0.1', 1623306244);
INSERT INTO `destoon_admin_log` VALUES (187, 'rand=33&moduleid=13&action=add&catid=28', 'destoon', '127.0.0.1', 1623306254);
INSERT INTO `destoon_admin_log` VALUES (188, 'moduleid=13&action=add', 'destoon', '127.0.0.1', 1623306258);
INSERT INTO `destoon_admin_log` VALUES (189, 'rand=72&moduleid=13&action=add&catid=29', 'destoon', '127.0.0.1', 1623306284);
INSERT INTO `destoon_admin_log` VALUES (190, 'moduleid=13&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623306297);
INSERT INTO `destoon_admin_log` VALUES (191, 'moduleid=13&action=add', 'destoon', '127.0.0.1', 1623306307);
INSERT INTO `destoon_admin_log` VALUES (192, 'rand=53&moduleid=13&action=add&catid=29', 'destoon', '127.0.0.1', 1623306331);
INSERT INTO `destoon_admin_log` VALUES (193, 'rand=44&moduleid=13&action=add&catid=29', 'destoon', '127.0.0.1', 1623306349);
INSERT INTO `destoon_admin_log` VALUES (194, 'moduleid=13&action=add', 'destoon', '127.0.0.1', 1623306366);
INSERT INTO `destoon_admin_log` VALUES (195, 'rand=89&moduleid=13&action=add&catid=30', 'destoon', '127.0.0.1', 1623306403);
INSERT INTO `destoon_admin_log` VALUES (196, 'moduleid=13&file=index&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623306408);
INSERT INTO `destoon_admin_log` VALUES (197, 'moduleid=13&action=add', 'destoon', '127.0.0.1', 1623307684);
INSERT INTO `destoon_admin_log` VALUES (198, 'rand=24&moduleid=13&action=add&catid=28', 'destoon', '127.0.0.1', 1623307709);
INSERT INTO `destoon_admin_log` VALUES (199, 'moduleid=22&action=add', 'destoon', '127.0.0.1', 1623307905);
INSERT INTO `destoon_admin_log` VALUES (200, 'file=category&mid=22&action=add&parentid=0', 'destoon', '127.0.0.1', 1623307938);
INSERT INTO `destoon_admin_log` VALUES (201, 'moduleid=22&action=add', 'destoon', '127.0.0.1', 1623307964);
INSERT INTO `destoon_admin_log` VALUES (202, 'rand=94&moduleid=22&action=add&catid=31', 'destoon', '127.0.0.1', 1623308090);
INSERT INTO `destoon_admin_log` VALUES (203, 'rand=73&moduleid=22&action=add&catid=31', 'destoon', '127.0.0.1', 1623308129);
INSERT INTO `destoon_admin_log` VALUES (204, 'rand=53&moduleid=22&action=add&catid=31', 'destoon', '127.0.0.1', 1623308152);
INSERT INTO `destoon_admin_log` VALUES (205, 'moduleid=13&file=index&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623308573);
INSERT INTO `destoon_admin_log` VALUES (206, 'moduleid=13&file=index&action=edit&itemid=8', 'destoon', '127.0.0.1', 1623308583);
INSERT INTO `destoon_admin_log` VALUES (207, 'moduleid=13&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623308597);
INSERT INTO `destoon_admin_log` VALUES (208, 'moduleid=13&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623308611);
INSERT INTO `destoon_admin_log` VALUES (209, 'moduleid=13&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623308621);
INSERT INTO `destoon_admin_log` VALUES (210, 'moduleid=13&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623308643);
INSERT INTO `destoon_admin_log` VALUES (211, 'moduleid=13&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623308654);
INSERT INTO `destoon_admin_log` VALUES (212, 'moduleid=3&file=ad&action=add&pid=26&widget=1', 'destoon', '127.0.0.1', 1623308724);
INSERT INTO `destoon_admin_log` VALUES (213, 'moduleid=3&file=ad&pid=26&action=add', 'destoon', '127.0.0.1', 1623308728);
INSERT INTO `destoon_admin_log` VALUES (214, 'file=category&mid=8&action=add&parentid=0', 'destoon', '127.0.0.1', 1623308938);
INSERT INTO `destoon_admin_log` VALUES (215, 'file=category&action=add&mid=8&parentid=0', 'destoon', '127.0.0.1', 1623309007);
INSERT INTO `destoon_admin_log` VALUES (216, 'moduleid=8&action=add', 'destoon', '127.0.0.1', 1623309304);
INSERT INTO `destoon_admin_log` VALUES (217, 'rand=14&moduleid=8&action=add&catid=32', 'destoon', '127.0.0.1', 1623309589);
INSERT INTO `destoon_admin_log` VALUES (218, 'moduleid=8&action=add', 'destoon', '127.0.0.1', 1623309700);
INSERT INTO `destoon_admin_log` VALUES (219, 'rand=32&moduleid=8&action=add&catid=32', 'destoon', '127.0.0.1', 1623309735);
INSERT INTO `destoon_admin_log` VALUES (220, 'moduleid=8&action=add', 'destoon', '127.0.0.1', 1623309740);
INSERT INTO `destoon_admin_log` VALUES (221, 'moduleid=8&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623309907);
INSERT INTO `destoon_admin_log` VALUES (222, 'moduleid=8&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623309937);
INSERT INTO `destoon_admin_log` VALUES (223, 'moduleid=8&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623310000);
INSERT INTO `destoon_admin_log` VALUES (224, 'moduleid=8&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623310012);
INSERT INTO `destoon_admin_log` VALUES (225, 'moduleid=8&action=add', 'destoon', '127.0.0.1', 1623310064);
INSERT INTO `destoon_admin_log` VALUES (226, 'rand=87&moduleid=8&action=add&catid=33', 'destoon', '127.0.0.1', 1623310218);
INSERT INTO `destoon_admin_log` VALUES (227, 'rand=50&moduleid=8&action=add&catid=33', 'destoon', '127.0.0.1', 1623310246);
INSERT INTO `destoon_admin_log` VALUES (228, 'moduleid=8&action=add', 'destoon', '127.0.0.1', 1623312276);
INSERT INTO `destoon_admin_log` VALUES (229, 'rand=20&moduleid=8&action=add&catid=32', 'destoon', '127.0.0.1', 1623312307);
INSERT INTO `destoon_admin_log` VALUES (230, 'moduleid=8&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623312319);
INSERT INTO `destoon_admin_log` VALUES (231, 'moduleid=8&action=add', 'destoon', '127.0.0.1', 1623312338);
INSERT INTO `destoon_admin_log` VALUES (232, 'file=category&mid=9&action=add&parentid=0', 'destoon', '127.0.0.1', 1623312892);
INSERT INTO `destoon_admin_log` VALUES (233, 'file=category&action=add&mid=9&parentid=0', 'destoon', '127.0.0.1', 1623312935);
INSERT INTO `destoon_admin_log` VALUES (234, 'moduleid=9&action=add', 'destoon', '127.0.0.1', 1623313062);
INSERT INTO `destoon_admin_log` VALUES (235, 'rand=62&moduleid=9&action=add', 'destoon', '127.0.0.1', 1623313621);
INSERT INTO `destoon_admin_log` VALUES (236, 'rand=14&moduleid=9&action=add', 'destoon', '127.0.0.1', 1623313708);
INSERT INTO `destoon_admin_log` VALUES (237, 'rand=92&moduleid=9&action=add', 'destoon', '127.0.0.1', 1623313832);
INSERT INTO `destoon_admin_log` VALUES (238, 'moduleid=9&file=index&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623314113);
INSERT INTO `destoon_admin_log` VALUES (239, 'moduleid=9&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623314272);
INSERT INTO `destoon_admin_log` VALUES (240, 'moduleid=9&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623314275);
INSERT INTO `destoon_admin_log` VALUES (241, 'moduleid=9&action=add', 'destoon', '127.0.0.1', 1623315695);
INSERT INTO `destoon_admin_log` VALUES (242, 'moduleid=9&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623315718);
INSERT INTO `destoon_admin_log` VALUES (243, 'moduleid=9&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623315850);
INSERT INTO `destoon_admin_log` VALUES (244, 'moduleid=9&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623315893);
INSERT INTO `destoon_admin_log` VALUES (245, 'file=module&action=edit&modid=9', 'destoon', '127.0.0.1', 1623316231);
INSERT INTO `destoon_admin_log` VALUES (246, 'file=module&action=add', 'destoon', '127.0.0.1', 1623316233);
INSERT INTO `destoon_admin_log` VALUES (247, 'file=module&action=edit&modid=9', 'destoon', '127.0.0.1', 1623316249);
INSERT INTO `destoon_admin_log` VALUES (248, 'file=module&action=add', 'destoon', '127.0.0.1', 1623316252);
INSERT INTO `destoon_admin_log` VALUES (249, 'file=setting', 'destoon', '127.0.0.1', 1623316262);
INSERT INTO `destoon_admin_log` VALUES (250, 'file=database&action=move', 'destoon', '127.0.0.1', 1623316406);
INSERT INTO `destoon_admin_log` VALUES (251, 'moduleid=9&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623316434);
INSERT INTO `destoon_admin_log` VALUES (252, 'moduleid=9&action=move', 'destoon', '127.0.0.1', 1623316460);
INSERT INTO `destoon_admin_log` VALUES (253, 'moduleid=9&action=add', 'destoon', '127.0.0.1', 1623316462);
INSERT INTO `destoon_admin_log` VALUES (254, 'moduleid=9&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623316466);
INSERT INTO `destoon_admin_log` VALUES (255, 'moduleid=9&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623316800);
INSERT INTO `destoon_admin_log` VALUES (256, 'moduleid=9&action=add', 'destoon', '127.0.0.1', 1623317029);
INSERT INTO `destoon_admin_log` VALUES (257, 'rand=46&moduleid=9&action=add', 'destoon', '127.0.0.1', 1623317099);
INSERT INTO `destoon_admin_log` VALUES (258, 'moduleid=9&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623317112);
INSERT INTO `destoon_admin_log` VALUES (259, 'moduleid=9&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623317298);
INSERT INTO `destoon_admin_log` VALUES (260, 'moduleid=9&action=add', 'destoon', '127.0.0.1', 1623317438);
INSERT INTO `destoon_admin_log` VALUES (261, 'rand=78&moduleid=9&action=add', 'destoon', '127.0.0.1', 1623317487);
INSERT INTO `destoon_admin_log` VALUES (262, 'moduleid=9&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623317509);
INSERT INTO `destoon_admin_log` VALUES (263, 'moduleid=9&file=index&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623317789);
INSERT INTO `destoon_admin_log` VALUES (264, 'file=category&mid=21&action=add&parentid=0', 'destoon', '127.0.0.1', 1623371423);
INSERT INTO `destoon_admin_log` VALUES (265, 'file=category&action=add&mid=21&parentid=0', 'destoon', '127.0.0.1', 1623371435);
INSERT INTO `destoon_admin_log` VALUES (266, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623371532);
INSERT INTO `destoon_admin_log` VALUES (267, 'file=category&action=add&mid=21&parentid=0', 'destoon', '127.0.0.1', 1623371547);
INSERT INTO `destoon_admin_log` VALUES (268, 'file=category&action=add&mid=21&parentid=37', 'destoon', '127.0.0.1', 1623371563);
INSERT INTO `destoon_admin_log` VALUES (269, 'file=category&action=edit&mid=21&catid=44', 'destoon', '127.0.0.1', 1623371605);
INSERT INTO `destoon_admin_log` VALUES (270, 'file=category&action=add&mid=21&parentid=37', 'destoon', '127.0.0.1', 1623371624);
INSERT INTO `destoon_admin_log` VALUES (271, 'file=category&action=edit&mid=21&catid=37', 'destoon', '127.0.0.1', 1623371629);
INSERT INTO `destoon_admin_log` VALUES (272, 'file=category&action=delete&mid=21&catid=44&parentid=37', 'destoon', '127.0.0.1', 1623371645);
INSERT INTO `destoon_admin_log` VALUES (273, 'file=category&action=add&mid=21&parentid=37', 'destoon', '127.0.0.1', 1623371646);
INSERT INTO `destoon_admin_log` VALUES (274, 'file=category&action=edit&mid=21&catid=46', 'destoon', '127.0.0.1', 1623371709);
INSERT INTO `destoon_admin_log` VALUES (275, 'file=category&action=add&mid=21&parentid=0', 'destoon', '127.0.0.1', 1623371732);
INSERT INTO `destoon_admin_log` VALUES (276, 'mid=21&file=category&action=add&parentid=37', 'destoon', '127.0.0.1', 1623371748);
INSERT INTO `destoon_admin_log` VALUES (277, 'file=category&action=add&mid=21&parentid=37', 'destoon', '127.0.0.1', 1623371764);
INSERT INTO `destoon_admin_log` VALUES (278, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623371778);
INSERT INTO `destoon_admin_log` VALUES (279, 'file=category&action=add&mid=21&parentid=37', 'destoon', '127.0.0.1', 1623371821);
INSERT INTO `destoon_admin_log` VALUES (280, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623371823);
INSERT INTO `destoon_admin_log` VALUES (281, 'rand=64&moduleid=21&action=add&catid=47', 'destoon', '127.0.0.1', 1623371996);
INSERT INTO `destoon_admin_log` VALUES (282, 'rand=45&moduleid=21&action=add&catid=47', 'destoon', '127.0.0.1', 1623372015);
INSERT INTO `destoon_admin_log` VALUES (283, 'moduleid=21&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623372022);
INSERT INTO `destoon_admin_log` VALUES (284, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623372090);
INSERT INTO `destoon_admin_log` VALUES (285, 'rand=88&moduleid=21&action=add&catid=46', 'destoon', '127.0.0.1', 1623372264);
INSERT INTO `destoon_admin_log` VALUES (286, 'rand=47&moduleid=21&action=add&catid=46', 'destoon', '127.0.0.1', 1623372287);
INSERT INTO `destoon_admin_log` VALUES (287, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623372319);
INSERT INTO `destoon_admin_log` VALUES (288, 'rand=16&moduleid=21&action=add&catid=45', 'destoon', '127.0.0.1', 1623372351);
INSERT INTO `destoon_admin_log` VALUES (289, 'rand=72&moduleid=21&action=add&catid=45', 'destoon', '127.0.0.1', 1623372376);
INSERT INTO `destoon_admin_log` VALUES (290, 'rand=13&moduleid=21&action=add&catid=48', 'destoon', '127.0.0.1', 1623372450);
INSERT INTO `destoon_admin_log` VALUES (291, 'moduleid=21&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623373133);
INSERT INTO `destoon_admin_log` VALUES (292, 'moduleid=21&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623373141);
INSERT INTO `destoon_admin_log` VALUES (293, 'moduleid=21&file=index&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623373150);
INSERT INTO `destoon_admin_log` VALUES (294, 'moduleid=21&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623373155);
INSERT INTO `destoon_admin_log` VALUES (295, 'moduleid=21&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623373159);
INSERT INTO `destoon_admin_log` VALUES (296, 'moduleid=21&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623373164);
INSERT INTO `destoon_admin_log` VALUES (297, 'moduleid=21&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623373168);
INSERT INTO `destoon_admin_log` VALUES (298, 'moduleid=21&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623373220);
INSERT INTO `destoon_admin_log` VALUES (299, 'moduleid=21&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623373256);
INSERT INTO `destoon_admin_log` VALUES (300, 'moduleid=21&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623373558);
INSERT INTO `destoon_admin_log` VALUES (301, 'moduleid=21&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623376419);
INSERT INTO `destoon_admin_log` VALUES (302, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623376835);
INSERT INTO `destoon_admin_log` VALUES (303, 'rand=82&moduleid=21&action=add&catid=40', 'destoon', '127.0.0.1', 1623376869);
INSERT INTO `destoon_admin_log` VALUES (304, 'moduleid=21&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623377179);
INSERT INTO `destoon_admin_log` VALUES (305, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623377532);
INSERT INTO `destoon_admin_log` VALUES (306, 'moduleid=17&action=add', 'destoon', '127.0.0.1', 1623377620);
INSERT INTO `destoon_admin_log` VALUES (307, 'file=category&mid=17&action=add&parentid=0', 'destoon', '127.0.0.1', 1623377622);
INSERT INTO `destoon_admin_log` VALUES (308, 'moduleid=6&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623377660);
INSERT INTO `destoon_admin_log` VALUES (309, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623377764);
INSERT INTO `destoon_admin_log` VALUES (310, 'moduleid=5&action=add', 'destoon', '127.0.0.1', 1623378470);
INSERT INTO `destoon_admin_log` VALUES (311, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623378473);
INSERT INTO `destoon_admin_log` VALUES (312, 'moduleid=6&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623378534);
INSERT INTO `destoon_admin_log` VALUES (313, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623378544);
INSERT INTO `destoon_admin_log` VALUES (314, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623378718);
INSERT INTO `destoon_admin_log` VALUES (315, 'moduleid=16&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623380795);
INSERT INTO `destoon_admin_log` VALUES (316, 'moduleid=3&file=link&action=delete&itemid=1', 'destoon', '127.0.0.1', 1623382135);
INSERT INTO `destoon_admin_log` VALUES (317, 'moduleid=3&file=link&action=add', 'destoon', '127.0.0.1', 1623382139);
INSERT INTO `destoon_admin_log` VALUES (318, 'rand=61&moduleid=3&file=link&action=add&typeid=1', 'destoon', '127.0.0.1', 1623382258);
INSERT INTO `destoon_admin_log` VALUES (319, 'rand=69&moduleid=3&file=link&action=add&typeid=2', 'destoon', '127.0.0.1', 1623382397);
INSERT INTO `destoon_admin_log` VALUES (320, 'moduleid=3&file=link&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623382406);
INSERT INTO `destoon_admin_log` VALUES (321, 'moduleid=3&file=link&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623382410);
INSERT INTO `destoon_admin_log` VALUES (322, 'moduleid=3&file=link&action=add', 'destoon', '127.0.0.1', 1623382416);
INSERT INTO `destoon_admin_log` VALUES (323, 'rand=88&moduleid=3&file=link&action=add&typeid=3', 'destoon', '127.0.0.1', 1623382441);
INSERT INTO `destoon_admin_log` VALUES (324, 'file=setting', 'destoon', '127.0.0.1', 1623392682);
INSERT INTO `destoon_admin_log` VALUES (325, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1623392709);
INSERT INTO `destoon_admin_log` VALUES (326, 'rand=44&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1623392709);
INSERT INTO `destoon_admin_log` VALUES (327, 'moduleid=3&file=setting', 'destoon', '127.0.0.1', 1623393012);
INSERT INTO `destoon_admin_log` VALUES (328, 'file=setting', 'destoon', '127.0.0.1', 1623393239);
INSERT INTO `destoon_admin_log` VALUES (329, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1623393253);
INSERT INTO `destoon_admin_log` VALUES (330, 'rand=97&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1623393253);
INSERT INTO `destoon_admin_log` VALUES (331, 'file=category&action=add&mid=16&parentid=4', 'destoon', '127.0.0.1', 1623394533);
INSERT INTO `destoon_admin_log` VALUES (332, 'file=category&action=edit&mid=16&catid=4', 'destoon', '127.0.0.1', 1623395231);
INSERT INTO `destoon_admin_log` VALUES (333, 'file=template&action=edit&fileid=list&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623395235);
INSERT INTO `destoon_admin_log` VALUES (334, 'file=category&action=edit&mid=16&catid=4', 'destoon', '127.0.0.1', 1623395252);
INSERT INTO `destoon_admin_log` VALUES (335, 'mid=16&file=category&action=edit&catid=0', 'destoon', '127.0.0.1', 1623395266);
INSERT INTO `destoon_admin_log` VALUES (336, 'moduleid=16&file=setting', 'destoon', '127.0.0.1', 1623396182);
INSERT INTO `destoon_admin_log` VALUES (337, 'file=template&action=edit&fileid=list&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623396187);
INSERT INTO `destoon_admin_log` VALUES (338, 'file=template&action=add&dir=bussness', 'destoon', '127.0.0.1', 1623396240);
INSERT INTO `destoon_admin_log` VALUES (339, 'file=template&action=add&dir=mall', 'destoon', '127.0.0.1', 1623396276);
INSERT INTO `destoon_admin_log` VALUES (340, 'file=template&action=delete&fileid=bussness&dir=mall', 'destoon', '127.0.0.1', 1623396442);
INSERT INTO `destoon_admin_log` VALUES (341, 'file=template&action=add&dir=mall', 'destoon', '127.0.0.1', 1623396458);
INSERT INTO `destoon_admin_log` VALUES (342, 'file=template&action=add&dir=', 'destoon', '127.0.0.1', 1623396495);
INSERT INTO `destoon_admin_log` VALUES (343, 'file=template&action=add&dir=mall', 'destoon', '127.0.0.1', 1623396500);
INSERT INTO `destoon_admin_log` VALUES (344, 'file=template&action=add&dir=', 'destoon', '127.0.0.1', 1623396524);
INSERT INTO `destoon_admin_log` VALUES (345, 'file=template&action=delete&fileid=bussness&dir=', 'destoon', '127.0.0.1', 1623396600);
INSERT INTO `destoon_admin_log` VALUES (346, 'file=template&action=edit&fileid=index&dir=', 'destoon', '127.0.0.1', 1623396613);
INSERT INTO `destoon_admin_log` VALUES (347, 'moduleid=16&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623396792);
INSERT INTO `destoon_admin_log` VALUES (348, 'file=template&action=edit&fileid=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623396801);
INSERT INTO `destoon_admin_log` VALUES (349, 'file=template&action=add&dir=mall', 'destoon', '127.0.0.1', 1623396835);
INSERT INTO `destoon_admin_log` VALUES (350, 'file=template&action=add&type=comment&dir=mall', 'destoon', '127.0.0.1', 1623396900);
INSERT INTO `destoon_admin_log` VALUES (351, 'moduleid=3&file=webpage&action=edit&itemid=1&item=1', 'destoon', '127.0.0.1', 1623397419);
INSERT INTO `destoon_admin_log` VALUES (352, 'moduleid=3&file=webpage&item=1&action=add', 'destoon', '127.0.0.1', 1623397431);
INSERT INTO `destoon_admin_log` VALUES (353, 'file=template&action=add&dir=mall', 'destoon', '127.0.0.1', 1623399406);
INSERT INTO `destoon_admin_log` VALUES (354, 'file=template&action=edit&fileid=bussness&dir=mall', 'destoon', '127.0.0.1', 1623399436);
INSERT INTO `destoon_admin_log` VALUES (355, 'moduleid=3&file=ad&action=edit&aid=9&pid=27', 'destoon', '127.0.0.1', 1623400973);
INSERT INTO `destoon_admin_log` VALUES (356, 'moduleid=3&file=ad&action=add&pid=28&widget=1', 'destoon', '127.0.0.1', 1623405511);
INSERT INTO `destoon_admin_log` VALUES (357, 'moduleid=3&file=ad&pid=28&action=add', 'destoon', '127.0.0.1', 1623405668);
INSERT INTO `destoon_admin_log` VALUES (358, 'file=setting', 'destoon', '127.0.0.1', 1623716637);
INSERT INTO `destoon_admin_log` VALUES (359, 'moduleid=3&file=ad&action=add&pid=28&widget=1', 'destoon', '127.0.0.1', 1623717344);
INSERT INTO `destoon_admin_log` VALUES (360, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623720066);
INSERT INTO `destoon_admin_log` VALUES (361, 'moduleid=3&file=ad&action=add&pid=28&widget=1', 'destoon', '127.0.0.1', 1623720259);
INSERT INTO `destoon_admin_log` VALUES (362, 'moduleid=3&file=ad&action=edit&aid=18&pid=28', 'destoon', '127.0.0.1', 1623720264);
INSERT INTO `destoon_admin_log` VALUES (363, 'moduleid=3&file=ad&pid=28&action=add', 'destoon', '127.0.0.1', 1623720311);
INSERT INTO `destoon_admin_log` VALUES (364, 'moduleid=3&file=ad&action=add&pid=26&widget=1', 'destoon', '127.0.0.1', 1623720908);
INSERT INTO `destoon_admin_log` VALUES (365, 'moduleid=3&file=ad&action=add&pid=28&widget=1', 'destoon', '127.0.0.1', 1623720951);
INSERT INTO `destoon_admin_log` VALUES (366, 'moduleid=3&file=ad&pid=28&action=add', 'destoon', '127.0.0.1', 1623720956);
INSERT INTO `destoon_admin_log` VALUES (367, 'moduleid=3&file=ad&action=add&pid=28&widget=1', 'destoon', '127.0.0.1', 1623720982);
INSERT INTO `destoon_admin_log` VALUES (368, 'moduleid=3&file=ad&action=add&pid=26&widget=1', 'destoon', '127.0.0.1', 1623720990);
INSERT INTO `destoon_admin_log` VALUES (369, 'moduleid=3&file=ad&pid=26&action=add', 'destoon', '127.0.0.1', 1623721002);
INSERT INTO `destoon_admin_log` VALUES (370, 'moduleid=3&file=ad&action=edit&aid=21&pid=26', 'destoon', '127.0.0.1', 1623721126);
INSERT INTO `destoon_admin_log` VALUES (371, 'moduleid=3&file=ad&action=add&pid=27&widget=1', 'destoon', '127.0.0.1', 1623726736);
INSERT INTO `destoon_admin_log` VALUES (372, 'moduleid=3&file=ad&action=edit&aid=14&pid=27', 'destoon', '127.0.0.1', 1623726744);
INSERT INTO `destoon_admin_log` VALUES (373, 'moduleid=3&file=ad&action=edit&aid=9&pid=27', 'destoon', '127.0.0.1', 1623726750);
INSERT INTO `destoon_admin_log` VALUES (374, 'moduleid=3&file=ad&action=add&pid=27&widget=1', 'destoon', '127.0.0.1', 1623726769);
INSERT INTO `destoon_admin_log` VALUES (375, 'moduleid=3&file=ad&action=edit&aid=10&pid=27', 'destoon', '127.0.0.1', 1623726776);
INSERT INTO `destoon_admin_log` VALUES (376, 'file=module&action=edit&modid=16', 'destoon', '127.0.0.1', 1623742218);
INSERT INTO `destoon_admin_log` VALUES (377, 'moduleid=16&file=setting&widget=1', 'destoon', '127.0.0.1', 1623742227);
INSERT INTO `destoon_admin_log` VALUES (378, 'file=template&action=edit&fileid=list&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742233);
INSERT INTO `destoon_admin_log` VALUES (379, 'file=template&action=edit&fileid=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742242);
INSERT INTO `destoon_admin_log` VALUES (380, 'rand=97&file=template&action=edit&fileid=product&dir=mall', 'destoon', '127.0.0.1', 1623742259);
INSERT INTO `destoon_admin_log` VALUES (381, 'file=template&action=add&type=list&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742388);
INSERT INTO `destoon_admin_log` VALUES (382, 'file=template&action=add&dir=', 'destoon', '127.0.0.1', 1623742395);
INSERT INTO `destoon_admin_log` VALUES (383, 'file=template&action=add&type=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742402);
INSERT INTO `destoon_admin_log` VALUES (384, 'file=template&action=edit&fileid=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742521);
INSERT INTO `destoon_admin_log` VALUES (385, 'moduleid=16&file=setting&widget=1', 'destoon', '127.0.0.1', 1623742546);
INSERT INTO `destoon_admin_log` VALUES (386, 'file=template&action=edit&fileid=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742548);
INSERT INTO `destoon_admin_log` VALUES (387, 'rand=33&file=template&action=edit&fileid=product&dir=mall', 'destoon', '127.0.0.1', 1623742582);
INSERT INTO `destoon_admin_log` VALUES (388, 'file=template&action=edit&fileid=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742617);
INSERT INTO `destoon_admin_log` VALUES (389, 'file=template&action=add&type=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742625);
INSERT INTO `destoon_admin_log` VALUES (390, 'file=template&action=add&dir=mall', 'destoon', '127.0.0.1', 1623742643);
INSERT INTO `destoon_admin_log` VALUES (391, 'file=template&action=edit&fileid=product&dir=mall', 'destoon', '127.0.0.1', 1623742675);
INSERT INTO `destoon_admin_log` VALUES (392, 'moduleid=16&file=setting&widget=1', 'destoon', '127.0.0.1', 1623742686);
INSERT INTO `destoon_admin_log` VALUES (393, 'file=template&action=edit&fileid=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742702);
INSERT INTO `destoon_admin_log` VALUES (394, 'file=template&action=add&dir=mall', 'destoon', '127.0.0.1', 1623742710);
INSERT INTO `destoon_admin_log` VALUES (395, 'file=template&action=add&type=show&dir=mall&widget=1', 'destoon', '127.0.0.1', 1623742912);
INSERT INTO `destoon_admin_log` VALUES (396, 'file=template&action=edit&fileid=product&dir=mall', 'destoon', '127.0.0.1', 1623742952);
INSERT INTO `destoon_admin_log` VALUES (397, 'rand=88&file=template&action=edit&fileid=show&dir=mall', 'destoon', '127.0.0.1', 1623742972);
INSERT INTO `destoon_admin_log` VALUES (398, 'moduleid=16&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623743191);
INSERT INTO `destoon_admin_log` VALUES (399, 'moduleid=16&file=index&action=edit&itemid=6', 'destoon', '127.0.0.1', 1623743603);
INSERT INTO `destoon_admin_log` VALUES (400, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623747441);
INSERT INTO `destoon_admin_log` VALUES (401, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623747465);
INSERT INTO `destoon_admin_log` VALUES (402, 'moduleid=8&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623750788);
INSERT INTO `destoon_admin_log` VALUES (403, 'moduleid=8&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623805024);
INSERT INTO `destoon_admin_log` VALUES (404, 'moduleid=8&file=index&action=edit&itemid=3', 'destoon', '127.0.0.1', 1623805031);
INSERT INTO `destoon_admin_log` VALUES (405, 'moduleid=8&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623805429);
INSERT INTO `destoon_admin_log` VALUES (406, 'moduleid=8&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623805957);
INSERT INTO `destoon_admin_log` VALUES (407, 'moduleid=21&file=index&action=edit&itemid=8', 'destoon', '127.0.0.1', 1623809577);
INSERT INTO `destoon_admin_log` VALUES (408, 'moduleid=21&file=setting&widget=1', 'destoon', '127.0.0.1', 1623809590);
INSERT INTO `destoon_admin_log` VALUES (409, 'file=module&action=edit&modid=21', 'destoon', '127.0.0.1', 1623809610);
INSERT INTO `destoon_admin_log` VALUES (410, 'moduleid=21&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623810996);
INSERT INTO `destoon_admin_log` VALUES (411, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623811065);
INSERT INTO `destoon_admin_log` VALUES (412, 'rand=71&moduleid=21&action=add&catid=41', 'destoon', '127.0.0.1', 1623811155);
INSERT INTO `destoon_admin_log` VALUES (413, 'moduleid=21&file=index&action=edit&itemid=9', 'destoon', '127.0.0.1', 1623811190);
INSERT INTO `destoon_admin_log` VALUES (414, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623812551);
INSERT INTO `destoon_admin_log` VALUES (415, 'rand=86&moduleid=21&action=add&catid=41', 'destoon', '127.0.0.1', 1623812582);
INSERT INTO `destoon_admin_log` VALUES (416, 'moduleid=21&file=index&action=edit&itemid=10', 'destoon', '127.0.0.1', 1623812804);
INSERT INTO `destoon_admin_log` VALUES (417, 'moduleid=21&action=add', 'destoon', '127.0.0.1', 1623812859);
INSERT INTO `destoon_admin_log` VALUES (418, 'rand=27&moduleid=21&action=add&catid=41', 'destoon', '127.0.0.1', 1623812937);
INSERT INTO `destoon_admin_log` VALUES (419, 'moduleid=21&file=index&action=edit&itemid=11', 'destoon', '127.0.0.1', 1623812979);
INSERT INTO `destoon_admin_log` VALUES (420, 'moduleid=21&file=index&action=edit&itemid=11', 'destoon', '127.0.0.1', 1623824468);
INSERT INTO `destoon_admin_log` VALUES (421, 'moduleid=21&file=index&action=edit&itemid=10', 'destoon', '127.0.0.1', 1623824618);
INSERT INTO `destoon_admin_log` VALUES (422, 'moduleid=21&file=index&action=edit&itemid=11', 'destoon', '127.0.0.1', 1623827541);
INSERT INTO `destoon_admin_log` VALUES (423, 'moduleid=21&file=index&action=edit&itemid=8', 'destoon', '127.0.0.1', 1623828649);
INSERT INTO `destoon_admin_log` VALUES (424, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623834317);
INSERT INTO `destoon_admin_log` VALUES (425, 'moduleid=5&action=add', 'destoon', '127.0.0.1', 1623835206);
INSERT INTO `destoon_admin_log` VALUES (426, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623835361);
INSERT INTO `destoon_admin_log` VALUES (427, 'moduleid=6&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623888198);
INSERT INTO `destoon_admin_log` VALUES (428, 'moduleid=2&action=edit&userid=1', 'destoon', '127.0.0.1', 1623888708);
INSERT INTO `destoon_admin_log` VALUES (429, 'moduleid=2&action=edit&userid=1', 'destoon', '127.0.0.1', 1623890192);
INSERT INTO `destoon_admin_log` VALUES (430, 'moduleid=2&action=edit&userid=2', 'destoon', '127.0.0.1', 1623890866);
INSERT INTO `destoon_admin_log` VALUES (431, 'moduleid=16&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623895478);
INSERT INTO `destoon_admin_log` VALUES (432, 'moduleid=2&action=edit&userid=2', 'destoon', '127.0.0.1', 1623896376);
INSERT INTO `destoon_admin_log` VALUES (433, 'moduleid=2&file=news&action=add', 'destoon', '127.0.0.1', 1623896555);
INSERT INTO `destoon_admin_log` VALUES (434, 'file=setting', 'destoon', '127.0.0.1', 1623910380);
INSERT INTO `destoon_admin_log` VALUES (435, 'moduleid=22&file=setting&widget=1', 'destoon', '127.0.0.1', 1623913271);
INSERT INTO `destoon_admin_log` VALUES (436, 'moduleid=2&action=edit&userid=1', 'destoon', '127.0.0.1', 1623917618);
INSERT INTO `destoon_admin_log` VALUES (437, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623920115);
INSERT INTO `destoon_admin_log` VALUES (438, 'file=setting', 'destoon', '127.0.0.1', 1623920456);
INSERT INTO `destoon_admin_log` VALUES (439, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623920583);
INSERT INTO `destoon_admin_log` VALUES (440, 'moduleid=16&file=index&action=edit&itemid=8', 'destoon', '127.0.0.1', 1623921025);
INSERT INTO `destoon_admin_log` VALUES (441, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623921095);
INSERT INTO `destoon_admin_log` VALUES (442, 'moduleid=16&file=index&action=edit&itemid=8', 'destoon', '127.0.0.1', 1623921097);
INSERT INTO `destoon_admin_log` VALUES (443, 'moduleid=16&file=index&action=edit&itemid=9', 'destoon', '127.0.0.1', 1623921758);
INSERT INTO `destoon_admin_log` VALUES (444, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623921800);
INSERT INTO `destoon_admin_log` VALUES (445, 'moduleid=16&file=index&action=edit&itemid=9', 'destoon', '127.0.0.1', 1623921804);
INSERT INTO `destoon_admin_log` VALUES (446, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623922029);
INSERT INTO `destoon_admin_log` VALUES (447, 'moduleid=16&file=index&action=edit&itemid=9', 'destoon', '127.0.0.1', 1623922057);
INSERT INTO `destoon_admin_log` VALUES (448, 'moduleid=4&file=vip&action=add', 'destoon', '127.0.0.1', 1623923030);
INSERT INTO `destoon_admin_log` VALUES (449, 'moduleid=2&action=edit&userid=1', 'destoon', '127.0.0.1', 1623923093);
INSERT INTO `destoon_admin_log` VALUES (450, 'moduleid=4&file=vip&action=add', 'destoon', '127.0.0.1', 1623923103);
INSERT INTO `destoon_admin_log` VALUES (451, 'file=module&action=edit&modid=16', 'destoon', '127.0.0.1', 1623982983);
INSERT INTO `destoon_admin_log` VALUES (452, 'file=module&action=edit&modid=5', 'destoon', '127.0.0.1', 1623983014);
INSERT INTO `destoon_admin_log` VALUES (453, 'file=module&action=edit&modid=6', 'destoon', '127.0.0.1', 1623983032);
INSERT INTO `destoon_admin_log` VALUES (454, 'file=module&action=edit&modid=17', 'destoon', '127.0.0.1', 1623983660);
INSERT INTO `destoon_admin_log` VALUES (455, 'file=module&action=edit&modid=8', 'destoon', '127.0.0.1', 1623983706);
INSERT INTO `destoon_admin_log` VALUES (456, 'file=module&action=edit&modid=21', 'destoon', '127.0.0.1', 1623983714);
INSERT INTO `destoon_admin_log` VALUES (457, 'file=module&action=edit&modid=22', 'destoon', '127.0.0.1', 1623983742);
INSERT INTO `destoon_admin_log` VALUES (458, 'file=module&action=edit&modid=13', 'destoon', '127.0.0.1', 1623983754);
INSERT INTO `destoon_admin_log` VALUES (459, 'file=module&action=edit&modid=22', 'destoon', '127.0.0.1', 1623983771);
INSERT INTO `destoon_admin_log` VALUES (460, 'moduleid=3&file=webpage&action=edit&itemid=1&item=1', 'destoon', '127.0.0.1', 1623984820);
INSERT INTO `destoon_admin_log` VALUES (461, 'moduleid=3&file=webpage&action=edit&itemid=2&item=1', 'destoon', '127.0.0.1', 1623984839);
INSERT INTO `destoon_admin_log` VALUES (462, 'file=setting', 'destoon', '127.0.0.1', 1623985345);
INSERT INTO `destoon_admin_log` VALUES (463, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1623985453);
INSERT INTO `destoon_admin_log` VALUES (464, 'rand=33&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1623985453);
INSERT INTO `destoon_admin_log` VALUES (465, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1623985502);
INSERT INTO `destoon_admin_log` VALUES (466, 'rand=62&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1623985502);
INSERT INTO `destoon_admin_log` VALUES (467, 'moduleid=2&file=setting', 'destoon', '127.0.0.1', 1623986478);
INSERT INTO `destoon_admin_log` VALUES (468, 'file=setting', 'destoon', '127.0.0.1', 1623986493);
INSERT INTO `destoon_admin_log` VALUES (469, 'moduleid=2&file=setting', 'destoon', '127.0.0.1', 1623986505);
INSERT INTO `destoon_admin_log` VALUES (470, 'file=setting', 'destoon', '127.0.0.1', 1623986523);
INSERT INTO `destoon_admin_log` VALUES (471, 'moduleid=2&action=edit&userid=1', 'destoon', '127.0.0.1', 1623986530);
INSERT INTO `destoon_admin_log` VALUES (472, 'moduleid=16&action=add', 'destoon', '127.0.0.1', 1623987463);
INSERT INTO `destoon_admin_log` VALUES (473, 'moduleid=16&file=setting', 'destoon', '127.0.0.1', 1623987911);
INSERT INTO `destoon_admin_log` VALUES (474, 'moduleid=5&action=add', 'destoon', '127.0.0.1', 1623987913);
INSERT INTO `destoon_admin_log` VALUES (475, 'moduleid=5&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623987919);
INSERT INTO `destoon_admin_log` VALUES (476, 'moduleid=6&action=add', 'destoon', '127.0.0.1', 1623988226);
INSERT INTO `destoon_admin_log` VALUES (477, 'moduleid=16&file=index&action=edit&itemid=9', 'destoon', '127.0.0.1', 1623988356);
INSERT INTO `destoon_admin_log` VALUES (478, 'moduleid=8&action=add', 'destoon', '127.0.0.1', 1623988726);
INSERT INTO `destoon_admin_log` VALUES (479, 'moduleid=8&file=index&action=edit&itemid=5', 'destoon', '127.0.0.1', 1623988728);
INSERT INTO `destoon_admin_log` VALUES (480, 'moduleid=9&file=index&action=edit&itemid=1', 'destoon', '127.0.0.1', 1623998066);
INSERT INTO `destoon_admin_log` VALUES (481, 'moduleid=9&action=move', 'destoon', '127.0.0.1', 1623998354);
INSERT INTO `destoon_admin_log` VALUES (482, 'moduleid=9&action=add', 'destoon', '127.0.0.1', 1623998360);
INSERT INTO `destoon_admin_log` VALUES (483, 'moduleid=9&action=move', 'destoon', '127.0.0.1', 1623998409);
INSERT INTO `destoon_admin_log` VALUES (484, 'moduleid=21&file=index&action=edit&itemid=2', 'destoon', '127.0.0.1', 1623999802);
INSERT INTO `destoon_admin_log` VALUES (485, 'moduleid=21&file=index&action=edit&itemid=4', 'destoon', '127.0.0.1', 1623999823);
INSERT INTO `destoon_admin_log` VALUES (486, 'moduleid=21&file=index&action=edit&itemid=7', 'destoon', '127.0.0.1', 1623999839);
INSERT INTO `destoon_admin_log` VALUES (487, 'file=setting', 'destoon', '127.0.0.1', 1624001643);
INSERT INTO `destoon_admin_log` VALUES (488, 'moduleid=3&file=ad&action=edit&aid=18&pid=28', 'destoon', '127.0.0.1', 1624003090);
INSERT INTO `destoon_admin_log` VALUES (489, 'moduleid=3&file=ad&pid=0&action=add', 'destoon', '127.0.0.1', 1624003115);
INSERT INTO `destoon_admin_log` VALUES (490, 'moduleid=3&file=ad&action=edit&aid=19&pid=28', 'destoon', '127.0.0.1', 1624003129);
INSERT INTO `destoon_admin_log` VALUES (491, 'moduleid=3&file=ad&action=edit&aid=20&pid=28', 'destoon', '127.0.0.1', 1624003146);
INSERT INTO `destoon_admin_log` VALUES (492, 'moduleid=3&file=ad&action=edit&aid=18&pid=28', 'destoon', '127.0.0.1', 1624003199);
INSERT INTO `destoon_admin_log` VALUES (493, 'moduleid=3&file=ad&action=edit&aid=9&pid=27', 'destoon', '127.0.0.1', 1624003222);
INSERT INTO `destoon_admin_log` VALUES (494, 'moduleid=3&file=ad&action=edit&aid=12&pid=27', 'destoon', '127.0.0.1', 1624003240);
INSERT INTO `destoon_admin_log` VALUES (495, 'moduleid=3&file=ad&action=edit&aid=14&pid=27', 'destoon', '127.0.0.1', 1624003266);
INSERT INTO `destoon_admin_log` VALUES (496, 'moduleid=3&file=ad&action=edit&aid=10&pid=27', 'destoon', '127.0.0.1', 1624003271);
INSERT INTO `destoon_admin_log` VALUES (497, 'moduleid=3&file=ad&action=edit&aid=12&pid=27', 'destoon', '127.0.0.1', 1624003277);
INSERT INTO `destoon_admin_log` VALUES (498, 'moduleid=3&file=ad&action=edit&aid=8&pid=26', 'destoon', '127.0.0.1', 1624003288);
INSERT INTO `destoon_admin_log` VALUES (499, 'moduleid=3&file=ad&action=edit&aid=21&pid=26', 'destoon', '127.0.0.1', 1624003343);
INSERT INTO `destoon_admin_log` VALUES (500, 'file=setting', 'destoon', '127.0.0.1', 1624009487);
INSERT INTO `destoon_admin_log` VALUES (501, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1624009725);
INSERT INTO `destoon_admin_log` VALUES (502, 'rand=72&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1624009725);
INSERT INTO `destoon_admin_log` VALUES (503, 'file=setting', 'destoon', '127.0.0.1', 1624009760);
INSERT INTO `destoon_admin_log` VALUES (504, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1624009784);
INSERT INTO `destoon_admin_log` VALUES (505, 'rand=79&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1624009784);
INSERT INTO `destoon_admin_log` VALUES (506, 'file=setting', 'destoon', '127.0.0.1', 1624010214);
INSERT INTO `destoon_admin_log` VALUES (507, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1624010288);
INSERT INTO `destoon_admin_log` VALUES (508, 'rand=24&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1624010288);
INSERT INTO `destoon_admin_log` VALUES (509, 'file=setting', 'destoon', '127.0.0.1', 1624011090);
INSERT INTO `destoon_admin_log` VALUES (510, 'file=setting', 'destoon', '127.0.0.1', 1624011165);
INSERT INTO `destoon_admin_log` VALUES (511, 'file=setting', 'destoon', '127.0.0.1', 1624061377);
INSERT INTO `destoon_admin_log` VALUES (512, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '127.0.0.1', 1624061390);
INSERT INTO `destoon_admin_log` VALUES (513, 'rand=61&moduleid=1&file=setting&tab=0', 'destoon', '127.0.0.1', 1624061390);
INSERT INTO `destoon_admin_log` VALUES (514, 'file=setting', 'destoon', '127.0.0.1', 1624061531);
INSERT INTO `destoon_admin_log` VALUES (515, 'file=setting', 'destoon', '127.0.0.1', 1624061623);
INSERT INTO `destoon_admin_log` VALUES (516, 'file=setting', 'destoon', '1.199.119.251', 1624062887);
INSERT INTO `destoon_admin_log` VALUES (517, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '1.199.119.251', 1624062912);
INSERT INTO `destoon_admin_log` VALUES (518, 'rand=70&moduleid=1&file=setting&tab=0', 'destoon', '1.199.119.251', 1624062913);
INSERT INTO `destoon_admin_log` VALUES (519, 'file=setting', 'destoon', '1.199.119.251', 1624062916);
INSERT INTO `destoon_admin_log` VALUES (520, 'file=setting', 'destoon', '1.199.119.251', 1624063700);
INSERT INTO `destoon_admin_log` VALUES (521, 'moduleid=1&file=setting&action=html&tab=0', 'destoon', '1.199.119.251', 1624063715);
INSERT INTO `destoon_admin_log` VALUES (522, 'rand=77&moduleid=1&file=setting&tab=0', 'destoon', '1.199.119.251', 1624063715);
INSERT INTO `destoon_admin_log` VALUES (523, 'file=setting', 'destoon', '1.199.119.251', 1624064704);
INSERT INTO `destoon_admin_log` VALUES (524, 'moduleid=16&file=setting', 'destoon', '1.199.119.251', 1624067476);
INSERT INTO `destoon_admin_log` VALUES (525, 'moduleid=3&file=guestbook&action=edit&itemid=1', 'destoon', '1.199.119.251', 1624068395);
INSERT INTO `destoon_admin_log` VALUES (526, 'moduleid=3&file=setting&action=guestbook&widget=1', 'destoon', '1.199.119.251', 1624068782);

-- ----------------------------
-- Table structure for destoon_admin_online
-- ----------------------------
DROP TABLE IF EXISTS `destoon_admin_online`;
CREATE TABLE `destoon_admin_online`  (
  `sid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `moduleid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `qstring` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `sid`(`sid`) USING HASH
) ENGINE = MEMORY CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线管理员' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of destoon_admin_online
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_alert
-- ----------------------------
DROP TABLE IF EXISTS `destoon_alert`;
CREATE TABLE `destoon_alert`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `word` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `rate` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sendtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '贸易提醒' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_alert
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_announce
-- ----------------------------
DROP TABLE IF EXISTS `destoon_announce`;
CREATE TABLE `destoon_announce`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_announce
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_area
-- ----------------------------
DROP TABLE IF EXISTS `destoon_area`;
CREATE TABLE `destoon_area`  (
  `areaid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `areaname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arrparentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `child` tinyint(1) NOT NULL DEFAULT 0,
  `arrchildid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`areaid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_area
-- ----------------------------
INSERT INTO `destoon_area` VALUES (1, '默认地区', 0, '0', 0, '1', 1);

-- ----------------------------
-- Table structure for destoon_article_21
-- ----------------------------
DROP TABLE IF EXISTS `destoon_article_21`;
CREATE TABLE `destoon_article_21`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `subtitle` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `copyfrom` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fromurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `voteid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_article_21
-- ----------------------------
INSERT INTO `destoon_article_21` VALUES (1, 47, 0, 1, '中企电子喜迎年中庆典', '', 0, '', '中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典', '', '中企电子喜迎年中庆典,资讯头条,资讯幻灯片推荐', '', '', '', '', '', 2, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/090103331.png', 'destoon', 1623371823, 'destoon', 1623373265, '127.0.0.1', '', 3, 0, 'show.php?itemid=1', '', '');
INSERT INTO `destoon_article_21` VALUES (2, 47, 0, 1, '2021河南中企喜迎新乡两会举办成功', '', 0, '', '中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典', '', '2021河南中企喜迎新乡两会举办成功,资讯头条,资讯幻灯片推荐', '', '', '', '', '', 3, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/090029271.png', 'destoon', 1623371996, 'destoon', 1623373232, '127.0.0.1', '', 3, 0, 'show.php?itemid=2', '', '');
INSERT INTO `destoon_article_21` VALUES (3, 46, 0, 1, '企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜', '', 0, '', '企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜', '', '企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜,资讯头条,企业管理', '', '', '', '', '', 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084412271.png', 'destoon', 1623372090, 'destoon', 1623373153, '127.0.0.1', '', 3, 0, 'show.php?itemid=3', '', '');
INSERT INTO `destoon_article_21` VALUES (4, 46, 0, 1, '企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜', '', 0, '', '企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜', '', '企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜,资讯头条,企业管理', '', '', '', '', '', 11, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084439461.png', 'destoon', 1623372264, 'destoon', 1623373158, '127.0.0.1', '', 3, 0, 'show.php?itemid=4', '', '');
INSERT INTO `destoon_article_21` VALUES (5, 45, 0, 1, '2021河南中企喜迎新乡两会举办成功', '', 0, '', '2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功', '', '2021河南中企喜迎新乡两会举办成功,资讯头条,推荐主题', '', '', '', '', '', 7, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084535531.jpg', 'destoon', 1623372319, 'destoon', 1623373163, '127.0.0.1', '', 3, 0, 'show.php?itemid=5', '', '');
INSERT INTO `destoon_article_21` VALUES (6, 45, 0, 1, '2021河南中企喜迎新乡两会举办成功4', '', 0, '', '2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功', '', '2021河南中企喜迎新乡两会举办成功4,资讯头条,推荐主题', '', '', '', '', '', 4, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084610261.jpg', 'destoon', 1623372351, 'destoon', 1623376423, '127.0.0.1', '', 3, 0, 'show.php?itemid=6', '', '');
INSERT INTO `destoon_article_21` VALUES (7, 48, 0, 1, '中企最佳红领巾评选', '', 0, '', '中企最佳红领巾评选中企最佳红领巾评选中企最佳红领巾评选', '企业视频', '中企最佳红领巾评选,企业视频,资讯头条,微视频', '', '', '', '', '', 5, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084715321.png', 'destoon', 1623372376, 'destoon', 1623377194, '127.0.0.1', '', 3, 0, 'show.php?itemid=7', '', '');
INSERT INTO `destoon_article_21` VALUES (8, 40, 0, 1, '央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式', '', 0, '', '央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式', '', '央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式,生活理财', '', '', '', '', '', 5, 0, '', 'destoon', 1623376835, 'destoon', 1623828653, '127.0.0.1', '', 3, 0, 'show.php?itemid=8', '', '');
INSERT INTO `destoon_article_21` VALUES (9, 41, 0, 4, '企业家为什么要做创业人物访谈节目？', '', 0, '', '企业家为什么要做创业人物访谈节目？创业人物访谈节目《聚焦品牌》是以演播厅一对一专访形式呈现，央视主持人与企业创始人面对面', '', '企业家为什么要做创业人物访谈节目？,人物访谈', '', '', '', '', '', 3, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/16/103912581.jpeg', 'destoon', 1623811065, 'destoon', 1623811365, '127.0.0.1', '', 3, 0, 'show.php?itemid=9', '', '');
INSERT INTO `destoon_article_21` VALUES (10, 41, 0, 5, '公司人物访谈 人物专访', '', 0, '', '公司人物访谈 人物专访本期公司人物访谈 人物专访节目：快递分拣机器人本期公司人物访谈 人物专访主题：黄帽子、黑西装，灵活工', '', '公司人物访谈 人物专访,人物访谈', '', '', '', '', '', 33, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/16/110300771.jpeg', 'destoon', 1623812551, 'destoon', 1623827533, '127.0.0.1', '', 3, 0, 'show.php?itemid=10', '', '');
INSERT INTO `destoon_article_21` VALUES (11, 41, 0, 3, '创业的“721”法则：过来人的经验，尽量减少自己的垃圾时间', '', 0, '', '有些事都是后来才明白过来的，创业为什么要学习呢，就是为了早点明白过来，就算是该犯错的依然犯错，该掉坑的依然是掉进坑里，但', '', '创业的“721”法则：过来人的经验，尽量减少自己的垃圾时间,人物访谈', '', '', '新华网', '', '', 11, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/16/110948671.jpeg', 'destoon', 1623812859, 'destoon', 1623827638, '127.0.0.1', '', 3, 0, 'show.php?itemid=11', '', '');

-- ----------------------------
-- Table structure for destoon_article_data_21
-- ----------------------------
DROP TABLE IF EXISTS `destoon_article_data_21`;
CREATE TABLE `destoon_article_data_21`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资讯内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_article_data_21
-- ----------------------------
INSERT INTO `destoon_article_data_21` VALUES (1, '&nbsp;中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典&nbsp;中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典&nbsp;中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典');
INSERT INTO `destoon_article_data_21` VALUES (2, '&nbsp;&nbsp;中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典&nbsp;中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典&nbsp;中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典中企电子喜迎年中庆典');
INSERT INTO `destoon_article_data_21` VALUES (3, '&nbsp;企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜');
INSERT INTO `destoon_article_data_21` VALUES (4, '&nbsp;企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜企业管理反垄断奥迪或被罚上亿元 12家日系企业新上榜');
INSERT INTO `destoon_article_data_21` VALUES (5, '&nbsp;2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功&nbsp;2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功&nbsp;2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功');
INSERT INTO `destoon_article_data_21` VALUES (6, '&nbsp;&nbsp;2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功&nbsp;2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功');
INSERT INTO `destoon_article_data_21` VALUES (7, '&nbsp;中企最佳红领巾评选中企最佳红领巾评选中企最佳红领巾评选');
INSERT INTO `destoon_article_data_21` VALUES (8, '&nbsp;央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式央行副行长刘桂平：碳达峰不等于冲高点，而是要尽快调整生产方式和生活方式');
INSERT INTO `destoon_article_data_21` VALUES (9, '&nbsp;<span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">企业家为什么要做创业人物访谈节目？</span>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\">&nbsp;</p>\r\n</div>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\">&nbsp;</p>\r\n<p class=\"MsoListParagraph\" data-from-paste=\"1\" style=\"margin: 0px 0px 0px 24px; padding: 0px; max-width: 100%; line-height: 24px; text-indent: 0px;\"><span data-from-paste=\"1\" data-diagnose-id=\"0013dca7709e8746387225c92ec8a520\" style=\"max-width: 100%;\">创业人物访谈节目《聚焦品牌》是以演播厅一对一专访形式呈现，央视主持人与企业创始人面对面对话访谈；讲述企业发展历程、文化理念、产品展示、远景规划等，到企业现场拍摄，演播厅访谈加企业实拍合二为一。对于企业品牌宣传有非常大的帮助。</span></p>\r\n</div>');
INSERT INTO `destoon_article_data_21` VALUES (10, '&nbsp;<span style=\"text-indent: 2em; color: rgb(51, 51, 51); font-family: arial; font-size: 16px;\">公司人物访谈 人物专访</span>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\"><span style=\"text-indent: 2em;\">本期公司人物访谈 人物专访节目：快递分拣机器人</span></p>\r\n</div>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\">&nbsp;<span style=\"text-indent: 2em;\">本期公司人物访谈 人物专访主题：黄帽子、黑西装，灵活工作，饿了自主觅食充电，小巧精致的身体里蕴含着30多项专利技术，只为实现信息时代的机器换人变革。</span></p>\r\n</div>');
INSERT INTO `destoon_article_data_21` VALUES (11, '<div class=\"index-module_mediaWrap_213jB\" style=\"max-width: 100%; overflow-x: auto; display: flex; margin-top: 0px; font-family: arial; font-size: 12px;\">\r\n<div class=\"index-module_contentImg_JmmC0\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-align: center; align-items: center; width: 599px;\"><a href=\"https://pics3.baidu.com/feed/00e93901213fb80e67104caf72c72929b83894a5.jpeg?token=4a56b29a92f7eee492d628d2c39cafc4\" style=\"text-indent: 2em; font-size: 16px; display: inline !im<em></em>portant;\"><img src=\"http://jpzzw.ja39.7890010.com/file/upload/202106/16/110852831.jpeg\" width=\"640\" height=\"427\" alt=\"\" /></a></div>\r\n</div>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 36px; font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\"> 有些事都是后来才明白过来的，创业为什么要学习呢，就是为了早点明白过来，就算是该犯错的依然犯错，该掉坑的依然是掉进坑里，但你至少能马上明白自己错在哪里，知道怎么爬出坑来。</span></p>\r\n</div>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">首先，我们要明确一个概念，那就是&ldquo;创业&rdquo;这回事，不同的人有不同的观念和路径，比如有的人是通过整合资源去寻找或制造机会，然后去套利的。</span></p>\r\n</div>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">这样的人在社会上比比皆是，有些还做得很大很成功，这种企业的核心竞争力是&ldquo;关系&rdquo;，其他不过是装样子，次要的。嗯，这种不用多说，我们都见过不少。</span></p>\r\n</div>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">我们说创业，主要是谈那种正常参与市场竞争，通过企业经营和创新等动作赢得胜利的模式、路线。</span></p>\r\n</div>\r\n<div class=\"index-module_textWrap_3ygOc\" style=\"max-width: 100%; overflow-x: auto; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); margin-top: 22px; font-family: arial;\">\r\n<p style=\"margin: 0px; padding: 0px; max-width: 100%; line-height: 24px;\"><span class=\"bjh-p\" style=\"max-width: 100%;\">这样的创业无论成败，都是值得尊敬的。</span></p>\r\n</div>\r\n<br />');

-- ----------------------------
-- Table structure for destoon_ask
-- ----------------------------
DROP TABLE IF EXISTS `destoon_ask`;
CREATE TABLE `destoon_ask`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `qid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `reply` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `star` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客服中心' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_ask
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_banip
-- ----------------------------
DROP TABLE IF EXISTS `destoon_banip`;
CREATE TABLE `destoon_banip`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'IP禁止' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_banip
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_banword
-- ----------------------------
DROP TABLE IF EXISTS `destoon_banword`;
CREATE TABLE `destoon_banword`  (
  `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `replacefrom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `replaceto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `deny` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '词语过滤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_banword
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_brand_13
-- ----------------------------
DROP TABLE IF EXISTS `destoon_brand_13`;
CREATE TABLE `destoon_brand_13`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `homepage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE,
  INDEX `edittime`(`edittime`) USING BTREE,
  INDEX `editdate`(`editdate`, `vip`, `edittime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品牌' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_brand_13
-- ----------------------------
INSERT INTO `destoon_brand_13` VALUES (1, 28, 1, 'D.ZAI棣仔', '', 0, 'D.ZAI棣仔,DESTOON B2B网站管理系统,十大品牌默认地区', '', 1, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150423931.jpg', '', 'destoon', 1, 1623306037, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623308664, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=1', '', '');
INSERT INTO `destoon_brand_13` VALUES (2, 28, 1, 'Mongdodo梦多多', '', 0, 'Mongdodo梦多多,DESTOON B2B网站管理系统,十大品牌默认地区', '', 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150410931.jpg', '', 'destoon', 1, 1623306193, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623308651, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=2', '', '');
INSERT INTO `destoon_brand_13` VALUES (3, 28, 1, 'ambidexter', '', 0, 'ambidexter,DESTOON B2B网站管理系统,十大品牌默认地区', '', 4, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150259201.jpg', '', 'destoon', 1, 1623306231, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623308581, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=3', '', '');
INSERT INTO `destoon_brand_13` VALUES (4, 28, 1, '米喜迪ME&CITY KIDS', '', 0, '米喜迪ME&CITY KIDS,DESTOON B2B网站管理系统,十大品牌默认地区', '', 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150337661.jpg', '', 'destoon', 1, 1623306244, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623308619, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=4', '', '');
INSERT INTO `destoon_brand_13` VALUES (5, 29, 1, 'G-SHOCK', '', 0, 'G-SHOCK,DESTOON B2B网站管理系统,热门品牌默认地区', '', 7, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150347201.jpg', '', 'destoon', 1, 1623306267, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623308629, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=5', '', '');
INSERT INTO `destoon_brand_13` VALUES (6, 29, 1, 'Kappa Kids', '', 0, 'Kappa Kids,,热门品牌全国', '', 0, 0, 'http://model.blueweb.com/static/picture/091545500.jpg', '', 'destoon', 1, 1623306307, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623306331, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=6', '', '');
INSERT INTO `destoon_brand_13` VALUES (7, 29, 1, 'aojo', '', 0, 'aojo,DESTOON B2B网站管理系统,热门品牌默认地区', '', 1, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150325761.jpg', '', 'destoon', 1, 1623306331, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623308606, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=7', '', '');
INSERT INTO `destoon_brand_13` VALUES (8, 30, 1, '小笑牛Kingkow', '', 0, '小笑牛Kingkow,,最新品牌全国', '', 1, 0, 'http://model.blueweb.com/static/picture/091540720.jpg', '', 'destoon', 1, 1623306366, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623306403, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=8', '', '');
INSERT INTO `destoon_brand_13` VALUES (9, 28, 1, '伊佳林(IKALI)', '', 0, '伊佳林(IKALI),,十大品牌全国', '', 4, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/144826391.jpg', '', 'destoon', 1, 1623307684, '2021-06-10', 0, 1, 'DESTOON B2B网站管理系统', 0, 0, '姓名', '', '', '', '', '', '', '', '', '', '', 'destoon', 1623307709, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=9', '', '');

-- ----------------------------
-- Table structure for destoon_brand_data_13
-- ----------------------------
DROP TABLE IF EXISTS `destoon_brand_data_13`;
CREATE TABLE `destoon_brand_data_13`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '品牌内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_brand_data_13
-- ----------------------------
INSERT INTO `destoon_brand_data_13` VALUES (1, '');
INSERT INTO `destoon_brand_data_13` VALUES (2, '');
INSERT INTO `destoon_brand_data_13` VALUES (3, '');
INSERT INTO `destoon_brand_data_13` VALUES (4, '');
INSERT INTO `destoon_brand_data_13` VALUES (5, '');
INSERT INTO `destoon_brand_data_13` VALUES (6, '');
INSERT INTO `destoon_brand_data_13` VALUES (7, '');
INSERT INTO `destoon_brand_data_13` VALUES (8, '');
INSERT INTO `destoon_brand_data_13` VALUES (9, '');

-- ----------------------------
-- Table structure for destoon_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `destoon_buy_6`;
CREATE TABLE `destoon_buy_6`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `n1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pack` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `days` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumbs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `editdate`(`editdate`, `vip`, `edittime`) USING BTREE,
  INDEX `edittime`(`edittime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '求购' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_buy_6
-- ----------------------------
INSERT INTO `destoon_buy_6` VALUES (1, 13, 0, 1, 2, '求购45#轴承', '', 0, '求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴', '', '', '', '', '', '', '10', '2000', '精包装', 0, '', '求购45#轴承,求购,机械设备专场', '', 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/103239171.png.thumb.png', '', '', '', 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 1624550399, 'destoon', 1623206037, '2021-06-09', 1623205781, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=1', '', '');
INSERT INTO `destoon_buy_6` VALUES (2, 13, 0, 1, 2, '求购46#轴承', '', 0, '求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴', '', '', '', '', '', '', '999', '2000', '精包装', 0, '', '求购46#轴承,求购,机械设备专场', '', 2, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/103421611.png.thumb.png', '', '', '', 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 1625846399, 'destoon', 1623207379, '2021-06-09', 1623206037, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=2', '', '');
INSERT INTO `destoon_buy_6` VALUES (3, 13, 0, 1, 2, '求购40#轴承', '', 0, '求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴', '', '', '', '', '', '', '', '', '', 0, '', '求购40#轴承,求购,机械设备专场', '', 1, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/105749191.png.thumb.png', '', '', '', 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 1623859199, 'destoon', 1623207506, '2021-06-09', 1623207451, '2021-06-09', '127.0.0.1', '', 4, 'show.php?itemid=3', '', '');
INSERT INTO `destoon_buy_6` VALUES (4, 13, 0, 1, 2, '求购44#轴承', '', 0, '求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴', '', '', '', '', '', '', '', '', '', 0, '', '求购44#轴承,求购,机械设备专场', '', 10, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/111843971.png.thumb.png', '', '', '', 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 1625846399, 'destoon', 1623208730, '2021-06-09', 1623208703, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=4', '', '');
INSERT INTO `destoon_buy_6` VALUES (5, 13, 0, 1, 2, '求购25#轴承', '', 0, '求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴', '', '', '', '', '', '', '', '', '', 0, '', '求购25#轴承,求购,机械设备专场', '', 1, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/141803331.png.thumb.png', '', '', '', 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 1623859199, 'destoon', 1623219486, '2021-06-09', 1623208730, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=5', '', '');
INSERT INTO `destoon_buy_6` VALUES (6, 23, 5, 1, 2, '新乡一家干洗店机器多少钱？哪家干洗店更实惠！', '', 0, '新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干', '公司', '', '', '焦作中企实业有限公司', '', '', '10', '20000', '', 0, '', '新乡一家干洗店机器多少钱？哪家干洗店更实惠！,招标,自主推荐', '', 99, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/144716411.png.thumb.png', '', '', '', 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 1625846399, 'destoon', 1623222140, '2021-06-09', 1623221131, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=6', '', '');
INSERT INTO `destoon_buy_6` VALUES (7, 23, 5, 1, 2, '新乡一家干洗店机器多少钱？哪家干洗店更实惠！', '', 0, '新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干', '公司', '', '', '新乡中企实业有限公司', '', '', '', '20000', '', 0, '', '新乡一家干洗店机器多少钱？哪家干洗店更实惠！,招标,自主推荐', '', 9, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/144927221.png.thumb.png', '', '', '', 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 1626537599, 'destoon', 1623888209, '2021-06-17', 1623221350, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=7', '', '');

-- ----------------------------
-- Table structure for destoon_buy_data_6
-- ----------------------------
DROP TABLE IF EXISTS `destoon_buy_data_6`;
CREATE TABLE `destoon_buy_data_6`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '求购内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_buy_data_6
-- ----------------------------
INSERT INTO `destoon_buy_data_6` VALUES (1, '&nbsp;求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承求购45#轴承');
INSERT INTO `destoon_buy_data_6` VALUES (2, '&nbsp;求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承求购46#轴承');
INSERT INTO `destoon_buy_data_6` VALUES (3, '&nbsp;求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承&nbsp;求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承&nbsp;求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承&nbsp;求购40#轴承求购40#轴承求购40#轴承求购40#轴承求购40#轴承');
INSERT INTO `destoon_buy_data_6` VALUES (4, '&nbsp;求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承&nbsp;求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承&nbsp;求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承&nbsp;求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承');
INSERT INTO `destoon_buy_data_6` VALUES (5, '&nbsp;&nbsp;求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承&nbsp;求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承&nbsp;求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承&nbsp;求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承求购44#轴承');
INSERT INTO `destoon_buy_data_6` VALUES (6, '&nbsp;新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！');
INSERT INTO `destoon_buy_data_6` VALUES (7, '&nbsp;新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！新乡一家干洗店机器多少钱？哪家干洗店更实惠！');

-- ----------------------------
-- Table structure for destoon_cache
-- ----------------------------
DROP TABLE IF EXISTS `destoon_cache`;
CREATE TABLE `destoon_cache`  (
  `cacheid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `cacheid`(`cacheid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件缓存' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_cache
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_cart
-- ----------------------------
DROP TABLE IF EXISTS `destoon_cart`;
CREATE TABLE `destoon_cart`  (
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `userid`(`userid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_cart
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_category
-- ----------------------------
DROP TABLE IF EXISTS `destoon_category`;
CREATE TABLE `destoon_category`  (
  `catid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `catname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `catdir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `letter` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `item` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `property` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `arrparentid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `child` tinyint(1) NOT NULL DEFAULT 0,
  `arrchildid` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `show_template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `group_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `group_show` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `group_add` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`catid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '栏目分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_category
-- ----------------------------
INSERT INTO `destoon_category` VALUES (1, 5, '供应默认分类', '', '1', 'list.php?catid=1', '', 1, 0, 0, 0, '0', 0, '1', 1, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (2, 6, '求购默认分类', '', '1', 'list.php?catid=2', '', 1, 0, 0, 0, '0', 0, '2', 1, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (3, 4, '公司默认分类', '', '1', 'list.php?catid=3', '', 1, 0, 0, 0, '0', 0, '', 1, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (4, 16, '机械及行业设备', '', 'jixie', 'list.php?catid=4', 'j', 1, 5, 0, 0, '0', 1, '4,6,7,8,9,10,11,12', 4, '', '', '', '', '机械及行业设备实力工厂', '', '', '');
INSERT INTO `destoon_category` VALUES (5, 16, '仪表、仪器', '', 'yibiao', 'list.php?catid=5', 'y', 1, 1, 0, 0, '0', 1, '5,24,25,26,27', 5, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (6, 16, '种植机械', '', 'zzjx', 'list.php?catid=6', 'z', 3, 1, 0, 7, '0,4,7', 0, '6', 6, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (7, 16, '农机网', '', 'njw', 'list.php?catid=7', 'n', 2, 1, 0, 4, '0,4', 1, '7,6,8,9', 7, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (8, 16, '植保机械', '', 'zbjx', 'list.php?catid=8', 'z', 3, 0, 0, 7, '0,4,7', 0, '8', 8, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (9, 16, '排灌机械', '', 'pgjx', 'list.php?catid=9', 'p', 3, 0, 0, 7, '0,4,7', 0, '9', 9, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (11, 16, '电动工具', '', 'ddgj', 'list.php?catid=11', 'd', 3, 2, 0, 10, '0,4,10', 0, '11', 11, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (10, 16, '机电网', '', 'jdw', 'list.php?catid=10', 'j', 2, 4, 0, 4, '0,4', 1, '10,11,12', 10, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (12, 16, '通风设备', '', 'tfsb', 'list.php?catid=12', 't', 3, 1, 0, 10, '0,4,10', 0, '12', 12, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (13, 6, '机械设备专场', '', 'jxsbzc', 'list.php?catid=13', 'j', 1, 0, 0, 0, '0', 0, '13', 13, '', '', '', '', '大宗企业采购需要', '', '', '');
INSERT INTO `destoon_category` VALUES (16, 5, '家装建材专场', '', 'jiazhuangjiancaizhuanchang', 'list.php?catid=16', 'j', 1, 0, 0, 0, '0', 1, '16,17,18,19,20,21,22', 16, '', '', '', '', '大量优质商家标王在线', '', '', '');
INSERT INTO `destoon_category` VALUES (17, 5, '彩钢', '', 'caigang', 'list.php?catid=17', 'c', 2, 0, 0, 16, '0,16', 0, '17', 17, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (18, 5, '建筑玻璃', '', 'jianzhuboli', 'list.php?catid=18', 'j', 2, 0, 0, 16, '0,16', 0, '18', 18, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (19, 5, '钢格板', '', 'ganggeban', 'list.php?catid=19', 'g', 2, 0, 0, 16, '0,16', 0, '19', 19, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (20, 5, '钢纤维', '', 'gangxianwei', 'list.php?catid=20', 'g', 2, 0, 0, 16, '0,16', 0, '20', 20, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (21, 5, '钢模板', '', 'gangmoban', 'list.php?catid=21', 'g', 2, 0, 0, 16, '0,16', 0, '21', 21, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (22, 5, '石材', '', 'shicai', 'list.php?catid=22', 's', 2, 0, 0, 16, '0,16', 0, '22', 22, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (23, 6, '自主推荐', '', 'zizhutuijian', 'list.php?catid=23', 'z', 1, 2, 0, 0, '0', 0, '23', 23, '', '', '', '', '企业会员自主推荐优质货源', '', '', '');
INSERT INTO `destoon_category` VALUES (24, 16, '阀门网', '', 'famenwang', 'list.php?catid=24', 'f', 2, 0, 0, 5, '0,5', 1, '24,26', 24, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (25, 16, '温度仪表', '', 'wenduyibiao', 'list.php?catid=25', 'w', 2, 0, 0, 5, '0,5', 1, '25,27', 25, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (26, 16, '量仪', '', 'liangyi', 'list.php?catid=26', 'l', 3, 0, 0, 24, '0,5,24', 0, '26', 26, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (27, 16, '电子测量仪器', '', 'dianziceliangyiqi', 'list.php?catid=27', 'd', 3, 1, 0, 25, '0,5,25', 0, '27', 27, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (28, 13, '十大品牌', '', 'shidapinpai', 'list.php?catid=28', 's', 1, 0, 0, 0, '0', 0, '28', 28, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (29, 13, '热门品牌', '', 'remenpinpai', 'list.php?catid=29', 'r', 1, 0, 0, 0, '0', 0, '29', 29, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (30, 13, '最新品牌', '', 'zuixinpinpai', 'list.php?catid=30', 'z', 1, 0, 0, 0, '0', 0, '30', 30, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (31, 22, '首页招商推荐', '', 'shouyezhaoshangtuijian', 'list.php?catid=31', 's', 1, 0, 0, 0, '0', 0, '31', 31, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (32, 8, '首页展会', '', 'shouyelunbozhanhui', 'list.php?catid=32', 's', 1, 0, 0, 0, '0', 0, '32', 32, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (33, 8, '展会资讯', '', 'zhanhuizixun', 'list.php?catid=33', 'z', 1, 0, 0, 0, '0', 0, '33', 33, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (34, 9, '名企招聘', '', 'mingqizhaopin', 'list.php?catid=34', 'm', 1, 0, 0, 0, '0', 0, '34', 34, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (35, 9, '最新工作', '', 'zuixingongzuo', 'list.php?catid=35', 'z', 1, 0, 0, 0, '0', 0, '35', 35, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (36, 9, '最新贤良', '', 'zuixinxianliang', 'list.php?catid=36', 'z', 1, 0, 0, 0, '0', 0, '36', 36, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (37, 21, '资讯头条', '', 'zixuntoutiao', 'list.php?catid=37', 'z', 1, 0, 0, 0, '0', 1, '37,45,46,47,48', 37, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (38, 21, '政策法规', '', 'zhengcefagui', 'list.php?catid=38', 'z', 1, 0, 0, 0, '0', 0, '38', 38, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (39, 21, '产业经济', '', 'chanyejingji', 'list.php?catid=39', 'c', 1, 0, 0, 0, '0', 0, '39', 39, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (40, 21, '生活理财', '', 'shenghuolicai', 'list.php?catid=40', 's', 1, 0, 0, 0, '0', 0, '40', 40, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (41, 21, '人物访谈', '', 'renwufangtan', 'list.php?catid=41', 'r', 1, 0, 0, 0, '0', 0, '41', 41, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (42, 21, '企业管理', '', 'qiyeguanli', 'list.php?catid=42', 'q', 1, 0, 0, 0, '0', 0, '42', 42, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (43, 21, '各行各业', '', 'gexinggeye', 'list.php?catid=43', 'g', 1, 0, 0, 0, '0', 0, '43', 43, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (46, 21, '企业管理', '', 'qygl', 'list.php?catid=46', 'q', 2, 2, 0, 37, '0,37', 0, '46', 46, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (45, 21, '推荐主题', '', 'gongsixinwen', 'list.php?catid=45', 'g', 2, 0, 0, 37, '0,37', 0, '45', 45, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (47, 21, '资讯幻灯片推荐', '', 'zixuntuijian', 'list.php?catid=47', 'z', 2, 0, 0, 37, '0,37', 0, '47', 47, '', '', '', '', '', '', '', '');
INSERT INTO `destoon_category` VALUES (48, 21, '微视频', '', 'weishipin', 'list.php?catid=48', 'w', 2, 0, 0, 37, '0,37', 0, '48', 48, '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for destoon_category_option
-- ----------------------------
DROP TABLE IF EXISTS `destoon_category_option`;
CREATE TABLE `destoon_category_option`  (
  `oid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `search` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extend` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类属性' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_category_option
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_category_value
-- ----------------------------
DROP TABLE IF EXISTS `destoon_category_value`;
CREATE TABLE `destoon_category_value`  (
  `oid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `moduleid` smallint(6) NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `moduleid`(`moduleid`, `itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类属性值' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_category_value
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat`;
CREATE TABLE `destoon_chat`  (
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fromuser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fgettime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `freadtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fnew` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `touser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tgettime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `treadtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tnew` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastmsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `forward` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `fromuser`(`fromuser`) USING BTREE,
  INDEX `touser`(`touser`) USING BTREE,
  INDEX `lasttime`(`lasttime`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线聊天' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat
-- ----------------------------
INSERT INTO `destoon_chat` VALUES ('d7e44b943281ba88098d93dc7a930cbd', 'zq78900', 1624068689, 1623897301, 1, 'destoon', 1623892805, 1624069902, 0, '121jhghgfgtftgfgrfdsrcghnbkjhiouyxszzweearsrtftgjh', 1624068689, 'http://jpzzw.ja39.7890010.com/mall/show.php?itemid=8');

-- ----------------------------
-- Table structure for destoon_chat_data_0
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_0`;
CREATE TABLE `destoon_chat_data_0`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_0' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_1
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_1`;
CREATE TABLE `destoon_chat_data_1`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_1' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_1
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_2
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_2`;
CREATE TABLE `destoon_chat_data_2`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_2' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_2
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_3
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_3`;
CREATE TABLE `destoon_chat_data_3`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_3' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_3
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_4
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_4`;
CREATE TABLE `destoon_chat_data_4`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_4' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_4
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_5`;
CREATE TABLE `destoon_chat_data_5`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_5' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_5
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_6
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_6`;
CREATE TABLE `destoon_chat_data_6`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_6' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_6
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_7`;
CREATE TABLE `destoon_chat_data_7`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_7' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_7
-- ----------------------------
INSERT INTO `destoon_chat_data_7` VALUES (1, 'd7e44b943281ba88098d93dc7a930cbd', 'zq78900', 1623890753, '11');
INSERT INTO `destoon_chat_data_7` VALUES (2, 'd7e44b943281ba88098d93dc7a930cbd', 'zq78900', 1623892773, '11<br /><br />:026):009)');
INSERT INTO `destoon_chat_data_7` VALUES (3, 'd7e44b943281ba88098d93dc7a930cbd', 'zq78900', 1623892797, '1');
INSERT INTO `destoon_chat_data_7` VALUES (4, 'd7e44b943281ba88098d93dc7a930cbd', 'zq78900', 1623892800, '1122123131');
INSERT INTO `destoon_chat_data_7` VALUES (5, 'd7e44b943281ba88098d93dc7a930cbd', 'zq78900', 1623892805, '2121313123131');
INSERT INTO `destoon_chat_data_7` VALUES (6, 'd7e44b943281ba88098d93dc7a930cbd', 'destoon', 1623896425, '111');
INSERT INTO `destoon_chat_data_7` VALUES (7, 'd7e44b943281ba88098d93dc7a930cbd', 'destoon', 1624068689, '121jhghgfgtftgfgrfdsrcghnbkjhiouyxszzweearsrtftgjhjk');

-- ----------------------------
-- Table structure for destoon_chat_data_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_8`;
CREATE TABLE `destoon_chat_data_8`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_8' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_8
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_chat_data_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_chat_data_9`;
CREATE TABLE `destoon_chat_data_9`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chatid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `chatid`(`chatid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '聊天记录_9' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_chat_data_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_city
-- ----------------------------
DROP TABLE IF EXISTS `destoon_city`;
CREATE TABLE `destoon_city`  (
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `iparea` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `letter` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  UNIQUE INDEX `areaid`(`areaid`) USING BTREE,
  INDEX `domain`(`domain`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '城市分站' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_city
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_18`;
CREATE TABLE `destoon_club_18`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `video` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ontop` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `message` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reply` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `replyuser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `replyer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `replytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商圈帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_club_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_data_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_data_18`;
CREATE TABLE `destoon_club_data_18`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商圈帖子内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_club_data_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_fans_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_fans_18`;
CREATE TABLE `destoon_club_fans_18`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `gid`(`gid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商圈粉丝' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_club_fans_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_group_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_group_18`;
CREATE TABLE `destoon_club_group_18`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `post` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fans` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `join_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `list_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `show_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `post_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `reply_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `reason` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商圈圈子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_club_group_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_manage_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_manage_18`;
CREATE TABLE `destoon_club_manage_18`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `rid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商圈管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_club_manage_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_club_reply_18
-- ----------------------------
DROP TABLE IF EXISTS `destoon_club_reply_18`;
CREATE TABLE `destoon_club_reply_18`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `gid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `tid`(`tid`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商圈回复' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_club_reply_18
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_comment
-- ----------------------------
DROP TABLE IF EXISTS `destoon_comment`;
CREATE TABLE `destoon_comment`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_mid` smallint(6) NOT NULL DEFAULT 0,
  `item_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `item_username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `star` tinyint(1) NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `quotation` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reply` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `replyer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `replytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agree` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `against` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quote` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `item_mid`(`item_mid`) USING BTREE,
  INDEX `item_id`(`item_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_comment
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_comment_ban
-- ----------------------------
DROP TABLE IF EXISTS `destoon_comment_ban`;
CREATE TABLE `destoon_comment_ban`  (
  `bid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论禁止' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_comment_ban
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_comment_stat
-- ----------------------------
DROP TABLE IF EXISTS `destoon_comment_stat`;
CREATE TABLE `destoon_comment_stat`  (
  `sid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `star1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `star2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `star3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论统计' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of destoon_comment_stat
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_company
-- ----------------------------
DROP TABLE IF EXISTS `destoon_company`;
CREATE TABLE `destoon_company`  (
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `validator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `validtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `vipt` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `vipr` smallint(2) NOT NULL DEFAULT 0,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `catid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `catids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `capital` float UNSIGNED NOT NULL DEFAULT 0,
  `regunit` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `regyear` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `regcity` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sell` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `business` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `gzh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `gzhqr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `homepage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `styletime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skin` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `domain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `icp` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`) USING BTREE,
  INDEX `domain`(`domain`) USING BTREE,
  INDEX `vip`(`vip`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE,
  INDEX `groupid`(`groupid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_company
-- ----------------------------
INSERT INTO `destoon_company` VALUES (1, 'destoon', 1, 'DESTOON B2B网站管理系统', 0, 0, '', 0, 2, 0, 0, '企业单位', '', '', 1, '', 0, '人民币', '', '', '', '', '', '河南最具创造力的新晋公司', '11', '', '', '', '', '河南-新乡市', '', '', 0, 0, 0, '', '', 0, 0, 'DESTOON B2B网站管理系统默认地区,,,,', '', '', '', '', 'http://jpzzw.ja39.7890010.com/index.php?homepage=destoon');
INSERT INTO `destoon_company` VALUES (2, 'zq78900', 6, '中企电子商务', 0, 0, '', 0, 0, 0, 0, '企业单位', ',3,', ',3,', 1, '', 0, '人民币', '', '2004', '', '', '', 'adada', '130000000000', '', '', '', '', '河南-新乡市', '', '', 0, 0, 0, '', '', 0, 0, '中企电子商务默认地区,adada,,,', '', '', '', '', 'http://jpzzw.ja39.7890010.com/index.php?homepage=zq78900');

-- ----------------------------
-- Table structure for destoon_company_data
-- ----------------------------
DROP TABLE IF EXISTS `destoon_company_data`;
CREATE TABLE `destoon_company_data`  (
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_company_data
-- ----------------------------
INSERT INTO `destoon_company_data` VALUES (1, '&nbsp;');
INSERT INTO `destoon_company_data` VALUES (2, '&nbsp;adadadadadadad');

-- ----------------------------
-- Table structure for destoon_company_setting
-- ----------------------------
DROP TABLE IF EXISTS `destoon_company_setting`;
CREATE TABLE `destoon_company_setting`  (
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `item_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `item_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `userid`(`userid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_company_setting
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_cron
-- ----------------------------
DROP TABLE IF EXISTS `destoon_cron`;
CREATE TABLE `destoon_cron`  (
  `itemid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `schedule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `nexttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `nexttime`(`nexttime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '计划任务' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_cron
-- ----------------------------
INSERT INTO `destoon_cron` VALUES (1, '更新在线状态', 1, 'online', '10', 1624068391, 1624068991, 0, '');
INSERT INTO `destoon_cron` VALUES (2, '内容分表创建', 1, 'split', '0,0', 1624061302, 1624118400, 0, '');
INSERT INTO `destoon_cron` VALUES (3, '清理过期文件缓存', 0, 'cache', '30', 1624068391, 1624070191, 0, '');
INSERT INTO `destoon_cron` VALUES (20, '清理过期禁止IP', 0, 'banip', '0,10', 1624061302, 1624119000, 0, '');
INSERT INTO `destoon_cron` VALUES (21, '清理系统临时文件', 0, 'temp', '0,20', 1624061302, 1624119600, 0, '');
INSERT INTO `destoon_cron` VALUES (40, '清理3天前未付款充值记录', 0, 'charge', '1,0', 1624061302, 1624122000, 0, '');
INSERT INTO `destoon_cron` VALUES (41, '清理30天前404日志', 0, '404', '1,10', 1624061302, 1624122600, 0, '');
INSERT INTO `destoon_cron` VALUES (42, '清理30天前登录日志', 0, 'loginlog', '1,20', 1624061302, 1624123200, 0, '');
INSERT INTO `destoon_cron` VALUES (43, '清理30天前管理日志', 0, 'adminlog', '1,30', 1624061302, 1624123800, 0, '');
INSERT INTO `destoon_cron` VALUES (44, '清理30天前站内交谈', 0, 'chat', '1,40', 1624061302, 1624124400, 0, '');
INSERT INTO `destoon_cron` VALUES (60, '清理90天前已读信件', 0, 'message', '2,0', 0, 0, 1, '');
INSERT INTO `destoon_cron` VALUES (61, '清理90天前资金流水', 0, 'money', '2,10', 0, 0, 1, '');
INSERT INTO `destoon_cron` VALUES (62, '清理90天前积分流水', 0, 'credit', '2,20', 0, 0, 1, '');
INSERT INTO `destoon_cron` VALUES (63, '清理90天前短信流水', 0, 'sms', '2,30', 0, 0, 1, '');
INSERT INTO `destoon_cron` VALUES (64, '清理90天前短信记录', 0, 'smssend', '2,40', 0, 0, 1, '');
INSERT INTO `destoon_cron` VALUES (65, '清理90天前邮件记录', 0, 'maillog', '2,50', 0, 0, 1, '');

-- ----------------------------
-- Table structure for destoon_down_15
-- ----------------------------
DROP TABLE IF EXISTS `destoon_down_15`;
CREATE TABLE `destoon_down_15`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `album` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `download` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` float NOT NULL DEFAULT 0,
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `album`(`album`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '下载' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_down_15
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_down_data_15
-- ----------------------------
DROP TABLE IF EXISTS `destoon_down_data_15`;
CREATE TABLE `destoon_down_data_15`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '下载内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_down_data_15
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_exhibit_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_exhibit_8`;
CREATE TABLE `destoon_exhibit_8`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `homepage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hallname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sponsor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `undertaker` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `remark` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sign` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '展会' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_exhibit_8
-- ----------------------------
INSERT INTO `destoon_exhibit_8` VALUES (1, 32, 0, 2, '2021河南中企喜迎新乡两会举办成功2', '', 0, '', '2021河南中企喜迎新乡两会举办成功2,首页轮播展会,,新乡政协', '', 4, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/152544131.jpg', 'destoon', 1623309348, 1623254400, 1625932799, '', '河南省新乡市', '', '', '平原博物馆', '新乡政协', '', '刘总', '', '130000000000', '', '', '', '', '', '', 0, 'destoon', 1623310014, '127.0.0.1', '', 3, 'show.php?itemid=1', '', '');
INSERT INTO `destoon_exhibit_8` VALUES (2, 32, 0, 2, '2021河南中企喜迎新乡两会举办成功1', '', 0, '', '2021河南中企喜迎新乡两会举办成功1,首页轮播展会,,新乡政协', '', 6, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/152533781.jpg', 'destoon', 1623309700, 1623254400, 1624377599, '', '河南省新乡市', '', '', '平原博物馆', '新乡政协', '', '刘总', '', '130000000000', '', '', '', '', '', '', 0, 'destoon', 1623310005, '127.0.0.1', '', 3, 'show.php?itemid=2', '', '');
INSERT INTO `destoon_exhibit_8` VALUES (3, 33, 1, 1, '苹果6上市 智能产品还有啥？', '', 0, '', '苹果6上市 智能产品还有啥？,展会资讯,默认地区,主办单位', '', 33, 0, 0, '', 'destoon', 1623310064, 1622649600, 1624550399, '默认地区', '河南省新乡市', '', '', '平原博物馆', '新乡政协', '', '刘总', '', '130000000000', '', '', '666@qq.com', '', '', '', 0, 'destoon', 1623805035, '127.0.0.1', '', 3, 'show.php?itemid=3', '', '');
INSERT INTO `destoon_exhibit_8` VALUES (4, 33, 1, 1, '苹果12上市 智能产品还有啥？', '', 0, '', '苹果12上市 智能产品还有啥？,展会资讯,默认地区,新乡政协', '', 35, 0, 0, '', 'destoon', 1623310218, 1625155200, 1626364799, '默认地区', '河南省新乡市', '', '', '平原博物馆', '新乡政协', '', '刘总', '', '130000000000', '', '', '666@qq.com', '', '', '', 0, 'destoon', 1623805961, '127.0.0.1', '', 3, 'show.php?itemid=4', '', '');
INSERT INTO `destoon_exhibit_8` VALUES (5, 32, 1, 1, '新乡中企电子商务：网红时代，传统企业该何去何从', '', 0, '', '新乡中企电子商务：网红时代，传统企业该何去何从,首页展会,默认地区,新乡市', '', 4, 0, 0, 'http://model.blueweb.com/static/images/657.png', 'destoon', 1623312276, 1623340800, 1624377599, '默认地区', '河南省新乡市', '', '', '平原博物馆', '新乡市', '', '刘总', '', '130000000000', '', '', '666@qq.com', '', '', '', 0, 'destoon', 1623805455, '127.0.0.1', '', 3, 'show.php?itemid=5', '', '');

-- ----------------------------
-- Table structure for destoon_exhibit_data_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_exhibit_data_8`;
CREATE TABLE `destoon_exhibit_data_8`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '展会内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_exhibit_data_8
-- ----------------------------
INSERT INTO `destoon_exhibit_data_8` VALUES (1, '2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功2021河南中企喜迎新乡两会举办成功');
INSERT INTO `destoon_exhibit_data_8` VALUES (2, '热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功热烈庆祝举办成功');
INSERT INTO `destoon_exhibit_data_8` VALUES (3, '&nbsp;盘点：苹果6上市 智能产品还有啥？盘点：苹果6上市 智能产品还有啥？盘点：苹果6上市 智能产品还有啥？盘点：苹果6上市 智能产品还有啥？盘点：苹果6上市 智能产品还有啥？盘点：苹果6上市 智能产品还有啥？盘点：苹果6上市 智能产品还有啥？盘点：苹果6上市 智能产品还有啥？');
INSERT INTO `destoon_exhibit_data_8` VALUES (4, '&nbsp;<span style=\"color: rgb(25, 25, 25); font-size: 16px; text-align: justify; text-indent: 2em;\">刚刚过去的浙江卫视抖音美好奇妙夜晚会，获得当日8点档收视率榜首，突破1.401%，最高超过1亿人同时在线，弹幕评论互动超过404万条，10月19日这样一个平凡的夜晚，硬是过成了春晚；再看看平常你自己，以及你身边的人，每天花费多少空闲时间在这些APP上？不知不觉，我们已经步入网红时代！</span>\r\n<p class=\"ql-align-center\" pingfang=\"\" text-indent:=\"\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20191122/cb47b55b5fff477ea64f7e33043f3f1f.png\" max-width=\"600\" alt=\"\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\" /><span class=\"img-desc\" style=\"border: 0px; margin: 14px auto 20px; padding: 0px; display: block; width: 528px;\">抖音美好奇妙夜</span></p>\r\n<p class=\"ql-align-justify\" pingfang=\"\" text-indent:=\"\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25);\">抖音只是网红时代的一个缩影，不代表传统企业适合参与其中，但是在这样的一个时代，我们需要重新思考，重新定义自身企业的营销。</p>\r\n<p class=\"ql-align-justify\" pingfang=\"\" text-indent:=\"\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25);\">绝大多数采购行为习惯，更愿意先通过网络了解筛选，所以企业的生存发展注定不能脱离网络；作为传统企业要花更多精力投入网络推广，不是赶时髦，而是对自己企业命运负责。</p>\r\n<p class=\"ql-align-center\" pingfang=\"\" text-indent:=\"\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20191122/2fb4b4308f9c40f3984ee6ca62d04179.png\" max-width=\"600\" alt=\"\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\" /><span class=\"img-desc\" style=\"border: 0px; margin: 14px auto 20px; padding: 0px; display: block; width: 528px;\">网红时代</span></p>\r\n<p class=\"ql-align-justify\" pingfang=\"\" text-indent:=\"\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25);\">网红，对于娱乐层面来讲，必须迎合好看，好玩，新奇；对于传统企业卖产品来讲，必须迎合差异化，品牌形象。</p>\r\n<p class=\"ql-align-justify\" pingfang=\"\" text-indent:=\"\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25);\">网上信息太多，采购商没有那么多时间去分析，去核实，企业必须用最短的时间，最少的内容打动客户，绝大多数企业不是不知道这一点，而是没有能力做好，所以需要依赖第三方专业的营销策划公司。</p>\r\n<p class=\"ql-align-center\" pingfang=\"\" text-indent:=\"\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20191122/6659a050af584e4a9275c7acc6fadb19.png\" max-width=\"600\" alt=\"\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\" /><span class=\"img-desc\" style=\"border: 0px; margin: 14px auto 20px; padding: 0px; display: block; width: 528px;\">品牌</span></p>\r\n<p class=\"ql-align-justify\" pingfang=\"\" text-indent:=\"\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25);\">当下，品牌不再是代表贵的，奢侈的；形象也不再是品牌产品的专利；消费者越来越挑剔，采购商同样如此；小企业，也需要品牌，更需要形象；质量重要，你的营销包装让用户觉得合适更重要；刚刚过去的双十一，销量前十的个性化单品，都不是已经是品牌的品牌，而是很多小企业；如何做好品牌形象？同样，大多数企业都是心有余而力不足。</p>');
INSERT INTO `destoon_exhibit_data_8` VALUES (5, '<p class=\"ql-align-justify\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\">刚刚过去的浙江卫视抖音美好奇妙夜晚会，获得当日8点档收视率榜首，突破1.401%，最高超过1亿人同时在线，弹幕评论互动超过404万条，10月19日这样一个平凡的夜晚，硬是过成了春晚；再看看平常你自己，以及你身边的人，每天花费多少空闲时间在这些APP上？不知不觉，我们已经步入网红时代！</p>\r\n<p class=\"ql-align-center\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20191122/cb47b55b5fff477ea64f7e33043f3f1f.png\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\" alt=\"\" /><span class=\"img-desc\" style=\"border: 0px; margin: 14px auto 20px; padding: 0px; display: block; width: 528px; line-height: 20px !im<em></em>portant; color: rgb(145, 145, 145) !im<em></em>portant;\">抖音美好奇妙夜</span></p>\r\n<p class=\"ql-align-justify\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\">抖音只是网红时代的一个缩影，不代表传统企业适合参与其中，但是在这样的一个时代，我们需要重新思考，重新定义自身企业的营销。</p>\r\n<p class=\"ql-align-justify\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\">绝大多数采购行为习惯，更愿意先通过网络了解筛选，所以企业的生存发展注定不能脱离网络；作为传统企业要花更多精力投入网络推广，不是赶时髦，而是对自己企业命运负责。</p>\r\n<p class=\"ql-align-center\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20191122/2fb4b4308f9c40f3984ee6ca62d04179.png\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\" alt=\"\" /><span class=\"img-desc\" style=\"border: 0px; margin: 14px auto 20px; padding: 0px; display: block; width: 528px; line-height: 20px !im<em></em>portant; color: rgb(145, 145, 145) !im<em></em>portant;\">网红时代</span></p>\r\n<p class=\"ql-align-justify\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\">网红，对于娱乐层面来讲，必须迎合好看，好玩，新奇；对于传统企业卖产品来讲，必须迎合差异化，品牌形象。</p>\r\n<p class=\"ql-align-justify\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\">网上信息太多，采购商没有那么多时间去分析，去核实，企业必须用最短的时间，最少的内容打动客户，绝大多数企业不是不知道这一点，而是没有能力做好，所以需要依赖第三方专业的营销策划公司。</p>\r\n<p class=\"ql-align-center\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20191122/6659a050af584e4a9275c7acc6fadb19.png\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\" alt=\"\" /><span class=\"img-desc\" style=\"border: 0px; margin: 14px auto 20px; padding: 0px; display: block; width: 528px; line-height: 20px !im<em></em>portant; color: rgb(145, 145, 145) !im<em></em>portant;\">品牌</span></p>\r\n<p class=\"ql-align-justify\" style=\"border: 0px; margin: 0.63em 0px 1.8em; padding: 0px; font-size: 16px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: justify; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; text-indent: 0px;\">当下，品牌不再是代表贵的，奢侈的；形象也不再是品牌产品的专利；消费者越来越挑剔，采购商同样如此；小企业，也需要品牌，更需要形象；质量重要，你的营销包装让用户觉得合适更重要；刚刚过去的双十一，销量前十的个性化单品，都不是已经是品牌的品牌，而是很多小企业；如何做好品牌形象？同样，大多数企业都是心有余而力不足。</p>');

-- ----------------------------
-- Table structure for destoon_exhibit_sign_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_exhibit_sign_8`;
CREATE TABLE `destoon_exhibit_sign_8`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '展会报名' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_exhibit_sign_8
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_favorite
-- ----------------------------
DROP TABLE IF EXISTS `destoon_favorite`;
CREATE TABLE `destoon_favorite`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `tid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商机收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_favorite
-- ----------------------------
INSERT INTO `destoon_favorite` VALUES (1, 16, 6, 0, 1, 0, '排风扇S-O502', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/110906881.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/mall/show.php?itemid=6', '', 1623743706);
INSERT INTO `destoon_favorite` VALUES (2, 16, 1, 0, 1, 0, 'BK20矿用', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080652971.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/mall/show.php?itemid=1', '', 1623888398);
INSERT INTO `destoon_favorite` VALUES (3, 16, 8, 0, 1, 0, '机械手表', '', 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/170938832.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/mall/show.php?itemid=8', '', 1624067581);

-- ----------------------------
-- Table structure for destoon_fetch
-- ----------------------------
DROP TABLE IF EXISTS `destoon_fetch`;
CREATE TABLE `destoon_fetch`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单页采编' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_fetch
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_fields
-- ----------------------------
DROP TABLE IF EXISTS `destoon_fields`;
CREATE TABLE `destoon_fields`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `length` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `html` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `default_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `input_limit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `display` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `front` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `tablename`(`tb`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '自定义字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_fields
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_award
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_award`;
CREATE TABLE `destoon_finance_award`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float UNSIGNED NOT NULL DEFAULT 0,
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `tid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '打赏记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_award
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_card
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_card`;
CREATE TABLE `destoon_finance_card`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  UNIQUE INDEX `number`(`number`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '充值卡' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_card
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_cash
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_cash`;
CREATE TABLE `destoon_finance_cash`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bank` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `banktype` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `branch` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `fee` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '申请提现' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_cash
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_charge
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_charge`;
CREATE TABLE `destoon_finance_charge`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bank` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `fee` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `sendtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `receivetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线充值' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_charge
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_coupon
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_coupon`;
CREATE TABLE `destoon_finance_coupon`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `cost` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `oid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_credit
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_credit`;
CREATE TABLE `destoon_finance_credit`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` int(10) NOT NULL DEFAULT 0,
  `balance` int(10) NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分流水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_credit
-- ----------------------------
INSERT INTO `destoon_finance_credit` VALUES (1, 'destoon', 1, 1, 1623196596, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (2, 'destoon', 2, 3, 1623197269, '商城发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (3, 'destoon', 2, 5, 1623197367, '商城发布', 'ID:2', 'system');
INSERT INTO `destoon_finance_credit` VALUES (4, 'destoon', 2, 7, 1623197588, '商城发布', 'ID:3', 'system');
INSERT INTO `destoon_finance_credit` VALUES (5, 'destoon', 2, 9, 1623199770, '商城发布', 'ID:4', 'system');
INSERT INTO `destoon_finance_credit` VALUES (6, 'destoon', 2, 11, 1623200307, '商城发布', 'ID:5', 'system');
INSERT INTO `destoon_finance_credit` VALUES (7, 'destoon', 2, 13, 1623206037, '求购发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (8, 'destoon', 2, 15, 1623206074, '求购发布', 'ID:2', 'system');
INSERT INTO `destoon_finance_credit` VALUES (9, 'destoon', 2, 17, 1623207475, '求购发布', 'ID:3', 'system');
INSERT INTO `destoon_finance_credit` VALUES (10, 'destoon', 2, 19, 1623208730, '求购发布', 'ID:4', 'system');
INSERT INTO `destoon_finance_credit` VALUES (11, 'destoon', 2, 21, 1623208824, '求购发布', 'ID:5', 'system');
INSERT INTO `destoon_finance_credit` VALUES (12, 'destoon', 2, 23, 1623209450, '供应发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (13, 'destoon', 2, 25, 1623221346, '求购发布', 'ID:6', 'system');
INSERT INTO `destoon_finance_credit` VALUES (14, 'destoon', 2, 27, 1623221379, '求购发布', 'ID:7', 'system');
INSERT INTO `destoon_finance_credit` VALUES (15, 'destoon', 1, 28, 1623283956, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (16, 'destoon', 2, 30, 1623294568, '商城发布', 'ID:6', 'system');
INSERT INTO `destoon_finance_credit` VALUES (17, 'destoon', 2, 32, 1623306189, '品牌发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (18, 'destoon', 2, 34, 1623306223, '品牌发布', 'ID:2', 'system');
INSERT INTO `destoon_finance_credit` VALUES (19, 'destoon', 2, 36, 1623306244, '品牌发布', 'ID:3', 'system');
INSERT INTO `destoon_finance_credit` VALUES (20, 'destoon', 2, 38, 1623306254, '品牌发布', 'ID:4', 'system');
INSERT INTO `destoon_finance_credit` VALUES (21, 'destoon', 2, 40, 1623306284, '品牌发布', 'ID:5', 'system');
INSERT INTO `destoon_finance_credit` VALUES (22, 'destoon', 2, 42, 1623306331, '品牌发布', 'ID:6', 'system');
INSERT INTO `destoon_finance_credit` VALUES (23, 'destoon', 2, 44, 1623306349, '品牌发布', 'ID:7', 'system');
INSERT INTO `destoon_finance_credit` VALUES (24, 'destoon', 2, 46, 1623306403, '品牌发布', 'ID:8', 'system');
INSERT INTO `destoon_finance_credit` VALUES (25, 'destoon', 2, 48, 1623307709, '品牌发布', 'ID:9', 'system');
INSERT INTO `destoon_finance_credit` VALUES (26, 'destoon', 2, 50, 1623308090, '招商发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (27, 'destoon', 2, 52, 1623308129, '招商发布', 'ID:2', 'system');
INSERT INTO `destoon_finance_credit` VALUES (28, 'destoon', 2, 54, 1623308152, '招商发布', 'ID:3', 'system');
INSERT INTO `destoon_finance_credit` VALUES (29, 'destoon', 2, 56, 1623309588, '展会发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (30, 'destoon', 2, 58, 1623309735, '展会发布', 'ID:2', 'system');
INSERT INTO `destoon_finance_credit` VALUES (31, 'destoon', 2, 60, 1623310218, '展会发布', 'ID:3', 'system');
INSERT INTO `destoon_finance_credit` VALUES (32, 'destoon', 2, 62, 1623310246, '展会发布', 'ID:4', 'system');
INSERT INTO `destoon_finance_credit` VALUES (33, 'destoon', 2, 64, 1623312307, '展会发布', 'ID:5', 'system');
INSERT INTO `destoon_finance_credit` VALUES (34, 'destoon', 2, 66, 1623313621, '人才发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (35, 'destoon', 2, 68, 1623313708, '人才发布', 'ID:2', 'system');
INSERT INTO `destoon_finance_credit` VALUES (36, 'destoon', 2, 70, 1623313832, '人才发布', 'ID:3', 'system');
INSERT INTO `destoon_finance_credit` VALUES (37, 'destoon', 2, 72, 1623317099, '人才发布', 'ID:4', 'system');
INSERT INTO `destoon_finance_credit` VALUES (38, 'destoon', 2, 74, 1623317486, '人才发布', 'ID:5', 'system');
INSERT INTO `destoon_finance_credit` VALUES (39, 'destoon', 1, 75, 1623370457, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (40, 'destoon', 2, 77, 1623371996, '资讯发布', 'ID:1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (41, 'destoon', 2, 79, 1623372015, '资讯发布', 'ID:2', 'system');
INSERT INTO `destoon_finance_credit` VALUES (42, 'destoon', 2, 81, 1623372264, '资讯发布', 'ID:3', 'system');
INSERT INTO `destoon_finance_credit` VALUES (43, 'destoon', 2, 83, 1623372287, '资讯发布', 'ID:4', 'system');
INSERT INTO `destoon_finance_credit` VALUES (44, 'destoon', 2, 85, 1623372351, '资讯发布', 'ID:5', 'system');
INSERT INTO `destoon_finance_credit` VALUES (45, 'destoon', 2, 87, 1623372376, '资讯发布', 'ID:6', 'system');
INSERT INTO `destoon_finance_credit` VALUES (46, 'destoon', 2, 89, 1623372450, '资讯发布', 'ID:7', 'system');
INSERT INTO `destoon_finance_credit` VALUES (47, 'destoon', 2, 91, 1623376869, '资讯发布', 'ID:8', 'system');
INSERT INTO `destoon_finance_credit` VALUES (48, 'destoon', 1, 92, 1623716622, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (49, 'destoon', 1, 93, 1623802575, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (50, 'destoon', 2, 95, 1623811155, '资讯发布', 'ID:9', 'system');
INSERT INTO `destoon_finance_credit` VALUES (51, 'destoon', 2, 97, 1623812582, '资讯发布', 'ID:10', 'system');
INSERT INTO `destoon_finance_credit` VALUES (52, 'destoon', 2, 99, 1623812937, '资讯发布', 'ID:11', 'system');
INSERT INTO `destoon_finance_credit` VALUES (53, 'destoon', 1, 100, 1623888143, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (54, 'zq78900', 10, 10, 1623895307, '完善资料', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (55, 'zq78900', -2, 8, 1623895405, '上传', 'album', 'system');
INSERT INTO `destoon_finance_credit` VALUES (56, 'zq78900', -2, 6, 1623895410, '上传', 'album', 'system');
INSERT INTO `destoon_finance_credit` VALUES (57, 'zq78900', -2, 4, 1623920978, '上传', 'album', 'system');
INSERT INTO `destoon_finance_credit` VALUES (58, 'zq78900', -2, 2, 1623920982, '上传', 'album', 'system');
INSERT INTO `destoon_finance_credit` VALUES (59, 'zq78900', -2, 0, 1623920986, '上传', 'album', 'system');
INSERT INTO `destoon_finance_credit` VALUES (60, 'zq78900', -2, 48, 1623921664, '上传', 'album', 'system');
INSERT INTO `destoon_finance_credit` VALUES (61, 'destoon', 10, 110, 1623923135, '升级赠送', 'VIP会员', 'destoon');
INSERT INTO `destoon_finance_credit` VALUES (62, 'destoon', 1, 111, 1623974677, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (63, 'zq78900', 1, 49, 1623998448, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (64, 'destoon', 1, 112, 1624061302, '登录奖励', '127.0.0.1', 'system');
INSERT INTO `destoon_finance_credit` VALUES (65, 'zq78900', 1, 50, 1624062950, '登录奖励', '1.199.119.251', 'system');
INSERT INTO `destoon_finance_credit` VALUES (66, 'zq78900', 1, 51, 1625123132, '登录奖励', '1.199.117.97', 'system');

-- ----------------------------
-- Table structure for destoon_finance_deposit
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_deposit`;
CREATE TABLE `destoon_finance_deposit`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '保证金' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_deposit
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_pay
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_pay`;
CREATE TABLE `destoon_finance_pay`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float UNSIGNED NOT NULL DEFAULT 0,
  `currency` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `paytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `tid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_pay
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_promo
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_promo`;
CREATE TABLE `destoon_finance_promo`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `cost` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠促销' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_promo
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_finance_record
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_record`;
CREATE TABLE `destoon_finance_record`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bank` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '财务流水' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_record
-- ----------------------------
INSERT INTO `destoon_finance_record` VALUES (1, 'destoon', '站内', 666.00, 666.00, 1623923135, '升级赠送', 'VIP会员', 'destoon');

-- ----------------------------
-- Table structure for destoon_finance_sms
-- ----------------------------
DROP TABLE IF EXISTS `destoon_finance_sms`;
CREATE TABLE `destoon_finance_sms`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `amount` int(10) NOT NULL DEFAULT 0,
  `balance` int(10) NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信增减' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_finance_sms
-- ----------------------------
INSERT INTO `destoon_finance_sms` VALUES (1, 'destoon', 200, 200, 1623923135, '升级赠送', 'VIP会员', 'destoon');

-- ----------------------------
-- Table structure for destoon_form
-- ----------------------------
DROP TABLE IF EXISTS `destoon_form`;
CREATE TABLE `destoon_form`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `display` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `question` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `answer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxanswer` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '表单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_form
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_form_answer
-- ----------------------------
DROP TABLE IF EXISTS `destoon_form_answer`;
CREATE TABLE `destoon_form_answer`  (
  `aid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `rid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `qid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '表单回复' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_form_answer
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_form_question
-- ----------------------------
DROP TABLE IF EXISTS `destoon_form_question`;
CREATE TABLE `destoon_form_question`  (
  `qid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `value` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `required` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `extend` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`) USING BTREE,
  INDEX `fid`(`fid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '表单选项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_form_question
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_form_record
-- ----------------------------
DROP TABLE IF EXISTS `destoon_form_record`;
CREATE TABLE `destoon_form_record`  (
  `rid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '表单回复记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_form_record
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_friend
-- ----------------------------
DROP TABLE IF EXISTS `destoon_friend`;
CREATE TABLE `destoon_friend`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `truename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `career` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `homepage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '我的商友' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_friend
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_gift
-- ----------------------------
DROP TABLE IF EXISTS `destoon_gift`;
CREATE TABLE `destoon_gift`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `groupid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxorder` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分换礼' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_gift
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_gift_order
-- ----------------------------
DROP TABLE IF EXISTS `destoon_gift_order`;
CREATE TABLE `destoon_gift_order`  (
  `oid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `itemid`(`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分换礼订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_gift_order
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_group_17
-- ----------------------------
DROP TABLE IF EXISTS `destoon_group_17`;
CREATE TABLE `destoon_group_17`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `marketprice` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `savemoney` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount` float UNSIGNED NOT NULL DEFAULT 0,
  `minamount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `logistic` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sales` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `process` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '团购' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_group_17
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_group_data_17
-- ----------------------------
DROP TABLE IF EXISTS `destoon_group_data_17`;
CREATE TABLE `destoon_group_data_17`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '团购内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_group_data_17
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_group_order_17
-- ----------------------------
DROP TABLE IF EXISTS `destoon_group_order_17`;
CREATE TABLE `destoon_group_order_17`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `buyer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `logistic` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `password` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `send_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `send_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `send_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `send_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `send_days` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_reason` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_reason` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `buyer`(`buyer`) USING BTREE,
  INDEX `seller`(`seller`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '团购订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_group_order_17
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `destoon_guestbook`;
CREATE TABLE `destoon_guestbook`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言本' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_guestbook
-- ----------------------------
INSERT INTO `destoon_guestbook` VALUES (1, 0, '[不良信息]16\r\n---------------------------', '16\r\n-------------------------------\r\n举报理由：1115151', '', 1, '', '', '', '', '', '', '', '', '1.199.119.251', 1624068201, '', 0, 2);

-- ----------------------------
-- Table structure for destoon_honor
-- ----------------------------
DROP TABLE IF EXISTS `destoon_honor`;
CREATE TABLE `destoon_honor`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authority` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '荣誉资质' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_honor
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_info_22
-- ----------------------------
DROP TABLE IF EXISTS `destoon_info_22`;
CREATE TABLE `destoon_info_22`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumbs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `n1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `edittime`(`edittime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE,
  INDEX `editdate`(`editdate`, `vip`, `edittime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招商' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_info_22
-- ----------------------------
INSERT INTO `destoon_info_22` VALUES (1, 31, 1, '河南中企正新鸡排宝', '', 0, '河南中企正新鸡排宝,首页招商推荐全国', '', 4, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/145446331.jpg.thumb.jpg', '', '', '', 'destoon', 1, 1623307964, '2021-06-10', 1625932799, 0, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '', '13333333333', '河南-新乡市', '', '', '', '', '', '', '预算', '', '', '10000-20000元', '', '', 'destoon', 1623308090, '2021-06-10', '127.0.0.1', '', 3, 0, 0, 'show.php?itemid=1', '', '');
INSERT INTO `destoon_info_22` VALUES (2, 31, 1, '河南中企正新鸡排宝', '', 0, '河南中企正新鸡排宝,首页招商推荐全国', '', 1, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/145523261.jpg.thumb.jpg', '', '', '', 'destoon', 1, 1623308090, '2021-06-10', 1625932799, 0, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '', '13333333333', '河南-新乡市', '', '', '', '', '', '', '预算', '', '', '10000-20000元', '', '', 'destoon', 1623308129, '2021-06-10', '127.0.0.1', '', 3, 0, 0, 'show.php?itemid=2', '', '');
INSERT INTO `destoon_info_22` VALUES (3, 31, 1, '河南中企正新鸡排宝', '', 0, '河南中企正新鸡排宝,首页招商推荐全国', '', 3, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/145551861.jpg.thumb.jpg', '', '', '', 'destoon', 1, 1623308129, '2021-06-10', 1625932799, 0, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '', '13333333333', '河南-新乡市', '', '', '', '', '', '', '预算', '', '', '10000-20000元', '', '', 'destoon', 1623308152, '2021-06-10', '127.0.0.1', '', 3, 0, 0, 'show.php?itemid=3', '', '');

-- ----------------------------
-- Table structure for destoon_info_data_22
-- ----------------------------
DROP TABLE IF EXISTS `destoon_info_data_22`;
CREATE TABLE `destoon_info_data_22`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招商内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_info_data_22
-- ----------------------------
INSERT INTO `destoon_info_data_22` VALUES (1, '');
INSERT INTO `destoon_info_data_22` VALUES (2, '');
INSERT INTO `destoon_info_data_22` VALUES (3, '');

-- ----------------------------
-- Table structure for destoon_job_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_9`;
CREATE TABLE `destoon_job_9`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `total` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `minsalary` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxsalary` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `marriage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `education` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `experience` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `minage` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `maxage` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apply` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `editdate`(`editdate`, `vip`, `edittime`) USING BTREE,
  INDEX `edittime`(`edittime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_job_9
-- ----------------------------
INSERT INTO `destoon_job_9` VALUES (1, 34, 1, 1, '河南中企商务有限公司', '', 0, '河南中企商务有限公司河南中企商务有限公司河南中企商务有限公司河南中企商务有限公司河南中企商务有限公司河南中企商务有限公司', '河南中企商务有限公司,客服、暖通设计、空调维修,名企招聘默认地区', '', '客服、暖通设计、空调维修', 10, 4000, 6000, 1, 1, 1, 4, 3, 18, 40, 4, 0, '', 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '刘总', '130000000000', '', '河南-新乡市', '666@qq.com', '', '', '政府机构', '', 1, 0, 'destoon', 1623316535, '2021-06-10', 1623313062, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=1', '', '');
INSERT INTO `destoon_job_9` VALUES (2, 35, 1, 1, '河南中企有限公司', '', 0, '河南中企有限公司河南中企有限公司河南中企有限公司河南中企有限公司河南中企有限公司河南中企有限公司', '河南中企有限公司,运营,最新工作默认地区', '', '运营', 0, 7000, 12000, 1, 1, 1, 3, 6, 18, 40, 2, 0, '', 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 0, 0, '刘总', '130000000000', '', '河南省新乡市', '666@qq.com', '', '', '政府机构', '', 1, 0, 'destoon', 1623317349, '2021-06-10', 1623313621, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=2', '', '');
INSERT INTO `destoon_job_9` VALUES (3, 36, 1, 1, '高先生', '', 0, '高先生高先生高先生高先生高先生高先生高先生高先生高先生高先生高先生', '高先生,产品/技术,最新贤良默认地区', '', '产品/技术', 2, 6000, 12000, 1, 1, 1, 5, 10, 18, 40, 1, 0, '', 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 0, 0, '刘总', '130000000000', '', '河南省新乡市', '666@qq.com', '', '', '堂食行业', '', 1, 0, 'destoon', 1623317793, '2021-06-10', 1623313708, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=3', '', '');
INSERT INTO `destoon_job_9` VALUES (4, 35, 1, 1, '河南中企正新鸡排宝', '', 0, '河南中企正新鸡排宝河南中企正新鸡排宝河南中企正新鸡排宝', '河南中企正新鸡排宝,服务员,最新工作默认地区', '', '服务员', 6, 3200, 6500, 2, 1, 0, 4, 0, 18, 20, 1, 0, '', 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '刘总', '130000000000', '', '河南-新乡市', '666@qq.com', '', '', '堂食行业', '', 1, 0, 'destoon', 1623317285, '2021-06-10', 1623317029, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=4', '', '');
INSERT INTO `destoon_job_9` VALUES (5, 36, 1, 1, '刘女士', '', 0, '刘女士刘女士刘女士刘女士刘女士刘女士刘女士', '刘女士,收银,最新贤良默认地区', '', '收银', 6, 7000, 8000, 1, 2, 0, 0, 0, 18, 40, 1, 0, '', 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '刘总', '130000000000', '', '河南-新乡市', '666@qq.com', '', '', '堂食行业', '', 2, 0, 'destoon', 1623317656, '2021-06-10', 1623317438, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=5', '', '');

-- ----------------------------
-- Table structure for destoon_job_apply_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_apply_9`;
CREATE TABLE `destoon_job_apply_9`  (
  `applyid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jobid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `resumeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `job_username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apply_username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `applytime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`applyid`) USING BTREE,
  INDEX `job_username`(`job_username`) USING BTREE,
  INDEX `apply_username`(`apply_username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应聘工作' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_job_apply_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_data_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_data_9`;
CREATE TABLE `destoon_job_data_9`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_job_data_9
-- ----------------------------
INSERT INTO `destoon_job_data_9` VALUES (1, '河南中企商务有限公司河南中企商务有限公司河南中企商务有限公司河南中企商务有限公司河南中企商务有限公司河南中企商务有限公司');
INSERT INTO `destoon_job_data_9` VALUES (2, '&nbsp;河南中企有限公司河南中企有限公司河南中企有限公司河南中企有限公司河南中企有限公司河南中企有限公司');
INSERT INTO `destoon_job_data_9` VALUES (3, '&nbsp;高先生高先生高先生高先生高先生高先生高先生高先生高先生高先生高先生');
INSERT INTO `destoon_job_data_9` VALUES (4, '&nbsp;河南中企正新鸡排宝河南中企正新鸡排宝河南中企正新鸡排宝');
INSERT INTO `destoon_job_data_9` VALUES (5, '&nbsp;刘女士刘女士刘女士刘女士刘女士刘女士刘女士');

-- ----------------------------
-- Table structure for destoon_job_resume_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_resume_9`;
CREATE TABLE `destoon_job_resume_9`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `age` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `marriage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `education` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `school` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skill` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `minsalary` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxsalary` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `experience` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `situation` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `open` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `edittime`(`edittime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简历' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_job_resume_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_resume_data_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_resume_data_9`;
CREATE TABLE `destoon_job_resume_data_9`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简历内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_job_resume_data_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_job_talent_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_job_talent_9`;
CREATE TABLE `destoon_job_talent_9`  (
  `talentid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `resumeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `jointime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`talentid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '人才库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_job_talent_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_keylink
-- ----------------------------
DROP TABLE IF EXISTS `destoon_keylink`;
CREATE TABLE `destoon_keylink`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `item` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关联链接' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_keylink
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_keyword
-- ----------------------------
DROP TABLE IF EXISTS `destoon_keyword`;
CREATE TABLE `destoon_keyword`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `moduleid` smallint(6) NOT NULL DEFAULT 0,
  `word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `letter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `items` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_search` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `month_search` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `week_search` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `today_search` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 3,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `moduleid`(`moduleid`) USING BTREE,
  INDEX `word`(`word`) USING BTREE,
  INDEX `letter`(`letter`) USING BTREE,
  INDEX `keyword`(`keyword`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关键词' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_keyword
-- ----------------------------
INSERT INTO `destoon_keyword` VALUES (1, 21, '新乡', '新乡', 'xinxiang', 3, 1623981486, 4, 4, 4, 4, 3);
INSERT INTO `destoon_keyword` VALUES (2, 6, '轴承', '轴承', 'zhoucheng', 5, 1623981372, 3, 3, 3, 3, 3);

-- ----------------------------
-- Table structure for destoon_know_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_10`;
CREATE TABLE `destoon_know_10`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `aid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `process` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `message` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addition` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `raise` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `agree` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `against` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `answer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ask` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expert` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '知道' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_know_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_answer_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_answer_10`;
CREATE TABLE `destoon_know_answer_10`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `vote` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expert` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `qid`(`qid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '知道回答' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_know_answer_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_data_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_data_10`;
CREATE TABLE `destoon_know_data_10`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '知道内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_know_data_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_expert_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_expert_10`;
CREATE TABLE `destoon_know_expert_10`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ask` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `answer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `best` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '知道专家' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_know_expert_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_know_vote_10
-- ----------------------------
DROP TABLE IF EXISTS `destoon_know_vote_10`;
CREATE TABLE `destoon_know_vote_10`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `aid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '知道投票' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_know_vote_10
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_link
-- ----------------------------
DROP TABLE IF EXISTS `destoon_link`;
CREATE TABLE `destoon_link`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `listorder`(`listorder`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '友情链接' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_link
-- ----------------------------
INSERT INTO `destoon_link` VALUES (2, 1, 0, '河南中企科技有限公司', '', '', '', '', 1623382257, 'destoon', 1623382412, 0, 1, 3, 'https://www.baidu.com');
INSERT INTO `destoon_link` VALUES (3, 2, 0, '阿里巴巴国际站', '', '', '', '', 1623382397, 'destoon', 1623382409, 0, 1, 3, 'http://alibba.com');
INSERT INTO `destoon_link` VALUES (4, 3, 0, '腾讯Tenc', '', '', '', '', 1623382441, 'destoon', 1623382441, 0, 1, 3, 'http://tenc.com');

-- ----------------------------
-- Table structure for destoon_login
-- ----------------------------
DROP TABLE IF EXISTS `destoon_login`;
CREATE TABLE `destoon_login`  (
  `logid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passsalt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_login
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mail
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mail`;
CREATE TABLE `destoon_mail`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sendtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮件订阅' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mail
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mail_list
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mail_list`;
CREATE TABLE `destoon_mail_list`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `typeids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订阅列表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mail_list
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mail_log
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mail_log`;
CREATE TABLE `destoon_mail_log`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮件记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mail_log
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_16`;
CREATE TABLE `destoon_mall_16`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mycatid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `elite` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `brand` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `step` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `orders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sales` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumbs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relate_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relate_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `relate_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `express_1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `express_name_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_start_1` decimal(10, 2) UNSIGNED NOT NULL,
  `fee_step_1` decimal(10, 2) UNSIGNED NOT NULL,
  `express_2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `express_name_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_start_2` decimal(10, 2) UNSIGNED NOT NULL,
  `fee_step_2` decimal(10, 2) UNSIGNED NOT NULL,
  `express_3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `express_name_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_start_3` decimal(10, 2) UNSIGNED NOT NULL,
  `fee_step_3` decimal(10, 2) UNSIGNED NOT NULL,
  `cod` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `editdate`(`editdate`, `vip`, `edittime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mall_16
-- ----------------------------
INSERT INTO `destoon_mall_16` VALUES (1, 6, 4, 1, 4, 0, 'BK20矿用', '', 0, '', '中企电子商务', 20000.00, 'a:7:{s:2:\"a1\";s:2:\"10\";s:2:\"p1\";s:8:\"20000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', 999, '件', '', 'BK20矿用,新乡爱采购公司,机械及行业设备,农机网,种植机械', '', 54, 0, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080652971.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080729521.jpg.thumb.jpg', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 'destoon', 1623290713, '2021-06-10', 1623196958, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=1', '', '');
INSERT INTO `destoon_mall_16` VALUES (2, 12, 4, 1, 4, 0, 'BGL通风门窗', '', 0, '', 'DESTOON B2B网站管理系统', 2000.00, 'a:7:{s:2:\"a1\";s:1:\"1\";s:2:\"p1\";s:7:\"2000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', 999, '件', '', 'BGL通风门窗,新乡爱采购公司,机械及行业设备,机电网,通风设备', '', 36, 0, 5, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080911461.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080914611.jpg.thumb.jpg', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 'destoon', 1623290702, '2021-06-10', 1623197292, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=2', '', '');
INSERT INTO `destoon_mall_16` VALUES (3, 11, 4, 1, 4, 0, '电动工具KGM,MMM', '', 0, '', '中企电子商务', 30000.00, 'a:7:{s:2:\"a1\";s:1:\"1\";s:2:\"p1\";s:8:\"30000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', 666, '件', '', '电动工具KGM,MMM,广州恒大,机械及行业设备,机电网,电动工具', '', 55, 0, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/081245851.png.thumb.png', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/081248971.png.thumb.png', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 'destoon', 1623290708, '2021-06-10', 1623197485, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=3', '', '');
INSERT INTO `destoon_mall_16` VALUES (4, 11, 4, 1, 4, 0, '电动工具OWKA', '', 0, '', 'DESTOON B2B网站管理系统', 50000.00, 'a:7:{s:2:\"a1\";s:1:\"1\";s:2:\"p1\";s:8:\"50000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', 999, '件', '', '电动工具OWKA,新乡爱采购公司,机械及行业设备,机电网,电动工具', '', 9, 0, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/084915441.png.thumb.png', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 'destoon', 1623290646, '2021-06-10', 1623199723, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=4', '', '');
INSERT INTO `destoon_mall_16` VALUES (6, 12, 4, 1, 4, 0, '排风扇S-O502', '', 0, '', 'DESTOON B2B网站管理系统', 3000.00, 'a:7:{s:2:\"a1\";s:2:\"10\";s:2:\"p1\";s:7:\"3000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', 999, '件', '', '排风扇S-O502,山东排风扇场,机械及行业设备,机电网,通风设备', '', 30, 0, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/110906881.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/110909321.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/110911951.jpg.thumb.jpg', '', '', '', '', '', '', '', '', '', '', 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 'destoon', 1623744537, '2021-06-15', 1623294494, '2021-06-10', '127.0.0.1', '', 3, 'show.php?itemid=6', '', '');
INSERT INTO `destoon_mall_16` VALUES (7, 11, 4, 1, 4, 0, '钢丝螺套', '', 0, '', '中企电子商务', 2000.00, 'a:7:{s:2:\"a1\";s:2:\"10\";s:2:\"p1\";s:7:\"2000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', 999, '件', '', '钢丝螺套,广州恒大,机械及行业设备,机电网,电动工具', '', 13, 0, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/100325132.png.thumb.png', 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/100330972.png.thumb.png', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, 'zq78900', 6, '中企电子商务', 0, 0, '刘总', '130000000000', '', '河南-新乡市', '', '', '', '', '', 'destoon', 1623895577, '2021-06-17', 1623895432, '2021-06-17', '127.0.0.1', '', 3, 'show.php?itemid=7', '', '');
INSERT INTO `destoon_mall_16` VALUES (8, 27, 5, 1, 4, 0, '机械手表', '', 0, '', '中企电子商务', 20000.00, 'a:7:{s:2:\"a1\";s:1:\"1\";s:2:\"p1\";s:8:\"20000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', 999, '件', '', '机械手表,DESTOON B2B网站管理系统,仪表、仪器,温度仪表,电子测量仪器', '', 19, 0, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/170938832.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/170942342.jpeg.thumb.jpeg', 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/170946732.jpg.thumb.jpg', '', '', '', '', '', '', '', '', '', '', 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, 'zq78900', 6, '中企电子商务', 0, 0, '刘总', '130000000000', '', '河南-新乡市', '', '', '', '', '', 'destoon', 1623921102, '2021-06-17', 1623921002, '2021-06-17', '127.0.0.1', '', 3, 'show.php?itemid=8', '', '');
INSERT INTO `destoon_mall_16` VALUES (9, 26, 5, 1, 4, 0, '普通量仪', '', 0, '', '中企电子商务', 2000.00, 'a:7:{s:2:\"a1\";s:1:\"1\";s:2:\"p1\";s:7:\"2000.00\";s:2:\"a2\";s:1:\"0\";s:2:\"p2\";s:4:\"0.00\";s:2:\"a3\";s:1:\"0\";s:2:\"p3\";s:1:\"0\";s:2:\"is\";s:1:\"N\";}', 999, '件', '', '普通量仪,中企电子商务,仪表、仪器,阀门网,量仪', '', 21, 0, 0, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/172104552.png.thumb.png', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, '', 0.00, 0.00, 0, 'zq78900', 6, '中企电子商务', 0, 0, '刘总', '130000000000', '', '河南-新乡市', '', '', '', '', '', 'destoon', 1623922064, '2021-06-17', 1623921681, '2021-06-17', '127.0.0.1', '', 3, 'show.php?itemid=9', '', '');

-- ----------------------------
-- Table structure for destoon_mall_comment_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_comment_16`;
CREATE TABLE `destoon_mall_comment_16`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mallid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `buyer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_star` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `buyer_comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buyer_ctime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buyer_reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buyer_rtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seller_star` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `seller_comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seller_ctime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seller_reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seller_rtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `itemid`(`itemid`) USING BTREE,
  INDEX `buyer`(`buyer`) USING BTREE,
  INDEX `seller`(`seller`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mall_comment_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_data_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_data_16`;
CREATE TABLE `destoon_mall_data_16`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mall_data_16
-- ----------------------------
INSERT INTO `destoon_mall_data_16` VALUES (1, '&nbsp;BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用&nbsp;BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用&nbsp;BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用&nbsp;BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用&nbsp;BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用&nbsp;BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用&nbsp;BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用BK20矿用');
INSERT INTO `destoon_mall_data_16` VALUES (2, '&nbsp;BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗&nbsp;BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗&nbsp;BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗&nbsp;BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗&nbsp;BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗BGL通风门窗');
INSERT INTO `destoon_mall_data_16` VALUES (3, '&nbsp;电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM&nbsp;电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM&nbsp;电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM&nbsp;电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM电动工具KGM,MMM');
INSERT INTO `destoon_mall_data_16` VALUES (4, '&nbsp;电动工具OWKA电动工具OWKA电动工具OWKA电动工具OWKA&nbsp;电动工具OWKA电动工具OWKA电动工具OWKA电动工具OWKA&nbsp;电动工具OWKA电动工具OWKA电动工具OWKA电动工具OWKA&nbsp;电动工具OWKA电动工具OWKA电动工具OWKA电动工具OWKA&nbsp;电动工具OWKA电动工具OWKA电动工具OWKA电动工具OWKA');
INSERT INTO `destoon_mall_data_16` VALUES (5, '&nbsp;电水表电水表电水表a&nbsp;电水表电水表电水表a&nbsp;电水表电水表电水表a&nbsp;电水表电水表电水表a');
INSERT INTO `destoon_mall_data_16` VALUES (6, '<table width=\"100%\" cellpadding=\"0\" cellspacing=\"1\" border=\"0\" bgcolor=\"#e5e5e5\">\r\n    <tbody>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>品牌：</h4>\r\n            </td>\r\n            <td class=\"pt-cent\">各大厂家出产二手矿山设备</td>\r\n        </tr>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>所在地：</h4>\r\n            </td>\r\n            <td class=\"pt-cent\">河南 新乡市1</td>\r\n        </tr>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>起订：</h4>\r\n            </td>\r\n            <td class=\"pt-cent\">&ge;1 台</td>\r\n        </tr>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>供货总量：</h4>\r\n            </td>\r\n            <td class=\"pt-cent\">10000 台</td>\r\n        </tr>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>有效期至：</h4>\r\n            </td>\r\n            <td class=\"pt-cent\">2021-10-27</td>\r\n        </tr>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>7500冲击破：</h4>\r\n            </td>\r\n            <td class=\"pt-cent\">时产50至100吨</td>\r\n        </tr>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>900/1200鄂破：</h4>\r\n            </td>\r\n            <td class=\"pt-cent\">350吨至500吨</td>\r\n        </tr>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>3680振动筛：</h4>\r\n            </td>\r\n            <td class=\"pt-cent\">400至700吨</td>\r\n        </tr>\r\n        <tr height=\"36\" bgcolor=\"#ffffff\">\r\n            <td class=\"pt-name\">\r\n            <h4>更多信息：</h4>\r\n            </td>\r\n            <td class=\"pt-cent more\">本公司长年经营有专业的维修保养团队，本公司长年经营有专业的维修保养团队，本公司长年经营有专业的维修保养团队，设备使用有保障，各种的鄂破 反击破 圆锥破 冲击破 制砂机 								洗砂机等各类二手矿山设备低价出售，本公司长年经营有专业的维修保养团队，设备使用有保障，各种的鄂破 反击破 圆锥破 冲击破 制砂机 洗砂机等</td>\r\n        </tr>\r\n    </tbody>\r\n</table>');
INSERT INTO `destoon_mall_data_16` VALUES (7, '&nbsp;钢丝螺套钢丝螺套钢丝螺套钢丝螺套&nbsp;钢丝螺套钢丝螺套钢丝螺套钢丝螺套&nbsp;钢丝螺套钢丝螺套钢丝螺套钢丝螺套&nbsp;钢丝螺套钢丝螺套钢丝螺套钢丝螺套&nbsp;钢丝螺套钢丝螺套钢丝螺套钢丝螺套&nbsp;钢丝螺套钢丝螺套钢丝螺套钢丝螺套&nbsp;钢丝螺套钢丝螺套钢丝螺套钢丝螺套');
INSERT INTO `destoon_mall_data_16` VALUES (8, '&nbsp;机械手表机械手表机械手表机械手表机械手表');
INSERT INTO `destoon_mall_data_16` VALUES (9, '普通量仪普通量仪普通量仪普通量仪普通量仪普通量仪普通量仪普通量仪普通量仪普通量仪普通量仪');

-- ----------------------------
-- Table structure for destoon_mall_express_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_express_16`;
CREATE TABLE `destoon_mall_express_16`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `express` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fee_start` decimal(10, 2) UNSIGNED NOT NULL,
  `fee_step` decimal(10, 2) UNSIGNED NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `items` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '运费模板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mall_express_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_stat_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_stat_16`;
CREATE TABLE `destoon_mall_stat_16`  (
  `mallid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `seller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `scomment` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `s1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `s2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `s3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `buyer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bcomment` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `b1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `b2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `b3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `mallid`(`mallid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评分统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mall_stat_16
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_mall_view_16
-- ----------------------------
DROP TABLE IF EXISTS `destoon_mall_view_16`;
CREATE TABLE `destoon_mall_view_16`  (
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `uid`(`uid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `lasttime`(`lasttime`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '浏览历史' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_mall_view_16
-- ----------------------------
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|6', 6, 'destoon', 'destoon', 1623923884);
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|3', 3, 'destoon', 'destoon', 1624068517);
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|5', 5, 'destoon', 'destoon', 1623896194);
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|4', 4, 'destoon', 'destoon', 1624063770);
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|2', 2, 'destoon', 'destoon', 1623919504);
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|1', 1, 'destoon', 'destoon', 1624069000);
INSERT INTO `destoon_mall_view_16` VALUES ('zq78900|1', 1, 'zq78900', 'destoon', 1623893413);
INSERT INTO `destoon_mall_view_16` VALUES ('zq78900|3', 3, 'zq78900', 'destoon', 1623999503);
INSERT INTO `destoon_mall_view_16` VALUES ('zq78900|2', 2, 'zq78900', 'destoon', 1623893590);
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|7', 7, 'destoon', 'zq78900', 1624000472);
INSERT INTO `destoon_mall_view_16` VALUES ('zq78900|6', 6, 'zq78900', 'destoon', 1623897019);
INSERT INTO `destoon_mall_view_16` VALUES ('zq78900|8', 8, 'zq78900', 'zq78900', 1623999455);
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|9', 9, 'destoon', 'zq78900', 1624066335);
INSERT INTO `destoon_mall_view_16` VALUES ('destoon|8', 8, 'destoon', 'zq78900', 1624069021);

-- ----------------------------
-- Table structure for destoon_member
-- ----------------------------
DROP TABLE IF EXISTS `destoon_member`;
CREATE TABLE `destoon_member`  (
  `userid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passport` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `passsalt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payword` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `paysalt` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `message` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `chat` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `sound` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `online` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `avatar` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `truename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wxqr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `department` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `career` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 4,
  `regid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sms` int(10) NOT NULL DEFAULT 0,
  `credit` int(10) NOT NULL DEFAULT 0,
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `deposit` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `regip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `regtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `logintimes` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `send` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `vemail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vmobile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vtruename` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vbank` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vcompany` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vtrade` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `trade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `support` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `inviter` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `passport`(`passport`) USING BTREE,
  INDEX `groupid`(`groupid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_member
-- ----------------------------
INSERT INTO `destoon_member` VALUES (1, 'destoon', 'destoon', 'DESTOON B2B网站管理系统', '7ad8d4b7c28f95ecaf199fd0b0fb6cf7', 'SArPLAMn', 'dd018837675ccd98ca6c035591483ddb', 'df4CYdav', 'mail@yourdomain.com', 0, 0, 0, 0, 1, 1, '姓名', '13333333333', '', '', '', '', '', '', '', 1, '', 0, 1, 6, 1, 200, 112, 666.00, 0.00, 1623917630, '127.0.0.1', 1623116605, '1.199.119.251', 1624068391, 61, 1, 1, 1, 1, 0, 0, 0, '', '', '', '');
INSERT INTO `destoon_member` VALUES (2, 'zq78900', 'zq78900', '中企电子商务', '33ddb857d1cdcfad1b6552535ca135d1', 'GGXOvLdS', 'e2e81a1aa9f479a060328de1516b29b4', 'cuOJaVk7', '', 0, 1, 1, 1, 0, 1, '刘总', '', '', '', '', '', '', '', '', 0, '', 0, 6, 6, 1, 0, 51, 0.00, 0.00, 1623895307, '127.0.0.1', 1623890648, '1.199.117.97', 1625123132, 15, 1, 0, 0, 0, 0, 0, 0, '', '', '', '');

-- ----------------------------
-- Table structure for destoon_member_check
-- ----------------------------
DROP TABLE IF EXISTS `destoon_member_check`;
CREATE TABLE `destoon_member_check`  (
  `userid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员资料审核' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_member_check
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_member_group
-- ----------------------------
DROP TABLE IF EXISTS `destoon_member_group`;
CREATE TABLE `destoon_member_group`  (
  `groupid` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`groupid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_member_group
-- ----------------------------
INSERT INTO `destoon_member_group` VALUES (1, '管理员', 0, 1);
INSERT INTO `destoon_member_group` VALUES (2, '禁止访问', 0, 2);
INSERT INTO `destoon_member_group` VALUES (3, '游客', 0, 3);
INSERT INTO `destoon_member_group` VALUES (4, '待审核会员', 0, 4);
INSERT INTO `destoon_member_group` VALUES (5, '个人会员', 0, 5);
INSERT INTO `destoon_member_group` VALUES (6, '企业会员', 0, 6);
INSERT INTO `destoon_member_group` VALUES (7, 'VIP会员', 1, 7);

-- ----------------------------
-- Table structure for destoon_member_misc
-- ----------------------------
DROP TABLE IF EXISTS `destoon_member_misc`;
CREATE TABLE `destoon_member_misc`  (
  `userid` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `bank` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `banktype` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `branch` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `black` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  UNIQUE INDEX `userid`(`userid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员杂项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_member_misc
-- ----------------------------
INSERT INTO `destoon_member_misc` VALUES (1, 'destoon', '', 0, '', '', '', '', 1);
INSERT INTO `destoon_member_misc` VALUES (2, 'zq78900', '', 0, '', '', '', '', 1);

-- ----------------------------
-- Table structure for destoon_message
-- ----------------------------
DROP TABLE IF EXISTS `destoon_message`;
CREATE TABLE `destoon_message`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `typeid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fromuser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `touser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `isread` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `issend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `feedback` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `groupids` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `touser`(`touser`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站内信件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_message
-- ----------------------------
INSERT INTO `destoon_message` VALUES (1, '欢迎加入精品模板网', '', 4, '<table cellpadding=\"0\" cellspacing=\"0\" width=\"700\" align=\"center\">\r\n<tr>\r\n<td><a href=\"http://jpzzw.ja39.7890010.com/\" target=\"_blank\"><img src=\"http://jpzzw.ja39.7890010.com/file/upload/202106/11/143408431.png\" style=\"margin:10px 0;border:none;\" alt=\"精品模板网 LOGO\" title=\"精品模板网\"/></a></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-top:solid 1px #DDDDDD;border-bottom:solid 1px #DDDDDD;padding:10px 0;line-height:200%;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:14px;color:#333333;\">\r\n尊敬的会员：<br/>\r\n恭喜您成功注册成为精品模板网会员！<br/>\r\n以下为您的会员帐号信息：<br/>\r\n<strong>户名：</strong>zq78900<br/>\r\n<strong>密码：</strong>zq78900<br/>\r\n请您妥善保存，切勿告诉他人。<br/>\r\n如果您在使用过程中遇到任何问题，欢迎随时与我们取得联系。<br/>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"line-height:22px;padding:10px 0;font-family:\'Microsoft YaHei\',Verdana,Arial;font-size:12px;color:#666666;\">\r\n请注意：此邮件系 <a href=\"http://jpzzw.ja39.7890010.com/\" target=\"_blank\" style=\"color:#005590;\">精品模板网</a> 自动发送，请勿直接回复。如果此邮件不是您请求的，请忽略并删除\r\n</td>\r\n</tr>\r\n</table>', '', 'zq78900', 1623890648, '127.0.0.1', 1, 0, 0, 3, '');

-- ----------------------------
-- Table structure for destoon_module
-- ----------------------------
DROP TABLE IF EXISTS `destoon_module`;
CREATE TABLE `destoon_module`  (
  `moduleid` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `moduledir` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `isblank` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `logo` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `installtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`moduleid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_module
-- ----------------------------
INSERT INTO `destoon_module` VALUES (1, 'destoon', '核心', '', '', '', 'http://jpzzw.ja39.7890010.com/', '', 1, 0, 0, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (2, 'member', '会员', 'member', '', '', 'http://jpzzw.ja39.7890010.com/member/', '', 2, 0, 0, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (3, 'extend', '扩展', 'extend', '', '', 'http://jpzzw.ja39.7890010.com/extend/', '', 0, 0, 0, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (4, 'company', '公司', 'company', '', '', 'http://jpzzw.ja39.7890010.com/company/', '', 7, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (5, 'sell', '货源供应', 'sell', '', '', 'http://jpzzw.ja39.7890010.com/sell/', '', 5, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (6, 'buy', '大宗采购', 'buy', '', '', 'http://jpzzw.ja39.7890010.com/buy/', '', 6, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (7, 'quote', '行情', 'quote', '', '', 'http://jpzzw.ja39.7890010.com/quote/', '', 9, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (8, 'exhibit', '行业展会', 'exhibit', '', '', 'http://jpzzw.ja39.7890010.com/exhibit/', '', 10, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (9, 'job', '人才', 'job', '', '', 'http://jpzzw.ja39.7890010.com/job/', '', 14, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (10, 'know', '知道', 'know', '', '', 'http://jpzzw.ja39.7890010.com/know/', '', 15, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (11, 'special', '专题', 'special', '', '', 'http://jpzzw.ja39.7890010.com/special/', '', 16, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (12, 'photo', '图库', 'photo', '', '', 'http://jpzzw.ja39.7890010.com/photo/', '', 17, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (13, 'brand', '热门品牌', 'brand', '', '', 'http://jpzzw.ja39.7890010.com/brand/', '', 13, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (14, 'video', '视频', 'video', '', '', 'http://jpzzw.ja39.7890010.com/video/', '', 18, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (15, 'down', '下载', 'down', '', '', 'http://jpzzw.ja39.7890010.com/down/', '', 19, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (16, 'mall', '现货商城', 'mall', '', '', 'http://jpzzw.ja39.7890010.com/mall/', '', 4, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (17, 'group', '团购秒杀', 'group', '', '', 'http://jpzzw.ja39.7890010.com/group/', '', 8, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (18, 'club', '商圈', 'club', '', '', 'http://jpzzw.ja39.7890010.com/club/', '', 20, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (21, 'article', '企业资讯', 'news', '', '', 'http://jpzzw.ja39.7890010.com/news/', '', 11, 0, 1, 0, 0, 0, 1623116605);
INSERT INTO `destoon_module` VALUES (22, 'info', '品牌招商', 'invest', '', '', 'http://jpzzw.ja39.7890010.com/invest/', '', 12, 0, 1, 0, 0, 0, 1623116605);

-- ----------------------------
-- Table structure for destoon_news
-- ----------------------------
DROP TABLE IF EXISTS `destoon_news`;
CREATE TABLE `destoon_news`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司新闻' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_news
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_news_data
-- ----------------------------
DROP TABLE IF EXISTS `destoon_news_data`;
CREATE TABLE `destoon_news_data`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司新闻内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_news_data
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_oauth
-- ----------------------------
DROP TABLE IF EXISTS `destoon_oauth`;
CREATE TABLE `destoon_oauth`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `site` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `logintimes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `site`(`site`, `openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '一键登录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_online
-- ----------------------------
DROP TABLE IF EXISTS `destoon_online`;
CREATE TABLE `destoon_online`  (
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `moduleid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `online` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `lasttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `userid`(`userid`) USING HASH
) ENGINE = MEMORY CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线会员' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of destoon_online
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_order
-- ----------------------------
DROP TABLE IF EXISTS `destoon_order`;
CREATE TABLE `destoon_order`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) UNSIGNED NOT NULL DEFAULT 16,
  `mallid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `pid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `cid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `buyer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `number` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `discount` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `fee` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `fee_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_postcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_star` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `seller_star` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `send_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `send_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `send_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `send_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `send_days` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cod` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `add_time` smallint(6) NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buyer_reason` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `refund_reason` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `buyer`(`buyer`) USING BTREE,
  INDEX `seller`(`seller`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_order
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_page
-- ----------------------------
DROP TABLE IF EXISTS `destoon_page`;
CREATE TABLE `destoon_page`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司单页' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_page
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_page_data
-- ----------------------------
DROP TABLE IF EXISTS `destoon_page_data`;
CREATE TABLE `destoon_page_data`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司单页内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_page_data
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_photo_12
-- ----------------------------
DROP TABLE IF EXISTS `destoon_photo_12`;
CREATE TABLE `destoon_photo_12`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `items` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT 3,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `question` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `answer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_photo_12
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_photo_data_12
-- ----------------------------
DROP TABLE IF EXISTS `destoon_photo_data_12`;
CREATE TABLE `destoon_photo_data_12`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图库内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_photo_data_12
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_photo_item_12
-- ----------------------------
DROP TABLE IF EXISTS `destoon_photo_item_12`;
CREATE TABLE `destoon_photo_item_12`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `listorder`(`listorder`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图库图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_photo_item_12
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_poll
-- ----------------------------
DROP TABLE IF EXISTS `destoon_poll`;
CREATE TABLE `destoon_poll`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `thumb_width` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `thumb_height` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `poll_max` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `poll_page` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `poll_cols` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `poll_order` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `polls` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `items` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template_poll` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '票选' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_poll
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_poll_item
-- ----------------------------
DROP TABLE IF EXISTS `destoon_poll_item`;
CREATE TABLE `destoon_poll_item`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pollid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `polls` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `pollid`(`pollid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '票选选项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_poll_item
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_poll_record
-- ----------------------------
DROP TABLE IF EXISTS `destoon_poll_record`;
CREATE TABLE `destoon_poll_record`  (
  `rid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `pollid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `polltime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '票选记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_poll_record
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_question
-- ----------------------------
DROP TABLE IF EXISTS `destoon_question`;
CREATE TABLE `destoon_question`  (
  `qid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`qid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '验证问题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_question
-- ----------------------------
INSERT INTO `destoon_question` VALUES (1, '5+6=?', '11');
INSERT INTO `destoon_question` VALUES (2, '7+8=?', '15');
INSERT INTO `destoon_question` VALUES (3, '11*11=?', '121');
INSERT INTO `destoon_question` VALUES (4, '12-5=?', '7');
INSERT INTO `destoon_question` VALUES (5, '21-9=?', '12');

-- ----------------------------
-- Table structure for destoon_quote_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_quote_7`;
CREATE TABLE `destoon_quote_7`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '行情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_quote_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_quote_data_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_quote_data_7`;
CREATE TABLE `destoon_quote_data_7`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '行情内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_quote_data_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_quote_price_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_quote_price_7`;
CREATE TABLE `destoon_quote_price_7`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL,
  `market` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '行情报价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_quote_price_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_quote_product_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_quote_product_7`;
CREATE TABLE `destoon_quote_product_7`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) UNSIGNED NOT NULL,
  `minprice` decimal(10, 2) UNSIGNED NOT NULL,
  `maxprice` decimal(10, 2) UNSIGNED NOT NULL,
  `n1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `market` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '行情产品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_quote_product_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_sell_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sell_5`;
CREATE TABLE `destoon_sell_5`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mycatid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `elite` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `n1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `v3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brand` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
  `minamount` float UNSIGNED NOT NULL DEFAULT 0,
  `amount` float UNSIGNED NOT NULL DEFAULT 0,
  `days` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumbs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `vip` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `truename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `wx` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ali` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editdate` date NOT NULL DEFAULT '0000-00-00',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `editdate`(`editdate`, `vip`, `edittime`) USING BTREE,
  INDEX `edittime`(`edittime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `mycatid`(`mycatid`) USING BTREE,
  INDEX `areaid`(`areaid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_sell_5
-- ----------------------------
INSERT INTO `destoon_sell_5` VALUES (1, 17, 0, 0, 1, 3, 1, '新乡中企彩钢有限公司', '', 0, '新乡中企彩钢新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企', '注册资金', '成立时间', '产地', '10000万', '2009年', '河南', '新乡中企彩钢有限公司（XinXiang ZhongQi AnCai Tech…', '', 0.00, 0, 0, 0, '', '新乡中企彩钢有限公司,供应,家装建材专场,彩钢', '', 15, 0, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/112751931.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/112754411.jpg.thumb.jpg', 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/112800621.jpg.thumb.jpg', '', 'destoon', 1, 'DESTOON B2B网站管理系统', 2, 0, '姓名', '11', '13333333333', '河南-新乡市', '', '', '', '', '', 1626537599, 'destoon', 1623911445, '2021-06-17', 1623209004, '2021-06-09', '127.0.0.1', '', 3, 'show.php?itemid=1', '', '');

-- ----------------------------
-- Table structure for destoon_sell_data_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sell_data_5`;
CREATE TABLE `destoon_sell_data_5`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_sell_data_5
-- ----------------------------
INSERT INTO `destoon_sell_data_5` VALUES (1, '&nbsp;新乡中企彩钢&nbsp;新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司&nbsp;新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司&nbsp;新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司新乡中企彩钢有限公司');

-- ----------------------------
-- Table structure for destoon_sell_search_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sell_search_5`;
CREATE TABLE `destoon_sell_search_5`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sorttime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '供应搜索' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_sell_search_5
-- ----------------------------
INSERT INTO `destoon_sell_search_5` VALUES (1, 17, 1, '新乡中企彩钢有限公司,供应,家装建材专场,彩钢', 3, 1623860070);

-- ----------------------------
-- Table structure for destoon_session
-- ----------------------------
DROP TABLE IF EXISTS `destoon_session`;
CREATE TABLE `destoon_session`  (
  `sessionid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastvisit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `sessionid`(`sessionid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'SESSION' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_session
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_setting
-- ----------------------------
DROP TABLE IF EXISTS `destoon_setting`;
CREATE TABLE `destoon_setting`  (
  `item` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `item_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `item_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_setting
-- ----------------------------
INSERT INTO `destoon_setting` VALUES ('1', 'page_mall', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'message_weixin', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'message_type', '1,2,3');
INSERT INTO `destoon_setting` VALUES ('1', 'message_time', '60');
INSERT INTO `destoon_setting` VALUES ('1', 'message_group', '6,7');
INSERT INTO `destoon_setting` VALUES ('1', 'message_email', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_log', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_name', '');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_sender', '');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_sign', '');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_pass', '');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_user', '');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_auth', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_port', '25');
INSERT INTO `destoon_setting` VALUES ('1', 'smtp_host', '');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_delimiter', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'mail_type', 'close');
INSERT INTO `destoon_setting` VALUES ('1', 'water_fontcolor', '#000000');
INSERT INTO `destoon_setting` VALUES ('1', 'water_fontsize', '20');
INSERT INTO `destoon_setting` VALUES ('1', 'water_font', 'simhei.ttf');
INSERT INTO `destoon_setting` VALUES ('1', 'water_text', 'www.destoon.com');
INSERT INTO `destoon_setting` VALUES ('1', 'water_jpeg_quality', '90');
INSERT INTO `destoon_setting` VALUES ('1', 'water_transition', '60');
INSERT INTO `destoon_setting` VALUES ('1', 'thumb_album', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'thumb_title', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'max_image', '800');
INSERT INTO `destoon_setting` VALUES ('1', 'water_mark', 'watermark.png');
INSERT INTO `destoon_setting` VALUES ('1', 'middle_h', '300');
INSERT INTO `destoon_setting` VALUES ('1', 'middle_w', '400');
INSERT INTO `destoon_setting` VALUES ('1', 'water_middle', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'water_com', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'gif_ani', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'bmp_jpg', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'water_pos', '9');
INSERT INTO `destoon_setting` VALUES ('1', 'water_min_wh', '180');
INSERT INTO `destoon_setting` VALUES ('1', 'water_margin', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'water_type', '2');
INSERT INTO `destoon_setting` VALUES ('1', 'file_my', 'my.php');
INSERT INTO `destoon_setting` VALUES ('1', 'file_login', 'login.php');
INSERT INTO `destoon_setting` VALUES ('1', 'file_register', 'register.php');
INSERT INTO `destoon_setting` VALUES ('1', 'defend_proxy', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'defend_reload', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'defend_cc', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'safe_domain', '');
INSERT INTO `destoon_setting` VALUES ('1', 'check_referer', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'uploaddir', 'Ym/d');
INSERT INTO `destoon_setting` VALUES ('1', 'uploadsize', '20480');
INSERT INTO `destoon_setting` VALUES ('1', 'uploadtype', 'jpg|jpeg|png|gif|bmp|mp4|flv|rar|zip|pdf|doc|docx|xls|xlsx|ppt|ppts');
INSERT INTO `destoon_setting` VALUES ('1', 'uploadlog', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'anticopy', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'ip_login', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'login_log', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_log', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_online', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'md5_pass', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'captcha_admin', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'captcha_cn', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'captcha_chars', '');
INSERT INTO `destoon_setting` VALUES ('1', 'check_hour', '');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_hour', '');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_ip', '');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_area', '');
INSERT INTO `destoon_setting` VALUES ('1', 'remote_url', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_path', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_save', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_pasv', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'oauth', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_bbspre', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_bbs', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_key', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_charset', 'utf8');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_appid', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbpre', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbname', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbpwd', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbuser', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_dbhost', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_mysql', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_api', '');
INSERT INTO `destoon_setting` VALUES ('2', 'uc_ip', '');
INSERT INTO `destoon_setting` VALUES ('2', 'passport_key', '');
INSERT INTO `destoon_setting` VALUES ('2', 'passport_url', '');
INSERT INTO `destoon_setting` VALUES ('2', 'passport_charset', 'gbk');
INSERT INTO `destoon_setting` VALUES ('2', 'passport', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_name', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_rate', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_fdnm', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_prex', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_data', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_pass', '');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_user', 'root');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_host', 'localhost');
INSERT INTO `destoon_setting` VALUES ('2', 'ex_type', 'PW');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_exchange', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_price', '5|10|45|85');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_buy', '30|100|500|1000');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_del_page', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_add_page', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_del_news', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_add_news', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_del_credit', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_add_credit', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_charge', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_maxip', '50');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_ip', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_user', '20');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_login', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_edit', '10');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_less', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'send_types', '平邮|EMS|顺丰快递|申通快递|圆通快递|中通快递|国通快递|宅急送|韵达快递|天天快递|如风达|百世汇通|全峰快递|快捷快递|其它');
INSERT INTO `destoon_setting` VALUES ('2', 'deposit', '1000');
INSERT INTO `destoon_setting` VALUES ('2', 'trade_day', '10');
INSERT INTO `destoon_setting` VALUES ('2', 'pay_banks', '站内|支付宝|微信支付|财付通|现金|招商银行|工商银行|农业银行|建设银行|交通银行|中国银行|邮政储蓄|邮政汇款');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_fee_max', '50');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_fee_min', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_fee', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_max', '10000');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_min', '50');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_banks', '支付宝|微信|财付通|招商银行|工商银行|农业银行|建设银行|交通银行|中国银行|邮政储蓄|邮政汇款');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_times', '3');
INSERT INTO `destoon_setting` VALUES ('2', 'cash_enable', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'pay_url', '');
INSERT INTO `destoon_setting` VALUES ('2', 'awards', '1|2|5|10|20|50|100');
INSERT INTO `destoon_setting` VALUES ('2', 'mincharge', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'pay_card', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'pay_online', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'link_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_clear', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_save', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'page_clear', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'page_save', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'page_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'news_clear', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'news_save', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'news_thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('2', 'news_thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('2', 'news_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'introduce_clear', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'introduce_save', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('2', 'thumb_width', '180');
INSERT INTO `destoon_setting` VALUES ('2', 'cate_max', '6');
INSERT INTO `destoon_setting` VALUES ('2', 'mode_max', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'money_unit', '人民币|港元|台币|美元|欧元|英镑');
INSERT INTO `destoon_setting` VALUES ('2', 'editor', 'Basic');
INSERT INTO `destoon_setting` VALUES ('2', 'com_type', '企业单位|事业单位或社会团体|个体经营|其他');
INSERT INTO `destoon_setting` VALUES ('2', 'com_size', '1-49人|50-99人|100-499人|500-999人|1000-3000人|3000-5000人|5000-10000人|10000人以上');
INSERT INTO `destoon_setting` VALUES ('2', 'com_mode', '制造商|贸易商|服务商|其他机构');
INSERT INTO `destoon_setting` VALUES ('2', 'vfax', '');
INSERT INTO `destoon_setting` VALUES ('2', 'vcompany', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vbank', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vtruename', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vmobile', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vemail', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'vmember', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_img', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_url', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_file', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_mintime', '3');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_poll', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_timeout', '600');
INSERT INTO `destoon_setting` VALUES ('2', 'chat_maxlen', '300');
INSERT INTO `destoon_setting` VALUES ('2', 'alert_check', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'alertid', '5|6|22');
INSERT INTO `destoon_setting` VALUES ('2', 'auth_days', '3');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_home', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_edit', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_sendmessage', '2');
INSERT INTO `destoon_setting` VALUES ('2', 'maxtouser', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'login_scan', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'login_sms', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'login_time', '864000');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_login', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'lock_hour', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'login_times', '5');
INSERT INTO `destoon_setting` VALUES ('2', 'usernote', '');
INSERT INTO `destoon_setting` VALUES ('2', 'edit_check', 'thumb,areaid,type,business,regyear,capital,address,telephone,gzh,gzhqr,content');
INSERT INTO `destoon_setting` VALUES ('2', 'iptimeout', '24');
INSERT INTO `destoon_setting` VALUES ('2', 'banagent', '');
INSERT INTO `destoon_setting` VALUES ('2', 'defend_proxy', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'sms_register', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'credit_register', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'money_register', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'question_register', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'captcha_register', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'welcome_sms', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'welcome_email', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'welcome_message', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'checkuser', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'banemail', '');
INSERT INTO `destoon_setting` VALUES ('2', 'banmodec', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'bancompany', '');
INSERT INTO `destoon_setting` VALUES ('2', 'mixpassword', '1,2');
INSERT INTO `destoon_setting` VALUES ('2', 'maxpassword', '20');
INSERT INTO `destoon_setting` VALUES ('2', 'maxusername', '20');
INSERT INTO `destoon_setting` VALUES ('2', 'banusername', 'admin|system|master|web|sell|buy|company|quote|job|article|info|page|bbs');
INSERT INTO `destoon_setting` VALUES ('2', 'banmodeu', '0');
INSERT INTO `destoon_setting` VALUES ('2', 'minpassword', '6');
INSERT INTO `destoon_setting` VALUES ('2', 'minusername', '4');
INSERT INTO `destoon_setting` VALUES ('2', 'enable_register', '1');
INSERT INTO `destoon_setting` VALUES ('2', 'module', 'member');
INSERT INTO `destoon_setting` VALUES ('2', 'mobile', 'http://demo.destoon.com/v7.0/mobile/member/');
INSERT INTO `destoon_setting` VALUES ('3', 'baidunews_items', '90');
INSERT INTO `destoon_setting` VALUES ('3', 'baidunews_update', '60');
INSERT INTO `destoon_setting` VALUES ('3', 'baidunews_email', 'web@destoon.com');
INSERT INTO `destoon_setting` VALUES ('3', 'baidunews', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_update', '60');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_items', '10000');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_module', '16,5,6,4,17,7,8,21,22,9,10,11,12,14,15');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_priority', '0.8');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps_changefreq', 'monthly');
INSERT INTO `destoon_setting` VALUES ('3', 'sitemaps', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_pagesize', '50');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_enable', '2');
INSERT INTO `destoon_setting` VALUES ('3', 'archiver_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'archiver_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'form_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'form_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'poll_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'poll_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'vote_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'vote_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_time', '86400');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_type', '业务合作|意见建议|使用问题|页面错误|不良信息|其他');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_captcha', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_am', '网友');
INSERT INTO `destoon_setting` VALUES ('3', 'credit_del_comment', '5');
INSERT INTO `destoon_setting` VALUES ('3', 'credit_add_comment', '2');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_limit', '30');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_pagesize', '10');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_time', '30');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_max', '500');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_min', '5');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_vote', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_admin_del', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_user_del', '4');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_captcha_add', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_check', '2');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_vote_group', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_group', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_show', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_api_key', '');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_module', '5,6,4,17,7,8,21,22,13,9,11,12,14,15');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_api', '');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_api_id', '');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'link_request', '');
INSERT INTO `destoon_setting` VALUES ('3', 'link_reg', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'link_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'link_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'announce_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'announce_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_buy', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_view', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_list', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_check', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_step', '100');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_month', '6');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_max', '10');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_price', '200');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_adr', '77@aprcc7byyvzxyi4i');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_ios', '77@d9xuz1ukp1goudwh');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_ajax', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_goto', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_pid', '14');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_sitename', 'DESTOON');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_domain', '');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_enable', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'show_url', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'list_url', '1');
INSERT INTO `destoon_setting` VALUES ('3', 'weixin', '0');
INSERT INTO `destoon_setting` VALUES ('3', 'oauth', '1,sina');
INSERT INTO `destoon_setting` VALUES ('3', 'module', 'extend');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile', 'http://jpzzw.ja39.7890010.com/mobile/extend/');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_url', 'http://jpzzw.ja39.7890010.com/feed/');
INSERT INTO `destoon_setting` VALUES ('3', 'feed_mob', 'http://jpzzw.ja39.7890010.com/mobile/feed/');
INSERT INTO `destoon_setting` VALUES ('3', 'archiver_url', 'http://jpzzw.ja39.7890010.com/archiver/');
INSERT INTO `destoon_setting` VALUES ('3', 'archiver_mob', 'http://jpzzw.ja39.7890010.com/mobile/archiver/');
INSERT INTO `destoon_setting` VALUES ('3', 'form_url', 'http://jpzzw.ja39.7890010.com/form/');
INSERT INTO `destoon_setting` VALUES ('3', 'form_mob', 'http://jpzzw.ja39.7890010.com/mobile/form/');
INSERT INTO `destoon_setting` VALUES ('3', 'poll_url', 'http://jpzzw.ja39.7890010.com/poll/');
INSERT INTO `destoon_setting` VALUES ('3', 'poll_mob', 'http://jpzzw.ja39.7890010.com/mobile/poll/');
INSERT INTO `destoon_setting` VALUES ('3', 'vote_url', 'http://jpzzw.ja39.7890010.com/vote/');
INSERT INTO `destoon_setting` VALUES ('3', 'vote_mob', 'http://jpzzw.ja39.7890010.com/mobile/vote/');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_url', 'http://jpzzw.ja39.7890010.com/gift/');
INSERT INTO `destoon_setting` VALUES ('3', 'gift_mob', 'http://jpzzw.ja39.7890010.com/mobile/gift/');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_url', 'http://jpzzw.ja39.7890010.com/guestbook/');
INSERT INTO `destoon_setting` VALUES ('3', 'guestbook_mob', 'http://jpzzw.ja39.7890010.com/mobile/guestbook/');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_url', 'http://jpzzw.ja39.7890010.com/comment/');
INSERT INTO `destoon_setting` VALUES ('3', 'comment_mob', 'http://jpzzw.ja39.7890010.com/mobile/comment/');
INSERT INTO `destoon_setting` VALUES ('3', 'link_url', 'http://jpzzw.ja39.7890010.com/link/');
INSERT INTO `destoon_setting` VALUES ('3', 'link_mob', 'http://jpzzw.ja39.7890010.com/mobile/link/');
INSERT INTO `destoon_setting` VALUES ('3', 'announce_url', 'http://jpzzw.ja39.7890010.com/announce/');
INSERT INTO `destoon_setting` VALUES ('3', 'announce_mob', 'http://jpzzw.ja39.7890010.com/mobile/announce/');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_url', 'http://jpzzw.ja39.7890010.com/ad/');
INSERT INTO `destoon_setting` VALUES ('3', 'ad_mob', 'http://jpzzw.ja39.7890010.com/mobile/ad/');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_url', 'http://jpzzw.ja39.7890010.com/spread/');
INSERT INTO `destoon_setting` VALUES ('3', 'spread_mob', 'http://jpzzw.ja39.7890010.com/mobile/spread/');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_url', 'http://jpzzw.ja39.7890010.com/mobile/');
INSERT INTO `destoon_setting` VALUES ('3', 'mobile_mob', 'http://jpzzw.ja39.7890010.com/mobile/mobile/');
INSERT INTO `destoon_setting` VALUES ('4', 'group_message', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'group_buy', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'group_price', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_description_show', '{内容标题}{内容简介}{分类名称}{分类SEO描述}{模块名称}{网站名称}{网站SEO描述}');
INSERT INTO `destoon_setting` VALUES ('4', 'group_inquiry', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_keywords_show', '{内容标题}{分类名称}{分类SEO关键词}{模块名称}{网站SEO关键词}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_title_show', '{内容标题}{分类名称}{分类SEO标题}{模块名称}{网站名称}{网站SEO标题}{分隔符}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_description_list', '{网站SEO描述}{网站名称}{模块名称}{分类SEO描述}{分类名称}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_keywords_list', '{分类名称}{分类SEO关键词}{模块名称}{网站名称}{网站SEO关键词}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('4', 'php_list_urlid', '5');
INSERT INTO `destoon_setting` VALUES ('4', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('4', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'htm_list_prefix', 'company_list_');
INSERT INTO `destoon_setting` VALUES ('4', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('4', 'page_inew', '10');
INSERT INTO `destoon_setting` VALUES ('4', 'group_contact', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('4', 'page_inews', '10');
INSERT INTO `destoon_setting` VALUES ('4', 'page_ivip', '10');
INSERT INTO `destoon_setting` VALUES ('4', 'page_irec', '10');
INSERT INTO `destoon_setting` VALUES ('4', 'page_subcat', '6');
INSERT INTO `destoon_setting` VALUES ('4', 'level', '推荐公司');
INSERT INTO `destoon_setting` VALUES ('4', 'kf', 'qq,53kf,tq,qiao');
INSERT INTO `destoon_setting` VALUES ('4', 'stats', 'baidu,qq,cnzz,51la');
INSERT INTO `destoon_setting` VALUES ('4', 'map', 'baidu');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_honor', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_maxyear', '5');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_year', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_cominfo', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'vip_maxgroupvip', '3');
INSERT INTO `destoon_setting` VALUES ('4', 'delvip', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'openall', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'comment', '1');
INSERT INTO `destoon_setting` VALUES ('4', 'homeurl', '0');
INSERT INTO `destoon_setting` VALUES ('4', 'fields', 'userid,username,company,linkurl,thumb,catid,areaid,vip,groupid,validated,business,mode');
INSERT INTO `destoon_setting` VALUES ('4', 'order', 'vip desc,userid desc');
INSERT INTO `destoon_setting` VALUES ('4', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('4', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('4', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('4', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('4', 'title_show', '{$seo_showtitle}{$seo_catname}{$seo_cattitle}{$seo_modulename}{$seo_sitename}{$seo_sitetitle}{$seo_delimiter}');
INSERT INTO `destoon_setting` VALUES ('4', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'keywords_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('4', 'keywords_list', '{$seo_catname}{$seo_catkeywords}{$seo_modulename}{$seo_sitename}{$seo_sitekeywords}');
INSERT INTO `destoon_setting` VALUES ('4', 'keywords_show', '{$seo_showtitle}{$seo_catname}{$seo_catkeywords}{$seo_modulename}{$seo_sitekeywords}');
INSERT INTO `destoon_setting` VALUES ('4', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'description_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('4', 'description_list', '{$seo_sitedescription}{$seo_sitename}{$seo_modulename}{$seo_catdescription}{$seo_catname}');
INSERT INTO `destoon_setting` VALUES ('4', 'description_show', '{$seo_showtitle}{$seo_showintroduce}{$seo_catname}{$seo_catdescription}{$seo_modulename}{$seo_sitename}{$seo_sitedescription}');
INSERT INTO `destoon_setting` VALUES ('4', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('4', 'module', 'company');
INSERT INTO `destoon_setting` VALUES ('4', 'mobile', 'http://demo.destoon.com/v7.0/mobile/company/');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('5', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_elite', '100');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('5', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('5', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'question_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'captcha_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'group_elite', '6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_compare', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_refresh', '3,5,6');
INSERT INTO `destoon_setting` VALUES ('5', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_contact', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('5', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'htm_item_prefix', 'sell_info_');
INSERT INTO `destoon_setting` VALUES ('5', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'htm_list_prefix', 'sell_list_');
INSERT INTO `destoon_setting` VALUES ('5', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('5', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('5', 'page_ihits', '9');
INSERT INTO `destoon_setting` VALUES ('5', 'page_iedit', ' 10');
INSERT INTO `destoon_setting` VALUES ('5', 'page_inew', '10');
INSERT INTO `destoon_setting` VALUES ('5', 'page_irec', '12');
INSERT INTO `destoon_setting` VALUES ('5', 'page_subcat', '5');
INSERT INTO `destoon_setting` VALUES ('5', 'upload_thumb', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'checkorder', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'swfu', '2');
INSERT INTO `destoon_setting` VALUES ('5', 'level', '推荐信息');
INSERT INTO `destoon_setting` VALUES ('5', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'sphinx_port', '');
INSERT INTO `destoon_setting` VALUES ('5', 'sphinx_name', 'destoon,delta');
INSERT INTO `destoon_setting` VALUES ('5', 'sphinx_host', '');
INSERT INTO `destoon_setting` VALUES ('5', 'inquiry_ask', '我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？|请您发一份比较详细的产品规格说明，谢谢！|请问贵公司产品是否可以代理？代理条件是什么？|我公司有意购买此产品，可否提供此产品的报价单和最小起订量？');
INSERT INTO `destoon_setting` VALUES ('5', 'sphinx', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('5', 'cat_property', '1');
INSERT INTO `destoon_setting` VALUES ('5', 'type', '供应|提供服务|供应二手|提供加工|提供合作|库存');
INSERT INTO `destoon_setting` VALUES ('5', 'inquiry_type', '单价|产品规格|型号|价格条款|原产地|能否提供样品|最小订货量|交货期|供货能力|销售条款及附加条件|包装方式|质量/安全认证 ');
INSERT INTO `destoon_setting` VALUES ('5', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,unit,minamount,amount');
INSERT INTO `destoon_setting` VALUES ('5', 'editor', 'Simple');
INSERT INTO `destoon_setting` VALUES ('5', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('5', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('5', 'template_inquiry', '');
INSERT INTO `destoon_setting` VALUES ('5', 'thumb_height', '200');
INSERT INTO `destoon_setting` VALUES ('5', 'thumb_width', '200');
INSERT INTO `destoon_setting` VALUES ('5', 'template_compare', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('5', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('5', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('5', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('5', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('5', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('5', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('5', 'module', 'sell');
INSERT INTO `destoon_setting` VALUES ('5', 'mobile', 'http://demo.destoon.com/v7.0/mobile/sell/');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('6', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('6', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('6', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('6', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('6', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('6', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'question_price', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'captcha_price', '2');
INSERT INTO `destoon_setting` VALUES ('6', 'group_refresh', '7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_contact', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('6', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'htm_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'htm_item_prefix', 'buy_info_');
INSERT INTO `destoon_setting` VALUES ('6', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'htm_list_prefix', 'buy_list_');
INSERT INTO `destoon_setting` VALUES ('6', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('6', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('6', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('6', 'page_ihits', '9');
INSERT INTO `destoon_setting` VALUES ('6', 'page_iedit', '10');
INSERT INTO `destoon_setting` VALUES ('6', 'page_inew', '10');
INSERT INTO `destoon_setting` VALUES ('6', 'page_irec', '12');
INSERT INTO `destoon_setting` VALUES ('6', 'page_subcat', '6');
INSERT INTO `destoon_setting` VALUES ('6', 'level', '推荐信息');
INSERT INTO `destoon_setting` VALUES ('6', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'type', '求购|紧急求购|求购二手|寻求加工|寻求合作|招标');
INSERT INTO `destoon_setting` VALUES ('6', 'price_ask', '请您发一份比较详细的产品规格说明，谢谢！|请问您对此产品是长期有需求吗？|请问您对此产品有多大的需求量？');
INSERT INTO `destoon_setting` VALUES ('6', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('6', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('6', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,hits');
INSERT INTO `destoon_setting` VALUES ('6', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('6', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('6', 'thumb_height', '200');
INSERT INTO `destoon_setting` VALUES ('6', 'thumb_width', '200');
INSERT INTO `destoon_setting` VALUES ('6', 'template_price', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('6', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('6', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('6', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('6', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('6', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('6', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('6', 'module', 'buy');
INSERT INTO `destoon_setting` VALUES ('6', 'mobile', 'http://demo.destoon.com/v7.0/mobile/buy/');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('7', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('7', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('7', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('7', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('7', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('7', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('7', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('7', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('7', 'group_add_price', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_show_price', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('7', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'htm_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('7', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('7', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('7', 'max_width', '800');
INSERT INTO `destoon_setting` VALUES ('7', 'page_child', '5');
INSERT INTO `destoon_setting` VALUES ('7', 'page_icat', '5');
INSERT INTO `destoon_setting` VALUES ('7', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('7', 'level', '推荐行情|暂未指定|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES ('7', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('7', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('7', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,hits,addtime,edittime,username');
INSERT INTO `destoon_setting` VALUES ('7', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('7', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('7', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('7', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('7', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('7', 'template_price', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_product', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('7', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('7', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('7', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('7', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('7', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('7', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('7', 'module', 'quote');
INSERT INTO `destoon_setting` VALUES ('7', 'mobile', 'http://demo.destoon.com/v7.0/mobile/quote/');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('8', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('8', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('8', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('8', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('8', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'captcha_sign', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_contact', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('8', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'htm_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('8', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('8', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('8', 'max_width', '800');
INSERT INTO `destoon_setting` VALUES ('8', 'pagesize', '10');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_hall_num', '2');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_hall', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_service_num', '8');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_service', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_news_num', '10');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_news', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'news_id', '21');
INSERT INTO `destoon_setting` VALUES ('8', 'page_islide', '3');
INSERT INTO `destoon_setting` VALUES ('8', 'page_icat', '10');
INSERT INTO `destoon_setting` VALUES ('8', 'level', '推荐展会|展会幻灯');
INSERT INTO `destoon_setting` VALUES ('8', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('8', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'fields', 'itemid,title,thumb,linkurl,style,catid,addtime,edittime,username,fromtime,totime,city,address,sponsor');
INSERT INTO `destoon_setting` VALUES ('8', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('8', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('8', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('8', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('8', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('8', 'template_sign', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('8', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('8', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('8', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('8', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('8', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('8', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('8', 'module', 'exhibit');
INSERT INTO `destoon_setting` VALUES ('8', 'mobile', 'http://demo.destoon.com/v7.0/mobile/exhibit/');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_7', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_6', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_5', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'resume_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('9', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_del_resume', '5');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_add_resume', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('9', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'question_add_resume', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'captcha_add_resume', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'check_add_resume', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'group_apply', '5');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_contact', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_add_resume', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('9', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('9', 'group_talent', '7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_search_resume', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_contact_resume', '7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_show_resume', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_refresh', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('9', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('9', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('9', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('9', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('9', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('9', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('9', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('9', 'page_iresume', '10');
INSERT INTO `destoon_setting` VALUES ('9', 'page_ijob', '10');
INSERT INTO `destoon_setting` VALUES ('9', 'level', '推荐');
INSERT INTO `destoon_setting` VALUES ('9', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('9', 'situation', '目前正在找工作|观望有好机会再考虑|半年内无换工作计划');
INSERT INTO `destoon_setting` VALUES ('9', 'education', '学历|初中|高中|大专|本科|硕士|博士');
INSERT INTO `destoon_setting` VALUES ('9', 'marriage', '婚姻|未婚|已婚');
INSERT INTO `destoon_setting` VALUES ('9', 'gender', '性别|男士|女士');
INSERT INTO `destoon_setting` VALUES ('9', 'type', '类型|全职|兼职|实习');
INSERT INTO `destoon_setting` VALUES ('9', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('9', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('9', 'fields', 'itemid,title,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,minsalary,maxsalary,minage,maxage,total');
INSERT INTO `destoon_setting` VALUES ('9', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('9', 'thumb_height', '140');
INSERT INTO `destoon_setting` VALUES ('9', 'thumb_width', '100');
INSERT INTO `destoon_setting` VALUES ('9', 'template_my_resume', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_apply', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_resume', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('9', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('9', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('9', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('9', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('9', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('9', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('9', 'module', 'job');
INSERT INTO `destoon_setting` VALUES ('9', 'mobile', 'http://demo.destoon.com/v7.0/mobile/job/');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_5', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('10', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_deal', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_maxvote', '30');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_del_answer', '5');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_maxanswer', '50');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_vote', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_answer', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_best', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_hidden', '10');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_del', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'credit_add', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('10', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'captcha_answer', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'question_answer', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'check_answer', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'group_vote', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_answer', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('10', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('10', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('10', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'max_width', '750');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_pagesize', '10');
INSERT INTO `destoon_setting` VALUES ('10', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'page_iexpert', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'page_iresolve', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'page_ivote', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'page_isolve', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'page_irec', '8');
INSERT INTO `destoon_setting` VALUES ('10', 'messagedays', '14');
INSERT INTO `destoon_setting` VALUES ('10', 'highcredit', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'raisecredit', '20');
INSERT INTO `destoon_setting` VALUES ('10', 'raisedays', '3');
INSERT INTO `destoon_setting` VALUES ('10', 'maxraise', '2');
INSERT INTO `destoon_setting` VALUES ('10', 'minvote', '3');
INSERT INTO `destoon_setting` VALUES ('10', 'votedays', '5');
INSERT INTO `destoon_setting` VALUES ('10', 'overdays', '15');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_message', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'answer_repeat', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'credits', '0|5|10|15|20|30|50|80|100');
INSERT INTO `destoon_setting` VALUES ('10', 'level', '精彩推荐');
INSERT INTO `destoon_setting` VALUES ('10', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'clear_alink', '1');
INSERT INTO `destoon_setting` VALUES ('10', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,passport,answer,process,credit');
INSERT INTO `destoon_setting` VALUES ('10', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('10', 'editor', 'Simple');
INSERT INTO `destoon_setting` VALUES ('10', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('10', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('10', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('10', 'template_my_answer', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_faq', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_expert', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_answer', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('10', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('10', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('10', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('10', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('10', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('10', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('10', 'module', 'know');
INSERT INTO `destoon_setting` VALUES ('10', 'mobile', 'http://demo.destoon.com/v7.0/mobile/know/');
INSERT INTO `destoon_setting` VALUES ('11', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('11', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('11', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('11', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('11', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('11', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('11', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('11', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('11', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('11', 'level_item', '推荐信息|幻灯图片|推荐图文|头条相关|头条推荐|视频报道');
INSERT INTO `destoon_setting` VALUES ('11', 'page_irec', '6');
INSERT INTO `destoon_setting` VALUES ('11', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('11', 'level', '推荐专题|暂未指定|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES ('11', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('11', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,islink,hits');
INSERT INTO `destoon_setting` VALUES ('11', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('11', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('11', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('11', 'banner_height', '200');
INSERT INTO `destoon_setting` VALUES ('11', 'banner_width', '1200');
INSERT INTO `destoon_setting` VALUES ('11', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('11', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('11', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'template_type', '');
INSERT INTO `destoon_setting` VALUES ('11', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('11', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('11', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('11', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('11', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('11', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('11', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('11', 'module', 'special');
INSERT INTO `destoon_setting` VALUES ('11', 'mobile', 'http://demo.destoon.com/v7.0/mobile/special/');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('12', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('12', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('12', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('12', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('12', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'question_add', '1');
INSERT INTO `destoon_setting` VALUES ('12', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('12', 'check_add', '1');
INSERT INTO `destoon_setting` VALUES ('12', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('12', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('12', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('12', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('12', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('12', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('12', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('12', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('12', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('12', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('12', 'pagesize', '18');
INSERT INTO `destoon_setting` VALUES ('12', 'page_islide', '3');
INSERT INTO `destoon_setting` VALUES ('12', 'page_irec', '6');
INSERT INTO `destoon_setting` VALUES ('12', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('12', 'swfu_max', '20');
INSERT INTO `destoon_setting` VALUES ('12', 'level', '推荐图库|幻灯图片|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES ('12', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('12', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,items,open');
INSERT INTO `destoon_setting` VALUES ('12', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('12', 'editor', 'Simple');
INSERT INTO `destoon_setting` VALUES ('12', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('12', 'maxitem', '30');
INSERT INTO `destoon_setting` VALUES ('12', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('12', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('12', 'template_view', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_private', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('12', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('12', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('12', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('12', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('12', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('12', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('12', 'module', 'photo');
INSERT INTO `destoon_setting` VALUES ('12', 'mobile', 'http://demo.destoon.com/v7.0/mobile/photo/');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('13', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('13', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('13', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('13', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('13', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'group_refresh', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'captcha_message', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'question_message', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('13', 'group_color', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_contact', '6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('13', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'htm_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('13', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('13', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('13', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('13', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('13', 'page_icat', '15');
INSERT INTO `destoon_setting` VALUES ('13', 'page_irec', '18');
INSERT INTO `destoon_setting` VALUES ('13', 'page_subcat', '6');
INSERT INTO `destoon_setting` VALUES ('13', 'level', '推荐品牌');
INSERT INTO `destoon_setting` VALUES ('13', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('13', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('13', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('13', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,hits');
INSERT INTO `destoon_setting` VALUES ('13', 'message_ask', '请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES ('13', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('13', 'thumb_height', '60');
INSERT INTO `destoon_setting` VALUES ('13', 'thumb_width', '180');
INSERT INTO `destoon_setting` VALUES ('13', 'template_message', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('13', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('13', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('13', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('13', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'keywords_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('13', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'description_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('13', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('13', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('13', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('13', 'module', 'brand');
INSERT INTO `destoon_setting` VALUES ('13', 'mobile', 'http://demo.destoon.com/v7.0/mobile/brand/');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('14', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('14', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('14', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('14', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'question_message', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'captcha_message', '2');
INSERT INTO `destoon_setting` VALUES ('14', 'group_upload', '6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('14', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('14', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('14', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('14', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('14', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('14', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('14', 'page_irec', '6');
INSERT INTO `destoon_setting` VALUES ('14', 'swfu', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'upload', 'mp4|flv');
INSERT INTO `destoon_setting` VALUES ('14', 'flvend', '');
INSERT INTO `destoon_setting` VALUES ('14', 'flvstart', '');
INSERT INTO `destoon_setting` VALUES ('14', 'flvlink', '');
INSERT INTO `destoon_setting` VALUES ('14', 'flvmargin', '10 auto auto 10');
INSERT INTO `destoon_setting` VALUES ('14', 'flvlogo', 'video.png');
INSERT INTO `destoon_setting` VALUES ('14', 'autostart', '1');
INSERT INTO `destoon_setting` VALUES ('14', 'level', '推荐视频');
INSERT INTO `destoon_setting` VALUES ('14', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'video_width', '600');
INSERT INTO `destoon_setting` VALUES ('14', 'video_height', '500');
INSERT INTO `destoon_setting` VALUES ('14', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('14', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('14', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('14', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,hits');
INSERT INTO `destoon_setting` VALUES ('14', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('14', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('14', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('14', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('14', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('14', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('14', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('14', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('14', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('14', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('14', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('14', 'module', 'video');
INSERT INTO `destoon_setting` VALUES ('14', 'mobile', 'http://demo.destoon.com/v7.0/mobile/video/');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('15', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('15', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('15', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'question_message', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'captcha_message', '2');
INSERT INTO `destoon_setting` VALUES ('15', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('15', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'group_upload', '6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_contact', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('15', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('15', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('15', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('15', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('15', 'max_width', '550');
INSERT INTO `destoon_setting` VALUES ('15', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('15', 'page_icat', '10');
INSERT INTO `destoon_setting` VALUES ('15', 'swfu', '1');
INSERT INTO `destoon_setting` VALUES ('15', 'page_irec', '6');
INSERT INTO `destoon_setting` VALUES ('15', 'upload', 'rar|zip|pdf|doc|jpg|gif|png|docx');
INSERT INTO `destoon_setting` VALUES ('15', 'readsize', '10');
INSERT INTO `destoon_setting` VALUES ('15', 'level', '推荐下载');
INSERT INTO `destoon_setting` VALUES ('15', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('15', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,fileext,filesize,unit,download');
INSERT INTO `destoon_setting` VALUES ('15', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('15', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('15', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('15', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('15', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('15', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('15', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('15', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('15', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('15', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('15', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('15', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('15', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('15', 'module', 'down');
INSERT INTO `destoon_setting` VALUES ('15', 'mobile', 'http://demo.destoon.com/v7.0/mobile/down/');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('16', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_elite', '100');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('16', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('16', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'question_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'captcha_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('16', 'group_elite', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_compare', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_refresh', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_color', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_contact', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_description_show', '{内容标题}{内容简介}{分类名称}{分类SEO描述}{模块名称}{网站名称}{网站SEO描述}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'htm_item_prefix', 'mall_info_');
INSERT INTO `destoon_setting` VALUES ('16', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('16', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_keywords_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_title_list', '{分类名称}{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}{分类SEO标题}{模块名称}{网站名称}{页码}');
INSERT INTO `destoon_setting` VALUES ('16', 'seo_description_index', '{模块名称}{网站名称}{网站SEO标题}');
INSERT INTO `destoon_setting` VALUES ('16', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'htm_list_prefix', 'mall_list_');
INSERT INTO `destoon_setting` VALUES ('16', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('16', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('16', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('16', 'page_inew', '12');
INSERT INTO `destoon_setting` VALUES ('16', 'page_irec', '5');
INSERT INTO `destoon_setting` VALUES ('16', 'page_subcat', '5');
INSERT INTO `destoon_setting` VALUES ('16', 'checkorder', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'swfu', '1');
INSERT INTO `destoon_setting` VALUES ('16', 'level', '推荐商品');
INSERT INTO `destoon_setting` VALUES ('16', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,brand,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,amount,orders,comments');
INSERT INTO `destoon_setting` VALUES ('16', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'order', 'editdate desc,vip desc,edittime desc');
INSERT INTO `destoon_setting` VALUES ('16', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('16', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('16', 'thumb_height', '200');
INSERT INTO `destoon_setting` VALUES ('16', 'thumb_width', '200');
INSERT INTO `destoon_setting` VALUES ('16', 'template_view', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_compare', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('16', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('16', 'title_list', '{$seo_catname}{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}{$seo_cattitle}{$seo_modulename}{$seo_sitename}{$seo_page}');
INSERT INTO `destoon_setting` VALUES ('16', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('16', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'keywords_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('16', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('16', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'description_index', '{$seo_modulename}{$seo_sitename}{$seo_sitetitle}');
INSERT INTO `destoon_setting` VALUES ('16', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('16', 'description_show', '{$seo_showtitle}{$seo_showintroduce}{$seo_catname}{$seo_catdescription}{$seo_modulename}{$seo_sitename}{$seo_sitedescription}');
INSERT INTO `destoon_setting` VALUES ('16', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('16', 'module', 'mall');
INSERT INTO `destoon_setting` VALUES ('16', 'mobile', 'http://demo.destoon.com/v7.0/mobile/mall/');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('17', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('17', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('17', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'question_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'captcha_inquiry', '2');
INSERT INTO `destoon_setting` VALUES ('17', 'group_refresh', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_contact', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('17', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'level', '推荐团购');
INSERT INTO `destoon_setting` VALUES ('17', 'swfu', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'page_subcat', '9');
INSERT INTO `destoon_setting` VALUES ('17', 'page_irec', '4');
INSERT INTO `destoon_setting` VALUES ('17', 'page_icat', '4');
INSERT INTO `destoon_setting` VALUES ('17', 'pagesize', '9');
INSERT INTO `destoon_setting` VALUES ('17', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('17', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'htm_list_prefix', 'group_list_');
INSERT INTO `destoon_setting` VALUES ('17', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'htm_item_prefix', 'group_info_');
INSERT INTO `destoon_setting` VALUES ('17', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('17', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('17', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,price,marketprice,savemoney,discount,sales,orders,minamount,amount');
INSERT INTO `destoon_setting` VALUES ('17', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('17', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('17', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('17', 'thumb_height', '300');
INSERT INTO `destoon_setting` VALUES ('17', 'thumb_width', '400');
INSERT INTO `destoon_setting` VALUES ('17', 'template_buy', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('17', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('17', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('17', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('17', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('17', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('17', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('17', 'module', 'group');
INSERT INTO `destoon_setting` VALUES ('17', 'mobile', 'http://demo.destoon.com/v7.0/mobile/group/');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_7', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_7', '10');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_6', '3');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_5', '10');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_5', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'join_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'group_limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('18', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_del_reply', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_reply', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_level', '10');
INSERT INTO `destoon_setting` VALUES ('18', 'credit_add', '3');
INSERT INTO `destoon_setting` VALUES ('18', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('18', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'question_reply', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'captcha_reply', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'check_reply', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'question_group', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'captcha_group', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'check_group', '2');
INSERT INTO `destoon_setting` VALUES ('18', 'group_reply', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_title_show', '{内容标题}{分隔符}{页码}{$GRP[\'title\']}{$MOD[\'seo_name\']}{分隔符}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('18', 'seo_name', '圈');
INSERT INTO `destoon_setting` VALUES ('18', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'htm_item_urlid', '4');
INSERT INTO `destoon_setting` VALUES ('18', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('18', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('18', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'max_width', '750');
INSERT INTO `destoon_setting` VALUES ('18', 'reply_pagesize', '10');
INSERT INTO `destoon_setting` VALUES ('18', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('18', 'maxontop', '5');
INSERT INTO `destoon_setting` VALUES ('18', 'page_islide', '3');
INSERT INTO `destoon_setting` VALUES ('18', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('18', 'floor', '沙发|藤椅|板凳|马扎|地板');
INSERT INTO `destoon_setting` VALUES ('18', 'manage_reason', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'manage_message', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'manage_reasons', '广告/SPAM|恶意灌水|违规内容|文不对题|重复发帖|我很赞同|精品文章|原创内容|感谢分享');
INSERT INTO `destoon_setting` VALUES ('18', 'swfu', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'level', '精华1|精华2');
INSERT INTO `destoon_setting` VALUES ('18', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'clear_alink', '1');
INSERT INTO `destoon_setting` VALUES ('18', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'fields', 'itemid,title,ontop,video,level,thumb,linkurl,style,catid,introduce,hits,addtime,edittime,username,passport,reply,replyer,replytime ');
INSERT INTO `destoon_setting` VALUES ('18', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('18', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('18', 'introduce_length', '0');
INSERT INTO `destoon_setting` VALUES ('18', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_fans', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_manage', '');
INSERT INTO `destoon_setting` VALUES ('18', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_join', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_reply', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my_group', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_fans', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_group', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('18', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('18', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_page}{$GRP[\'title\']}{$MOD[\'seo_name\']}{$seo_delimiter}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('18', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('18', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('18', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('18', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('18', 'module', 'club');
INSERT INTO `destoon_setting` VALUES ('18', 'mobile', 'http://demo.destoon.com/v7.0/mobile/club/');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('21', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('21', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('21', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'pre_view', '200');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_award', '100');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('21', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('21', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('21', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('21', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('21', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('21', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('21', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('21', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'show_np', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'max_width', '800');
INSERT INTO `destoon_setting` VALUES ('21', 'page_shits', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_srec', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_srecimg', '4');
INSERT INTO `destoon_setting` VALUES ('21', 'page_srelate', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_lhits', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_lrec', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_lrecimg', '4');
INSERT INTO `destoon_setting` VALUES ('21', 'show_lcat', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'page_child', '6');
INSERT INTO `destoon_setting` VALUES ('21', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('21', 'page_ihits', '10');
INSERT INTO `destoon_setting` VALUES ('21', 'page_irecimg', '6');
INSERT INTO `destoon_setting` VALUES ('21', 'show_icat', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'page_icat', '6');
INSERT INTO `destoon_setting` VALUES ('21', 'page_islide', '3');
INSERT INTO `destoon_setting` VALUES ('21', 'swfu', '2');
INSERT INTO `destoon_setting` VALUES ('21', 'fulltext', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'level', '推荐文章|幻灯图片|推荐图文|头条相关|头条推荐');
INSERT INTO `destoon_setting` VALUES ('21', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'keylink', '1');
INSERT INTO `destoon_setting` VALUES ('21', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('21', 'order', 'addtime desc');
INSERT INTO `destoon_setting` VALUES ('21', 'fields', 'itemid,title,thumb,linkurl,style,catid,introduce,addtime,edittime,username,islink,hits');
INSERT INTO `destoon_setting` VALUES ('21', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('21', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('21', 'thumb_height', '180');
INSERT INTO `destoon_setting` VALUES ('21', 'thumb_width', '240');
INSERT INTO `destoon_setting` VALUES ('21', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('21', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('21', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('21', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('21', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('21', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('21', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('21', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('21', 'module', 'article');
INSERT INTO `destoon_setting` VALUES ('21', 'mobile', 'http://demo.destoon.com/v7.0/mobile/news/');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_7', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_7', '100');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_6', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_6', '30');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_5', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_5', '3');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_4', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_4', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_3', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_3', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_2', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_2', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'free_limit_1', '-1');
INSERT INTO `destoon_setting` VALUES ('22', 'limit_1', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'credit_refresh', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'credit_color', '100');
INSERT INTO `destoon_setting` VALUES ('22', 'credit_del', '5');
INSERT INTO `destoon_setting` VALUES ('22', 'credit_add', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_award', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_back', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_period', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_view', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_add', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_currency', 'money');
INSERT INTO `destoon_setting` VALUES ('22', 'check_add', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'captcha_add', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'question_add', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'question_message', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'group_search', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'group_color', '7');
INSERT INTO `destoon_setting` VALUES ('22', 'group_refresh', '5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'captcha_message', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'group_contact', '6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_title_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'group_show', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'group_list', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_description_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'group_index', '3,5,6,7');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_description_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_title_show', '{内容标题}{分隔符}{分类名称}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_description_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_title_list', '{分类SEO标题}{页码}{模块名称}{分隔符}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_description_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'seo_title_index', '{模块名称}{分隔符}{页码}{网站名称}');
INSERT INTO `destoon_setting` VALUES ('22', 'php_item_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'htm_item_urlid', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'htm_item_prefix', '');
INSERT INTO `destoon_setting` VALUES ('22', 'php_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'show_html', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'htm_list_urlid', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'htm_list_prefix', '');
INSERT INTO `destoon_setting` VALUES ('22', 'list_html', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'page_comment', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'hits', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'max_width', '1000');
INSERT INTO `destoon_setting` VALUES ('22', 'page_srelate', '10');
INSERT INTO `destoon_setting` VALUES ('22', 'show_message', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'page_lkw', '10');
INSERT INTO `destoon_setting` VALUES ('22', 'show_larea', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'show_lcat', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('22', 'page_ihits', '9');
INSERT INTO `destoon_setting` VALUES ('22', 'show_iarea', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'show_icat', '1');
INSERT INTO `destoon_setting` VALUES ('22', 'page_icat', '8');
INSERT INTO `destoon_setting` VALUES ('22', 'page_irec', '12');
INSERT INTO `destoon_setting` VALUES ('22', 'page_subcat', '5');
INSERT INTO `destoon_setting` VALUES ('22', 'swfu', '2');
INSERT INTO `destoon_setting` VALUES ('22', 'level', '推荐信息');
INSERT INTO `destoon_setting` VALUES ('22', 'fulltext', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'split', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'message_ask', '请问我这个地方有加盟商了吗？|我想加盟，请来电话告诉我具体细节。|初步打算加盟贵公司，请寄资料。|请问贵公司哪里有样板店或直营店？|想了解加盟细节，请尽快寄一份资料。 ');
INSERT INTO `destoon_setting` VALUES ('22', 'cat_property', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'save_remotepic', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'clear_link', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'keylink', '0');
INSERT INTO `destoon_setting` VALUES ('22', 'fields', 'itemid,title,thumb,linkurl,style,catid,areaid,introduce,addtime,edittime,username,company,groupid,vip,qq,wx,ali,skype,validated,islink,hits');
INSERT INTO `destoon_setting` VALUES ('22', 'order', 'edittime desc');
INSERT INTO `destoon_setting` VALUES ('22', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('22', 'introduce_length', '120');
INSERT INTO `destoon_setting` VALUES ('22', 'thumb_height', '200');
INSERT INTO `destoon_setting` VALUES ('22', 'template_message', '');
INSERT INTO `destoon_setting` VALUES ('22', 'thumb_width', '200');
INSERT INTO `destoon_setting` VALUES ('22', 'template_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'template_my', '');
INSERT INTO `destoon_setting` VALUES ('22', 'template_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'template_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'template_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'title_index', '{$seo_modulename}{$seo_delimiter}{$seo_page}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('22', 'title_list', '{$seo_cattitle}{$seo_page}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('22', 'title_show', '{$seo_showtitle}{$seo_delimiter}{$seo_catname}{$seo_modulename}{$seo_delimiter}{$seo_sitename}');
INSERT INTO `destoon_setting` VALUES ('22', 'title_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'keywords_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'keywords_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'keywords_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'keywords_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'description_index', '');
INSERT INTO `destoon_setting` VALUES ('22', 'description_list', '');
INSERT INTO `destoon_setting` VALUES ('22', 'description_show', '');
INSERT INTO `destoon_setting` VALUES ('22', 'description_search', '');
INSERT INTO `destoon_setting` VALUES ('22', 'module', 'info');
INSERT INTO `destoon_setting` VALUES ('22', 'mobile', 'http://demo.destoon.com/v7.0/mobile/invest/');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'email', '');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'order', '1');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'name', '支付宝');
INSERT INTO `destoon_setting` VALUES ('pay-alipay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'order', '2');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'name', '支付宝');
INSERT INTO `destoon_setting` VALUES ('pay-aliwap', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'percent', '2');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'appid', '');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'order', '3');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'name', '微信支付');
INSERT INTO `destoon_setting` VALUES ('pay-weixin', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'order', '4');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'name', '财付通');
INSERT INTO `destoon_setting` VALUES ('pay-tenpay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'cert', '');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'order', '5');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'name', '中国银联');
INSERT INTO `destoon_setting` VALUES ('pay-upay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'order', '6');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'name', '网银在线');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-chinabank', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'order', '7');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'name', '易宝支付');
INSERT INTO `destoon_setting` VALUES ('pay-yeepay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'cert', '');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'order', '8');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'name', '快钱支付');
INSERT INTO `destoon_setting` VALUES ('pay-kq99bill', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'percent', '1');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'order', '9');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'name', '银联在线');
INSERT INTO `destoon_setting` VALUES ('pay-chinapay', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'percent', '0');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'currency', 'USD');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'keycode', '');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'notify', '');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'partnerid', '');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'order', '10');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'name', '贝宝');
INSERT INTO `destoon_setting` VALUES ('pay-paypal', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'sync', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'order', '1');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'name', 'QQ登录');
INSERT INTO `destoon_setting` VALUES ('oauth-qq', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'sync', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'order', '2');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'name', '新浪微博');
INSERT INTO `destoon_setting` VALUES ('oauth-sina', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'order', '3');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'name', '百度');
INSERT INTO `destoon_setting` VALUES ('oauth-baidu', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'order', '4');
INSERT INTO `destoon_setting` VALUES ('oauth-netease', 'name', '网易通行证');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'key', '');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'order', '5');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'name', '微信');
INSERT INTO `destoon_setting` VALUES ('oauth-wechat', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'id', '');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'order', '6');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'name', '淘宝');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'enable', '0');
INSERT INTO `destoon_setting` VALUES ('oauth-taobao', 'key', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'bind', '点击可绑定会员帐号、查看会员信息、收发站内信件、管理我的订单等服务内容');
INSERT INTO `destoon_setting` VALUES ('weixin', 'welcome', '感谢您的关注，请点击菜单查看相应的服务');
INSERT INTO `destoon_setting` VALUES ('weixin', 'auto', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'weixin', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'aeskey', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'apptoken', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'appsecret', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'appid', '');
INSERT INTO `destoon_setting` VALUES ('weixin', 'credit', '10');
INSERT INTO `destoon_setting` VALUES ('weixin-menu', 'menu', 'a:3:{i:0;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"最新\";s:3:\"key\";s:0:\"\";}i:1;a:2:{s:4:\"name\";s:6:\"资讯\";s:3:\"key\";s:7:\"V_mid21\";}i:2;a:2:{s:4:\"name\";s:6:\"供应\";s:3:\"key\";s:6:\"V_mid5\";}i:3;a:2:{s:4:\"name\";s:6:\"求购\";s:3:\"key\";s:6:\"V_mid6\";}i:4;a:2:{s:4:\"name\";s:6:\"商城\";s:3:\"key\";s:7:\"V_mid16\";}i:5;a:2:{s:4:\"name\";s:6:\"招商\";s:3:\"key\";s:7:\"V_mid22\";}}i:1;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"会员\";s:3:\"key\";s:8:\"V_member\";}i:1;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:3;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}}i:2;a:6:{i:0;a:2:{s:4:\"name\";s:6:\"更多\";s:3:\"key\";s:34:\"http://jpzzw.ja39.7890010.com/mobile/\";}i:1;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:2;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:3;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:4;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}i:5;a:2:{s:4:\"name\";s:0:\"\";s:3:\"key\";s:0:\"\";}}}');
INSERT INTO `destoon_setting` VALUES ('group-1', 'listorder', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'edit_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'refresh_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'day_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'hour_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'add_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'copy', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'delete', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'resume', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'moduleids', '16,5,6,17,7,8,21,22,13,9,10,12,14,15,18');
INSERT INTO `destoon_setting` VALUES ('group-1', 'link_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'honor_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'page_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'news_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'kf', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'stats', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'map', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'main_d', '1,5');
INSERT INTO `destoon_setting` VALUES ('group-1', 'main_c', '1,5');
INSERT INTO `destoon_setting` VALUES ('group-1', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'side_d', '0,3,6');
INSERT INTO `destoon_setting` VALUES ('group-1', 'side_c', '0,3,6');
INSERT INTO `destoon_setting` VALUES ('group-1', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'menu_d', '0,6,7,11');
INSERT INTO `destoon_setting` VALUES ('group-1', 'menu_c', '0,6,7,11');
INSERT INTO `destoon_setting` VALUES ('group-1', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'type_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'price_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'inquiry_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'message_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'promo_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'express_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'address_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'alert_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'favorite_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'friend_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'inbox_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'ad', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'spread', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'sms', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'sendmail', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'trade_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'group_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'mail', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'ask', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'cash', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'question', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'captcha', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'check', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadpt', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadcredit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadday', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadlimit', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadsize', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-1', 'upload', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('group-1', 'grade', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'biz', '1');
INSERT INTO `destoon_setting` VALUES ('group-1', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-1', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-1', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'listorder', '2');
INSERT INTO `destoon_setting` VALUES ('group-2', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'edit_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'refresh_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'day_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'hour_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'add_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'copy', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'delete', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'moduleids', '6');
INSERT INTO `destoon_setting` VALUES ('group-2', 'link_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'honor_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'page_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'news_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'map', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'main_d', '5');
INSERT INTO `destoon_setting` VALUES ('group-2', 'main_c', '5');
INSERT INTO `destoon_setting` VALUES ('group-2', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'side_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'side_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'menu_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'menu_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'type_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'price_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'inquiry_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'message_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'promo_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'express_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'address_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'alert_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'favorite_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'friend_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'inbox_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'chat', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'ad', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'group_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'trade_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'sendmail', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'sms', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'mail', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'ask', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadpt', '1');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadcredit', '10');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadday', '10');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadlimit', '2');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadsize', '200');
INSERT INTO `destoon_setting` VALUES ('group-2', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-2', 'upload', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'editor', 'Basic');
INSERT INTO `destoon_setting` VALUES ('group-2', 'grade', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'biz', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-2', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-2', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'listorder', '3');
INSERT INTO `destoon_setting` VALUES ('group-3', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'refresh_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'day_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-3', 'edit_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'hour_limit', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'add_limit', '30');
INSERT INTO `destoon_setting` VALUES ('group-3', 'copy', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'delete', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'moduleids', '5,6,8,22,9');
INSERT INTO `destoon_setting` VALUES ('group-3', 'link_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'honor_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'page_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'news_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'map', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'main_d', '5');
INSERT INTO `destoon_setting` VALUES ('group-3', 'main_c', '5');
INSERT INTO `destoon_setting` VALUES ('group-3', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'side_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'side_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'menu_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'menu_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'type_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'price_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-3', 'inquiry_limit', '30');
INSERT INTO `destoon_setting` VALUES ('group-3', 'message_limit', '30');
INSERT INTO `destoon_setting` VALUES ('group-3', 'promo_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'express_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'address_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'alert_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'favorite_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'friend_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'inbox_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'ad', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'group_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'trade_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'sendmail', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'sms', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'mail', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'ask', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadpt', '1');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadcredit', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadday', '10');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadlimit', '5');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadsize', '500');
INSERT INTO `destoon_setting` VALUES ('group-3', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-3', 'upload', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'editor', 'Basic');
INSERT INTO `destoon_setting` VALUES ('group-3', 'grade', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'biz', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-3', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-3', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'listorder', '4');
INSERT INTO `destoon_setting` VALUES ('group-4', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'edit_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'refresh_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'day_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'hour_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'add_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'copy', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'delete', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'moduleids', '6');
INSERT INTO `destoon_setting` VALUES ('group-4', 'link_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'honor_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'page_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'news_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'map', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'main_c', '5');
INSERT INTO `destoon_setting` VALUES ('group-4', 'main_d', '5');
INSERT INTO `destoon_setting` VALUES ('group-4', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'side_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'menu_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'menu_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'side_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'type_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'price_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'inquiry_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'message_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'promo_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'express_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'address_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'alert_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'favorite_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'friend_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'inbox_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'trade_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'group_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'ad', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'sendmail', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'sms', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'mail', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'ask', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadpt', '1');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadcredit', '5');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadday', '10');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadlimit', '5');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadsize', '500');
INSERT INTO `destoon_setting` VALUES ('group-4', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-4', 'upload', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'editor', 'Basic');
INSERT INTO `destoon_setting` VALUES ('group-4', 'grade', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'biz', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-4', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-4', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'listorder', '5');
INSERT INTO `destoon_setting` VALUES ('group-5', 'reg', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'type', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'edit_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-5', 'day_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-5', 'refresh_limit', '43200');
INSERT INTO `destoon_setting` VALUES ('group-5', 'hour_limit', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'add_limit', '60');
INSERT INTO `destoon_setting` VALUES ('group-5', 'copy', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'delete', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'resume', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'moduleids', '5,6,10,12,18');
INSERT INTO `destoon_setting` VALUES ('group-5', 'link_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'honor_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'page_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'news_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'map', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'main_d', '5');
INSERT INTO `destoon_setting` VALUES ('group-5', 'main_c', '5');
INSERT INTO `destoon_setting` VALUES ('group-5', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'side_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'side_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'menu_d', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'menu_c', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'homepage', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'type_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-5', 'price_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'inquiry_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-5', 'message_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-5', 'promo_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'express_limit', '-1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'address_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-5', 'alert_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-5', 'favorite_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-5', 'friend_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-5', 'inbox_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-5', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'ad', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'group_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'trade_order', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'sendmail', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'sms', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'mail', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'ask', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadpt', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadcredit', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadday', '20');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadlimit', '5');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadsize', '');
INSERT INTO `destoon_setting` VALUES ('group-5', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-5', 'upload', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'editor', 'Simple');
INSERT INTO `destoon_setting` VALUES ('group-5', 'grade', '1');
INSERT INTO `destoon_setting` VALUES ('group-5', 'biz', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-5', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-5', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'listorder', '6');
INSERT INTO `destoon_setting` VALUES ('group-6', 'reg', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'type', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'day_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'refresh_limit', '21600');
INSERT INTO `destoon_setting` VALUES ('group-6', 'edit_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'hour_limit', '2');
INSERT INTO `destoon_setting` VALUES ('group-6', 'add_limit', '60');
INSERT INTO `destoon_setting` VALUES ('group-6', 'copy', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'delete', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'vemail', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'moduleids', '16,5,6,17,7,8,22,13,9,10,12');
INSERT INTO `destoon_setting` VALUES ('group-6', 'link_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-6', 'honor_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-6', 'page_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'news_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-6', 'kf', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'map', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'stats', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'style', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'main_d', '0,1,2');
INSERT INTO `destoon_setting` VALUES ('group-6', 'main_c', '0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES ('group-6', 'home_main', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES ('group-6', 'side_d', '0,2,4,6');
INSERT INTO `destoon_setting` VALUES ('group-6', 'home_menu', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11');
INSERT INTO `destoon_setting` VALUES ('group-6', 'menu_d', '0,1,2,3,4,6,7');
INSERT INTO `destoon_setting` VALUES ('group-6', 'home_side', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'home', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'styleid', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'type_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-6', 'homepage', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'price_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-6', 'inquiry_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-6', 'message_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-6', 'promo_limit', '3');
INSERT INTO `destoon_setting` VALUES ('group-6', 'express_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'address_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-6', 'alert_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'favorite_limit', '50');
INSERT INTO `destoon_setting` VALUES ('group-6', 'friend_limit', '50');
INSERT INTO `destoon_setting` VALUES ('group-6', 'inbox_limit', '50');
INSERT INTO `destoon_setting` VALUES ('group-6', 'group_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'spread', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'ad', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'trade_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'sendmail', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'sms', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'mail', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'ask', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'cash', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'question', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'captcha', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'check', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadday', '50');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadcredit', '2');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadpt', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadlimit', '5');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadsize', '');
INSERT INTO `destoon_setting` VALUES ('group-6', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-6', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('group-6', 'upload', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'grade', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'biz', '1');
INSERT INTO `destoon_setting` VALUES ('group-6', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'discount', '100');
INSERT INTO `destoon_setting` VALUES ('group-6', 'fee', '0');
INSERT INTO `destoon_setting` VALUES ('group-6', 'fee_mode', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'listorder', '7');
INSERT INTO `destoon_setting` VALUES ('group-7', 'reg', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'type', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'edit_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'refresh_limit', '3600');
INSERT INTO `destoon_setting` VALUES ('group-7', 'day_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'hour_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-7', 'add_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'copy', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'delete', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vweixin', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vdeposit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vcompany', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vtruename', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vmobile', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'resume', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'vemail', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'moduleids', '16,5,6,17,7,8,21,22,13,9,10,12,14,15,18');
INSERT INTO `destoon_setting` VALUES ('group-7', 'link_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'kf', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'news_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'page_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'honor_limit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'stats', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'map', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'style', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'main_d', '0,1,2,7');
INSERT INTO `destoon_setting` VALUES ('group-7', 'main_c', '0,1,2,4,5,6,7');
INSERT INTO `destoon_setting` VALUES ('group-7', 'home_main', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'side_c', '0,1,2,3,4,5,6');
INSERT INTO `destoon_setting` VALUES ('group-7', 'side_d', '0,1,2,4,6');
INSERT INTO `destoon_setting` VALUES ('group-7', 'home_side', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'menu_d', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `destoon_setting` VALUES ('group-7', 'home', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'home_menu', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'menu_c', '0,1,2,3,4,5,6,7,8,9,10,11,12,13');
INSERT INTO `destoon_setting` VALUES ('group-7', 'styleid', '2');
INSERT INTO `destoon_setting` VALUES ('group-7', 'homepage', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'type_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-7', 'price_limit', '20');
INSERT INTO `destoon_setting` VALUES ('group-7', 'inquiry_limit', '50');
INSERT INTO `destoon_setting` VALUES ('group-7', 'message_limit', '100');
INSERT INTO `destoon_setting` VALUES ('group-7', 'promo_limit', '5');
INSERT INTO `destoon_setting` VALUES ('group-7', 'express_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'address_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'alert_limit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'favorite_limit', '100');
INSERT INTO `destoon_setting` VALUES ('group-7', 'friend_limit', '200');
INSERT INTO `destoon_setting` VALUES ('group-7', 'inbox_limit', '500');
INSERT INTO `destoon_setting` VALUES ('group-7', 'chat', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'ad', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'spread', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'group_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'trade_order', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'sendmail', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'sms', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'mail', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'ask', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'cash', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'question', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'captcha', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'check', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadpt', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadcredit', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadday', '100');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadlimit', '10');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadsize', '');
INSERT INTO `destoon_setting` VALUES ('group-7', 'uploadtype', '');
INSERT INTO `destoon_setting` VALUES ('group-7', 'upload', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'editor', 'Destoon');
INSERT INTO `destoon_setting` VALUES ('group-7', 'grade', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'biz', '1');
INSERT INTO `destoon_setting` VALUES ('group-7', 'commission', '0');
INSERT INTO `destoon_setting` VALUES ('group-7', 'discount', '');
INSERT INTO `destoon_setting` VALUES ('group-7', 'fee', '2000');
INSERT INTO `destoon_setting` VALUES ('group-7', 'fee_mode', '1');
INSERT INTO `destoon_setting` VALUES ('destoon', 'backtime', '1623116605');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_ssl', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_pass', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_user', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_port', '21');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_host', '');
INSERT INTO `destoon_setting` VALUES ('1', 'ftp_remote', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'max_len', '50000');
INSERT INTO `destoon_setting` VALUES ('1', 'schcate_limit', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'pagesize', '20');
INSERT INTO `destoon_setting` VALUES ('1', 'online', '1200');
INSERT INTO `destoon_setting` VALUES ('1', 'pushtime', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'max_kw', '32');
INSERT INTO `destoon_setting` VALUES ('1', 'search_limit', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'min_kw', '3');
INSERT INTO `destoon_setting` VALUES ('1', 'search_check_kw', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'search_kw', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'save_draft', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'search_tips', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'anti_spam', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'log_credit', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'lazy', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'pages_mode', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'gzip_enable', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'cache_hits', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'cache_search', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'task_item', '86400');
INSERT INTO `destoon_setting` VALUES ('1', 'task_list', '1800');
INSERT INTO `destoon_setting` VALUES ('1', 'task_index', '600');
INSERT INTO `destoon_setting` VALUES ('1', 'log_404', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'search_rewrite', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'pcharset', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'com_https', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'rewrite', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'com_www', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'file_ext', 'html');
INSERT INTO `destoon_setting` VALUES ('1', 'index_html', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'seo_description', '精品模板网');
INSERT INTO `destoon_setting` VALUES ('1', 'index', 'index');
INSERT INTO `destoon_setting` VALUES ('1', 'seo_keywords', '精品模板网');
INSERT INTO `destoon_setting` VALUES ('1', 'seo_delimiter', '_');
INSERT INTO `destoon_setting` VALUES ('1', 'seo_title', '精品模板网');
INSERT INTO `destoon_setting` VALUES ('1', 'im_skype', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'im_ali', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'im_wx', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'im_qq', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'im_web', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_left', '218');
INSERT INTO `destoon_setting` VALUES ('1', 'max_cart', '50');
INSERT INTO `destoon_setting` VALUES ('1', 'quick_pay', '200');
INSERT INTO `destoon_setting` VALUES ('1', 'credit_unit', '点');
INSERT INTO `destoon_setting` VALUES ('1', 'credit_name', '积分');
INSERT INTO `destoon_setting` VALUES ('1', 'money_sign', '￥');
INSERT INTO `destoon_setting` VALUES ('1', 'money_unit', '元');
INSERT INTO `destoon_setting` VALUES ('1', 'money_name', '资金');
INSERT INTO `destoon_setting` VALUES ('1', 'city_ip', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'city', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'close_reason', '网站维护中，请稍候访问...');
INSERT INTO `destoon_setting` VALUES ('1', 'close', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'icpno', '豫ICP备0000000号-0');
INSERT INTO `destoon_setting` VALUES ('1', 'telephone', '18888888888');
INSERT INTO `destoon_setting` VALUES ('1', 'copyright', '(c)2008-2018 中企 B2B SYSTEM All Rights Reserved');
INSERT INTO `destoon_setting` VALUES ('1', 'logo', 'http://jpzzw.ja39.7890010.com/file/upload/202106/19/084833391.png');
INSERT INTO `destoon_setting` VALUES ('1', 'sitename', '精品模板网');
INSERT INTO `destoon_setting` VALUES ('1', 'page_sell', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'page_info', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'page_group', '10');
INSERT INTO `destoon_setting` VALUES ('1', 'page_newst', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'page_newsh', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'page_news', '6');
INSERT INTO `destoon_setting` VALUES ('1', 'page_special', '1');
INSERT INTO `destoon_setting` VALUES ('1', 'page_video', '3');
INSERT INTO `destoon_setting` VALUES ('1', 'page_photo', '3');
INSERT INTO `destoon_setting` VALUES ('1', 'page_brand', '16');
INSERT INTO `destoon_setting` VALUES ('1', 'page_exhibit', '6');
INSERT INTO `destoon_setting` VALUES ('1', 'page_job', '5');
INSERT INTO `destoon_setting` VALUES ('1', 'page_know', '6');
INSERT INTO `destoon_setting` VALUES ('1', 'page_down', '3');
INSERT INTO `destoon_setting` VALUES ('1', 'page_club', '8');
INSERT INTO `destoon_setting` VALUES ('1', 'page_logo', '18');
INSERT INTO `destoon_setting` VALUES ('1', 'page_text', '18');
INSERT INTO `destoon_setting` VALUES ('1', 'sms', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_fee', '0.1');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_max', '5');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_len', '70');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_ok', '成功');
INSERT INTO `destoon_setting` VALUES ('1', 'sms_sign', '');
INSERT INTO `destoon_setting` VALUES ('1', 'cloud_express', '0');
INSERT INTO `destoon_setting` VALUES ('1', 'trade_pw', '');
INSERT INTO `destoon_setting` VALUES ('1', 'admin_week', '');
INSERT INTO `destoon_setting` VALUES ('1', 'check_week', '');

-- ----------------------------
-- Table structure for destoon_sms
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sms`;
CREATE TABLE `destoon_sms`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `word` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sendtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_sms
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_special_11
-- ----------------------------
DROP TABLE IF EXISTS `destoon_special_11`;
CREATE TABLE `destoon_special_11`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `items` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cfg_photo` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_video` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_type` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `template_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_special_11
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_special_data_11
-- ----------------------------
DROP TABLE IF EXISTS `destoon_special_data_11`;
CREATE TABLE `destoon_special_data_11`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_special_data_11
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_special_item_11
-- ----------------------------
DROP TABLE IF EXISTS `destoon_special_item_11`;
CREATE TABLE `destoon_special_item_11`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `specialid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `specialid`(`specialid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专题信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_special_item_11
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_sphinx
-- ----------------------------
DROP TABLE IF EXISTS `destoon_sphinx`;
CREATE TABLE `destoon_sphinx`  (
  `moduleid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `moduleid`(`moduleid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Sphinx' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of destoon_sphinx
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_spread
-- ----------------------------
DROP TABLE IF EXISTS `destoon_spread`;
CREATE TABLE `destoon_spread`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `tid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `word` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT 0,
  `currency` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '排名推广' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_spread
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_spread_price
-- ----------------------------
DROP TABLE IF EXISTS `destoon_spread_price`;
CREATE TABLE `destoon_spread_price`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `word` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '排名起价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_spread_price
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_style
-- ----------------------------
DROP TABLE IF EXISTS `destoon_style`;
CREATE TABLE `destoon_style`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `skin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `groupid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `currency` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `money` float NOT NULL DEFAULT 0,
  `credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公司主页模板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_style
-- ----------------------------
INSERT INTO `destoon_style` VALUES (1, 0, '默认模板', 'default', 'homepage', 'DESTOON.COM', ',6,7,', 0, 'money', 0, 0, 0, 1623116605, 'destoon', 1623116605, 0);
INSERT INTO `destoon_style` VALUES (2, 0, '深蓝模板', 'blue', 'homepage', 'DESTOON.COM', ',6,7,', 0, 'money', 0, 0, 0, 1623116605, 'destoon', 1623116605, 0);
INSERT INTO `destoon_style` VALUES (3, 0, '绿色模板', 'green', 'homepage', 'DESTOON.COM', ',6,7,', 0, 'money', 0, 0, 0, 1623116605, 'destoon', 1623116605, 0);
INSERT INTO `destoon_style` VALUES (4, 0, '紫色模板', 'purple', 'homepage', 'DESTOON.COM', ',6,7,', 0, 'money', 0, 0, 0, 1623116605, 'destoon', 1623116605, 0);
INSERT INTO `destoon_style` VALUES (5, 0, '橙色模板', 'orange', 'homepage', 'DESTOON.COM', ',6,7,', 0, 'money', 0, 0, 0, 1623116605, 'destoon', 1623116605, 0);

-- ----------------------------
-- Table structure for destoon_type
-- ----------------------------
DROP TABLE IF EXISTS `destoon_type`;
CREATE TABLE `destoon_type`  (
  `typeid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parentid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) NOT NULL DEFAULT 0,
  `typename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `item` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cache` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`typeid`) USING BTREE,
  INDEX `listorder`(`listorder`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_type
-- ----------------------------
INSERT INTO `destoon_type` VALUES (1, 0, 0, '友情链接', '', 'link', 1);
INSERT INTO `destoon_type` VALUES (2, 0, 1, '行业导航', '', 'link', 1);
INSERT INTO `destoon_type` VALUES (3, 0, 2, '行业分站', '', 'link', 1);

-- ----------------------------
-- Table structure for destoon_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upgrade`;
CREATE TABLE `destoon_upgrade`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `gid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `groupid` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `amount` float NOT NULL DEFAULT 0,
  `message` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员升级' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upgrade
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_0
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_0`;
CREATE TABLE `destoon_upload_0`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录0' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_0
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_1
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_1`;
CREATE TABLE `destoon_upload_1`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录1' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_1
-- ----------------------------
INSERT INTO `destoon_upload_1` VALUES (1, '7bd736b60af61954b8a8ff927166e422', 'ad', 3, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/08/153325941.jpg', 40366, 'jpg', 'thumb', 660, 300, 1623137605, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (2, 'd3e99259e9846962d63698b8b48c2933', 'ad', 3, 2, 'http://jpzzw.ja39.7890010.com/file/upload/202106/08/153415431.jpg', 56060, 'jpg', 'thumb', 660, 300, 1623137655, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (3, '79eec5b96fb485c2d2eed1a0188a9734', '', 16, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080652971.jpg.thumb.jpg', 4139, 'jpg', 'album', 100, 100, 1623197212, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (4, '57436abac748b4364124226df4754ecb', '', 16, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080729521.jpg.thumb.jpg', 4139, 'jpg', 'album', 100, 100, 1623197249, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (5, '37192738f49baa083675467764234d99', '', 16, 2, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080911461.jpg.thumb.jpg', 9598, 'jpg', 'album', 242, 150, 1623197351, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (6, '72c334a23c01492adbd59df54c1be958', '', 16, 2, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/080914611.jpg.thumb.jpg', 9598, 'jpg', 'album', 242, 150, 1623197354, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (7, 'd44c713e6cd53456cca4c67a7cbe8be1', '', 16, 3, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/081245851.png.thumb.png', 122332, 'png', 'album', 272, 171, 1623197565, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (8, '669ce1459d8df48ea773ee9e5d7c6f99', '', 16, 3, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/081248971.png.thumb.png', 122332, 'png', 'album', 272, 171, 1623197568, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (9, 'a9f971f307e471d1f46dd221a7b57f41', '', 16, 4, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/084915441.png.thumb.png', 122332, 'png', 'album', 272, 171, 1623199755, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (12, '51829048db34f500cdad4da0db4aa7a8', '', 6, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/103239171.png.thumb.png', 59273, 'png', 'album', 371, 227, 1623205959, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (11, 'bb9cf8376490255439a1a82d9a07116f', '', 16, 5, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/085815491.png.thumb.png', 59273, 'png', 'album', 371, 227, 1623200295, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (13, 'f4b9a0657d4a6701519e17de3090556d', '', 6, 2, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/103421611.png.thumb.png', 59273, 'png', 'album', 371, 227, 1623206061, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (14, 'a6b03b755a26fe71e6be7cc09d96e73f', '', 6, 3, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/105749191.png.thumb.png', 59273, 'png', 'album', 371, 227, 1623207469, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (15, '929cc101c9a9817a1f6d80b378cf22e0', '', 6, 4, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/111843971.png.thumb.png', 59273, 'png', 'album', 371, 227, 1623208723, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (17, '833b01b5d4a0841579435a6194f855de', '', 5, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/112751931.jpg.thumb.jpg', 4139, 'jpg', 'album', 100, 100, 1623209271, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (18, '0867c978fc614bb4be12a26858e84e73', '', 5, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/112754411.jpg.thumb.jpg', 4139, 'jpg', 'album', 100, 100, 1623209274, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (19, '1454aa34e3d7a40c7538dd0f46ec3eca', '', 5, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/112800621.jpg.thumb.jpg', 4139, 'jpg', 'album', 100, 100, 1623209280, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (21, '6824c141b023e1a1ac8e7335b818b0e3', '', 6, 5, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/141803331.png.thumb.png', 59273, 'png', 'album', 371, 227, 1623219483, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (22, '428ce8f60c4864f3b242fc275307a7cf', '', 6, 6, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/144716411.png.thumb.png', 465766, 'png', 'album', 404, 542, 1623221236, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (23, '97f251b34f716a030900081edca51854', '', 6, 7, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/144927221.png.thumb.png', 465766, 'png', 'album', 404, 542, 1623221367, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (24, '35fd773712c18c882c8e08f919ad97a1', 'ad_place', 3, 26, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/150524881.png', 262623, 'png', 'thumb', 1200, 90, 1623222324, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (25, 'cfaed1d5114f724ff0c04b9a33e8b53c', 'ad', 3, 8, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/150745811.png', 262623, 'png', 'thumb', 1200, 90, 1623222465, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (33, '08650c897f85b7413852344e9e6c9909', 'ad', 3, 9, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/154520431.jpg', 38892, 'jpg', 'thumb', 221, 408, 1623224720, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (34, '358a93e8ac5f36fa78ebf29401c394be', 'ad', 3, 10, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/155749201.jpg', 38892, 'jpg', 'thumb', 221, 408, 1623225469, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (36, 'd408910d619f4a8e3a915977cf39aabf', 'ad', 3, 11, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/155805621.jpg', 38892, 'jpg', 'thumb', 221, 408, 1623225485, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (37, '994b146447a7ffe833066c6297c8566a', 'ad', 3, 12, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/155821161.jpg', 30761, 'jpg', 'thumb', 229, 405, 1623225501, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (38, 'c7d0cfb6ba7975abd2f8cd33c1549bb8', 'ad', 3, 13, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/155830471.jpg', 30761, 'jpg', 'thumb', 229, 405, 1623225510, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (39, '4ec4596731d4ad84aa83b5659b0c25c8', 'ad', 3, 14, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/161410981.gif', 63034, 'gif', 'thumb', 1200, 90, 1623226450, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (41, '701895061c2942e387a8ce21cdbd5d5e', 'ad', 3, 15, 'http://jpzzw.ja39.7890010.com/file/upload/202106/09/161610871.jpg', 24429, 'jpg', 'thumb', 1200, 90, 1623226570, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (42, 'ea676bfccf5a3437978b2bee64036502', '', 16, 6, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/110906881.jpg.thumb.jpg', 9101, 'jpg', 'album', 242, 150, 1623294546, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (43, '61b40167532eefc3190ec2149fd966f6', '', 16, 6, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/110909321.jpg.thumb.jpg', 9101, 'jpg', 'album', 242, 150, 1623294549, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (44, '00c90f23c0aaea9e61510fa2f91ab718', '', 16, 6, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/110911951.jpg.thumb.jpg', 9101, 'jpg', 'album', 242, 150, 1623294551, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (45, '093dbfd3229a358fe267ef33836cef34', 'ad', 3, 16, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/115257741.png', 262623, 'png', 'thumb', 1200, 90, 1623297177, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (58, '227f989a5a97ac6280963ab9459ce36a', '', 13, 4, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150337661.jpg', 16226, 'jpg', 'thumb', 100, 80, 1623308617, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (59, '7c356d33d2b6e65425fa79737851d152', '', 13, 5, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150347201.jpg', 18212, 'jpg', 'thumb', 120, 80, 1623308627, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (57, '50268f86def0711a02f1d1f17f11deb8', '', 13, 7, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150325761.jpg', 29774, 'jpg', 'thumb', 150, 100, 1623308605, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (56, '89fdd7cba248dc64ff2e1492b8daa39f', '', 13, 3, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150259201.jpg', 124434, 'jpg', 'thumb', 906, 600, 1623308579, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (52, '791968d0a160f4ca34d6c92cadb12b47', '', 13, 9, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/144826391.jpg', 29774, 'jpg', 'thumb', 150, 100, 1623307706, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (53, 'a0b4c95dfe0ca67fdd337262e2044a30', '', 22, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/145446331.jpg.thumb.jpg', 42412, 'jpg', 'album', 390, 240, 1623308086, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (54, '5bf9f1e48a6e82a466053cca7e277459', '', 22, 2, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/145523261.jpg.thumb.jpg', 42412, 'jpg', 'album', 390, 240, 1623308123, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (55, 'ca7e90b01ea672557b9dad863b179d6d', '', 22, 3, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/145551861.jpg.thumb.jpg', 42412, 'jpg', 'album', 390, 240, 1623308151, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (60, '3c7c631c4a90a3f0d163590a2fb3c643', '', 13, 2, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150410931.jpg', 18212, 'jpg', 'thumb', 120, 80, 1623308650, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (61, '2a15f663aebdef2cdf59dd30eed829fc', '', 13, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150423931.jpg', 17143, 'jpg', 'thumb', 120, 80, 1623308663, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (62, '758ccf20080fe0f65ea2c5af7a93ecb4', 'ad', 3, 17, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/150547931.gif', 63034, 'gif', 'thumb', 1200, 90, 1623308747, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (64, '2cdc74d0d529020c9f06334c4856a0b8', '', 8, 2, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/152533781.jpg', 69775, 'jpg', 'thumb', 640, 419, 1623309933, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (65, '5059a674fb113254bfdf06a11eed8ab4', '', 8, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/10/152544131.jpg', 69775, 'jpg', 'thumb', 640, 419, 1623309944, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (76, 'f22933559a91c8e3e884c6b8af3f9be6', '', 21, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/090103331.png', 828650, 'png', 'thumb', 946, 411, 1623373263, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (75, '895ac43a3ca0ee3cd2b3406e5365500a', '', 21, 2, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/090029271.png', 828650, 'png', 'thumb', 946, 411, 1623373229, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (70, '57979c91cb5270b8b53eaf42dc9de04d', '', 21, 3, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084412271.png', 60124, 'png', 'thumb', 240, 180, 1623372252, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (71, '7d886819b2d7c0c196a5e82c9a3f44c1', '', 21, 4, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084439461.png', 242466, 'png', 'thumb', 619, 410, 1623372279, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (72, '1e4784fc4738f4700b253925bfc8b2aa', '', 21, 5, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084535531.jpg', 69775, 'jpg', 'thumb', 640, 419, 1623372335, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (73, '6a2b811704e94983da5f4101b89bee31', '', 21, 6, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084610261.jpg', 23694, 'jpg', 'thumb', 240, 180, 1623372370, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (74, 'b810f39bad174647d6778f3a8e1dc54b', '', 21, 7, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/084715321.png', 59454, 'png', 'thumb', 240, 180, 1623372435, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (78, 'a54d5c58f000a559e736105cfdf4c53e', 'setting', 1, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/143408431.png', 10495, 'png', 'thumb', 394, 47, 1623393248, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (82, '0f350c0923a8500fb7de55c75e23f575', 'ad', 3, 18, 'http://jpzzw.ja39.7890010.com/file/upload/202106/15/092433271.png', 614019, 'png', 'thumb', 446, 535, 1623720273, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (81, 'd0bece70d9719ec775ab29c3a348d079', 'ad', 3, 19, 'http://jpzzw.ja39.7890010.com/file/upload/202106/11/180124941.png', 405705, 'png', 'thumb', 360, 515, 1623405684, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (83, '1c0acabe4b495495150adec6ac9d7365', 'ad', 3, 20, 'http://jpzzw.ja39.7890010.com/file/upload/202106/15/092526741.png', 306757, 'png', 'thumb', 424, 507, 1623720326, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (84, '79d160b51c26de18fe68f255ab4e86d4', 'ad', 3, 21, 'http://jpzzw.ja39.7890010.com/file/upload/202106/15/093718461.jpg', 24429, 'jpg', 'thumb', 1200, 90, 1623721038, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (85, '7053f1324852af27efad85502f0146bd', '', 21, 9, 'http://jpzzw.ja39.7890010.com/file/upload/202106/16/103912581.jpeg', 40518, 'jpeg', 'thumb', 640, 384, 1623811152, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (86, '20d199295a037b05b8dac26fb9cd2046', '', 21, 10, 'http://jpzzw.ja39.7890010.com/file/upload/202106/16/110300771.jpeg', 40518, 'jpeg', 'thumb', 640, 384, 1623812580, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (87, '306b14580d60eb02372aa6b43476d851', '', 21, 11, 'http://jpzzw.ja39.7890010.com/file/upload/202106/16/110852831.jpeg', 51210, 'jpeg', 'editor', 640, 427, 1623812932, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (88, '5ad73bbef542c60ce89aa46784c68c89', '', 21, 11, 'http://jpzzw.ja39.7890010.com/file/upload/202106/16/110948671.jpeg', 51210, 'jpeg', 'thumb', 640, 427, 1623812988, 'destoon', '127.0.0.1');
INSERT INTO `destoon_upload_1` VALUES (90, '14010a834203f7a7fa3da7572582ff25', 'setting', 1, 1, 'http://jpzzw.ja39.7890010.com/file/upload/202106/19/084833391.png', 10495, 'png', 'thumb', 394, 47, 1624063713, 'destoon', '1.199.119.251');

-- ----------------------------
-- Table structure for destoon_upload_2
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_2`;
CREATE TABLE `destoon_upload_2`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录2' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_2
-- ----------------------------
INSERT INTO `destoon_upload_2` VALUES (1, 'd3a651f2b6a5fe5688abbbac8e2bdd2d', '', 16, 7, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/100325132.png.thumb.png', 688925, 'png', 'album', 567, 533, 1623895405, 'zq78900', '127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES (2, 'db9a9c0b47413d57c90dd6f1dcdfc335', '', 16, 7, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/100330972.png.thumb.png', 688925, 'png', 'album', 567, 533, 1623895410, 'zq78900', '127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES (3, '9e604ce863d6873c417529afc3d60335', '', 16, 8, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/170938832.jpg.thumb.jpg', 27423, 'jpg', 'album', 420, 530, 1623920978, 'zq78900', '127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES (4, '8da177c228c8a7fae18109cc8a1ddafc', '', 16, 8, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/170942342.jpeg.thumb.jpeg', 51210, 'jpeg', 'album', 640, 427, 1623920982, 'zq78900', '127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES (5, '2b388828389f2596e08c4b341c65caf9', '', 16, 8, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/170946732.jpg.thumb.jpg', 27423, 'jpg', 'album', 420, 530, 1623920986, 'zq78900', '127.0.0.1');
INSERT INTO `destoon_upload_2` VALUES (6, 'ea63d9ef0cf369312b3b93e35cc719d5', '', 16, 9, 'http://jpzzw.ja39.7890010.com/file/upload/202106/17/172104552.png.thumb.png', 131632, 'png', 'album', 368, 341, 1623921664, 'zq78900', '127.0.0.1');

-- ----------------------------
-- Table structure for destoon_upload_3
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_3`;
CREATE TABLE `destoon_upload_3`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录3' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_3
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_4
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_4`;
CREATE TABLE `destoon_upload_4`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录4' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_4
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_5
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_5`;
CREATE TABLE `destoon_upload_5`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录5' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_5
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_6
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_6`;
CREATE TABLE `destoon_upload_6`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录6' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_6
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_7
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_7`;
CREATE TABLE `destoon_upload_7`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录7' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_7
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_8
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_8`;
CREATE TABLE `destoon_upload_8`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录8' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_8
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_upload_9
-- ----------------------------
DROP TABLE IF EXISTS `destoon_upload_9`;
CREATE TABLE `destoon_upload_9`  (
  `pid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tb` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moduleid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `fileurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fileext` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `upfrom` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `width` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `item`(`item`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传记录9' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_upload_9
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_validate
-- ----------------------------
DROP TABLE IF EXISTS `destoon_validate`;
CREATE TABLE `destoon_validate`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `thumb2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资料认证' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_validate
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_video_14
-- ----------------------------
DROP TABLE IF EXISTS `destoon_video_14`;
CREATE TABLE `destoon_video_14`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fee` float NOT NULL DEFAULT 0,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `album` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pptword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mobile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `filepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `catid`(`catid`) USING BTREE,
  INDEX `album`(`album`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_video_14
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_video_data_14
-- ----------------------------
DROP TABLE IF EXISTS `destoon_video_data_14`;
CREATE TABLE `destoon_video_data_14`  (
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '视频内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_video_data_14
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_vote
-- ----------------------------
DROP TABLE IF EXISTS `destoon_vote`;
CREATE TABLE `destoon_vote`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typeid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `groupid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verify` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `choose` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vote_min` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `vote_max` smallint(2) UNSIGNED NOT NULL DEFAULT 0,
  `votes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `totime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `linkto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template_vote` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s7` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s8` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s9` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `s10` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `v1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `v10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投票' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_vote
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_vote_record
-- ----------------------------
DROP TABLE IF EXISTS `destoon_vote_record`;
CREATE TABLE `destoon_vote_record`  (
  `rid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `votetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `votes` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`) USING BTREE,
  INDEX `itemid`(`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投票记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_vote_record
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_webpage
-- ----------------------------
DROP TABLE IF EXISTS `destoon_webpage`;
CREATE TABLE `destoon_webpage`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `areaid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder` smallint(4) NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `islink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `template` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单网页' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_webpage
-- ----------------------------
INSERT INTO `destoon_webpage` VALUES (1, '1', 0, 0, '关于我们', '', '关于我们', '', '', '', 'destoon', 1319006891, 5, 0, 0, 'about/index.html', '', '');
INSERT INTO `destoon_webpage` VALUES (2, '1', 0, 0, '联系方式', '', '联系方式', '', '', '', 'destoon', 1310696453, 4, 0, 0, 'about/contact.html', '', '');
INSERT INTO `destoon_webpage` VALUES (3, '1', 0, 0, '使用协议', '', '使用协议', '', '', '', 'destoon', 1310696460, 3, 0, 0, 'about/agreement.html', '', '');
INSERT INTO `destoon_webpage` VALUES (4, '1', 0, 0, '版权隐私', '', '版权隐私', '', '', '', 'destoon', 1310696468, 2, 0, 0, 'about/copyright.html', '', '');

-- ----------------------------
-- Table structure for destoon_weixin_auto
-- ----------------------------
DROP TABLE IF EXISTS `destoon_weixin_auto`;
CREATE TABLE `destoon_weixin_auto`  (
  `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `keyword`(`keyword`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信回复' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_weixin_auto
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_weixin_bind
-- ----------------------------
DROP TABLE IF EXISTS `destoon_weixin_bind`;
CREATE TABLE `destoon_weixin_bind`  (
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信扫码绑定' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_weixin_bind
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_weixin_chat
-- ----------------------------
DROP TABLE IF EXISTS `destoon_weixin_chat`;
CREATE TABLE `destoon_weixin_chat`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `editor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `misc` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `openid`(`openid`) USING BTREE,
  INDEX `addtime`(`addtime`) USING BTREE,
  INDEX `event`(`event`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_weixin_chat
-- ----------------------------

-- ----------------------------
-- Table structure for destoon_weixin_user
-- ----------------------------
DROP TABLE IF EXISTS `destoon_weixin_user`;
CREATE TABLE `destoon_weixin_user`  (
  `itemid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sex` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `language` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addtime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `visittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `credittime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subscribe` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `push` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`itemid`) USING BTREE,
  UNIQUE INDEX `openid`(`openid`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destoon_weixin_user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
