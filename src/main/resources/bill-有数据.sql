/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1-lql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : bill

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2021-09-04 22:00:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill_
-- ----------------------------
DROP TABLE IF EXISTS `bill_`;
CREATE TABLE `bill_` (
  `id_` bigint(20) NOT NULL AUTO_INCREMENT,
  `title_` varchar(100) DEFAULT NULL,
  `bill_time_` date DEFAULT NULL,
  `type_id_` bigint(20) DEFAULT NULL,
  `price_` varchar(10) DEFAULT NULL,
  `explain_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `fk_type_bill` (`type_id_`),
  CONSTRAINT `fk_type_bill` FOREIGN KEY (`type_id_`) REFERENCES `bill_type_` (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_
-- ----------------------------
INSERT INTO `bill_` VALUES ('2', '饭补', '2017-06-27', '1', '2.23', 'b');
INSERT INTO `bill_` VALUES ('3', '出差费', '2017-06-28', '2', '33', 'c');
INSERT INTO `bill_` VALUES ('4', '奖金', '2017-06-29', '2', '44', 'd');
INSERT INTO `bill_` VALUES ('20', '1', '2018-10-18', '2', '1', '');
INSERT INTO `bill_` VALUES ('21', '采购办公用品', '2019-05-15', '2', '1234', '123444');
INSERT INTO `bill_` VALUES ('24', '工资', null, '1', '12345', '发工资');
INSERT INTO `bill_` VALUES ('25', 'bb', '2021-09-14', '3', '', '');
INSERT INTO `bill_` VALUES ('26', '饭补', null, '3', null, null);
INSERT INTO `bill_` VALUES ('27', '出差费', null, '3', null, null);
INSERT INTO `bill_` VALUES ('28', '奖金', null, '3', null, null);
INSERT INTO `bill_` VALUES ('29', '1', null, '3', null, null);
INSERT INTO `bill_` VALUES ('30', '采购办公用品', null, null, null, null);
INSERT INTO `bill_` VALUES ('31', '', null, '4', null, null);
INSERT INTO `bill_` VALUES ('32', 'aa', null, '2', '123.00', '');
INSERT INTO `bill_` VALUES ('33', '', null, null, null, null);
INSERT INTO `bill_` VALUES ('34', '饭补', null, '4', null, null);
INSERT INTO `bill_` VALUES ('35', '出差费', null, '2', null, null);
INSERT INTO `bill_` VALUES ('36', '奖金', null, null, null, null);
INSERT INTO `bill_` VALUES ('37', '1', null, '4', null, null);
INSERT INTO `bill_` VALUES ('38', '采购办公用品', null, null, null, null);
INSERT INTO `bill_` VALUES ('39', '', null, '4', null, null);
INSERT INTO `bill_` VALUES ('40', '1', null, null, null, null);
INSERT INTO `bill_` VALUES ('41', '', null, '4', null, null);
INSERT INTO `bill_` VALUES ('42', '饭补', null, '3', null, null);
INSERT INTO `bill_` VALUES ('43', '出差费', null, '3', null, null);
INSERT INTO `bill_` VALUES ('44', '奖金', null, '3', null, null);
INSERT INTO `bill_` VALUES ('45', '1', null, null, null, null);
INSERT INTO `bill_` VALUES ('46', '采购办公用品', null, '3', null, null);
INSERT INTO `bill_` VALUES ('48', '1', null, null, null, null);
INSERT INTO `bill_` VALUES ('49', '', null, '4', '123.00', '');
INSERT INTO `bill_` VALUES ('50', '饭补', '2020-08-17', null, null, '');
INSERT INTO `bill_` VALUES ('51', '出差费', null, null, null, null);
INSERT INTO `bill_` VALUES ('52', '奖金', null, null, null, null);
INSERT INTO `bill_` VALUES ('53', '1', null, '4', null, null);
INSERT INTO `bill_` VALUES ('54', '采购办公用品', null, null, null, null);
INSERT INTO `bill_` VALUES ('55', '', null, '4', null, null);
INSERT INTO `bill_` VALUES ('56', '1', null, '4', null, null);
INSERT INTO `bill_` VALUES ('58', 'cc', null, '1', null, '');
INSERT INTO `bill_` VALUES ('62', 'bb', null, '1', null, '');
INSERT INTO `bill_` VALUES ('63', 'dd', '2021-09-12', '1', '', '');
INSERT INTO `bill_` VALUES ('64', 'dd', '2021-09-15', '1', '123.00', 'aa');
INSERT INTO `bill_` VALUES ('65', 'dd', null, '3', '', '');
INSERT INTO `bill_` VALUES ('66', 'ff', null, '1', '', '');
INSERT INTO `bill_` VALUES ('67', 'bb', null, '1', null, '');
INSERT INTO `bill_` VALUES ('68', 'hh', null, '1', '', 'aa');
INSERT INTO `bill_` VALUES ('69', 'hh', null, '1', '456.00', '');
INSERT INTO `bill_` VALUES ('70', '', null, '1', 'aa', '');
INSERT INTO `bill_` VALUES ('71', '饭补', '2017-06-27', '1', '2.23', 'b');
INSERT INTO `bill_` VALUES ('72', '出差费', '2017-06-28', '2', '33', 'c');
INSERT INTO `bill_` VALUES ('73', '奖金', '2017-06-29', '2', '44', 'd');
INSERT INTO `bill_` VALUES ('74', '1', '2018-10-18', '2', '1', '');
INSERT INTO `bill_` VALUES ('75', '采购办公用品', '2019-05-15', '2', '1234', '123444');
INSERT INTO `bill_` VALUES ('76', '1', '2021-09-14', '1', null, '');
INSERT INTO `bill_` VALUES ('77', 'bb', '2021-09-14', '1', null, '');
INSERT INTO `bill_` VALUES ('78', '饭补', '2021-09-24', '3', null, '');
INSERT INTO `bill_` VALUES ('79', '出差费', '2021-09-15', '3', null, '');
INSERT INTO `bill_` VALUES ('80', '奖金', '2021-09-01', '3', null, '');
INSERT INTO `bill_` VALUES ('81', '1', '2021-09-22', '3', null, '');
INSERT INTO `bill_` VALUES ('82', '采购办公用品', '2021-09-08', null, null, '');
INSERT INTO `bill_` VALUES ('83', '', '2021-09-09', '4', null, '');
INSERT INTO `bill_` VALUES ('84', '1', '2021-09-09', '1', null, '');
INSERT INTO `bill_` VALUES ('85', '', '2021-09-16', null, null, '');
INSERT INTO `bill_` VALUES ('86', '饭补', '2021-09-16', '4', null, '');
INSERT INTO `bill_` VALUES ('87', '出差费', '2021-09-22', '2', null, '');
INSERT INTO `bill_` VALUES ('88', '奖金', '2021-09-30', null, null, '');
INSERT INTO `bill_` VALUES ('89', '1', '2021-09-30', '4', null, '');
INSERT INTO `bill_` VALUES ('90', '采购办公用品', '2021-09-29', null, null, '');
INSERT INTO `bill_` VALUES ('91', '', '2021-09-04', '4', null, '');
INSERT INTO `bill_` VALUES ('92', null, '2017-06-27', null, null, null);
INSERT INTO `bill_` VALUES ('93', null, '2017-06-28', null, null, null);
INSERT INTO `bill_` VALUES ('94', null, '2017-06-29', null, null, null);
INSERT INTO `bill_` VALUES ('95', null, '2018-10-18', null, null, null);
INSERT INTO `bill_` VALUES ('96', null, '2019-05-15', null, null, null);
INSERT INTO `bill_` VALUES ('97', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('98', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('99', null, '2021-09-24', null, null, null);
INSERT INTO `bill_` VALUES ('100', null, '2021-09-15', null, null, null);
INSERT INTO `bill_` VALUES ('101', null, '2021-09-01', null, null, null);
INSERT INTO `bill_` VALUES ('102', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('103', null, '2021-09-08', null, null, null);
INSERT INTO `bill_` VALUES ('104', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('105', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('106', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('107', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('108', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('109', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('110', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('111', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('112', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('113', null, '2021-09-07', null, null, null);
INSERT INTO `bill_` VALUES ('114', null, '2021-08-11', null, null, null);
INSERT INTO `bill_` VALUES ('115', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('116', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('117', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('118', null, '2017-06-27', null, null, null);
INSERT INTO `bill_` VALUES ('119', null, '2017-06-28', null, null, null);
INSERT INTO `bill_` VALUES ('120', null, '2017-06-29', null, null, null);
INSERT INTO `bill_` VALUES ('121', null, '2018-10-18', null, null, null);
INSERT INTO `bill_` VALUES ('122', null, '2019-05-15', null, null, null);
INSERT INTO `bill_` VALUES ('123', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('124', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('125', null, '2021-09-24', null, null, null);
INSERT INTO `bill_` VALUES ('126', null, '2021-09-15', null, null, null);
INSERT INTO `bill_` VALUES ('127', null, '2021-09-01', null, null, null);
INSERT INTO `bill_` VALUES ('128', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('129', null, '2021-09-08', null, null, null);
INSERT INTO `bill_` VALUES ('130', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('131', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('132', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('133', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('134', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('135', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('136', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('137', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('138', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('139', null, '2021-09-07', null, null, null);
INSERT INTO `bill_` VALUES ('140', null, '2021-08-11', null, null, null);
INSERT INTO `bill_` VALUES ('141', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('142', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('143', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('144', null, '2017-06-27', null, null, null);
INSERT INTO `bill_` VALUES ('145', null, '2017-06-28', null, null, null);
INSERT INTO `bill_` VALUES ('146', null, '2017-06-29', null, null, null);
INSERT INTO `bill_` VALUES ('147', null, '2018-10-18', null, null, null);
INSERT INTO `bill_` VALUES ('148', null, '2019-05-15', null, null, null);
INSERT INTO `bill_` VALUES ('149', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('150', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('151', null, '2021-09-24', null, null, null);
INSERT INTO `bill_` VALUES ('152', null, '2021-09-15', null, null, null);
INSERT INTO `bill_` VALUES ('153', null, '2021-09-01', null, null, null);
INSERT INTO `bill_` VALUES ('154', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('155', null, '2021-09-08', null, null, null);
INSERT INTO `bill_` VALUES ('156', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('157', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('158', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('159', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('160', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('161', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('162', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('163', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('164', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('165', null, '2021-09-07', null, null, null);
INSERT INTO `bill_` VALUES ('166', null, '2021-08-11', null, null, null);
INSERT INTO `bill_` VALUES ('167', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('168', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('169', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('170', null, '2017-06-27', null, null, null);
INSERT INTO `bill_` VALUES ('171', null, '2017-06-28', null, null, null);
INSERT INTO `bill_` VALUES ('172', null, '2017-06-29', null, null, null);
INSERT INTO `bill_` VALUES ('173', null, '2018-10-18', null, null, null);
INSERT INTO `bill_` VALUES ('174', null, '2019-05-15', null, null, null);
INSERT INTO `bill_` VALUES ('175', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('176', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('177', null, '2021-09-24', null, null, null);
INSERT INTO `bill_` VALUES ('178', null, '2021-09-15', null, null, null);
INSERT INTO `bill_` VALUES ('179', null, '2021-09-01', null, null, null);
INSERT INTO `bill_` VALUES ('180', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('181', null, '2021-09-08', null, null, null);
INSERT INTO `bill_` VALUES ('182', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('183', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('184', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('185', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('186', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('187', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('188', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('189', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('190', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('191', null, '2021-09-07', null, null, null);
INSERT INTO `bill_` VALUES ('192', null, '2021-08-11', null, null, null);
INSERT INTO `bill_` VALUES ('193', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('194', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('195', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('196', null, '2017-06-27', null, null, null);
INSERT INTO `bill_` VALUES ('197', null, '2017-06-28', null, null, null);
INSERT INTO `bill_` VALUES ('198', null, '2017-06-29', null, null, null);
INSERT INTO `bill_` VALUES ('199', null, '2018-10-18', null, null, null);
INSERT INTO `bill_` VALUES ('200', null, '2019-05-15', null, null, null);
INSERT INTO `bill_` VALUES ('201', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('202', null, '2021-09-14', null, null, null);
INSERT INTO `bill_` VALUES ('203', null, '2021-09-24', null, null, null);
INSERT INTO `bill_` VALUES ('204', null, '2021-09-15', null, null, null);
INSERT INTO `bill_` VALUES ('205', null, '2021-09-01', null, null, null);
INSERT INTO `bill_` VALUES ('206', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('207', null, '2021-09-08', null, null, null);
INSERT INTO `bill_` VALUES ('208', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('209', null, '2021-09-09', null, null, null);
INSERT INTO `bill_` VALUES ('210', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('211', null, '2021-09-16', null, null, null);
INSERT INTO `bill_` VALUES ('212', null, '2021-09-22', null, null, null);
INSERT INTO `bill_` VALUES ('213', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('214', null, '2021-09-30', null, null, null);
INSERT INTO `bill_` VALUES ('215', null, '2021-09-29', null, null, null);
INSERT INTO `bill_` VALUES ('216', null, '2021-09-04', null, null, null);
INSERT INTO `bill_` VALUES ('217', null, '2021-09-07', null, null, null);
INSERT INTO `bill_` VALUES ('218', null, '2021-08-11', null, null, null);

-- ----------------------------
-- Table structure for bill_type_
-- ----------------------------
DROP TABLE IF EXISTS `bill_type_`;
CREATE TABLE `bill_type_` (
  `id_` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_type_
-- ----------------------------
INSERT INTO `bill_type_` VALUES ('1', '收入');
INSERT INTO `bill_type_` VALUES ('2', '支出');
INSERT INTO `bill_type_` VALUES ('3', '借入');
INSERT INTO `bill_type_` VALUES ('4', '借出');
