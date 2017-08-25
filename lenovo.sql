/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : lenovo

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-12-29 17:40:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yzm_address`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_address`;
CREATE TABLE `yzm_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_address
-- ----------------------------
INSERT INTO `yzm_address` VALUES ('1', '2', '白云', '110', '山西，太原，草坪', '老鼠洞', 'a@qq.com');
INSERT INTO `yzm_address` VALUES ('2', '1', '黑土', '120', '山西，太原，网吧', '网吧', 'b@qq.com');

-- ----------------------------
-- Table structure for `yzm_admin`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_admin`;
CREATE TABLE `yzm_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `statu` tinyint(1) DEFAULT NULL,
  `logintime` int(11) DEFAULT NULL,
  `loginnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_admin
-- ----------------------------
INSERT INTO `yzm_admin` VALUES ('1', 'qw11212', 'a8c4b738e1f56f7082c37abfab2f3a7c', '1482736578', '0', null, null);
INSERT INTO `yzm_admin` VALUES ('2', 'admin', '4297f44b13955235245b2497399d7a93', '1482736593', '0', '1482911323', '1');
INSERT INTO `yzm_admin` VALUES ('3', 'zhijun', '202cb962ac59075b964b07152d234b70', '1482911249', '0', '1482991767', '2');

-- ----------------------------
-- Table structure for `yzm_ads`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_ads`;
CREATE TABLE `yzm_ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_ads
-- ----------------------------
INSERT INTO `yzm_ads` VALUES ('1', 'QWQWQwq', '58636abccca51.jpg', 'wqwqwqwq');
INSERT INTO `yzm_ads` VALUES ('2', 'QWQWQwq', '58636aca6baab.jpg', 'wqwqwqwq');
INSERT INTO `yzm_ads` VALUES ('3', 'QWQWQwq', '58636ad2ebf5a.jpg', 'wqwqwqwq');
INSERT INTO `yzm_ads` VALUES ('4', 'QWQWQwq', '58636adb5b4d3.jpg', 'wqwqwqwq');
INSERT INTO `yzm_ads` VALUES ('5', 'QWQWQwq', '58636ae72776d.jpg', 'wqwqwqwq');
INSERT INTO `yzm_ads` VALUES ('6', 'sasa', '5864bc254ba4c.jpg', 'sasasa');
INSERT INTO `yzm_ads` VALUES ('7', 'sasawqwq', '5864bc324923b.jpg', 'sasasaaqwwq');

-- ----------------------------
-- Table structure for `yzm_brand`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_brand`;
CREATE TABLE `yzm_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_brand
-- ----------------------------
INSERT INTO `yzm_brand` VALUES ('1', '小米', '5864adbb6ae1b.jpg', '001');
INSERT INTO `yzm_brand` VALUES ('2', '华为', '5864adcd546d4.jpg', '002');
INSERT INTO `yzm_brand` VALUES ('3', 'NW', '5864addd49e84.jpg', '003');
INSERT INTO `yzm_brand` VALUES ('4', 'NU', '5864ade7cd287.jpg', '003');
INSERT INTO `yzm_brand` VALUES ('5', '速写', '5864ae0e11372.jpg', '速写速写速写');
INSERT INTO `yzm_brand` VALUES ('6', 'NB', '5864ae2789334.jpg', '速写速写速写');
INSERT INTO `yzm_brand` VALUES ('7', '海尔', '5864ae4051a35.jpg', '');

-- ----------------------------
-- Table structure for `yzm_classads`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_classads`;
CREATE TABLE `yzm_classads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `pos` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_classads
-- ----------------------------
INSERT INTO `yzm_classads` VALUES ('2', 'wqwqwq', '5864bfeed37f4.jpg', 'wqwqwqwq', '12', '0');
INSERT INTO `yzm_classads` VALUES ('3', 'wqwqwq', '5864bff727bce.jpg', 'wqwqwqwq', '12', '0');
INSERT INTO `yzm_classads` VALUES ('4', 'wqwqwq', '5864c007d4942.jpg', 'wqwqwqwqwq', '13', '0');
INSERT INTO `yzm_classads` VALUES ('5', 'wqwqwq', '5864c01a1c435.jpg', 'wqwqwqwqwq', '13', '0');
INSERT INTO `yzm_classads` VALUES ('6', '12121', '5864c02d162e3.jpg', '2121212', '14', '0');
INSERT INTO `yzm_classads` VALUES ('7', '12121', '5864c03485db5.jpg', '2121212', '14', '0');
INSERT INTO `yzm_classads` VALUES ('8', 'saqwqwq', '5864c25261f75.jpg', 'wqwqwqwq', '12', '1');
INSERT INTO `yzm_classads` VALUES ('9', 'saqwqwq', '5864c25be5b0f.jpg', 'wqwqwqwq', '13', '1');
INSERT INTO `yzm_classads` VALUES ('10', 'saqwqwq', '5864c263b3fed.jpg', 'wqwqwqwq', '14', '1');

-- ----------------------------
-- Table structure for `yzm_classs`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_classs`;
CREATE TABLE `yzm_classs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `path` varchar(50) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_classs
-- ----------------------------
INSERT INTO `yzm_classs` VALUES ('12', '电脑', '0', '0,', '电脑');
INSERT INTO `yzm_classs` VALUES ('13', '手机', '0', '0,', '手机手机');
INSERT INTO `yzm_classs` VALUES ('14', '衣服', '0', '0,', '衣服');
INSERT INTO `yzm_classs` VALUES ('15', '笔记本', '12', '0,12,', '笔记本笔记本笔记本笔记本笔记本笔记本');
INSERT INTO `yzm_classs` VALUES ('16', '台式机', '12', '0,12,', '台式机台式机台式机台式机台式机台式机');
INSERT INTO `yzm_classs` VALUES ('17', '老人机', '13', '0,13,', '老人机');
INSERT INTO `yzm_classs` VALUES ('18', '智能机', '13', '0,13,', '智能机智能机智能机智能机');
INSERT INTO `yzm_classs` VALUES ('19', '男装', '14', '0,14,', '男装');
INSERT INTO `yzm_classs` VALUES ('20', '女装', '14', '0,14,', '女装女装女装女装女装女装');
INSERT INTO `yzm_classs` VALUES ('21', '游戏本', '15', '0,12,15,', '游戏本游戏本游戏本游戏本');
INSERT INTO `yzm_classs` VALUES ('22', '商务本', '15', '0,12,15,', '商务本商务本商务本商务本');
INSERT INTO `yzm_classs` VALUES ('23', '一体机', '16', '0,12,16,', '一体机');
INSERT INTO `yzm_classs` VALUES ('24', '组装机', '16', '0,12,16,', '一体机');
INSERT INTO `yzm_classs` VALUES ('25', '呻吟大', '17', '0,13,17,', '呻吟大呻吟大呻吟大');
INSERT INTO `yzm_classs` VALUES ('26', '字体大', '17', '0,13,17,', '');
INSERT INTO `yzm_classs` VALUES ('27', '纸板', '18', '0,13,18,', '');
INSERT INTO `yzm_classs` VALUES ('28', '房盖', '18', '0,13,18,', '');
INSERT INTO `yzm_classs` VALUES ('29', '西服', '19', '0,14,19,', '');
INSERT INTO `yzm_classs` VALUES ('30', '领带', '19', '0,14,19,', '');
INSERT INTO `yzm_classs` VALUES ('31', '裙子', '20', '0,14,20,', '裙子');
INSERT INTO `yzm_classs` VALUES ('32', '死我', '20', '0,14,20,', '丝袜');

-- ----------------------------
-- Table structure for `yzm_collect`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_collect`;
CREATE TABLE `yzm_collect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `yzm_comment`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_comment`;
CREATE TABLE `yzm_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `text` varchar(200) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `star` tinyint(4) DEFAULT NULL,
  `statu` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_comment
-- ----------------------------
INSERT INTO `yzm_comment` VALUES ('1', '7', '1', '很好', '121212121', '5', '1');
INSERT INTO `yzm_comment` VALUES ('2', '7', '2', '一般', '121212121', '3', '1');
INSERT INTO `yzm_comment` VALUES ('3', '8', '2', '很差', '1212121', '1', '2');

-- ----------------------------
-- Table structure for `yzm_goods`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_goods`;
CREATE TABLE `yzm_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `text` text,
  `config` text,
  `type` tinyint(4) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `xl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_goods
-- ----------------------------
INSERT INTO `yzm_goods` VALUES ('7', 'hp 电脑', 'hp 电脑hp 电脑hp 电脑hp 电脑hp 电脑hp 电脑', '1000', '100', '&lt;ul class=&quot;rt-box list-paddingleft-2&quot; style=&quot;list-style-type: none;&quot;&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; font-family: 微软雅黑; font-size: 14px;&quot;&gt;&lt;img class=&quot;lazy&quot; src=&quot;/ueditor/php/upload/image/20161229/1482994036565136.jpg&quot; title=&quot;&quot; alt=&quot;&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; font-family: 微软雅黑; font-size: 14px;&quot;&gt;&lt;img class=&quot;lazy&quot; src=&quot;/ueditor/php/upload/image/20161229/1482994041126767.jpg&quot; title=&quot;&quot; alt=&quot;&quot;/&gt;&lt;/p&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '&lt;table width=&quot;906&quot; style=&quot;width: 879px;&quot;&gt;&lt;tbody style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot; class=&quot;firstRow&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;主体&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;颜色&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;黑色&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;平台&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;Intel&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;系列&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;Lenovo 拯救者&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;型号&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;拯救者-15&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;处理器&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;CPU类型&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;第六代智能英特尔酷睿i7四核处理器&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;CPU速度&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;2.6GHz,睿频至3.5GHz&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;三级缓存&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;6M&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;核心&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;四核&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;CPU型号&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;i7-6700HQ&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;操作系统&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;操作系统&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;Windows 10 家庭版&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;显示器&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;屏幕尺寸&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;15.6英寸&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;显示比例&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;宽屏16：9&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;物理分辨率&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;1920x1080&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;屏幕类型&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;Full HD IPS LED&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;显 卡&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;类型&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;GDDR5&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;显示芯片&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;NVDIA GTX960M专业级游戏显卡&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;显存容量&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;4G&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;特性&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;独立显卡&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;硬盘&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;硬盘容量&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;1TB + 128G SSD&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;接口类型&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;机械硬盘位接口为SATA3、SSD接口为M.2接口&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;内存&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;内存容量&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;8GB&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;内存类型&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;DDR4&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;光驱&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;光驱类型&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;无光驱&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;通信&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;内置蓝牙&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;蓝牙4.0&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;无线局域网&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;1*1 AC无线局域网卡&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;端口&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;USB2.0&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;1 个&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;音频端口&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;耳机、麦克风二合一接口&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;显示端口&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;VGA x 1/ HDMI x 1&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;RJ45&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;1 个&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;USB3.0&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;2个&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;音效系统&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;扬声器&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;杜比先进音频技术&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;杜比音效&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;家庭影院技术&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;内置麦克风&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;有&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;输入设备&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;键盘&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;背光键盘&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;触摸板&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;有&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;其它设备&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;网络摄像头&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;有&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;读卡器&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;多合一读卡器&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;摄像头像素&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;720P&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;电源&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;电池&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;4芯 锂离子电池&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;电源适配器&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;135W&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;续航时间&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;4小时（视使用环境）&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;机器规格&lt;/th&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;尺寸&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;387mm X 272.6mm X 27.9mm&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; line-height: 23px; font-weight: 100; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;净重&lt;/th&gt;&lt;td style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; color: rgb(149, 149, 149); font-family: 微软雅黑;&quot;&gt;2.6kg(含有4芯电池，具体重量依据产品出货配置为准)&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin: 0px; padding: 0px; outline: 0px; -webkit-tap-highlight-color: transparent;&quot;&gt;&lt;th colspan=&quot;2&quot; style=&quot;margin: 0px; padding: 0px 15px; list-style: none; outline: 0px; -webkit-tap-highlight-color: transparent; width: 65px; font-family: 微软雅黑; font-size: 15px; line-height: 23px; color: rgb(102, 102, 102); background: rgb(246, 246, 246);&quot;&gt;特性&lt;/th&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '0', '5864b14507b60.jpg', '21', '1', null);
INSERT INTO `yzm_goods` VALUES ('8', '商务本', '商务本商务本商务本商务本商务本', '2000', '200', '&lt;p&gt;11111111111111111111111&lt;/p&gt;', '&lt;p&gt;22222222222222222222222&lt;/p&gt;', '1', '5864b1a98273d.jpg', '22', '3', null);
INSERT INTO `yzm_goods` VALUES ('9', '老人机001', '老人机001老人机001老人机001老人机001', '999', '99', '&lt;p&gt;222222222222222&lt;/p&gt;', '&lt;p&gt;3333333333333333333&lt;/p&gt;', '2', '5864b219f3985.jpg', '27', '5', null);
INSERT INTO `yzm_goods` VALUES ('10', '声音大', '声音大1111111111111111', '1000', '12', '&lt;p&gt;1212121&lt;/p&gt;', '&lt;p&gt;212121&lt;/p&gt;', '4', '5864b24df06a3.jpg', '25', '7', null);
INSERT INTO `yzm_goods` VALUES ('11', '智能ABC', '智能ABC智能ABC智能ABC智能ABC智能ABC', '12121', '2121', '&lt;p&gt;212121&lt;/p&gt;', '&lt;p&gt;212121&lt;/p&gt;', '2', '5864b28a720fe.jpg', '28', '6', null);
INSERT INTO `yzm_goods` VALUES ('12', '衣服001', '衣服001衣服001衣服001衣服001', '1000', '100', '&lt;p&gt;0001&lt;/p&gt;', '&lt;p&gt;212121&lt;/p&gt;', '3', '5864b3161e51a.jpg', '31', '4', null);
INSERT INTO `yzm_goods` VALUES ('13', '男装001', '男装001男装001男装001男装001', '1000', '212', '&lt;p&gt;阿达大厦的&lt;/p&gt;', '&lt;p&gt;dasdasdasdasd&lt;/p&gt;', '0', '5864b348743a2.jpg', '29', '3', null);
INSERT INTO `yzm_goods` VALUES ('14', 'asdfghjk', 'sdfghjkl', '123', '45', '&lt;p&gt;qwertyui&lt;/p&gt;', '&lt;p&gt;asdfghjk&lt;/p&gt;', '2', '5864b3904a817.jpg', '29', '5', null);
INSERT INTO `yzm_goods` VALUES ('15', 'asdfghjkl', 'asdfghjkl', '12', '54', '&lt;p&gt;werfghjkl&lt;/p&gt;', '&lt;p&gt;sdfghjklt&lt;/p&gt;', '3', '5864b3cd25067.jpg', '30', '3', null);
INSERT INTO `yzm_goods` VALUES ('16', '山东人退款，mn', 'qwertyuikj', '1234', '543', '&lt;p&gt;sdfghjk&lt;/p&gt;', '&lt;p&gt;让退了，mn&lt;/p&gt;', '1', '5864b4028c10e.jpg', '30', '7', null);
INSERT INTO `yzm_goods` VALUES ('18', 'asdfghjklwerty', 'wertghjkl', '42', '76', '&lt;p&gt;sdfghjkl;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '&lt;p&gt;ertyuio;&amp;#39;&lt;/p&gt;', '2', '5864b45027964.jpg', '31', '4', null);
INSERT INTO `yzm_goods` VALUES ('19', '裙子', '裙子裙子裙子裙子裙子裙子裙子裙子裙子裙子裙子裙子裙子裙子裙子', '766', '234', '&lt;p&gt;trhekjryfkm&lt;/p&gt;', '&lt;p&gt;点附近空运费吗，&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '4', '5864b4a589371.jpg', '31', '6', null);

-- ----------------------------
-- Table structure for `yzm_goods_img`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_goods_img`;
CREATE TABLE `yzm_goods_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_goods_img
-- ----------------------------
INSERT INTO `yzm_goods_img` VALUES ('12', '7', '5864b14c5246a.jpg');
INSERT INTO `yzm_goods_img` VALUES ('13', '7', '5864b14cf2af8.jpg');
INSERT INTO `yzm_goods_img` VALUES ('14', '7', '5864b14dae949.jpg');
INSERT INTO `yzm_goods_img` VALUES ('15', '8', '5864b1b020e36.jpg');
INSERT INTO `yzm_goods_img` VALUES ('16', '8', '5864b1b0bab4a.jpg');
INSERT INTO `yzm_goods_img` VALUES ('17', '8', '5864b1b148f19.jpg');
INSERT INTO `yzm_goods_img` VALUES ('18', '9', '5864b220eb644.jpg');
INSERT INTO `yzm_goods_img` VALUES ('19', '9', '5864b2216fdd0.jpg');
INSERT INTO `yzm_goods_img` VALUES ('20', '9', '5864b222c072c.jpg');
INSERT INTO `yzm_goods_img` VALUES ('21', '9', '5864b22344300.jpg');
INSERT INTO `yzm_goods_img` VALUES ('22', '10', '5864b254cc60b.jpg');
INSERT INTO `yzm_goods_img` VALUES ('23', '10', '5864b255bfb21.jpg');
INSERT INTO `yzm_goods_img` VALUES ('24', '10', '5864b256c802c.jpg');
INSERT INTO `yzm_goods_img` VALUES ('25', '10', '5864b2575351a.jpg');
INSERT INTO `yzm_goods_img` VALUES ('26', '11', '5864b2956d552.jpg');
INSERT INTO `yzm_goods_img` VALUES ('27', '11', '5864b29607c74.jpg');
INSERT INTO `yzm_goods_img` VALUES ('28', '11', '5864b297045fc.jpg');
INSERT INTO `yzm_goods_img` VALUES ('29', '11', '5864b2980e278.jpg');
INSERT INTO `yzm_goods_img` VALUES ('30', '12', '5864b31c349ef.jpg');
INSERT INTO `yzm_goods_img` VALUES ('31', '12', '5864b31d0fc47.jpg');
INSERT INTO `yzm_goods_img` VALUES ('32', '12', '5864b31dbdd98.jpg');
INSERT INTO `yzm_goods_img` VALUES ('33', '12', '5864b31e551f1.jpg');
INSERT INTO `yzm_goods_img` VALUES ('34', '13', '5864b34f001b7.jpg');
INSERT INTO `yzm_goods_img` VALUES ('35', '13', '5864b34ff05b0.jpg');
INSERT INTO `yzm_goods_img` VALUES ('36', '13', '5864b350a6257.jpg');
INSERT INTO `yzm_goods_img` VALUES ('37', '13', '5864b35145f6a.jpg');
INSERT INTO `yzm_goods_img` VALUES ('38', '14', '5864b3a30c82f.jpg');
INSERT INTO `yzm_goods_img` VALUES ('39', '14', '5864b3a391166.jpg');
INSERT INTO `yzm_goods_img` VALUES ('40', '14', '5864b3a4200ed.jpg');
INSERT INTO `yzm_goods_img` VALUES ('41', '15', '5864b3d3e774c.jpg');
INSERT INTO `yzm_goods_img` VALUES ('42', '15', '5864b3d473021.jpg');
INSERT INTO `yzm_goods_img` VALUES ('43', '15', '5864b3d50eacb.jpg');
INSERT INTO `yzm_goods_img` VALUES ('44', '16', '5864b40955b7a.jpg');
INSERT INTO `yzm_goods_img` VALUES ('45', '16', '5864b40a1f877.jpg');
INSERT INTO `yzm_goods_img` VALUES ('46', '16', '5864b40aba143.jpg');
INSERT INTO `yzm_goods_img` VALUES ('47', '18', '5864b4578c854.jpg');
INSERT INTO `yzm_goods_img` VALUES ('48', '18', '5864b4582a626.jpg');
INSERT INTO `yzm_goods_img` VALUES ('49', '18', '5864b458ad01d.jpg');
INSERT INTO `yzm_goods_img` VALUES ('50', '19', '5864b4ab8719f.jpg');
INSERT INTO `yzm_goods_img` VALUES ('51', '19', '5864b4ac05f52.jpg');
INSERT INTO `yzm_goods_img` VALUES ('52', '19', '5864b4acbaa1d.jpg');

-- ----------------------------
-- Table structure for `yzm_orders`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_orders`;
CREATE TABLE `yzm_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_orders
-- ----------------------------
INSERT INTO `yzm_orders` VALUES ('1', '0001', '2', '1', '4', '10000', '1', '121212121', '1');
INSERT INTO `yzm_orders` VALUES ('2', '0001', '2', '1', '5', '1000', '1', '121212121', '1');
INSERT INTO `yzm_orders` VALUES ('3', '0002', '1', '2', '4', '9999', '2', '21212121', '2');

-- ----------------------------
-- Table structure for `yzm_order_statu`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_order_statu`;
CREATE TABLE `yzm_order_statu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_order_statu
-- ----------------------------
INSERT INTO `yzm_order_statu` VALUES ('1', '未付款');
INSERT INTO `yzm_order_statu` VALUES ('2', '已发货');
INSERT INTO `yzm_order_statu` VALUES ('3', '运输中');
INSERT INTO `yzm_order_statu` VALUES ('4', '已签收');
INSERT INTO `yzm_order_statu` VALUES ('5', '待评价');
INSERT INTO `yzm_order_statu` VALUES ('6', '完成');

-- ----------------------------
-- Table structure for `yzm_slider`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_slider`;
CREATE TABLE `yzm_slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `sort` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_slider
-- ----------------------------
INSERT INTO `yzm_slider` VALUES ('10', '1212121', '5864ba43c9fa1.jpg', '12121212', '88');
INSERT INTO `yzm_slider` VALUES ('11', '21212', '5864ba6816103.jpg', '21212', '87');
INSERT INTO `yzm_slider` VALUES ('12', '212121', '5864ba7517b5b.jpg', '212121', '77');
INSERT INTO `yzm_slider` VALUES ('13', '212121', '5864ba7c322d2.jpg', '212121', '77');

-- ----------------------------
-- Table structure for `yzm_user`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_user`;
CREATE TABLE `yzm_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `statu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_user
-- ----------------------------
INSERT INTO `yzm_user` VALUES ('1', 'xiaojun', '202cb962ac59075b964b07152d234b70', '1212121212', '0');
INSERT INTO `yzm_user` VALUES ('2', 'xiaojianjian', '202cb962ac59075b964b07152d234b70', '121212121', '1');

-- ----------------------------
-- Table structure for `yzm_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `yzm_userinfo`;
CREATE TABLE `yzm_userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `zsname` varchar(30) DEFAULT NULL,
  `sheng` varchar(10) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_userinfo
-- ----------------------------
INSERT INTO `yzm_userinfo` VALUES ('1', '1', '1', '131331312', '尹贱', '山西', '太原', '王柏', '我骚我骄傲', '1.jpg');
