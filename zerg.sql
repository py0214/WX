/*
Navicat MySQL Data Transfer

Source Server         : qiyue
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : zerg

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-08-09 18:19:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT 'Banner名称，通常作为标识',
  `description` varchar(255) DEFAULT NULL COMMENT 'Banner描述',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='banner管理表';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '首页置顶', '首页轮播图', null, null);

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联image表',
  `key_word` varchar(100) NOT NULL COMMENT '执行关键字，根据不同的type含义不同',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '跳转类型，可能导向商品，可能导向专题，可能导向其他。0，无导向；1：导向商品;2:导向专题',
  `delete_time` int(11) DEFAULT NULL,
  `banner_id` int(11) NOT NULL COMMENT '外键，关联banner表',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='banner子项表';

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES ('1', '32', '11', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('2', '2', '11', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('3', '3', '11', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('5', '1', '11', '1', null, '1', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `topic_img_id` int(11) DEFAULT NULL COMMENT '外键，关联image表',
  `delete_time` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='商品类目';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('2', '唱片', '6', null, null, null);
INSERT INTO `category` VALUES ('3', '男衣', '5', null, null, null);
INSERT INTO `category` VALUES ('4', '女衣', '7', null, null, null);
INSERT INTO `category` VALUES ('5', '数码', '4', null, null, null);
INSERT INTO `category` VALUES ('6', '书本', '8', null, null, null);
INSERT INTO `category` VALUES ('7', '宠物', '9', null, null, null);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL COMMENT '图片路径',
  `from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 来自本地，2 来自公网',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COMMENT='图片总表';

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '/banner-1a.png', '1', null, null);
INSERT INTO `image` VALUES ('2', '/banner-2a.png', '1', null, null);
INSERT INTO `image` VALUES ('3', '/banner-3a.png', '1', null, null);
INSERT INTO `image` VALUES ('4', '/category-cake.png', '1', null, null);
INSERT INTO `image` VALUES ('5', '/category-vg.png', '1', null, null);
INSERT INTO `image` VALUES ('6', '/category-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('7', '/category-fry-a.png', '1', null, null);
INSERT INTO `image` VALUES ('8', '/category-tea.png', '1', null, null);
INSERT INTO `image` VALUES ('9', '/category-rice.png', '1', null, null);
INSERT INTO `image` VALUES ('10', '/product-dryfruit@1.png', '1', null, null);
INSERT INTO `image` VALUES ('13', '/product-vg@1.png', '1', null, null);
INSERT INTO `image` VALUES ('14', '/product-rice@6.png', '1', null, null);
INSERT INTO `image` VALUES ('16', '/1@theme.png', '1', null, null);
INSERT INTO `image` VALUES ('17', '/2@theme.png', '1', null, null);
INSERT INTO `image` VALUES ('18', '/3@theme.png', '1', null, null);
INSERT INTO `image` VALUES ('19', '/detail-1@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('20', '/detail-2@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('21', '/detail-3@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('22', '/detail-4@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('23', '/detail-5@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('24', '/detail-6@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('25', '/detail-7@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('26', '/detail-8@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('27', '/detail-9@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('28', '/detail-11@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('29', '/detail-10@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('31', '/product-rice@1.png', '1', null, null);
INSERT INTO `image` VALUES ('32', '/product-tea@1.png', '1', null, null);
INSERT INTO `image` VALUES ('33', '/product-dryfruit@2.png', '1', null, null);
INSERT INTO `image` VALUES ('36', '/product-dryfruit@3.png', '1', null, null);
INSERT INTO `image` VALUES ('37', '/product-dryfruit@4.png', '1', null, null);
INSERT INTO `image` VALUES ('38', '/product-dryfruit@5.png', '1', null, null);
INSERT INTO `image` VALUES ('39', '/product-dryfruit-a@6.png', '1', null, null);
INSERT INTO `image` VALUES ('40', '/product-dryfruit@7.png', '1', null, null);
INSERT INTO `image` VALUES ('41', '/product-rice@2.png', '1', null, null);
INSERT INTO `image` VALUES ('42', '/product-rice@3.png', '1', null, null);
INSERT INTO `image` VALUES ('43', '/product-rice@4.png', '1', null, null);
INSERT INTO `image` VALUES ('44', '/product-fry@1.png', '1', null, null);
INSERT INTO `image` VALUES ('45', '/product-fry@2.png', '1', null, null);
INSERT INTO `image` VALUES ('46', '/product-fry@3.png', '1', null, null);
INSERT INTO `image` VALUES ('47', '/product-tea@2.png', '1', null, null);
INSERT INTO `image` VALUES ('48', '/product-tea@3.png', '1', null, null);
INSERT INTO `image` VALUES ('49', '/1@theme-head.png', '1', null, null);
INSERT INTO `image` VALUES ('50', '/2@theme-head.png', '1', null, null);
INSERT INTO `image` VALUES ('51', '/3@theme-head.png', '1', null, null);
INSERT INTO `image` VALUES ('52', '/product-cake@1.png', '1', null, null);
INSERT INTO `image` VALUES ('53', '/product-cake@2.png', '1', null, null);
INSERT INTO `image` VALUES ('54', '/product-cake-a@3.png', '1', null, null);
INSERT INTO `image` VALUES ('55', '/product-cake-a@4.png', '1', null, null);
INSERT INTO `image` VALUES ('56', '/product-dryfruit@8.png', '1', null, null);
INSERT INTO `image` VALUES ('57', '/product-fry@4.png', '1', null, null);
INSERT INTO `image` VALUES ('58', '/product-fry@5.png', '1', null, null);
INSERT INTO `image` VALUES ('59', '/product-rice@5.png', '1', null, null);
INSERT INTO `image` VALUES ('60', '/product-rice@7.png', '1', null, null);
INSERT INTO `image` VALUES ('62', '/detail-12@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('63', '/detail-13@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('65', '/banner-4a.png', '1', null, null);
INSERT INTO `image` VALUES ('66', '/product-vg@4.png', '1', null, null);
INSERT INTO `image` VALUES ('67', '/product-vg@5.png', '1', null, null);
INSERT INTO `image` VALUES ('68', '/product-vg@2.png', '1', null, null);
INSERT INTO `image` VALUES ('69', '/product-vg@3.png', '1', null, null);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL COMMENT '外键，用户id，注意并不是openid',
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `total_price` decimal(6,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:未支付， 2：已支付，3：已发货 , 4: 已支付，但库存不足',
  `snap_img` varchar(255) DEFAULT NULL COMMENT '订单快照图片',
  `snap_name` varchar(80) DEFAULT NULL COMMENT '订单快照名称',
  `total_count` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) DEFAULT NULL,
  `snap_items` text COMMENT '订单其他信息快照（json)',
  `snap_address` varchar(500) DEFAULT NULL COMMENT '地址快照',
  `prepay_id` varchar(100) DEFAULT NULL COMMENT '订单微信支付的预订单id（用于发送模板消息）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', 'B511386082054418', '1', null, '0', '0.02', '3', 'http://y.cn/images/product-vg@1.png', '芹菜 半斤等', '2', '1526038608', '[{\"id\":1,\"havaStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u82b9\\u83dc \\u534a\\u65a4\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-vg@1.png\"},{\"id\":2,\"havaStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('5', 'B513033742723219', '1', null, '1526203374', '0.01', '1', 'http://y.cn/images/product-vg@2.png', '泥蒿 半斤', '1', '1526203374', '[{\"id\":7,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u6ce5\\u84bf \\u534a\\u65a4\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-vg@2.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('6', 'B513034494296560', '1', null, '1526203449', '0.01', '1', 'http://y.cn/images/product-dryfruit@4.png', '冬木红枣 500克', '1', '1526203449', '[{\"id\":9,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u51ac\\u6728\\u7ea2\\u67a3 500\\u514b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@4.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('7', 'B513034975392288', '1', null, '1526203497', '0.01', '2', 'http://y.cn/images/product-rice@2.png', '绿豆 125克', '1', '1526203497', '[{\"id\":13,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u7eff\\u8c46 125\\u514b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-rice@2.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('8', 'B513070940222047', '1', null, '1526207093', '0.01', '1', 'http://y.cn/images/product-vg@2.png', '泥蒿 半斤', '1', '1526207093', '[{\"id\":7,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u6ce5\\u84bf \\u534a\\u65a4\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-vg@2.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('9', 'B513073044013639', '1', null, '1526207304', '0.01', '1', 'http://y.cn/images/product-dryfruit@4.png', '冬木红枣 500克', '1', '1526207304', '[{\"id\":9,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u51ac\\u6728\\u7ea2\\u67a3 500\\u514b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@4.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('10', 'B513074703841345', '1', null, '1526207470', '0.01', '1', 'http://y.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '1', '1526207470', '[{\"id\":8,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@3.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('11', 'B513077009477653', '1', null, '1526207700', '0.01', '1', 'http://y.cn/images/product-dryfruit@5.png', '万紫千凤梨 300克', '1', '1526207700', '[{\"id\":10,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u4e07\\u7d2b\\u5343\\u51e4\\u68a8 300\\u514b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@5.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('12', 'B513078541417273', '1', null, '1526207854', '0.01', '1', 'http://y.cn/images/product-dryfruit@5.png', '万紫千凤梨 300克', '1', '1526207854', '[{\"id\":10,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u4e07\\u7d2b\\u5343\\u51e4\\u68a8 300\\u514b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@5.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('13', 'B513084212508991', '1', null, '1526208421', '0.01', '1', 'http://y.cn/images/product-tea@1.png', '红袖枸杞 6克*3袋', '1', '1526208421', '[{\"id\":4,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u7ea2\\u8896\\u67b8\\u675e 6\\u514b*3\\u888b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-tea@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('14', 'B513084542620181', '1', null, '1526208454', '0.01', '3', 'http://y.cn/images/product-tea@1.png', '红袖枸杞 6克*3袋', '1', '1526260977', '[{\"id\":4,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u7ea2\\u8896\\u67b8\\u675e 6\\u514b*3\\u888b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-tea@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('15', 'B513087560565305', '1', null, '1526208755', '0.01', '1', 'http://y.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '1', '1526208755', '[{\"id\":8,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@3.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('16', 'B513089350551008', '1', null, '1526208934', '0.01', '1', 'http://y.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '1', '1526208934', '[{\"id\":2,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('17', 'B513090196647471', '1', null, '1526209019', '0.01', '2', 'http://y.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '1', '1526209019', '[{\"id\":2,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('18', 'B513090739616772', '1', null, '1526209073', '0.01', '2', 'http://y.cn/images/product-tea@1.png', '红袖枸杞 6克*3袋', '1', '1526209073', '[{\"id\":4,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u7ea2\\u8896\\u67b8\\u675e 6\\u514b*3\\u888b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-tea@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('19', 'B513109515077611', '1', null, '1526210951', '0.01', '3', 'http://y.cn/images/product-cake@2.png', '小红的猪耳朵 120克', '1', '1526210951', '[{\"id\":6,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5c0f\\u7ea2\\u7684\\u732a\\u8033\\u6735 120\\u514b\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-cake@2.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('20', 'B513129293786418', '1', null, '1526212929', '0.01', '3', 'http://y.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '1', '1526212929', '[{\"id\":2,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('21', 'B513228293798649', '1', null, '1526222829', '0.01', '1', 'http://y.cn/images/product-dryfruit-a@6.png', '只爱陌生人', '1', '1526222829', '[{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('22', 'B513229257605461', '1', null, '1526222925', '0.01', '3', 'http://y.cn/images/product-dryfruit-a@6.png', '只爱陌生人', '1', '1526222925', '[{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('23', 'B513230606761269', '1', null, '1526223060', '0.01', '3', 'http://y.cn/images/product-dryfruit-a@6.png', '只爱陌生人', '1', '1526223060', '[{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('24', 'B513230899804277', '1', null, '1526223089', '0.01', '3', 'http://y.cn/images/product-tea@1.png', '只爱陌生人', '1', '1526261157', '[{\"id\":4,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-tea@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('25', 'B513231025482209', '1', null, '1526223102', '0.01', '3', 'http://y.cn/images/product-rice@1.png', '商品', '1', '1526261140', '[{\"id\":3,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-rice@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('26', 'B526399905207900', '1', null, '1527339990', '0.01', '2', 'http://y.cn/images/product-dryfruit-a@6.png', '只爱陌生人', '1', '1527339990', '[{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('27', 'B529823858384407', '1', null, '1527582385', '0.02', '2', 'http://y.cn/images/product-dryfruit-a@6.png', '只爱陌生人', '2', '1527582385', '[{\"id\":11,\"haveStock\":true,\"counts\":2,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.02,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('28', 'B606835597601186', '1', null, '1528283559', '0.06', '3', 'http://y.cn/images/product-cake@2.png', '只爱陌生人', '6', '1528283559', '[{\"id\":6,\"haveStock\":true,\"counts\":6,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.06,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-cake@2.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('29', 'B606839440312441', '1', null, '1528283943', '0.08', '2', 'http://y.cn/images/product-dryfruit@1.png', '商品等', '8', '1528283943', '[{\"id\":2,\"haveStock\":true,\"counts\":3,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.03,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@1.png\"},{\"id\":5,\"haveStock\":true,\"counts\":5,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.05,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@2.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('30', 'B606840528051266', '1', null, '1528284052', '0.01', '2', 'http://y.cn/images/product-dryfruit@1.png', '商品', '1', '1528284052', '[{\"id\":2,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@1.png\"}]', '{\"name\":\"xiaoyu\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('31', 'B608385453478483', '1', null, '1528438545', '0.05', '3', 'http://y.cn/images/product-vg@1.png', '商品1号等', '5', '1528438545', '[{\"id\":1,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c11\\u53f7\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-vg@1.png\"},{\"id\":2,\"haveStock\":true,\"counts\":4,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.04,\"main_img_url\":\"http:\\/\\/y.cn\\/images\\/product-dryfruit@1.png\"}]', '{\"name\":\"xiao\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('32', 'B609310825337349', '1', null, '1528531082', '0.02', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-dryfruit-a@6.png', '只爱陌生人等', '2', '1528531082', '[{\"id\":15,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-rice@4.png\"},{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('33', 'B609310837674438', '1', null, '1528531083', '0.02', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-dryfruit-a@6.png', '只爱陌生人等', '2', '1528531083', '[{\"id\":15,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-rice@4.png\"},{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('34', 'B609310841554164', '1', null, '1528531084', '0.02', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-dryfruit-a@6.png', '只爱陌生人等', '2', '1528531084', '[{\"id\":15,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-rice@4.png\"},{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('35', 'B609310843242573', '1', null, '1528531084', '0.02', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-dryfruit-a@6.png', '只爱陌生人等', '2', '1528531084', '[{\"id\":15,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-rice@4.png\"},{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('36', 'B609310845865555', '1', null, '1528531084', '0.02', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-dryfruit-a@6.png', '只爱陌生人等', '2', '1528531084', '[{\"id\":15,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-rice@4.png\"},{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('37', 'B609310846769879', '1', null, '1528531084', '0.02', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-dryfruit-a@6.png', '只爱陌生人等', '2', '1528531084', '[{\"id\":15,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-rice@4.png\"},{\"id\":11,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u53ea\\u7231\\u964c\\u751f\\u4eba\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-dryfruit-a@6.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('38', 'B609313023766209', '1', null, '1528531302', '0.02', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-vg@1.png', '商品1号等', '2', '1528531302', '[{\"id\":1,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c11\\u53f7\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-vg@1.png\"},{\"id\":2,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-dryfruit@1.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('39', 'B609315072549072', '1', null, '1528531507', '0.01', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-rice@2.png', '商品', '1', '1528531507', '[{\"id\":13,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-rice@2.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('40', 'B609315094186891', '1', null, '1528531509', '0.01', '2', 'http://67a86f0d.ngrok.io/zerg/public/images/product-rice@2.png', '商品', '1', '1528531509', '[{\"id\":13,\"haveStock\":true,\"counts\":1,\"price\":\"0.01\",\"name\":\"\\u5546\\u54c1\",\"totalPrice\":0.01,\"main_img_url\":\"http:\\/\\/67a86f0d.ngrok.io\\/zerg\\/public\\/images\\/product-rice@2.png\"}]', '{\"name\":\"\\u5c0f\\u5b87\",\"mobile\":\"15222520223\",\"province\":\"\\u5b89\\u5fbd\",\"city\":\"\\u5bbf\\u5dde\",\"country\":\"China\",\"detail\":\"\\u7075\\u74a7\\u53bf\",\"update_time\":\"1970-01-01 08:00:00\"}', null);

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL COMMENT '联合主键，订单id',
  `product_id` int(11) NOT NULL COMMENT '联合主键，商品id',
  `count` int(11) NOT NULL COMMENT '商品数量',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES ('1', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('2', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('31', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('38', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('16', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('17', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('20', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('29', '2', '3', null, null);
INSERT INTO `order_product` VALUES ('30', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('31', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('38', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('25', '3', '1', null, null);
INSERT INTO `order_product` VALUES ('13', '4', '1', null, null);
INSERT INTO `order_product` VALUES ('14', '4', '1', null, null);
INSERT INTO `order_product` VALUES ('18', '4', '1', null, null);
INSERT INTO `order_product` VALUES ('24', '4', '1', null, null);
INSERT INTO `order_product` VALUES ('29', '5', '5', null, null);
INSERT INTO `order_product` VALUES ('19', '6', '1', null, null);
INSERT INTO `order_product` VALUES ('28', '6', '6', null, null);
INSERT INTO `order_product` VALUES ('5', '7', '1', null, null);
INSERT INTO `order_product` VALUES ('8', '7', '1', null, null);
INSERT INTO `order_product` VALUES ('10', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('15', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('6', '9', '1', null, null);
INSERT INTO `order_product` VALUES ('9', '9', '1', null, null);
INSERT INTO `order_product` VALUES ('11', '10', '1', null, null);
INSERT INTO `order_product` VALUES ('12', '10', '1', null, null);
INSERT INTO `order_product` VALUES ('21', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('22', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('23', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('26', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('27', '11', '2', null, null);
INSERT INTO `order_product` VALUES ('32', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('33', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('34', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('35', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('36', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('37', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('7', '13', '1', null, null);
INSERT INTO `order_product` VALUES ('39', '13', '1', null, null);
INSERT INTO `order_product` VALUES ('40', '13', '1', null, null);
INSERT INTO `order_product` VALUES ('32', '15', '1', null, null);
INSERT INTO `order_product` VALUES ('33', '15', '1', null, null);
INSERT INTO `order_product` VALUES ('34', '15', '1', null, null);
INSERT INTO `order_product` VALUES ('35', '15', '1', null, null);
INSERT INTO `order_product` VALUES ('36', '15', '1', null, null);
INSERT INTO `order_product` VALUES ('37', '15', '1', null, null);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL COMMENT '商品名称',
  `price` decimal(6,2) NOT NULL COMMENT '价格,单位：分',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存量',
  `delete_time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_img_url` varchar(255) DEFAULT NULL COMMENT '主图ID号，这是一个反范式设计，有一定的冗余',
  `from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '图片来自 1 本地 ，2公网',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL,
  `summary` varchar(50) DEFAULT NULL COMMENT '摘要',
  `img_id` int(11) DEFAULT NULL COMMENT '图片外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '商品1号', '0.01', '1', null, '3', '/product-vg@1.png', '1', null, null, null, '13');
INSERT INTO `product` VALUES ('2', '商品', '0.01', '984', null, '2', '/product-dryfruit@1.png', '1', null, null, null, '10');
INSERT INTO `product` VALUES ('3', '商品', '0.01', '996', null, '7', '/product-rice@1.png', '1', null, null, null, '31');
INSERT INTO `product` VALUES ('4', '只爱陌生人', '0.01', '998', null, '6', '/product-tea@1.png', '1', null, null, null, '32');
INSERT INTO `product` VALUES ('5', '商品', '0.01', '995', null, '2', '/product-dryfruit@2.png', '1', null, null, null, '33');
INSERT INTO `product` VALUES ('6', '只爱陌生人', '0.01', '997', null, '5', '/product-cake@2.png', '1', null, null, null, '53');
INSERT INTO `product` VALUES ('7', '商品', '0.01', '998', null, '3', '/product-vg@2.png', '1', null, null, null, '68');
INSERT INTO `product` VALUES ('8', '商品', '0.01', '995', null, '2', '/product-dryfruit@3.png', '1', null, null, null, '36');
INSERT INTO `product` VALUES ('9', '商品', '0.01', '996', null, '2', '/product-dryfruit@4.png', '1', null, null, null, '37');
INSERT INTO `product` VALUES ('10', '商品', '0.01', '996', null, '2', '/product-dryfruit@5.png', '1', null, null, null, '38');
INSERT INTO `product` VALUES ('11', '只爱陌生人', '0.01', '994', null, '2', '/product-dryfruit-a@6.png', '1', null, null, null, '39');
INSERT INTO `product` VALUES ('12', '商品', '0.01', '999', null, '2', '/product-dryfruit@7.png', '1', null, null, null, '40');
INSERT INTO `product` VALUES ('13', '商品', '0.01', '999', null, '7', '/product-rice@2.png', '1', null, null, null, '41');
INSERT INTO `product` VALUES ('14', '商品', '0.01', '999', null, '7', '/product-rice@3.png', '1', null, null, null, '42');
INSERT INTO `product` VALUES ('15', '商品', '0.01', '999', null, '7', '/product-rice@4.png', '1', null, null, null, '43');
INSERT INTO `product` VALUES ('16', '商品', '0.01', '999', null, '3', '/product-vg@3.png', '1', null, null, null, '69');
INSERT INTO `product` VALUES ('17', '商品', '0.01', '999', null, '4', '/product-fry@1.png', '1', null, null, null, '44');
INSERT INTO `product` VALUES ('18', '商品', '0.01', '997', null, '4', '/product-fry@2.png', '1', null, null, null, '45');
INSERT INTO `product` VALUES ('19', '商品', '0.01', '999', null, '4', '/product-fry@3.png', '1', null, null, null, '46');
INSERT INTO `product` VALUES ('20', '商品', '0.01', '999', null, '6', '/product-tea@2.png', '1', null, null, null, '47');
INSERT INTO `product` VALUES ('21', '商品', '0.01', '998', null, '6', '/product-tea@3.png', '1', null, null, null, '48');
INSERT INTO `product` VALUES ('22', '商品', '0.01', '997', null, '5', '/product-cake-a@3.png', '1', null, null, null, '54');
INSERT INTO `product` VALUES ('23', '商品', '0.01', '998', null, '5', '/product-cake-a@4.png', '1', null, null, null, '55');
INSERT INTO `product` VALUES ('25', '商品', '0.01', '999', null, '5', '/product-cake@1.png', '1', null, null, null, '52');
INSERT INTO `product` VALUES ('26', '商品', '0.01', '999', null, '2', '/product-dryfruit@8.png', '1', null, null, null, '56');
INSERT INTO `product` VALUES ('27', '商品', '0.01', '998', null, '4', '/product-fry@4.png', '1', null, null, null, '57');
INSERT INTO `product` VALUES ('28', '商品', '0.01', '999', null, '4', '/product-fry@5.png', '1', null, null, null, '58');
INSERT INTO `product` VALUES ('29', '商品', '0.01', '999', null, '7', '/product-rice@5.png', '1', null, null, null, '59');
INSERT INTO `product` VALUES ('30', '商品', '0.01', '999', null, '7', '/product-rice@6.png', '1', null, null, null, '14');
INSERT INTO `product` VALUES ('31', '商品', '0.01', '999', null, '7', '/product-rice@7.png', '1', null, null, null, '60');
INSERT INTO `product` VALUES ('32', '商品', '0.01', '999', null, '3', '/product-vg@4.png', '1', null, null, null, '66');
INSERT INTO `product` VALUES ('33', '商品', '0.01', '999', null, '3', '/product-vg@5.png', '1', null, null, null, '67');

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联图片表',
  `delete_time` int(11) DEFAULT NULL COMMENT '状态，主要表示是否删除，也可以扩展其他状态',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '图片排序序号',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES ('4', '19', null, '1', '11');
INSERT INTO `product_image` VALUES ('6', '21', null, '3', '11');
INSERT INTO `product_image` VALUES ('8', '23', null, '5', '11');
INSERT INTO `product_image` VALUES ('12', '27', null, '9', '11');
INSERT INTO `product_image` VALUES ('18', '62', null, '12', '11');

-- ----------------------------
-- Table structure for product_property
-- ----------------------------
DROP TABLE IF EXISTS `product_property`;
CREATE TABLE `product_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT '' COMMENT '详情属性名称',
  `detail` varchar(255) NOT NULL COMMENT '详情属性',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_property
-- ----------------------------
INSERT INTO `product_property` VALUES ('1', '专辑', '你王菲所以我王菲', '11', null, null);
INSERT INTO `product_property` VALUES ('2', '语种', '国语', '11', null, null);
INSERT INTO `product_property` VALUES ('3', '专辑类别', '录音室专辑', '11', null, null);
INSERT INTO `product_property` VALUES ('4', '歌曲', '只爱陌生人，萤火虫，扑火，红豆，蝴蝶，匆匆那年', '11', null, null);
INSERT INTO `product_property` VALUES ('5', '发行时间', '2018-8-8', '11', null, null);
INSERT INTO `product_property` VALUES ('6', '歌曲简介', '《只爱陌生人》是香港歌手王菲的第16张大碟、第7张国语大碟，在百代唱片的第三张大碟，于1999年9月10日发行', '11', null, null);

-- ----------------------------
-- Table structure for theme
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '专题名称',
  `description` varchar(255) DEFAULT NULL COMMENT '专题描述',
  `topic_img_id` int(11) NOT NULL COMMENT '主题图，外键',
  `delete_time` int(11) DEFAULT NULL,
  `head_img_id` int(11) NOT NULL COMMENT '专题列表页，头图',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='主题信息表';

-- ----------------------------
-- Records of theme
-- ----------------------------
INSERT INTO `theme` VALUES ('1', '专题栏位一', '只爱陌生人', '16', null, '49', null);
INSERT INTO `theme` VALUES ('2', '专题栏位二', '只爱陌生人', '17', null, '50', null);
INSERT INTO `theme` VALUES ('3', '专题栏位三', '只爱陌生人', '18', null, '18', null);

-- ----------------------------
-- Table structure for theme_product
-- ----------------------------
DROP TABLE IF EXISTS `theme_product`;
CREATE TABLE `theme_product` (
  `theme_id` int(11) NOT NULL COMMENT '主题外键',
  `product_id` int(11) NOT NULL COMMENT '商品外键',
  PRIMARY KEY (`theme_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主题所包含的商品';

-- ----------------------------
-- Records of theme_product
-- ----------------------------
INSERT INTO `theme_product` VALUES ('1', '2');
INSERT INTO `theme_product` VALUES ('1', '5');
INSERT INTO `theme_product` VALUES ('1', '8');
INSERT INTO `theme_product` VALUES ('1', '10');
INSERT INTO `theme_product` VALUES ('1', '12');
INSERT INTO `theme_product` VALUES ('2', '1');
INSERT INTO `theme_product` VALUES ('2', '2');
INSERT INTO `theme_product` VALUES ('2', '3');
INSERT INTO `theme_product` VALUES ('2', '5');
INSERT INTO `theme_product` VALUES ('2', '6');
INSERT INTO `theme_product` VALUES ('2', '16');
INSERT INTO `theme_product` VALUES ('2', '33');
INSERT INTO `theme_product` VALUES ('3', '15');
INSERT INTO `theme_product` VALUES ('3', '18');
INSERT INTO `theme_product` VALUES ('3', '19');
INSERT INTO `theme_product` VALUES ('3', '27');
INSERT INTO `theme_product` VALUES ('3', '30');
INSERT INTO `theme_product` VALUES ('3', '31');

-- ----------------------------
-- Table structure for third_app
-- ----------------------------
DROP TABLE IF EXISTS `third_app`;
CREATE TABLE `third_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(64) NOT NULL COMMENT '应用app_id',
  `app_secret` varchar(64) NOT NULL COMMENT '应用secret',
  `app_description` varchar(100) DEFAULT NULL COMMENT '应用程序描述',
  `scope` varchar(20) NOT NULL COMMENT '应用权限',
  `scope_description` varchar(100) DEFAULT NULL COMMENT '权限描述',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='访问API的各应用账号密码表';

-- ----------------------------
-- Records of third_app
-- ----------------------------
INSERT INTO `third_app` VALUES ('1', 'xiaoyu', 'xiaoyu', 'CMS', '32', 'Super', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'oRAb94xysY6JKdcH69uF_0_F2Qj8', null, null, null, null, null);

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '收获人姓名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `country` varchar(20) DEFAULT NULL COMMENT '区',
  `detail` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `delete_time` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '外键',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('1', '小宇', '15222520223', '安徽', '宿州', 'China', '灵璧县', null, '1', null);
