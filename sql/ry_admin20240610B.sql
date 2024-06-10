/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : ry_admin

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2024-06-10 22:26:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'msh_ad', '广告管理', null, null, 'Ad', 'crud', 'element-ui', 'com.ruoyi.ad', 'ad', 'ad', '广告管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1\"}', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53', '广告管理表');
INSERT INTO `gen_table` VALUES ('2', 'msh_finance', '马上胡金额明细表', 'msh_user_finance', 'finance_id', 'MshFinance', 'sub', 'element-ui', 'com.ruoyi.finance', 'finance', 'finance', '财务明细', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2004\"}', 'admin', '2024-06-05 20:03:43', '', '2024-06-08 15:19:04', '用来处理提现和展示各种流水明细');
INSERT INTO `gen_table` VALUES ('3', 'msh_order', '马上胡订单表', null, null, 'MshOrder', 'crud', 'element-ui', 'com.ruoyi.mshOrder', 'mshOrder', 'mshOrder', '订单明细', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2001\"}', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43', '订单管理');
INSERT INTO `gen_table` VALUES ('4', 'msh_room', '马上胡房间表', 'msh_store_room', 'room_id', 'MshRoom', 'sub', 'element-ui', 'com.ruoyi.mshRoom', 'mshRoom', 'mshRoom', '房间管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2002\"}', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 21:49:10', null);
INSERT INTO `gen_table` VALUES ('5', 'msh_store', '马上胡店铺表', 'msh_user_store', 'store_id', 'MshStore', 'sub', 'element-ui', 'com.ruoyi.mshStore', 'mshStore', 'mshStore', '店铺管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2002\"}', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 15:04:27', null);
INSERT INTO `gen_table` VALUES ('6', 'msh_store_order', '马上胡店铺订单关联表', null, null, 'MshStoreOrder', 'crud', '', 'com.ruoyi.system', 'system', 'order', '马上胡店铺订单关联', 'ruoyi', '0', '/', null, 'admin', '2024-06-05 20:03:43', '', null, null);
INSERT INTO `gen_table` VALUES ('7', 'msh_store_room', '马上胡店铺房间关联表', null, null, 'MshStoreRoom', 'crud', '', 'com.ruoyi.system', 'system', 'room', '马上胡店铺房间关联', 'ruoyi', '0', '/', null, 'admin', '2024-06-05 20:03:43', '', null, null);
INSERT INTO `gen_table` VALUES ('8', 'msh_user_finance', '马上胡用户金额明细关联表', null, null, 'MshUserFinance', 'crud', '', 'com.ruoyi.system', 'system', 'finance', '马上胡用户金额明细关联', 'ruoyi', '0', '/', null, 'admin', '2024-06-05 20:03:44', '', null, null);
INSERT INTO `gen_table` VALUES ('9', 'msh_user_store', '马上胡用户店铺关联表', null, null, 'MshUserStore', 'crud', '', 'com.ruoyi.system', 'system', 'store', '马上胡用户店铺关联', 'ruoyi', '0', '/', null, 'admin', '2024-06-05 20:03:44', '', null, null);
INSERT INTO `gen_table` VALUES ('10', 'msh_wallet', '马上胡钱包表', null, null, 'MshWallet', 'crud', 'element-ui', 'com.ruoyi.mshWallet', 'mshWallet', 'wallet', '店铺资产', 'ruoyi', '0', '/', '{\"parentMenuId\":2004}', 'admin', '2024-06-05 20:03:44', '', '2024-06-05 21:20:51', '钱包的功能');
INSERT INTO `gen_table` VALUES ('11', 'msh_check_information', '加盟审核', null, null, 'MshCheckInformationF', 'crud', 'element-ui', 'com.ruoyi.mshInformationF', 'mshInformationF', 'mshInformationF', '加盟审核', 'ruoyi', '0', '/', '{\"parentMenuId\":2003}', 'admin', '2024-06-07 09:20:57', '', '2024-06-07 09:53:31', '用于各类信息的审核');
INSERT INTO `gen_table` VALUES ('12', 'sys_user', '用户信息表', null, null, 'FranchiseeUser', 'crud', 'element-ui', 'com.ruoyi.franchiseeUser', 'franchiseeUser', 'franchiseeUser', '加盟商管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2003}', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42', '加盟商信息管理');
INSERT INTO `gen_table` VALUES ('13', 'msh_opportunity', '麻尚胡商业机会表', null, null, 'MshOpportunity', 'crud', 'element-ui', 'com.ruoyi.mshOpportunity', 'mshOpportunity', 'mshOpportunity', '商机管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2005}', 'admin', '2024-06-08 15:51:16', '', '2024-06-08 15:57:40', null);

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', '菜单id', 'int(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'ad_name', '广告名称', 'varchar(100)', 'String', 'adName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'ad_type', '广告类型', 'varchar(100)', 'String', 'adType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'msh_ad_type', '3', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'ad_position', '广告位置', 'varchar(100)', 'String', 'adPosition', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'ad_start_time', '广告展示开始时间', 'datetime', 'Date', 'adStartTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '5', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('6', '1', 'ad_end_time', '广告展示结束时间', 'datetime', 'Date', 'adEndTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('7', '1', 'ad_url', '广告图片路径', 'varchar(100)', 'String', 'adUrl', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '7', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('8', '1', 'ad_link', '广告跳转链接', 'varchar(100)', 'String', 'adLink', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '8', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('9', '1', 'ad_status', '广告状态', 'int(20)', 'Long', 'adStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'sys_normal_disable', '9', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('10', '1', 'created_user_id', '广告创建者', 'int(50)', 'Long', 'createdUserId', '0', '0', '1', '1', '0', '0', '0', 'LIKE', 'input', '', '10', 'admin', '2024-06-05 11:54:07', '', '2024-06-06 21:35:53');
INSERT INTO `gen_table_column` VALUES ('11', '2', 'id', '明细ID', 'int(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:43', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('12', '2', 'finance_amount', '处理金额', 'double(50,2)', 'BigDecimal', 'financeAmount', '0', '0', '0', '1', '0', '1', '0', 'EQ', 'input', '', '2', 'admin', '2024-06-05 20:03:43', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('13', '2', 'finance_type', '明细类型', 'int(20)', 'Long', 'financeType', '0', '0', '1', '1', '0', '1', '0', 'EQ', 'select', 'msh_finance_type', '6', 'admin', '2024-06-05 20:03:43', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('14', '2', 'finance_status', '明细状态', 'int(20)', 'Long', 'financeStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'msh_finance_status', '7', 'admin', '2024-06-05 20:03:43', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('15', '2', 'finance_created_time', '创建时间', 'datetime', 'Date', 'financeCreatedTime', '0', '0', '0', '1', '0', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2024-06-05 20:03:43', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('16', '2', 'finance_updated_time', '更新时间', 'datetime', 'Date', 'financeUpdatedTime', '0', '0', '0', '1', '0', '1', '1', 'EQ', 'datetime', '', '9', 'admin', '2024-06-05 20:03:43', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('17', '3', 'id', '订单ID', 'int(50)', 'Long', 'id', '1', '1', '0', '0', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43');
INSERT INTO `gen_table_column` VALUES ('18', '3', 'order_type', '订单类型', 'int(50)', 'Long', 'orderType', '0', '0', '1', '0', '0', '1', '1', 'EQ', 'select', 'msh_order_type', '2', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43');
INSERT INTO `gen_table_column` VALUES ('19', '3', 'order_duration', '订单时长', 'int(20)', 'Long', 'orderDuration', '0', '0', '1', '0', '0', '1', '0', 'EQ', 'input', '', '3', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43');
INSERT INTO `gen_table_column` VALUES ('20', '3', 'order_earned', '订单收入', 'double(30,2)', 'BigDecimal', 'orderEarned', '0', '0', '1', '0', '0', '1', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43');
INSERT INTO `gen_table_column` VALUES ('21', '3', 'order_debuct', '订单服务费', 'double(30,2)', 'BigDecimal', 'orderDebuct', '0', '0', '1', '0', '0', '1', '0', 'EQ', 'input', '', '5', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'order_source', '订单来源', 'int(30)', 'Long', 'orderSource', '0', '0', '1', '0', '0', '1', '1', 'EQ', 'input', 'msh_order_source', '6', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43');
INSERT INTO `gen_table_column` VALUES ('23', '3', 'room_id', '订单房间号', 'int(50)', 'Long', 'roomId', '0', '0', '1', '0', '0', '1', '0', 'EQ', 'input', '', '7', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43');
INSERT INTO `gen_table_column` VALUES ('24', '3', 'created_time', '订单创建时间', 'datetime', 'Date', 'createdTime', '0', '0', '1', '0', '0', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2024-06-05 20:03:43', '', '2024-06-07 14:58:43');
INSERT INTO `gen_table_column` VALUES ('25', '4', 'id', '房间ID', 'int(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 21:49:10');
INSERT INTO `gen_table_column` VALUES ('26', '4', 'room_name', '房间名称', 'varchar(255)', 'String', 'roomName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 21:49:10');
INSERT INTO `gen_table_column` VALUES ('27', '4', 'room_description', '房间描述', 'varchar(255)', 'String', 'roomDescription', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '3', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 21:49:10');
INSERT INTO `gen_table_column` VALUES ('28', '4', 'room_price', '房间单价/时', 'double(100,2)', 'BigDecimal', 'roomPrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', '4', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 21:49:10');
INSERT INTO `gen_table_column` VALUES ('29', '5', 'id', '店铺ID', 'int(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 15:04:27');
INSERT INTO `gen_table_column` VALUES ('30', '5', 'store_name', '店铺名称', 'varchar(150)', 'String', 'storeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 15:04:27');
INSERT INTO `gen_table_column` VALUES ('31', '5', 'store_address', '店铺地址', 'varchar(255)', 'String', 'storeAddress', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 15:04:27');
INSERT INTO `gen_table_column` VALUES ('32', '5', 'store_type', '店铺类型', 'int(20)', 'Long', 'storeType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'msh_store_type', '4', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 15:04:27');
INSERT INTO `gen_table_column` VALUES ('33', '5', 'created_user_id', '创建用户id', 'int(50)', 'Long', 'createdUserId', '0', '0', '0', '1', '0', '0', '0', 'EQ', 'input', '', '5', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 15:04:27');
INSERT INTO `gen_table_column` VALUES ('34', '6', 'id', '关联ID', 'int(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 11:44:34');
INSERT INTO `gen_table_column` VALUES ('35', '6', 'store_id', '商铺id', 'int(50)', 'Long', 'storeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 11:44:34');
INSERT INTO `gen_table_column` VALUES ('36', '6', 'order_id', '订单id', 'int(50)', 'Long', 'orderId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 11:44:34');
INSERT INTO `gen_table_column` VALUES ('37', '7', 'id', '关联ID', 'int(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:43', '', '2024-06-06 11:44:36');
INSERT INTO `gen_table_column` VALUES ('38', '7', 'store_id', '店铺ID', 'int(50)', 'Long', 'storeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:36');
INSERT INTO `gen_table_column` VALUES ('39', '7', 'room_id', '房间ID', 'int(50)', 'Long', 'roomId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:36');
INSERT INTO `gen_table_column` VALUES ('40', '8', 'id', '关联ID', 'int(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:37');
INSERT INTO `gen_table_column` VALUES ('41', '8', 'user_id', '用户id', 'int(50)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:37');
INSERT INTO `gen_table_column` VALUES ('42', '8', 'finance_id', '金额明细id', 'int(50)', 'Long', 'financeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:37');
INSERT INTO `gen_table_column` VALUES ('43', '9', 'id', '关联ID', 'int(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:39');
INSERT INTO `gen_table_column` VALUES ('44', '9', 'user_id', '用户id', 'int(50)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:39');
INSERT INTO `gen_table_column` VALUES ('45', '9', 'store_id', '店铺id', 'int(50)', 'Long', 'storeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:39');
INSERT INTO `gen_table_column` VALUES ('46', '10', 'id', '钱包ID', 'int(50)', 'Long', 'id', '1', '0', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:40');
INSERT INTO `gen_table_column` VALUES ('47', '10', 'wallet_type', '钱包类型', 'int(20)', 'Long', 'walletType', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'msh_wallet_type', '2', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:40');
INSERT INTO `gen_table_column` VALUES ('48', '10', 'wallet_owner', '钱包归属', 'int(50)', 'Long', 'walletOwner', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:40');
INSERT INTO `gen_table_column` VALUES ('49', '10', 'wallet_balance', '钱包余额', 'double(50,2)', 'BigDecimal', 'walletBalance', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:40');
INSERT INTO `gen_table_column` VALUES ('50', '10', 'wallet_deduct', '服务费', 'double(50,2)', 'BigDecimal', 'walletDeduct', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:40');
INSERT INTO `gen_table_column` VALUES ('51', '10', 'wallet_income', '总收入', 'double(50,2)', 'BigDecimal', 'walletIncome', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:40');
INSERT INTO `gen_table_column` VALUES ('52', '10', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '7', 'admin', '2024-06-05 20:03:44', '', '2024-06-06 11:44:40');
INSERT INTO `gen_table_column` VALUES ('53', '2', 'finance_bank_name', '明细银行名称', 'varchar(150)', 'String', 'financeBankName', '0', '0', '0', '1', '0', '1', '0', 'LIKE', 'input', '', '3', '', '2024-06-05 21:51:22', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('54', '2', 'finance_bank_account', '明细银行账户', 'varchar(150)', 'String', 'financeBankAccount', '0', '0', '0', '1', '0', '1', '0', 'EQ', 'input', '', '4', '', '2024-06-05 21:51:22', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('55', '2', 'finance_bank_owner', '明细银行户主名子', 'varchar(100)', 'String', 'financeBankOwner', '0', '0', '0', '1', '0', '1', '0', 'EQ', 'input', '', '5', '', '2024-06-05 21:51:22', '', '2024-06-08 15:19:04');
INSERT INTO `gen_table_column` VALUES ('57', '4', 'room_status', '房间状态', 'int(20)', 'Long', 'roomStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'sys_normal_disable', '6', '', '2024-06-06 15:12:49', '', '2024-06-06 21:49:10');
INSERT INTO `gen_table_column` VALUES ('58', '4', 'store_name', '店铺名称', 'varchar(150)', 'String', 'storeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', '', '2024-06-06 21:45:59', '', '2024-06-06 21:49:10');
INSERT INTO `gen_table_column` VALUES ('59', '11', 'id', '审核记录id', 'bigint(50)', 'Long', 'id', '1', '1', '0', '0', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-07 09:20:57', '', '2024-06-07 09:53:31');
INSERT INTO `gen_table_column` VALUES ('60', '11', 'check_type', '审核类型', 'int(20)', 'Long', 'checkType', '0', '0', '0', '0', '0', '1', '1', 'EQ', 'select', 'msh_check_type', '2', 'admin', '2024-06-07 09:20:57', '', '2024-06-07 09:53:31');
INSERT INTO `gen_table_column` VALUES ('61', '11', 'check_infor', '审核信息', 'varchar(255)', 'String', 'checkInfor', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'input', '', '3', 'admin', '2024-06-07 09:20:57', '', '2024-06-07 09:53:31');
INSERT INTO `gen_table_column` VALUES ('62', '11', 'check_status', '审核状态', 'int(20)', 'Long', 'checkStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'msh_check_status', '4', 'admin', '2024-06-07 09:20:57', '', '2024-06-07 09:53:31');
INSERT INTO `gen_table_column` VALUES ('63', '12', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '1', '1', '0', '0', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('64', '12', 'dept_id', '部门ID', 'bigint(20)', 'Long', 'deptId', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', '2', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('65', '12', 'user_name', '用户账号', 'varchar(30)', 'String', 'userName', '0', '0', '1', '0', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('66', '12', 'nick_name', '用户昵称', 'varchar(30)', 'String', 'nickName', '0', '0', '1', '0', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('67', '12', 'role_name', '用户身份', 'varchar(30)', 'String', 'roleName', '0', '0', '0', '0', '1', '1', '0', 'LIKE', 'input', '', '5', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('68', '12', 'user_type', '用户类型（00系统用户）', 'varchar(2)', 'String', 'userType', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'select', '', '6', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('69', '12', 'email', '用户邮箱', 'varchar(50)', 'String', 'email', '0', '0', '0', '0', '1', '1', '0', 'EQ', 'input', '', '7', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('70', '12', 'phonenumber', '手机号码', 'varchar(11)', 'String', 'phonenumber', '0', '0', '0', '0', '1', '1', '0', 'EQ', 'input', '', '8', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('71', '12', 'sex', '用户性别（0男 1女 2未知）', 'char(1)', 'String', 'sex', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'select', 'sys_user_sex', '9', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('72', '12', 'avatar', '头像地址', 'varchar(100)', 'String', 'avatar', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', '10', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('73', '12', 'password', '密码', 'varchar(100)', 'String', 'password', '0', '0', '0', '0', '1', '0', '0', 'EQ', 'input', '', '11', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('74', '12', 'status', '帐号状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'radio', '', '12', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('75', '12', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '0', null, null, null, 'EQ', 'input', '', '13', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('76', '12', 'login_ip', '最后登录IP', 'varchar(128)', 'String', 'loginIp', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', '14', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('77', '12', 'login_date', '最后登录时间', 'datetime', 'Date', 'loginDate', '0', '0', '0', '0', '0', '1', '1', 'EQ', 'datetime', '', '15', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('78', '12', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '0', null, null, null, 'EQ', 'input', '', '16', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('79', '12', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '0', null, null, null, 'EQ', 'datetime', '', '17', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('80', '12', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '0', '0', null, null, 'EQ', 'input', '', '18', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('81', '12', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '0', '0', null, null, 'EQ', 'datetime', '', '19', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('82', '12', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '0', '0', '1', '1', null, 'EQ', 'textarea', '', '20', 'admin', '2024-06-07 10:09:21', '', '2024-06-07 14:16:42');
INSERT INTO `gen_table_column` VALUES ('83', '13', 'id', '商机ID', 'bigint(50)', 'Long', 'id', '1', '1', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-06-08 15:51:16', '', '2024-06-08 15:57:40');
INSERT INTO `gen_table_column` VALUES ('84', '13', 'opportunity_description', '商机描述', 'varchar(255)', 'String', 'opportunityDescription', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'textarea', '', '2', 'admin', '2024-06-08 15:51:16', '', '2024-06-08 15:57:40');
INSERT INTO `gen_table_column` VALUES ('85', '13', 'opportunity_budget', '投资预算', 'double(20,0)', 'Long', 'opportunityBudget', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', '3', 'admin', '2024-06-08 15:51:16', '', '2024-06-08 15:57:40');
INSERT INTO `gen_table_column` VALUES ('87', '13', 'opportunity_status', '商机状态', 'int(20)', 'Long', 'opportunityStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'msh_opportunity_status', '5', 'admin', '2024-06-08 15:51:16', '', '2024-06-08 15:57:40');
INSERT INTO `gen_table_column` VALUES ('88', '13', 'opportunity_end_time', '商机截至时间', 'datetime', 'Date', 'opportunityEndTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2024-06-08 15:51:16', '', '2024-06-08 15:57:40');
INSERT INTO `gen_table_column` VALUES ('89', '13', 'opportunity_max_members', '最大投资人数', 'int(20)', 'Long', 'opportunityMaxMembers', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', '4', '', '2024-06-08 15:56:13', '', '2024-06-08 15:57:40');

-- ----------------------------
-- Table structure for `msh_ad`
-- ----------------------------
DROP TABLE IF EXISTS `msh_ad`;
CREATE TABLE `msh_ad` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `ad_name` varchar(100) NOT NULL COMMENT '广告名称',
  `ad_type` varchar(100) NOT NULL COMMENT '广告类型',
  `ad_position` varchar(100) NOT NULL COMMENT '广告位置',
  `ad_start_time` datetime NOT NULL COMMENT '广告展示开始时间',
  `ad_end_time` datetime NOT NULL COMMENT '广告展示结束时间',
  `ad_url` varchar(100) DEFAULT NULL COMMENT '广告图片路径',
  `ad_link` varchar(100) DEFAULT NULL COMMENT '广告跳转链接',
  `ad_status` int(20) NOT NULL COMMENT '广告状态',
  `created_user_id` bigint(50) NOT NULL COMMENT '广告创建者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='麻尚胡广告表';

-- ----------------------------
-- Records of msh_ad
-- ----------------------------
INSERT INTO `msh_ad` VALUES ('1', '测试广告123', '1', '官网首页', '2024-06-05 00:00:00', '2024-06-07 00:00:00', 'url://testpath/file', 'https://58.123.123.10:25800/jump/ad1', '0', '1');
INSERT INTO `msh_ad` VALUES ('2', 'testad456', '1', 'banner', '2024-06-06 00:00:00', '2024-06-27 00:00:00', null, null, '1', '1');

-- ----------------------------
-- Table structure for `msh_check_information`
-- ----------------------------
DROP TABLE IF EXISTS `msh_check_information`;
CREATE TABLE `msh_check_information` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '审核记录id',
  `check_type` int(20) NOT NULL COMMENT '审核类型',
  `check_infor` varchar(255) NOT NULL COMMENT '审核信息',
  `check_status` int(20) NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='麻尚胡审核信息表';

-- ----------------------------
-- Records of msh_check_information
-- ----------------------------
INSERT INTO `msh_check_information` VALUES ('1', '0', '加盟商XX申请添加店铺XXX位置在XXX', '2');
INSERT INTO `msh_check_information` VALUES ('2', '1', 'XXX联系方式XXX提交了加盟申请，加盟类型为全加盟商', '1');

-- ----------------------------
-- Table structure for `msh_finance`
-- ----------------------------
DROP TABLE IF EXISTS `msh_finance`;
CREATE TABLE `msh_finance` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '明细ID',
  `finance_amount` double(50,2) NOT NULL COMMENT '处理金额',
  `finance_bank_name` varchar(150) DEFAULT NULL COMMENT '明细银行名称',
  `finance_bank_account` varchar(150) DEFAULT NULL COMMENT '明细银行账户',
  `finance_bank_owner` varchar(100) DEFAULT NULL COMMENT '明细银行户主名子',
  `finance_type` int(20) NOT NULL COMMENT '明细类型',
  `finance_status` int(20) NOT NULL COMMENT '明细状态',
  `finance_created_time` datetime NOT NULL COMMENT '创建时间',
  `finance_updated_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='马上胡金额明细表';

-- ----------------------------
-- Records of msh_finance
-- ----------------------------
INSERT INTO `msh_finance` VALUES ('1', '500000.00', '中国农业很行', '622888888888888888', '张三', '0', '0', '2024-06-08 00:00:00', null);
INSERT INTO `msh_finance` VALUES ('2', '9999.00', '中国很行', '62228888888888888888', '顶真', '0', '0', '2024-06-10 00:00:00', '2024-06-10 00:00:00');

-- ----------------------------
-- Table structure for `msh_opportunity`
-- ----------------------------
DROP TABLE IF EXISTS `msh_opportunity`;
CREATE TABLE `msh_opportunity` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '商机ID',
  `opportunity_description` varchar(255) NOT NULL COMMENT '商机描述',
  `opportunity_budget` double(20,0) DEFAULT NULL COMMENT '投资预算',
  `opportunity_max_members` int(20) NOT NULL COMMENT '最大投资人数',
  `opportunity_status` int(20) NOT NULL COMMENT '商机状态',
  `opportunity_end_time` datetime DEFAULT NULL COMMENT '商机截至时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='麻尚胡商业机会表';

-- ----------------------------
-- Records of msh_opportunity
-- ----------------------------
INSERT INTO `msh_opportunity` VALUES ('1', '位置在测试一些测试一些数据', '99999', '5', '3', '2024-06-30 00:00:00');
INSERT INTO `msh_opportunity` VALUES ('2', '这里增加了一些新的测试数据', '500000', '1', '0', '2024-06-24 00:00:00');

-- ----------------------------
-- Table structure for `msh_order`
-- ----------------------------
DROP TABLE IF EXISTS `msh_order`;
CREATE TABLE `msh_order` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_type` int(50) NOT NULL COMMENT '订单类型',
  `order_duration` int(20) NOT NULL COMMENT '订单时长',
  `order_earned` double(30,2) NOT NULL COMMENT '订单收入',
  `order_debuct` double(30,2) NOT NULL COMMENT '订单服务费',
  `order_source` int(30) NOT NULL COMMENT '订单来源',
  `room_id` int(50) NOT NULL COMMENT '订单房间号',
  `created_time` datetime NOT NULL COMMENT '订单创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='马上胡订单表';

-- ----------------------------
-- Records of msh_order
-- ----------------------------
INSERT INTO `msh_order` VALUES ('1', '0', '11', '1.00', '1.00', '0', '1', '2024-06-07 22:36:38');

-- ----------------------------
-- Table structure for `msh_room`
-- ----------------------------
DROP TABLE IF EXISTS `msh_room`;
CREATE TABLE `msh_room` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '房间ID',
  `room_name` varchar(255) NOT NULL,
  `room_description` varchar(255) DEFAULT NULL,
  `room_price` double(100,2) NOT NULL,
  `store_name` varchar(150) DEFAULT NULL COMMENT '店铺名称',
  `room_status` int(20) NOT NULL COMMENT '房间状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='马上胡房间表';

-- ----------------------------
-- Records of msh_room
-- ----------------------------
INSERT INTO `msh_room` VALUES ('6', '豪华大包间A（测试）', '房间内有冰箱彩电洗衣机', '99.99', '测试', '0');
INSERT INTO `msh_room` VALUES ('7', '普通小包间(测试）', '房间内有很多吃的', '9.99', '测试', '0');
INSERT INTO `msh_room` VALUES ('8', '风尚典雅', '四人包间，可用空调', '6.99', '麻尚胡共享茶舍（师大1店）', '0');

-- ----------------------------
-- Table structure for `msh_store`
-- ----------------------------
DROP TABLE IF EXISTS `msh_store`;
CREATE TABLE `msh_store` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '店铺ID',
  `store_name` varchar(150) NOT NULL COMMENT '店铺名称',
  `store_address` varchar(255) NOT NULL COMMENT '店铺地址',
  `store_type` int(20) NOT NULL COMMENT '店铺类型',
  `created_user_id` int(50) NOT NULL COMMENT '创建用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='马上胡店铺表';

-- ----------------------------
-- Records of msh_store
-- ----------------------------
INSERT INTO `msh_store` VALUES ('3', '测试', '测试', '0', '1');
INSERT INTO `msh_store` VALUES ('6', 'test', 'test01', '0', '1');
INSERT INTO `msh_store` VALUES ('7', '测试店铺02', '测试地址那哪儿', '1', '1');
INSERT INTO `msh_store` VALUES ('8', '麻尚胡共享茶舍（师大1店）', '呼和浩特市和林格尔县盛乐经济园区内师大大数据楼301', '0', '1');

-- ----------------------------
-- Table structure for `msh_store_order`
-- ----------------------------
DROP TABLE IF EXISTS `msh_store_order`;
CREATE TABLE `msh_store_order` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '关联ID',
  `store_id` bigint(50) NOT NULL COMMENT '商铺id',
  `order_id` bigint(50) NOT NULL COMMENT '订单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='马上胡店铺订单关联表';

-- ----------------------------
-- Records of msh_store_order
-- ----------------------------
INSERT INTO `msh_store_order` VALUES ('1', '3', '1');

-- ----------------------------
-- Table structure for `msh_store_room`
-- ----------------------------
DROP TABLE IF EXISTS `msh_store_room`;
CREATE TABLE `msh_store_room` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '关联ID',
  `store_id` bigint(50) NOT NULL COMMENT '店铺ID',
  `room_id` bigint(50) NOT NULL COMMENT '房间ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='马上胡店铺房间关联表';

-- ----------------------------
-- Records of msh_store_room
-- ----------------------------
INSERT INTO `msh_store_room` VALUES ('12', '3', '6');
INSERT INTO `msh_store_room` VALUES ('13', '3', '7');
INSERT INTO `msh_store_room` VALUES ('14', '8', '8');

-- ----------------------------
-- Table structure for `msh_user_finance`
-- ----------------------------
DROP TABLE IF EXISTS `msh_user_finance`;
CREATE TABLE `msh_user_finance` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '关联ID',
  `user_id` bigint(50) NOT NULL COMMENT '用户id',
  `finance_id` bigint(50) NOT NULL COMMENT '金额明细id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='马上胡用户金额明细关联表';

-- ----------------------------
-- Records of msh_user_finance
-- ----------------------------
INSERT INTO `msh_user_finance` VALUES ('1', '2', '1');

-- ----------------------------
-- Table structure for `msh_user_store`
-- ----------------------------
DROP TABLE IF EXISTS `msh_user_store`;
CREATE TABLE `msh_user_store` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '关联ID',
  `user_id` bigint(50) NOT NULL COMMENT '用户id',
  `store_id` bigint(50) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='马上胡用户店铺关联表';

-- ----------------------------
-- Records of msh_user_store
-- ----------------------------
INSERT INTO `msh_user_store` VALUES ('3', '2', '3');
INSERT INTO `msh_user_store` VALUES ('4', '1', '6');
INSERT INTO `msh_user_store` VALUES ('5', '5', '7');
INSERT INTO `msh_user_store` VALUES ('6', '2', '8');

-- ----------------------------
-- Table structure for `msh_wallet`
-- ----------------------------
DROP TABLE IF EXISTS `msh_wallet`;
CREATE TABLE `msh_wallet` (
  `id` bigint(50) NOT NULL COMMENT '钱包ID',
  `wallet_type` int(20) DEFAULT NULL COMMENT '钱包类型',
  `wallet_owner` bigint(50) NOT NULL COMMENT '钱包归属',
  `wallet_balance` double(50,2) DEFAULT NULL COMMENT '钱包余额',
  `wallet_deduct` double(50,2) DEFAULT NULL COMMENT '服务费',
  `wallet_income` double(50,2) DEFAULT NULL COMMENT '总收入',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='马上胡钱包表';

-- ----------------------------
-- Records of msh_wallet
-- ----------------------------
INSERT INTO `msh_wallet` VALUES ('1', '0', '2', '114514.99', '0.00', '5201314.99', '2024-06-08 15:30:00');
INSERT INTO `msh_wallet` VALUES ('2', '1', '3', '50.15', '0.00', '50.15', '2024-06-07 15:30:39');
INSERT INTO `msh_wallet` VALUES ('3', '2', '1', '999999.99', '999.99', '1000000.00', '2024-06-08 15:31:19');

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-green', 'Y', 'admin', '2024-06-04 15:18:20', 'admin', '2024-06-10 18:19:35', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-06-04 15:18:20', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-06-04 15:18:20', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-06-04 15:18:20', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-06-04 15:18:20', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-06-04 15:18:20', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-06-04 15:18:17', '', null);

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-06-04 15:18:20', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '保密', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-06-04 15:18:20', 'admin', '2024-06-05 16:44:37', '性别保密');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-06-04 15:18:20', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-06-04 15:18:20', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-06-04 15:18:20', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-06-04 15:18:20', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-06-04 15:18:20', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-06-04 15:18:20', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-06-04 15:18:20', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-06-04 15:18:20', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('30', '0', '轮播图', '0', 'msh_ad_status', null, 'primary', 'N', '0', 'admin', '2024-06-05 20:16:57', '', null, '会动的轮播图');
INSERT INTO `sys_dict_data` VALUES ('31', '1', '弹窗', '1', 'msh_ad_status', null, 'primary', 'N', '0', 'admin', '2024-06-05 20:17:20', '', null, '弹窗的广告');
INSERT INTO `sys_dict_data` VALUES ('32', '2', '侧边广告', '2', 'msh_ad_status', null, 'primary', 'N', '0', 'admin', '2024-06-05 20:18:15', '', null, '侧边栏的广告');
INSERT INTO `sys_dict_data` VALUES ('33', '0', '轮播图', '0', 'msh_ad_type', null, 'default', 'N', '0', 'admin', '2024-06-05 20:24:39', '', null, '轮播图广告');
INSERT INTO `sys_dict_data` VALUES ('34', '1', '弹窗广告', '1', 'msh_ad_type', null, 'default', 'N', '0', 'admin', '2024-06-05 20:25:03', '', null, '弹窗广告');
INSERT INTO `sys_dict_data` VALUES ('35', '0', '登录用户', 'admin', 'msh_default_user', null, 'default', 'N', '0', 'admin', '2024-06-05 20:43:03', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('36', '0', '用户钱包', '0', 'msh_wallet_type', null, 'default', 'N', '0', 'admin', '2024-06-05 21:13:33', '', null, '这是用户总余额的默认钱包');
INSERT INTO `sys_dict_data` VALUES ('37', '1', '店铺钱包', '1', 'msh_wallet_type', null, 'default', 'N', '0', 'admin', '2024-06-05 21:13:59', '', null, '单个店铺的总钱包');
INSERT INTO `sys_dict_data` VALUES ('38', '2', '公司钱包', '2', 'msh_wallet_type', null, 'default', 'N', '0', 'admin', '2024-06-05 21:14:24', '', null, '公司的总余额钱包');
INSERT INTO `sys_dict_data` VALUES ('39', '0', '提现中', '0', 'msh_finance_status', null, 'warning', 'N', '0', 'admin', '2024-06-05 21:28:00', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('40', '1', '提现成功', '1', 'msh_finance_status', null, 'success', 'N', '0', 'admin', '2024-06-05 21:28:15', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('41', '2', '提现失败', '2', 'msh_finance_status', null, 'danger', 'N', '0', 'admin', '2024-06-05 21:28:32', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('42', '0', '提现', '0', 'msh_finance_type', null, 'default', 'N', '0', 'admin', '2024-06-05 21:29:35', '', null, '这是一笔提现的钱');
INSERT INTO `sys_dict_data` VALUES ('43', '1', '开支', '1', 'msh_finance_type', null, 'default', 'N', '0', 'admin', '2024-06-05 21:29:56', '', null, '这是一笔支出');
INSERT INTO `sys_dict_data` VALUES ('44', '2', '收入', '2', 'msh_finance_type', null, 'default', 'N', '0', 'admin', '2024-06-05 21:30:13', '', null, '这是一笔收入');
INSERT INTO `sys_dict_data` VALUES ('45', '0', '直营店', '0', 'msh_store_type', null, 'primary', 'N', '0', 'admin', '2024-06-06 11:46:49', 'admin', '2024-06-06 11:46:55', '直营店铺');
INSERT INTO `sys_dict_data` VALUES ('46', '1', '加盟店', '1', 'msh_store_type', null, 'primary', 'N', '0', 'admin', '2024-06-06 11:47:25', '', null, '加盟店铺，包括全加盟和半加盟');
INSERT INTO `sys_dict_data` VALUES ('47', '2', '合资店', '2', 'msh_store_type', null, 'primary', 'N', '0', 'admin', '2024-06-06 11:47:46', '', null, '合资店铺');
INSERT INTO `sys_dict_data` VALUES ('48', '0', '审核中', '0', 'msh_check_status', null, 'warning', 'N', '0', 'admin', '2024-06-07 09:23:14', '', null, '信息审核中');
INSERT INTO `sys_dict_data` VALUES ('49', '1', '审核通过', '1', 'msh_check_status', null, 'success', 'N', '0', 'admin', '2024-06-07 09:23:44', '', null, '审核成功');
INSERT INTO `sys_dict_data` VALUES ('50', '2', '审核未通过', '2', 'msh_check_status', null, 'danger', 'N', '0', 'admin', '2024-06-07 09:24:04', '', null, '审核失败');
INSERT INTO `sys_dict_data` VALUES ('51', '0', '店铺审核', '0', 'msh_check_type', null, 'primary', 'N', '0', 'admin', '2024-06-07 09:31:02', '', null, '店铺审核类型');
INSERT INTO `sys_dict_data` VALUES ('52', '1', '加盟审核', '1', 'msh_check_type', null, 'primary', 'N', '0', 'admin', '2024-06-07 09:31:20', '', null, '加盟审核类型');
INSERT INTO `sys_dict_data` VALUES ('53', '0', '小程序订单', '0', 'msh_order_source', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:49:28', '', null, '小程序用户下单');
INSERT INTO `sys_dict_data` VALUES ('54', '1', '门店订单', '1', 'msh_order_source', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:50:00', '', null, '门店下单');
INSERT INTO `sys_dict_data` VALUES ('55', '2', '美团订单', '2', 'msh_order_source', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:50:19', '', null, '美团团购下单');
INSERT INTO `sys_dict_data` VALUES ('56', '3', '抖音订单', '3', 'msh_order_source', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:51:34', '', null, '抖音团购下单');
INSERT INTO `sys_dict_data` VALUES ('57', '4', '其他订单', '4', 'msh_order_source', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:52:11', '', null, '其他途径下单');
INSERT INTO `sys_dict_data` VALUES ('58', '0', '一般收入订单', '0', 'msh_order_type', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:53:49', 'admin', '2024-06-07 14:55:40', '该订单类型为产生的下单收入');
INSERT INTO `sys_dict_data` VALUES ('59', '1', '服务费支出订单', '1', 'msh_order_type', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:54:24', '', null, '该订单为产生的服务费支出订单');
INSERT INTO `sys_dict_data` VALUES ('60', '2', '服务费收入订单', '2', 'msh_order_type', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:54:49', '', null, '该笔订单为服务费支出订单');
INSERT INTO `sys_dict_data` VALUES ('61', '3', '分账支出订单', '3', 'msh_order_type', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:55:31', '', null, '该笔订单为分账订单支出');
INSERT INTO `sys_dict_data` VALUES ('62', '4', '分账收入订单', '4', 'msh_order_type', null, 'primary', 'N', '0', 'admin', '2024-06-07 14:56:13', '', null, '该笔订单为分账收入订单');
INSERT INTO `sys_dict_data` VALUES ('63', '0', '招商中', '0', 'msh_opportunity_status', null, 'success', 'N', '0', 'admin', '2024-06-08 15:54:30', '', null, '招商中，还可以投资');
INSERT INTO `sys_dict_data` VALUES ('64', '1', '招商截至', '1', 'msh_opportunity_status', null, 'danger', 'N', '0', 'admin', '2024-06-08 15:55:03', '', null, '招商截至，停止投资');
INSERT INTO `sys_dict_data` VALUES ('65', '2', '即将截止', '2', 'msh_opportunity_status', null, 'warning', 'N', '0', 'admin', '2024-06-08 15:55:26', '', null, '即将截止投资');
INSERT INTO `sys_dict_data` VALUES ('66', '3', '筹备中', '3', 'msh_opportunity_status', null, 'primary', 'N', '0', 'admin', '2024-06-08 15:55:53', '', null, '未开放投资但是可以预览');

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2024-06-04 15:18:20', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2024-06-04 15:18:20', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2024-06-04 15:18:20', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2024-06-04 15:18:20', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2024-06-04 15:18:20', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2024-06-04 15:18:20', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2024-06-04 15:18:20', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2024-06-04 15:18:20', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2024-06-04 15:18:20', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2024-06-04 15:18:20', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '广告类型', 'msh_ad_type', '0', 'admin', '2024-06-05 14:02:38', 'admin', '2024-06-05 20:16:19', '广告状态的描述字典');
INSERT INTO `sys_dict_type` VALUES ('12', '默认用户', 'msh_default_user', '0', 'admin', '2024-06-05 20:42:32', '', null, '一些常用的默认用户');
INSERT INTO `sys_dict_type` VALUES ('13', '钱包类型', 'msh_wallet_type', '0', 'admin', '2024-06-05 21:12:58', '', null, '钱包的类型');
INSERT INTO `sys_dict_type` VALUES ('14', '明细状态', 'msh_finance_status', '0', 'admin', '2024-06-05 21:27:07', '', null, '提现状态');
INSERT INTO `sys_dict_type` VALUES ('15', '明细类型', 'msh_finance_type', '0', 'admin', '2024-06-05 21:29:11', '', null, '说明该条明细的类型');
INSERT INTO `sys_dict_type` VALUES ('16', '店铺类型', 'msh_store_type', '0', 'admin', '2024-06-06 11:45:57', '', null, '店铺类型列表');
INSERT INTO `sys_dict_type` VALUES ('17', '审核状态表', 'msh_check_status', '0', 'admin', '2024-06-07 09:22:45', '', null, '审核状态表');
INSERT INTO `sys_dict_type` VALUES ('18', '审核类型', 'msh_check_type', '0', 'admin', '2024-06-07 09:30:41', '', null, '审核类型表');
INSERT INTO `sys_dict_type` VALUES ('19', '订单来源', 'msh_order_source', '0', 'admin', '2024-06-07 14:48:55', '', null, '订单的产生来源');
INSERT INTO `sys_dict_type` VALUES ('20', '订单类型', 'msh_order_type', '0', 'admin', '2024-06-07 14:52:53', '', null, '订单的具体类型');
INSERT INTO `sys_dict_type` VALUES ('21', '商机状态', 'msh_opportunity_status', '0', 'admin', '2024-06-08 15:53:47', '', null, '商业机会的投资状态');

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-06-04 15:18:21', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-06-04 15:18:21', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-06-04 15:18:21', '', null, '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('1', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-04 20:58:53');
INSERT INTO `sys_logininfor` VALUES ('2', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-04 21:01:55');
INSERT INTO `sys_logininfor` VALUES ('3', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 08:37:46');
INSERT INTO `sys_logininfor` VALUES ('4', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 11:14:03');
INSERT INTO `sys_logininfor` VALUES ('5', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 11:49:01');
INSERT INTO `sys_logininfor` VALUES ('6', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 13:59:31');
INSERT INTO `sys_logininfor` VALUES ('7', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-05 15:26:48');
INSERT INTO `sys_logininfor` VALUES ('8', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 15:26:52');
INSERT INTO `sys_logininfor` VALUES ('9', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-05 16:53:03');
INSERT INTO `sys_logininfor` VALUES ('10', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-05 16:53:16');
INSERT INTO `sys_logininfor` VALUES ('11', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 16:54:04');
INSERT INTO `sys_logininfor` VALUES ('12', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-05 16:57:05');
INSERT INTO `sys_logininfor` VALUES ('13', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-05 16:58:13');
INSERT INTO `sys_logininfor` VALUES ('14', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 16:58:17');
INSERT INTO `sys_logininfor` VALUES ('15', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-05 17:07:17');
INSERT INTO `sys_logininfor` VALUES ('16', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 17:07:31');
INSERT INTO `sys_logininfor` VALUES ('17', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-05 17:21:08');
INSERT INTO `sys_logininfor` VALUES ('18', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 17:21:12');
INSERT INTO `sys_logininfor` VALUES ('19', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-05 18:38:33');
INSERT INTO `sys_logininfor` VALUES ('20', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 18:38:35');
INSERT INTO `sys_logininfor` VALUES ('21', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 20:01:52');
INSERT INTO `sys_logininfor` VALUES ('22', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-05 22:07:14');
INSERT INTO `sys_logininfor` VALUES ('23', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-05 22:07:22');
INSERT INTO `sys_logininfor` VALUES ('24', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 08:29:50');
INSERT INTO `sys_logininfor` VALUES ('25', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 08:30:38');
INSERT INTO `sys_logininfor` VALUES ('26', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 08:30:45');
INSERT INTO `sys_logininfor` VALUES ('27', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 08:30:56');
INSERT INTO `sys_logininfor` VALUES ('28', 'test02', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-06 08:31:13');
INSERT INTO `sys_logininfor` VALUES ('29', 'test002', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-06 08:31:49');
INSERT INTO `sys_logininfor` VALUES ('30', 'test03', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 08:31:58');
INSERT INTO `sys_logininfor` VALUES ('31', 'test03', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 08:32:03');
INSERT INTO `sys_logininfor` VALUES ('32', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 08:32:08');
INSERT INTO `sys_logininfor` VALUES ('33', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 08:34:10');
INSERT INTO `sys_logininfor` VALUES ('34', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 08:34:57');
INSERT INTO `sys_logininfor` VALUES ('35', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 08:36:04');
INSERT INTO `sys_logininfor` VALUES ('36', 'test03', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户已封禁，请联系管理员', '2024-06-06 08:36:10');
INSERT INTO `sys_logininfor` VALUES ('37', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 08:36:23');
INSERT INTO `sys_logininfor` VALUES ('38', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 08:36:29');
INSERT INTO `sys_logininfor` VALUES ('39', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 08:36:33');
INSERT INTO `sys_logininfor` VALUES ('40', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 10:17:45');
INSERT INTO `sys_logininfor` VALUES ('41', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 11:38:26');
INSERT INTO `sys_logininfor` VALUES ('42', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 15:01:45');
INSERT INTO `sys_logininfor` VALUES ('43', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 16:15:43');
INSERT INTO `sys_logininfor` VALUES ('44', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 18:58:56');
INSERT INTO `sys_logininfor` VALUES ('45', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 22:33:03');
INSERT INTO `sys_logininfor` VALUES ('46', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-07 09:13:28');
INSERT INTO `sys_logininfor` VALUES ('47', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-07 09:13:32');
INSERT INTO `sys_logininfor` VALUES ('48', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 09:13:35');
INSERT INTO `sys_logininfor` VALUES ('49', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-07 11:39:44');
INSERT INTO `sys_logininfor` VALUES ('50', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 11:39:50');
INSERT INTO `sys_logininfor` VALUES ('51', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-07 14:10:46');
INSERT INTO `sys_logininfor` VALUES ('52', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-07 14:10:49');
INSERT INTO `sys_logininfor` VALUES ('53', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 14:10:54');
INSERT INTO `sys_logininfor` VALUES ('54', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-07 14:28:20');
INSERT INTO `sys_logininfor` VALUES ('55', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 14:28:29');
INSERT INTO `sys_logininfor` VALUES ('56', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 16:33:57');
INSERT INTO `sys_logininfor` VALUES ('57', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 17:22:26');
INSERT INTO `sys_logininfor` VALUES ('58', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 21:51:03');
INSERT INTO `sys_logininfor` VALUES ('59', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-07 22:33:02');
INSERT INTO `sys_logininfor` VALUES ('60', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 22:33:23');
INSERT INTO `sys_logininfor` VALUES ('61', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-07 22:33:33');
INSERT INTO `sys_logininfor` VALUES ('62', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 22:33:38');
INSERT INTO `sys_logininfor` VALUES ('63', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-07 22:34:05');
INSERT INTO `sys_logininfor` VALUES ('64', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 22:34:20');
INSERT INTO `sys_logininfor` VALUES ('65', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-07 22:44:30');
INSERT INTO `sys_logininfor` VALUES ('66', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-07 22:44:36');
INSERT INTO `sys_logininfor` VALUES ('67', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-08 15:17:05');
INSERT INTO `sys_logininfor` VALUES ('68', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-09 23:19:59');
INSERT INTO `sys_logininfor` VALUES ('69', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-09 23:20:05');
INSERT INTO `sys_logininfor` VALUES ('70', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-10 14:31:29');
INSERT INTO `sys_logininfor` VALUES ('71', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 14:31:32');
INSERT INTO `sys_logininfor` VALUES ('72', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-10 15:01:57');
INSERT INTO `sys_logininfor` VALUES ('73', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 15:02:00');
INSERT INTO `sys_logininfor` VALUES ('74', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-10 15:02:13');
INSERT INTO `sys_logininfor` VALUES ('75', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 15:02:18');
INSERT INTO `sys_logininfor` VALUES ('76', 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-10 15:10:20');
INSERT INTO `sys_logininfor` VALUES ('77', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 15:10:28');
INSERT INTO `sys_logininfor` VALUES ('78', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-10 15:53:27');
INSERT INTO `sys_logininfor` VALUES ('79', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 15:53:38');
INSERT INTO `sys_logininfor` VALUES ('80', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-10 15:55:11');
INSERT INTO `sys_logininfor` VALUES ('81', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 15:55:19');
INSERT INTO `sys_logininfor` VALUES ('82', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 17:17:44');
INSERT INTO `sys_logininfor` VALUES ('83', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 17:53:34');
INSERT INTO `sys_logininfor` VALUES ('84', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 21:41:31');
INSERT INTO `sys_logininfor` VALUES ('85', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-10 21:46:43');
INSERT INTO `sys_logininfor` VALUES ('86', 'test', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-10 21:46:52');
INSERT INTO `sys_logininfor` VALUES ('87', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-06-10 21:52:09');
INSERT INTO `sys_logininfor` VALUES ('88', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 21:52:11');
INSERT INTO `sys_logininfor` VALUES ('89', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-10 21:52:17');
INSERT INTO `sys_logininfor` VALUES ('90', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 21:52:33');
INSERT INTO `sys_logininfor` VALUES ('91', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-10 21:54:51');
INSERT INTO `sys_logininfor` VALUES ('92', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 21:54:56');
INSERT INTO `sys_logininfor` VALUES ('93', 'test01', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-10 22:01:43');
INSERT INTO `sys_logininfor` VALUES ('94', 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-10 22:01:50');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2088 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2024-06-04 15:18:18', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2024-06-04 15:18:18', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2024-06-04 15:18:18', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-06-04 15:18:18', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-06-04 15:18:18', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-06-04 15:18:18', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-06-04 15:18:18', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-06-04 15:18:18', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-06-04 15:18:18', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-06-04 15:18:18', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-06-04 15:18:18', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2024-06-04 15:18:18', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-06-04 15:18:18', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-06-04 15:18:18', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-06-04 15:18:18', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-06-04 15:18:18', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-06-04 15:18:18', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-06-04 15:18:18', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-06-04 15:18:18', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-06-04 15:18:18', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-06-04 15:18:18', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-06-04 15:18:18', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-06-04 15:18:18', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2001', '订单管理', '0', '4', 'order', null, null, '1', '0', 'M', '0', '0', null, 'skill', 'admin', '2024-06-04 16:28:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2002', '店铺管理', '0', '5', 'store', null, null, '1', '0', 'M', '0', '0', null, 'shopping', 'admin', '2024-06-04 16:28:53', '', null, '');
INSERT INTO `sys_menu` VALUES ('2003', '加盟管理', '0', '6', 'franchisee ', null, null, '1', '0', 'M', '0', '0', null, 'peoples', 'admin', '2024-06-04 16:30:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2004', '财务管理', '0', '7', 'finance', null, null, '1', '0', 'M', '0', '0', null, 'money', 'admin', '2024-06-04 16:31:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '商机管理', '0', '8', 'chance', null, null, '1', '0', 'M', '0', '0', null, 'tool', 'admin', '2024-06-04 16:32:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2020', '广告管理', '1', '1', 'ad', 'ad/ad/index', null, '1', '0', 'C', '0', '0', 'ad:ad:list', 'star', 'admin', '2024-06-05 20:05:56', 'admin', '2024-06-05 20:08:06', '广告管理菜单');
INSERT INTO `sys_menu` VALUES ('2021', '广告管理查询', '2020', '1', '#', '', null, '1', '0', 'F', '0', '0', 'ad:ad:query', '#', 'admin', '2024-06-05 20:05:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '广告管理新增', '2020', '2', '#', '', null, '1', '0', 'F', '0', '0', 'ad:ad:add', '#', 'admin', '2024-06-05 20:05:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '广告管理修改', '2020', '3', '#', '', null, '1', '0', 'F', '0', '0', 'ad:ad:edit', '#', 'admin', '2024-06-05 20:05:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '广告管理删除', '2020', '4', '#', '', null, '1', '0', 'F', '0', '0', 'ad:ad:remove', '#', 'admin', '2024-06-05 20:05:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '广告管理导出', '2020', '5', '#', '', null, '1', '0', 'F', '0', '0', 'ad:ad:export', '#', 'admin', '2024-06-05 20:05:56', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '店铺资产', '2004', '1', 'wallet', 'mshWallet/wallet/index', null, '1', '0', 'C', '0', '0', 'mshWallet:wallet:list', 'money', 'admin', '2024-06-05 21:21:28', 'admin', '2024-06-05 21:24:19', '店铺资产菜单');
INSERT INTO `sys_menu` VALUES ('2027', '店铺资产查询', '2026', '1', '#', '', null, '1', '0', 'F', '0', '0', 'mshWallet:wallet:query', '#', 'admin', '2024-06-05 21:21:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '店铺资产新增', '2026', '2', '#', '', null, '1', '0', 'F', '0', '0', 'mshWallet:wallet:add', '#', 'admin', '2024-06-05 21:21:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '店铺资产修改', '2026', '3', '#', '', null, '1', '0', 'F', '0', '0', 'mshWallet:wallet:edit', '#', 'admin', '2024-06-05 21:21:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '店铺资产删除', '2026', '4', '#', '', null, '1', '0', 'F', '0', '0', 'mshWallet:wallet:remove', '#', 'admin', '2024-06-05 21:21:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2031', '店铺资产导出', '2026', '5', '#', '', null, '1', '0', 'F', '0', '0', 'mshWallet:wallet:export', '#', 'admin', '2024-06-05 21:21:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2032', '店铺管理', '2002', '1', 'mshStore', 'mshStore/mshStore/index', null, '1', '0', 'C', '0', '0', 'mshStore:mshStore:list', 'list', 'admin', '2024-06-06 11:51:28', 'admin', '2024-06-06 11:54:11', '马上胡店铺菜单');
INSERT INTO `sys_menu` VALUES ('2033', '马上胡店铺查询', '2032', '1', '#', '', null, '1', '0', 'F', '0', '0', 'mshStore:mshStore:query', '#', 'admin', '2024-06-06 11:51:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '马上胡店铺新增', '2032', '2', '#', '', null, '1', '0', 'F', '0', '0', 'mshStore:mshStore:add', '#', 'admin', '2024-06-06 11:51:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2035', '马上胡店铺修改', '2032', '3', '#', '', null, '1', '0', 'F', '0', '0', 'mshStore:mshStore:edit', '#', 'admin', '2024-06-06 11:51:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '马上胡店铺删除', '2032', '4', '#', '', null, '1', '0', 'F', '0', '0', 'mshStore:mshStore:remove', '#', 'admin', '2024-06-06 11:51:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2037', '马上胡店铺导出', '2032', '5', '#', '', null, '1', '0', 'F', '0', '0', 'mshStore:mshStore:export', '#', 'admin', '2024-06-06 11:51:28', '', null, '');
INSERT INTO `sys_menu` VALUES ('2044', '房间管理', '2002', '1', 'mshRoom', 'mshRoom/mshRoom/index', null, '1', '0', 'C', '0', '0', 'mshRoom:mshRoom:list', 'education', 'admin', '2024-06-06 22:50:22', 'admin', '2024-06-06 22:50:55', '房间管理菜单');
INSERT INTO `sys_menu` VALUES ('2045', '房间管理查询', '2044', '1', '#', '', null, '1', '0', 'F', '0', '0', 'mshRoom:mshRoom:query', '#', 'admin', '2024-06-06 22:50:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2046', '房间管理新增', '2044', '2', '#', '', null, '1', '0', 'F', '0', '0', 'mshRoom:mshRoom:add', '#', 'admin', '2024-06-06 22:50:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2047', '房间管理修改', '2044', '3', '#', '', null, '1', '0', 'F', '0', '0', 'mshRoom:mshRoom:edit', '#', 'admin', '2024-06-06 22:50:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2048', '房间管理删除', '2044', '4', '#', '', null, '1', '0', 'F', '0', '0', 'mshRoom:mshRoom:remove', '#', 'admin', '2024-06-06 22:50:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2049', '房间管理导出', '2044', '5', '#', '', null, '1', '0', 'F', '0', '0', 'mshRoom:mshRoom:export', '#', 'admin', '2024-06-06 22:50:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2050', '开店审批', '2002', '2', 'information', 'mshInformation/information/index', null, '1', '0', 'C', '0', '0', 'mshInformation:information:list', 'edit', 'admin', '2024-06-07 09:25:43', 'admin', '2024-06-07 09:50:20', '开店审核菜单');
INSERT INTO `sys_menu` VALUES ('2051', '开店审核查询', '2050', '1', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformation:information:query', '#', 'admin', '2024-06-07 09:25:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2052', '开店审核新增', '2050', '2', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformation:information:add', '#', 'admin', '2024-06-07 09:25:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2053', '开店审核修改', '2050', '3', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformation:information:edit', '#', 'admin', '2024-06-07 09:25:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2054', '开店审核删除', '2050', '4', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformation:information:remove', '#', 'admin', '2024-06-07 09:25:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '开店审核导出', '2050', '5', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformation:information:export', '#', 'admin', '2024-06-07 09:25:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2056', '加盟审批', '2003', '1', 'mshInformationF', 'mshInformationF/mshInformationF/index', null, '1', '0', 'C', '0', '0', 'mshInformationF:mshInformationF:list', 'edit', 'admin', '2024-06-07 09:54:07', 'admin', '2024-06-07 09:58:44', '加盟审核菜单');
INSERT INTO `sys_menu` VALUES ('2057', '加盟审核查询', '2056', '1', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformationF:mshInformationF:query', '#', 'admin', '2024-06-07 09:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2058', '加盟审核新增', '2056', '2', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformationF:mshInformationF:add', '#', 'admin', '2024-06-07 09:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2059', '加盟审核修改', '2056', '3', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformationF:mshInformationF:edit', '#', 'admin', '2024-06-07 09:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2060', '加盟审核删除', '2056', '4', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformationF:mshInformationF:remove', '#', 'admin', '2024-06-07 09:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2061', '加盟审核导出', '2056', '5', '#', '', null, '1', '0', 'F', '0', '0', 'mshInformationF:mshInformationF:export', '#', 'admin', '2024-06-07 09:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2064', '加盟商管理', '2003', '1', 'franchiseeUser', 'franchiseeUser/franchiseeUser/index', null, '1', '0', 'C', '0', '0', 'franchiseeUser:franchiseeUser:list', 'peoples', 'admin', '2024-06-07 14:19:33', 'admin', '2024-06-07 14:24:34', '加盟商管理菜单');
INSERT INTO `sys_menu` VALUES ('2065', '加盟商管理查询', '2064', '1', '#', '', null, '1', '0', 'F', '0', '0', 'franchiseeUser:franchiseeUser:query', '#', 'admin', '2024-06-07 14:19:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '加盟商管理新增', '2064', '2', '#', '', null, '1', '0', 'F', '0', '0', 'franchiseeUser:franchiseeUser:add', '#', 'admin', '2024-06-07 14:19:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '加盟商管理修改', '2064', '3', '#', '', null, '1', '0', 'F', '0', '0', 'franchiseeUser:franchiseeUser:edit', '#', 'admin', '2024-06-07 14:19:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2068', '加盟商管理删除', '2064', '4', '#', '', null, '1', '0', 'F', '0', '0', 'franchiseeUser:franchiseeUser:remove', '#', 'admin', '2024-06-07 14:19:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2069', '加盟商管理导出', '2064', '5', '#', '', null, '1', '0', 'F', '0', '0', 'franchiseeUser:franchiseeUser:export', '#', 'admin', '2024-06-07 14:19:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2070', '订单明细', '2001', '1', 'mshOrder', 'mshOrder/mshOrder/index', null, '1', '0', 'C', '0', '0', 'mshOrder:mshOrder:list', 'monitor', 'admin', '2024-06-07 14:59:34', 'admin', '2024-06-07 17:23:52', '订单明细菜单');
INSERT INTO `sys_menu` VALUES ('2071', '订单明细查询', '2070', '1', '#', '', null, '1', '0', 'F', '0', '0', 'mshOrder:mshOrder:query', '#', 'admin', '2024-06-07 14:59:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2072', '订单明细新增', '2070', '2', '#', '', null, '1', '0', 'F', '0', '0', 'mshOrder:mshOrder:add', '#', 'admin', '2024-06-07 14:59:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2073', '订单明细修改', '2070', '3', '#', '', null, '1', '0', 'F', '0', '0', 'mshOrder:mshOrder:edit', '#', 'admin', '2024-06-07 14:59:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2074', '订单明细删除', '2070', '4', '#', '', null, '1', '0', 'F', '0', '0', 'mshOrder:mshOrder:remove', '#', 'admin', '2024-06-07 14:59:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2075', '订单明细导出', '2070', '5', '#', '', null, '1', '0', 'F', '0', '0', 'mshOrder:mshOrder:export', '#', 'admin', '2024-06-07 14:59:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2076', '财务明细', '2004', '1', 'finance', 'finance/finance/index', null, '1', '0', 'C', '0', '0', 'finance:finance:list', 'documentation', 'admin', '2024-06-08 15:25:14', 'admin', '2024-06-08 15:32:02', '财务明细菜单');
INSERT INTO `sys_menu` VALUES ('2077', '财务明细查询', '2076', '1', '#', '', null, '1', '0', 'F', '0', '0', 'finance:finance:query', '#', 'admin', '2024-06-08 15:25:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2078', '财务明细新增', '2076', '2', '#', '', null, '1', '0', 'F', '0', '0', 'finance:finance:add', '#', 'admin', '2024-06-08 15:25:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', '财务明细修改', '2076', '3', '#', '', null, '1', '0', 'F', '0', '0', 'finance:finance:edit', '#', 'admin', '2024-06-08 15:25:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2080', '财务明细删除', '2076', '4', '#', '', null, '1', '0', 'F', '0', '0', 'finance:finance:remove', '#', 'admin', '2024-06-08 15:25:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2081', '财务明细导出', '2076', '5', '#', '', null, '1', '0', 'F', '0', '0', 'finance:finance:export', '#', 'admin', '2024-06-08 15:25:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2082', '商机管理', '2005', '1', 'mshOpportunity', 'mshOpportunity/mshOpportunity/index', null, '1', '0', 'C', '0', '0', 'mshOpportunity:mshOpportunity:list', 'tool', 'admin', '2024-06-08 15:58:05', 'admin', '2024-06-08 15:59:30', '商机管理菜单');
INSERT INTO `sys_menu` VALUES ('2083', '商机管理查询', '2082', '1', '#', '', null, '1', '0', 'F', '0', '0', 'mshOpportunity:mshOpportunity:query', '#', 'admin', '2024-06-08 15:58:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '商机管理新增', '2082', '2', '#', '', null, '1', '0', 'F', '0', '0', 'mshOpportunity:mshOpportunity:add', '#', 'admin', '2024-06-08 15:58:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '商机管理修改', '2082', '3', '#', '', null, '1', '0', 'F', '0', '0', 'mshOpportunity:mshOpportunity:edit', '#', 'admin', '2024-06-08 15:58:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '商机管理删除', '2082', '4', '#', '', null, '1', '0', 'F', '0', '0', 'mshOpportunity:mshOpportunity:remove', '#', 'admin', '2024-06-08 15:58:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2087', '商机管理导出', '2082', '5', '#', '', null, '1', '0', 'F', '0', '0', 'mshOpportunity:mshOpportunity:export', '#', 'admin', '2024-06-08 15:58:05', '', null, '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-06-04 15:18:21', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-06-04 15:18:21', '', null, '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-06-04 15:20:57', '14');
INSERT INTO `sys_oper_log` VALUES ('101', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 15:21:11', '211');
INSERT INTO `sys_oper_log` VALUES ('102', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 15:21:17', '155');
INSERT INTO `sys_oper_log` VALUES ('103', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"star\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"广告管理\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":1,\"path\":\"ad\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 15:22:57', '83');
INSERT INTO `sys_oper_log` VALUES ('104', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":true,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"超级管理员\",\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"系统运维\",\"roleSort\":1,\"status\":\"0\"}', null, '1', '不允许操作超级管理员角色', '2024-06-04 16:21:00', '2');
INSERT INTO `sys_oper_log` VALUES ('105', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,2000,107,1035,1036,1037,1038],\"params\":{},\"remark\":\"系统日常运营的维护管理\",\"roleId\":2,\"roleKey\":\"sys_role\",\"roleName\":\"后台管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:22:51', '712');
INSERT INTO `sys_oper_log` VALUES ('106', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"半加盟商用户\",\"roleId\":100,\"roleKey\":\"franchisee_role_half\",\"roleName\":\"半加盟商\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:25:35', '66');
INSERT INTO `sys_oper_log` VALUES ('107', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:25:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"半加盟商用户\",\"roleId\":100,\"roleKey\":\"franchisee_role_half\",\"roleName\":\"半加盟商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:25:42', '142');
INSERT INTO `sys_oper_log` VALUES ('108', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"全加盟商用户\",\"roleId\":101,\"roleKey\":\"franchisee_role_full\",\"roleName\":\"全加盟商\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:26:35', '156');
INSERT INTO `sys_oper_log` VALUES ('109', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"合伙人角色\",\"roleId\":102,\"roleKey\":\"partner_role\",\"roleName\":\"合伙人\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:27:16', '584');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"skill\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"订单管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"order\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:28:22', '146');
INSERT INTO `sys_oper_log` VALUES ('111', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"店铺管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"store\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:28:53', '60');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"加盟管理\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"franchisee \",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:30:21', '157');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"财务管理\",\"menuType\":\"M\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"finance\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:31:40', '463');
INSERT INTO `sys_oper_log` VALUES ('114', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"商机管理\",\"menuType\":\"M\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"chance\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:32:11', '167');
INSERT INTO `sys_oper_log` VALUES ('115', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"房间管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"path\":\"roomList\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:33:32', '168');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"开店审批\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2002,\"path\":\"roomExamine\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:34:39', '48');
INSERT INTO `sys_oper_log` VALUES ('117', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,2000,107,1035,1036,1037,1038,2001,2002,2006,2007,2003,2004,2005],\"params\":{},\"remark\":\"系统日常运营的维护管理\",\"roleId\":2,\"roleKey\":\"sys_role\",\"roleName\":\"后台管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 16:35:46', '186');
INSERT INTO `sys_oper_log` VALUES ('118', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:27:16\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"合伙人角色\",\"roleId\":102,\"roleKey\":\"partner_role\",\"roleName\":\"合伙人\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-04 20:59:44', '94');
INSERT INTO `sys_oper_log` VALUES ('119', '创建表', '0', 'com.ruoyi.generator.controller.GenController.createTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":\"/*\\nNavicat MySQL Data Transfer\\n\\nSource Server         : localhost_3306\\nSource Server Version : 50556\\nSource Host           : localhost:3306\\nSource Database       : msh_sys\\n\\nTarget Server Type    : MYSQL\\nTarget Server Version : 50556\\nFile Encoding         : 65001\\n\\nDate: 2024-06-05 11:48:48\\n*/\\n\\nSET FOREIGN_KEY_CHECKS=0;\\n\\n-- ----------------------------\\n-- Table structure for `msh_ad`\\n-- ----------------------------\\nDROP TABLE IF EXISTS `msh_ad`;\\nCREATE TABLE `msh_ad` (\\n  `id` int(50) NOT NULL AUTO_INCREMENT,\\n  `ad_name` varchar(100) NOT NULL COMMENT \'广告名称\',\\n  `ad_type` varchar(100) NOT NULL COMMENT \'广告类型\',\\n  `ad_position` varchar(100) NOT NULL COMMENT \'广告位置\',\\n  `ad_start_time` datetime NOT NULL COMMENT \'广告展示开始时间\',\\n  `ad_end_time` datetime NOT NULL COMMENT \'广告展示结束时间\',\\n  `ad_url` varchar(100) NOT NULL COMMENT \'广告图片路径\',\\n  `ad_link` varchar(100) NOT NULL COMMENT \'广告跳转链接\',\\n  `ad_status` int(20) NOT NULL COMMENT \'广告状态\',\\n  `created_user_id` int(50) NOT NULL COMMENT \'广告创建者id\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\\n\\n-- ----------------------------\\n-- Records of msh_ad\\n-- ----------------------------\\n\"}', '{\"msg\":\"创建表结构异常\",\"code\":500}', '0', null, '2024-06-05 11:50:11', '137');
INSERT INTO `sys_oper_log` VALUES ('120', '创建表', '0', 'com.ruoyi.generator.controller.GenController.createTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":\"SET FOREIGN_KEY_CHECKS=0;\\n\\n-- ----------------------------\\n-- Table structure for `msh_ad`\\n-- ----------------------------\\nDROP TABLE IF EXISTS `msh_ad`;\\nCREATE TABLE `msh_ad` (\\n  `id` int(50) NOT NULL AUTO_INCREMENT,\\n  `ad_name` varchar(100) NOT NULL COMMENT \'广告名称\',\\n  `ad_type` varchar(100) NOT NULL COMMENT \'广告类型\',\\n  `ad_position` varchar(100) NOT NULL COMMENT \'广告位置\',\\n  `ad_start_time` datetime NOT NULL COMMENT \'广告展示开始时间\',\\n  `ad_end_time` datetime NOT NULL COMMENT \'广告展示结束时间\',\\n  `ad_url` varchar(100) NOT NULL COMMENT \'广告图片路径\',\\n  `ad_link` varchar(100) NOT NULL COMMENT \'广告跳转链接\',\\n  `ad_status` int(20) NOT NULL COMMENT \'广告状态\',\\n  `created_user_id` int(50) NOT NULL COMMENT \'广告创建者id\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\\n\\n-- ----------------------------\\n-- Records of msh_ad\\n-- ----------------------------\\n\"}', '{\"msg\":\"创建表结构异常\",\"code\":500}', '0', null, '2024-06-05 11:51:09', '4');
INSERT INTO `sys_oper_log` VALUES ('121', '创建表', '0', 'com.ruoyi.generator.controller.GenController.createTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":\"SET FOREIGN_KEY_CHECKS=0;\\nDROP TABLE IF EXISTS `msh_ad`;\\nCREATE TABLE `msh_ad` (\\n  `id` int(50) NOT NULL AUTO_INCREMENT,\\n  `ad_name` varchar(100) NOT NULL COMMENT \'广告名称\',\\n  `ad_type` varchar(100) NOT NULL COMMENT \'广告类型\',\\n  `ad_position` varchar(100) NOT NULL COMMENT \'广告位置\',\\n  `ad_start_time` datetime NOT NULL COMMENT \'广告展示开始时间\',\\n  `ad_end_time` datetime NOT NULL COMMENT \'广告展示结束时间\',\\n  `ad_url` varchar(100) NOT NULL COMMENT \'广告图片路径\',\\n  `ad_link` varchar(100) NOT NULL COMMENT \'广告跳转链接\',\\n  `ad_status` int(20) NOT NULL COMMENT \'广告状态\',\\n  `created_user_id` int(50) NOT NULL COMMENT \'广告创建者id\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\\n\"}', '{\"msg\":\"创建表结构异常\",\"code\":500}', '0', null, '2024-06-05 11:51:26', '2');
INSERT INTO `sys_oper_log` VALUES ('122', '创建表', '0', 'com.ruoyi.generator.controller.GenController.createTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/createTable', '127.0.0.1', '内网IP', '{\"sql\":\"DROP TABLE IF EXISTS `msh_ad`;\\nCREATE TABLE `msh_ad` (\\n  `id` int(50) NOT NULL AUTO_INCREMENT,\\n  `ad_name` varchar(100) NOT NULL COMMENT \'广告名称\',\\n  `ad_type` varchar(100) NOT NULL COMMENT \'广告类型\',\\n  `ad_position` varchar(100) NOT NULL COMMENT \'广告位置\',\\n  `ad_start_time` datetime NOT NULL COMMENT \'广告展示开始时间\',\\n  `ad_end_time` datetime NOT NULL COMMENT \'广告展示结束时间\',\\n  `ad_url` varchar(100) NOT NULL COMMENT \'广告图片路径\',\\n  `ad_link` varchar(100) NOT NULL COMMENT \'广告跳转链接\',\\n  `ad_status` int(20) NOT NULL COMMENT \'广告状态\',\\n  `created_user_id` int(50) NOT NULL COMMENT \'广告创建者id\',\\n  PRIMARY KEY (`id`)\\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\\n\"}', '{\"msg\":\"创建表结构异常\",\"code\":500}', '0', null, '2024-06-05 11:51:55', '433');
INSERT INTO `sys_oper_log` VALUES ('123', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"msh_ad\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 11:54:07', '239');
INSERT INTO `sys_oper_log` VALUES ('124', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"广告状态\",\"dictType\":\"msh_ad_status\",\"params\":{},\"remark\":\"广告状态的描述字典\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 14:02:38', '85');
INSERT INTO `sys_oper_log` VALUES ('125', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ad\",\"className\":\"Ad\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AdName\",\"columnComment\":\"广告名称\",\"columnId\":2,\"columnName\":\"ad_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AdType\",\"columnComment\":\"广告类型\",\"columnId\":3,\"columnName\":\"ad_type\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"adType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AdPosition\",\"columnComment\":\"广告位置\",\"columnId\":4,\"columnName\":\"ad_position\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"adPosition\",\"javaType\":\"String\",\"l', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 14:08:19', '527');
INSERT INTO `sys_oper_log` VALUES ('126', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_ad\"}', null, '0', null, '2024-06-05 14:08:25', '52');
INSERT INTO `sys_oper_log` VALUES ('127', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-15\",\"adLink\":\"localhost:8090/ad/test\",\"adName\":\"测试广告\",\"adPosition\":\"轮播图\",\"adStartTime\":\"2024-06-01\",\"adStatus\":1,\"adUrl\":\"url:abc/123/a.png\",\"createdUserId\":1,\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ad_type\' doesn\'t have a default value\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ad\\AdMapper.xml]\r\n### The error may involve com.ruoyi.ad.mapper.AdMapper.insertAd-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_ad          ( ad_name,                          ad_position,             ad_start_time,             ad_end_time,             ad_url,             ad_link,             ad_status,             created_user_id )           values ( ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'ad_type\' doesn\'t have a default value\n; Field \'ad_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ad_type\' doesn\'t have a default value', '2024-06-05 14:12:37', '265');
INSERT INTO `sys_oper_log` VALUES ('128', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-15\",\"adLink\":\"localhost:8090/ad/test\",\"adName\":\"测试广告\",\"adPosition\":\"轮播图\",\"adStartTime\":\"2024-06-01\",\"adStatus\":1,\"adUrl\":\"url:abc/123/a.png\",\"createdUserId\":1,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 14:14:18', '180');
INSERT INTO `sys_oper_log` VALUES ('129', '广告管理', '2', 'com.ruoyi.ad.controller.AdController.edit()', 'PUT', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-15\",\"adLink\":\"localhost:8090/ad/test\",\"adName\":\"测试广告\",\"adPosition\":\"轮播图\",\"adStartTime\":\"2024-06-01\",\"adStatus\":0,\"adType\":\"0\",\"adUrl\":\"url:abc/123/a.png\",\"createdUserId\":1,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 14:14:29', '220');
INSERT INTO `sys_oper_log` VALUES ('130', '广告管理', '2', 'com.ruoyi.ad.controller.AdController.edit()', 'PUT', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-15\",\"adLink\":\"localhost:8090/ad/test\",\"adName\":\"测试广告11\",\"adPosition\":\"轮播图\",\"adStartTime\":\"2024-06-01\",\"adStatus\":0,\"adType\":\"0\",\"adUrl\":\"url:abc/123/a.png\",\"createdUserId\":1,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 14:15:09', '170');
INSERT INTO `sys_oper_log` VALUES ('131', '广告管理', '3', 'com.ruoyi.ad.controller.AdController.remove()', 'DELETE', '1', 'admin', '研发部门', '/ad/ad/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 14:15:13', '234');
INSERT INTO `sys_oper_log` VALUES ('132', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"testuser001\",\"params\":{},\"phonenumber\":\"13245677654\",\"postIds\":[],\"remark\":\"这是一个测试用户\",\"roleIds\":[101],\"sex\":\"0\",\"status\":\"0\",\"userId\":3,\"userName\":\"测试用户1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 15:35:35', '194');
INSERT INTO `sys_oper_log` VALUES ('133', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-06-04 15:18:20\",\"cssClass\":\"\",\"default\":false,\"dictCode\":3,\"dictLabel\":\"保密\",\"dictSort\":3,\"dictType\":\"sys_user_sex\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"\",\"params\":{},\"remark\":\"性别保密\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:44:37', '131');
INSERT INTO `sys_oper_log` VALUES ('134', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"可可爱爱没有脑袋\",\"params\":{},\"phonenumber\":\"15688999988\",\"postIds\":[],\"remark\":\"测试用户2\",\"roleIds\":[102],\"sex\":\"0\",\"status\":\"0\",\"userId\":4,\"userName\":\"testuser02\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:47:08', '397');
INSERT INTO `sys_oper_log` VALUES ('135', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/user/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:47:16', '112');
INSERT INTO `sys_oper_log` VALUES ('136', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"莽莽撞撞没有屁股\",\"params\":{},\"phonenumber\":\"13299999999\",\"postIds\":[],\"remark\":\"这是一个测试用户\",\"roleIds\":[101],\"sex\":\"2\",\"status\":\"0\",\"userId\":5,\"userName\":\"test01\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:51:36', '789');
INSERT INTO `sys_oper_log` VALUES ('137', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:27:16\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2001,2006,2004],\"params\":{},\"remark\":\"合伙人角色\",\"roleId\":102,\"roleKey\":\"partner_role\",\"roleName\":\"合伙人\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:52:11', '225');
INSERT INTO `sys_oper_log` VALUES ('138', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:26:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2001,2006,2004],\"params\":{},\"remark\":\"全加盟商用户\",\"roleId\":101,\"roleKey\":\"franchisee_role_full\",\"roleName\":\"全加盟商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:52:29', '180');
INSERT INTO `sys_oper_log` VALUES ('139', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:25:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2001,2006,2004],\"params\":{},\"remark\":\"半加盟商用户\",\"roleId\":100,\"roleKey\":\"franchisee_role_half\",\"roleName\":\"半加盟商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 16:52:39', '188');
INSERT INTO `sys_oper_log` VALUES ('140', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', '1', 'admin', '研发部门', '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"email\":\"ry@163.com\",\"nickName\":\"顶真\",\"params\":{},\"phonenumber\":\"15888888888\",\"sex\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 17:15:04', '199');
INSERT INTO `sys_oper_log` VALUES ('141', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"小老弟\",\"params\":{},\"postIds\":[],\"remark\":\"测试的小老弟\",\"roleIds\":[100],\"sex\":\"2\",\"status\":\"0\",\"userId\":6,\"userName\":\"test03\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:02:31', '269');
INSERT INTO `sys_oper_log` VALUES ('142', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"msh_wallet,msh_user_store,msh_user_finance,msh_store_room,msh_store_order,msh_store,msh_room,msh_order,msh_finance\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:03:44', '363');
INSERT INTO `sys_oper_log` VALUES ('143', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ad\",\"className\":\"Ad\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 14:08:18\",\"usableColumn\":false},{\"capJavaField\":\"AdName\",\"columnComment\":\"广告名称\",\"columnId\":2,\"columnName\":\"ad_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 14:08:18\",\"usableColumn\":false},{\"capJavaField\":\"AdType\",\"columnComment\":\"广告类型\",\"columnId\":3,\"columnName\":\"ad_type\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 14:08:18\",\"usableColumn\":false},{\"capJavaField\":\"AdPosition\",\"columnComment\":\"广告位置\",\"columnId\":4,\"columnName\":\"ad_position\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:05:32', '249');
INSERT INTO `sys_oper_log` VALUES ('144', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_ad\"}', null, '0', null, '2024-06-05 20:05:35', '377');
INSERT INTO `sys_oper_log` VALUES ('145', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ad/ad/index\",\"createTime\":\"2024-06-05 20:05:56\",\"icon\":\"star\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"广告管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"ad\",\"perms\":\"ad:ad:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'广告管理\'失败，菜单名称已存在\",\"code\":500}', '0', null, '2024-06-05 20:07:09', '14');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-06-05 20:07:16', '7');
INSERT INTO `sys_oper_log` VALUES ('147', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,107,1035,1036,1037,1038,2001,2002,2006,2007,2003,2004,2005],\"params\":{},\"remark\":\"系统日常运营的维护管理\",\"roleId\":2,\"roleKey\":\"sys_role\",\"roleName\":\"后台管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:07:41', '461');
INSERT INTO `sys_oper_log` VALUES ('148', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:07:56', '160');
INSERT INTO `sys_oper_log` VALUES ('149', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ad/ad/index\",\"createTime\":\"2024-06-05 20:05:56\",\"icon\":\"star\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"广告管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":1,\"path\":\"ad\",\"perms\":\"ad:ad:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:08:06', '154');
INSERT INTO `sys_oper_log` VALUES ('150', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-06\",\"adLink\":\"https://test.com\",\"adName\":\"测试广告\",\"adPosition\":\"首页轮播图\",\"adStartTime\":\"2024-06-05\",\"adStatus\":0,\"adUrl\":\"url://test/ad\",\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ad_type\' doesn\'t have a default value\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ad\\AdMapper.xml]\r\n### The error may involve com.ruoyi.ad.mapper.AdMapper.insertAd-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_ad          ( ad_name,                          ad_position,             ad_start_time,             ad_end_time,             ad_url,             ad_link,             ad_status )           values ( ?,                          ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'ad_type\' doesn\'t have a default value\n; Field \'ad_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ad_type\' doesn\'t have a default value', '2024-06-05 20:10:54', '241');
INSERT INTO `sys_oper_log` VALUES ('151', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_ad', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:13:13', '254');
INSERT INTO `sys_oper_log` VALUES ('152', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-06-05 14:02:38\",\"dictId\":11,\"dictName\":\"广告类型\",\"dictType\":\"msh_ad_type\",\"params\":{},\"remark\":\"广告状态的描述字典\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:16:19', '196');
INSERT INTO `sys_oper_log` VALUES ('153', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"轮播图\",\"dictSort\":0,\"dictType\":\"msh_ad_status\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"会动的轮播图\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:16:57', '492');
INSERT INTO `sys_oper_log` VALUES ('154', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"弹窗\",\"dictSort\":1,\"dictType\":\"msh_ad_status\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"弹窗的广告\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:17:21', '181');
INSERT INTO `sys_oper_log` VALUES ('155', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"侧边广告\",\"dictSort\":2,\"dictType\":\"msh_ad_status\",\"dictValue\":\"2\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"侧边栏的广告\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:18:15', '167');
INSERT INTO `sys_oper_log` VALUES ('156', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ad\",\"className\":\"Ad\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"菜单id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:13:12\",\"usableColumn\":false},{\"capJavaField\":\"AdName\",\"columnComment\":\"广告名称\",\"columnId\":2,\"columnName\":\"ad_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:13:12\",\"usableColumn\":false},{\"capJavaField\":\"AdType\",\"columnComment\":\"广告类型\",\"columnId\":3,\"columnName\":\"ad_type\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"msh_ad_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:13:12\",\"usableColumn\":false},{\"capJavaField\":\"AdPosition\",\"columnComment\":\"广告位置\",\"columnId\":4,\"columnName\":\"ad_position\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:19:10', '216');
INSERT INTO `sys_oper_log` VALUES ('157', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"轮播图\",\"dictSort\":0,\"dictType\":\"msh_ad_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"remark\":\"轮播图广告\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:24:39', '197');
INSERT INTO `sys_oper_log` VALUES ('158', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"弹窗广告\",\"dictSort\":1,\"dictType\":\"msh_ad_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"弹窗广告\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:25:04', '164');
INSERT INTO `sys_oper_log` VALUES ('159', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-13\",\"adLink\":\"http://test.com\",\"adName\":\"测试广告123\",\"adPosition\":\"官网首页\",\"adStartTime\":\"2024-06-05\",\"adStatus\":0,\"adType\":\"0\",\"adUrl\":\"url://test\",\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'created_user_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ad\\AdMapper.xml]\r\n### The error may involve com.ruoyi.ad.mapper.AdMapper.insertAd-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_ad          ( ad_name,             ad_type,             ad_position,             ad_start_time,             ad_end_time,             ad_url,             ad_link,             ad_status )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'created_user_id\' doesn\'t have a default value\n; Field \'created_user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'created_user_id\' doesn\'t have a default value', '2024-06-05 20:26:29', '58');
INSERT INTO `sys_oper_log` VALUES ('160', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-07\",\"adName\":\"测试广告123\",\"adPosition\":\"小程序\",\"adStartTime\":\"2024-06-05\",\"adStatus\":0,\"adType\":\"0\",\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'ad_url\' doesn\'t have a default value\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ad\\AdMapper.xml]\r\n### The error may involve com.ruoyi.ad.mapper.AdMapper.insertAd-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_ad          ( ad_name,             ad_type,             ad_position,             ad_start_time,             ad_end_time,                                       ad_status )           values ( ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'ad_url\' doesn\'t have a default value\n; Field \'ad_url\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'ad_url\' doesn\'t have a default value', '2024-06-05 20:40:54', '3');
INSERT INTO `sys_oper_log` VALUES ('161', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-07\",\"adLink\":\"http://test\",\"adName\":\"测试广告123\",\"adPosition\":\"小程序\",\"adStartTime\":\"2024-06-05\",\"adStatus\":0,\"adType\":\"0\",\"adUrl\":\"url://ad\",\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'created_user_id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ad\\AdMapper.xml]\r\n### The error may involve com.ruoyi.ad.mapper.AdMapper.insertAd-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_ad          ( ad_name,             ad_type,             ad_position,             ad_start_time,             ad_end_time,             ad_url,             ad_link,             ad_status )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'created_user_id\' doesn\'t have a default value\n; Field \'created_user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'created_user_id\' doesn\'t have a default value', '2024-06-05 20:41:23', '4');
INSERT INTO `sys_oper_log` VALUES ('162', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"默认用户\",\"dictType\":\"msh_default_user\",\"params\":{},\"remark\":\"一些常用的默认用户\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:42:32', '175');
INSERT INTO `sys_oper_log` VALUES ('163', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"登录用户\",\"dictSort\":0,\"dictType\":\"msh_default_user\",\"dictValue\":\"admin\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:43:03', '233');
INSERT INTO `sys_oper_log` VALUES ('164', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ad\",\"className\":\"Ad\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"菜单id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:19:10\",\"usableColumn\":false},{\"capJavaField\":\"AdName\",\"columnComment\":\"广告名称\",\"columnId\":2,\"columnName\":\"ad_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:19:10\",\"usableColumn\":false},{\"capJavaField\":\"AdType\",\"columnComment\":\"广告类型\",\"columnId\":3,\"columnName\":\"ad_type\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"msh_ad_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:19:10\",\"usableColumn\":false},{\"capJavaField\":\"AdPosition\",\"columnComment\":\"广告位置\",\"columnId\":4,\"columnName\":\"ad_position\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:43:50', '262');
INSERT INTO `sys_oper_log` VALUES ('165', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ad\",\"className\":\"Ad\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"菜单id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:43:49\",\"usableColumn\":false},{\"capJavaField\":\"AdName\",\"columnComment\":\"广告名称\",\"columnId\":2,\"columnName\":\"ad_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:43:49\",\"usableColumn\":false},{\"capJavaField\":\"AdType\",\"columnComment\":\"广告类型\",\"columnId\":3,\"columnName\":\"ad_type\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"msh_ad_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:43:49\",\"usableColumn\":false},{\"capJavaField\":\"AdPosition\",\"columnComment\":\"广告位置\",\"columnId\":4,\"columnName\":\"ad_position\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:44:13', '369');
INSERT INTO `sys_oper_log` VALUES ('166', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ad\",\"className\":\"Ad\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"菜单id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:44:13\",\"usableColumn\":false},{\"capJavaField\":\"AdName\",\"columnComment\":\"广告名称\",\"columnId\":2,\"columnName\":\"ad_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:44:13\",\"usableColumn\":false},{\"capJavaField\":\"AdType\",\"columnComment\":\"广告类型\",\"columnId\":3,\"columnName\":\"ad_type\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"msh_ad_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:44:13\",\"usableColumn\":false},{\"capJavaField\":\"AdPosition\",\"columnComment\":\"广告位置\",\"columnId\":4,\"columnName\":\"ad_position\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 20:48:25', '279');
INSERT INTO `sys_oper_log` VALUES ('167', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-07\",\"adName\":\"测试广告123\",\"adPosition\":\"官网首页\",\"adStartTime\":\"2024-06-05\",\"adStatus\":0,\"adType\":\"1\",\"createdUserId\":\"张三\",\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'张三\' for column \'created_user_id\' at row 1\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ad\\AdMapper.xml]\r\n### The error may involve com.ruoyi.ad.mapper.AdMapper.insertAd-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_ad          ( ad_name,             ad_type,             ad_position,             ad_start_time,             ad_end_time,                                       ad_status,             created_user_id )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'张三\' for column \'created_user_id\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'张三\' for column \'created_user_id\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'张三\' for column \'created_user_id\' at row 1', '2024-06-05 21:00:37', '164');
INSERT INTO `sys_oper_log` VALUES ('168', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-07\",\"adName\":\"测试广告123\",\"adPosition\":\"官网首页\",\"adStartTime\":\"2024-06-05\",\"adStatus\":0,\"adType\":\"1\",\"createdUserId\":\"张三\",\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:01:47', '36');
INSERT INTO `sys_oper_log` VALUES ('169', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ad\",\"className\":\"Ad\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"菜单id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:48:24\",\"usableColumn\":false},{\"capJavaField\":\"AdName\",\"columnComment\":\"广告名称\",\"columnId\":2,\"columnName\":\"ad_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:48:24\",\"usableColumn\":false},{\"capJavaField\":\"AdType\",\"columnComment\":\"广告类型\",\"columnId\":3,\"columnName\":\"ad_type\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"msh_ad_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 20:48:24\",\"usableColumn\":false},{\"capJavaField\":\"AdPosition\",\"columnComment\":\"广告位置\",\"columnId\":4,\"columnName\":\"ad_position\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:02:33', '141');
INSERT INTO `sys_oper_log` VALUES ('170', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2020,2021,2022,2023,2024,2025,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,107,1035,1036,1037,1038,2001,2002,2006,2007,2003,2004,2005],\"params\":{},\"remark\":\"系统日常运营的维护管理\",\"roleId\":2,\"roleKey\":\"sys_role\",\"roleName\":\"后台管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:03:37', '192');
INSERT INTO `sys_oper_log` VALUES ('171', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"钱包类型\",\"dictType\":\"msh_wallet_type\",\"params\":{},\"remark\":\"钱包的类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:12:58', '54');
INSERT INTO `sys_oper_log` VALUES ('172', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"用户钱包\",\"dictSort\":0,\"dictType\":\"msh_wallet_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"remark\":\"这是用户总余额的默认钱包\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:13:34', '161');
INSERT INTO `sys_oper_log` VALUES ('173', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"店铺钱包\",\"dictSort\":1,\"dictType\":\"msh_wallet_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"单个店铺的总钱包\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:13:59', '152');
INSERT INTO `sys_oper_log` VALUES ('174', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"公司钱包\",\"dictSort\":2,\"dictType\":\"msh_wallet_type\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"remark\":\"公司的总余额钱包\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:14:25', '168');
INSERT INTO `sys_oper_log` VALUES ('175', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"wallet\",\"className\":\"MshWallet\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"\",\"columnId\":46,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WalletType\",\"columnComment\":\"钱包类型\",\"columnId\":47,\"columnName\":\"wallet_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:44\",\"dictType\":\"msh_wallet_type\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"walletType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WalletOwner\",\"columnComment\":\"钱包归属\",\"columnId\":48,\"columnName\":\"wallet_owner\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"walletOwner\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WalletBalance\",\"columnComment\":\"钱包余额\",\"columnId\":49,\"columnName\":\"wallet_balance\",\"columnType\":\"double(50,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:44\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:20:52', '184');
INSERT INTO `sys_oper_log` VALUES ('176', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_wallet\"}', null, '0', null, '2024-06-05 21:20:59', '91');
INSERT INTO `sys_oper_log` VALUES ('177', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshWallet/wallet/index\",\"createTime\":\"2024-06-05 21:21:28\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"店铺资产\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2004,\"path\":\"wallet\",\"perms\":\"mshWallet:wallet:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:24:19', '158');
INSERT INTO `sys_oper_log` VALUES ('178', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"明细状态\",\"dictType\":\"msh_finance_status\",\"params\":{},\"remark\":\"提现状态\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:27:07', '146');
INSERT INTO `sys_oper_log` VALUES ('179', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"提现中\",\"dictSort\":0,\"dictType\":\"msh_finance_status\",\"dictValue\":\"0\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:28:00', '117');
INSERT INTO `sys_oper_log` VALUES ('180', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"提现成功\",\"dictSort\":1,\"dictType\":\"msh_finance_status\",\"dictValue\":\"1\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:28:15', '166');
INSERT INTO `sys_oper_log` VALUES ('181', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"提现失败\",\"dictSort\":2,\"dictType\":\"msh_finance_status\",\"dictValue\":\"2\",\"listClass\":\"danger\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:28:32', '90');
INSERT INTO `sys_oper_log` VALUES ('182', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"明细类型\",\"dictType\":\"msh_finance_type\",\"params\":{},\"remark\":\"说明该条明细的类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:29:11', '49');
INSERT INTO `sys_oper_log` VALUES ('183', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"提现\",\"dictSort\":0,\"dictType\":\"msh_finance_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"remark\":\"这是一笔提现的钱\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:29:35', '55');
INSERT INTO `sys_oper_log` VALUES ('184', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"开支\",\"dictSort\":1,\"dictType\":\"msh_finance_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"这是一笔支出\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:29:56', '83');
INSERT INTO `sys_oper_log` VALUES ('185', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"收入\",\"dictSort\":2,\"dictType\":\"msh_finance_type\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"remark\":\"这是一笔收入\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:30:13', '354');
INSERT INTO `sys_oper_log` VALUES ('186', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"finance\",\"className\":\"MshFinance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":11,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FinanceAmount\",\"columnComment\":\"处理金额\",\"columnId\":12,\"columnName\":\"finance_amount\",\"columnType\":\"double(50,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"financeAmount\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FinanceType\",\"columnComment\":\"明细类型\",\"columnId\":13,\"columnName\":\"finance_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"msh_finance_type\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"financeType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FinanceStatus\",\"columnComment\":\"明细状态\",\"columnId\":14,\"columnName\":\"finance_status\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"msh_finance_status\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:32:17', '158');
INSERT INTO `sys_oper_log` VALUES ('187', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"finance\",\"className\":\"MshFinance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":11,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 21:32:17\",\"usableColumn\":false},{\"capJavaField\":\"FinanceAmount\",\"columnComment\":\"处理金额\",\"columnId\":12,\"columnName\":\"finance_amount\",\"columnType\":\"double(50,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"financeAmount\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 21:32:17\",\"usableColumn\":false},{\"capJavaField\":\"FinanceType\",\"columnComment\":\"明细类型\",\"columnId\":13,\"columnName\":\"finance_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"msh_finance_type\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"financeType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-05 21:32:17\",\"usableColumn\":false},{\"capJavaField\":\"FinanceStatus\",\"columnComment\":\"明细状态\",\"columnId\":14,\"columnName\":\"finance_status\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"msh_finance_status\",\"edit\":false,\"html', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:33:18', '224');
INSERT INTO `sys_oper_log` VALUES ('188', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_finance', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 21:51:22', '205');
INSERT INTO `sys_oper_log` VALUES ('189', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2004,2026,100,1000,1001,1002,1003,1004,1005,1006,2020,2021,2022,2023,2024,2025,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,107,1035,1036,1037,1038,2001,2002,2006,2007,2003,2027,2031,2005],\"params\":{},\"remark\":\"系统日常运营的维护管理\",\"roleId\":2,\"roleKey\":\"sys_role\",\"roleName\":\"后台管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 22:06:56', '131');
INSERT INTO `sys_oper_log` VALUES ('190', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', '1', 'admin', '研发部门', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-05 22:07:11', '280');
INSERT INTO `sys_oper_log` VALUES ('191', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'PUT', '1', 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":6}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 08:35:58', '48');
INSERT INTO `sys_oper_log` VALUES ('192', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_ad', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:26', '352');
INSERT INTO `sys_oper_log` VALUES ('193', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_finance', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:27', '211');
INSERT INTO `sys_oper_log` VALUES ('194', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_order', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:29', '229');
INSERT INTO `sys_oper_log` VALUES ('195', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_room', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:31', '189');
INSERT INTO `sys_oper_log` VALUES ('196', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_store', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:33', '204');
INSERT INTO `sys_oper_log` VALUES ('197', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_store_order', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:34', '191');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_store_room', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:36', '132');
INSERT INTO `sys_oper_log` VALUES ('199', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_user_finance', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:38', '202');
INSERT INTO `sys_oper_log` VALUES ('200', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_user_store', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:39', '189');
INSERT INTO `sys_oper_log` VALUES ('201', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_wallet', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:44:40', '206');
INSERT INTO `sys_oper_log` VALUES ('202', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"店铺类型\",\"dictType\":\"msh_store_type\",\"params\":{},\"remark\":\"店铺类型列表\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:45:57', '110');
INSERT INTO `sys_oper_log` VALUES ('203', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"直营店\",\"dictSort\":0,\"dictType\":\"msh_store_type\",\"dictValue\":\"0\",\"listClass\":\"info\",\"params\":{},\"remark\":\"直营店铺\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:46:49', '179');
INSERT INTO `sys_oper_log` VALUES ('204', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-06-06 11:46:49\",\"default\":false,\"dictCode\":45,\"dictLabel\":\"直营店\",\"dictSort\":0,\"dictType\":\"msh_store_type\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"直营店铺\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:46:55', '238');
INSERT INTO `sys_oper_log` VALUES ('205', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"加盟店\",\"dictSort\":1,\"dictType\":\"msh_store_type\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"加盟店铺，包括全加盟和半加盟\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:47:25', '204');
INSERT INTO `sys_oper_log` VALUES ('206', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"合资店\",\"dictSort\":2,\"dictType\":\"msh_store_type\",\"dictValue\":\"2\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"合资店铺\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:47:46', '189');
INSERT INTO `sys_oper_log` VALUES ('207', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshStore\",\"className\":\"MshStore\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"店铺ID\",\"columnId\":29,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:33\",\"usableColumn\":false},{\"capJavaField\":\"StoreName\",\"columnComment\":\"店铺名称\",\"columnId\":30,\"columnName\":\"store_name\",\"columnType\":\"varchar(150)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"storeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:33\",\"usableColumn\":false},{\"capJavaField\":\"StoreAddress\",\"columnComment\":\"店铺地址\",\"columnId\":31,\"columnName\":\"store_address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"storeAddress\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:33\",\"usableColumn\":false},{\"capJavaField\":\"StoreType\",\"columnComment\":\"店铺类型\",\"columnId\":32,\"columnName\":\"store_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"msh_store_type\",\"edit\":true,\"htmlType\":\"select\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:50:52', '237');
INSERT INTO `sys_oper_log` VALUES ('208', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_store\"}', null, '0', null, '2024-06-06 11:50:56', '438');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshStore/mshStore/index\",\"createTime\":\"2024-06-06 11:51:28\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2032,\"menuName\":\"店铺管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"path\":\"mshStore\",\"perms\":\"mshStore:mshStore:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:54:11', '153');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-06-04 16:33:31\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"房间管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2002,\"path\":\"roomList\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 11:54:48', '167');
INSERT INTO `sys_oper_log` VALUES ('211', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshStore\",\"className\":\"MshStore\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"店铺ID\",\"columnId\":29,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:50:52\",\"usableColumn\":false},{\"capJavaField\":\"StoreName\",\"columnComment\":\"店铺名称\",\"columnId\":30,\"columnName\":\"store_name\",\"columnType\":\"varchar(150)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"storeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:50:52\",\"usableColumn\":false},{\"capJavaField\":\"StoreAddress\",\"columnComment\":\"店铺地址\",\"columnId\":31,\"columnName\":\"store_address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"storeAddress\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:50:52\",\"usableColumn\":false},{\"capJavaField\":\"StoreType\",\"columnComment\":\"店铺类型\",\"columnId\":32,\"columnName\":\"store_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"msh_store_type\",\"edit\":true,\"htmlType\":\"select\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 15:04:27', '141');
INSERT INTO `sys_oper_log` VALUES ('212', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_room', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 15:12:49', '240');
INSERT INTO `sys_oper_log` VALUES ('213', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshRoom\",\"className\":\"MshRoom\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"房间ID\",\"columnId\":25,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 15:12:49\",\"usableColumn\":false},{\"capJavaField\":\"RoomName\",\"columnComment\":\"房间名称\",\"columnId\":26,\"columnName\":\"room_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"roomName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 15:12:49\",\"usableColumn\":false},{\"capJavaField\":\"RoomDescription\",\"columnComment\":\"房间描述\",\"columnId\":27,\"columnName\":\"room_description\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"roomDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 15:12:49\",\"usableColumn\":false},{\"capJavaField\":\"RoomPrice\",\"columnComment\":\"房间价格\",\"columnId\":28,\"columnName\":\"room_price\",\"columnType\":\"double(100,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"incre', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 15:15:10', '186');
INSERT INTO `sys_oper_log` VALUES ('214', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshRoom\",\"className\":\"MshRoom\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"房间ID\",\"columnId\":25,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 15:15:10\",\"usableColumn\":false},{\"capJavaField\":\"RoomName\",\"columnComment\":\"房间名称\",\"columnId\":26,\"columnName\":\"room_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"roomName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 15:15:10\",\"usableColumn\":false},{\"capJavaField\":\"RoomDescription\",\"columnComment\":\"房间描述\",\"columnId\":27,\"columnName\":\"room_description\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"roomDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 15:15:10\",\"usableColumn\":false},{\"capJavaField\":\"RoomPrice\",\"columnComment\":\"房间价格\",\"columnId\":28,\"columnName\":\"room_price\",\"columnType\":\"double(100,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"incr', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 15:16:43', '76');
INSERT INTO `sys_oper_log` VALUES ('215', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_room\"}', null, '0', null, '2024-06-06 15:16:47', '377');
INSERT INTO `sys_oper_log` VALUES ('216', '马上胡店铺', '1', 'com.ruoyi.mshStore.controller.MshStoreController.add()', 'POST', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":333,\"id\":1,\"mshUserStoreList\":[{\"params\":{},\"storeId\":1,\"userId\":333}],\"params\":{},\"storeAddress\":\"222\",\"storeName\":\"111\",\"storeType\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 16:17:47', '184');
INSERT INTO `sys_oper_log` VALUES ('217', '马上胡店铺', '1', 'com.ruoyi.mshStore.controller.MshStoreController.add()', 'POST', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":123123,\"id\":2,\"mshUserStoreList\":[{\"params\":{},\"storeId\":2,\"userId\":123123}],\"params\":{},\"storeAddress\":\"444\",\"storeName\":\"333\",\"storeType\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 19:03:13', '225');
INSERT INTO `sys_oper_log` VALUES ('218', '个人信息', '2', 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', '1', 'admin', '研发部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 19:11:00', '886');
INSERT INTO `sys_oper_log` VALUES ('219', '马上胡店铺', '3', 'com.ruoyi.mshStore.controller.MshStoreController.remove()', 'DELETE', '1', 'admin', '研发部门', '/mshStore/mshStore/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 19:16:08', '157');
INSERT INTO `sys_oper_log` VALUES ('220', '马上胡店铺', '1', 'com.ruoyi.mshStore.controller.MshStoreController.add()', 'POST', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":1,\"id\":3,\"mshUserStoreList\":[{\"params\":{},\"storeId\":3,\"userId\":1}],\"params\":{},\"storeAddress\":\"测试\",\"storeName\":\"测试\",\"storeType\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 19:36:01', '158');
INSERT INTO `sys_oper_log` VALUES ('221', '马上胡店铺', '1', 'com.ruoyi.mshStore.controller.MshStoreController.add()', 'POST', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":1,\"id\":4,\"mshUserStoreList\":[{\"params\":{},\"storeId\":4}],\"params\":{},\"storeAddress\":\"test01\",\"storeName\":\"test\",\"storeType\":0}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'user_id\' cannot be null\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshStore\\MshStoreMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_user_store( id, user_id, store_id) values                  ( ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'user_id\' cannot be null\n; Column \'user_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'user_id\' cannot be null', '2024-06-06 21:01:44', '427');
INSERT INTO `sys_oper_log` VALUES ('222', '马上胡店铺', '1', 'com.ruoyi.mshStore.controller.MshStoreController.add()', 'POST', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":1,\"id\":5,\"mshUserStoreList\":[{\"params\":{},\"storeId\":5}],\"params\":{},\"storeAddress\":\"1\",\"storeName\":\"1\",\"storeType\":0}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'user_id\' cannot be null\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshStore\\MshStoreMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_user_store( id, user_id, store_id) values                  ( ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'user_id\' cannot be null\n; Column \'user_id\' cannot be null; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'user_id\' cannot be null', '2024-06-06 21:05:16', '83');
INSERT INTO `sys_oper_log` VALUES ('223', '马上胡店铺', '1', 'com.ruoyi.mshStore.controller.MshStoreController.add()', 'POST', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":1,\"id\":6,\"mshUserStoreList\":[{\"params\":{},\"storeId\":6,\"userId\":1}],\"params\":{},\"storeAddress\":\"test01\",\"storeName\":\"test\",\"storeType\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:14:21', '300');
INSERT INTO `sys_oper_log` VALUES ('224', '马上胡店铺', '2', 'com.ruoyi.mshStore.controller.MshStoreController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":1,\"id\":1,\"mshUserStoreList\":[{\"id\":1,\"params\":{},\"storeId\":1,\"userId\":2}],\"params\":{},\"storeAddress\":\"222\",\"storeName\":\"111\",\"storeType\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:15:22', '162');
INSERT INTO `sys_oper_log` VALUES ('225', '马上胡店铺', '2', 'com.ruoyi.mshStore.controller.MshStoreController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":1,\"id\":6,\"mshUserStoreList\":[{\"id\":4,\"params\":{},\"storeId\":6,\"userId\":1}],\"params\":{},\"storeAddress\":\"test01\",\"storeName\":\"test\",\"storeType\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:15:33', '149');
INSERT INTO `sys_oper_log` VALUES ('226', '马上胡店铺', '3', 'com.ruoyi.mshStore.controller.MshStoreController.remove()', 'DELETE', '1', 'admin', '研发部门', '/mshStore/mshStore/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:32:11', '174');
INSERT INTO `sys_oper_log` VALUES ('227', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_ad', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:34:43', '440');
INSERT INTO `sys_oper_log` VALUES ('228', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"ad\",\"className\":\"Ad\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"菜单id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 21:34:43\",\"usableColumn\":false},{\"capJavaField\":\"AdName\",\"columnComment\":\"广告名称\",\"columnId\":2,\"columnName\":\"ad_name\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 21:34:43\",\"usableColumn\":false},{\"capJavaField\":\"AdType\",\"columnComment\":\"广告类型\",\"columnId\":3,\"columnName\":\"ad_type\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"msh_ad_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"adType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 21:34:43\",\"usableColumn\":false},{\"capJavaField\":\"AdPosition\",\"columnComment\":\"广告位置\",\"columnId\":4,\"columnName\":\"ad_position\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 11:54:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:35:53', '171');
INSERT INTO `sys_oper_log` VALUES ('229', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_ad\"}', null, '0', null, '2024-06-06 21:35:56', '689');
INSERT INTO `sys_oper_log` VALUES ('230', '广告管理', '1', 'com.ruoyi.ad.controller.AdController.add()', 'POST', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-27\",\"adName\":\"testad456\",\"adPosition\":\"banner\",\"adStartTime\":\"2024-06-06\",\"adStatus\":0,\"adType\":\"1\",\"createdUserId\":1,\"id\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:42:03', '171');
INSERT INTO `sys_oper_log` VALUES ('231', '广告管理', '2', 'com.ruoyi.ad.controller.AdController.edit()', 'PUT', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-07\",\"adName\":\"测试广告123\",\"adPosition\":\"官网首页\",\"adStartTime\":\"2024-06-05\",\"adStatus\":1,\"adType\":\"1\",\"createdUserId\":1,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:42:26', '606');
INSERT INTO `sys_oper_log` VALUES ('232', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_room\"}', null, '0', null, '2024-06-06 21:45:47', '117');
INSERT INTO `sys_oper_log` VALUES ('233', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_room', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:46:00', '661');
INSERT INTO `sys_oper_log` VALUES ('234', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshRoom\",\"className\":\"MshRoom\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"房间ID\",\"columnId\":25,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 21:45:59\",\"usableColumn\":false},{\"capJavaField\":\"RoomName\",\"columnComment\":\"房间名称\",\"columnId\":26,\"columnName\":\"room_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"roomName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 21:45:59\",\"usableColumn\":false},{\"capJavaField\":\"RoomDescription\",\"columnComment\":\"房间描述\",\"columnId\":27,\"columnName\":\"room_description\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"roomDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 21:45:59\",\"usableColumn\":false},{\"capJavaField\":\"RoomPrice\",\"columnComment\":\"房间单价/时\",\"columnId\":28,\"columnName\":\"room_price\",\"columnType\":\"double(100,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"in', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 21:49:10', '145');
INSERT INTO `sys_oper_log` VALUES ('235', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_room\"}', null, '0', null, '2024-06-06 21:49:14', '48');
INSERT INTO `sys_oper_log` VALUES ('236', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"mshStoreRoomList\":[{\"params\":{},\"storeId\":3}],\"params\":{},\"roomDescription\":\"这是一个测试的房间，有很多特色\",\"roomName\":\"测试房间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'store_name\' doesn\'t have a default value\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshRoom\\MshRoomMapper.xml]\r\n### The error may involve com.ruoyi.mshRoom.mapper.MshRoomMapper.insertMshRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_room          ( room_name,             room_description,             room_price,                          room_status )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'store_name\' doesn\'t have a default value\n; Field \'store_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'store_name\' doesn\'t have a default value', '2024-06-06 22:19:11', '17');
INSERT INTO `sys_oper_log` VALUES ('237', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"mshStoreRoomList\":[{\"params\":{},\"storeId\":3}],\"params\":{},\"roomDescription\":\"这是一个测试的房间，有很多特色\",\"roomName\":\"测试房间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'store_name\' doesn\'t have a default value\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshRoom\\MshRoomMapper.xml]\r\n### The error may involve com.ruoyi.mshRoom.mapper.MshRoomMapper.insertMshRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_room          ( room_name,             room_description,             room_price,                          room_status )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'store_name\' doesn\'t have a default value\n; Field \'store_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'store_name\' doesn\'t have a default value', '2024-06-06 22:20:41', '4');
INSERT INTO `sys_oper_log` VALUES ('238', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"mshStoreRoomList\":[{\"params\":{},\"storeId\":3}],\"params\":{},\"roomDescription\":\"这是一个测试的房间，有很多特色\",\"roomName\":\"测试房间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshRoom\\MshRoomMapper.xml]\r\n### The error may involve com.ruoyi.mshRoom.mapper.MshRoomMapper.insertMshRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_room          ( room_name,             room_description,             room_price,             store_name,             room_status )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2024-06-06 22:24:24', '16');
INSERT INTO `sys_oper_log` VALUES ('239', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"mshStoreRoomList\":[{\"params\":{},\"storeId\":3}],\"params\":{},\"roomDescription\":\"这是一个测试的房间，有很多特色\",\"roomName\":\"测试房间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshRoom\\MshRoomMapper.xml]\r\n### The error may involve com.ruoyi.mshRoom.mapper.MshRoomMapper.insertMshRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_room          ( room_name,             room_description,             room_price,             store_name,             room_status )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2024-06-06 22:24:33', '3');
INSERT INTO `sys_oper_log` VALUES ('240', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"mshStoreRoomList\":[{\"params\":{},\"storeId\":3}],\"params\":{},\"roomDescription\":\"这是一个测试的房间，有很多特色\",\"roomName\":\"测试房间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshRoom\\MshRoomMapper.xml]\r\n### The error may involve com.ruoyi.mshRoom.mapper.MshRoomMapper.insertMshRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_room          ( room_name,             room_description,             room_price,             store_name,             room_status )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2024-06-06 22:25:30', '3');
INSERT INTO `sys_oper_log` VALUES ('241', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"mshStoreRoomList\":[{\"params\":{},\"storeId\":3}],\"params\":{},\"roomDescription\":\"这是一个测试的房间，有很多特色\",\"roomName\":\"测试房间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshRoom\\MshRoomMapper.xml]\r\n### The error may involve com.ruoyi.mshRoom.mapper.MshRoomMapper.insertMshRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_room          ( room_name,             room_description,             room_price,             store_name,             room_status )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2024-06-06 22:26:01', '4');
INSERT INTO `sys_oper_log` VALUES ('242', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"mshStoreRoomList\":[{\"params\":{},\"storeId\":3}],\"params\":{},\"roomDescription\":\"这是一个测试的房间，有很多特色\",\"roomName\":\"测试房间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"\"}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'store_name\' doesn\'t have a default value\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshRoom\\MshRoomMapper.xml]\r\n### The error may involve com.ruoyi.mshRoom.mapper.MshRoomMapper.insertMshRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_room          ( room_name,             room_description,             room_price,                          room_status )           values ( ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'store_name\' doesn\'t have a default value\n; Field \'store_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'store_name\' doesn\'t have a default value', '2024-06-06 22:26:50', '18');
INSERT INTO `sys_oper_log` VALUES ('243', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":1,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":1,\"storeId\":3}],\"params\":{},\"roomDescription\":\"这是一个测试的房间，有很多特色\",\"roomName\":\"测试房间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:27:00', '215');
INSERT INTO `sys_oper_log` VALUES ('244', '广告管理', '2', 'com.ruoyi.ad.controller.AdController.edit()', 'PUT', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-07\",\"adName\":\"测试广告123\",\"adPosition\":\"官网首页\",\"adStartTime\":\"2024-06-05\",\"adStatus\":0,\"adType\":\"1\",\"createdUserId\":1,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:34:23', '271');
INSERT INTO `sys_oper_log` VALUES ('245', '广告管理', '2', 'com.ruoyi.ad.controller.AdController.edit()', 'PUT', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-27\",\"adName\":\"testad456\",\"adPosition\":\"banner\",\"adStartTime\":\"2024-06-06\",\"adStatus\":1,\"adType\":\"1\",\"createdUserId\":1,\"id\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:34:26', '31');
INSERT INTO `sys_oper_log` VALUES ('246', '马上胡店铺', '1', 'com.ruoyi.mshStore.controller.MshStoreController.add()', 'POST', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":1,\"id\":7,\"mshUserStoreList\":[{\"params\":{},\"storeId\":7,\"userId\":5}],\"params\":{},\"storeAddress\":\"测试地址那哪儿\",\"storeName\":\"测试店铺02\",\"storeType\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:35:21', '205');
INSERT INTO `sys_oper_log` VALUES ('247', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2038', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-06-06 22:47:52', '3');
INSERT INTO `sys_oper_log` VALUES ('248', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2039', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:47:59', '178');
INSERT INTO `sys_oper_log` VALUES ('249', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2040', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:48:03', '173');
INSERT INTO `sys_oper_log` VALUES ('250', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:48:07', '313');
INSERT INTO `sys_oper_log` VALUES ('251', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2042', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:48:10', '167');
INSERT INTO `sys_oper_log` VALUES ('252', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2043', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:48:13', '225');
INSERT INTO `sys_oper_log` VALUES ('253', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2038', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:48:16', '183');
INSERT INTO `sys_oper_log` VALUES ('254', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-06-06 22:48:20', '4');
INSERT INTO `sys_oper_log` VALUES ('255', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2024-06-06 22:49:25', '3');
INSERT INTO `sys_oper_log` VALUES ('256', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:27:16\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2001,2004],\"params\":{},\"remark\":\"合伙人角色\",\"roleId\":102,\"roleKey\":\"partner_role\",\"roleName\":\"合伙人\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:49:38', '114');
INSERT INTO `sys_oper_log` VALUES ('257', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:26:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2001,2004],\"params\":{},\"remark\":\"全加盟商用户\",\"roleId\":101,\"roleKey\":\"franchisee_role_full\",\"roleName\":\"全加盟商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:49:42', '620');
INSERT INTO `sys_oper_log` VALUES ('258', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:25:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2001,2004],\"params\":{},\"remark\":\"半加盟商用户\",\"roleId\":100,\"roleKey\":\"franchisee_role_half\",\"roleName\":\"半加盟商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:49:46', '109');
INSERT INTO `sys_oper_log` VALUES ('259', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2004,2026,100,1000,1001,1002,1003,1004,1005,1006,2020,2021,2022,2023,2024,2025,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,107,1035,1036,1037,1038,2001,2003,2027,2031,2005],\"params\":{},\"remark\":\"系统日常运营的维护管理\",\"roleId\":2,\"roleKey\":\"sys_role\",\"roleName\":\"后台管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:49:52', '302');
INSERT INTO `sys_oper_log` VALUES ('260', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:49:57', '124');
INSERT INTO `sys_oper_log` VALUES ('261', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshRoom/mshRoom/index\",\"createTime\":\"2024-06-06 22:50:22\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2044,\"menuName\":\"房间管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"path\":\"mshRoom\",\"perms\":\"mshRoom:mshRoom:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 22:50:55', '192');
INSERT INTO `sys_oper_log` VALUES ('262', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":2,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":2,\"storeId\":7}],\"params\":{},\"roomDescription\":\"tsets\",\"roomName\":\"test\",\"roomPrice\":9.99,\"roomStatus\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 23:03:33', '101');
INSERT INTO `sys_oper_log` VALUES ('263', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":3,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":3,\"storeId\":7}],\"params\":{},\"roomDescription\":\"1\",\"roomName\":\"1\",\"roomPrice\":1,\"roomStatus\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 23:08:06', '141');
INSERT INTO `sys_oper_log` VALUES ('264', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":4,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":4,\"storeId\":7}],\"params\":{},\"roomDescription\":\"2\",\"roomName\":\"2\",\"roomPrice\":3,\"roomStatus\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-06 23:24:56', '130');
INSERT INTO `sys_oper_log` VALUES ('265', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"msh_check_information\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:20:57', '219');
INSERT INTO `sys_oper_log` VALUES ('266', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"审核状态表\",\"dictType\":\"msh_check_status\",\"params\":{},\"remark\":\"审核状态表\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:22:45', '48');
INSERT INTO `sys_oper_log` VALUES ('267', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"审核中\",\"dictSort\":0,\"dictType\":\"msh_check_status\",\"dictValue\":\"0\",\"listClass\":\"warning\",\"params\":{},\"remark\":\"信息审核中\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:23:14', '167');
INSERT INTO `sys_oper_log` VALUES ('268', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"审核通过\",\"dictSort\":1,\"dictType\":\"msh_check_status\",\"dictValue\":\"1\",\"listClass\":\"success\",\"params\":{},\"remark\":\"审核成功\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:23:44', '146');
INSERT INTO `sys_oper_log` VALUES ('269', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"审核未通过\",\"dictSort\":2,\"dictType\":\"msh_check_status\",\"dictValue\":\"2\",\"listClass\":\"danger\",\"params\":{},\"remark\":\"审核失败\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:24:04', '155');
INSERT INTO `sys_oper_log` VALUES ('270', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"information\",\"className\":\"MshCheckInformation\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"审核记录id\",\"columnId\":59,\"columnName\":\"id\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CheckType\",\"columnComment\":\"审核类型\",\"columnId\":60,\"columnName\":\"check_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"checkType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CheckInfor\",\"columnComment\":\"审核信息\",\"columnId\":61,\"columnName\":\"check_infor\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"checkInfor\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CheckStatus\",\"columnComment\":\"审核状态\",\"columnId\":62,\"columnName\":\"check_status\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:24:34', '230');
INSERT INTO `sys_oper_log` VALUES ('271', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"information\",\"className\":\"MshCheckInformation\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"审核记录id\",\"columnId\":59,\"columnName\":\"id\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:24:33\",\"usableColumn\":false},{\"capJavaField\":\"CheckType\",\"columnComment\":\"审核类型\",\"columnId\":60,\"columnName\":\"check_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"checkType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:24:33\",\"usableColumn\":false},{\"capJavaField\":\"CheckInfor\",\"columnComment\":\"审核信息\",\"columnId\":61,\"columnName\":\"check_infor\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"checkInfor\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:24:33\",\"usableColumn\":false},{\"capJavaField\":\"CheckStatus\",\"columnComment\":\"审核状态\",\"columnId\":62,\"columnName\":\"check_status\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"msh_check_status\",\"edit\":true,\"ht', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:25:08', '351');
INSERT INTO `sys_oper_log` VALUES ('272', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_check_information\"}', null, '0', null, '2024-06-07 09:25:11', '426');
INSERT INTO `sys_oper_log` VALUES ('273', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"审核类型\",\"dictType\":\"msh_check_type\",\"params\":{},\"remark\":\"审核类型表\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:30:42', '195');
INSERT INTO `sys_oper_log` VALUES ('274', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"店铺审核\",\"dictSort\":0,\"dictType\":\"msh_check_type\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"店铺审核类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:31:02', '170');
INSERT INTO `sys_oper_log` VALUES ('275', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"加盟审核\",\"dictSort\":1,\"dictType\":\"msh_check_type\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"加盟审核类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:31:20', '176');
INSERT INTO `sys_oper_log` VALUES ('276', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"information\",\"className\":\"MshCheckInformation\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"审核记录id\",\"columnId\":59,\"columnName\":\"id\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:25:07\",\"usableColumn\":false},{\"capJavaField\":\"CheckType\",\"columnComment\":\"审核类型\",\"columnId\":60,\"columnName\":\"check_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"msh_check_type\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"checkType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:25:07\",\"usableColumn\":false},{\"capJavaField\":\"CheckInfor\",\"columnComment\":\"审核信息\",\"columnId\":61,\"columnName\":\"check_infor\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"checkInfor\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:25:07\",\"usableColumn\":false},{\"capJavaField\":\"CheckStatus\",\"columnComment\":\"审核状态\",\"columnId\":62,\"columnName\":\"check_status\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"msh_check_status\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:31:56', '196');
INSERT INTO `sys_oper_log` VALUES ('277', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"information\",\"className\":\"MshCheckInformation\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"审核记录id\",\"columnId\":59,\"columnName\":\"id\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:31:56\",\"usableColumn\":false},{\"capJavaField\":\"CheckType\",\"columnComment\":\"审核类型\",\"columnId\":60,\"columnName\":\"check_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"msh_check_type\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"checkType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:31:56\",\"usableColumn\":false},{\"capJavaField\":\"CheckInfor\",\"columnComment\":\"审核信息\",\"columnId\":61,\"columnName\":\"check_infor\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"checkInfor\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:31:56\",\"usableColumn\":false},{\"capJavaField\":\"CheckStatus\",\"columnComment\":\"审核状态\",\"columnId\":62,\"columnName\":\"check_status\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"msh_check_status\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:34:14', '165');
INSERT INTO `sys_oper_log` VALUES ('278', '开店审核', '2', 'com.ruoyi.mshInformation.controller.MshCheckInformationController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshInformation/information', '127.0.0.1', '内网IP', '{\"checkInfor\":\"加盟商XX申请添加店铺XXX位置在XXX\",\"checkStatus\":1,\"checkType\":0,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:40:28', '199');
INSERT INTO `sys_oper_log` VALUES ('279', '开店审核', '2', 'com.ruoyi.mshInformation.controller.MshCheckInformationController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshInformation/information', '127.0.0.1', '内网IP', '{\"checkInfor\":\"加盟商XX申请添加店铺XXX位置在XXX\",\"checkStatus\":1,\"checkType\":0,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:48:52', '102');
INSERT INTO `sys_oper_log` VALUES ('280', '开店审核', '2', 'com.ruoyi.mshInformation.controller.MshCheckInformationController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshInformation/information', '127.0.0.1', '内网IP', '{\"checkInfor\":\"加盟商XX申请添加店铺XXX位置在XXX\",\"checkStatus\":2,\"checkType\":0,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:49:29', '230');
INSERT INTO `sys_oper_log` VALUES ('281', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2007', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:50:07', '90');
INSERT INTO `sys_oper_log` VALUES ('282', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshInformation/information/index\",\"createTime\":\"2024-06-07 09:25:43\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2050,\"menuName\":\"开店审批\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2002,\"path\":\"information\",\"perms\":\"mshInformation:information:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:50:20', '186');
INSERT INTO `sys_oper_log` VALUES ('283', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshInformationF\",\"className\":\"MshCheckInformationF\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"审核记录id\",\"columnId\":59,\"columnName\":\"id\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:34:13\",\"usableColumn\":false},{\"capJavaField\":\"CheckType\",\"columnComment\":\"审核类型\",\"columnId\":60,\"columnName\":\"check_type\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"msh_check_type\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"checkType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:34:13\",\"usableColumn\":false},{\"capJavaField\":\"CheckInfor\",\"columnComment\":\"审核信息\",\"columnId\":61,\"columnName\":\"check_infor\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"checkInfor\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 09:34:13\",\"usableColumn\":false},{\"capJavaField\":\"CheckStatus\",\"columnComment\":\"审核状态\",\"columnId\":62,\"columnName\":\"check_status\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 09:20:57\",\"dictType\":\"msh_check_st', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:53:31', '208');
INSERT INTO `sys_oper_log` VALUES ('284', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_check_information\"}', null, '0', null, '2024-06-07 09:53:34', '86');
INSERT INTO `sys_oper_log` VALUES ('285', '加盟审核', '2', 'com.ruoyi.mshInformationF.controller.MshCheckInformationFController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshInformationF/mshInformationF', '127.0.0.1', '内网IP', '{\"checkInfor\":\"XXX联系方式XXX提交了加盟申请，加盟类型为全加盟商\",\"checkStatus\":1,\"checkType\":1,\"id\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:57:54', '202');
INSERT INTO `sys_oper_log` VALUES ('286', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshInformationF/mshInformationF/index\",\"createTime\":\"2024-06-07 09:54:07\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2056,\"menuName\":\"加盟审核\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2003,\"path\":\"mshInformationF\",\"perms\":\"mshInformationF:mshInformationF:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:58:36', '202');
INSERT INTO `sys_oper_log` VALUES ('287', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshInformationF/mshInformationF/index\",\"createTime\":\"2024-06-07 09:54:07\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2056,\"menuName\":\"加盟审批\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2003,\"path\":\"mshInformationF\",\"perms\":\"mshInformationF:mshInformationF:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 09:58:44', '183');
INSERT INTO `sys_oper_log` VALUES ('288', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_user\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 10:09:21', '240');
INSERT INTO `sys_oper_log` VALUES ('289', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshFranchisee/user/index\",\"createBy\":\"admin\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"加盟商管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2003,\"path\":\"mshFranchisee\",\"perms\":\"system:user.list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 10:55:38', '217');
INSERT INTO `sys_oper_log` VALUES ('290', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"加盟商查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2062,\"perms\":\"system.user.query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 10:56:25', '184');
INSERT INTO `sys_oper_log` VALUES ('291', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2062', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2024-06-07 11:13:32', '3');
INSERT INTO `sys_oper_log` VALUES ('292', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2063', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 11:13:36', '261');
INSERT INTO `sys_oper_log` VALUES ('293', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', '研发部门', '/system/menu/2062', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 11:13:40', '80');
INSERT INTO `sys_oper_log` VALUES ('294', '房间管理', '3', 'com.ruoyi.mshRoom.controller.MshRoomController.remove()', 'DELETE', '1', 'admin', '研发部门', '/mshRoom/mshRoom/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 11:41:19', '206');
INSERT INTO `sys_oper_log` VALUES ('295', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":5,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":5,\"storeId\":3}],\"params\":{},\"roomDescription\":\"231\",\"roomName\":\"test1\",\"roomPrice\":11,\"roomStatus\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 11:56:52', '208');
INSERT INTO `sys_oper_log` VALUES ('296', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"franchiseeUser\",\"className\":\"FranchiseeUser\",\"columns\":[{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":63,\"columnName\":\"user_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 10:09:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeptId\",\"columnComment\":\"部门ID\",\"columnId\":64,\"columnName\":\"dept_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 10:09:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"deptId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserName\",\"columnComment\":\"用户账号\",\"columnId\":65,\"columnName\":\"user_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 10:09:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NickName\",\"columnComment\":\"用户昵称\",\"columnId\":66,\"columnName\":\"nick_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-07 10:09:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQue', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:16:42', '340');
INSERT INTO `sys_oper_log` VALUES ('297', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_user\"}', null, '0', null, '2024-06-07 14:19:12', '62');
INSERT INTO `sys_oper_log` VALUES ('298', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"franchiseeUser/franchiseeUser/index\",\"createTime\":\"2024-06-07 14:19:33\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2064,\"menuName\":\"加盟商管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2003,\"path\":\"franchiseeUser\",\"perms\":\"franchiseeUser:franchiseeUser:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:24:35', '207');
INSERT INTO `sys_oper_log` VALUES ('299', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"finance\",\"className\":\"MshFinance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"明细ID\",\"columnId\":11,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:27\",\"usableColumn\":false},{\"capJavaField\":\"FinanceAmount\",\"columnComment\":\"处理金额\",\"columnId\":12,\"columnName\":\"finance_amount\",\"columnType\":\"double(50,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"financeAmount\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:27\",\"usableColumn\":false},{\"capJavaField\":\"FinanceBankName\",\"columnComment\":\"明细银行名称\",\"columnId\":53,\"columnName\":\"finance_bank_name\",\"columnType\":\"varchar(150)\",\"createBy\":\"\",\"createTime\":\"2024-06-05 21:51:22\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"financeBankName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:27\",\"usableColumn\":false},{\"capJavaField\":\"FinanceBankAccount\",\"columnComment\":\"明细银行账户\",\"columnId\":54,\"columnName\":\"finance_bank_account\",\"columnType\":\"varchar(150)\",\"createBy\":\"\",\"createTime\":\"2024-06-05 21:51:22\",\"dictType', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:47:23', '336');
INSERT INTO `sys_oper_log` VALUES ('300', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshOrder\",\"className\":\"MshOrder\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"订单ID\",\"columnId\":17,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:29\",\"usableColumn\":false},{\"capJavaField\":\"OrderType\",\"columnComment\":\"订单类型\",\"columnId\":18,\"columnName\":\"order_type\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"orderType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:29\",\"usableColumn\":false},{\"capJavaField\":\"OrderDuration\",\"columnComment\":\"订单时长\",\"columnId\":19,\"columnName\":\"order_duration\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"orderDuration\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-06 11:44:29\",\"usableColumn\":false},{\"capJavaField\":\"OrderEarned\",\"columnComment\":\"订单收入\",\"columnId\":20,\"columnName\":\"order_earned\",\"columnType\":\"double(30,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":fal', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:48:17', '101');
INSERT INTO `sys_oper_log` VALUES ('301', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"订单来源\",\"dictType\":\"msh_order_source\",\"params\":{},\"remark\":\"订单的产生来源\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:48:55', '184');
INSERT INTO `sys_oper_log` VALUES ('302', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"小程序订单\",\"dictSort\":0,\"dictType\":\"msh_order_source\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"小程序用户下单\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:49:28', '215');
INSERT INTO `sys_oper_log` VALUES ('303', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"门店订单\",\"dictSort\":1,\"dictType\":\"msh_order_source\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"门店下单\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:50:00', '172');
INSERT INTO `sys_oper_log` VALUES ('304', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"美团订单\",\"dictSort\":2,\"dictType\":\"msh_order_source\",\"dictValue\":\"2\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"美团团购下单\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:50:19', '175');
INSERT INTO `sys_oper_log` VALUES ('305', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"抖音订单\",\"dictSort\":3,\"dictType\":\"msh_order_source\",\"dictValue\":\"3\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"抖音团购下单\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:51:34', '210');
INSERT INTO `sys_oper_log` VALUES ('306', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"其他订单\",\"dictSort\":4,\"dictType\":\"msh_order_source\",\"dictValue\":\"4\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"其他途径下单\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:52:12', '157');
INSERT INTO `sys_oper_log` VALUES ('307', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"订单类型\",\"dictType\":\"msh_order_type\",\"params\":{},\"remark\":\"订单的具体类型\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:52:53', '203');
INSERT INTO `sys_oper_log` VALUES ('308', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"收入订单\",\"dictSort\":0,\"dictType\":\"msh_order_type\",\"dictValue\":\"0\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"该订单类型为产生的下单收入\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:53:49', '155');
INSERT INTO `sys_oper_log` VALUES ('309', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"服务费支出订单\",\"dictSort\":1,\"dictType\":\"msh_order_type\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"该订单为产生的服务费支出订单\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:54:24', '178');
INSERT INTO `sys_oper_log` VALUES ('310', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"服务费收入订单\",\"dictSort\":2,\"dictType\":\"msh_order_type\",\"dictValue\":\"2\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"该笔订单为服务费支出订单\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:54:49', '160');
INSERT INTO `sys_oper_log` VALUES ('311', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"分账支出订单\",\"dictSort\":3,\"dictType\":\"msh_order_type\",\"dictValue\":\"3\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"该笔订单为分账订单支出\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:55:31', '148');
INSERT INTO `sys_oper_log` VALUES ('312', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-06-07 14:53:49\",\"default\":false,\"dictCode\":58,\"dictLabel\":\"一般收入订单\",\"dictSort\":0,\"dictType\":\"msh_order_type\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"该订单类型为产生的下单收入\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:55:41', '194');
INSERT INTO `sys_oper_log` VALUES ('313', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"分账收入订单\",\"dictSort\":4,\"dictType\":\"msh_order_type\",\"dictValue\":\"4\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"该笔订单为分账收入订单\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:56:13', '171');
INSERT INTO `sys_oper_log` VALUES ('314', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshOrder\",\"className\":\"MshOrder\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"订单ID\",\"columnId\":17,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 14:48:17\",\"usableColumn\":false},{\"capJavaField\":\"OrderType\",\"columnComment\":\"订单类型\",\"columnId\":18,\"columnName\":\"order_type\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"msh_order_type\",\"edit\":false,\"htmlType\":\"select\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"orderType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 14:48:17\",\"usableColumn\":false},{\"capJavaField\":\"OrderDuration\",\"columnComment\":\"订单时长\",\"columnId\":19,\"columnName\":\"order_duration\",\"columnType\":\"int(20)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"orderDuration\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 14:48:17\",\"usableColumn\":false},{\"capJavaField\":\"OrderEarned\",\"columnComment\":\"订单收入\",\"columnId\":20,\"columnName\":\"order_earned\",\"columnType\":\"double(30,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 14:58:44', '177');
INSERT INTO `sys_oper_log` VALUES ('315', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_order\"}', null, '0', null, '2024-06-07 14:59:05', '112');
INSERT INTO `sys_oper_log` VALUES ('316', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshOrder/mshOrder/index\",\"createTime\":\"2024-06-07 14:59:34\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2070,\"menuName\":\"订单明细\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"mshOrder\",\"perms\":\"mshOrder:mshOrder:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 17:23:52', '216');
INSERT INTO `sys_oper_log` VALUES ('317', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"mshStoreRoomList\":[{\"params\":{},\"storeId\":3}],\"params\":{},\"roomDescription\":\"房间内有冰箱彩电洗衣机\",\"roomName\":\"豪华大包间A（测试）\",\"roomPrice\":99.99,\"roomStatus\":0,\"storeName\":\"测试\"}', null, '1', 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.UnsupportedOperationException\r\n### The error may exist in file [E:\\学校作业\\本科大一下半学期\\实训\\MaShangHu_24H_SelfServiceChessRoom_ManagementSystem\\ruoyi-admin\\target\\classes\\mapper\\mshRoom\\MshRoomMapper.xml]\r\n### The error may involve com.ruoyi.mshRoom.mapper.MshRoomMapper.insertMshRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into msh_room          ( room_name,             room_description,             room_price,             store_name,             room_status )           values ( ?,             ?,             ?,                          (select store_name             from msh_store             where msh_store.id = ?             ),                          ? )\r\n### Cause: java.lang.UnsupportedOperationException', '2024-06-07 22:01:58', '71');
INSERT INTO `sys_oper_log` VALUES ('318', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":6,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":6,\"storeId\":3}],\"params\":{},\"roomDescription\":\"房间内有冰箱彩电洗衣机\",\"roomName\":\"豪华大包间A（测试）\",\"roomPrice\":99.99,\"roomStatus\":0,\"storeName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:03:22', '183');
INSERT INTO `sys_oper_log` VALUES ('319', '房间管理', '3', 'com.ruoyi.mshRoom.controller.MshRoomController.remove()', 'DELETE', '1', 'admin', '研发部门', '/mshRoom/mshRoom/2,3,4,5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:03:50', '217');
INSERT INTO `sys_oper_log` VALUES ('320', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":7,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":7,\"storeId\":7}],\"params\":{},\"roomDescription\":\"房间内有很多吃的\",\"roomName\":\"普通小包间\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"测试店铺02\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:04:19', '85');
INSERT INTO `sys_oper_log` VALUES ('321', '房间管理', '2', 'com.ruoyi.mshRoom.controller.MshRoomController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":7,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":7,\"storeId\":7}],\"params\":{},\"roomDescription\":\"房间内有很多吃的\",\"roomName\":\"普通小包间(测试）\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"测试店铺02\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:04:38', '95');
INSERT INTO `sys_oper_log` VALUES ('322', '房间管理', '2', 'com.ruoyi.mshRoom.controller.MshRoomController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":6,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":6,\"storeId\":7}],\"params\":{},\"roomDescription\":\"房间内有冰箱彩电洗衣机\",\"roomName\":\"豪华大包间A（测试）\",\"roomPrice\":99.99,\"roomStatus\":0,\"storeName\":\"测试店铺02\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:04:51', '168');
INSERT INTO `sys_oper_log` VALUES ('323', '房间管理', '2', 'com.ruoyi.mshRoom.controller.MshRoomController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":6,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":6,\"storeId\":3}],\"params\":{},\"roomDescription\":\"房间内有冰箱彩电洗衣机\",\"roomName\":\"豪华大包间A（测试）\",\"roomPrice\":99.99,\"roomStatus\":0,\"storeName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:05:04', '184');
INSERT INTO `sys_oper_log` VALUES ('324', '房间管理', '2', 'com.ruoyi.mshRoom.controller.MshRoomController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":7,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":7,\"storeId\":6}],\"params\":{},\"roomDescription\":\"房间内有很多吃的\",\"roomName\":\"普通小包间(测试）\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:06:12', '102');
INSERT INTO `sys_oper_log` VALUES ('325', '房间管理', '2', 'com.ruoyi.mshRoom.controller.MshRoomController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":6,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":6,\"storeId\":3}],\"params\":{},\"roomDescription\":\"房间内有冰箱彩电洗衣机\",\"roomName\":\"豪华大包间A（测试）\",\"roomPrice\":99.99,\"roomStatus\":0,\"storeName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:06:30', '253');
INSERT INTO `sys_oper_log` VALUES ('326', '房间管理', '2', 'com.ruoyi.mshRoom.controller.MshRoomController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":7,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":7,\"storeId\":3}],\"params\":{},\"roomDescription\":\"房间内有很多吃的\",\"roomName\":\"普通小包间(测试）\",\"roomPrice\":9.99,\"roomStatus\":0,\"storeName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:06:50', '199');
INSERT INTO `sys_oper_log` VALUES ('327', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2020,2021,2022,2023,2024,2025,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,107,1035,1036,1037,1038,2001,2070,2071,2072,2073,2074,2075,2002,2032,2033,2034,2035,2036,2037,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2003,2004,2026,2027,2028,2029,2030,2031,2005],\"params\":{},\"remark\":\"系统日常运营的维护管理\",\"roleId\":2,\"roleKey\":\"sys_role\",\"roleName\":\"后台管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-07 22:34:02', '121');
INSERT INTO `sys_oper_log` VALUES ('328', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"finance\",\"className\":\"MshFinance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"明细ID\",\"columnId\":11,\"columnName\":\"id\",\"columnType\":\"int(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 14:47:23\",\"usableColumn\":false},{\"capJavaField\":\"FinanceAmount\",\"columnComment\":\"处理金额\",\"columnId\":12,\"columnName\":\"finance_amount\",\"columnType\":\"double(50,2)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-05 20:03:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"financeAmount\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 14:47:23\",\"usableColumn\":false},{\"capJavaField\":\"FinanceBankName\",\"columnComment\":\"明细银行名称\",\"columnId\":53,\"columnName\":\"finance_bank_name\",\"columnType\":\"varchar(150)\",\"createBy\":\"\",\"createTime\":\"2024-06-05 21:51:22\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"financeBankName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-06-07 14:47:23\",\"usableColumn\":false},{\"capJavaField\":\"FinanceBankAccount\",\"columnComment\":\"明细银行账户\",\"columnId\":54,\"columnName\":\"finance_bank_account\",\"columnType\":\"varchar(150)\",\"createBy\":\"\",\"createTime\":\"2024-06-05 21:51:22\",\"dictType\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:19:04', '188');
INSERT INTO `sys_oper_log` VALUES ('329', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_finance\"}', null, '0', null, '2024-06-08 15:24:42', '154');
INSERT INTO `sys_oper_log` VALUES ('330', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"finance/finance/index\",\"createTime\":\"2024-06-08 15:25:14\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2076,\"menuName\":\"财务明细\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2004,\"path\":\"finance\",\"perms\":\"finance:finance:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:32:02', '93');
INSERT INTO `sys_oper_log` VALUES ('331', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"msh_opportunity\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:51:16', '335');
INSERT INTO `sys_oper_log` VALUES ('332', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"商机状态\",\"dictType\":\"msh_opportunity_status\",\"params\":{},\"remark\":\"商业机会的投资状态\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:53:47', '130');
INSERT INTO `sys_oper_log` VALUES ('333', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"招商中\",\"dictSort\":0,\"dictType\":\"msh_opportunity_status\",\"dictValue\":\"0\",\"listClass\":\"success\",\"params\":{},\"remark\":\"招商中，还可以投资\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:54:30', '598');
INSERT INTO `sys_oper_log` VALUES ('334', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"招商截至\",\"dictSort\":1,\"dictType\":\"msh_opportunity_status\",\"dictValue\":\"1\",\"listClass\":\"danger\",\"params\":{},\"remark\":\"招商截至，停止投资\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:55:04', '360');
INSERT INTO `sys_oper_log` VALUES ('335', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"即将截止\",\"dictSort\":2,\"dictType\":\"msh_opportunity_status\",\"dictValue\":\"2\",\"listClass\":\"warning\",\"params\":{},\"remark\":\"即将截止投资\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:55:27', '485');
INSERT INTO `sys_oper_log` VALUES ('336', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', '研发部门', '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"筹备中\",\"dictSort\":3,\"dictType\":\"msh_opportunity_status\",\"dictValue\":\"3\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"未开放投资但是可以预览\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:55:53', '277');
INSERT INTO `sys_oper_log` VALUES ('337', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/msh_opportunity', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:56:13', '149');
INSERT INTO `sys_oper_log` VALUES ('338', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"mshOpportunity\",\"className\":\"MshOpportunity\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"商机ID\",\"columnId\":83,\"columnName\":\"id\",\"columnType\":\"bigint(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-08 15:51:16\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-08 15:56:13\",\"usableColumn\":false},{\"capJavaField\":\"OpportunityDescription\",\"columnComment\":\"商机描述\",\"columnId\":84,\"columnName\":\"opportunity_description\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-08 15:51:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"opportunityDescription\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-08 15:56:13\",\"usableColumn\":false},{\"capJavaField\":\"OpportunityBudget\",\"columnComment\":\"投资预算\",\"columnId\":85,\"columnName\":\"opportunity_budget\",\"columnType\":\"double(20,0)\",\"createBy\":\"admin\",\"createTime\":\"2024-06-08 15:51:16\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"opportunityBudget\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"updateTime\":\"2024-06-08 15:56:13\",\"usableColumn\":false},{\"capJavaField\":\"OpportunityMaxMembers\",\"columnComment\":\"最大投资人数\",\"columnId\":89,\"columnName\":\"opportunity_max_members\",\"columnType\":\"int(20)\",\"createBy\":\"\",\"c', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:57:40', '77');
INSERT INTO `sys_oper_log` VALUES ('339', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"msh_opportunity\"}', null, '0', null, '2024-06-08 15:57:43', '57');
INSERT INTO `sys_oper_log` VALUES ('340', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"mshOpportunity/mshOpportunity/index\",\"createTime\":\"2024-06-08 15:58:05\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2082,\"menuName\":\"商机管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2005,\"path\":\"mshOpportunity\",\"perms\":\"mshOpportunity:mshOpportunity:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 15:59:30', '91');
INSERT INTO `sys_oper_log` VALUES ('341', '商机管理', '1', 'com.ruoyi.mshOpportunity.controller.MshOpportunityController.add()', 'POST', '1', 'admin', '研发部门', '/mshOpportunity/mshOpportunity', '127.0.0.1', '内网IP', '{\"id\":1,\"opportunityBudget\":99999,\"opportunityDescription\":\"位置在测试一些测试一些数据\",\"opportunityEndTime\":\"2024-06-30\",\"opportunityMaxMembers\":5,\"opportunityStatus\":3,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 16:00:29', '287');
INSERT INTO `sys_oper_log` VALUES ('342', '商机管理', '2', 'com.ruoyi.mshOpportunity.controller.MshOpportunityController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshOpportunity/mshOpportunity', '127.0.0.1', '内网IP', '{\"id\":1,\"opportunityBudget\":99999,\"opportunityDescription\":\"位置在测试一些测试一些数据\",\"opportunityEndTime\":\"2024-06-30\",\"opportunityMaxMembers\":5,\"opportunityStatus\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 16:00:44', '147');
INSERT INTO `sys_oper_log` VALUES ('343', '商机管理', '2', 'com.ruoyi.mshOpportunity.controller.MshOpportunityController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshOpportunity/mshOpportunity', '127.0.0.1', '内网IP', '{\"id\":1,\"opportunityBudget\":99999,\"opportunityDescription\":\"位置在测试一些测试一些数据\",\"opportunityEndTime\":\"2024-06-30\",\"opportunityMaxMembers\":5,\"opportunityStatus\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 16:00:48', '125');
INSERT INTO `sys_oper_log` VALUES ('344', '商机管理', '2', 'com.ruoyi.mshOpportunity.controller.MshOpportunityController.edit()', 'PUT', '1', 'admin', '研发部门', '/mshOpportunity/mshOpportunity', '127.0.0.1', '内网IP', '{\"id\":1,\"opportunityBudget\":99999,\"opportunityDescription\":\"位置在测试一些测试一些数据\",\"opportunityEndTime\":\"2024-06-30\",\"opportunityMaxMembers\":5,\"opportunityStatus\":3,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 16:00:52', '343');
INSERT INTO `sys_oper_log` VALUES ('345', '商机管理', '1', 'com.ruoyi.mshOpportunity.controller.MshOpportunityController.add()', 'POST', '1', 'admin', '研发部门', '/mshOpportunity/mshOpportunity', '127.0.0.1', '内网IP', '{\"id\":2,\"opportunityBudget\":500000,\"opportunityDescription\":\"这里增加了一些新的测试数据\",\"opportunityEndTime\":\"2024-06-24\",\"opportunityMaxMembers\":1,\"opportunityStatus\":0,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-08 16:01:15', '83');
INSERT INTO `sys_oper_log` VALUES ('346', '广告管理', '2', 'com.ruoyi.ad.controller.AdController.edit()', 'PUT', '1', 'admin', '研发部门', '/ad/ad', '127.0.0.1', '内网IP', '{\"adEndTime\":\"2024-06-07\",\"adLink\":\"https://58.123.123.10:25800/jump/ad1\",\"adName\":\"测试广告123\",\"adPosition\":\"官网首页\",\"adStartTime\":\"2024-06-05\",\"adStatus\":0,\"adType\":\"1\",\"adUrl\":\"url://testpath/file\",\"createdUserId\":1,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 15:15:12', '168');
INSERT INTO `sys_oper_log` VALUES ('347', '马上胡店铺', '1', 'com.ruoyi.mshStore.controller.MshStoreController.add()', 'POST', '1', 'admin', '研发部门', '/mshStore/mshStore', '127.0.0.1', '内网IP', '{\"createdUserId\":1,\"id\":8,\"mshUserStoreList\":[{\"params\":{},\"storeId\":8,\"userId\":2}],\"params\":{},\"storeAddress\":\"呼和浩特市和林格尔县盛乐经济园区内师大大数据楼301\",\"storeName\":\"麻尚胡共享茶舍（师大1店）\",\"storeType\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 15:21:37', '755');
INSERT INTO `sys_oper_log` VALUES ('348', '房间管理', '1', 'com.ruoyi.mshRoom.controller.MshRoomController.add()', 'POST', '1', 'admin', '研发部门', '/mshRoom/mshRoom', '127.0.0.1', '内网IP', '{\"id\":8,\"mshStoreRoomList\":[{\"params\":{},\"roomId\":8,\"storeId\":8}],\"params\":{},\"roomDescription\":\"四人包间，可用空调\",\"roomName\":\"风尚典雅\",\"roomPrice\":6.99,\"roomStatus\":0,\"storeName\":\"麻尚胡共享茶舍（师大1店）\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 15:23:03', '615');
INSERT INTO `sys_oper_log` VALUES ('349', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/config', '127.0.0.1', '内网IP', '{\"configId\":1,\"configKey\":\"sys.index.skinName\",\"configName\":\"主框架页-默认皮肤样式名称\",\"configType\":\"Y\",\"configValue\":\"skin-green\",\"createBy\":\"admin\",\"createTime\":\"2024-06-04 15:18:20\",\"params\":{},\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 18:19:35', '132');
INSERT INTO `sys_oper_log` VALUES ('350', '参数管理', '9', 'com.ruoyi.web.controller.system.SysConfigController.refreshCache()', 'DELETE', '1', 'admin', '研发部门', '/system/config/refreshCache', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 18:19:46', '75');
INSERT INTO `sys_oper_log` VALUES ('351', '财务明细', '2', 'com.ruoyi.finance.controller.MshFinanceController.edit()', 'PUT', '1', 'admin', '研发部门', '/finance/finance', '127.0.0.1', '内网IP', '{\"financeAmount\":500000,\"financeBankAccount\":\"622888888888888888\",\"financeBankName\":\"中国农业很行\",\"financeBankOwner\":\"张三\",\"financeCreatedTime\":\"2024-06-08\",\"financeStatus\":1,\"financeType\":0,\"id\":1,\"mshUserFinanceList\":[{\"financeId\":1,\"id\":1,\"params\":{},\"userId\":2}],\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 18:46:38', '270');
INSERT INTO `sys_oper_log` VALUES ('352', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 15:18:18\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2020,2021,2022,2023,2024,2025,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,107,1035,1036,1037,1038,2001,2070,2071,2072,2073,2074,2075,2002,2032,2033,2034,2035,2036,2037,2044,2045,2046,2047,2048,2049,2050,2051,2052,2053,2054,2055,2003,2056,2057,2058,2059,2060,2061,2064,2065,2066,2067,2068,2069,2004,2076,2077,2078,2079,2080,2081,2026,2027,2028,2029,2030,2031,2005,2082,2083,2084,2085,2086,2087],\"params\":{},\"remark\":\"系统日常运营的维护管理\",\"roleId\":2,\"roleKey\":\"sys_role\",\"roleName\":\"后台管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 21:53:10', '176');
INSERT INTO `sys_oper_log` VALUES ('353', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:25:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2001,2070,2071,2072,2073,2074,2075,2032,2033,2034,2035,2036,2037,2044,2045,2046,2047,2048,2049,2004,2076,2077,2078,2079,2080,2081,2026,2027,2028,2029,2030,2031],\"params\":{},\"remark\":\"半加盟商用户\",\"roleId\":100,\"roleKey\":\"franchisee_role_half\",\"roleName\":\"半加盟商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 21:53:32', '108');
INSERT INTO `sys_oper_log` VALUES ('354', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:26:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2001,2070,2071,2072,2073,2074,2075,2032,2033,2034,2035,2036,2037,2044,2045,2046,2047,2048,2049,2004,2076,2077,2078,2079,2080,2081,2026,2027,2028,2029,2030,2031],\"params\":{},\"remark\":\"全加盟商用户\",\"roleId\":101,\"roleKey\":\"franchisee_role_full\",\"roleName\":\"全加盟商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 21:53:46', '211');
INSERT INTO `sys_oper_log` VALUES ('355', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:27:16\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2001,2070,2002,2032,2044,2071,2075,2033,2037,2045,2049,2004,2076,2077,2078,2079,2080,2081,2026,2027,2028,2029,2030,2031],\"params\":{},\"remark\":\"合伙人角色\",\"roleId\":102,\"roleKey\":\"partner_role\",\"roleName\":\"合伙人\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 21:54:22', '508');
INSERT INTO `sys_oper_log` VALUES ('356', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-06-04 16:26:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2001,2070,2002,2071,2075,2032,2033,2034,2035,2036,2037,2044,2045,2046,2047,2048,2049,2004,2076,2077,2078,2079,2080,2081,2026,2027,2028,2029,2030,2031],\"params\":{},\"remark\":\"全加盟商用户\",\"roleId\":101,\"roleKey\":\"franchisee_role_full\",\"roleName\":\"全加盟商\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 21:54:40', '203');
INSERT INTO `sys_oper_log` VALUES ('357', '财务明细', '1', 'com.ruoyi.finance.controller.MshFinanceController.add()', 'POST', '1', 'test01', null, '/finance/finance', '127.0.0.1', '内网IP', '{\"financeAmount\":9999,\"financeBankAccount\":\"62228888888888888888\",\"financeBankName\":\"中国很行\",\"financeBankOwner\":\"顶真\",\"financeCreatedTime\":\"2024-06-10\",\"financeStatus\":0,\"financeType\":0,\"financeUpdatedTime\":\"2024-06-10\",\"id\":2,\"mshUserFinanceList\":[],\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2024-06-10 21:55:41', '176');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2024-06-04 15:18:18', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2024-06-04 15:18:18', '', null, '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2024-06-04 15:18:18', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '后台管理员', 'sys_role', '2', '2', '1', '1', '0', '0', 'admin', '2024-06-04 15:18:18', 'admin', '2024-06-10 21:53:10', '系统日常运营的维护管理');
INSERT INTO `sys_role` VALUES ('100', '半加盟商', 'franchisee_role_half', '3', '1', '1', '1', '0', '0', 'admin', '2024-06-04 16:25:35', 'admin', '2024-06-10 21:53:32', '半加盟商用户');
INSERT INTO `sys_role` VALUES ('101', '全加盟商', 'franchisee_role_full', '3', '1', '1', '1', '0', '0', 'admin', '2024-06-04 16:26:35', 'admin', '2024-06-10 21:54:39', '全加盟商用户');
INSERT INTO `sys_role` VALUES ('102', '合伙人', 'partner_role', '4', '1', '1', '1', '0', '0', 'admin', '2024-06-04 16:27:16', 'admin', '2024-06-10 21:54:21', '合伙人角色');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '2001');
INSERT INTO `sys_role_menu` VALUES ('2', '2002');
INSERT INTO `sys_role_menu` VALUES ('2', '2003');
INSERT INTO `sys_role_menu` VALUES ('2', '2004');
INSERT INTO `sys_role_menu` VALUES ('2', '2005');
INSERT INTO `sys_role_menu` VALUES ('2', '2020');
INSERT INTO `sys_role_menu` VALUES ('2', '2021');
INSERT INTO `sys_role_menu` VALUES ('2', '2022');
INSERT INTO `sys_role_menu` VALUES ('2', '2023');
INSERT INTO `sys_role_menu` VALUES ('2', '2024');
INSERT INTO `sys_role_menu` VALUES ('2', '2025');
INSERT INTO `sys_role_menu` VALUES ('2', '2026');
INSERT INTO `sys_role_menu` VALUES ('2', '2027');
INSERT INTO `sys_role_menu` VALUES ('2', '2028');
INSERT INTO `sys_role_menu` VALUES ('2', '2029');
INSERT INTO `sys_role_menu` VALUES ('2', '2030');
INSERT INTO `sys_role_menu` VALUES ('2', '2031');
INSERT INTO `sys_role_menu` VALUES ('2', '2032');
INSERT INTO `sys_role_menu` VALUES ('2', '2033');
INSERT INTO `sys_role_menu` VALUES ('2', '2034');
INSERT INTO `sys_role_menu` VALUES ('2', '2035');
INSERT INTO `sys_role_menu` VALUES ('2', '2036');
INSERT INTO `sys_role_menu` VALUES ('2', '2037');
INSERT INTO `sys_role_menu` VALUES ('2', '2044');
INSERT INTO `sys_role_menu` VALUES ('2', '2045');
INSERT INTO `sys_role_menu` VALUES ('2', '2046');
INSERT INTO `sys_role_menu` VALUES ('2', '2047');
INSERT INTO `sys_role_menu` VALUES ('2', '2048');
INSERT INTO `sys_role_menu` VALUES ('2', '2049');
INSERT INTO `sys_role_menu` VALUES ('2', '2050');
INSERT INTO `sys_role_menu` VALUES ('2', '2051');
INSERT INTO `sys_role_menu` VALUES ('2', '2052');
INSERT INTO `sys_role_menu` VALUES ('2', '2053');
INSERT INTO `sys_role_menu` VALUES ('2', '2054');
INSERT INTO `sys_role_menu` VALUES ('2', '2055');
INSERT INTO `sys_role_menu` VALUES ('2', '2056');
INSERT INTO `sys_role_menu` VALUES ('2', '2057');
INSERT INTO `sys_role_menu` VALUES ('2', '2058');
INSERT INTO `sys_role_menu` VALUES ('2', '2059');
INSERT INTO `sys_role_menu` VALUES ('2', '2060');
INSERT INTO `sys_role_menu` VALUES ('2', '2061');
INSERT INTO `sys_role_menu` VALUES ('2', '2064');
INSERT INTO `sys_role_menu` VALUES ('2', '2065');
INSERT INTO `sys_role_menu` VALUES ('2', '2066');
INSERT INTO `sys_role_menu` VALUES ('2', '2067');
INSERT INTO `sys_role_menu` VALUES ('2', '2068');
INSERT INTO `sys_role_menu` VALUES ('2', '2069');
INSERT INTO `sys_role_menu` VALUES ('2', '2070');
INSERT INTO `sys_role_menu` VALUES ('2', '2071');
INSERT INTO `sys_role_menu` VALUES ('2', '2072');
INSERT INTO `sys_role_menu` VALUES ('2', '2073');
INSERT INTO `sys_role_menu` VALUES ('2', '2074');
INSERT INTO `sys_role_menu` VALUES ('2', '2075');
INSERT INTO `sys_role_menu` VALUES ('2', '2076');
INSERT INTO `sys_role_menu` VALUES ('2', '2077');
INSERT INTO `sys_role_menu` VALUES ('2', '2078');
INSERT INTO `sys_role_menu` VALUES ('2', '2079');
INSERT INTO `sys_role_menu` VALUES ('2', '2080');
INSERT INTO `sys_role_menu` VALUES ('2', '2081');
INSERT INTO `sys_role_menu` VALUES ('2', '2082');
INSERT INTO `sys_role_menu` VALUES ('2', '2083');
INSERT INTO `sys_role_menu` VALUES ('2', '2084');
INSERT INTO `sys_role_menu` VALUES ('2', '2085');
INSERT INTO `sys_role_menu` VALUES ('2', '2086');
INSERT INTO `sys_role_menu` VALUES ('2', '2087');
INSERT INTO `sys_role_menu` VALUES ('100', '2001');
INSERT INTO `sys_role_menu` VALUES ('100', '2002');
INSERT INTO `sys_role_menu` VALUES ('100', '2004');
INSERT INTO `sys_role_menu` VALUES ('100', '2026');
INSERT INTO `sys_role_menu` VALUES ('100', '2027');
INSERT INTO `sys_role_menu` VALUES ('100', '2028');
INSERT INTO `sys_role_menu` VALUES ('100', '2029');
INSERT INTO `sys_role_menu` VALUES ('100', '2030');
INSERT INTO `sys_role_menu` VALUES ('100', '2031');
INSERT INTO `sys_role_menu` VALUES ('100', '2032');
INSERT INTO `sys_role_menu` VALUES ('100', '2033');
INSERT INTO `sys_role_menu` VALUES ('100', '2034');
INSERT INTO `sys_role_menu` VALUES ('100', '2035');
INSERT INTO `sys_role_menu` VALUES ('100', '2036');
INSERT INTO `sys_role_menu` VALUES ('100', '2037');
INSERT INTO `sys_role_menu` VALUES ('100', '2044');
INSERT INTO `sys_role_menu` VALUES ('100', '2045');
INSERT INTO `sys_role_menu` VALUES ('100', '2046');
INSERT INTO `sys_role_menu` VALUES ('100', '2047');
INSERT INTO `sys_role_menu` VALUES ('100', '2048');
INSERT INTO `sys_role_menu` VALUES ('100', '2049');
INSERT INTO `sys_role_menu` VALUES ('100', '2070');
INSERT INTO `sys_role_menu` VALUES ('100', '2071');
INSERT INTO `sys_role_menu` VALUES ('100', '2072');
INSERT INTO `sys_role_menu` VALUES ('100', '2073');
INSERT INTO `sys_role_menu` VALUES ('100', '2074');
INSERT INTO `sys_role_menu` VALUES ('100', '2075');
INSERT INTO `sys_role_menu` VALUES ('100', '2076');
INSERT INTO `sys_role_menu` VALUES ('100', '2077');
INSERT INTO `sys_role_menu` VALUES ('100', '2078');
INSERT INTO `sys_role_menu` VALUES ('100', '2079');
INSERT INTO `sys_role_menu` VALUES ('100', '2080');
INSERT INTO `sys_role_menu` VALUES ('100', '2081');
INSERT INTO `sys_role_menu` VALUES ('101', '2001');
INSERT INTO `sys_role_menu` VALUES ('101', '2002');
INSERT INTO `sys_role_menu` VALUES ('101', '2004');
INSERT INTO `sys_role_menu` VALUES ('101', '2026');
INSERT INTO `sys_role_menu` VALUES ('101', '2027');
INSERT INTO `sys_role_menu` VALUES ('101', '2028');
INSERT INTO `sys_role_menu` VALUES ('101', '2029');
INSERT INTO `sys_role_menu` VALUES ('101', '2030');
INSERT INTO `sys_role_menu` VALUES ('101', '2031');
INSERT INTO `sys_role_menu` VALUES ('101', '2032');
INSERT INTO `sys_role_menu` VALUES ('101', '2033');
INSERT INTO `sys_role_menu` VALUES ('101', '2034');
INSERT INTO `sys_role_menu` VALUES ('101', '2035');
INSERT INTO `sys_role_menu` VALUES ('101', '2036');
INSERT INTO `sys_role_menu` VALUES ('101', '2037');
INSERT INTO `sys_role_menu` VALUES ('101', '2044');
INSERT INTO `sys_role_menu` VALUES ('101', '2045');
INSERT INTO `sys_role_menu` VALUES ('101', '2046');
INSERT INTO `sys_role_menu` VALUES ('101', '2047');
INSERT INTO `sys_role_menu` VALUES ('101', '2048');
INSERT INTO `sys_role_menu` VALUES ('101', '2049');
INSERT INTO `sys_role_menu` VALUES ('101', '2070');
INSERT INTO `sys_role_menu` VALUES ('101', '2071');
INSERT INTO `sys_role_menu` VALUES ('101', '2075');
INSERT INTO `sys_role_menu` VALUES ('101', '2076');
INSERT INTO `sys_role_menu` VALUES ('101', '2077');
INSERT INTO `sys_role_menu` VALUES ('101', '2078');
INSERT INTO `sys_role_menu` VALUES ('101', '2079');
INSERT INTO `sys_role_menu` VALUES ('101', '2080');
INSERT INTO `sys_role_menu` VALUES ('101', '2081');
INSERT INTO `sys_role_menu` VALUES ('102', '2001');
INSERT INTO `sys_role_menu` VALUES ('102', '2002');
INSERT INTO `sys_role_menu` VALUES ('102', '2004');
INSERT INTO `sys_role_menu` VALUES ('102', '2026');
INSERT INTO `sys_role_menu` VALUES ('102', '2027');
INSERT INTO `sys_role_menu` VALUES ('102', '2028');
INSERT INTO `sys_role_menu` VALUES ('102', '2029');
INSERT INTO `sys_role_menu` VALUES ('102', '2030');
INSERT INTO `sys_role_menu` VALUES ('102', '2031');
INSERT INTO `sys_role_menu` VALUES ('102', '2032');
INSERT INTO `sys_role_menu` VALUES ('102', '2033');
INSERT INTO `sys_role_menu` VALUES ('102', '2037');
INSERT INTO `sys_role_menu` VALUES ('102', '2044');
INSERT INTO `sys_role_menu` VALUES ('102', '2045');
INSERT INTO `sys_role_menu` VALUES ('102', '2049');
INSERT INTO `sys_role_menu` VALUES ('102', '2070');
INSERT INTO `sys_role_menu` VALUES ('102', '2071');
INSERT INTO `sys_role_menu` VALUES ('102', '2075');
INSERT INTO `sys_role_menu` VALUES ('102', '2076');
INSERT INTO `sys_role_menu` VALUES ('102', '2077');
INSERT INTO `sys_role_menu` VALUES ('102', '2078');
INSERT INTO `sys_role_menu` VALUES ('102', '2079');
INSERT INTO `sys_role_menu` VALUES ('102', '2080');
INSERT INTO `sys_role_menu` VALUES ('102', '2081');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `role_name` varchar(30) DEFAULT NULL COMMENT '用户身份',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '顶真', '超级管理员', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$yo3puT5ZaRcvZFHf6zqK..0udK3x8jjXQrOFvQUeDqbpaO0dIdQHS', '0', '0', '127.0.0.1', '2024-06-10 22:01:50', 'admin', '2024-06-04 15:18:18', '', '2024-06-10 22:01:50', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '后台管理员', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$CNYvWfRiotxLqU5UW.KnxOsW2avG4tnnVOAe7QZXF1ugbN.sCEVce', '0', '0', '127.0.0.1', '2024-06-10 15:02:18', 'admin', '2024-06-04 15:18:18', 'admin', '2024-06-10 15:02:18', '测试员');
INSERT INTO `sys_user` VALUES ('3', null, 'testuser001', '测试用户1', '加盟商', '00', '', '13245677654', '0', '', '$2a$10$h7gbJrZDoBK2nc83N3a/J.ARIwgwtPLM4h3BOk65IyhO52ndF.E8q', '0', '2', '', null, 'admin', '2024-06-05 15:35:35', '', null, '这是一个测试用户');
INSERT INTO `sys_user` VALUES ('4', null, 'testuser02', '可可爱爱没有脑袋', null, '00', '', '15688999988', '0', '', '$2a$10$es3ZQNv7QVCNSRW5LEOD2.FJjyrWS0dfhxYhHJdNwjvSHqCEHFlue', '0', '0', '', null, 'admin', '2024-06-05 16:47:08', '', null, '测试用户2');
INSERT INTO `sys_user` VALUES ('5', null, 'test01', '莽莽撞撞没有屁股', null, '00', '', '13299999999', '2', '', '$2a$10$u7/LoKOxrjT9Ob58KhQTnO3XxnFDRHmIHpwwvttVW4jkbmBHzKKjO', '0', '0', '127.0.0.1', '2024-06-10 21:54:56', 'admin', '2024-06-05 16:51:35', '', '2024-06-10 21:54:56', '这是一个测试用户');
INSERT INTO `sys_user` VALUES ('6', null, 'test03', '小老弟', null, '00', '', '', '2', '', '$2a$10$xz1SpALcz0C0PFus71oYTuPwADR0H34JOo6FZwTMKreXLvvZA8V8S', '1', '0', '127.0.0.1', '2024-06-06 08:31:58', 'admin', '2024-06-05 20:02:30', 'admin', '2024-06-06 08:35:58', '测试的小老弟');

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('4', '102');
INSERT INTO `sys_user_role` VALUES ('5', '101');
INSERT INTO `sys_user_role` VALUES ('6', '100');
