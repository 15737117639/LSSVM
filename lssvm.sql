/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : lssvm

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-04-18 20:09:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `iris`
-- ----------------------------
DROP TABLE IF EXISTS `iris`;
CREATE TABLE `iris` (
  `id` int(11) NOT NULL,
  `x1` double NOT NULL,
  `x2` double NOT NULL,
  `x3` double NOT NULL,
  `x4` double NOT NULL,
  `y` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iris
-- ----------------------------
INSERT INTO `iris` VALUES ('1', '5.1', '3.5', '1.4', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('2', '4.9', '3', '1.4', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('3', '4.7', '3.2', '1.3', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('4', '4.6', '3.1', '1.5', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('5', '5', '3.6', '1.4', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('6', '5.4', '3.9', '1.7', '0.4', 'Iris-setosa');
INSERT INTO `iris` VALUES ('7', '4.6', '3.4', '1.4', '0.3', 'Iris-setosa');
INSERT INTO `iris` VALUES ('8', '5', '3.4', '1.5', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('9', '4.4', '2.9', '1.4', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('10', '4.9', '3.1', '1.5', '0.1', 'Iris-setosa');
INSERT INTO `iris` VALUES ('11', '5.4', '3.7', '1.5', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('12', '4.8', '3.4', '1.6', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('13', '4.8', '3', '1.4', '0.1', 'Iris-setosa');
INSERT INTO `iris` VALUES ('14', '4.3', '3', '1.1', '0.1', 'Iris-setosa');
INSERT INTO `iris` VALUES ('15', '5.8', '4', '1.2', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('16', '5.7', '4.4', '1.5', '0.4', 'Iris-setosa');
INSERT INTO `iris` VALUES ('17', '5.4', '3.9', '1.3', '0.4', 'Iris-setosa');
INSERT INTO `iris` VALUES ('18', '5.1', '3.5', '1.4', '0.3', 'Iris-setosa');
INSERT INTO `iris` VALUES ('19', '5.7', '3.8', '1.7', '0.3', 'Iris-setosa');
INSERT INTO `iris` VALUES ('20', '5.1', '3.8', '1.5', '0.3', 'Iris-setosa');
INSERT INTO `iris` VALUES ('21', '5.4', '3.4', '1.7', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('22', '5.1', '3.7', '1.5', '0.4', 'Iris-setosa');
INSERT INTO `iris` VALUES ('23', '4.6', '3.6', '1', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('24', '5.1', '3.3', '1.7', '0.5', 'Iris-setosa');
INSERT INTO `iris` VALUES ('25', '4.8', '3.4', '1.9', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('26', '5', '3', '1.6', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('27', '5', '3.4', '1.6', '0.4', 'Iris-setosa');
INSERT INTO `iris` VALUES ('28', '5.2', '3.5', '1.5', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('29', '5.2', '3.4', '1.4', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('30', '4.7', '3.2', '1.6', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('31', '4.8', '3.1', '1.6', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('32', '5.4', '3.4', '1.5', '0.4', 'Iris-setosa');
INSERT INTO `iris` VALUES ('33', '5.2', '4.1', '1.5', '0.1', 'Iris-setosa');
INSERT INTO `iris` VALUES ('34', '5.5', '4.2', '1.4', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('35', '4.9', '3.1', '1.5', '0.1', 'Iris-setosa');
INSERT INTO `iris` VALUES ('36', '5', '3.2', '1.2', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('37', '5.5', '3.5', '1.3', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('38', '4.9', '3.1', '1.5', '0.1', 'Iris-setosa');
INSERT INTO `iris` VALUES ('39', '4.4', '3', '1.3', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('40', '5.1', '3.4', '1.5', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('41', '5', '3.5', '1.3', '0.3', 'Iris-setosa');
INSERT INTO `iris` VALUES ('42', '4.5', '2.3', '1.3', '0.3', 'Iris-setosa');
INSERT INTO `iris` VALUES ('43', '4.4', '3.2', '1.3', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('44', '5', '3.5', '1.6', '0.6', 'Iris-setosa');
INSERT INTO `iris` VALUES ('45', '5.1', '3.8', '1.9', '0.4', 'Iris-setosa');
INSERT INTO `iris` VALUES ('46', '4.8', '3', '1.4', '0.3', 'Iris-setosa');
INSERT INTO `iris` VALUES ('47', '5.1', '3.8', '1.6', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('48', '4.6', '3.2', '1.4', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('49', '5.3', '3.7', '1.5', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('50', '5', '3.3', '1.4', '0.2', 'Iris-setosa');
INSERT INTO `iris` VALUES ('51', '7', '3.2', '4.7', '1.4', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('52', '6.4', '3.2', '4.5', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('53', '6.9', '3.1', '4.9', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('54', '5.5', '2.3', '4', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('55', '6.5', '2.8', '4.6', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('56', '5.7', '2.8', '4.5', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('57', '6.3', '3.3', '4.7', '1.6', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('58', '4.9', '2.4', '3.3', '1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('59', '6.6', '2.9', '4.6', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('60', '5.2', '2.7', '3.9', '1.4', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('61', '5', '2', '3.5', '1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('62', '5.9', '3', '4.2', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('63', '6', '2.2', '4', '1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('64', '6.1', '2.9', '4.7', '1.4', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('65', '5.6', '2.9', '3.6', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('66', '6.7', '3.1', '4.4', '1.4', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('67', '5.6', '3', '4.5', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('68', '5.8', '2.7', '4.1', '1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('69', '6.2', '2.2', '4.5', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('70', '5.6', '2.5', '3.9', '1.1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('71', '5.9', '3.2', '4.8', '1.8', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('72', '6.1', '2.8', '4', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('73', '6.3', '2.5', '4.9', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('74', '6.1', '2.8', '4.7', '1.2', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('75', '6.4', '2.9', '4.3', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('76', '6.6', '3', '4.4', '1.4', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('77', '6.8', '2.8', '4.8', '1.4', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('78', '6.7', '3', '5', '1.7', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('79', '6', '2.9', '4.5', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('80', '5.7', '2.6', '3.5', '1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('81', '5.5', '2.4', '3.8', '1.1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('82', '5.5', '2.4', '3.7', '1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('83', '5.8', '2.7', '3.9', '1.2', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('84', '6', '2.7', '5.1', '1.6', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('85', '5.4', '3', '4.5', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('86', '6', '3.4', '4.5', '1.6', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('87', '6.7', '3.1', '4.7', '1.5', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('88', '6.3', '2.3', '4.4', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('89', '5.6', '3', '4.1', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('90', '5.5', '2.5', '4', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('91', '5.5', '2.6', '4.4', '1.2', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('92', '6.1', '3', '4.6', '1.4', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('93', '5.8', '2.6', '4', '1.2', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('94', '5', '2.3', '3.3', '1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('95', '5.6', '2.7', '4.2', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('96', '5.7', '3', '4.2', '1.2', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('97', '5.7', '2.9', '4.2', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('98', '6.2', '2.9', '4.3', '1.3', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('99', '5.1', '2.5', '3', '1.1', 'Iris-versicolor');
INSERT INTO `iris` VALUES ('100', '5.7', '2.8', '4.1', '1.3', 'Iris-versicolor');

-- ----------------------------
-- Table structure for `source`
-- ----------------------------
DROP TABLE IF EXISTS `source`;
CREATE TABLE `source` (
  `id` int(11) NOT NULL,
  `x1` double NOT NULL,
  `x2` double NOT NULL,
  `y` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source
-- ----------------------------
INSERT INTO `source` VALUES ('100', '3.542485', '1.977398', '-1');
INSERT INTO `source` VALUES ('101', '3.018896', '2.556416', '-1');
INSERT INTO `source` VALUES ('102', '7.55151', '-1.58003', '1');
INSERT INTO `source` VALUES ('103', '2.114999', '-0.004466', '-1');
INSERT INTO `source` VALUES ('104', '8.127113', '1.274372', '1');
INSERT INTO `source` VALUES ('105', '7.108772', '-0.986906', '1');
INSERT INTO `source` VALUES ('106', '8.610639', '2.046708', '1');
INSERT INTO `source` VALUES ('107', '2.326297', '0.265213', '-1');
INSERT INTO `source` VALUES ('108', '3.634009', '1.730537', '-1');
INSERT INTO `source` VALUES ('109', '0.341367', '-0.894998', '-1');
INSERT INTO `source` VALUES ('110', '3.125951', '0.293251', '-1');
INSERT INTO `source` VALUES ('111', '2.123252', '-0.783563', '-1');
INSERT INTO `source` VALUES ('112', '0.887835', '-2.797792', '-1');
INSERT INTO `source` VALUES ('113', '7.139979', '-2.329896', '1');
INSERT INTO `source` VALUES ('114', '1.696414', '-1.212496', '-1');
INSERT INTO `source` VALUES ('115', '8.117032', '0.623493', '1');
INSERT INTO `source` VALUES ('116', '8.497162', '-0.266649', '1');
INSERT INTO `source` VALUES ('117', '4.658191', '3.507396', '-1');
INSERT INTO `source` VALUES ('118', '8.197181', '1.545132', '1');
INSERT INTO `source` VALUES ('119', '1.208047', '0.2131', '-1');
INSERT INTO `source` VALUES ('120', '1.928486', '-0.32187', '-1');
INSERT INTO `source` VALUES ('121', '2.175808', '-0.014527', '-1');
INSERT INTO `source` VALUES ('122', '7.886608', '0.461755', '1');
INSERT INTO `source` VALUES ('123', '3.223038', '-0.552392', '-1');
INSERT INTO `source` VALUES ('124', '3.628502', '2.190585', '-1');
INSERT INTO `source` VALUES ('125', '7.40786', '-0.121961', '1');
INSERT INTO `source` VALUES ('126', '7.286357', '0.251077', '1');
INSERT INTO `source` VALUES ('127', '2.301095', '-0.533988', '-1');
INSERT INTO `source` VALUES ('128', '-0.232542', '-0.54769', '-1');
INSERT INTO `source` VALUES ('129', '3.457096', '-0.082216', '-1');
INSERT INTO `source` VALUES ('130', '3.023938', '-0.057392', '-1');
INSERT INTO `source` VALUES ('131', '8.015003', '0.885325', '1');
INSERT INTO `source` VALUES ('132', '8.991748', '0.923154', '1');
INSERT INTO `source` VALUES ('133', '7.916831', '-1.781735', '1');
INSERT INTO `source` VALUES ('134', '7.616862', '-0.217958', '1');
INSERT INTO `source` VALUES ('135', '2.450939', '0.744967', '-1');
INSERT INTO `source` VALUES ('136', '7.270337', '-2.507834', '1');
INSERT INTO `source` VALUES ('137', '1.749721', '-0.961902', '-1');
INSERT INTO `source` VALUES ('138', '1.803111', '-0.176349', '-1');
INSERT INTO `source` VALUES ('139', '8.804461', '3.044301', '1');
INSERT INTO `source` VALUES ('140', '1.231257', '-0.568573', '-1');
INSERT INTO `source` VALUES ('141', '2.074915', '1.41055', '-1');
INSERT INTO `source` VALUES ('142', '-0.743036', '-1.736103', '-1');
INSERT INTO `source` VALUES ('143', '3.536555', '3.96496', '-1');
INSERT INTO `source` VALUES ('144', '8.410143', '0.025606', '1');
INSERT INTO `source` VALUES ('145', '7.382988', '-0.478764', '1');
INSERT INTO `source` VALUES ('146', '6.960661', '-0.245353', '1');
INSERT INTO `source` VALUES ('147', '8.23446', '0.701868', '1');
INSERT INTO `source` VALUES ('148', '8.168618', '-0.903835', '1');
INSERT INTO `source` VALUES ('149', '1.534187', '-0.622492', '-1');
INSERT INTO `source` VALUES ('150', '9.229518', '2.066088', '1');
INSERT INTO `source` VALUES ('151', '7.886242', '0.191813', '1');
INSERT INTO `source` VALUES ('152', '2.893743', '-1.643468', '-1');
INSERT INTO `source` VALUES ('153', '1.870457', '-1.04042', '-1');
INSERT INTO `source` VALUES ('154', '5.286862', '-2.358286', '1');
INSERT INTO `source` VALUES ('155', '6.080573', '0.418886', '1');
INSERT INTO `source` VALUES ('156', '2.544314', '1.714165', '-1');
INSERT INTO `source` VALUES ('157', '6.016004', '-3.753712', '1');
INSERT INTO `source` VALUES ('158', '0.92631', '-0.564359', '-1');
INSERT INTO `source` VALUES ('159', '0.870296', '-0.109952', '-1');
INSERT INTO `source` VALUES ('160', '2.369345', '1.375695', '-1');
INSERT INTO `source` VALUES ('161', '1.363782', '-0.254082', '-1');
INSERT INTO `source` VALUES ('162', '7.27946', '-0.189572', '1');
INSERT INTO `source` VALUES ('163', '1.896005', '0.51508', '-1');
INSERT INTO `source` VALUES ('164', '8.102154', '-0.603875', '1');
INSERT INTO `source` VALUES ('165', '2.529893', '0.662657', '-1');
INSERT INTO `source` VALUES ('166', '1.963874', '-0.365233', '-1');
INSERT INTO `source` VALUES ('167', '8.132048', '0.785914', '1');
INSERT INTO `source` VALUES ('168', '8.245938', '0.372366', '1');
INSERT INTO `source` VALUES ('169', '6.543888', '0.433164', '1');

-- ----------------------------
-- Table structure for `wine`
-- ----------------------------
DROP TABLE IF EXISTS `wine`;
CREATE TABLE `wine` (
  `id` int(11) NOT NULL,
  `x1` double NOT NULL,
  `x2` double NOT NULL,
  `x3` double NOT NULL,
  `x4` double NOT NULL,
  `x5` double NOT NULL,
  `x6` double NOT NULL,
  `x7` double NOT NULL,
  `x8` double NOT NULL,
  `x9` double NOT NULL,
  `x10` double NOT NULL,
  `x11` double NOT NULL,
  `x12` double NOT NULL,
  `x13` double NOT NULL,
  `y` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wine
-- ----------------------------
INSERT INTO `wine` VALUES ('1', '14.23', '1.71', '2.43', '15.6', '127', '2.8', '3.06', '0.28', '2.29', '5.64', '1.04', '3.92', '1065', '1');
INSERT INTO `wine` VALUES ('2', '13.2', '1.78', '2.14', '11.2', '100', '2.65', '2.76', '0.26', '1.28', '4.38', '1.05', '3.4', '1050', '1');
INSERT INTO `wine` VALUES ('3', '13.16', '2.36', '2.67', '18.6', '101', '2.8', '3.24', '0.3', '2.81', '5.68', '1.03', '3.17', '1185', '1');
INSERT INTO `wine` VALUES ('4', '14.37', '1.95', '2.5', '16.8', '113', '3.85', '3.49', '0.24', '2.18', '7.8', '0.86', '3.45', '1480', '1');
INSERT INTO `wine` VALUES ('5', '13.24', '2.59', '2.87', '21', '118', '2.8', '2.69', '0.39', '1.82', '4.32', '1.04', '2.93', '735', '1');
INSERT INTO `wine` VALUES ('6', '14.2', '1.76', '2.45', '15.2', '112', '3.27', '3.39', '0.34', '1.97', '6.75', '1.05', '2.85', '1450', '1');
INSERT INTO `wine` VALUES ('7', '14.39', '1.87', '2.45', '14.6', '96', '2.5', '2.52', '0.3', '1.98', '5.25', '1.02', '3.58', '1290', '1');
INSERT INTO `wine` VALUES ('8', '14.06', '2.15', '2.61', '17.6', '121', '2.6', '2.51', '0.31', '1.25', '5.05', '1.06', '3.58', '1295', '1');
INSERT INTO `wine` VALUES ('9', '14.83', '1.64', '2.17', '14', '97', '2.8', '2.98', '0.29', '1.98', '5.2', '1.08', '2.85', '1045', '1');
INSERT INTO `wine` VALUES ('10', '13.86', '1.35', '2.27', '16', '98', '2.98', '3.15', '0.22', '1.85', '7.22', '1.01', '3.55', '1045', '1');
INSERT INTO `wine` VALUES ('11', '14.1', '2.16', '2.3', '18', '105', '2.95', '3.32', '0.22', '2.38', '5.75', '1.25', '3.17', '1510', '1');
INSERT INTO `wine` VALUES ('12', '14.12', '1.48', '2.32', '16.8', '95', '2.2', '2.43', '0.26', '1.57', '5', '1.17', '2.82', '1280', '1');
INSERT INTO `wine` VALUES ('13', '13.75', '1.73', '2.41', '16', '89', '2.6', '2.76', '0.29', '1.81', '5.6', '1.15', '2.9', '1320', '1');
INSERT INTO `wine` VALUES ('14', '14.75', '1.73', '2.39', '11.4', '91', '3.1', '3.69', '0.43', '2.81', '5.4', '1.25', '2.73', '1150', '1');
INSERT INTO `wine` VALUES ('15', '14.38', '1.87', '2.38', '12', '102', '3.3', '3.64', '0.29', '2.96', '7.5', '1.2', '3', '1547', '1');
INSERT INTO `wine` VALUES ('16', '13.63', '1.81', '2.7', '17.2', '112', '2.85', '2.91', '0.3', '1.46', '7.3', '1.28', '2.88', '1310', '1');
INSERT INTO `wine` VALUES ('17', '14.3', '1.92', '2.72', '20', '120', '2.8', '3.14', '0.33', '1.97', '6.2', '1.07', '2.65', '1280', '1');
INSERT INTO `wine` VALUES ('18', '13.83', '1.57', '2.62', '20', '115', '2.95', '3.4', '0.4', '1.72', '6.6', '1.13', '2.57', '1130', '1');
INSERT INTO `wine` VALUES ('19', '14.19', '1.59', '2.48', '16.5', '108', '3.3', '3.93', '0.32', '1.86', '8.7', '1.23', '2.82', '1680', '1');
INSERT INTO `wine` VALUES ('20', '13.64', '3.1', '2.56', '15.2', '116', '2.7', '3.03', '0.17', '1.66', '5.1', '0.96', '3.36', '845', '1');
INSERT INTO `wine` VALUES ('21', '14.06', '1.63', '2.28', '16', '126', '3', '3.17', '0.24', '2.1', '5.65', '1.09', '3.71', '780', '1');
INSERT INTO `wine` VALUES ('22', '12.93', '3.8', '2.65', '18.6', '102', '2.41', '2.41', '0.25', '1.98', '4.5', '1.03', '3.52', '770', '1');
INSERT INTO `wine` VALUES ('23', '13.71', '1.86', '2.36', '16.6', '101', '2.61', '2.88', '0.27', '1.69', '3.8', '1.11', '4', '1035', '1');
INSERT INTO `wine` VALUES ('24', '12.85', '1.6', '2.52', '17.8', '95', '2.48', '2.37', '0.26', '1.46', '3.93', '1.09', '3.63', '1015', '1');
INSERT INTO `wine` VALUES ('25', '13.5', '1.81', '2.61', '20', '96', '2.53', '2.61', '0.28', '1.66', '3.52', '1.12', '3.82', '845', '1');
INSERT INTO `wine` VALUES ('26', '13.05', '2.05', '3.22', '25', '124', '2.63', '2.68', '0.47', '1.92', '3.58', '1.13', '3.2', '830', '1');
INSERT INTO `wine` VALUES ('27', '13.39', '1.77', '2.62', '16.1', '93', '2.85', '2.94', '0.34', '1.45', '4.8', '0.92', '3.22', '1195', '1');
INSERT INTO `wine` VALUES ('28', '13.3', '1.72', '2.14', '17', '94', '2.4', '2.19', '0.27', '1.35', '3.95', '1.02', '2.77', '1285', '1');
INSERT INTO `wine` VALUES ('29', '13.87', '1.9', '2.8', '19.4', '107', '2.95', '2.97', '0.37', '1.76', '4.5', '1.25', '3.4', '915', '1');
INSERT INTO `wine` VALUES ('30', '14.02', '1.68', '2.21', '16', '96', '2.65', '2.33', '0.26', '1.98', '4.7', '1.04', '3.59', '1035', '1');
INSERT INTO `wine` VALUES ('31', '13.73', '1.5', '2.7', '22.5', '101', '3', '3.25', '0.29', '2.38', '5.7', '1.19', '2.71', '1285', '1');
INSERT INTO `wine` VALUES ('32', '13.58', '1.66', '2.36', '19.1', '106', '2.86', '3.19', '0.22', '1.95', '6.9', '1.09', '2.88', '1515', '1');
INSERT INTO `wine` VALUES ('33', '13.68', '1.83', '2.36', '17.2', '104', '2.42', '2.69', '0.42', '1.97', '3.84', '1.23', '2.87', '990', '1');
INSERT INTO `wine` VALUES ('34', '13.76', '1.53', '2.7', '19.5', '132', '2.95', '2.74', '0.5', '1.35', '5.4', '1.25', '3', '1235', '1');
INSERT INTO `wine` VALUES ('35', '13.51', '1.8', '2.65', '19', '110', '2.35', '2.53', '0.29', '1.54', '4.2', '1.1', '2.87', '1095', '1');
INSERT INTO `wine` VALUES ('36', '13.48', '1.81', '2.41', '20.5', '100', '2.7', '2.98', '0.26', '1.86', '5.1', '1.04', '3.47', '920', '1');
INSERT INTO `wine` VALUES ('37', '13.28', '1.64', '2.84', '15.5', '110', '2.6', '2.68', '0.34', '1.36', '4.6', '1.09', '2.78', '880', '1');
INSERT INTO `wine` VALUES ('38', '13.05', '1.65', '2.55', '18', '98', '2.45', '2.43', '0.29', '1.44', '4.25', '1.12', '2.51', '1105', '1');
INSERT INTO `wine` VALUES ('39', '13.07', '1.5', '2.1', '15.5', '98', '2.4', '2.64', '0.28', '1.37', '3.7', '1.18', '2.69', '1020', '1');
INSERT INTO `wine` VALUES ('40', '14.22', '3.99', '2.51', '13.2', '128', '3', '3.04', '0.2', '2.08', '5.1', '0.89', '3.53', '760', '1');
INSERT INTO `wine` VALUES ('41', '13.56', '1.71', '2.31', '16.2', '117', '3.15', '3.29', '0.34', '2.34', '6.13', '0.95', '3.38', '795', '1');
INSERT INTO `wine` VALUES ('42', '13.41', '3.84', '2.12', '18.8', '90', '2.45', '2.68', '0.27', '1.48', '4.28', '0.91', '3', '1035', '1');
INSERT INTO `wine` VALUES ('43', '13.88', '1.89', '2.59', '15', '101', '3.25', '3.56', '0.17', '1.7', '5.43', '0.88', '3.56', '1095', '1');
INSERT INTO `wine` VALUES ('44', '13.24', '3.98', '2.29', '17.5', '103', '2.64', '2.63', '0.32', '1.66', '4.36', '0.82', '3', '680', '1');
INSERT INTO `wine` VALUES ('45', '13.05', '1.77', '2.1', '17', '107', '3', '3', '0.28', '2.03', '5.04', '0.88', '3.35', '885', '1');
INSERT INTO `wine` VALUES ('46', '14.21', '4.04', '2.44', '18.9', '111', '2.85', '2.65', '0.3', '1.25', '5.24', '0.87', '3.33', '1080', '1');
INSERT INTO `wine` VALUES ('47', '14.38', '3.59', '2.28', '16', '102', '3.25', '3.17', '0.27', '2.19', '4.9', '1.04', '3.44', '1065', '1');
INSERT INTO `wine` VALUES ('48', '13.9', '1.68', '2.12', '16', '101', '3.1', '3.39', '0.21', '2.14', '6.1', '0.91', '3.33', '985', '1');
INSERT INTO `wine` VALUES ('49', '14.1', '2.02', '2.4', '18.8', '103', '2.75', '2.92', '0.32', '2.38', '6.2', '1.07', '2.75', '1060', '1');
INSERT INTO `wine` VALUES ('50', '13.94', '1.73', '2.27', '17.4', '108', '2.88', '3.54', '0.32', '2.08', '8.9', '1.12', '3.1', '1260', '1');
INSERT INTO `wine` VALUES ('51', '12.37', '0.94', '1.36', '10.6', '88', '1.98', '0.57', '0.28', '0.42', '1.95', '1.05', '1.82', '520', '2');
INSERT INTO `wine` VALUES ('52', '12.33', '1.1', '2.28', '16', '101', '2.05', '1.09', '0.63', '0.41', '3.27', '1.25', '1.67', '680', '2');
INSERT INTO `wine` VALUES ('53', '12.64', '1.36', '2.02', '16.8', '100', '2.02', '1.41', '0.53', '0.62', '5.75', '0.98', '1.59', '450', '2');
INSERT INTO `wine` VALUES ('54', '13.67', '1.25', '1.92', '18', '94', '2.1', '1.79', '0.32', '0.73', '3.8', '1.23', '2.46', '630', '2');
INSERT INTO `wine` VALUES ('55', '12.37', '1.13', '2.16', '19', '87', '3.5', '3.1', '0.19', '1.87', '4.45', '1.22', '2.87', '420', '2');
INSERT INTO `wine` VALUES ('56', '12.17', '1.45', '2.53', '19', '104', '1.89', '1.75', '0.45', '1.03', '2.95', '1.45', '2.23', '355', '2');
INSERT INTO `wine` VALUES ('57', '12.37', '1.21', '2.56', '18.1', '98', '2.42', '2.65', '0.37', '2.08', '4.6', '1.19', '2.3', '678', '2');
INSERT INTO `wine` VALUES ('58', '13.11', '1.01', '1.7', '15', '78', '2.98', '3.18', '0.26', '2.28', '5.3', '1.12', '3.18', '502', '2');
INSERT INTO `wine` VALUES ('59', '12.37', '1.17', '1.92', '19.6', '78', '2.11', '2', '0.27', '1.04', '4.68', '1.12', '3.48', '510', '2');
INSERT INTO `wine` VALUES ('60', '13.34', '0.94', '2.36', '17', '110', '2.53', '1.3', '0.55', '0.42', '3.17', '1.02', '1.93', '750', '2');
INSERT INTO `wine` VALUES ('61', '12.21', '1.19', '1.75', '16.8', '151', '1.85', '1.28', '0.14', '2.5', '2.85', '1.28', '3.07', '718', '2');
INSERT INTO `wine` VALUES ('62', '12.29', '1.61', '2.21', '20.4', '103', '1.1', '1.02', '0.37', '1.46', '3.05', '0.906', '1.82', '870', '2');
INSERT INTO `wine` VALUES ('63', '13.86', '1.51', '2.67', '25', '86', '2.95', '2.86', '0.21', '1.87', '3.38', '1.36', '3.16', '410', '2');
INSERT INTO `wine` VALUES ('64', '13.49', '1.66', '2.24', '24', '87', '1.88', '1.84', '0.27', '1.03', '3.74', '0.98', '2.78', '472', '2');
INSERT INTO `wine` VALUES ('65', '12.99', '1.67', '2.6', '30', '139', '3.3', '2.89', '0.21', '1.96', '3.35', '1.31', '3.5', '985', '2');
INSERT INTO `wine` VALUES ('66', '11.96', '1.09', '2.3', '21', '101', '3.38', '2.14', '0.13', '1.65', '3.21', '0.99', '3.13', '886', '2');
INSERT INTO `wine` VALUES ('67', '11.66', '1.88', '1.92', '16', '97', '1.61', '1.57', '0.34', '1.15', '3.8', '1.23', '2.14', '428', '2');
INSERT INTO `wine` VALUES ('68', '13.03', '0.9', '1.71', '16', '86', '1.95', '2.03', '0.24', '1.46', '4.6', '1.19', '2.48', '392', '2');
INSERT INTO `wine` VALUES ('69', '11.84', '2.89', '2.23', '18', '112', '1.72', '1.32', '0.43', '0.95', '2.65', '0.96', '2.52', '500', '2');
INSERT INTO `wine` VALUES ('70', '12.33', '0.99', '1.95', '14.8', '136', '1.9', '1.85', '0.35', '2.76', '3.4', '1.06', '2.31', '750', '2');
INSERT INTO `wine` VALUES ('71', '12.7', '3.87', '2.4', '23', '101', '2.83', '2.55', '0.43', '1.95', '2.57', '1.19', '3.13', '463', '2');
INSERT INTO `wine` VALUES ('72', '12', '0.92', '2', '19', '86', '2.42', '2.26', '0.3', '1.43', '2.5', '1.38', '3.12', '278', '2');
INSERT INTO `wine` VALUES ('73', '12.72', '1.81', '2.2', '18.8', '86', '2.2', '2.53', '0.26', '1.77', '3.9', '1.16', '3.14', '714', '2');
INSERT INTO `wine` VALUES ('74', '12.08', '1.13', '2.51', '24', '78', '2', '1.58', '0.4', '1.4', '2.2', '1.31', '2.72', '630', '2');
INSERT INTO `wine` VALUES ('75', '13.05', '3.86', '2.32', '22.5', '85', '1.65', '1.59', '0.61', '1.62', '4.8', '0.84', '2.01', '515', '2');
INSERT INTO `wine` VALUES ('76', '11.84', '0.89', '2.58', '18', '94', '2.2', '2.21', '0.22', '2.35', '3.05', '0.79', '3.08', '520', '2');
INSERT INTO `wine` VALUES ('77', '12.67', '0.98', '2.24', '18', '99', '2.2', '1.94', '0.3', '1.46', '2.62', '1.23', '3.16', '450', '2');
INSERT INTO `wine` VALUES ('78', '12.16', '1.61', '2.31', '22.8', '90', '1.78', '1.69', '0.43', '1.56', '2.45', '1.33', '2.26', '495', '2');
INSERT INTO `wine` VALUES ('79', '11.65', '1.67', '2.62', '26', '88', '1.92', '1.61', '0.4', '1.34', '2.6', '1.36', '3.21', '562', '2');
INSERT INTO `wine` VALUES ('80', '11.64', '2.06', '2.46', '21.6', '84', '1.95', '1.69', '0.48', '1.35', '2.8', '1', '2.75', '680', '2');
INSERT INTO `wine` VALUES ('81', '12.08', '1.33', '2.3', '23.6', '70', '2.2', '1.59', '0.42', '1.38', '1.74', '1.07', '3.21', '625', '2');
INSERT INTO `wine` VALUES ('82', '12.08', '1.83', '2.32', '18.5', '81', '1.6', '1.5', '0.52', '1.64', '2.4', '1.08', '2.27', '480', '2');
INSERT INTO `wine` VALUES ('83', '12', '1.51', '2.42', '22', '86', '1.45', '1.25', '0.5', '1.63', '3.6', '1.05', '2.65', '450', '2');
INSERT INTO `wine` VALUES ('84', '12.69', '1.53', '2.26', '20.7', '80', '1.38', '1.46', '0.58', '1.62', '3.05', '0.96', '2.06', '495', '2');
INSERT INTO `wine` VALUES ('85', '12.29', '2.83', '2.22', '18', '88', '2.45', '2.25', '0.25', '1.99', '2.15', '1.15', '3.3', '290', '2');
INSERT INTO `wine` VALUES ('86', '11.62', '1.99', '2.28', '18', '98', '3.02', '2.26', '0.17', '1.35', '3.25', '1.16', '2.96', '345', '2');
INSERT INTO `wine` VALUES ('87', '12.47', '1.52', '2.2', '19', '162', '2.5', '2.27', '0.32', '3.28', '2.6', '1.16', '2.63', '937', '2');
INSERT INTO `wine` VALUES ('88', '11.81', '2.12', '2.74', '21.5', '134', '1.6', '0.99', '0.14', '1.56', '2.5', '0.95', '2.26', '625', '2');
INSERT INTO `wine` VALUES ('89', '12.29', '1.41', '1.98', '16', '85', '2.55', '2.5', '0.29', '1.77', '2.9', '1.23', '2.74', '428', '2');
INSERT INTO `wine` VALUES ('90', '12.37', '1.07', '2.1', '18.5', '88', '3.52', '3.75', '0.24', '1.95', '4.5', '1.04', '2.77', '660', '2');
INSERT INTO `wine` VALUES ('91', '12.29', '3.17', '2.21', '18', '88', '2.85', '2.99', '0.45', '2.81', '2.3', '1.42', '2.83', '406', '2');
INSERT INTO `wine` VALUES ('92', '12.08', '2.08', '1.7', '17.5', '97', '2.23', '2.17', '0.26', '1.4', '3.3', '1.27', '2.96', '710', '2');
INSERT INTO `wine` VALUES ('93', '12.6', '1.34', '1.9', '18.5', '88', '1.45', '1.36', '0.29', '1.35', '2.45', '1.04', '2.77', '562', '2');
INSERT INTO `wine` VALUES ('94', '12.34', '2.45', '2.46', '21', '98', '2.56', '2.11', '0.34', '1.31', '2.8', '0.8', '3.38', '438', '2');
INSERT INTO `wine` VALUES ('95', '11.82', '1.72', '1.88', '19.5', '86', '2.5', '1.64', '0.37', '1.42', '2.06', '0.94', '2.44', '415', '2');
INSERT INTO `wine` VALUES ('96', '12.51', '1.73', '1.98', '20.5', '85', '2.2', '1.92', '0.32', '1.48', '2.94', '1.04', '3.57', '672', '2');
INSERT INTO `wine` VALUES ('97', '12.42', '2.55', '2.27', '22', '90', '1.68', '1.84', '0.66', '1.42', '2.7', '0.86', '3.3', '315', '2');
INSERT INTO `wine` VALUES ('98', '12.25', '1.73', '2.12', '19', '80', '1.65', '2.03', '0.37', '1.63', '3.4', '1', '3.17', '510', '2');
INSERT INTO `wine` VALUES ('99', '12.72', '1.75', '2.28', '22.5', '84', '1.38', '1.76', '0.48', '1.63', '3.3', '0.88', '2.42', '488', '2');
INSERT INTO `wine` VALUES ('100', '12.22', '1.29', '1.94', '19', '92', '2.36', '2.04', '0.39', '2.08', '2.7', '0.86', '3.02', '312', '2');
