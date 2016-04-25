/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-11-26 18:31:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tbl_ads`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ads`;
CREATE TABLE `tbl_ads` (
  `id_ads` int(10) NOT NULL AUTO_INCREMENT,
  `fake_link` text NOT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_keyword` varchar(200) DEFAULT NULL,
  `meta_description` text,
  `id_user` int(10) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id_ads`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_ads
-- ----------------------------
INSERT INTO tbl_ads VALUES ('1', 'ahcn', 'sfsdf', 'sdfsdf', 'sdfsdf', '1', 'sdfsdfsdf');

-- ----------------------------
-- Table structure for `tbl_banner`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE `tbl_banner` (
  `id_banner` int(10) NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_keyword` varchar(200) DEFAULT NULL,
  `meta_description` text,
  `image` text,
  PRIMARY KEY (`id_banner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_category`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category` (
  `id_category` int(10) NOT NULL AUTO_INCREMENT,
  `id_subcategory` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_keyword` varchar(200) DEFAULT NULL,
  `meta_description` text,
  `description` text,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO tbl_category VALUES ('1', '1', 'Váy đầm', 'Váy đầm', '', '', '');
INSERT INTO tbl_category VALUES ('2', '1', 'Áo Thun nữ', 'Áo Thun nữ', '', '', '');
INSERT INTO tbl_category VALUES ('3', '1', 'Áo len', 'Áo len', '', '', '');
INSERT INTO tbl_category VALUES ('4', '1', 'Áo Sơ mi nữ', 'Áo Sơ mi nữ', '', '', '');
INSERT INTO tbl_category VALUES ('5', '1', 'Áo vest', 'Áo vest', '', '', '');
INSERT INTO tbl_category VALUES ('6', '1', 'Quần dài nữ', 'Quần dài nữ', '', '', '');
INSERT INTO tbl_category VALUES ('7', '1', 'Quần lửng nữ', 'Quần lửng nữ', '', '', '');
INSERT INTO tbl_category VALUES ('8', '1', 'Bộ Quần áo', 'Bộ Quần áo', '', '', '');
INSERT INTO tbl_category VALUES ('9', '1', 'Quần lót nữ', 'Quần lót nữ', '', '', '');
INSERT INTO tbl_category VALUES ('10', '1', 'Quần short nữ', 'Quần short nữ', '', '', '');
INSERT INTO tbl_category VALUES ('11', '2', 'Đồng hồ nữ', 'Đồng hồ nữ', '', '', '');
INSERT INTO tbl_category VALUES ('12', '2', 'Mắt kính nữ', 'Mắt kính nữ', '', '', '');
INSERT INTO tbl_category VALUES ('13', '2', 'Thắt lưng nữ', 'Thắt lưng nữ', '', '', '');
INSERT INTO tbl_category VALUES ('14', '2', 'Nón nữ', 'Nón nữ', '', '', '');
INSERT INTO tbl_category VALUES ('15', '2', 'Kính Bơi', 'Kính Bơi', '', '', '');
INSERT INTO tbl_category VALUES ('16', '2', 'Trang sức nữ', 'Trang sức nữ', '', '', '');
INSERT INTO tbl_category VALUES ('17', '2', 'Vớ,Tất chân', 'Vớ,Tất chân', '', '', '');
INSERT INTO tbl_category VALUES ('18', '2', 'Kính áp chòng', 'Kính áp chòng', '', '', '');
INSERT INTO tbl_category VALUES ('19', '2', 'Phụ Kiến khác', 'Phụ Kiến khác', '', '', '');
INSERT INTO tbl_category VALUES ('20', '3', 'Giầy cao gót', 'Giầy cao gót', '', '', '');
INSERT INTO tbl_category VALUES ('21', '3', 'Giầy đế xuổng', 'Giầy đế xuổng', '', '', '');
INSERT INTO tbl_category VALUES ('22', '3', 'Giầy bệt nữ', 'Giầy bệt nữ', '', '', '');
INSERT INTO tbl_category VALUES ('23', '3', 'Giầy boot nữ', 'Giầy boot nữ', '', '', '');
INSERT INTO tbl_category VALUES ('24', '3', 'Dép guốc', 'Dép guốc', '', '', '');
INSERT INTO tbl_category VALUES ('25', '3', 'Giầy thể thao', 'Giầy thể thao', '', '', '');
INSERT INTO tbl_category VALUES ('26', '4', 'Áo sơ mi nam', 'Áo sơ mi nam', '', '', '');
INSERT INTO tbl_category VALUES ('27', '4', 'Áo thun nam', 'Áo thun nam', '', '', '');
INSERT INTO tbl_category VALUES ('28', '4', 'Áo khoác nam', 'Áo khoác nam', '', '', '');
INSERT INTO tbl_category VALUES ('29', '4', 'Áo thun nam', 'Áo thun nam', '', '', '');
INSERT INTO tbl_category VALUES ('30', '4', 'Đồ vét nam', 'Đồ vét nam', '', '', '');
INSERT INTO tbl_category VALUES ('31', '4', 'Quần dài nam', 'Quần dài nam', '', '', '');
INSERT INTO tbl_category VALUES ('32', '4', 'Quần short nam', 'Quần short nam', '', '', '');
INSERT INTO tbl_category VALUES ('33', '4', 'Đồ lót nam', 'Đồ lót nam', '', '', '');
INSERT INTO tbl_category VALUES ('34', '5', 'Đồng hồ nam', 'Đồng hồ nam', '', '', '');
INSERT INTO tbl_category VALUES ('35', '5', 'Mắt kính nam', 'Mắt kính nam', '', '', '');
INSERT INTO tbl_category VALUES ('36', '5', 'Thắt lưng nam', 'Thắt lưng nam', '', '', '');
INSERT INTO tbl_category VALUES ('37', '5', 'Nón nam', 'Nón nam', '', '', '');
INSERT INTO tbl_category VALUES ('38', '5', 'Vớ tất nam', 'Vớ tất nam', '', '', '');
INSERT INTO tbl_category VALUES ('39', '5', 'Trang sức nam', 'Trang sức nam', '', '', '');
INSERT INTO tbl_category VALUES ('40', '5', 'Cà vạt', 'Cà vạt', '', '', '');
INSERT INTO tbl_category VALUES ('41', '5', 'Đồ bơi nam', 'Đồ bơi nam', '', '', '');
INSERT INTO tbl_category VALUES ('42', '5', 'Phụ Kiện khác', 'Phụ Kiện khác', '', '', '');
INSERT INTO tbl_category VALUES ('43', '6', 'Giầy tây nam', 'Giầy tây nam', '', '', '');
INSERT INTO tbl_category VALUES ('44', '6', 'Giầy bệt nam', 'Giầy bệt nam', '', '', '');
INSERT INTO tbl_category VALUES ('45', '6', 'Giây scandal nam', 'Giây scandal nam', '', '', '');
INSERT INTO tbl_category VALUES ('46', '6', 'Giầy thể thao', 'Giầy thể thao', '', '', '');
INSERT INTO tbl_category VALUES ('47', '6', 'Giầy boot nam', 'Giầy boot nam', '', '', '');
INSERT INTO tbl_category VALUES ('48', '6', 'phụ kiện dép nam', 'phụ kiện dép nam', '', '', '');
INSERT INTO tbl_category VALUES ('49', '7', 'Quần áo bé trai', 'Quần áo bé trai', '', '', '');
INSERT INTO tbl_category VALUES ('50', '7', 'Quần áo sơ sinh', 'Quần áo sơ sinh', '', '', '');
INSERT INTO tbl_category VALUES ('51', '7', 'Quần áo bé gái', 'Quần áo bé gái', '', '', '');
INSERT INTO tbl_category VALUES ('52', '7', 'Đồ bơi phụ kiện', 'Đồ bơi phụ kiện', '', '', '');
INSERT INTO tbl_category VALUES ('53', '8', 'Đồng hồ trẻ em', 'Đồng hồ trẻ em', '', '', '');
INSERT INTO tbl_category VALUES ('54', '8', 'Mắt kính trẻ em', 'Mắt kính trẻ em', '', '', '');
INSERT INTO tbl_category VALUES ('55', '8', 'Băng đô-kẹp tóc', 'Băng đô-kẹp tóc', '', '', '');
INSERT INTO tbl_category VALUES ('56', '8', 'Khăn -khăn choàng', 'Khăn -khăn choàng', '', '', '');
INSERT INTO tbl_category VALUES ('57', '8', 'Trang sức', 'Trang sức', '', '', '');
INSERT INTO tbl_category VALUES ('58', '8', 'Mũ nón trẻ em', 'Mũ nón trẻ em', '', '', '');
INSERT INTO tbl_category VALUES ('59', '9', 'Mỹ phẩm chăm sóc trẻ', 'Mỹ phẩm chăm sóc trẻ', '', '', '');
INSERT INTO tbl_category VALUES ('60', '9', 'Đồ dùng thông dụng cho trẻ', 'Đồ dùng thông dụng cho trẻ', '', '', '');
INSERT INTO tbl_category VALUES ('61', '9', 'Dụng cụ ăn uống', 'Dụng cụ ăn uống', '', '', '');
INSERT INTO tbl_category VALUES ('62', '9', 'Xe đẩy trẻ em', 'Xe đẩy trẻ em', '', '', '');
INSERT INTO tbl_category VALUES ('63', '10', 'Sữa-Thực phẩm cho mẹ', 'Sữa-Thực phẩm cho mẹ', '', '', '');
INSERT INTO tbl_category VALUES ('64', '10', 'Thời trang bầu', 'Thời trang bầu', '', '', '');
INSERT INTO tbl_category VALUES ('65', '10', 'Chăm sóc sau khi sinh', 'Chăm sóc sau khi sinh', '', '', '');
INSERT INTO tbl_category VALUES ('66', '10', 'Đồ dùng cho mẹ', 'Đồ dùng cho mẹ', '', '', '');
INSERT INTO tbl_category VALUES ('67', '11', 'Giày dép bé trai', 'Giày dép bé trai', '', '', '');
INSERT INTO tbl_category VALUES ('68', '11', 'Giày sơ sinh', 'Giày sơ sinh', '', '', '');
INSERT INTO tbl_category VALUES ('69', '11', 'Giày dép gái', 'Giày dép gái', '', '', '');
INSERT INTO tbl_category VALUES ('70', '11', 'Vớ tất chân trẻ', 'Vớ tất chân trẻ', '', '', '');
INSERT INTO tbl_category VALUES ('71', '12', 'Đồ chơi bé', 'Đồ chơi bé', '', '', '');
INSERT INTO tbl_category VALUES ('72', '12', 'Đồ chơi trẻ sơ sinh', 'Đồ chơi trẻ sơ sinh', '', '', '');
INSERT INTO tbl_category VALUES ('73', '12', 'Đồ chơi vận động', 'Đồ chơi vận động', '', '', '');
INSERT INTO tbl_category VALUES ('74', '13', 'Nước hoa nữ', 'Nước hoa nữ', '', '', '');
INSERT INTO tbl_category VALUES ('75', '13', 'Nước hoa nam', 'Nước hoa nam', '', '', '');
INSERT INTO tbl_category VALUES ('76', '13', 'Trang điểm', 'Trang điểm', '', '', '');
INSERT INTO tbl_category VALUES ('77', '14', 'Chăm sóc sức khỏe', 'Chăm sóc sức khỏe', '', '', '');
INSERT INTO tbl_category VALUES ('78', '14', 'Dịch vụ làm tóc', 'Dịch vụ làm tóc', '', '', '');
INSERT INTO tbl_category VALUES ('79', '14', 'Dụng cụ chăm sóc sức khỏe', 'Dụng cụ chăm sóc sức khỏe', '', '', '');
INSERT INTO tbl_category VALUES ('80', '14', 'Dụng cụ làm đẹp', 'Dụng cụ làm đẹp', '', '', '');
INSERT INTO tbl_category VALUES ('81', '14', 'Thực phẩm chức năng', 'Thực phẩm chức năng', '', '', '');
INSERT INTO tbl_category VALUES ('82', '14', 'Các sản phẩm khác', 'Các sản phẩm khác', '', '', '');
INSERT INTO tbl_category VALUES ('83', '15', 'Tóc giả', 'Tóc giả', '', '', '');
INSERT INTO tbl_category VALUES ('84', '15', 'Dịch vụ nối tóc', 'Dịch vụ nối tóc', '', '', '');
INSERT INTO tbl_category VALUES ('85', '16', 'Quần áo đôi', 'Quần áo đôi', '', '', '');
INSERT INTO tbl_category VALUES ('86', '16', 'Phụ kiện đôi', 'Phụ kiện đôi', '', '', '');
INSERT INTO tbl_category VALUES ('87', '17', 'Trang phục cưới', 'Trang phục cưới', '', '', '');
INSERT INTO tbl_category VALUES ('88', '17', 'Dụng cụ cưới', 'Dụng cụ cưới', '', '', '');
INSERT INTO tbl_category VALUES ('89', '18', 'Đồng phục công sở', 'Đồng phục công sở', '', '', '');
INSERT INTO tbl_category VALUES ('90', '18', 'Đồng phục học sinh-sinh viên', 'Đồng phục học sinh-sinh viên', '', '', '');
INSERT INTO tbl_category VALUES ('91', '18', 'Đồng phục nhà hàng-khách hàng', 'Đồng phục nhà hàng-khách hàng', '', '', '');
INSERT INTO tbl_category VALUES ('92', '19', 'Điện thoại mới', 'Điện thoại mớ', '', '', '');
INSERT INTO tbl_category VALUES ('93', '19', 'Điện thoại cũ', 'Điện thoại cũ', '', '', '');
INSERT INTO tbl_category VALUES ('94', '19', 'Điện thoại Trung Quốc', 'Điện thoại Trung Quốc', '', '', '');
INSERT INTO tbl_category VALUES ('95', '19', 'Các loại điện thoại khác', 'Các loại điện thoại khác', '', '', '');
INSERT INTO tbl_category VALUES ('96', '20', 'Tổng đài điện thoại', 'Tổng đài điện thoại', '', '', '');
INSERT INTO tbl_category VALUES ('97', '20', 'Máy bộ đàm', 'Máy bộ đàm', '', '', '');
INSERT INTO tbl_category VALUES ('98', '21', 'Bao da', 'Bao da', '', '', '');
INSERT INTO tbl_category VALUES ('99', '21', 'Ốp lưng', 'Ốp lưng', '', '', '');
INSERT INTO tbl_category VALUES ('100', '21', 'Dây đeo điện thoại', 'Dây đeo điện thoạ', '', '', '');
INSERT INTO tbl_category VALUES ('101', '21', 'Tai nghe điện thoại', 'Tai nghe điện thoại', '', '', '');
INSERT INTO tbl_category VALUES ('102', '21', 'Vỏ điện thoại', 'Vỏ điện thoại', '', '', '');
INSERT INTO tbl_category VALUES ('103', '21', 'Phụ Kiện mạ vàng', 'Phụ Kiện mạ và', '', '', '');
INSERT INTO tbl_category VALUES ('104', '21', 'Pin điện thoại', 'Pin điện thoại', '', '', '');
INSERT INTO tbl_category VALUES ('105', '21', 'Phụ kiện linh kiện', 'Phụ kiện linh kiệ', '', '', '');
INSERT INTO tbl_category VALUES ('106', '22', 'Laptop mới', 'Laptop mới', '', '', '');
INSERT INTO tbl_category VALUES ('107', '22', 'Laptop cũ', 'Laptop cũ', '', '', '');
INSERT INTO tbl_category VALUES ('108', '22', 'Máy tính để bàn mới', 'Máy tính để bàn mớ', '', '', '');
INSERT INTO tbl_category VALUES ('109', '22', 'Mac Destop', 'Mac Destop', '', '', '');
INSERT INTO tbl_category VALUES ('110', '22', 'Macbook', 'Macbook', '', '', '');
INSERT INTO tbl_category VALUES ('111', '23', 'Usb 3G', 'Usb 3G', '', '', '');
INSERT INTO tbl_category VALUES ('112', '23', 'Wifi', 'Wifi', '', '', '');
INSERT INTO tbl_category VALUES ('113', '23', 'Moderm', 'Moderm', '', '', '');
INSERT INTO tbl_category VALUES ('114', '23', 'Hub-Switch', 'Hub-Switch', '', '', '');
INSERT INTO tbl_category VALUES ('115', '23', 'Các thiết bị khác', 'Các thiết bị khác', '', '', '');

-- ----------------------------
-- Table structure for `tbl_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment` (
  `id_comment` int(10) NOT NULL AUTO_INCREMENT,
  `id_news_detail` int(10) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id_comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_contact`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE `tbl_contact` (
  `id_contact` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_contact
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_gender`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_gender`;
CREATE TABLE `tbl_gender` (
  `id_gender` int(10) NOT NULL AUTO_INCREMENT,
  `iso_code` tinyint(1) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_gender
-- ----------------------------
INSERT INTO tbl_gender VALUES ('1', '0', 'nam');
INSERT INTO tbl_gender VALUES ('2', '1', 'nữ');

-- ----------------------------
-- Table structure for `tbl_news`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_news`;
CREATE TABLE `tbl_news` (
  `id_news` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `id_user` int(10) NOT NULL,
  `quanty_cmt` int(11) NOT NULL,
  `image` text,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_news
-- ----------------------------
INSERT INTO tbl_news VALUES ('1', 'Sed ut perspiciatis unde omnis iste natus error', 'Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.', '2014-08-05 07:01:49', '2014-08-05 07:01:49', '1', '2', 'assets/data/blog-1.jpg');
INSERT INTO tbl_news VALUES ('2', 'Sed ut perspiciatis unde omnis iste natus error', 'Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.', '2014-08-05 07:01:49', '2014-08-05 07:01:49', '1', '3', 'assets/data/blog-2.jpg');
INSERT INTO tbl_news VALUES ('3', 'Sed ut perspiciatis unde omnis iste natus error', 'Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.', '2014-08-05 07:01:49', '2014-08-05 07:01:49', '1', '3', 'assets/data/blog-3.jpg');
INSERT INTO tbl_news VALUES ('4', 'Sed ut perspiciatis unde omnis iste natus error', 'Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.', '2014-08-05 07:01:49', '2014-08-05 07:01:49', '1', '2', 'assets/data/blog-4.jpg');
INSERT INTO tbl_news VALUES ('5', 'Sed ut perspiciatis unde omnis iste natus error', 'Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.', '2014-08-05 07:01:49', '2014-08-05 07:01:49', '1', '2', 'assets/data/blog-5.jpg');

-- ----------------------------
-- Table structure for `tbl_news_detail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_news_detail`;
CREATE TABLE `tbl_news_detail` (
  `id_news_detail` int(10) NOT NULL AUTO_INCREMENT,
  `id_news` int(10) NOT NULL,
  `content` text NOT NULL,
  `ratting` tinyint(1) NOT NULL,
  `tag` text,
  `image` text,
  PRIMARY KEY (`id_news_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_news_detail
-- ----------------------------
INSERT INTO tbl_news_detail VALUES ('1', '1', 'Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.\r\n\r\nAenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.\r\n\r\nInteger rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue.\r\n\r\nNam elit agna,endrerit sit amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu massa. Quisque diam lorem, interdum vitae,dapibus ac, scelerisque vitae, pede. Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctor pulvinar. Vestibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl.\r\n\r\nAenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.\r\n\r\nInteger rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue.', '7', null, 'assets/data/blog-full.jpg');
INSERT INTO tbl_news_detail VALUES ('2', '2', 'Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem ipsum dolor sit amet, consecvtetuer adipiscing elit. Mauris fermentum dictum magna. Sed laoreet aliquam leo. Ut tellus dolor, dapibus eget, elementum vel.\r\n\r\nAenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.\r\n\r\nInteger rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue.\r\n\r\nNam elit agna,endrerit sit amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu massa. Quisque diam lorem, interdum vitae,dapibus ac, scelerisque vitae, pede. Donec eget tellus non erat lacinia fermentum. Donec in velit vel ipsum auctor pulvinar. Vestibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl.\r\n\r\nAenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Integer rutrum ante eu lacus. Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros.\r\n\r\nInteger rutrum ante eu lacus.Vestibulum libero nisl, porta vel, scelerisque eget, malesuada at, neque. Vivamus eget nibh. Etiam cursus leo vel metus. Nulla facilisi. Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue.', '7', null, 'assets/data/blog-full.jpg');

-- ----------------------------
-- Table structure for `tbl_order`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `total` float(11,0) NOT NULL,
  `date_order` datetime DEFAULT NULL,
  `status_order` tinyint(1) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO tbl_order VALUES ('1', '1', '9800000', '2015-10-23 15:59:08', '1', 'hoang', 'hoangtrungmta94@gmail.com', 'ngõ 165', '01679343575');
INSERT INTO tbl_order VALUES ('2', '1', '9400000', '2015-10-23 16:07:50', '1', 'hoang', 'hoangtrungmta94@gmail.com', 'ngõ 165', '01679343575');

-- ----------------------------
-- Table structure for `tbl_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orderdetail`;
CREATE TABLE `tbl_orderdetail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quanlity` int(11) NOT NULL,
  `date_order` datetime DEFAULT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_orderdetail
-- ----------------------------
INSERT INTO tbl_orderdetail VALUES ('1', '1', '1', '3800000', '1', '2015-10-23 15:59:08');
INSERT INTO tbl_orderdetail VALUES ('2', '1', '2', '2600000', '1', '2015-10-23 15:59:08');
INSERT INTO tbl_orderdetail VALUES ('3', '1', '3', '3400000', '1', '2015-10-23 15:59:08');
INSERT INTO tbl_orderdetail VALUES ('4', '2', '2', '2600000', '1', '2015-10-23 16:07:50');
INSERT INTO tbl_orderdetail VALUES ('5', '2', '3', '3400000', '1', '2015-10-23 16:07:50');
INSERT INTO tbl_orderdetail VALUES ('6', '2', '5', '3400000', '1', '2015-10-23 16:07:50');

-- ----------------------------
-- Table structure for `tbl_parents`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_parents`;
CREATE TABLE `tbl_parents` (
  `id_parent` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `image` text,
  PRIMARY KEY (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_parents
-- ----------------------------
INSERT INTO tbl_parents VALUES ('1', 'Thời Trang Nữ', 'data/5.png');
INSERT INTO tbl_parents VALUES ('2', 'Thời Trang Nam', 'data/5.png');
INSERT INTO tbl_parents VALUES ('3', 'Mẹ Và Bé', 'data/17.png');
INSERT INTO tbl_parents VALUES ('4', 'Mỹ Phẩm Và Làm Đẹp', 'data/15.png');
INSERT INTO tbl_parents VALUES ('5', 'Đồ Cưới Và Đồ Đôi', 'data/9.png');
INSERT INTO tbl_parents VALUES ('6', 'Điện thoại-Phụ Kiện', 'data/14.png');
INSERT INTO tbl_parents VALUES ('7', 'Máy Tính', 'data/19.png');
INSERT INTO tbl_parents VALUES ('8', 'Máy ảnh-Máy Quay', 'data/11.png');
INSERT INTO tbl_parents VALUES ('9', 'Điện Máy', 'data/12.png');

-- ----------------------------
-- Table structure for `tbl_product`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `id_product` int(10) NOT NULL AUTO_INCREMENT,
  `id_category` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price_old` double NOT NULL,
  `price_new` double NOT NULL,
  `ratting` tinyint(1) DEFAULT NULL COMMENT '1:1 sao\r\n2:2sao\r\n3:3sao\r\n4:4 sao\r\n5:5sao\r\n',
  `quanty` int(11) DEFAULT NULL,
  `size` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0:con hang\r\n1: het hang\r\n2:moi nhat\r\n3:ban chay nhat\r\n4:xem nhieu nhat\r\n5:giam gia\r\n',
  `date_add` datetime DEFAULT NULL,
  `date_upd` datetime DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_review1` varchar(255) DEFAULT NULL,
  `image_review2` varchar(255) DEFAULT NULL,
  `image_review3` varchar(255) DEFAULT NULL,
  `image_review4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO tbl_product VALUES ('1', '1', 'Sexy Lady', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '52', '3800000', '1', '34', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('2', '1', 'Perfect Dress', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '34', '2600000', '4', '23', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('3', '1', 'Fresh Summer', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '12', '3400000', '3', '23', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('4', '1', 'Flowers Dress', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '45', '5600000', '3', '23', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('5', '1', 'Maecenas consequat mauris', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '3400000', '3', '1', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('6', '1', 'Maecenas consequat mauris', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '4500000', '2', '45', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('7', '1', 'Maecenas consequat mauris', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '4500000', '3', '23', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('8', '1', 'Maecenas consequat maur', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '2300000', '3', '3', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('9', '1', 'Maecenas consequat mauris', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '3400000', '2', '3', null, '0', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('10', '1', 'Blue Dress', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '4500000', '5', '34', null, '1', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('11', '1', 'Yellow Dress', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '3400000', '5', '3', null, '1', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('12', '1', 'Cyan Dress', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '33400000', '5', '3', null, '1', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('13', '1', 'Nice Dress', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '38', '5200000', '5', '4', null, '1', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('14', '1', 'Flowers Dress', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '4500000', '5', '6', null, '1', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('15', '1', 'Red Dress', 'Chiếc váy vừa đẹp vừa sang trọng rất phù hợp với những quý bà xinh đẹp', '23', '4500000', '5', '3', null, '1', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('16', '57', 'Maecenas consequat mauris', 'Nhưng đồ trang sức đầy sang trọng rất phù hợp để nâng cao đẳng cấp của bạn', '34', '3400000', '5', '34', null, null, '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('17', '57', 'Maecenas consequat mauris', 'Nhưng đồ trang sức đầy sang trọng rất phù hợp để nâng cao đẳng cấp của bạn', '23', '5400000', '5', '3', null, null, '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('18', '57', 'Maecenas consequat mauris', 'Nhưng đồ trang sức đầy sang trọng rất phù hợp để nâng cao đẳng cấp của bạn', '43', '3400000', '5', '1', null, null, '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('19', '57', 'Maecenas consequat mauris', 'Nhưng đồ trang sức đầy sang trọng rất phù hợp để nâng cao đẳng cấp của bạn', '23', '4500000', '5', '3', null, null, '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('20', '57', 'Maecenas consequat mauris', 'Nhưng đồ trang sức đầy sang trọng rất phù hợp để nâng cao đẳng cấp của bạn', '34', '5600000', '5', '3', null, null, '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('21', '57', 'Maecenas consequat mauris', 'Nhưng đồ trang sức đầy sang trọng rất phù hợp để nâng cao đẳng cấp của bạn', '34', '5600000', '5', '3', null, null, '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('22', '57', 'Maecenas consequat mauris', 'Nhưng đồ trang sức đầy sang trọng rất phù hợp để nâng cao đẳng cấp của bạn', '56', '6500000', '5', '4', null, null, '2015-08-10 00:34:34', '2015-08-10 00:34:34', '', null, null, null, null);
INSERT INTO tbl_product VALUES ('26', '1', 'Test', 'Test', '123456', '12345600000', '5', '5', 'M', '1', '2015-09-10 00:00:00', '2015-09-10 00:00:00', '/uploads/Penguins.jpg', '', '', '', '');

-- ----------------------------
-- Table structure for `tbl_provincial`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_provincial`;
CREATE TABLE `tbl_provincial` (
  `id_provincial` int(10) NOT NULL AUTO_INCREMENT,
  `name_provincial` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_provincial`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_provincial
-- ----------------------------
INSERT INTO tbl_provincial VALUES ('1', 'TP.HCM', '1');
INSERT INTO tbl_provincial VALUES ('2', 'Hà Nội', '1');
INSERT INTO tbl_provincial VALUES ('3', 'Quận Đống Đa', '1');
INSERT INTO tbl_provincial VALUES ('4', 'Quận Thanh Xuân', '1');
INSERT INTO tbl_provincial VALUES ('5', 'Quận Long Biên', '1');
INSERT INTO tbl_provincial VALUES ('6', 'Quận Hoàng Mai', '1');
INSERT INTO tbl_provincial VALUES ('7', 'Quận Cầu Giấy', '1');
INSERT INTO tbl_provincial VALUES ('8', 'Quận Hoàn Kiếm', '1');
INSERT INTO tbl_provincial VALUES ('9', 'Quận Tây Hồ', '1');
INSERT INTO tbl_provincial VALUES ('10', 'Nam Định', '1');
INSERT INTO tbl_provincial VALUES ('11', 'Thái Bình', '1');
INSERT INTO tbl_provincial VALUES ('12', 'Ninh Bình', '1');
INSERT INTO tbl_provincial VALUES ('13', 'Thanh Hoá', '1');
INSERT INTO tbl_provincial VALUES ('14', 'Hải Dương', '1');
INSERT INTO tbl_provincial VALUES ('15', 'Hưng Yên', '1');
INSERT INTO tbl_provincial VALUES ('16', 'Bắc Ninh', '1');
INSERT INTO tbl_provincial VALUES ('17', 'Bắc Giang', '1');
INSERT INTO tbl_provincial VALUES ('18', 'Lạng Sơn', '1');
INSERT INTO tbl_provincial VALUES ('19', 'Vĩnh Phúc', '1');
INSERT INTO tbl_provincial VALUES ('20', 'Phú Thọ', '1');
INSERT INTO tbl_provincial VALUES ('21', 'Tuyên Quang', '1');
INSERT INTO tbl_provincial VALUES ('22', 'Yên Bái', '1');
INSERT INTO tbl_provincial VALUES ('23', 'Bắc Cạn', '1');
INSERT INTO tbl_provincial VALUES ('24', 'Thái Nguyên', '1');
INSERT INTO tbl_provincial VALUES ('25', 'Nghệ An', '1');
INSERT INTO tbl_provincial VALUES ('26', 'Hà Tĩnh', '1');
INSERT INTO tbl_provincial VALUES ('27', 'Quảng Bình', '1');
INSERT INTO tbl_provincial VALUES ('28', 'Quảng Trị', '1');
INSERT INTO tbl_provincial VALUES ('29', 'Thừa Thiên Huế', '1');
INSERT INTO tbl_provincial VALUES ('30', 'Đà Nẵng', '1');
INSERT INTO tbl_provincial VALUES ('31', 'Quy Nhơn', '1');
INSERT INTO tbl_provincial VALUES ('32', 'Phan Thiết', '1');
INSERT INTO tbl_provincial VALUES ('33', 'Đắc Lắc', '1');
INSERT INTO tbl_provincial VALUES ('34', 'Cần Thơ', '1');
INSERT INTO tbl_provincial VALUES ('35', 'Cà Mau', '1');
INSERT INTO tbl_provincial VALUES ('36', 'Vũng Tàu', '1');

-- ----------------------------
-- Table structure for `tbl_sale`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sale`;
CREATE TABLE `tbl_sale` (
  `id_sale` int(10) NOT NULL AUTO_INCREMENT,
  `id_product` int(10) NOT NULL,
  `quanty` int(11) NOT NULL,
  `sale_for` int(11) NOT NULL,
  `sale_upd` datetime NOT NULL,
  PRIMARY KEY (`id_sale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_sale
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shop_config`;
CREATE TABLE `tbl_shop_config` (
  `id_shop` int(10) NOT NULL AUTO_INCREMENT,
  `address` varchar(200) NOT NULL,
  `telephone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_shop_config
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_subcategory`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subcategory`;
CREATE TABLE `tbl_subcategory` (
  `id_subcategory` int(10) NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id_subcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_subcategory
-- ----------------------------
INSERT INTO tbl_subcategory VALUES ('1', '1', 'Quần áo nữ');
INSERT INTO tbl_subcategory VALUES ('2', '1', 'Trang sức-Phụ kiện');
INSERT INTO tbl_subcategory VALUES ('3', '1', 'Giầy dép nữ');
INSERT INTO tbl_subcategory VALUES ('4', '2', 'Quần áo nam');
INSERT INTO tbl_subcategory VALUES ('5', '2', 'Phụ Kiện Nam');
INSERT INTO tbl_subcategory VALUES ('6', '2', 'Giầy Dép Nam');
INSERT INTO tbl_subcategory VALUES ('7', '3', 'Thời Trang trẻ em');
INSERT INTO tbl_subcategory VALUES ('8', '3', 'Phụ Kiện Trẻ em');
INSERT INTO tbl_subcategory VALUES ('9', '3', 'Đồ dùng trẻ em');
INSERT INTO tbl_subcategory VALUES ('10', '3', 'Đồ dùng cho mẹ');
INSERT INTO tbl_subcategory VALUES ('11', '3', 'Giày dép trẻ em');
INSERT INTO tbl_subcategory VALUES ('12', '3', 'Đồ chơi trẻ em');
INSERT INTO tbl_subcategory VALUES ('13', '4', 'Nước hoa-Mỹ phẩm');
INSERT INTO tbl_subcategory VALUES ('14', '4', 'Chăm sóc sắc đẹp');
INSERT INTO tbl_subcategory VALUES ('15', '4', 'Tóc giả-Nối tóc');
INSERT INTO tbl_subcategory VALUES ('16', '5', 'Đồ đôi');
INSERT INTO tbl_subcategory VALUES ('17', '5', 'Đồ Cưới');
INSERT INTO tbl_subcategory VALUES ('18', '5', 'Đồng Phục');
INSERT INTO tbl_subcategory VALUES ('19', '6', 'Điện thoại');
INSERT INTO tbl_subcategory VALUES ('20', '6', 'Thiết bị viễn thông');
INSERT INTO tbl_subcategory VALUES ('21', '6', 'Phụ Kiện điện thoại');
INSERT INTO tbl_subcategory VALUES ('22', '7', 'Máy vi tính');
INSERT INTO tbl_subcategory VALUES ('23', '7', 'Thiết bị mạng');
INSERT INTO tbl_subcategory VALUES ('24', '7', 'Máy văn phòng');
INSERT INTO tbl_subcategory VALUES ('25', '8', 'Máy ảnh');
INSERT INTO tbl_subcategory VALUES ('26', '8', 'Máy quay phim');
INSERT INTO tbl_subcategory VALUES ('27', '8', 'Phụ Kiện-Linh Kiện');
INSERT INTO tbl_subcategory VALUES ('28', '9', 'Điện Lạnh');
INSERT INTO tbl_subcategory VALUES ('29', '9', 'Đồ Dùng nhà bếp');
INSERT INTO tbl_subcategory VALUES ('30', '9', 'Điện tử');
INSERT INTO tbl_subcategory VALUES ('31', '9', 'Nhạc cụ');
INSERT INTO tbl_subcategory VALUES ('32', '9', 'Thiết bị an ninh');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT COMMENT 'role:0:admin\r\nrole 1:member\r\n',
  `lastname` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `id_provincial` int(10) DEFAULT NULL,
  `telephone` varchar(200) DEFAULT NULL,
  `address_street` varchar(200) DEFAULT NULL,
  `description` text,
  `newpass` varchar(200) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `date_upd` datetime DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO tbl_user VALUES ('1', 'Bui Ngoc', 'Huong', 'admin', '123456', 'admin@gmail.com', '1', '2015-08-11', '1', '01679343575', 'ngõ 165', 'bui ngoc huong - hai duong', '647636400', '2015-08-10 00:34:34', '2015-08-10 00:34:34', '1', '1');
INSERT INTO tbl_user VALUES ('2', 'Bill', 'Gate', 'admin2', '123456', 'admin2@gmail.com', '1', '2015-11-03', '2', '01658954487', null, null, null, null, null, '1', '1');
INSERT INTO tbl_user VALUES ('3', 'admin3', 'Messi', 'Messi', 'e10adc3949ba59abbe56e057f20f883e', 'admin3@gmail.com', '1', '2015-11-10', '10', '01678654321', 'Nam Dinh', 'Nam Dinh', null, '0000-00-00 00:00:00', null, '1', '1');
INSERT INTO tbl_user VALUES ('4', 'admin4', 'sadad', 'asdas', 'e10adc3949ba59abbe56e057f20f883e', 'admin4@gmail.com', '2', '2015-11-03', '18', '0168498756', 'lang son', 'lang son', null, '2015-11-26 16:35:19', null, '1', '1');
INSERT INTO tbl_user VALUES ('5', 'admin5', 'admin5', 'admin5', 'e10adc3949ba59abbe56e057f20f883e', 'admin5@gmail.com', '3', '2015-11-12', '11', '01689468564', 'thai binh', 'thai binh', null, '2015-11-26 16:37:13', null, '1', '1');
