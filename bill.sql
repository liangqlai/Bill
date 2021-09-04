/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1-lql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : bill

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2021-09-04 21:53:39
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
-- Table structure for bill_type_
-- ----------------------------
DROP TABLE IF EXISTS `bill_type_`;
CREATE TABLE `bill_type_` (
  `id_` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
