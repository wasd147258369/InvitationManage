/*
 Navicat MySQL Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : invitationmanage

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 11/10/2019 20:23:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for invitation
-- ----------------------------
DROP TABLE IF EXISTS `invitation`;
CREATE TABLE `invitation`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '帖子编号',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '帖子标题',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '帖子摘要',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '作者',
  `createdate` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of invitation
-- ----------------------------
INSERT INTO `invitation` VALUES (3, '歼31试飞', '国产歼31登辽宁舰', '军神', '2013-10-01');
INSERT INTO `invitation` VALUES (4, '习近平会见所罗门群岛总理', '杨洁篪、王毅、何立峰等参加会见', '新闻频道 ', '2019-10-09');
INSERT INTO `invitation` VALUES (6, '三位科学家是如何共同“发明”锂电池的？', '诺贝尔化学奖揭晓 三科学家因“锂电池”获奖', '人民网-科技频道', '2019-10-08');
INSERT INTO `invitation` VALUES (7, '歼40试飞', '国产歼40登太空', '军神', '2019-10-23');
INSERT INTO `invitation` VALUES (8, '当你的才华还撑不起你的野心时', '那你就应该静下心来学习', '优秀', '2019-10-24');
INSERT INTO `invitation` VALUES (9, '当你的能力还驾驭不了你的目标时', '那就应该沉下心来历练', '优秀', '2019-10-24');

-- ----------------------------
-- Table structure for reply_detail
-- ----------------------------
DROP TABLE IF EXISTS `reply_detail`;
CREATE TABLE `reply_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `invId` int(11) NOT NULL COMMENT '帖子编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '回复内容',
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '回复人昵称(默认“匿名用户)',
  `createdate` date NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reply_detail
-- ----------------------------
INSERT INTO `reply_detail` VALUES (2, 3, '祖国牛逼', '小花', '2019-10-10');
INSERT INTO `reply_detail` VALUES (3, 3, '嘻嘻嘻', '小星星', '2019-10-10');
INSERT INTO `reply_detail` VALUES (6, 3, 'java ', 'xxp', '2019-10-11');
INSERT INTO `reply_detail` VALUES (7, 3, 'html ', '妹妹', '2019-10-11');
INSERT INTO `reply_detail` VALUES (8, 4, 'java', '匿名用户', '2019-10-11');
INSERT INTO `reply_detail` VALUES (9, 4, 'ssm  ', '小猫', '2019-10-11');
INSERT INTO `reply_detail` VALUES (10, 3, '休息休息', '匿名用户', '2019-10-11');
INSERT INTO `reply_detail` VALUES (18, 8, '好好学习JY!!!', '匿名用户', '2019-10-11');
INSERT INTO `reply_detail` VALUES (19, 9, '努力学习JY!!!', '匿名用户', '2019-10-11');
INSERT INTO `reply_detail` VALUES (20, 7, '牛逼！！！', '匿名用户', '2019-10-11');
INSERT INTO `reply_detail` VALUES (21, 7, '祖国威武！！', '匿名用户', '2019-10-11');

SET FOREIGN_KEY_CHECKS = 1;
