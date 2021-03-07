/*
Navicat MySQL Data Transfer

Source Server         : maxiaomai_PC
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : childmsg

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2015-04-27 15:28:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `creattime` datetime DEFAULT NULL,
  `flag` int(4) DEFAULT NULL,
  `isuse` int(4) DEFAULT NULL,
  `logintimes` int(4) DEFAULT NULL,
  `quanxian` varchar(1000) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '0000-00-00 00:00:00', '1', '1', '209', '1');
INSERT INTO `admin` VALUES ('3', 'admin888', '7fef6171469e80d32c0559f88b377245', '2013-04-21 21:20:25', '2', '1', '2', '111');
INSERT INTO `admin` VALUES ('4', 'admin8', '7fef6171469e80d32c0559f88b377245', '2013-04-21 21:36:02', '2', '1', '0', '111');
INSERT INTO `admin` VALUES ('5', 'aaaaaa', '594f803b380a41396ed63dca39503542', '2013-04-21 21:38:20', '2', '1', '0', '111');
INSERT INTO `admin` VALUES ('6', 'admin88', '472a84ce7f8d3ee6b25253204092e262', '2013-04-21 21:47:01', '2', '1', '0', '小张');
INSERT INTO `admin` VALUES ('7', 'bbbbb', '875f26fdb1cecf20ceb4ca028263dec6', '2013-05-10 00:31:29', '2', '1', '0', '李生');
INSERT INTO `admin` VALUES ('8', 'bbbbbb', '875f26fdb1cecf20ceb4ca028263dec6', '2015-04-16 22:39:50', '2', '1', '0', 'b医生');

-- ----------------------------
-- Table structure for `adminlog`
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `loginip` varchar(50) DEFAULT NULL,
  `useros` varchar(50) DEFAULT NULL,
  `ok` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO `adminlog` VALUES ('37', 'admin', 'admin024', '2013-05-10 00:30:51', 'Mozilla/4.0 (compatible', '127.0.0.1', 'false');
INSERT INTO `adminlog` VALUES ('38', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2013-05-10 00:30:56', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('39', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2013-05-16 11:37:12', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('40', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-20 20:06:46', 'Mozilla/5.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('41', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-20 20:12:56', 'Mozilla/5.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('42', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 12:33:35', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('43', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 12:38:57', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('44', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 12:40:27', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('45', 'admin888', '7fef6171469e80d32c0559f88b377245', '2015-02-21 12:41:22', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('46', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 14:41:24', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('47', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 14:43:30', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('48', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 14:43:38', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('49', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 14:50:14', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('50', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 14:54:41', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('51', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-21 15:13:56', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('52', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-22 16:46:08', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('53', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-22 16:47:45', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('54', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-22 16:48:33', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('55', 'dddd', 'dddddd', '2015-02-24 14:39:43', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.101', 'false');
INSERT INTO `adminlog` VALUES ('56', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-24 15:01:06', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.101', 'true');
INSERT INTO `adminlog` VALUES ('57', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-24 15:05:56', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.101', 'true');
INSERT INTO `adminlog` VALUES ('58', 'admin', 'o24admin', '2015-02-24 15:07:04', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.101', 'false');
INSERT INTO `adminlog` VALUES ('59', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-24 15:07:16', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.101', 'true');
INSERT INTO `adminlog` VALUES ('60', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-24 16:39:18', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.101', 'true');
INSERT INTO `adminlog` VALUES ('61', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-25 08:49:15', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.102', 'true');
INSERT INTO `adminlog` VALUES ('62', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-25 08:53:14', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.102', 'true');
INSERT INTO `adminlog` VALUES ('63', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-25 09:30:50', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.102', 'true');
INSERT INTO `adminlog` VALUES ('64', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-25 10:26:41', 'Mozilla/5.0 (Windows NT 6.1', '192.168.0.102', 'true');
INSERT INTO `adminlog` VALUES ('65', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-02-25 15:40:56', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('66', 'dddd', 'dddddd', '2015-03-17 20:06:05', 'Mozilla/5.0 (Windows NT 6.1', '192.168.80.1', 'false');
INSERT INTO `adminlog` VALUES ('67', 'dddd', 'dddd', '2015-03-17 20:06:19', 'Mozilla/5.0 (Windows NT 6.1', '192.168.80.1', 'false');
INSERT INTO `adminlog` VALUES ('68', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-03-17 20:06:29', 'Mozilla/5.0 (Windows NT 6.1', '192.168.80.1', 'true');
INSERT INTO `adminlog` VALUES ('69', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-03-23 20:38:09', 'Mozilla/5.0 (Windows NT 6.1', '192.168.80.1', 'true');
INSERT INTO `adminlog` VALUES ('70', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-03-29 22:24:31', 'Mozilla/5.0 (Windows NT 6.1', '192.168.1.106', 'true');
INSERT INTO `adminlog` VALUES ('71', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-03-29 22:30:52', 'Mozilla/5.0 (Windows NT 6.1', '192.168.1.106', 'true');
INSERT INTO `adminlog` VALUES ('212', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-03-29 23:16:25', 'Mozilla/5.0 (Windows NT 6.1', '192.168.1.106', 'true');
INSERT INTO `adminlog` VALUES ('213', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2013-05-15 09:58:51', 'Mozilla/5.0 (Windows NT 6.1', '192.168.80.1', 'true');
INSERT INTO `adminlog` VALUES ('214', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-04-16 22:31:39', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('215', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-04-26 20:07:23', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES ('216', 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2015-04-27 14:54:23', 'Mozilla/5.0 (Windows NT 6.1', '127.0.0.1', 'true');

-- ----------------------------
-- Table structure for `affiche`
-- ----------------------------
DROP TABLE IF EXISTS `affiche`;
CREATE TABLE `affiche` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `adder` varchar(50) DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of affiche
-- ----------------------------
INSERT INTO `affiche` VALUES ('1', '欢迎光临', '欢迎各位', '2013-03-28 12:58:48', 'admin', '1');
INSERT INTO `affiche` VALUES ('2', '事实上', '事实上', '2014-05-10 00:31:40', 'admin', '1');
INSERT INTO `affiche` VALUES ('3', 'hello', 'hello', '2015-04-16 22:41:16', 'admin', '1');

-- ----------------------------
-- Table structure for `birth`
-- ----------------------------
DROP TABLE IF EXISTS `birth`;
CREATE TABLE `birth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `room` varchar(20) DEFAULT NULL,
  `doctor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of birth
-- ----------------------------
INSERT INTO `birth` VALUES ('2', '3', '233423423434', '诊室1', '张三');
INSERT INTO `birth` VALUES ('3', '3', '34234234', '234', '234');
INSERT INTO `birth` VALUES ('7', null, 'lsakdjlajd', '345', '345');
INSERT INTO `birth` VALUES ('9', '14', '早产儿重点看护', 'VIP1', '金医生');

-- ----------------------------
-- Table structure for `child`
-- ----------------------------
DROP TABLE IF EXISTS `child`;
CREATE TABLE `child` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `father` varchar(20) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of child
-- ----------------------------
INSERT INTO `child` VALUES ('1', '20130515100001', '张宝宝', '女', '2014-05-15 00:00:00', '张爸爸', '张妈妈', '13232323232', '12121212@qq.com');
INSERT INTO `child` VALUES ('2', '20130515100002', '李宝宝', '男', '2014-05-14 00:00:00', '李爸爸', '李妈妈', '132323232555', '23423423@qq.com');
INSERT INTO `child` VALUES ('3', '20130515100003', '宋宝宝', '女', '2014-05-12 00:00:00', '宋爸爸', '宋妈妈', '13232323233', '2323423@qq.com');
INSERT INTO `child` VALUES ('4', '20130515100004', '胡宝宝', '男', '2014-05-15 00:00:00', '胡爸爸', '胡妈妈', '13232323233', '23423423@qq.com');
INSERT INTO `child` VALUES ('5', '20130515100005', '刘宝宝', '男', '2014-05-15 00:00:00', '刘爸爸', '刘妈妈', '13232323232', '23423423@qq.com');
INSERT INTO `child` VALUES ('6', '20130515100006', '孙宝宝', '男', '2014-05-14 00:00:00', '孙爸爸', '孙妈妈', '13232323232', '23423423@qq.com');
INSERT INTO `child` VALUES ('7', '20130515100007', '陈宝宝', '女', '2014-05-13 00:00:00', '陈爸爸', '陈妈妈', '13232323232', '12232323@qq.com');
INSERT INTO `child` VALUES ('8', '20130515100008', '王宝宝', '男', '2014-05-13 12:13:00', '王爸爸', '王妈妈', '13232323232', '324234@qq.com');
INSERT INTO `child` VALUES ('9', '20130515100009', '张宝宝', '男', '2014-04-09 05:06:00', '张爸爸', '张妈妈', '13232323232', '2323423@qq.com');
INSERT INTO `child` VALUES ('10', '20130515100010', '王宝宝', '女', '2014-05-15 06:19:00', '王爸爸', '王妈妈', '13232323232', '23432@qq.com');
INSERT INTO `child` VALUES ('11', '20130515100011', '测试', '男', '2015-02-26 00:00:00', '测试父亲', '测试母亲', '11333311', 'test@qq.com');
INSERT INTO `child` VALUES ('12', '20130515100012', '王小二', '男', '2013-05-15 00:00:00', '王大二', '好吧', '123', 'qq.@qq.com');
INSERT INTO `child` VALUES ('13', '20130515100013', '李宝宝3', '男', '2013-02-14 05:05:00', '李爸3', '李妈3', '1312222222', 'aa@qq.com');
INSERT INTO `child` VALUES ('14', '20130515100014', '李宝4', '男', '2015-03-10 00:00:00', '李宝爸', '李宝妈', '13000000000', '130@qq.com');

-- ----------------------------
-- Table structure for `dead`
-- ----------------------------
DROP TABLE IF EXISTS `dead`;
CREATE TABLE `dead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `stime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of dead
-- ----------------------------
INSERT INTO `dead` VALUES ('2', '宋宝宝', '2013-05-14', '原因四', '2014-05-15');
INSERT INTO `dead` VALUES ('3', '王宝宝', '2013-05-14', '原因3', '2014-05-16');
INSERT INTO `dead` VALUES ('4', '王宝宝', '2013-05-15', '原因11', '2014-05-16');

-- ----------------------------
-- Table structure for `deadreason`
-- ----------------------------
DROP TABLE IF EXISTS `deadreason`;
CREATE TABLE `deadreason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of deadreason
-- ----------------------------
INSERT INTO `deadreason` VALUES ('1', '原因1');
INSERT INTO `deadreason` VALUES ('2', '原因2');
INSERT INTO `deadreason` VALUES ('3', '原因3');
INSERT INTO `deadreason` VALUES ('4', '原因四');
INSERT INTO `deadreason` VALUES ('5', '原因5');
INSERT INTO `deadreason` VALUES ('6', '原因11');
INSERT INTO `deadreason` VALUES ('7', '原因7');

-- ----------------------------
-- Table structure for `guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `weburl` varchar(50) DEFAULT NULL,
  `blogurl` varchar(50) DEFAULT NULL,
  `expressions` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `replay` int(4) DEFAULT NULL,
  `ifhide` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO `guestbook` VALUES ('1', '游客', 'images/nobody.gif', '', '', '', '', 'images/face/1.gif', '您好', '2015-02-25 09:28:24', '192.168.0.102', '1', '1');
INSERT INTO `guestbook` VALUES ('2', '游客', 'images/nobody.gif', '22@qq.com', '', '', '', 'images/face/1.gif', '这是哪里？', '2015-04-16 22:26:30', '127.0.0.1', '0', '1');

-- ----------------------------
-- Table structure for `health`
-- ----------------------------
DROP TABLE IF EXISTS `health`;
CREATE TABLE `health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `opinion` varchar(200) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of health
-- ----------------------------
INSERT INTO `health` VALUES ('5', '2', '24', '4', '50', '36', '2323423', '32', '2014-05-15');
INSERT INTO `health` VALUES ('6', '2', '24', '4', '50', '36', '42424', '32', '2014-05-15');
INSERT INTO `health` VALUES ('7', '1', '32', '32', '23', '32', '23', '32', '2014-05-15');
INSERT INTO `health` VALUES ('8', '10', '30', '5', '50', '35', '3242342', '12', '2014-05-16');
INSERT INTO `health` VALUES ('9', null, '33', '33', '33', '38', '健康', '40', '2015-04-16');
INSERT INTO `health` VALUES ('10', '14', '20', '3', '45', '36', '重点看护', '40', '2015-04-26');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('1', '百度网站', 'http://www.baidu.com');
INSERT INTO `link` VALUES ('2', '网易', 'http://www.163.com');
INSERT INTO `link` VALUES ('3', '优酷视频', 'http://www.youku.com');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `regtime` varchar(50) DEFAULT NULL,
  `ifuse` int(4) DEFAULT NULL,
  `logintimes` int(4) DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  `lastip` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'xiaoqiang', '96e79218965eb72c92a549dd5a330112', 'person', '2013-03-01 12:00:00', '1', '12', '2013-03-28 17:29:10', '127.0.0.1');
INSERT INTO `member` VALUES ('2', 'aaaa', 'e10adc3949ba59abbe56e057f20f883e', 'person', '2014-04-21 11:00:16', '1', '7', '2014-02-22 16:55:10', '127.0.0.1');
INSERT INTO `member` VALUES ('3', 'bbbb', '875f26fdb1cecf20ceb4ca028263dec6', 'person', '2014-04-21 21:14:21', '0', '0', '2014-04-21 21:14:21', '127.0.0.1');
INSERT INTO `member` VALUES ('6', 'cccc', 'c1f68ec06b490b3ecb4066b1b13a9ee9', 'person', '2014-04-22 14:34:45', '1', '3', '2014-04-22 14:38:14', '127.0.0.1');
INSERT INTO `member` VALUES ('7', 'runert', '96e79218965eb72c92a549dd5a330112', 'person', '2014-05-08 22:33:11', '1', '1', '2014-05-09 13:52:26', '127.0.0.1');
INSERT INTO `member` VALUES ('8', 'cccccc', '76419c58730d9f35de7ac538c2fd6737', 'person', '2013-05-10 00:30:16', '1', '3', '2014-02-22 16:53:05', '127.0.0.1');
INSERT INTO `member` VALUES ('9', 'test', '76419c58730d9f35de7ac538c2fd6737', 'person', '2015-02-21 12:05:04', '1', '5', '2015-02-21 15:01:59', '127.0.0.1');
INSERT INTO `member` VALUES ('11', 'test1', 'e10adc3949ba59abbe56e057f20f883e', 'person', '2015-02-21 12:09:55', '1', '0', '2015-02-21 12:09:55', '127.0.0.1');
INSERT INTO `member` VALUES ('12', 'ceshi', '76419c58730d9f35de7ac538c2fd6737', 'person', '2015-02-21 12:23:56', '1', '2', '2015-02-21 12:33:09', '127.0.0.1');
INSERT INTO `member` VALUES ('13', 'dddd', '980ac217c6b51e7dc41040bec1edfec8', 'person', '2015-02-24 14:38:01', '1', '4', '2015-02-25 08:51:53', '192.168.0.102');
INSERT INTO `member` VALUES ('14', 'admin1', '7fa8282ad93047a4d6fe6111c93b308a', 'person', '2015-03-29 22:26:25', '1', '1', '2015-03-29 22:26:42', '192.168.1.106');
INSERT INTO `member` VALUES ('15', 'admin3', '1a100d2c0dab19c4430e7d73762b3423', 'person', '2015-04-16 22:30:09', '1', '0', '2015-04-16 22:30:09', '127.0.0.1');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `content` text,
  `addtime` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'hello', '<p>hello everyone</p>', '2015-04-16');

-- ----------------------------
-- Table structure for `news_tijian`
-- ----------------------------
DROP TABLE IF EXISTS `news_tijian`;
CREATE TABLE `news_tijian` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `content` text,
  `addtime` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of news_tijian
-- ----------------------------
INSERT INTO `news_tijian` VALUES ('2', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('3', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('4', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('5', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('6', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('7', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('8', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('10', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('11', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('12', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2014-03-30');
INSERT INTO `news_tijian` VALUES ('14', '惊爆价379元 飞利浦HMP3008高清播放器促销', '<p>&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器通过 Windows Media Video 播放功能，您可以在电视上播放电脑中的视频文件。与家人朋友一起欣赏视频变得无比简单。无需再斜视电脑屏幕，舒适地坐在沙发上轻松欣赏您喜爱的 WMV 文件。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦播放器可让您轻松访问多种音频格式，如杜比数字、AAC、RA、OGG、MKA、MP3、WAV、APE、FLAC、DTS、LPCM、PCM、WMA (V9)、IMP/MS ADPCM 和 WMA Pro等格式。不但支持 DivX Plus 内容播放（H.264 HD 视频，包括通过 MKV 文件容器提供的高质量 AAC 音频），同时还支持上一版本的 DivX 视频，分辨率最高可达 1080p。DivX Plus HD 是真正的高清数字视频。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 飞利浦HMP3008高清媒体播放器拥有USB 2.0接口、轻松复制、传输或删除文件功能，您可以更快速地使用更大存储空间来传输照片、视频和 MP3 音乐文件。在内置 SD 卡插槽中插入 SD 卡，您就可以使用更大容量在飞利浦播放机上存储照片、视频和 MP3 音乐文件，享受随心所欲存储文件的乐趣。</p>\r\n<p>&nbsp;&nbsp;&nbsp; <strong>消费者评点</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp; 优点；机身小巧，播放很流畅，利器啊。是我用过的最好，做工最精致的媒体播放机。的确不错，占地方小，功能还算齐全，遥控操作方便。</p>\r\n<p>&nbsp;&nbsp;&nbsp; 缺点；开机和待机响应时间长，按下遥控器好一会才有反应，刚买完就降价。</p>', '2012-03-30');

-- ----------------------------
-- Table structure for `pf`
-- ----------------------------
DROP TABLE IF EXISTS `pf`;
CREATE TABLE `pf` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sjid` varchar(50) DEFAULT NULL,
  `fs` varchar(50) DEFAULT NULL,
  `member` varchar(50) DEFAULT NULL,
  `sj` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of pf
-- ----------------------------
INSERT INTO `pf` VALUES ('1', '6', '89', 'xiaoqiang', '2014-03-28');

-- ----------------------------
-- Table structure for `pmember`
-- ----------------------------
DROP TABLE IF EXISTS `pmember`;
CREATE TABLE `pmember` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mid` int(4) DEFAULT NULL,
  `realname` varchar(100) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `bir` varchar(50) DEFAULT NULL,
  `sheng` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `telphone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of pmember
-- ----------------------------
INSERT INTO `pmember` VALUES ('1', '1', 'xiaoqiang', 'm', '2010-03-07', '甘肃', '天水', '02488888888', 'xiaoqiang@163.com', '我是谁', '小强', '测试');
INSERT INTO `pmember` VALUES ('2', '2', '海天老大', 'm', '250001', '甘肃', '嘉峪关', '2222222', '11111111@qq.com', '2', '22', '试试');
INSERT INTO `pmember` VALUES ('3', '3', '是', 'm', '250001', '青海', '海南州', '1111111', '1112111@qq.com', '商务09级8班', '张大山', '是');
INSERT INTO `pmember` VALUES ('6', '6', '王微微', 'f', '2555555', '北京', '北京', '1555555555', '252555@qq.com', '商务4班', '张小林', '无');
INSERT INTO `pmember` VALUES ('7', '7', '丽丽', 'm', '2000000', '青海', '海东地区', '00000000', '11111111@qq.com', '大道地', '张大拿', '无');
INSERT INTO `pmember` VALUES ('8', '8', '李丽', 'm', '250001', '甘肃', '天水', '00000000000', '000@qq.com', '李生', '李大', '无');
INSERT INTO `pmember` VALUES ('9', '9', 'test', 'm', '', '天津', '天津', '1123123123', '11@111.com', '213', '12321', 'wu');
INSERT INTO `pmember` VALUES ('11', '11', 'adsgff', 'm', '', '天津', '天津', '1123123123', '11@111.com', '213', '12321', 'www');
INSERT INTO `pmember` VALUES ('12', '12', 'nicai', 'm', '1123', '北京', '北京', '1123123123', '11@111.com', 'wuzhi', 'taiwuzhi', 'wu');
INSERT INTO `pmember` VALUES ('13', '13', 'dddd', 'm', '999999', '湖北', '十堰', '13877777777', '999999@qq.com', '是谁', '你猜', 'dddd');
INSERT INTO `pmember` VALUES ('14', '14', 'dddd2', 'm', '1234567', '湖北', '十堰', '13020809024', '2222@qq.com', '没有问题', '没有答案', '无');
INSERT INTO `pmember` VALUES ('15', '15', '李爸', 'm', '', '江西', '九江', '131222233', '33@qq.com', '我是谁', '你猜', '没有');

-- ----------------------------
-- Table structure for `protect`
-- ----------------------------
DROP TABLE IF EXISTS `protect`;
CREATE TABLE `protect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `doctor` varchar(20) DEFAULT NULL,
  `room` varchar(20) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of protect
-- ----------------------------
INSERT INTO `protect` VALUES ('2', '1', '张一横', '342341', '2014-05-16 00:00:00');
INSERT INTO `protect` VALUES ('3', '1', '刘医生', '34234', '2014-05-17 00:00:00');
INSERT INTO `protect` VALUES ('4', '10', '111', '11', '2014-05-21 00:00:00');
INSERT INTO `protect` VALUES ('5', null, '体检室1', '体检室1', '2013-04-11 00:00:00');
INSERT INTO `protect` VALUES ('7', '14', '王医生', 'VIP', '2015-04-21 00:00:00');

-- ----------------------------
-- Table structure for `prove`
-- ----------------------------
DROP TABLE IF EXISTS `prove`;
CREATE TABLE `prove` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) DEFAULT NULL,
  `birthplace` varchar(100) DEFAULT NULL,
  `healthstatus` varchar(20) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `facility` varchar(100) DEFAULT NULL,
  `syear` int(11) DEFAULT NULL,
  `smonth` int(11) DEFAULT NULL,
  `sday` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of prove
-- ----------------------------
INSERT INTO `prove` VALUES ('3', '20130515100001', 'XX省XX市', '一般', '6000', '40', '妇幼保健院', '2016', '4', '20', '0');
INSERT INTO `prove` VALUES ('4', '20130515100002', 'XX省XX市', '一般', '4333', '43', '妇幼保健院', '2013', '4', '20', '1');
INSERT INTO `prove` VALUES ('5', '20130515100004', 'XX省XX市', '良好', '4333', '40', '妇幼保健院', '2013', '4', '20', '1');
INSERT INTO `prove` VALUES ('6', '20130515100010', 'XX省XX市', '一般', '6000', '30', '妇幼保健院', '2013', '5', '17', '1');
INSERT INTO `prove` VALUES ('7', '20130515100011', 'XX省XX市', '一般', '121', '111', '妇幼保健院', '2015', '1', '14', '0');
INSERT INTO `prove` VALUES ('8', '20130515100013', '你猜猜猜', '良好', '2', '3', '天津市妇幼保健医院', '2015', '2', '18', '0');

-- ----------------------------
-- Table structure for `replay`
-- ----------------------------
DROP TABLE IF EXISTS `replay`;
CREATE TABLE `replay` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mid` int(4) DEFAULT NULL,
  `replay` varchar(200) DEFAULT NULL,
  `replayer` varchar(50) DEFAULT NULL,
  `replaytime` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of replay
-- ----------------------------
INSERT INTO `replay` VALUES ('1', '1', '不好', 'admin', '2015-02-25 09:33:04');

-- ----------------------------
-- Table structure for `sick`
-- ----------------------------
DROP TABLE IF EXISTS `sick`;
CREATE TABLE `sick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `hiv` int(11) DEFAULT NULL,
  `hear` int(11) DEFAULT NULL,
  `heart` int(11) DEFAULT NULL,
  `liver` int(11) DEFAULT NULL,
  `spleen` int(11) DEFAULT NULL,
  `lungs` int(11) DEFAULT NULL,
  `opinion` varchar(200) DEFAULT NULL,
  `money` float DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of sick
-- ----------------------------
INSERT INTO `sick` VALUES ('4', '4', '0', '0', '0', '0', '0', '0', '22222', '23', '2013-05-15');
INSERT INTO `sick` VALUES ('5', '3', '0', '0', '0', '0', '0', '0', '3423', '23', '2013-05-15');
INSERT INTO `sick` VALUES ('6', '10', '0', '0', '0', '0', '0', '0', '32423423', '12', '2013-05-16');
INSERT INTO `sick` VALUES ('12', '14', '0', '0', '0', '1', '0', '1', '早产儿，重新体检', '44', '2015-04-26');

-- ----------------------------
-- Table structure for `sjmc`
-- ----------------------------
DROP TABLE IF EXISTS `sjmc`;
CREATE TABLE `sjmc` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(100) DEFAULT NULL,
  `sj` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of sjmc
-- ----------------------------
INSERT INTO `sjmc` VALUES ('4', '测试试卷名称一', '3');
INSERT INTO `sjmc` VALUES ('5', '测试试卷名称二', '5');
INSERT INTO `sjmc` VALUES ('6', '测试试卷名称三', '10');
INSERT INTO `sjmc` VALUES ('7', '独到的', '10');

-- ----------------------------
-- Table structure for `st`
-- ----------------------------
DROP TABLE IF EXISTS `st`;
CREATE TABLE `st` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `tm` varchar(50) DEFAULT NULL,
  `a` varchar(50) DEFAULT NULL,
  `b` varchar(50) DEFAULT NULL,
  `c` varchar(50) DEFAULT NULL,
  `d` varchar(50) DEFAULT NULL,
  `ok` varchar(50) DEFAULT NULL,
  `fs` int(4) DEFAULT NULL,
  `sjid` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of st
-- ----------------------------
INSERT INTO `st` VALUES ('5', '测试试题名称2', '111', '222', '333', '444', 'B', '3', '6');
INSERT INTO `st` VALUES ('6', '测试试题名称1', '测试答案A', '测试答案B', '测试答案C', '测试答案D', 'A', '5', '6');
INSERT INTO `st` VALUES ('9', '测试试题名称3', '测试', '测试', '测试', '测试', 'A', '2', '6');
INSERT INTO `st` VALUES ('10', '测试试题名称4', '测试', '测试', '测试', '测试', 'A', '12', '6');
INSERT INTO `st` VALUES ('11', '测试试题名称5', '测试', '测试', '测试', '测试', 'B', '77', '6');
INSERT INTO `st` VALUES ('12', 'aaaaa', 'bbbbb', 'cccc', 'dddd', 'eeeee', 'A', '1', '6');
INSERT INTO `st` VALUES ('13', '事实上', '1', '2', '3', '4', 'A', '10', '7');

-- ----------------------------
-- Table structure for `system`
-- ----------------------------
DROP TABLE IF EXISTS `system`;
CREATE TABLE `system` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `reasons` varchar(100) DEFAULT NULL,
  `dir` varchar(100) DEFAULT NULL,
  `record` varchar(100) DEFAULT NULL,
  `copyright` text,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of system
-- ----------------------------
INSERT INTO `system` VALUES ('1', '妇幼保健信息管理系统', '妇幼保健信息管理系统-孕前孕妇信息管理子系统', '妇幼保健信息管理系统-孕前孕妇信息管理子系统', '妇幼保健信息管理系统-孕前孕妇信息管理子系统', '妇幼保健信息管理系统-孕前孕妇信息管理子系统', 'open', '心理健康网', 'admin', '心理健康网', '心理健康网');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', 'admin', '1');
INSERT INTO `users` VALUES ('3', 'lisi', '111111', 'lisi', '0');
INSERT INTO `users` VALUES ('4', 'wangwu', 'wangwu', 'wangwu', '0');

-- ----------------------------
-- Table structure for `yimiao`
-- ----------------------------
DROP TABLE IF EXISTS `yimiao`;
CREATE TABLE `yimiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `stime` date DEFAULT NULL,
  `money` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of yimiao
-- ----------------------------
INSERT INTO `yimiao` VALUES ('2', '1', '2013-05-16', '12');
INSERT INTO `yimiao` VALUES ('3', '1', '2013-05-18', '21');
INSERT INTO `yimiao` VALUES ('4', '10', '2013-05-17', '21');

-- ----------------------------
-- Table structure for `zt`
-- ----------------------------
DROP TABLE IF EXISTS `zt`;
CREATE TABLE `zt` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `fl` varchar(50) DEFAULT NULL,
  `content` text,
  `sj` varchar(50) DEFAULT NULL,
  `dj` int(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of zt
-- ----------------------------
INSERT INTO `zt` VALUES ('5', '试试', '/pic/1368112547031小王.docx1111111.doc', '健康体检报告', '<table border=\"1\" width=\"545\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\"98\">编号:</td>\r\n            <td width=\"431\">&nbsp;1</td>\r\n        </tr>\r\n        <tr>\r\n            <td>年龄:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>姓名:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>身高:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>心率:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>血压:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>体重:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>B超影像:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>胎儿状况:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>医生意见:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td>检查费用:</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '2013-05-09', '5');
INSERT INTO `zt` VALUES ('6', '李丽25001的健康体检报告', '/pic/13681171590310001.rar', '健康体检报告', '<table border=\"1\" width=\"545\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\"98\">编号:</td>\r\n            <td width=\"431\">&nbsp;250001</td>\r\n        </tr>\r\n        <tr>\r\n            <td>年龄:</td>\r\n            <td>&nbsp;25</td>\r\n        </tr>\r\n        <tr>\r\n            <td>姓名:</td>\r\n            <td>&nbsp;试试</td>\r\n        </tr>\r\n        <tr>\r\n            <td>身高:</td>\r\n            <td>&nbsp;是</td>\r\n        </tr>\r\n        <tr>\r\n            <td>心率:</td>\r\n            <td>&nbsp;是</td>\r\n        </tr>\r\n        <tr>\r\n            <td>血压:</td>\r\n            <td>&nbsp;是</td>\r\n        </tr>\r\n        <tr>\r\n            <td>体重:</td>\r\n            <td>&nbsp;是</td>\r\n        </tr>\r\n        <tr>\r\n            <td>B超影像:</td>\r\n            <td>&nbsp;是</td>\r\n        </tr>\r\n        <tr>\r\n            <td>胎儿状况:</td>\r\n            <td>&nbsp;事实上</td>\r\n        </tr>\r\n        <tr>\r\n            <td>医生意见:</td>\r\n            <td>&nbsp;是</td>\r\n        </tr>\r\n        <tr>\r\n            <td>检查费用:</td>\r\n            <td>&nbsp;试试</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '2013-05-10', '6');
INSERT INTO `zt` VALUES ('7', '李丽的保健费用', '/pic/13681172367650001.rar', '孕妇保健费用', '<table border=\"1\" width=\"545\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\"266\">姓名</td>\r\n            <td width=\"263\">李丽</td>\r\n        </tr>\r\n        <tr>\r\n            <td>编号</td>\r\n            <td>&nbsp;25001</td>\r\n        </tr>\r\n        <tr>\r\n            <td>疾病筛查费用</td>\r\n            <td>&nbsp;10</td>\r\n        </tr>\r\n        <tr>\r\n            <td>健康体检费用</td>\r\n            <td>&nbsp;10</td>\r\n        </tr>\r\n        <tr>\r\n            <td>疫苗接种费用</td>\r\n            <td>&nbsp;10</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '2013-05-10', '6');
INSERT INTO `zt` VALUES ('8', '20130515100010 	', '/pic/7777', '孕妇高危因素监测', '<p>&euro;m</p>', '2013-05-15', '0');
INSERT INTO `zt` VALUES ('9', '李爸', '/pic/7777', '常规保健信息', '<hr />\r\n<p><strike>hello</strike></p>', '2015-04-16', '0');

-- ----------------------------
-- Table structure for `zt_tijian`
-- ----------------------------
DROP TABLE IF EXISTS `zt_tijian`;
CREATE TABLE `zt_tijian` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `fl` varchar(50) DEFAULT NULL,
  `content` mediumtext,
  `sj` varchar(50) DEFAULT NULL,
  `dj` int(4) DEFAULT NULL,
  `my2` varchar(120) DEFAULT NULL,
  `my1` varchar(120) DEFAULT NULL,
  `my3` varchar(120) DEFAULT NULL,
  `my5` varchar(120) DEFAULT NULL,
  `my4` varchar(120) DEFAULT NULL,
  `my6` varchar(120) DEFAULT NULL,
  `my7` varchar(120) DEFAULT NULL,
  `my8` varchar(120) DEFAULT NULL,
  `my9` varchar(120) DEFAULT NULL,
  `my10` varchar(120) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of zt_tijian
-- ----------------------------
INSERT INTO `zt_tijian` VALUES ('2', '六种基本睡姿暗藏了人类的哪些性格？', '/pic/1332913199703test.doc', '情绪心理', '<p><img width=\"950\" height=\"602\" alt=\"\" src=\"/mental/UserFiles/Image/1111.jpg\" /></p>', '2012-03-28', '4', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zt_tijian` VALUES ('3', '一例病理性网络成瘾个案的心理分析', '/pic/1332913265625test.doc', '情绪心理', '<p><img width=\"647\" height=\"444\" alt=\"\" src=\"/mental/UserFiles/Image/2222.jpg\" /></p>', '2012-03-28', '14', null, null, null, null, null, null, null, null, null, null);
