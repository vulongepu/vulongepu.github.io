/*
Navicat MySQL Data Transfer

Source Server         : localost
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : ph1511m

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2016-01-25 20:50:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tbl_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `datecreate` datetime DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO tbl_category VALUES ('2', 'Guita Classic', '1', '2016-01-05 20:16:26');
INSERT INTO tbl_category VALUES ('3', 'Guita China', '1', '2016-01-04 20:16:40');

-- ----------------------------
-- Table structure for `tbl_product`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `description` text,
  `metakey` text,
  `metadescription` text,
  `status` tinyint(4) DEFAULT NULL,
  `datecreate` datetime DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_province`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_province`;
CREATE TABLE `tbl_province` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_province
-- ----------------------------
INSERT INTO tbl_province VALUES ('1', 'Hải Dương', '1');
INSERT INTO tbl_province VALUES ('2', 'Hà Nội', '1');
INSERT INTO tbl_province VALUES ('3', 'Hải Phòng', '1');
INSERT INTO tbl_province VALUES ('4', 'Bạc Liêu', '1');
INSERT INTO tbl_province VALUES ('5', 'Cà Mau', '1');

-- ----------------------------
-- Table structure for `tbl_users`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `provinceid` int(11) NOT NULL,
  `description` text,
  `status` tinyint(4) DEFAULT NULL,
  `datecreate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO tbl_users VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1dvnang@gmail.com', null, '2016-01-01', '1', '4', null, null, null);
