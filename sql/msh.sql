/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : msh_sys

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2024-06-05 14:42:02
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

-- ----------------------------
-- Table structure for `msh_finance`
-- ----------------------------
DROP TABLE IF EXISTS `msh_finance`;
CREATE TABLE `msh_finance` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `finance_amount` double(50,2) NOT NULL COMMENT '处理金额',
  `finance_type` int(20) NOT NULL COMMENT '明细类型',
  `finance_status` int(20) NOT NULL COMMENT '明细状态',
  `finance_created_time` datetime NOT NULL COMMENT '创建时间',
  `finance_updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `msh_order`
-- ----------------------------
DROP TABLE IF EXISTS `msh_order`;
CREATE TABLE `msh_order` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `order_type` int(50) NOT NULL COMMENT '订单类型',
  `order_duration` int(20) NOT NULL COMMENT '订单时长',
  `order_earned` double(30,2) NOT NULL COMMENT '订单收入',
  `order_debuct` double(30,2) NOT NULL COMMENT '订单服务费',
  `order_source` int(30) NOT NULL COMMENT '订单来源',
  `room_id` int(50) NOT NULL COMMENT '订单房间号',
  `created_time` datetime NOT NULL COMMENT '订单创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_order
-- ----------------------------

-- ----------------------------
-- Table structure for `msh_room`
-- ----------------------------
DROP TABLE IF EXISTS `msh_room`;
CREATE TABLE `msh_room` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) NOT NULL,
  `room_description` varchar(255) NOT NULL,
  `room_price` double(100,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_room
-- ----------------------------

-- ----------------------------
-- Table structure for `msh_store`
-- ----------------------------
DROP TABLE IF EXISTS `msh_store`;
CREATE TABLE `msh_store` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(150) NOT NULL COMMENT '店铺名称',
  `store_address` varchar(255) NOT NULL COMMENT '店铺地址',
  `store_type` int(20) NOT NULL COMMENT '店铺类型',
  `created_user_id` int(50) NOT NULL COMMENT '创建用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_store
-- ----------------------------

-- ----------------------------
-- Table structure for `msh_store_order`
-- ----------------------------
DROP TABLE IF EXISTS `msh_store_order`;
CREATE TABLE `msh_store_order` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `store_id` int(50) NOT NULL COMMENT '商铺id',
  `order_id` int(50) NOT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_store_order
-- ----------------------------

-- ----------------------------
-- Table structure for `msh_store_room`
-- ----------------------------
DROP TABLE IF EXISTS `msh_store_room`;
CREATE TABLE `msh_store_room` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `store_id` int(50) NOT NULL,
  `room_id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_store_room
-- ----------------------------

-- ----------------------------
-- Table structure for `msh_user_finance`
-- ----------------------------
DROP TABLE IF EXISTS `msh_user_finance`;
CREATE TABLE `msh_user_finance` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL COMMENT '用户id',
  `finance_id` int(50) NOT NULL COMMENT '金额明细id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_user_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `msh_user_store`
-- ----------------------------
DROP TABLE IF EXISTS `msh_user_store`;
CREATE TABLE `msh_user_store` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL COMMENT '用户id',
  `store_id` int(50) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_user_store
-- ----------------------------

-- ----------------------------
-- Table structure for `msh_wallet`
-- ----------------------------
DROP TABLE IF EXISTS `msh_wallet`;
CREATE TABLE `msh_wallet` (
  `id` int(50) NOT NULL,
  `wallet_type` int(20) DEFAULT NULL COMMENT '钱包类型',
  `wallet_owner` int(50) NOT NULL COMMENT '钱包归属',
  `wallet_balance` double(50,2) DEFAULT NULL COMMENT '钱包余额',
  `wallet_deduct` double(50,2) DEFAULT NULL COMMENT '服务费',
  `wallet_income` double(50,2) DEFAULT NULL COMMENT '总收入',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of msh_wallet
-- ----------------------------
