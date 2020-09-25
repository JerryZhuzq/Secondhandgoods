/*
 Navicat Premium Data Transfer

 Source Server         : 本地服务器
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : create_shops

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 17/09/2020 20:34:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO `auth_permission` VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO `auth_permission` VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO `auth_permission` VALUES (4, 'Can view permission', 1, 'view_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (8, 'Can view group', 2, 'view_group');
INSERT INTO `auth_permission` VALUES (9, 'Can add user', 3, 'add_user');
INSERT INTO `auth_permission` VALUES (10, 'Can change user', 3, 'change_user');
INSERT INTO `auth_permission` VALUES (11, 'Can delete user', 3, 'delete_user');
INSERT INTO `auth_permission` VALUES (12, 'Can view user', 3, 'view_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add shops', 6, 'add_shops');
INSERT INTO `auth_permission` VALUES (22, 'Can change shops', 6, 'change_shops');
INSERT INTO `auth_permission` VALUES (23, 'Can delete shops', 6, 'delete_shops');
INSERT INTO `auth_permission` VALUES (24, 'Can view shops', 6, 'view_shops');
INSERT INTO `auth_permission` VALUES (25, 'Can add files', 7, 'add_files');
INSERT INTO `auth_permission` VALUES (26, 'Can change files', 7, 'change_files');
INSERT INTO `auth_permission` VALUES (27, 'Can delete files', 7, 'delete_files');
INSERT INTO `auth_permission` VALUES (28, 'Can view files', 7, 'view_files');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (1, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'shops', 'files');
INSERT INTO `django_content_type` VALUES (6, 'shops', 'shops');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-09-16 14:11:11.049097');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-09-16 14:11:11.085208');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-09-16 14:11:11.158408');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-09-16 14:11:11.273576');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-09-16 14:11:11.280408');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-09-16 14:11:11.285288');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-09-16 14:11:11.298952');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-09-16 14:11:11.299928');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-09-16 14:11:11.304835');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-09-16 14:11:11.320424');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-09-16 14:11:11.337016');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-09-16 14:11:11.350680');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-09-16 14:11:11.355560');
INSERT INTO `django_migrations` VALUES (14, 'sessions', '0001_initial', '2020-09-16 14:11:11.362392');
INSERT INTO `django_migrations` VALUES (15, 'shops', '0001_initial', '2020-09-16 14:11:11.415096');
INSERT INTO `django_migrations` VALUES (16, 'shops', '0002_auto_20200916_2240', '2020-09-16 14:40:33.000064');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shops_files
-- ----------------------------
DROP TABLE IF EXISTS `shops_files`;
CREATE TABLE `shops_files`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shops_files
-- ----------------------------
INSERT INTO `shops_files` VALUES ('02e89439-85f8-4b15-b0d9-490abd1c5e0a', 'banner', 'uploads/20200916/banner_AXNmnKE.png');
INSERT INTO `shops_files` VALUES ('09a697ec-7fea-46af-9648-4d65c87e6636', 'banner', 'uploads/20200917/banner_4Wi5Aib.png');
INSERT INTO `shops_files` VALUES ('0eea2bd0-7cd1-4c99-ade3-a5f25f483b65', 'banner', 'uploads/20200916/banner_6jr4e4M.png');
INSERT INTO `shops_files` VALUES ('1404ea18-cf3b-40ab-b394-9a04fed0b649', 'banner', 'uploads/20200917/banner_5rBxOXx.png');
INSERT INTO `shops_files` VALUES ('262f9044-a56d-43e3-b1dd-1fe8c399e164', 'banner', 'uploads/20200917/banner_EVLPTRm.png');
INSERT INTO `shops_files` VALUES ('26bf42a4-2f56-4db6-a819-cd82b86b534c', 'banner', 'uploads/20200917/banner_Yo16gRL.png');
INSERT INTO `shops_files` VALUES ('275e50c4-efa3-47d2-87f2-89b9dcce3504', 'banner', 'uploads/20200916/banner_oiN1gSt.png');
INSERT INTO `shops_files` VALUES ('2825bd20-ef9a-4523-8bd5-6151ad37d2d0', 'banner', 'uploads/20200917/banner_wiI1CD5.png');
INSERT INTO `shops_files` VALUES ('62a07dc8-bf38-4a73-9ab4-11190d901046', '分类新时代', 'uploads/20200917/分类新时代.png');
INSERT INTO `shops_files` VALUES ('767dbb14-83b4-4c5e-b05b-495af1c7663a', '1111', 'uploads/20200917/1111_7TsYv6k.png');
INSERT INTO `shops_files` VALUES ('7e2401ec-5d2c-4583-be34-71837d6ca00a', '1111', 'uploads/20200917/1111_qm6EflZ.png');
INSERT INTO `shops_files` VALUES ('84199683-2067-4416-a2fb-cccb815986b9', '分类新时代', 'uploads/20200917/分类新时代_qwycybj.png');
INSERT INTO `shops_files` VALUES ('8708ede7-c167-42fd-b509-40c382cbe78f', 'banner', 'uploads/20200917/banner_ZxrE3vr.png');
INSERT INTO `shops_files` VALUES ('964bb7e4-7d7b-4add-9c93-3df8d788bb5f', 'banner', 'uploads/20200917/banner_dRE4Z7v.png');
INSERT INTO `shops_files` VALUES ('971f93a4-3b95-4778-95cd-445e5d9e418e', '1111', 'uploads/20200916/1111.png');
INSERT INTO `shops_files` VALUES ('973694ec-9399-483e-8f77-46217a7e05ff', 'banner', 'uploads/20200916/banner_5tLKwev.png');
INSERT INTO `shops_files` VALUES ('987e4476-0558-488a-9b2b-4a6cfb6fbb6f', 'banner', 'uploads/20200917/banner_slAtRgg.png');
INSERT INTO `shops_files` VALUES ('a161dc8b-de65-4be0-9c56-4840d938c7b3', 'banner', 'uploads/20200917/banner_Jr67ED3.png');
INSERT INTO `shops_files` VALUES ('a89ffa52-817a-455b-abeb-c6443d42d896', '1111', 'uploads/20200917/1111.png');
INSERT INTO `shops_files` VALUES ('acfe9d15-aed0-47cc-81da-dc3606d34beb', 'banner', 'uploads/20200917/banner_LRcFc06.png');
INSERT INTO `shops_files` VALUES ('ae8a7b18-3a60-4b7f-bb4e-4b7ef1534ac7', 'banner', 'uploads/20200916/banner_hi2qmMD.png');
INSERT INTO `shops_files` VALUES ('bf3c554d-f7a0-4236-a185-662e695cd68b', 'banner', 'uploads/20200917/banner_tJlPBR0.png');
INSERT INTO `shops_files` VALUES ('c4155c8c-fa68-4204-84ee-bd0011a7df1a', 'banner', 'uploads/20200916/banner_cl8FXmM.png');
INSERT INTO `shops_files` VALUES ('cbb94901-d8f7-4c1f-94eb-8cb0cb092133', 'banner', 'uploads/20200916/banner_9b54hWT.png');
INSERT INTO `shops_files` VALUES ('cc58c45d-8603-49d6-8706-8bc4bbc6e749', 'banner', 'uploads/20200916/banner_fzUTqFU.png');
INSERT INTO `shops_files` VALUES ('cc6d2112-a086-4c55-964e-266049ecfb1e', 'banner', 'uploads/20200917/banner_YWQJKa4.png');
INSERT INTO `shops_files` VALUES ('dfeec28e-3a89-4ba8-9959-aefded695cf9', 'nodata', 'uploads/20200917/nodata.png');
INSERT INTO `shops_files` VALUES ('fc283e7e-fab3-4be0-9f0a-f010fefe7d64', 'banner', 'uploads/20200917/banner.png');
INSERT INTO `shops_files` VALUES ('fcf8ddc7-3f01-498a-8235-831d3ee93506', 'banner', 'uploads/20200916/banner_uPFetbS.png');
INSERT INTO `shops_files` VALUES ('fd7232d0-d2c8-480e-96aa-0fec2edd41b9', 'banner', 'uploads/20200916/banner_FkoU61K.png');

-- ----------------------------
-- Table structure for shops_shops
-- ----------------------------
DROP TABLE IF EXISTS `shops_shops`;
CREATE TABLE `shops_shops`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` double NULL DEFAULT NULL,
  `fileUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shops_shops
-- ----------------------------
INSERT INTO `shops_shops` VALUES ('1d212086-3790-4474-b131-ef47fd819470', 'aa', 'bb', 5, '/media/uploads/20200917/1111.png');
INSERT INTO `shops_shops` VALUES ('2f35ccd7-ba2c-467f-8fc8-d23e8a60a0c1', 'dddd', 'ffffff', 23, '/media/uploads/20200917/分类新时代_qwycybj.png');
INSERT INTO `shops_shops` VALUES ('35e3e1e3-fc1d-44b1-abb6-ae8541205022', 'dddd', 'fffffffff', 14, '/media/uploads/20200917/1111_7TsYv6k.png');
INSERT INTO `shops_shops` VALUES ('56761d44-7f81-4472-a6e5-2581a8b6cbeb', 'aa', 'cc', 50, '/media/uploads/20200917/1111.png');
INSERT INTO `shops_shops` VALUES ('620cd076-ceab-4574-ac92-c69775b246d1', 'aa', 'bb', 5, '/media/uploads/20200917/1111.png');
INSERT INTO `shops_shops` VALUES ('76879876-1a2d-45df-ac4e-988426478695', 'ddddd', 'ffffff', 1234, '/media/uploads/20200917/banner_slAtRgg.png');
INSERT INTO `shops_shops` VALUES ('82c5f1cb-3968-4743-a238-d43e04f3441e', '测试一下', '这是一个测试,主要是测试商品的添加', 5.6, '/media/uploads/20200917/分类新时代.png');
INSERT INTO `shops_shops` VALUES ('9c34b167-7846-43e6-8564-41379dec6056', '啊啊啊啊', '的点点滴滴', 99, '/media/uploads/20200917/1111_qm6EflZ.png');
INSERT INTO `shops_shops` VALUES ('9f5f37d1-7b25-4532-b209-67e3ecc824f4', '测试', '我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊我是测试啊测试啊', 6.6, '/media/uploads/20200917/nodata.png');
INSERT INTO `shops_shops` VALUES ('ef62c6c4-da43-4cc6-93e5-5192d39d00ea', 'aa', 'bbb', 10, '/media/uploads/20200917/1111.png');
INSERT INTO `shops_shops` VALUES ('f4f000e7-a8ef-4712-bdcb-3ebb8e855536', 'ddddd', 'cccccc', 99, '/media/uploads/20200917/banner_Jr67ED3.png');

SET FOREIGN_KEY_CHECKS = 1;
