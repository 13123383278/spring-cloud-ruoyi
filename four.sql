/*
 Navicat Premium Data Transfer

 Source Server         : windowFour
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : 47.121.136.238:3306
 Source Schema         : four

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 25/06/2024 17:47:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for f_animal_species
-- ----------------------------
DROP TABLE IF EXISTS `f_animal_species`;
CREATE TABLE `f_animal_species`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `species_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '动物种类名称',
  `scientific_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '物种学名',
  `classification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '分布区域',
  `habitat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '栖息地',
  `diet` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '食物习性',
  `average_lifespan` int NULL DEFAULT NULL COMMENT '平均寿命（年）',
  `is_endangered` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '是否濒危（0表示否，1表示是）',
  `conservation_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '保护状态（如：易危、濒危、极危等）',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '描述',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 560 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '动物种类基础表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of f_animal_species
-- ----------------------------
INSERT INTO `f_animal_species` VALUES (1, '狮子', 'Panthera leo', '哺乳动物', '草原、疏林', '肉食', 10, '0', '无危', '狮子是草原上的王者，属于猫科动物。', '2024-06-25 10:03:54', '2024-06-25 10:03:54');
INSERT INTO `f_animal_species` VALUES (2, '大熊猫', 'Ailuropoda melanoleuca', '哺乳动物', '森林', '竹', 20, '1', '易危', '大熊猫是中国的国宝，以竹子为主食。', '2024-06-25 10:03:54', '2024-06-25 10:03:54');

-- ----------------------------
-- Table structure for f_plant_species
-- ----------------------------
DROP TABLE IF EXISTS `f_plant_species`;
CREATE TABLE `f_plant_species`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `common_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '俗名或常用名',
  `scientific_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学名',
  `family` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '植物科',
  `genus` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '植物属',
  `habitat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生长地',
  `growth_habit` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生长习性（如：乔木、灌木、草本等）',
  `flowering_season` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '开花季节',
  `fruit_or_seed_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '果实或种子的描述',
  `is_endangered` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '是否濒危（0表示否，1表示是）',
  `conservation_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '保护状态（如：易危、濒危、极危等）',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '描述',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1019 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '植物种类基础表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of f_plant_species
-- ----------------------------
INSERT INTO `f_plant_species` VALUES (1, '玫瑰', 'Rosa rugosa', 'Rosaceae', 'Rosa', '温带地区', '灌木', '春夏', '果实为球形或梨形，内含种子。', '0', '无危', '玫瑰是一种常见的花卉，具有美丽的花朵和芳香。', '2024-06-25 10:16:43', '2024-06-25 10:16:43');
INSERT INTO `f_plant_species` VALUES (2, '银杏', 'Ginkgo biloba', 'Ginkgoaceae', 'Ginkgo', '温带和亚热带地区', '乔木', '春季', '种子为白色，形状类似于杏子。', '0', '无危', '银杏是一种古老的树种，以其扇形叶子和独特的果实而著名。', '2024-06-25 10:16:43', '2024-06-25 10:16:43');
INSERT INTO `f_plant_species` VALUES (3, '向日葵', 'Helianthus annuus', 'Asteraceae', 'Helianthus', '温带地区', '一年生草本', '夏季', '种子为黑色，常作为食品原料。', '0', '无危', '一种夏季开花的植物，以其大型黄色花朵和产油种子而知名。', '2024-06-25 10:30:22', '2024-06-25 10:30:45');
INSERT INTO `f_plant_species` VALUES (4, '樱花', 'Prunus serrulata', 'Rosaceae', 'Prunus', '温带地区', '乔木', '春季', '果实为红色或黑色，可食用。', '0', '无危', '一种春季开花的树木，以其粉色或白色的花朵而受欢迎。', '2024-06-25 10:30:22', '2024-06-25 10:30:49');
INSERT INTO `f_plant_species` VALUES (5, '仙人掌', 'Opuntia vulgaris', 'Cactaceae', 'Opuntia', '沙漠', '草本', '春夏', '果实为红色，含有种子。', '0', '无危', '一种肉质多浆的草本植物，具有耐旱性，常见于沙漠地区。', '2024-06-25 10:30:22', '2024-06-25 10:30:52');
INSERT INTO `f_plant_species` VALUES (6, '百合', 'Lilium candidum', 'Liliaceae', 'Lilium', '温带地区', '多年生草本', '春夏', '果实为蒴果，内含种子。', '0', '无危', '一种具有美丽白色花朵的多年生植物。', '2024-06-25 10:30:22', '2024-06-25 10:30:55');
INSERT INTO `f_plant_species` VALUES (7, '郁金香', 'Tulipa gesneriana', 'Liliaceae', 'Tulipa', '温带地区', '多年生草本', '春季', '种子细小，通常通过球根繁殖。', '0', '无危', '一种春季开花的球根植物，以其丰富的颜色和形态而著称。', '2024-06-25 10:30:22', '2024-06-25 10:30:59');
INSERT INTO `f_plant_species` VALUES (510, '兰花', 'Cymbidium sinensis', 'Orchidaceae', 'Cymbidium', '温带至热带地区', '附生或地生', '春夏秋', '种子细小，通常通过分株繁殖。', '0', '无危', '优雅的花卉，以其多样的花朵形状和香气而著称。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');
INSERT INTO `f_plant_species` VALUES (511, '竹子', 'Bambusa vulgaris', 'Poaceae', 'Bambusa', '热带至亚热带地区', '草本', '全年', '果实为颖果，不常见。', '0', '无危', '快速生长的草本植物，常用于建筑和家具。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');
INSERT INTO `f_plant_species` VALUES (512, '郁金香', 'Tulipa gesneriana', 'Liliaceae', 'Tulipa', '温带地区', '多年生草本', '春季', '种子细小，通常通过球根繁殖。', '0', '无危', '春季开花的球根植物，以其丰富的颜色和形态而著称。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');
INSERT INTO `f_plant_species` VALUES (513, '松树', 'Pinus sylvestris', 'Pinaceae', 'Pinus', '温带地区', '乔木', '春夏', '种子为松果内的松子。', '0', '无危', '常绿乔木，常见于温带地区，木材常用于建筑。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');
INSERT INTO `f_plant_species` VALUES (514, '橡树', 'Quercus robur', 'Fagaceae', 'Quercus', '温带地区', '乔木', '春夏', '果实为橡果。', '0', '无危', '大型乔木，以其硬木和长寿而知名。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');
INSERT INTO `f_plant_species` VALUES (515, '蒲公英', 'Taraxacum officinale', 'Asteraceae', 'Taraxacum', '温带地区', '多年生草本', '春夏秋', '种子为白色，具有绒毛，易于传播。', '0', '无危', '常见的野生植物，以其黄色花朵和随风飘散的种子而知名。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');
INSERT INTO `f_plant_species` VALUES (516, '薰衣草', 'Lavandula angustifolia', 'Lamiaceae', 'Lavandula', '温带地区', '多年生草本', '夏季', '种子细小，通常通过分株繁殖。', '0', '无危', '具有浓郁香气的草本植物，常用于制作香料和精油。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');
INSERT INTO `f_plant_species` VALUES (517, '薰衣草棉', 'Salvia splendens', 'Lamiaceae', 'Salvia', '温带地区', '多年生草本', '春夏秋', '种子细小，可通过播种繁殖。', '0', '无危', '美丽的花卉，以其鲜艳的花朵和长花期而受欢迎。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');
INSERT INTO `f_plant_species` VALUES (518, '马蹄莲', 'Zantedeschia aethiopica', 'Araceae', 'Zantedeschia', '温带地区', '多年生草本', '春夏', '种子不常见，通常通过分株繁殖。', '0', '无危', '具有独特形状花朵的多年生植物，常见于室内种植。', '2024-06-25 10:35:56', '2024-06-25 10:35:56');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名称',
  `table_comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '生成路径（不填默认项目路径）',
  `options` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '其它生成选项',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (10, 'f_animal_species', '动物种类基础表', '', '', 'FAnimalSpecies', 'crud', 'element-ui', 'com.ske.study', 'four', 'animalSpecies', '动物种类基础', 'four', '0', NULL, '{\"parentMenuId\":\"4\"}', 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:12', NULL);
INSERT INTO `gen_table` VALUES (11, 'f_plant_species', '植物种类基础表', '', '', 'FPlantSpecies', 'crud', 'element-ui', 'com.ske.study', 'four', 'plantSpecies', '植物种类基础', 'four', '0', NULL, '{\"parentMenuId\":4}', 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:37:59', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (105, 10, 'id', NULL, 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 1, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:12');
INSERT INTO `gen_table_column` VALUES (106, 10, 'species_name', '动物种类名称', 'varchar(255)', 'String', 'speciesName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', NULL, 2, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:12');
INSERT INTO `gen_table_column` VALUES (107, 10, 'scientific_name', '物种学名', 'varchar(255)', 'String', 'scientificName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 3, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:12');
INSERT INTO `gen_table_column` VALUES (108, 10, 'classification', '分布区域', 'varchar(255)', 'String', 'classification', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 4, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (109, 10, 'habitat', '栖息地', 'varchar(255)', 'String', 'habitat', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 5, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (110, 10, 'diet', '食物习性', 'varchar(255)', 'String', 'diet', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 6, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (111, 10, 'average_lifespan', '平均寿命（年）', 'int', 'Long', 'averageLifespan', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', NULL, 7, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (112, 10, 'is_endangered', '是否濒危（0表示否，1表示是）', 'char(1)', 'String', 'isEndangered', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', NULL, 8, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (113, 10, 'conservation_status', '保护状态（如：易危、濒危、极危等）', 'varchar(255)', 'String', 'conservationStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', NULL, 9, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (114, 10, 'description', '描述', 'text', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', NULL, 10, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (115, 10, 'created_at', '创建时间', 'timestamp', 'Date', 'createdAt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', NULL, 11, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (116, 10, 'updated_at', '更新时间', 'timestamp', 'Date', 'updatedAt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', NULL, 12, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:38:13');
INSERT INTO `gen_table_column` VALUES (117, 11, 'id', NULL, 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 1, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (118, 11, 'common_name', '俗名或常用名', 'varchar(100)', 'String', 'commonName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 2, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (119, 11, 'scientific_name', '学名', 'varchar(100)', 'String', 'scientificName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 3, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (120, 11, 'family', '植物科', 'varchar(50)', 'String', 'family', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 4, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (121, 11, 'genus', '植物属', 'varchar(50)', 'String', 'genus', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 5, 'admin', '2024-06-25 17:34:24', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (122, 11, 'habitat', '生长地', 'varchar(255)', 'String', 'habitat', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 6, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (123, 11, 'growth_habit', '生长习性（如：乔木、灌木、草本等）', 'varchar(255)', 'String', 'growthHabit', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', NULL, 7, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (124, 11, 'flowering_season', '开花季节', 'varchar(50)', 'String', 'floweringSeason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', NULL, 8, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (125, 11, 'fruit_or_seed_description', '果实或种子的描述', 'text', 'String', 'fruitOrSeedDescription', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', NULL, 9, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (126, 11, 'is_endangered', '是否濒危（0表示否，1表示是）', 'char(1)', 'String', 'isEndangered', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', NULL, 10, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (127, 11, 'conservation_status', '保护状态（如：易危、濒危、极危等）', 'varchar(255)', 'String', 'conservationStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', NULL, 11, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (128, 11, 'description', '描述', 'text', 'String', 'description', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', NULL, 12, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (129, 11, 'created_at', '创建时间', 'timestamp', 'Date', 'createdAt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', NULL, 13, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');
INSERT INTO `gen_table_column` VALUES (130, 11, 'updated_at', '更新时间', 'timestamp', 'Date', 'updatedAt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', NULL, 14, 'admin', '2024-06-25 17:34:25', NULL, '2024-06-25 17:37:59');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` longblob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '日历名称',
  `calendar` longblob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` longblob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` longblob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '参数键名',
  `config_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '系统内置（Y是 N否）',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-04-11 15:06:31', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-04-11 15:06:31', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-04-11 15:06:31', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-04-11 15:06:31', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-04-11 15:06:31', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-04-11 15:06:31', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `order_num` int NULL DEFAULT NULL COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '闪科', 0, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2024-04-11 15:06:22', 'admin', '2024-06-05 15:43:17');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '厦门总公司', 1, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2024-04-11 15:06:22', 'admin', '2024-06-05 16:18:01');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, 'admin', '15888888888', 'admin@qq.com', '0', '2', 'admin', '2024-04-11 15:06:22', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2024-04-11 15:06:22', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2024-04-11 15:06:22', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2024-04-11 15:06:22', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2024-04-11 15:06:22', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, 'admin', '15888888888', 'admin@qq.com', '0', '0', 'admin', '2024-04-11 15:06:22', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, 'admin', '15888888888', 'admin@qq.com', '0', '2', 'admin', '2024-04-11 15:06:22', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, 'admin', '15888888888', 'admin@qq.com', '0', '2', 'admin', '2024-04-11 15:06:22', '', NULL);
INSERT INTO `sys_dept` VALUES (10002875, 101, '0,100,101', '建模部门', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-06-17 16:23:12', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT NULL COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态（0正常 1停用）',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 15:06:30', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态（0正常 1停用）',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-04-11 15:06:29', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-04-11 15:06:29', 'admin', '2024-06-05 17:10:48', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态（0正常 1暂停）',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 15:06:32', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 15:06:32', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 15:06:32', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '执行状态（0正常 1失败）',
  `exception_info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '异常信息',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-25 14:19:58');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 14:20:20');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 16:31:54');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 16:46:20');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 16:46:37');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 16:47:45');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 16:49:07');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 17:09:06');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 17:13:27');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 17:20:30');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-25 17:42:56');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-25 17:42:59');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT NULL COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否为外链（0是 1否）',
  `is_cache` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1085 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 7, 'system', NULL, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2024-04-11 15:06:25', 'admin', '2024-06-05 15:27:39', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 8, 'monitor', NULL, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2024-04-11 15:06:25', 'admin', '2024-06-11 11:00:55', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2024-04-11 15:06:25', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, 'Four模块', 0, 9, 'four', NULL, NULL, '1', '0', 'M', '0', '0', NULL, 'bug', 'admin', '2024-06-25 14:32:34', NULL, NULL, '用于实验测试模块');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-04-11 15:06:25', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-04-11 15:06:25', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-04-11 15:06:25', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-04-11 15:06:25', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-04-11 15:06:25', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-04-11 15:06:25', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-04-11 15:06:25', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-04-11 15:06:25', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2024-04-11 15:06:25', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-04-11 15:06:25', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '1', 'monitor:job:list', 'job', 'admin', '2024-04-11 15:06:25', 'admin', '2024-06-05 15:41:47', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-04-11 15:06:25', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-04-11 15:06:25', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-04-11 15:06:25', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-04-11 15:06:25', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-04-11 15:06:25', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-04-11 15:06:25', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-04-11 15:06:25', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-04-11 15:06:25', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-04-11 15:06:25', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-04-11 15:06:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-04-11 15:06:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1073, '动物种类基础', 4, 1, 'animalSpecies', 'four/animalSpecies/index', NULL, '1', '0', 'C', '0', '0', 'four:animalSpecies:list', '#', 'admin', '2024-06-25 17:41:04', '', NULL, '动物种类基础菜单');
INSERT INTO `sys_menu` VALUES (1074, '动物种类基础查询', 1073, 1, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:animalSpecies:query', '#', 'admin', '2024-06-25 17:41:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1075, '动物种类基础新增', 1073, 2, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:animalSpecies:add', '#', 'admin', '2024-06-25 17:41:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1076, '动物种类基础修改', 1073, 3, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:animalSpecies:edit', '#', 'admin', '2024-06-25 17:41:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1077, '动物种类基础删除', 1073, 4, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:animalSpecies:remove', '#', 'admin', '2024-06-25 17:41:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1078, '动物种类基础导出', 1073, 5, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:animalSpecies:export', '#', 'admin', '2024-06-25 17:41:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1079, '植物种类基础', 4, 1, 'plantSpecies', 'four/plantSpecies/index', NULL, '1', '0', 'C', '0', '0', 'four:plantSpecies:list', '#', 'admin', '2024-06-25 17:41:15', '', NULL, '植物种类基础菜单');
INSERT INTO `sys_menu` VALUES (1080, '植物种类基础查询', 1079, 1, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:plantSpecies:query', '#', 'admin', '2024-06-25 17:41:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1081, '植物种类基础新增', 1079, 2, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:plantSpecies:add', '#', 'admin', '2024-06-25 17:41:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1082, '植物种类基础修改', 1079, 3, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:plantSpecies:edit', '#', 'admin', '2024-06-25 17:41:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1083, '植物种类基础删除', 1079, 4, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:plantSpecies:remove', '#', 'admin', '2024-06-25 17:41:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1084, '植物种类基础导出', 1079, 5, '#', '', NULL, '1', '0', 'F', '0', '0', 'four:plantSpecies:export', '#', 'admin', '2024-06-25 17:41:15', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告状态（0正常 1关闭）',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-04-11 15:06:33', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-04-11 15:06:33', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '模块标题',
  `business_type` int NULL DEFAULT NULL COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `operator_type` int NULL DEFAULT NULL COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作地点',
  `oper_param` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '请求参数',
  `json_result` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '返回参数',
  `status` int NULL DEFAULT NULL COMMENT '操作状态（0正常 1异常）',
  `error_msg` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT NULL COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000000131 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1000000005, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"66\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 15:40:26\",\"skeDeleted\":0,\"skeId\":1805143933248495617,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 15:40:26', 1);
INSERT INTO `sys_oper_log` VALUES (1000000006, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"66\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 15:40:32\",\"skeDeleted\":0,\"skeId\":1805143957344772097,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 15:40:32', 1);
INSERT INTO `sys_oper_log` VALUES (1000000007, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"66\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 15:42:33\",\"skeDeleted\":0,\"skeId\":1805144467485396994,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 15:42:34', 18);
INSERT INTO `sys_oper_log` VALUES (1000000008, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"66\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 15:44:02\",\"skeDeleted\":0,\"skeId\":1805144838811320322,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 15:44:02', 20);
INSERT INTO `sys_oper_log` VALUES (1000000009, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"66\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 15:46:15\",\"skeDeleted\":0,\"skeId\":1805145398344036353,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 15:46:16', 17);
INSERT INTO `sys_oper_log` VALUES (1000000011, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"66\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 15:46:50\",\"skeDeleted\":0,\"skeId\":1805145543051739138,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 15:46:50', 26);
INSERT INTO `sys_oper_log` VALUES (1000000013, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 15:48:04\",\"skeDeleted\":0,\"skeId\":1805145853287612418,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 15:48:04', 23);
INSERT INTO `sys_oper_log` VALUES (1000000015, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"999\",\"firstPackage\":\"999\",\"secondPackage\":\"999\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 15:49:00\",\"skeDeleted\":0,\"skeId\":1805146088114106370,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 15:49:00', 25);
INSERT INTO `sys_oper_log` VALUES (1000000017, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666\",\"skeCreateTime\":\"2024-06-24 15:53:17\",\"skeDeleted\":0,\"skeId\":1805147166410973185,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 15:53:17', 23);
INSERT INTO `sys_oper_log` VALUES (1000000018, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666\",\"skeCreateTime\":\"2024-06-24 15:55:23\",\"skeDeleted\":0,\"skeId\":1805147698047397889,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 15:55:24', 18);
INSERT INTO `sys_oper_log` VALUES (1000000019, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666\",\"skeCreateTime\":\"2024-06-24 15:58:48\",\"skeDeleted\":0,\"skeId\":1805148557326045185,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 15:58:49', 18);
INSERT INTO `sys_oper_log` VALUES (1000000020, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666\",\"skeCreateTime\":\"2024-06-24 15:59:53\",\"skeDeleted\":0,\"skeId\":1805148829867724801,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 16:00:37', 42898);
INSERT INTO `sys_oper_log` VALUES (1000000021, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666\",\"skeCreateTime\":\"2024-06-24 16:01:10\",\"skeDeleted\":0,\"skeId\":1805149153202479105,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 16:02:01', 50084);
INSERT INTO `sys_oper_log` VALUES (1000000022, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666\",\"skeCreateTime\":\"2024-06-24 16:03:47\",\"skeDeleted\":0,\"skeId\":1805149811192283137,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 16:04:21', 33348);
INSERT INTO `sys_oper_log` VALUES (1000000023, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"666\",\"firstPackage\":\"666\",\"secondPackage\":\"66\",\"skeCreateTime\":\"2024-06-24 16:04:35\",\"skeDeleted\":0,\"skeId\":1805150012854419458,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 16:04:53', 17283);
INSERT INTO `sys_oper_log` VALUES (1000000036, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"66\",\"secondPackage\":\"66\",\"skeCreateTime\":\"2024-06-24 16:10:02\",\"skeDeleted\":0,\"skeId\":1805151384236593154,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser\r\n### The error may exist in file [D:\\JavaPro\\eps-background\\ske-electricsystem\\target\\classes\\mapper\\electricsystem\\SkProjectDisasterAreaMapper.xml]\r\n### The error may involve com.ske.electricsystem.mapper.SkProjectDisasterAreaMapper.insertSkProjectDisasterArea\r\n### The error occurred while executing an update\r\n### Cause: java.lang.ClassCastException: com.ske.common.core.domain.model.LoginUser cannot be cast to com.ske.common.core.domain.entity.SysUser', '2024-06-24 16:11:01', 58351);
INSERT INTO `sys_oper_log` VALUES (1000000038, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666\",\"skeCreateTime\":\"2024-06-24 16:14:33\",\"skeDeleted\":0,\"skeId\":1805152518997172225,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:14:33', 19);
INSERT INTO `sys_oper_log` VALUES (1000000040, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"666\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:15:53\",\"skeDeleted\":0,\"skeId\":1805152854835142657,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:15:53', 23);
INSERT INTO `sys_oper_log` VALUES (1000000041, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"888\",\"secondPackage\":\"888888\",\"skeCreateBy\":\"admin\",\"skeDeleted\":0,\"skeId\":1805153294595289089,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:17:38', 17);
INSERT INTO `sys_oper_log` VALUES (1000000042, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"99\",\"firstPackage\":\"77\",\"secondPackage\":\"777\",\"skeCreateBy\":\"admin\",\"skeDeleted\":0,\"skeId\":1805154108558770177,\"skeIsEnabled\":1}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'skeIsEnabled\' of \'class com.ske.electricsystem.domain.SkProjectDisasterArea\' with value \'2\' Cause: java.lang.IllegalArgumentException: argument type mismatch', '2024-06-24 16:20:52', 13);
INSERT INTO `sys_oper_log` VALUES (1000000043, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"5\",\"firstPackage\":\"5\",\"secondPackage\":\"5\",\"skeCreateBy\":\"admin\",\"skeDeleted\":5,\"skeId\":1805154393947553794,\"skeIsEnabled\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:22:00', 17);
INSERT INTO `sys_oper_log` VALUES (1000000044, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"888\",\"firstPackage\":\"888\",\"secondPackage\":\"888\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:23:15\",\"skeDeleted\":5,\"skeId\":1805154708549672962,\"skeIsEnabled\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:23:15', 26);
INSERT INTO `sys_oper_log` VALUES (1000000045, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"33\",\"firstPackage\":\"33\",\"secondPackage\":\"33\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:25:15\",\"skeDeleted\":5,\"skeId\":1805155211635552257,\"skeIsEnabled\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:25:15', 16);
INSERT INTO `sys_oper_log` VALUES (1000000046, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"11\",\"firstPackage\":\"11\",\"secondPackage\":\"11111111\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:26:33\",\"skeDeleted\":0,\"skeId\":1805155540242468866,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:26:34', 18);
INSERT INTO `sys_oper_log` VALUES (1000000047, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"2\",\"firstPackage\":\"2\",\"secondPackage\":\"2\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:32:10\",\"skeDeleted\":0,\"skeId\":1805156952401682433,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:32:10', 17);
INSERT INTO `sys_oper_log` VALUES (1000000048, '灾害区匹配', 3, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.remove()', 'DELETE', 1, 'admin', '研发部门', '/electricsystem/area/1805155540242468900,1805155211635552300,1805154708549673000,1805154393947553800,1805153294595289000,1000000037,1000000039', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:32:30', 26);
INSERT INTO `sys_oper_log` VALUES (1000000049, '灾害区匹配', 3, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.remove()', 'DELETE', 1, 'admin', '研发部门', '/electricsystem/area/1805153294595289000,1805154393947553800,1805154708549673000,1805155211635552300,1805155540242468900,1805156952401682400', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-06-24 16:32:38', 11);
INSERT INTO `sys_oper_log` VALUES (1000000050, '灾害区匹配', 3, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.remove()', 'DELETE', 1, 'admin', '研发部门', '/electricsystem/area/1805153294595289000,1805154393947553800,1805154708549673000,1805155211635552300,1805155540242468900,1805156952401682400', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-06-24 16:32:49', 5);
INSERT INTO `sys_oper_log` VALUES (1000000051, '灾害区匹配', 3, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.remove()', 'DELETE', 1, 'admin', '研发部门', '/electricsystem/area/1805153294595289000,1805154393947553800,1805154708549673000,1805155211635552300,1805155540242468900,1805156952401682400', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-06-24 16:33:15', 5);
INSERT INTO `sys_oper_log` VALUES (1000000052, '灾害区匹配', 3, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.remove()', 'DELETE', 1, 'admin', '研发部门', '/electricsystem/area/1805153294595289000,1805154393947553800,1805154708549673000,1805155211635552300,1805155540242468900,1805156952401682400', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-06-24 16:33:52', 4);
INSERT INTO `sys_oper_log` VALUES (1000000053, '灾害区匹配', 3, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.remove()', 'DELETE', 1, 'admin', '研发部门', '/electricsystem/area/1805153294595289000,1805154393947553800,1805154708549673000,1805155211635552300,1805155540242468900,1805156952401682400', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-06-24 16:34:02', 5);
INSERT INTO `sys_oper_log` VALUES (1000000054, '灾害区匹配', 3, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.remove()', 'DELETE', 1, 'admin', '研发部门', '/electricsystem/area/1805153294595289000,1805154393947553800,1805154708549673000,1805155211635552300,1805155540242468900,1805156952401682400', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-06-24 16:36:24', 25);
INSERT INTO `sys_oper_log` VALUES (1000000056, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"22\",\"firstPackage\":\"222\",\"secondPackage\":\"2222\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:40:20\",\"skeDeleted\":0,\"skeId\":1805159009607122945,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:40:21', 22);
INSERT INTO `sys_oper_log` VALUES (1000000058, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"666\",\"firstPackage\":\"6666\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:43:37\",\"skeDeleted\":0,\"skeId\":1000000057,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:43:37', 22);
INSERT INTO `sys_oper_log` VALUES (1000000060, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"66\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:58:13\",\"skeDeleted\":0,\"skeId\":1000000059,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:58:14', 17);
INSERT INTO `sys_oper_log` VALUES (1000000062, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"5\",\"firstPackage\":\"5\",\"secondPackage\":\"5\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:59:32\",\"skeDeleted\":0,\"skeId\":1000000061,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:59:33', 16);
INSERT INTO `sys_oper_log` VALUES (1000000063, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"5\",\"firstPackage\":\"55\",\"secondPackage\":\"5\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:59:32\",\"skeDeleted\":0,\"skeId\":1000000061,\"skeIsEnabled\":1,\"skeUpdateBy\":\"admin\",\"skeUpdateTime\":\"2024-06-24 16:59:37\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 16:59:38', 14);
INSERT INTO `sys_oper_log` VALUES (1000000064, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"5\",\"firstPackage\":\"555\",\"secondPackage\":\"5\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:59:32\",\"skeDeleted\":0,\"skeId\":1000000061,\"skeIsEnabled\":1,\"skeUpdateBy\":\"admin\",\"skeUpdateTime\":\"2024-06-24 17:00:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:00:01', 4);
INSERT INTO `sys_oper_log` VALUES (1000000067, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin88', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"5\",\"firstPackage\":\"55566\",\"secondPackage\":\"5\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:59:32\",\"skeDeleted\":0,\"skeId\":1000000061,\"skeIsEnabled\":1,\"skeUpdateBy\":\"admin88\",\"skeUpdateTime\":\"2024-06-24 17:00:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:00:34', 3);
INSERT INTO `sys_oper_log` VALUES (1000000068, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin88', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"566\",\"firstPackage\":\"55566\",\"secondPackage\":\"5666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:59:32\",\"skeDeleted\":0,\"skeId\":1000000061,\"skeIsEnabled\":1,\"skeUpdateBy\":\"admin88\",\"skeUpdateTime\":\"2024-06-24 17:03:52\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:03:52', 41);
INSERT INTO `sys_oper_log` VALUES (1000000069, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin88', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"566\",\"firstPackage\":\"55566\",\"secondPackage\":\"566688888888\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:59:32\",\"skeDeleted\":0,\"skeId\":1000000061,\"skeIsEnabled\":1,\"skeUpdateBy\":\"a\",\"skeUpdateTime\":\"2024-06-24 17:05:40\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:05:40', 42);
INSERT INTO `sys_oper_log` VALUES (1000000070, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin88', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"668888\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:58:13\",\"skeDeleted\":0,\"skeId\":1000000059,\"skeIsEnabled\":1,\"skeUpdateBy\":\"管理员\",\"skeUpdateTime\":\"2024-06-24 17:08:19\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:08:20', 15230);
INSERT INTO `sys_oper_log` VALUES (1000000074, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"566\",\"firstPackage\":\"55566888888888888\",\"secondPackage\":\"566688888888\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:59:32\",\"skeDeleted\":0,\"skeId\":1000000061,\"skeIsEnabled\":1,\"skeUpdateBy\":\"admin\",\"skeUpdateTime\":\"2024-06-24 17:09:28\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:09:29', 14);
INSERT INTO `sys_oper_log` VALUES (1000000075, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"66\",\"firstPackage\":\"668888999999999999\",\"secondPackage\":\"666\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 16:58:13\",\"skeDeleted\":0,\"skeId\":1000000059,\"skeIsEnabled\":1,\"skeUpdateBy\":\"admin\",\"skeUpdateTime\":\"2024-06-24 17:09:33\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:09:33', 5);
INSERT INTO `sys_oper_log` VALUES (1000000077, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"1\",\"firstPackage\":\"1\",\"secondPackage\":\"1\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 17:10:10\",\"skeDeleted\":0,\"skeId\":1000000076,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:10:11', 5);
INSERT INTO `sys_oper_log` VALUES (1000000078, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"1\",\"firstPackage\":\"12\",\"secondPackage\":\"1\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 17:10:10\",\"skeDeleted\":0,\"skeId\":1000000076,\"skeIsEnabled\":1,\"skeUpdateBy\":\"admin\",\"skeUpdateTime\":\"2024-06-24 17:10:31\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:10:31', 4);
INSERT INTO `sys_oper_log` VALUES (1000000080, '灾害区匹配', 1, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.add()', 'POST', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"3\",\"firstPackage\":\"3\",\"secondPackage\":\"3\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 17:41:57\",\"skeDeleted\":0,\"skeId\":1000000079,\"skeIsEnabled\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:41:57', 24);
INSERT INTO `sys_oper_log` VALUES (1000000081, '灾害区匹配', 2, 'com.ske.electricsystem.controller.SkProjectDisasterAreaController.edit()', 'PUT', 1, 'admin', '研发部门', '/electricsystem/area', '127.0.0.1', '内网IP', '{\"disasterAreaName\":\"3\",\"firstPackage\":\"3\",\"secondPackage\":\"3333\",\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-24 17:41:57\",\"skeDeleted\":0,\"skeId\":1000000079,\"skeIsEnabled\":1,\"skeUpdateBy\":\"admin\",\"skeUpdateTime\":\"2024-06-24 17:42:01\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-24 17:42:02', 14);
INSERT INTO `sys_oper_log` VALUES (1000000082, '代码生成', 3, 'com.ske.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:26:55', 214);
INSERT INTO `sys_oper_log` VALUES (1000000083, '代码生成', 3, 'com.ske.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:26:58', 175);
INSERT INTO `sys_oper_log` VALUES (1000000084, '代码生成', 6, 'com.ske.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"f_plant_species,f_animal_species\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:27:10', 1618);
INSERT INTO `sys_oper_log` VALUES (1000000085, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":27,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"sort\":1,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":28,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"sort\":2,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":29,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"sort\":3,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":30,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTim', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:29:42', 883);
INSERT INTO `sys_oper_log` VALUES (1000000086, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":39,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:10\",\"sort\":1,\"superColumn\":false,\"tableId\":5,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":40,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:10\",\"sort\":2,\"superColumn\":false,\"tableId\":5,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":41,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:10\",\"sort\":3,\"superColumn\":false,\"tableId\":5,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":42,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:10\",\"sort\":4,\"superColumn', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:30:39', 825);
INSERT INTO `sys_oper_log` VALUES (1000000087, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":27,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"skeUpdateTime\":\"2024-06-25 14:29:41\",\"sort\":1,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":28,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"skeUpdateTime\":\"2024-06-25 14:29:41\",\"sort\":2,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":29,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"skeUpdateTime\":\"2024-06-25 14:29:41\",\"sort\":3,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":30,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"String\",\"l', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:39:48', 756);
INSERT INTO `sys_oper_log` VALUES (1000000088, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":27,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"skeUpdateTime\":\"2024-06-25 14:39:47\",\"sort\":1,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":28,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"skeUpdateTime\":\"2024-06-25 14:39:47\",\"sort\":2,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":29,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:09\",\"skeUpdateTime\":\"2024-06-25 14:39:47\",\"sort\":3,\"superColumn\":false,\"tableId\":4,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":30,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"String\",\"l', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:40:01', 712);
INSERT INTO `sys_oper_log` VALUES (1000000089, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":39,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:10\",\"skeUpdateTime\":\"2024-06-25 14:30:38\",\"sort\":1,\"superColumn\":false,\"tableId\":5,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":40,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:10\",\"skeUpdateTime\":\"2024-06-25 14:30:38\",\"sort\":2,\"superColumn\":false,\"tableId\":5,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":41,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:27:10\",\"skeUpdateTime\":\"2024-06-25 14:30:38\",\"sort\":3,\"superColumn\":false,\"tableId\":5,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":42,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"qu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:40:11', 854);
INSERT INTO `sys_oper_log` VALUES (1000000090, '代码生成', 3, 'com.ske.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/4,5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:49:28', 180);
INSERT INTO `sys_oper_log` VALUES (1000000091, '代码生成', 6, 'com.ske.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"f_plant_species,f_animal_species\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:49:55', 1433);
INSERT INTO `sys_oper_log` VALUES (1000000092, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plantSpecies\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":65,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"sort\":1,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":66,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"sort\":2,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":67,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"sort\":3,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":68,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"sort\":4,\"superCol', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:50:50', 778);
INSERT INTO `sys_oper_log` VALUES (1000000093, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"sort\":1,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":54,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"sort\":2,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":55,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"sort\":3,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":56,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreate', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:51:20', 636);
INSERT INTO `sys_oper_log` VALUES (1000000094, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:20\",\"sort\":1,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":54,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:20\",\"sort\":2,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":55,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:20\",\"sort\":3,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":56,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:51:38', 654);
INSERT INTO `sys_oper_log` VALUES (1000000095, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:38\",\"sort\":1,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":54,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:38\",\"sort\":2,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":55,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:38\",\"sort\":3,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":56,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:51:50', 637);
INSERT INTO `sys_oper_log` VALUES (1000000096, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plantSpecies\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":65,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:50:49\",\"sort\":1,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":66,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:50:50\",\"sort\":2,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":67,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:50:50\",\"sort\":3,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":68,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:52:19', 706);
INSERT INTO `sys_oper_log` VALUES (1000000097, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plantSpecies\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":65,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:52:19\",\"sort\":1,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":66,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:52:19\",\"sort\":2,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":67,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:52:19\",\"sort\":3,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":68,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:53:40', 763);
INSERT INTO `sys_oper_log` VALUES (1000000098, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:49\",\"sort\":1,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":54,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:49\",\"sort\":2,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":55,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:51:49\",\"sort\":3,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":56,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 14:53:54', 647);
INSERT INTO `sys_oper_log` VALUES (1000000099, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 14:54:44', 99);
INSERT INTO `sys_oper_log` VALUES (1000000100, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:53:54\",\"sort\":1,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":54,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:53:54\",\"sort\":2,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":55,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:53:54\",\"sort\":3,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":56,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 15:13:54', 918);
INSERT INTO `sys_oper_log` VALUES (1000000101, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plantSpecies\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":65,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:53:39\",\"sort\":1,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":66,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:53:39\",\"sort\":2,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":67,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 14:53:39\",\"sort\":3,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":68,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 15:14:12', 893);
INSERT INTO `sys_oper_log` VALUES (1000000102, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:13:53\",\"sort\":1,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":54,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:13:53\",\"sort\":2,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":55,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:13:53\",\"sort\":3,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":56,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 15:14:18', 864);
INSERT INTO `sys_oper_log` VALUES (1000000103, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 15:15:19', 194);
INSERT INTO `sys_oper_log` VALUES (1000000104, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:14:17\",\"sort\":1,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":54,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:14:17\",\"sort\":2,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":55,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:14:17\",\"sort\":3,\"superColumn\":false,\"tableId\":6,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":56,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 15:16:24', 926);
INSERT INTO `sys_oper_log` VALUES (1000000105, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plantSpecies\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":65,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:14:11\",\"sort\":1,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":66,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:14:11\",\"sort\":2,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":67,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 14:49:54\",\"skeUpdateTime\":\"2024-06-25 15:14:11\",\"sort\":3,\"superColumn\":false,\"tableId\":7,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":68,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 15:16:33', 1058);
INSERT INTO `sys_oper_log` VALUES (1000000106, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 15:16:37', 115);
INSERT INTO `sys_oper_log` VALUES (1000000107, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 15:17:08', 105);
INSERT INTO `sys_oper_log` VALUES (1000000108, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 16:33:14', 224);
INSERT INTO `sys_oper_log` VALUES (1000000109, '代码生成', 3, 'com.ske.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:26:05', 197);
INSERT INTO `sys_oper_log` VALUES (1000000110, '代码生成', 3, 'com.ske.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:26:06', 180);
INSERT INTO `sys_oper_log` VALUES (1000000111, '代码生成', 6, 'com.ske.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"f_plant_species,f_animal_species\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:26:14', 1608);
INSERT INTO `sys_oper_log` VALUES (1000000112, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":79,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"sort\":1,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":80,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"sort\":2,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":81,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"sort\":3,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":82,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreate', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:26:53', 810);
INSERT INTO `sys_oper_log` VALUES (1000000113, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":91,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"sort\":1,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":92,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"sort\":2,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":93,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"sort\":3,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":94,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"sort\":4,\"superColumn', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:27:39', 897);
INSERT INTO `sys_oper_log` VALUES (1000000114, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"species\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":79,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:26:52\",\"sort\":1,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":80,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:26:52\",\"sort\":2,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":81,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:26:52\",\"sort\":3,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":82,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"String\",\"l', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:27:45', 744);
INSERT INTO `sys_oper_log` VALUES (1000000115, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 17:27:49', 316);
INSERT INTO `sys_oper_log` VALUES (1000000116, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 17:28:09', 201);
INSERT INTO `sys_oper_log` VALUES (1000000117, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":79,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:27:45\",\"sort\":1,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":80,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:27:45\",\"sort\":2,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":81,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:27:45\",\"sort\":3,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":82,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:28:42', 764);
INSERT INTO `sys_oper_log` VALUES (1000000118, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plantSpecies\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":91,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:27:38\",\"sort\":1,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":92,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:27:38\",\"sort\":2,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":93,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:27:39\",\"sort\":3,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":94,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:28:57', 904);
INSERT INTO `sys_oper_log` VALUES (1000000119, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 17:29:05', 191);
INSERT INTO `sys_oper_log` VALUES (1000000120, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 17:29:28', 202);
INSERT INTO `sys_oper_log` VALUES (1000000121, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":79,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:28:42\",\"sort\":1,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":80,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:28:42\",\"sort\":2,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":81,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:28:42\",\"sort\":3,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":82,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:31:12', 1017);
INSERT INTO `sys_oper_log` VALUES (1000000122, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plantSpecies\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":91,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:28:56\",\"sort\":1,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":92,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:28:56\",\"sort\":2,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":93,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:28:57\",\"sort\":3,\"superColumn\":false,\"tableId\":9,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":94,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":tru', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:31:23', 1133);
INSERT INTO `sys_oper_log` VALUES (1000000123, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 17:31:30', 188);
INSERT INTO `sys_oper_log` VALUES (1000000124, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":79,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:31:11\",\"sort\":1,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":80,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:31:11\",\"sort\":2,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":81,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:26:13\",\"skeUpdateTime\":\"2024-06-25 17:31:12\",\"sort\":3,\"superColumn\":false,\"tableId\":8,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":82,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"Stri', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:34:08', 732);
INSERT INTO `sys_oper_log` VALUES (1000000125, '代码生成', 3, 'com.ske.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '研发部门', '/tool/gen/8,9', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:34:16', 175);
INSERT INTO `sys_oper_log` VALUES (1000000126, '代码生成', 6, 'com.ske.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"f_plant_species,f_animal_species\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:34:25', 1515);
INSERT INTO `sys_oper_log` VALUES (1000000127, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":105,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"sort\":1,\"superColumn\":false,\"tableId\":10,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":106,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"sort\":2,\"superColumn\":false,\"tableId\":10,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":107,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"sort\":3,\"superColumn\":false,\"tableId\":10,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":108,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:37:02', 654);
INSERT INTO `sys_oper_log` VALUES (1000000128, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"plantSpecies\",\"className\":\"FPlantSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":117,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"sort\":1,\"superColumn\":false,\"tableId\":11,\"usableColumn\":false},{\"capJavaField\":\"CommonName\",\"columnComment\":\"俗名或常用名\",\"columnId\":118,\"columnName\":\"common_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"commonName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"sort\":2,\"superColumn\":false,\"tableId\":11,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"学名\",\"columnId\":119,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(100)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"sort\":3,\"superColumn\":false,\"tableId\":11,\"usableColumn\":false},{\"capJavaField\":\"Family\",\"columnComment\":\"植物科\",\"columnId\":120,\"columnName\":\"family\",\"columnType\":\"varchar(50)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"family\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"sort\":4,', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:37:59', 868);
INSERT INTO `sys_oper_log` VALUES (1000000129, '代码生成', 2, 'com.ske.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"animalSpecies\",\"className\":\"FAnimalSpecies\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":105,\"columnName\":\"id\",\"columnType\":\"int\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"skeUpdateTime\":\"2024-06-25 17:37:01\",\"sort\":1,\"superColumn\":false,\"tableId\":10,\"usableColumn\":false},{\"capJavaField\":\"SpeciesName\",\"columnComment\":\"动物种类名称\",\"columnId\":106,\"columnName\":\"species_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"speciesName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"skeUpdateTime\":\"2024-06-25 17:37:01\",\"sort\":2,\"superColumn\":false,\"tableId\":10,\"usableColumn\":false},{\"capJavaField\":\"ScientificName\",\"columnComment\":\"物种学名\",\"columnId\":107,\"columnName\":\"scientific_name\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"scientificName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"skeCreateBy\":\"admin\",\"skeCreateTime\":\"2024-06-25 17:34:24\",\"skeUpdateTime\":\"2024-06-25 17:37:01\",\"sort\":3,\"superColumn\":false,\"tableId\":10,\"usableColumn\":false},{\"capJavaField\":\"Classification\",\"columnComment\":\"分布区域\",\"columnId\":108,\"columnName\":\"classification\",\"columnType\":\"varchar(255)\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"classification\",\"javaType', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-25 17:38:13', 744);
INSERT INTO `sys_oper_log` VALUES (1000000130, '代码生成', 8, 'com.ske.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"f_animal_species,f_plant_species\"}', NULL, 0, NULL, '2024-06-25 17:38:17', 129);

-- ----------------------------
-- Table structure for sys_operation_backups
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_backups`;
CREATE TABLE `sys_operation_backups`  (
  `backups_id` bigint NOT NULL COMMENT '访问ID',
  `backups_data` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备份数据',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`backups_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '操作备份数据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_operation_backups
-- ----------------------------

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-04-11 15:06:24', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-04-11 15:06:24', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-04-11 15:06:24', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-04-11 15:06:24', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  `menu_check_strictly` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '部门树选择项是否关联显示',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2024-04-11 15:06:25', '', NULL, '超级管理员', NULL, NULL);
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2024-04-11 15:06:25', 'admin', '2024-06-18 11:26:11', '普通角色', 'f', 'f');
INSERT INTO `sys_role` VALUES (10002873, '运维', 'operation ', 3, NULL, '0', '0', 'admin', '2024-06-17 16:15:37', 'admin', '2024-06-18 11:31:48', NULL, 't', 't');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (10002873, 1);
INSERT INTO `sys_role_menu` VALUES (10002873, 4);
INSERT INTO `sys_role_menu` VALUES (10002873, 5);
INSERT INTO `sys_role_menu` VALUES (10002873, 6);
INSERT INTO `sys_role_menu` VALUES (10002873, 7);
INSERT INTO `sys_role_menu` VALUES (10002873, 102);
INSERT INTO `sys_role_menu` VALUES (10002873, 1012);
INSERT INTO `sys_role_menu` VALUES (10002873, 1013);
INSERT INTO `sys_role_menu` VALUES (10002873, 1014);
INSERT INTO `sys_role_menu` VALUES (10002873, 1015);
INSERT INTO `sys_role_menu` VALUES (10002873, 10001722);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002217);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002218);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002219);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002220);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002221);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002222);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002223);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002224);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002225);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002226);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002227);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002228);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002229);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002230);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002231);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002232);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002233);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002234);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002235);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002236);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002237);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002238);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002239);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002240);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002241);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002242);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002243);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002244);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002245);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002246);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002247);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002248);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002249);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002250);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002251);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002252);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002253);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002254);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002255);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002256);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002257);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002258);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002259);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002260);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002261);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002262);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002263);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002264);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002265);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002266);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002267);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002268);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002269);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002270);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002271);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002272);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002273);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002274);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002275);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002276);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002277);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002278);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002279);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002280);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002281);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002282);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002283);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002284);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002285);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002286);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002287);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002288);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002289);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002290);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002291);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002292);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002293);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002294);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002295);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002296);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002297);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002298);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002299);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002300);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002301);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002302);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002303);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002304);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002305);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002306);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002307);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002308);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002309);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002310);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002311);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002312);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002313);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002315);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002316);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002317);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002318);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002319);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002320);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002321);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002322);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002323);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002324);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002325);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002326);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002327);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002328);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002329);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002330);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002331);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002332);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002333);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002334);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002335);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002336);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002337);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002338);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002339);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002340);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002341);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002342);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002343);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002344);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002345);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002346);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002347);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002348);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002349);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002350);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002351);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002352);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002353);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002354);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002355);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002356);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002357);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002358);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002359);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002360);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002361);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002362);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002363);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002364);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002365);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002366);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002367);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002368);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002369);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002370);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002371);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002372);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002373);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002374);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002381);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002382);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002383);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002384);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002385);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002386);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002387);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002388);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002389);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002390);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002391);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002392);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002393);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002394);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002395);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002396);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002397);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002398);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002399);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002400);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002401);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002402);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002403);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002404);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002405);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002406);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002407);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002408);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002409);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002410);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002411);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002412);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002413);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002414);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002415);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002416);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002417);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002418);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002419);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002420);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002421);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002422);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002423);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002424);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002425);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002426);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002427);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002428);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002429);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002430);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002431);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002432);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002433);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002434);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002435);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002436);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002437);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002438);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002439);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002440);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002441);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002442);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002443);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002444);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002445);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002446);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002447);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002448);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002449);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002450);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002451);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002452);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002459);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002460);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002461);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002462);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002463);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002464);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002465);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002466);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002467);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002468);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002469);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002470);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002471);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002472);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002473);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002474);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002475);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002476);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002477);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002478);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002479);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002480);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002481);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002482);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002483);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002484);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002485);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002486);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002487);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002488);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002489);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002490);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002491);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002492);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002493);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002494);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002495);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002496);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002497);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002498);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002499);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002500);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002501);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002502);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002503);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002504);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002505);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002506);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002513);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002514);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002515);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002516);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002517);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002518);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002519);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002520);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002521);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002522);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002523);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002524);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002525);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002526);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002527);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002528);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002529);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002530);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002531);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002532);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002533);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002534);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002535);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002536);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002537);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002538);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002539);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002540);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002541);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002542);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002543);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002544);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002545);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002546);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002547);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002548);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002549);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002550);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002551);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002552);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002553);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002554);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002555);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002556);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002557);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002558);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002559);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002560);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002561);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002562);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002563);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002564);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002565);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002566);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002567);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002568);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002569);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002570);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002571);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002572);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002573);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002574);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002575);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002576);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002577);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002578);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002579);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002580);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002581);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002582);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002583);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002584);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002585);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002586);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002587);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002588);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002589);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002590);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002597);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002598);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002599);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002600);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002601);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002602);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002603);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002604);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002605);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002606);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002607);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002608);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002609);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002610);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002611);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002612);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002613);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002614);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002615);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002616);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002617);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002618);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002619);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002620);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002621);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002622);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002623);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002624);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002625);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002626);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002627);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002628);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002629);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002630);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002631);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002632);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002633);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002634);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002635);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002636);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002637);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002638);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002639);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002640);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002641);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002642);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002643);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002644);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002645);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002646);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002647);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002648);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002649);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002650);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002822);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002826);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002827);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002829);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002830);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002930);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002935);
INSERT INTO `sys_role_menu` VALUES (10002873, 10002946);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `ske_create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `ske_create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `ske_update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `ske_update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `ske_remark` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '管理员', '00', 'admin@163.com', '15888888888', '0', '/profile/avatar/2024/06/05/4c4d1278d01b9f884d68166815238b94_20240605151842A001.png', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-06-25 17:42:58', 'admin', '2024-04-11 15:06:22', '', '2024-06-25 17:42:59', '管理员');
INSERT INTO `sys_user` VALUES (10002865, 105, 'yhh', '游辉辉', NULL, NULL, '15000000000', '0', NULL, '$2a$10$Aa5Ja3BbcPFJc5ULBpAK/Ok0xgXramnpWqJ1IZTcI2zG4zNmI5oN2', '0', '0', '127.0.0.1', '2024-06-18 10:59:33', 'admin', '2024-06-17 15:52:48', 'admin', '2024-06-18 10:59:34', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (10002865, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (10002865, 10002873);

-- ----------------------------
-- Procedure structure for InsertAnimalData
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertAnimalData`;
delimiter ;;
CREATE PROCEDURE `InsertAnimalData`(IN num_rows INT)
BEGIN  
    DECLARE i INT DEFAULT 1;  
    DECLARE species_name VARCHAR(255);  
    DECLARE scientific_name VARCHAR(255);  
    DECLARE classification VARCHAR(255);  
    DECLARE habitat VARCHAR(255);  
    DECLARE diet VARCHAR(255);  
    DECLARE average_lifespan INT;  
    DECLARE is_endangered CHAR(1);  
    DECLARE conservation_status VARCHAR(255);  
    DECLARE description TEXT;  
  
    WHILE i <= num_rows DO  
        -- 这里只是随机生成一些模拟数据，你可以根据实际情况替换或完善  
        SET species_name = CONCAT('动物', FLOOR(RAND() * 1000));  
        SET scientific_name = CONCAT('SciName', FLOOR(RAND() * 1000000));  
        SET classification = '哺乳动物'; -- 或者其他可能的分类  
        SET habitat = '陆地'; -- 或者其他可能的栖息地  
        SET diet = '杂食'; -- 或者其他可能的食物习性  
        SET average_lifespan = FLOOR(RAND() * 50) + 1; -- 生成1到50之间的随机寿命  
        SET is_endangered = IF(RAND() < 0.1, '1', '0'); -- 10%的几率为濒危  
        SET conservation_status = IF(is_endangered = '1', '濒危', '无危'); -- 根据是否濒危设置保护状态  
        SET description = CONCAT('这是', species_name, '的描述。');  
  
        INSERT INTO f_animal_species (  
            species_name,  
            scientific_name,  
            classification,  
            habitat,  
            diet,  
            average_lifespan,  
            is_endangered,  
            conservation_status,  
            description  
        ) VALUES (  
            species_name,  
            scientific_name,  
            classification,  
            habitat,  
            diet,  
            average_lifespan,  
            is_endangered,  
            conservation_status,  
            description  
        );  
  
        SET i = i + 1;  
    END WHILE;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for InsertPlantData
-- ----------------------------
DROP PROCEDURE IF EXISTS `InsertPlantData`;
delimiter ;;
CREATE PROCEDURE `InsertPlantData`(IN count INT)
BEGIN  
    DECLARE i INT DEFAULT 1;  
    WHILE i <= count DO  
        SET @common_name = CONCAT('植物', FLOOR(RAND() * 1000));  
        SET @scientific_name = CONCAT('Species', FLOOR(RAND() * 10000), 'sp.');  
        SET @description = CONCAT('这是一种', CASE FLOOR(RAND() * 4)  
            WHEN 0 THEN '常见的'  
            WHEN 1 THEN '稀有的'  
            WHEN 2 THEN '独特的'  
            ELSE '美丽的'  
        END, '植物，具有特殊的特性。');  
        SET @family = (SELECT family FROM (  
            SELECT 'Rosaceae' AS family UNION ALL  
            SELECT 'Ginkgoaceae' UNION ALL  
            SELECT 'Asteraceae' UNION ALL  
            -- 这里可以继续添加其他科...  
            SELECT 'Fabaceae'  
        ) AS families ORDER BY RAND() LIMIT 1);  
        SET @genus = CONCAT('Genus', FLOOR(RAND() * 100));  
        SET @habitat = (SELECT habitat FROM (  
            SELECT '温带地区' AS habitat UNION ALL  
            SELECT '热带地区' UNION ALL  
            SELECT '沙漠' UNION ALL  
            -- 这里可以继续添加其他栖息地...  
            SELECT '水生'  
        ) AS habitats ORDER BY RAND() LIMIT 1);  
        SET @growth_habit = (SELECT growth_habit FROM (  
            SELECT '乔木' AS growth_habit UNION ALL  
            SELECT '灌木' UNION ALL  
            SELECT '草本' UNION ALL  
            -- 这里可以继续添加其他生长习性...  
            SELECT '藤本'  
        ) AS growth_habits ORDER BY RAND() LIMIT 1);  
        SET @flowering_season = (SELECT flowering_season FROM (  
            SELECT '春夏' AS flowering_season UNION ALL  
            SELECT '秋冬' UNION ALL  
            SELECT '全年'  
        ) AS flowering_seasons ORDER BY RAND() LIMIT 1);  
        SET @fruit_or_seed_description = CONCAT('果实或种子为', CASE FLOOR(RAND() * 3)  
            WHEN 0 THEN '红色'  
            WHEN 1 THEN '黑色'  
            ELSE '棕色'  
        END, '，具有特定的形状。');  
        SET @is_endangered = FLOOR(RAND() * 2);  
        SET @conservation_status = (SELECT conservation_status FROM (  
            SELECT '无危' AS conservation_status UNION ALL  
            SELECT '易危' UNION ALL  
            SELECT '濒危' UNION ALL  
            SELECT '极危'  
        ) AS conservation_statuses ORDER BY RAND() LIMIT 1);  
  
        INSERT INTO f_plant_species (  
            common_name,  
            scientific_name,  
            description,  
            family,  
            genus,  
            habitat,  
            growth_habit,  
            flowering_season,  
            fruit_or_seed_description,  
            is_endangered,  
            conservation_status  
        ) VALUES (  
            @common_name,  
            @scientific_name,  
            @description,  
            @family,  
            @genus,  
            @habitat,  
            @growth_habit,  
            @flowering_season,  
            @fruit_or_seed_description,  
            @is_endangered,  
            @conservation_status  
        );  
        SET i = i + 1;  
    END WHILE;  
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
