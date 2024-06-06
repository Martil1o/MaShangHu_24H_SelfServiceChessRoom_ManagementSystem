/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : msh_sys

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2024-06-05 11:48:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `msh_ad`
-- ----------------------------
DROP TABLE IF EXISTS `msh_ad`;
CREATE TABLE `msh_ad` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(100) NOT NULL COMMENT '广告名称',
  `ad_type` varchar(100) NOT NULL COMMENT '广告类型',
  `ad_position` varchar(100) NOT NULL COMMENT '广告位置',
  `ad_start_time` datetime NOT NULL COMMENT '广告展示开始时间',
  `ad_end_time` datetime NOT NULL COMMENT '广告展示结束时间',
  `ad_url` varchar(100) NOT NULL COMMENT '广告图片路径',
  `ad_link` varchar(100) NOT NULL COMMENT '广告跳转链接',
  `ad_status` int(20) NOT NULL COMMENT '广告状态',
  `created_user_id` int(50) NOT NULL COMMENT '广告创建者id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_ad
-- ----------------------------
