/*
 Navicat Premium Data Transfer

 Source Server         : MariaDB
 Source Server Type    : MariaDB
 Source Server Version : 100121
 Source Host           : localhost:3306
 Source Schema         : simprosis

 Target Server Type    : MariaDB
 Target Server Version : 100121
 File Encoding         : 65001

 Date: 26/04/2020 12:08:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, 'Dosen');
INSERT INTO `auth_group` VALUES (2, 'Mahasiswa');
INSERT INTO `auth_group` VALUES (3, 'Operator');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add matakuliah', 7, 'add_matakuliah');
INSERT INTO `auth_permission` VALUES (26, 'Can change matakuliah', 7, 'change_matakuliah');
INSERT INTO `auth_permission` VALUES (27, 'Can delete matakuliah', 7, 'delete_matakuliah');
INSERT INTO `auth_permission` VALUES (28, 'Can view matakuliah', 7, 'view_matakuliah');
INSERT INTO `auth_permission` VALUES (29, 'Can add user profiles', 8, 'add_userprofiles');
INSERT INTO `auth_permission` VALUES (30, 'Can change user profiles', 8, 'change_userprofiles');
INSERT INTO `auth_permission` VALUES (31, 'Can delete user profiles', 8, 'delete_userprofiles');
INSERT INTO `auth_permission` VALUES (32, 'Can view user profiles', 8, 'view_userprofiles');
INSERT INTO `auth_permission` VALUES (33, 'Can add dosen', 9, 'add_dosen');
INSERT INTO `auth_permission` VALUES (34, 'Can change dosen', 9, 'change_dosen');
INSERT INTO `auth_permission` VALUES (35, 'Can delete dosen', 9, 'delete_dosen');
INSERT INTO `auth_permission` VALUES (36, 'Can view dosen', 9, 'view_dosen');
INSERT INTO `auth_permission` VALUES (37, 'Can add mahasiswa', 10, 'add_mahasiswa');
INSERT INTO `auth_permission` VALUES (38, 'Can change mahasiswa', 10, 'change_mahasiswa');
INSERT INTO `auth_permission` VALUES (39, 'Can delete mahasiswa', 10, 'delete_mahasiswa');
INSERT INTO `auth_permission` VALUES (40, 'Can view mahasiswa', 10, 'view_mahasiswa');
INSERT INTO `auth_permission` VALUES (41, 'Can add rps', 11, 'add_rps');
INSERT INTO `auth_permission` VALUES (42, 'Can change rps', 11, 'change_rps');
INSERT INTO `auth_permission` VALUES (43, 'Can delete rps', 11, 'delete_rps');
INSERT INTO `auth_permission` VALUES (44, 'Can view rps', 11, 'view_rps');
INSERT INTO `auth_permission` VALUES (45, 'Can add detilRPS', 12, 'add_detilrps');
INSERT INTO `auth_permission` VALUES (46, 'Can change detilRPS', 12, 'change_detilrps');
INSERT INTO `auth_permission` VALUES (47, 'Can delete detilRPS', 12, 'delete_detilrps');
INSERT INTO `auth_permission` VALUES (48, 'Can view detilRPS', 12, 'view_detilrps');
INSERT INTO `auth_permission` VALUES (49, 'Can add referensi', 13, 'add_referensi');
INSERT INTO `auth_permission` VALUES (50, 'Can change referensi', 13, 'change_referensi');
INSERT INTO `auth_permission` VALUES (51, 'Can delete referensi', 13, 'delete_referensi');
INSERT INTO `auth_permission` VALUES (52, 'Can view referensi', 13, 'view_referensi');
INSERT INTO `auth_permission` VALUES (53, 'Can add fakultas', 14, 'add_fakultas');
INSERT INTO `auth_permission` VALUES (54, 'Can change fakultas', 14, 'change_fakultas');
INSERT INTO `auth_permission` VALUES (55, 'Can delete fakultas', 14, 'delete_fakultas');
INSERT INTO `auth_permission` VALUES (56, 'Can view fakultas', 14, 'view_fakultas');
INSERT INTO `auth_permission` VALUES (57, 'Can add prodi', 15, 'add_prodi');
INSERT INTO `auth_permission` VALUES (58, 'Can change prodi', 15, 'change_prodi');
INSERT INTO `auth_permission` VALUES (59, 'Can delete prodi', 15, 'delete_prodi');
INSERT INTO `auth_permission` VALUES (60, 'Can view prodi', 15, 'view_prodi');
INSERT INTO `auth_permission` VALUES (61, 'Can add pustaka', 16, 'add_pustaka');
INSERT INTO `auth_permission` VALUES (62, 'Can change pustaka', 16, 'change_pustaka');
INSERT INTO `auth_permission` VALUES (63, 'Can delete pustaka', 16, 'delete_pustaka');
INSERT INTO `auth_permission` VALUES (64, 'Can view pustaka', 16, 'view_pustaka');
INSERT INTO `auth_permission` VALUES (65, 'Can add jurnalKuliah', 17, 'add_jurnalkuliah');
INSERT INTO `auth_permission` VALUES (66, 'Can change jurnalKuliah', 17, 'change_jurnalkuliah');
INSERT INTO `auth_permission` VALUES (67, 'Can delete jurnalKuliah', 17, 'delete_jurnalkuliah');
INSERT INTO `auth_permission` VALUES (68, 'Can view jurnalKuliah', 17, 'view_jurnalkuliah');
INSERT INTO `auth_permission` VALUES (69, 'Can add detilJurnalKuliah', 18, 'add_detiljurnalkuliah');
INSERT INTO `auth_permission` VALUES (70, 'Can change detilJurnalKuliah', 18, 'change_detiljurnalkuliah');
INSERT INTO `auth_permission` VALUES (71, 'Can delete detilJurnalKuliah', 18, 'delete_detiljurnalkuliah');
INSERT INTO `auth_permission` VALUES (72, 'Can view detilJurnalKuliah', 18, 'view_detiljurnalkuliah');
INSERT INTO `auth_permission` VALUES (73, 'Can add presensi', 19, 'add_presensi');
INSERT INTO `auth_permission` VALUES (74, 'Can change presensi', 19, 'change_presensi');
INSERT INTO `auth_permission` VALUES (75, 'Can delete presensi', 19, 'delete_presensi');
INSERT INTO `auth_permission` VALUES (76, 'Can view presensi', 19, 'view_presensi');
INSERT INTO `auth_permission` VALUES (77, 'Can add pesertaKuliah', 20, 'add_pesertakuliah');
INSERT INTO `auth_permission` VALUES (78, 'Can change pesertaKuliah', 20, 'change_pesertakuliah');
INSERT INTO `auth_permission` VALUES (79, 'Can delete pesertaKuliah', 20, 'delete_pesertakuliah');
INSERT INTO `auth_permission` VALUES (80, 'Can view pesertaKuliah', 20, 'view_pesertakuliah');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(254) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$PW7L9wZAwkd9$npMPrO8HKdmoMWBpQeLQABl3zYFsYJcfpcWGMJlolLQ=', '2020-04-15 14:52:40.720365', 1, 'developer', 'Aidina', 'Ristyawan', 'ristykdr@gmail.com', 1, 1, '2020-01-25 06:48:34.478642');
INSERT INTO `auth_user` VALUES (9, 'pbkdf2_sha256$150000$qUnyC7xVevXM$vNr247as5dposw0fLFj5JMGYG+AQXCjxiCtAIGLYHOA=', '2020-02-27 07:56:56.701681', 0, 'paijah', 'paijaha', 'sumarni', 'paijah@gmail.com', 1, 1, '2020-02-20 10:39:52.000000');
INSERT INTO `auth_user` VALUES (11, 'pbkdf2_sha256$150000$5zUNmU3z4TEV$0Ua/3TcQmqcmBOtURYbOib61T8gKn1N3AoXlWC/XGu0=', '2020-03-04 03:12:35.620845', 1, 'admin', '', '', '', 1, 1, '2020-03-04 03:11:12.000000');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------
INSERT INTO `auth_user_user_permissions` VALUES (1, 9, 1);
INSERT INTO `auth_user_user_permissions` VALUES (2, 9, 2);
INSERT INTO `auth_user_user_permissions` VALUES (3, 9, 3);
INSERT INTO `auth_user_user_permissions` VALUES (4, 9, 4);
INSERT INTO `auth_user_user_permissions` VALUES (5, 9, 5);
INSERT INTO `auth_user_user_permissions` VALUES (6, 9, 6);
INSERT INTO `auth_user_user_permissions` VALUES (7, 9, 7);
INSERT INTO `auth_user_user_permissions` VALUES (8, 9, 8);
INSERT INTO `auth_user_user_permissions` VALUES (9, 9, 9);
INSERT INTO `auth_user_user_permissions` VALUES (10, 9, 10);
INSERT INTO `auth_user_user_permissions` VALUES (11, 9, 11);
INSERT INTO `auth_user_user_permissions` VALUES (12, 9, 12);
INSERT INTO `auth_user_user_permissions` VALUES (13, 9, 13);
INSERT INTO `auth_user_user_permissions` VALUES (14, 9, 14);
INSERT INTO `auth_user_user_permissions` VALUES (15, 9, 15);
INSERT INTO `auth_user_user_permissions` VALUES (16, 9, 16);
INSERT INTO `auth_user_user_permissions` VALUES (17, 9, 17);
INSERT INTO `auth_user_user_permissions` VALUES (18, 9, 18);
INSERT INTO `auth_user_user_permissions` VALUES (19, 9, 19);
INSERT INTO `auth_user_user_permissions` VALUES (20, 9, 20);
INSERT INTO `auth_user_user_permissions` VALUES (21, 9, 21);
INSERT INTO `auth_user_user_permissions` VALUES (22, 9, 22);
INSERT INTO `auth_user_user_permissions` VALUES (23, 9, 23);
INSERT INTO `auth_user_user_permissions` VALUES (24, 9, 24);
INSERT INTO `auth_user_user_permissions` VALUES (25, 9, 25);
INSERT INTO `auth_user_user_permissions` VALUES (26, 9, 26);
INSERT INTO `auth_user_user_permissions` VALUES (27, 9, 27);
INSERT INTO `auth_user_user_permissions` VALUES (28, 9, 28);
INSERT INTO `auth_user_user_permissions` VALUES (29, 9, 29);
INSERT INTO `auth_user_user_permissions` VALUES (30, 9, 30);
INSERT INTO `auth_user_user_permissions` VALUES (31, 9, 31);
INSERT INTO `auth_user_user_permissions` VALUES (32, 9, 32);
INSERT INTO `auth_user_user_permissions` VALUES (33, 9, 33);
INSERT INTO `auth_user_user_permissions` VALUES (34, 9, 34);
INSERT INTO `auth_user_user_permissions` VALUES (35, 9, 35);
INSERT INTO `auth_user_user_permissions` VALUES (36, 9, 36);
INSERT INTO `auth_user_user_permissions` VALUES (37, 9, 37);
INSERT INTO `auth_user_user_permissions` VALUES (38, 9, 38);
INSERT INTO `auth_user_user_permissions` VALUES (39, 9, 39);
INSERT INTO `auth_user_user_permissions` VALUES (40, 9, 40);
INSERT INTO `auth_user_user_permissions` VALUES (41, 9, 41);
INSERT INTO `auth_user_user_permissions` VALUES (42, 9, 42);
INSERT INTO `auth_user_user_permissions` VALUES (43, 9, 43);
INSERT INTO `auth_user_user_permissions` VALUES (44, 9, 44);
INSERT INTO `auth_user_user_permissions` VALUES (45, 9, 45);
INSERT INTO `auth_user_user_permissions` VALUES (46, 9, 46);
INSERT INTO `auth_user_user_permissions` VALUES (47, 9, 47);
INSERT INTO `auth_user_user_permissions` VALUES (48, 9, 48);
INSERT INTO `auth_user_user_permissions` VALUES (49, 9, 49);
INSERT INTO `auth_user_user_permissions` VALUES (50, 9, 50);
INSERT INTO `auth_user_user_permissions` VALUES (51, 9, 51);
INSERT INTO `auth_user_user_permissions` VALUES (52, 9, 52);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `object_repr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 625 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-02-16 08:02:23.433483', '1', 'userProfiles object (1)', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (2, '2020-02-17 15:11:56.492684', '1', 'Data Mining', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2020-02-17 15:12:48.436581', '2', 'Logika dan Algoritma', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2020-02-20 10:39:52.468365', '9', 'paijah', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (5, '2020-02-20 10:40:49.258226', '4', 'paijah - paijah sumarni', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (6, '2020-02-20 10:43:32.807905', '9', 'paijah', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"user_permissions\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (7, '2020-02-20 14:44:26.157097', '4', 'paijah - paijah sumarnisd', 2, '[{\"changed\": {\"fields\": [\"nama\"]}}]', 8, 9);
INSERT INTO `django_admin_log` VALUES (8, '2020-02-21 09:09:08.615762', '1', '0721018801 - Aidina Ristyawan', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (9, '2020-02-21 09:14:26.960620', '2', '123 - Aidina Ristyawan', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (10, '2020-02-21 09:29:32.688770', '1', '0721018801 - Aidina Ristyawan', 2, '[{\"changed\": {\"fields\": [\"golongan\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (11, '2020-02-21 09:29:44.535720', '1', '0721018801 - Aidina Ristyawan', 2, '[{\"changed\": {\"fields\": [\"golongan\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (12, '2020-02-22 04:57:15.057204', '3', '12 - paijah sumarnix', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (13, '2020-02-24 10:17:31.779918', '4', '12 - paijah sumarnix', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (14, '2020-02-24 10:21:40.352747', '5', '12 - paijah sumarnix', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (15, '2020-02-24 10:22:14.863710', '6', '12 - paijah sumarnix', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (16, '2020-02-25 05:40:00.058876', '7', '12 - paijah sumarnix', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (17, '2020-02-25 05:42:32.672891', '8', '12 - paijah sumarnix', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (18, '2020-02-25 08:23:36.897095', '9', '12 - paijah sumarnix', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (19, '2020-02-25 08:24:48.120859', '4', 'paijah - paijah sumarno', 2, '[{\"changed\": {\"fields\": [\"nama\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (20, '2020-02-25 08:27:56.441413', '3', 'cobaen', 2, '[{\"changed\": {\"fields\": [\"nama\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (21, '2020-02-25 10:08:51.122173', '10', '122 - paijah sumarno', 2, '[{\"changed\": {\"fields\": [\"nidn\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (22, '2020-02-25 10:15:43.236781', '10', '1221 - paijah sumarno', 2, '[{\"changed\": {\"fields\": [\"nidn\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (23, '2020-02-25 10:17:17.867305', '10', '1221 - paijah sumarno', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (24, '2020-02-25 10:19:19.187645', '11', '1221 - paijah sumarno', 2, '[{\"changed\": {\"fields\": [\"nidn\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (25, '2020-02-25 10:21:29.118292', '11', '1221 - paijah sumarno', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (26, '2020-02-25 10:21:48.288861', '12', '1221 - paijah sumarno', 2, '[{\"changed\": {\"fields\": [\"nidn\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (27, '2020-02-25 10:24:15.152931', '12', '122 - paijah sumarno', 2, '[{\"changed\": {\"fields\": [\"nidn\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (28, '2020-02-25 10:24:38.993853', '12', '122 - paijah sumarno', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (29, '2020-02-25 10:25:21.391710', '1', '0721018801 - Aidina Ristyawan', 2, '[{\"changed\": {\"fields\": [\"golongan\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (30, '2020-02-25 10:25:26.278689', '1', '0721018801 - Aidina Ristyawan', 2, '[]', 9, 1);
INSERT INTO `django_admin_log` VALUES (31, '2020-02-25 10:26:47.958403', '13', '1221 - paijah sumarno', 2, '[{\"changed\": {\"fields\": [\"nidn\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (32, '2020-02-25 10:26:57.299009', '13', '1221 - paijah sumarno', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (33, '2020-02-25 11:03:15.444764', '14', '12 - paijah sumarno', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (34, '2020-02-25 14:30:20.493547', '15', '0721018802 - paijah sumarno', 3, '', 9, 1);
INSERT INTO `django_admin_log` VALUES (35, '2020-02-25 14:38:29.586429', '16', '0721018803 - paijah sumarno', 2, '[{\"changed\": {\"fields\": [\"nidn\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (36, '2020-02-25 15:03:59.233225', '4', 'SIM3702 - matkul cobaas', 2, '[{\"changed\": {\"fields\": [\"nama\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (37, '2020-02-27 04:52:31.445117', '10', 'mhs1', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (38, '2020-02-27 07:56:43.481470', '9', 'paijah', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (39, '2020-02-28 06:18:40.863664', '1', 'Dosen', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (40, '2020-02-28 06:18:50.658779', '2', 'Mahasiswa', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (41, '2020-02-28 06:19:10.347420', '3', 'Operator', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (42, '2020-03-01 10:26:03.458020', '5', 'mhs1 - mahasiswa satu', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (43, '2020-03-01 10:26:55.528407', '1', 'Teknik', 1, '[{\"added\": {}}]', 14, 1);
INSERT INTO `django_admin_log` VALUES (44, '2020-03-01 10:27:05.959328', '1', 'Sistem Informasi', 1, '[{\"added\": {}}]', 15, 1);
INSERT INTO `django_admin_log` VALUES (45, '2020-03-01 10:27:14.888256', '1', 'developer - Aidina Ristyawan', 2, '[{\"changed\": {\"fields\": [\"programStudi\"]}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (46, '2020-03-01 13:59:47.455420', '1', '12121212 - mahasiswa satu', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (47, '2020-03-04 03:11:12.457278', '11', 'admin', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (48, '2020-03-04 03:12:24.517423', '11', 'admin', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (49, '2020-03-09 06:55:51.753536', '2', ' 2 - bla', 3, '', 13, 1);
INSERT INTO `django_admin_log` VALUES (50, '2020-03-09 06:55:51.758015', '1', ' 1 - Judul 1', 3, '', 13, 1);
INSERT INTO `django_admin_log` VALUES (51, '2020-03-11 13:55:48.284123', '1', '2019/2020-SIM3702 - Matakuliah Percobaan 2', 1, '[{\"added\": {}}]', 17, 1);
INSERT INTO `django_admin_log` VALUES (52, '2020-03-11 13:56:29.223262', '1', '2019/2020-SIM3702 - Matakuliah Percobaan 2 1', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (53, '2020-03-12 14:03:17.525126', '4', '2019/2020-SIM3201 - Logika dan Algoritma 1', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (54, '2020-03-14 10:22:36.742063', '4', ' <class \'django.db.models.fields.SmallIntegerField\'> - Materi Belajar 1', 1, '[{\"added\": {}}]', 12, 1);
INSERT INTO `django_admin_log` VALUES (55, '2020-03-15 12:17:05.449708', '7', ' 1 - materi pembelajaran logika algoritma', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (56, '2020-03-15 12:17:05.462707', '6', ' 1 - materi pembelajaran logika algoritma', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (57, '2020-03-16 13:08:35.480388', '27', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (58, '2020-03-16 13:08:35.483405', '26', ' 12 - 12', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (59, '2020-03-16 13:08:35.486386', '25', ' 12 - 12', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (60, '2020-03-16 13:08:35.487384', '24', ' 12 - 12', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (61, '2020-03-16 13:08:35.490382', '23', ' 12 - 12', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (62, '2020-03-16 13:08:35.491383', '22', ' 12 - 12', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (63, '2020-03-16 13:08:35.494379', '21', ' 12 - 12', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (64, '2020-03-16 13:08:35.502378', '20', ' 11 - ASD', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (65, '2020-03-16 13:08:35.504393', '19', ' 11 - ASD', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (66, '2020-03-16 13:08:35.506392', '18', ' 11 - ASD', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (67, '2020-03-16 13:08:35.508386', '15', ' 9 - Materi pembelajaran logika dan algoritma', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (68, '2020-03-16 13:08:35.510389', '4', ' 1 - Materi Belajar 1', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (69, '2020-03-16 13:14:58.610037', '29', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (70, '2020-03-16 13:14:58.640106', '28', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (71, '2020-03-16 13:36:39.677541', '35', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (72, '2020-03-16 13:36:39.702526', '34', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (73, '2020-03-16 13:36:39.720514', '33', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (74, '2020-03-16 13:36:39.722514', '32', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (75, '2020-03-16 13:36:39.724512', '31', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (76, '2020-03-16 13:36:39.726511', '30', ' 111 - 111', 3, '', 12, 1);
INSERT INTO `django_admin_log` VALUES (77, '2020-03-17 16:51:52.710219', '3', '  SIM3201 - Logika dan Algoritma  - Judul 1', 3, '', 13, 1);
INSERT INTO `django_admin_log` VALUES (78, '2020-03-17 16:51:52.742243', '2', '  SIM3201 - Logika dan Algoritma  - Judul 1', 3, '', 13, 1);
INSERT INTO `django_admin_log` VALUES (79, '2020-03-17 16:51:52.745241', '1', '  SIM3201 - Logika dan Algoritma  - Judul 1', 3, '', 13, 1);
INSERT INTO `django_admin_log` VALUES (80, '2020-03-18 13:57:07.685668', '5', '2019/2020-SIM3707 - Data Mining', 3, '', 17, 1);
INSERT INTO `django_admin_log` VALUES (81, '2020-03-18 13:57:07.691527', '3', '2019/2020-SIM3201 - Logika dan Algoritma', 3, '', 17, 1);
INSERT INTO `django_admin_log` VALUES (82, '2020-03-18 13:57:07.693661', '2', '2019/2020-SIM3702 - Matakuliah Percobaan 2', 3, '', 17, 1);
INSERT INTO `django_admin_log` VALUES (83, '2020-03-19 05:27:32.803409', '12', '2019/2020-SIM3707 - Data Mining 1', 1, '[{\"added\": {}}]', 18, 1);
INSERT INTO `django_admin_log` VALUES (84, '2020-03-25 05:36:09.243565', '1', '2019/2020-SIM3707 - Data Mining 1-22222 - mahasiswa satu', 1, '[{\"added\": {}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (85, '2020-03-26 06:14:28.642593', '3', '22222 - mahasiswa satu', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (86, '2020-03-26 06:14:40.102073', '10', 'mhs1', 3, '', 4, 1);
INSERT INTO `django_admin_log` VALUES (87, '2020-03-28 04:54:46.654553', '95', '\'16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (88, '2020-03-28 04:54:46.689533', '94', '\'17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (89, '2020-03-28 04:54:46.692531', '93', '\'19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (90, '2020-03-28 04:54:46.695531', '92', '\'17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (91, '2020-03-28 04:54:46.698529', '91', '\'19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (92, '2020-03-28 04:54:46.699529', '90', '\'17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (93, '2020-03-28 04:54:46.702527', '89', '\'18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (94, '2020-03-28 04:54:46.704524', '88', '\'17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (95, '2020-03-28 04:54:46.707523', '87', '\'17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (96, '2020-03-28 04:54:46.709523', '86', '\'17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (97, '2020-03-28 04:54:46.712521', '85', '\'17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (98, '2020-03-28 04:54:46.720514', '84', '\'17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (99, '2020-03-28 04:54:46.723513', '83', '\'17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (100, '2020-03-28 04:54:46.726511', '82', '\'17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (101, '2020-03-28 04:54:46.728512', '81', '\'17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (102, '2020-03-28 04:54:46.730511', '80', '\'16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (103, '2020-03-28 04:54:46.732509', '79', '\'17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (104, '2020-03-28 04:54:46.735508', '78', '\'17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (105, '2020-03-28 04:54:46.736505', '77', '\'17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (106, '2020-03-28 04:54:46.739503', '76', '\'17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (107, '2020-03-28 04:54:46.741503', '75', '\'17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (108, '2020-03-28 04:54:46.744501', '74', '\'17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (109, '2020-03-28 04:54:46.746502', '73', '\'17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (110, '2020-03-28 04:54:46.748501', '72', '\'17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (111, '2020-03-28 04:54:46.750498', '71', '\'17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (112, '2020-03-28 04:54:46.752497', '70', '\'17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (113, '2020-03-28 04:54:46.754497', '69', '\'17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (114, '2020-03-28 04:54:46.759493', '68', '\'17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (115, '2020-03-28 04:54:46.762491', '67', '\'18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (116, '2020-03-28 04:54:46.764489', '66', '\'17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (117, '2020-03-28 04:54:46.767488', '35', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (118, '2020-03-28 04:54:46.769487', '34', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (119, '2020-03-28 04:54:46.772486', '33', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (120, '2020-03-28 04:54:46.774485', '32', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (121, '2020-03-28 04:54:46.777485', '31', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (122, '2020-03-28 04:54:46.779483', '30', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (123, '2020-03-28 04:54:46.781481', '29', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (124, '2020-03-28 04:54:46.783480', '28', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (125, '2020-03-28 04:54:46.785479', '27', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (126, '2020-03-28 04:54:46.787478', '26', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (127, '2020-03-28 04:54:46.790475', '25', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (128, '2020-03-28 04:54:46.792473', '24', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (129, '2020-03-28 04:54:46.795473', '23', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (130, '2020-03-28 04:54:46.797471', '22', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (131, '2020-03-28 04:54:46.799470', '21', '18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (132, '2020-03-28 04:54:46.802468', '20', '17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (133, '2020-03-28 06:56:07.221176', '285', '\'16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (134, '2020-03-28 06:56:07.223190', '284', '\'17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (135, '2020-03-28 06:56:07.226171', '283', '\'19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (136, '2020-03-28 06:56:07.228188', '282', '\'17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (137, '2020-03-28 06:56:07.231186', '281', '\'19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (138, '2020-03-28 06:56:07.232182', '280', '\'17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (139, '2020-03-28 06:56:07.235168', '279', '\'18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (140, '2020-03-28 06:56:07.236166', '278', '\'17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (141, '2020-03-28 06:56:07.239163', '277', '\'17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (142, '2020-03-28 06:56:07.241162', '276', '\'17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (143, '2020-03-28 06:56:07.243160', '275', '\'17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (144, '2020-03-28 06:56:07.244160', '274', '\'17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (145, '2020-03-28 06:56:07.247158', '273', '\'17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (146, '2020-03-28 06:56:07.248158', '272', '\'17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (147, '2020-03-28 06:56:07.250175', '271', '\'17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (148, '2020-03-28 06:56:07.254173', '270', '\'16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (149, '2020-03-28 06:56:07.257171', '269', '\'17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (150, '2020-03-28 06:56:07.265166', '268', '\'17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (151, '2020-03-28 06:56:07.266147', '267', '\'17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (152, '2020-03-28 06:56:07.269147', '266', '\'17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (153, '2020-03-28 06:56:07.271163', '265', '\'17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (154, '2020-03-28 06:56:07.273162', '264', '\'17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (155, '2020-03-28 06:56:07.275142', '263', '\'17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (156, '2020-03-28 06:56:07.277141', '262', '\'17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (157, '2020-03-28 06:56:07.279140', '261', '\'17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (158, '2020-03-28 06:56:07.282156', '260', '\'17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (159, '2020-03-28 06:56:07.284151', '259', '\'17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (160, '2020-03-28 06:56:07.287138', '258', '\'17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (161, '2020-03-28 06:56:07.289134', '257', '\'18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (162, '2020-03-28 06:56:07.291133', '256', '\'17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (163, '2020-03-28 14:41:33.261135', '345', '\'16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (164, '2020-03-28 14:41:33.286352', '344', '\'17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (165, '2020-03-28 14:41:33.287914', '343', '\'19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (166, '2020-03-28 14:41:33.289956', '342', '\'17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (167, '2020-03-28 14:41:33.290915', '341', '\'19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (168, '2020-03-28 14:41:33.298270', '340', '\'17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (169, '2020-03-28 14:41:33.300273', '339', '\'18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (170, '2020-03-28 14:41:33.302984', '338', '\'17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (171, '2020-03-28 14:41:33.304002', '337', '\'17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (172, '2020-03-28 14:41:33.306027', '336', '\'17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (173, '2020-03-28 14:41:33.307137', '335', '\'17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (174, '2020-03-28 14:41:33.309857', '334', '\'17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (175, '2020-03-28 14:41:33.310291', '333', '\'17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (176, '2020-03-28 14:41:33.313320', '332', '\'17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (177, '2020-03-28 14:41:33.314302', '331', '\'17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (178, '2020-03-28 14:41:33.316319', '330', '\'16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (179, '2020-03-28 14:41:33.318289', '329', '\'17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (180, '2020-03-28 14:41:33.320316', '328', '\'17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (181, '2020-03-28 14:41:33.321287', '327', '\'17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (182, '2020-03-28 14:41:33.324288', '326', '\'17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (183, '2020-03-28 14:41:33.328749', '325', '\'17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (184, '2020-03-28 14:41:33.331692', '324', '\'17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (185, '2020-03-28 14:41:33.335309', '323', '\'17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (186, '2020-03-28 14:41:33.337297', '322', '\'17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (187, '2020-03-28 14:41:33.340305', '321', '\'17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (188, '2020-03-28 14:41:33.341314', '320', '\'17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (189, '2020-03-28 14:41:33.343313', '319', '\'17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (190, '2020-03-28 14:41:33.352295', '318', '\'17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (191, '2020-03-28 14:41:33.354343', '317', '\'18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (192, '2020-03-28 14:41:33.356935', '316', '\'17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (193, '2020-03-28 14:41:33.358369', '193', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (194, '2020-03-28 14:41:33.361529', '192', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (195, '2020-03-28 14:41:33.363332', '191', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (196, '2020-03-28 14:41:33.365313', '190', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (197, '2020-03-28 14:41:33.367785', '189', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (198, '2020-03-28 14:41:33.370798', '188', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (199, '2020-03-28 14:41:33.372207', '187', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (200, '2020-03-28 14:41:33.375340', '186', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (201, '2020-03-28 14:41:33.376362', '185', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (202, '2020-03-28 14:41:33.379354', '184', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (203, '2020-03-28 14:41:33.381359', '183', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (204, '2020-03-28 14:41:33.383714', '182', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (205, '2020-03-28 14:41:33.385717', '181', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (206, '2020-03-28 14:41:33.388695', '180', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (207, '2020-03-28 14:41:33.390364', '179', '18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (208, '2020-03-28 14:41:33.392617', '129', '17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (209, '2020-03-29 05:50:40.651950', '379', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (210, '2020-03-29 05:50:40.682463', '378', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (211, '2020-03-29 05:50:40.684467', '377', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (212, '2020-03-29 05:50:40.687475', '376', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (213, '2020-03-29 05:50:40.689460', '375', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (214, '2020-03-29 05:50:40.692510', '374', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (215, '2020-03-29 05:50:40.694453', '373', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (216, '2020-03-29 05:50:40.697921', '372', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (217, '2020-03-29 05:50:40.700042', '371', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (218, '2020-03-29 05:50:40.702569', '370', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (219, '2020-03-29 05:50:40.705024', '369', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (220, '2020-03-29 05:50:40.708461', '368', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (221, '2020-03-29 05:50:40.710460', '367', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (222, '2020-03-29 05:50:40.712606', '366', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (223, '2020-03-29 05:50:40.715629', '365', '18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (224, '2020-03-29 05:50:40.717642', '347', '17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (225, '2020-03-29 13:08:19.182493', '409', '16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (226, '2020-03-29 13:08:19.192491', '408', '17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (227, '2020-03-29 13:08:19.197491', '407', '19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (228, '2020-03-29 13:08:19.200609', '406', '17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (229, '2020-03-29 13:08:19.204120', '405', '19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (230, '2020-03-29 13:08:19.206386', '404', '17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (231, '2020-03-29 13:08:19.209441', '403', '18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (232, '2020-03-29 13:08:19.213398', '402', '17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (233, '2020-03-29 13:08:19.216463', '401', '17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (234, '2020-03-29 13:08:19.220044', '400', '17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (235, '2020-03-29 13:08:19.225362', '399', '17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (236, '2020-03-29 13:08:19.229370', '398', '17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (237, '2020-03-29 13:08:19.231382', '397', '17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (238, '2020-03-29 13:08:19.234381', '396', '17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (239, '2020-03-29 13:08:19.236773', '395', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (240, '2020-03-29 13:08:19.239357', '394', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (241, '2020-03-29 13:08:19.241337', '393', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (242, '2020-03-29 13:08:19.244334', '392', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (243, '2020-03-29 13:08:19.247352', '391', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (244, '2020-03-29 13:08:19.250351', '390', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (245, '2020-03-29 13:08:19.252346', '389', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (246, '2020-03-29 13:08:19.254352', '388', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (247, '2020-03-29 13:08:19.256330', '387', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (248, '2020-03-29 13:08:19.259348', '386', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (249, '2020-03-29 13:08:19.261324', '385', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (250, '2020-03-29 13:08:19.264364', '384', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (251, '2020-03-29 13:08:19.266480', '383', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (252, '2020-03-29 13:08:19.269394', '382', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (253, '2020-03-29 13:08:19.270381', '381', '18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (254, '2020-03-29 13:08:19.273606', '380', '17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (255, '2020-03-29 13:32:04.539372', '439', '16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (256, '2020-03-29 13:32:04.568402', '438', '17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (257, '2020-03-29 13:32:04.569407', '437', '19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (258, '2020-03-29 13:32:04.572485', '436', '17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (259, '2020-03-29 13:32:04.573488', '435', '19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (260, '2020-03-29 13:32:04.576504', '434', '17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (261, '2020-03-29 13:32:04.578504', '433', '18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (262, '2020-03-29 13:32:04.580519', '432', '17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (263, '2020-03-29 13:32:04.587559', '431', '17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (264, '2020-03-29 13:32:04.589110', '430', '17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (265, '2020-03-29 13:32:04.592169', '429', '17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (266, '2020-03-29 13:32:04.593171', '428', '17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (267, '2020-03-29 13:32:04.596196', '427', '17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (268, '2020-03-29 13:32:04.598170', '426', '17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (269, '2020-03-29 13:32:04.600921', '425', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (270, '2020-03-29 13:32:04.602922', '424', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (271, '2020-03-29 13:32:04.605920', '423', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (272, '2020-03-29 13:32:04.607327', '422', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (273, '2020-03-29 13:32:04.609234', '421', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (274, '2020-03-29 13:32:04.611236', '420', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (275, '2020-03-29 13:32:04.614233', '419', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (276, '2020-03-29 13:32:04.616233', '418', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (277, '2020-03-29 13:32:04.620246', '417', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (278, '2020-03-29 13:32:04.625227', '416', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (279, '2020-03-29 13:32:04.627242', '415', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (280, '2020-03-29 13:32:04.629240', '414', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (281, '2020-03-29 13:32:04.631225', '413', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (282, '2020-03-29 13:32:04.634222', '412', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (283, '2020-03-29 13:32:04.635222', '411', '18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (284, '2020-03-29 13:32:04.637220', '410', '17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (285, '2020-03-29 13:41:15.995172', '470', '16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (286, '2020-03-29 13:41:16.038308', '469', '17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (287, '2020-03-29 13:41:16.040309', '468', '19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (288, '2020-03-29 13:41:16.041308', '467', '17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (289, '2020-03-29 13:41:16.044307', '466', '19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (290, '2020-03-29 13:41:16.045344', '465', '17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (291, '2020-03-29 13:41:16.047344', '464', '18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (292, '2020-03-29 13:41:16.049302', '463', '17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (293, '2020-03-29 13:41:16.051890', '462', '17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (294, '2020-03-29 13:41:16.057373', '461', '17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (295, '2020-03-29 13:41:16.060331', '460', '17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (296, '2020-03-29 13:41:16.062334', '459', '17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (297, '2020-03-29 13:41:16.064351', '458', '17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (298, '2020-03-29 13:41:16.066333', '457', '17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (299, '2020-03-29 13:41:16.069332', '456', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (300, '2020-03-29 13:41:16.070923', '455', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (301, '2020-03-29 13:41:16.073479', '454', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (302, '2020-03-29 13:41:16.074392', '453', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (303, '2020-03-29 13:41:16.077388', '452', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (304, '2020-03-29 13:41:16.078425', '451', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (305, '2020-03-29 13:41:16.081389', '450', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (306, '2020-03-29 13:41:16.083416', '449', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (307, '2020-03-29 13:41:16.086387', '448', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (308, '2020-03-29 13:41:16.087604', '447', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (309, '2020-03-29 13:41:16.090539', '446', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (310, '2020-03-29 13:41:16.091548', '445', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (311, '2020-03-29 13:41:16.093548', '444', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (312, '2020-03-29 13:41:16.095425', '443', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (313, '2020-03-29 13:41:16.097466', '442', '18.1.03.03.0015 - DIMAS ADAM SAPUTRA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (314, '2020-03-29 13:41:16.099446', '441', '17.1.03.03.0018 - AHMAD RIVAI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (315, '2020-03-29 13:45:41.380342', '500', '16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (316, '2020-03-29 13:45:41.382342', '499', '17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (317, '2020-03-29 13:45:41.384341', '498', '19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (318, '2020-03-29 13:45:41.385340', '497', '17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (319, '2020-03-29 13:45:41.388336', '496', '19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (320, '2020-03-29 13:45:41.389337', '495', '17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (321, '2020-03-29 13:45:41.391335', '494', '18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (322, '2020-03-29 13:45:41.393336', '493', '17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (323, '2020-03-29 13:45:41.395333', '492', '17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (324, '2020-03-29 13:45:41.397334', '491', '17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (325, '2020-03-29 13:45:41.399331', '490', '17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (326, '2020-03-29 13:45:41.400331', '489', '17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (327, '2020-03-29 13:45:41.403327', '488', '17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (328, '2020-03-29 13:45:41.406327', '487', '17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (329, '2020-03-29 13:45:41.409325', '486', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (330, '2020-03-29 13:45:41.410326', '485', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (331, '2020-03-29 13:45:41.412324', '484', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (332, '2020-03-29 13:45:41.414321', '483', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (333, '2020-03-29 13:45:41.416322', '482', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (334, '2020-03-29 13:45:41.417322', '481', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (335, '2020-03-29 13:45:41.420319', '480', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (336, '2020-03-29 13:45:41.421319', '479', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (337, '2020-03-29 13:45:41.423319', '478', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (338, '2020-03-29 13:45:41.425317', '477', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (339, '2020-03-29 13:45:41.427316', '476', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (340, '2020-03-29 13:45:41.428314', '475', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (341, '2020-03-29 13:45:41.431314', '474', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (342, '2020-03-29 13:45:41.432313', '473', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (343, '2020-03-29 13:48:43.686630', '528', '16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (344, '2020-03-29 13:48:43.715726', '527', '17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (345, '2020-03-29 13:48:43.717906', '526', '19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (346, '2020-03-29 13:48:43.720932', '525', '17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (347, '2020-03-29 13:48:43.722922', '524', '19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (348, '2020-03-29 13:48:43.724907', '523', '17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (349, '2020-03-29 13:48:43.726920', '522', '18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (350, '2020-03-29 13:48:43.730048', '521', '17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (351, '2020-03-29 13:48:43.731086', '520', '17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (352, '2020-03-29 13:48:43.733084', '519', '17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (353, '2020-03-29 13:48:43.735058', '518', '17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (354, '2020-03-29 13:48:43.737957', '517', '17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (355, '2020-03-29 13:48:43.739008', '516', '17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (356, '2020-03-29 13:48:43.741011', '515', '17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (357, '2020-03-29 13:48:43.743019', '514', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (358, '2020-03-29 13:48:43.745081', '513', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (359, '2020-03-29 13:48:43.746367', '512', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (360, '2020-03-29 13:48:43.748706', '511', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (361, '2020-03-29 13:48:43.749730', '510', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (362, '2020-03-29 13:48:43.751751', '509', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (363, '2020-03-29 13:48:43.752737', '508', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (364, '2020-03-29 13:48:43.755106', '507', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (365, '2020-03-29 13:48:43.756110', '506', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (366, '2020-03-29 13:48:43.763343', '505', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (367, '2020-03-29 13:48:43.765365', '504', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (368, '2020-03-29 13:48:43.768333', '503', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (369, '2020-03-29 13:48:43.770342', '502', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (370, '2020-03-29 13:48:43.773341', '501', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (371, '2020-03-29 13:57:15.318832', '556', '16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (372, '2020-03-29 13:57:15.352973', '555', '17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (373, '2020-03-29 13:57:15.357936', '554', '19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (374, '2020-03-29 13:57:15.360940', '553', '17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (375, '2020-03-29 13:57:15.365930', '552', '19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (376, '2020-03-29 13:57:15.368927', '551', '17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (377, '2020-03-29 13:57:15.373243', '550', '18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (378, '2020-03-29 13:57:15.376310', '549', '17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (379, '2020-03-29 13:57:15.381306', '548', '17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (380, '2020-03-29 13:57:15.385288', '547', '17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (381, '2020-03-29 13:57:15.388960', '546', '17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (382, '2020-03-29 13:57:15.392214', '545', '17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (383, '2020-03-29 13:57:15.397220', '544', '17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (384, '2020-03-29 13:57:15.401220', '543', '17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (385, '2020-03-29 13:57:15.405242', '542', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (386, '2020-03-29 13:57:15.410278', '541', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (387, '2020-03-29 13:57:15.413247', '540', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (388, '2020-03-29 13:57:15.418243', '539', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (389, '2020-03-29 13:57:15.421241', '538', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (390, '2020-03-29 13:57:15.426269', '537', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (391, '2020-03-29 13:57:15.429234', '536', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (392, '2020-03-29 13:57:15.435263', '535', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (393, '2020-03-29 13:57:15.438261', '534', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (394, '2020-03-29 13:57:15.442228', '533', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (395, '2020-03-29 13:57:15.446238', '532', '17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (396, '2020-03-29 13:57:15.450264', '531', '17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (397, '2020-03-29 13:57:15.456517', '530', '17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (398, '2020-03-29 13:57:15.460298', '529', '17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (399, '2020-03-29 13:59:27.634507', '584', '16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (400, '2020-03-29 13:59:27.671839', '583', '17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (401, '2020-03-29 13:59:27.673837', '582', '19.1.03.03.0057 - RETNO ASTUTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (402, '2020-03-29 13:59:27.676836', '581', '17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (403, '2020-03-29 13:59:27.678818', '580', '19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (404, '2020-03-29 13:59:27.680828', '579', '17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (405, '2020-03-29 13:59:27.683819', '578', '18.1.03.03.0044 - ASTO FIRURI PRIYANDANA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (406, '2020-03-29 13:59:27.686816', '577', '17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (407, '2020-03-29 13:59:27.688813', '576', '17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (408, '2020-03-29 13:59:27.693810', '575', '17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (409, '2020-03-29 13:59:27.696810', '574', '17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (410, '2020-03-29 13:59:27.699823', '573', '17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (411, '2020-03-29 13:59:27.701821', '572', '17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (412, '2020-03-29 13:59:27.704806', '571', '17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (413, '2020-03-29 13:59:27.705803', '570', '17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (414, '2020-03-29 13:59:27.708804', '569', '16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (415, '2020-03-29 13:59:27.710802', '568', '17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (416, '2020-03-29 13:59:27.712801', '567', '17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (417, '2020-03-29 13:59:27.715798', '566', '17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (418, '2020-03-29 13:59:27.719796', '565', '17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (419, '2020-03-29 13:59:27.721796', '564', '17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (420, '2020-03-29 13:59:27.722812', '563', '17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (421, '2020-03-29 13:59:27.725793', '562', '17.1.03.03.0005 - SUCI DEWANTI', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (422, '2020-03-29 13:59:27.726794', '561', '17.1.03.03.0007 - RISKY FERIANTO', 3, '', 10, 1);
INSERT INTO `django_admin_log` VALUES (423, '2020-04-01 15:02:42.454533', '1', '2019/2020-SIM3707 - Data Mining - SUCI DEWANTI', 1, '[{\"added\": {}}]', 20, 1);
INSERT INTO `django_admin_log` VALUES (424, '2020-04-02 04:45:15.224023', '32', '2019/2020-SIM3707 - Data Mining - asu', 3, '', 20, 1);
INSERT INTO `django_admin_log` VALUES (425, '2020-04-02 04:57:07.158180', '28', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (426, '2020-04-02 04:57:07.163187', '27', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (427, '2020-04-02 04:57:07.164246', '26', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0057 - RETNO ASTUTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (428, '2020-04-02 04:57:07.167324', '25', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (429, '2020-04-02 04:57:07.168178', '24', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (430, '2020-04-02 04:57:07.170181', '23', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (431, '2020-04-02 04:57:07.172178', '22', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (432, '2020-04-02 04:57:07.175176', '21', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (433, '2020-04-02 04:57:07.176175', '20', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (434, '2020-04-02 04:57:07.180188', '19', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (435, '2020-04-02 04:57:07.183171', '18', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (436, '2020-04-02 04:57:07.184357', '17', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (437, '2020-04-02 04:57:07.187262', '16', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (438, '2020-04-02 04:57:07.188248', '15', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (439, '2020-04-02 04:57:07.191515', '14', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (440, '2020-04-02 04:57:07.192518', '13', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (441, '2020-04-02 04:57:07.195281', '12', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (442, '2020-04-02 04:57:07.196300', '11', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (443, '2020-04-02 04:57:07.198689', '10', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (444, '2020-04-02 04:57:07.199705', '9', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (445, '2020-04-02 04:57:07.202524', '8', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (446, '2020-04-02 04:57:07.203526', '7', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0005 - SUCI DEWANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (447, '2020-04-02 04:57:07.207298', '6', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0007 - RISKY FERIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (448, '2020-04-02 04:57:07.208838', '5', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (449, '2020-04-02 04:57:07.211542', '4', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (450, '2020-04-02 04:57:07.212867', '3', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (451, '2020-04-02 04:57:07.218108', '2', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (452, '2020-04-02 04:57:07.221095', '1', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0018 - AHMAD RIVAI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (453, '2020-04-02 06:49:11.609049', '31', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0018 - AHMAD RIVAI', 2, '[]', 19, 1);
INSERT INTO `django_admin_log` VALUES (454, '2020-04-02 06:49:58.283708', '31', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0018 - AHMAD RIVAI', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (455, '2020-04-02 07:12:00.576003', '56', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0016 - IKA ARI SASMITA', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (456, '2020-04-02 09:13:39.976658', '92', '2019/2020-SIM3707 - Data Mining 2-16.1.03.03.0006 - ANGGA WIBISONO', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (457, '2020-04-02 09:14:00.597205', '81', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0011 - AZIS NURDIANSYAH', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (458, '2020-04-03 07:34:12.416019', '61', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 2, '[{\"changed\": {\"fields\": [\"nilai\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (459, '2020-04-03 07:34:20.605373', '61', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 2, '[]', 19, 1);
INSERT INTO `django_admin_log` VALUES (460, '2020-04-03 08:00:05.158424', '58', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (461, '2020-04-03 08:01:18.772982', '123', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0006 - ANGGA WIBISONO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (462, '2020-04-03 08:01:18.804534', '122', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0018 - GALANG SETIAWAN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (463, '2020-04-03 08:01:18.807082', '121', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0027 - YULVA IRFAN ANAS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (464, '2020-04-03 08:01:18.810476', '120', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (465, '2020-04-03 08:01:18.811488', '119', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (466, '2020-04-03 08:01:18.814478', '118', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0057 - RETNO ASTUTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (467, '2020-04-03 08:01:18.816475', '117', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (468, '2020-04-03 08:01:18.819473', '116', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (469, '2020-04-03 08:01:18.820473', '115', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (470, '2020-04-03 08:01:18.823895', '114', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (471, '2020-04-03 08:01:18.825604', '113', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (472, '2020-04-03 08:01:18.828222', '112', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (473, '2020-04-03 08:01:18.829905', '111', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (474, '2020-04-03 08:01:18.832880', '110', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (475, '2020-04-03 08:01:18.834808', '109', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (476, '2020-04-03 08:01:18.836821', '108', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (477, '2020-04-03 08:01:18.838918', '107', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (478, '2020-04-03 08:01:18.841572', '106', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (479, '2020-04-03 08:01:18.844368', '105', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (480, '2020-04-03 08:01:18.847372', '104', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (481, '2020-04-03 08:01:18.849367', '103', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (482, '2020-04-03 08:01:18.853046', '102', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (483, '2020-04-03 08:01:18.855066', '101', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (484, '2020-04-03 08:01:18.858046', '100', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (485, '2020-04-03 08:01:18.860053', '99', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0007 - RISKY FERIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (486, '2020-04-03 08:01:18.863062', '98', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (487, '2020-04-03 08:01:18.865574', '97', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (488, '2020-04-03 08:01:18.868904', '96', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (489, '2020-04-03 08:01:18.870951', '95', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (490, '2020-04-03 08:01:18.873922', '94', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0018 - AHMAD RIVAI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (491, '2020-04-03 08:01:18.875922', '93', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0005 - SUCI DEWANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (492, '2020-04-03 08:01:18.878920', '92', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0006 - ANGGA WIBISONO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (493, '2020-04-03 08:01:18.880902', '91', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0018 - GALANG SETIAWAN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (494, '2020-04-03 08:01:18.883954', '90', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0027 - YULVA IRFAN ANAS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (495, '2020-04-03 08:01:18.886952', '89', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (496, '2020-04-03 08:01:18.889913', '88', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (497, '2020-04-03 08:01:18.891932', '87', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0057 - RETNO ASTUTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (498, '2020-04-03 08:01:18.894948', '86', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (499, '2020-04-03 08:01:18.896929', '85', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (500, '2020-04-03 08:01:18.900888', '84', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (501, '2020-04-03 08:01:18.902883', '83', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (502, '2020-04-03 08:01:18.905880', '82', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (503, '2020-04-03 08:01:18.906881', '81', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (504, '2020-04-03 08:01:18.909877', '80', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (505, '2020-04-03 08:01:18.911892', '79', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (506, '2020-04-03 08:01:18.915875', '78', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (507, '2020-04-03 08:01:18.917911', '77', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (508, '2020-04-03 08:01:18.922936', '76', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (509, '2020-04-03 08:01:18.924949', '75', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (510, '2020-04-03 08:01:18.927951', '74', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (511, '2020-04-03 08:01:18.935947', '73', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (512, '2020-04-03 08:01:18.937911', '72', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (513, '2020-04-03 08:01:18.939945', '71', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (514, '2020-04-03 08:01:18.941911', '70', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (515, '2020-04-03 08:01:18.944921', '69', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (516, '2020-04-03 08:01:18.945907', '68', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0007 - RISKY FERIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (517, '2020-04-03 08:01:18.950904', '67', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (518, '2020-04-03 08:01:18.953819', '66', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (519, '2020-04-03 08:01:18.955823', '65', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (520, '2020-04-03 08:01:18.957840', '64', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (521, '2020-04-03 08:01:18.959818', '63', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0018 - AHMAD RIVAI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (522, '2020-04-03 08:01:18.961820', '62', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0005 - SUCI DEWANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (523, '2020-04-03 08:01:18.963816', '61', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (524, '2020-04-03 08:01:18.966834', '60', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (525, '2020-04-03 08:01:18.968815', '59', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0057 - RETNO ASTUTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (526, '2020-04-03 08:01:18.971459', '58', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (527, '2020-04-03 08:01:18.972466', '57', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (528, '2020-04-03 08:01:18.975469', '56', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (529, '2020-04-03 08:01:18.976478', '55', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (530, '2020-04-03 08:01:18.978818', '54', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (531, '2020-04-03 08:01:18.979820', '53', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (532, '2020-04-03 08:01:18.983838', '52', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0006 - ANGGA WIBISONO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (533, '2020-04-03 08:01:18.985817', '51', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0018 - GALANG SETIAWAN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (534, '2020-04-03 08:01:18.987835', '50', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (535, '2020-04-03 08:01:18.989815', '49', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (536, '2020-04-03 08:01:18.991831', '48', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (537, '2020-04-03 08:01:18.993407', '47', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (538, '2020-04-03 08:01:18.995427', '46', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (539, '2020-04-03 08:01:18.997408', '45', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (540, '2020-04-03 08:01:18.999839', '44', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (541, '2020-04-03 08:01:19.000842', '43', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (542, '2020-04-03 08:01:19.003996', '42', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (543, '2020-04-03 08:01:19.005019', '41', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0027 - YULVA IRFAN ANAS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (544, '2020-04-03 08:01:19.007565', '40', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (545, '2020-04-03 08:01:19.008528', '39', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (546, '2020-04-03 08:01:19.011185', '38', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (547, '2020-04-03 08:01:19.012192', '37', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0005 - SUCI DEWANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (548, '2020-04-03 08:01:19.015187', '36', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0007 - RISKY FERIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (549, '2020-04-03 08:01:19.016200', '35', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (550, '2020-04-03 08:01:19.019204', '34', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (551, '2020-04-03 08:01:19.020187', '33', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (552, '2020-04-03 08:01:19.023221', '32', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (553, '2020-04-03 08:01:19.025242', '31', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0018 - AHMAD RIVAI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (554, '2020-04-03 08:19:03.795692', '146', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0016 - IKA ARI SASMITA', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (555, '2020-04-03 08:19:15.124396', '145', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0008 - IQBAL ARDIWIJAYA', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (556, '2020-04-03 08:20:58.790629', '179', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (557, '2020-04-03 08:21:06.823801', '175', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0015 - BAHRUL SAWABUDIN', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (558, '2020-04-05 06:49:18.571266', '140', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (559, '2020-04-05 06:50:57.084913', '185', '2019/2020-SIM3707 - Data Mining 2-16.1.03.03.0006 - ANGGA WIBISONO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (560, '2020-04-05 06:50:57.109084', '184', '2019/2020-SIM3707 - Data Mining 2-16.1.03.03.0018 - GALANG SETIAWAN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (561, '2020-04-05 06:50:57.123184', '183', '2019/2020-SIM3707 - Data Mining 2-16.1.03.03.0027 - YULVA IRFAN ANAS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (562, '2020-04-05 06:50:57.125142', '182', '2019/2020-SIM3707 - Data Mining 2-16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (563, '2020-04-05 06:50:57.128141', '181', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (564, '2020-04-05 06:50:57.129162', '180', '2019/2020-SIM3707 - Data Mining 2-19.1.03.03.0057 - RETNO ASTUTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (565, '2020-04-05 06:50:57.132123', '179', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (566, '2020-04-05 06:50:57.133503', '178', '2019/2020-SIM3707 - Data Mining 2-19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (567, '2020-04-05 06:50:57.135504', '177', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (568, '2020-04-05 06:50:57.137504', '176', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (569, '2020-04-05 06:50:57.141501', '175', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (570, '2020-04-05 06:50:57.143501', '174', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (571, '2020-04-05 06:50:57.154687', '173', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (572, '2020-04-05 06:50:57.158300', '172', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (573, '2020-04-05 06:50:57.161329', '171', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (574, '2020-04-05 06:50:57.164779', '170', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (575, '2020-04-05 06:50:57.166637', '169', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (576, '2020-04-05 06:50:57.170642', '168', '2019/2020-SIM3707 - Data Mining 2-16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (577, '2020-04-05 06:50:57.173645', '167', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (578, '2020-04-05 06:50:57.184759', '166', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (579, '2020-04-05 06:50:57.187874', '165', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (580, '2020-04-05 06:50:57.191774', '164', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (581, '2020-04-05 06:50:57.195749', '163', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (582, '2020-04-05 06:50:57.197790', '162', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (583, '2020-04-05 06:50:57.201762', '161', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0007 - RISKY FERIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (584, '2020-04-05 06:50:57.204768', '160', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (585, '2020-04-05 06:50:57.208790', '159', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (586, '2020-04-05 06:50:57.210795', '158', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (587, '2020-04-05 06:50:57.214811', '157', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (588, '2020-04-05 06:50:57.216654', '156', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0018 - AHMAD RIVAI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (589, '2020-04-05 06:50:57.220682', '155', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0005 - SUCI DEWANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (590, '2020-04-05 06:50:57.222720', '154', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0006 - ANGGA WIBISONO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (591, '2020-04-05 06:50:57.226678', '153', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0018 - GALANG SETIAWAN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (592, '2020-04-05 06:50:57.229657', '152', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0027 - YULVA IRFAN ANAS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (593, '2020-04-05 06:50:57.232212', '151', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0004 - ENOS BUNGSENIOR KAMBA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (594, '2020-04-05 06:50:57.236216', '150', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0013 - LUTFI ABUNIZAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (595, '2020-04-05 06:50:57.238215', '149', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0057 - RETNO ASTUTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (596, '2020-04-05 06:50:57.241959', '148', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (597, '2020-04-05 06:50:57.245961', '147', '2019/2020-SIM3707 - Data Mining 1-19.1.03.03.0056 - ARIF SIDIK PERMANA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (598, '2020-04-05 06:50:57.248984', '146', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0016 - IKA ARI SASMITA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (599, '2020-04-05 06:50:57.251959', '145', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0008 - IQBAL ARDIWIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (600, '2020-04-05 06:50:57.255956', '144', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0015 - BAHRUL SAWABUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (601, '2020-04-05 06:50:57.257955', '143', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0011 - AZIS NURDIANSYAH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (602, '2020-04-05 06:50:57.261964', '142', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0028 - NUR LATHIF DHONI FATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (603, '2020-04-05 06:50:57.264405', '141', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0021 - NAUFAL RIZQULLOH', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (604, '2020-04-05 06:50:57.268408', '140', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0014 - WAHYU WIDI WIDAYAT', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (605, '2020-04-05 06:50:57.272414', '139', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0030 - RICO INDRA ARYADI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (606, '2020-04-05 06:50:57.274408', '138', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0024 - STYAWAN ARDIRIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (607, '2020-04-05 06:50:57.278376', '137', '2019/2020-SIM3707 - Data Mining 1-16.1.03.03.0017 - GERY HENDRI VEENTOAR', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (608, '2020-04-05 06:50:57.280370', '136', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0003 - DIMAS ABIMANYU', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (609, '2020-04-05 06:50:57.284373', '135', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0025 - RAHMAD RIZA BAHRUDIN', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (610, '2020-04-05 06:50:57.286349', '134', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0020 - REZA CANDRA PRAMADYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (611, '2020-04-05 06:50:57.290467', '133', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0012 - BASTIAN DWIKI PRASETYO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (612, '2020-04-05 06:50:57.292480', '132', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0001 - YONGKI DYNO OKA SATRIA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (613, '2020-04-05 06:50:57.296495', '131', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0006 - DWIKI NURHAPY', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (614, '2020-04-05 06:50:57.298380', '130', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0007 - RISKY FERIANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (615, '2020-04-05 06:50:57.302388', '129', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0029 - FERI TRI HARIYANTO', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (616, '2020-04-05 06:50:57.304387', '128', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0010 - ERFIAN DANU ARIUS', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (617, '2020-04-05 06:50:57.308405', '127', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0002 - SOFIANA YULI DAMAYANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (618, '2020-04-05 06:50:57.311435', '126', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0027 - TAMORA NONIA WIJAYA', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (619, '2020-04-05 06:50:57.314869', '125', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0018 - AHMAD RIVAI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (620, '2020-04-05 06:50:57.317317', '124', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0005 - SUCI DEWANTI', 3, '', 19, 1);
INSERT INTO `django_admin_log` VALUES (621, '2020-04-05 06:53:59.815744', '198', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0003 - DIMAS ABIMANYU', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (622, '2020-04-05 06:54:08.395572', '205', '2019/2020-SIM3707 - Data Mining 1-17.1.03.03.0011 - AZIS NURDIANSYAH', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (623, '2020-04-11 08:12:55.499036', '241', '2019/2020-SIM3707 - Data Mining 2-17.1.03.03.0017 - SINGGIH ONGKY PRATOMO', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);
INSERT INTO `django_admin_log` VALUES (624, '2020-04-11 08:13:05.116623', '230', '2019/2020-SIM3707 - Data Mining 2-16.1.03.03.0017 - GERY HENDRI VEENTOAR', 2, '[{\"changed\": {\"fields\": [\"presensi\"]}}]', 19, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'olahDataDosen', 'dosen');
INSERT INTO `django_content_type` VALUES (18, 'olahDataJurnalKuliah', 'detiljurnalkuliah');
INSERT INTO `django_content_type` VALUES (17, 'olahDataJurnalKuliah', 'jurnalkuliah');
INSERT INTO `django_content_type` VALUES (20, 'olahDataJurnalKuliah', 'pesertakuliah');
INSERT INTO `django_content_type` VALUES (10, 'olahDataMahasiswa', 'mahasiswa');
INSERT INTO `django_content_type` VALUES (7, 'olahDataMatakuliah', 'matakuliah');
INSERT INTO `django_content_type` VALUES (12, 'olahDataRPS', 'detilrps');
INSERT INTO `django_content_type` VALUES (16, 'olahDataRPS', 'pustaka');
INSERT INTO `django_content_type` VALUES (13, 'olahDataRPS', 'referensi');
INSERT INTO `django_content_type` VALUES (11, 'olahDataRPS', 'rps');
INSERT INTO `django_content_type` VALUES (19, 'presensiKuliah', 'presensi');
INSERT INTO `django_content_type` VALUES (14, 'rps', 'fakultas');
INSERT INTO `django_content_type` VALUES (15, 'rps', 'prodi');
INSERT INTO `django_content_type` VALUES (8, 'rps', 'userprofiles');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-01-25 06:44:13.193033');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-01-25 06:44:13.530016');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-01-25 06:44:14.338388');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-01-25 06:44:14.495578');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-25 06:44:14.520031');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-01-25 06:44:14.651428');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-01-25 06:44:14.730493');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-01-25 06:44:14.821266');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-01-25 06:44:14.829964');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-01-25 06:44:14.893833');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-01-25 06:44:14.901834');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-25 06:44:14.915273');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-01-25 06:44:15.035993');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-25 06:44:15.118547');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-01-25 06:44:15.206186');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-01-25 06:44:15.216198');
INSERT INTO `django_migrations` VALUES (17, 'sessions', '0001_initial', '2020-01-25 06:44:15.262385');
INSERT INTO `django_migrations` VALUES (18, 'olahDataMatakuliah', '0001_initial', '2020-02-15 16:58:54.998505');
INSERT INTO `django_migrations` VALUES (19, 'olahDataMatakuliah', '0002_auto_20200216_1446', '2020-02-16 07:47:02.052267');
INSERT INTO `django_migrations` VALUES (20, 'rps', '0001_initial', '2020-02-16 07:47:02.144521');
INSERT INTO `django_migrations` VALUES (21, 'rps', '0002_auto_20200217_0954', '2020-02-17 02:54:44.734771');
INSERT INTO `django_migrations` VALUES (22, 'olahDataDosen', '0001_initial', '2020-02-17 02:54:44.829813');
INSERT INTO `django_migrations` VALUES (23, 'olahDataMahasiswa', '0001_initial', '2020-02-17 03:34:03.333580');
INSERT INTO `django_migrations` VALUES (24, 'olahDataMatakuliah', '0003_matakuliah_jmlpertemuan', '2020-02-17 15:05:00.239513');
INSERT INTO `django_migrations` VALUES (25, 'olahDataRPS', '0001_initial', '2020-02-17 15:05:00.308036');
INSERT INTO `django_migrations` VALUES (26, 'rps', '0003_userprofiles_alamat', '2020-02-17 15:05:00.507428');
INSERT INTO `django_migrations` VALUES (27, 'olahDataRPS', '0002_auto_20200218_1310', '2020-02-18 06:11:21.749317');
INSERT INTO `django_migrations` VALUES (28, 'olahDataRPS', '0003_auto_20200218_2043', '2020-02-18 13:43:55.400864');
INSERT INTO `django_migrations` VALUES (29, 'olahDataRPS', '0004_detilrps_referensi', '2020-02-18 15:05:07.706345');
INSERT INTO `django_migrations` VALUES (30, 'olahDataMatakuliah', '0004_auto_20200219_1059', '2020-02-19 04:00:06.201251');
INSERT INTO `django_migrations` VALUES (31, 'olahDataRPS', '0005_auto_20200219_1059', '2020-02-19 04:00:06.326206');
INSERT INTO `django_migrations` VALUES (32, 'olahDataRPS', '0006_auto_20200219_1147', '2020-02-19 04:47:46.937526');
INSERT INTO `django_migrations` VALUES (33, 'rps', '0004_auto_20200220_1641', '2020-02-20 09:41:52.004241');
INSERT INTO `django_migrations` VALUES (34, 'rps', '0005_auto_20200220_1729', '2020-02-20 10:30:00.905195');
INSERT INTO `django_migrations` VALUES (35, 'rps', '0006_auto_20200220_1733', '2020-02-20 10:33:38.242521');
INSERT INTO `django_migrations` VALUES (36, 'olahDataRPS', '0007_auto_20200220_1739', '2020-02-20 10:39:19.180977');
INSERT INTO `django_migrations` VALUES (37, 'olahDataDosen', '0002_auto_20200221_1543', '2020-02-21 08:43:33.501171');
INSERT INTO `django_migrations` VALUES (38, 'olahDataDosen', '0003_auto_20200221_1613', '2020-02-21 09:13:35.695194');
INSERT INTO `django_migrations` VALUES (39, 'olahDataDosen', '0004_auto_20200221_1614', '2020-02-21 09:14:53.674111');
INSERT INTO `django_migrations` VALUES (40, 'olahDataDosen', '0005_auto_20200222_1112', '2020-02-22 04:12:26.043174');
INSERT INTO `django_migrations` VALUES (41, 'olahDataMatakuliah', '0005_auto_20200223_2135', '2020-02-23 14:35:15.554197');
INSERT INTO `django_migrations` VALUES (42, 'olahDataMatakuliah', '0006_auto_20200223_2142', '2020-02-23 14:42:26.903624');
INSERT INTO `django_migrations` VALUES (43, 'olahDataDosen', '0006_auto_20200225_1802', '2020-02-25 11:02:52.522329');
INSERT INTO `django_migrations` VALUES (44, 'olahDataRPS', '0008_auto_20200225_1802', '2020-02-25 11:02:52.531683');
INSERT INTO `django_migrations` VALUES (45, 'olahDataMatakuliah', '0007_auto_20200225_2147', '2020-02-25 14:47:37.172115');
INSERT INTO `django_migrations` VALUES (46, 'olahDataDosen', '0007_auto_20200225_2153', '2020-02-25 14:53:49.922877');
INSERT INTO `django_migrations` VALUES (47, 'olahDataDosen', '0008_auto_20200227_0852', '2020-02-27 01:53:09.585459');
INSERT INTO `django_migrations` VALUES (48, 'olahDataRPS', '0009_auto_20200227_0852', '2020-02-27 01:53:09.617492');
INSERT INTO `django_migrations` VALUES (49, 'olahDataMatakuliah', '0008_auto_20200227_1556', '2020-02-27 08:56:39.368242');
INSERT INTO `django_migrations` VALUES (50, 'olahDataRPS', '0010_auto_20200227_1556', '2020-02-27 08:56:39.406933');
INSERT INTO `django_migrations` VALUES (51, 'olahDataRPS', '0011_auto_20200228_1035', '2020-02-28 03:35:11.235765');
INSERT INTO `django_migrations` VALUES (52, 'olahDataRPS', '0012_auto_20200228_1036', '2020-02-28 03:37:05.015858');
INSERT INTO `django_migrations` VALUES (53, 'olahDataRPS', '0013_auto_20200229_1212', '2020-02-29 05:12:13.170227');
INSERT INTO `django_migrations` VALUES (54, 'rps', '0007_fakultas_prodi', '2020-02-29 05:12:13.425785');
INSERT INTO `django_migrations` VALUES (55, 'rps', '0008_userprofiles_programstudi', '2020-03-01 04:54:52.414007');
INSERT INTO `django_migrations` VALUES (56, 'olahDataMatakuliah', '0009_matakuliah_programstudi', '2020-03-01 04:54:52.567966');
INSERT INTO `django_migrations` VALUES (57, 'olahDataMahasiswa', '0002_auto_20200301_2115', '2020-03-01 14:15:55.824478');
INSERT INTO `django_migrations` VALUES (58, 'rps', '0009_auto_20200301_2115', '2020-03-01 14:15:55.832474');
INSERT INTO `django_migrations` VALUES (59, 'olahDataMahasiswa', '0003_auto_20200305_1047', '2020-03-05 06:32:27.557139');
INSERT INTO `django_migrations` VALUES (60, 'olahDataMatakuliah', '0010_matakuliah_rumpunmatakuliah', '2020-03-05 06:32:27.751028');
INSERT INTO `django_migrations` VALUES (61, 'olahDataRPS', '0014_auto_20200305_1047', '2020-03-05 06:32:28.276225');
INSERT INTO `django_migrations` VALUES (62, 'olahDataRPS', '0015_auto_20200305_1332', '2020-03-05 06:32:29.105331');
INSERT INTO `django_migrations` VALUES (63, 'olahDataRPS', '0016_auto_20200305_1358', '2020-03-05 06:58:24.502164');
INSERT INTO `django_migrations` VALUES (64, 'olahDataRPS', '0017_auto_20200309_0717', '2020-03-09 00:17:12.625907');
INSERT INTO `django_migrations` VALUES (65, 'olahDataRPS', '0018_pustaka', '2020-03-09 04:20:06.869101');
INSERT INTO `django_migrations` VALUES (66, 'olahDataRPS', '0019_auto_20200309_1122', '2020-03-09 04:23:01.771238');
INSERT INTO `django_migrations` VALUES (67, 'olahDataRPS', '0020_auto_20200309_1239', '2020-03-09 06:54:46.601913');
INSERT INTO `django_migrations` VALUES (68, 'olahDataRPS', '0021_auto_20200309_1354', '2020-03-09 06:54:46.773776');
INSERT INTO `django_migrations` VALUES (69, 'olahDataRPS', '0023_auto_20200310_1924', '2020-03-10 23:09:10.199974');
INSERT INTO `django_migrations` VALUES (70, 'olahDataRPS', '0024_auto_20200311_0558', '2020-03-10 23:21:37.435828');
INSERT INTO `django_migrations` VALUES (71, 'olahDataRPS', '0025_remove_rps_idref', '2020-03-10 23:43:51.146366');
INSERT INTO `django_migrations` VALUES (72, 'olahDataJurnalKuliah', '0001_initial', '2020-03-11 08:01:45.804138');
INSERT INTO `django_migrations` VALUES (73, 'olahDataJurnalKuliah', '0002_auto_20200311_1506', '2020-03-11 08:06:22.428757');
INSERT INTO `django_migrations` VALUES (74, 'olahDataJurnalKuliah', '0003_auto_20200311_1536', '2020-03-11 09:18:46.970992');
INSERT INTO `django_migrations` VALUES (75, 'olahDataJurnalKuliah', '0004_auto_20200311_1618', '2020-03-11 09:18:47.064736');
INSERT INTO `django_migrations` VALUES (76, 'olahDataJurnalKuliah', '0005_detiljurnalkuliah', '2020-03-11 13:33:16.148358');
INSERT INTO `django_migrations` VALUES (77, 'presensiKuliah', '0001_initial', '2020-03-11 13:33:16.292500');
INSERT INTO `django_migrations` VALUES (78, 'olahDataJurnalKuliah', '0006_auto_20200311_2039', '2020-03-11 13:39:36.272339');
INSERT INTO `django_migrations` VALUES (79, 'olahDataJurnalKuliah', '0007_auto_20200311_2052', '2020-03-11 14:08:14.376162');
INSERT INTO `django_migrations` VALUES (80, 'presensiKuliah', '0002_auto_20200311_2052', '2020-03-11 14:17:14.373319');
INSERT INTO `django_migrations` VALUES (81, 'presensiKuliah', '0003_auto_20200311_2108', '2020-03-11 14:17:14.725030');
INSERT INTO `django_migrations` VALUES (82, 'presensiKuliah', '0004_auto_20200311_2111', '2020-03-11 14:17:14.751895');
INSERT INTO `django_migrations` VALUES (83, 'presensiKuliah', '0005_auto_20200311_2112', '2020-03-11 14:17:14.868999');
INSERT INTO `django_migrations` VALUES (84, 'presensiKuliah', '0006_auto_20200311_2124', '2020-03-11 14:24:57.927186');
INSERT INTO `django_migrations` VALUES (85, 'olahDataRPS', '0026_rps_rumpun', '2020-03-14 07:35:30.965242');
INSERT INTO `django_migrations` VALUES (86, 'olahDataRPS', '0027_auto_20200314_1435', '2020-03-14 07:35:30.983917');
INSERT INTO `django_migrations` VALUES (87, 'olahDataRPS', '0028_detilrps_pertemuan', '2020-03-14 10:36:08.890534');
INSERT INTO `django_migrations` VALUES (88, 'olahDataRPS', '0029_auto_20200317_2251', '2020-03-17 15:51:53.801684');
INSERT INTO `django_migrations` VALUES (89, 'olahDataRPS', '0030_remove_referensi_refpustaka', '2020-03-17 15:52:26.747732');
INSERT INTO `django_migrations` VALUES (90, 'olahDataJurnalKuliah', '0008_jurnalkuliah_kelas', '2020-03-18 14:02:37.370423');
INSERT INTO `django_migrations` VALUES (91, 'presensiKuliah', '0007_auto_20200324_1319', '2020-03-24 06:20:54.565261');
INSERT INTO `django_migrations` VALUES (92, 'olahDataMahasiswa', '0004_auto_20200325_1254', '2020-03-25 05:54:37.088456');
INSERT INTO `django_migrations` VALUES (93, 'olahDataMahasiswa', '0005_auto_20200326_1406', '2020-03-26 07:07:14.997486');
INSERT INTO `django_migrations` VALUES (94, 'olahDataMahasiswa', '0006_remove_mahasiswa_nik', '2020-03-26 07:08:58.540310');
INSERT INTO `django_migrations` VALUES (95, 'olahDataMahasiswa', '0007_auto_20200327_1341', '2020-03-27 06:41:37.676837');
INSERT INTO `django_migrations` VALUES (96, 'presensiKuliah', '0008_auto_20200401_1343', '2020-04-01 06:43:54.257296');
INSERT INTO `django_migrations` VALUES (97, 'olahDataJurnalKuliah', '0009_pesertakuliah', '2020-04-01 15:01:27.081329');
INSERT INTO `django_migrations` VALUES (98, 'presensiKuliah', '0009_presensi_nilai', '2020-04-03 07:31:09.923863');
INSERT INTO `django_migrations` VALUES (99, 'presensiKuliah', '0010_auto_20200405_1352', '2020-04-05 06:52:43.740400');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('abpa93vchfxwseqlb4xqlj4dovg7f50y', 'MzczZGIxOTkyOTU4ZjM5OTZmZjRjNDVkMWEyYTNjYWUxZjkxMGFjZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODU2ZTg0YTM1NWVhZjZhNzYyN2VmZGZjN2EyNTkxNGUyZjA4MWNhIn0=', '2020-04-29 14:52:40.727361');
INSERT INTO `django_session` VALUES ('jtp3oqt4y88ekdk732t6q2hbtn5vmtew', 'MzczZGIxOTkyOTU4ZjM5OTZmZjRjNDVkMWEyYTNjYWUxZjkxMGFjZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODU2ZTg0YTM1NWVhZjZhNzYyN2VmZGZjN2EyNTkxNGUyZjA4MWNhIn0=', '2020-04-01 09:14:07.287031');
INSERT INTO `django_session` VALUES ('mcxlm6ykn6t8f310sb1p9ofxm6rrtgr1', 'MzczZGIxOTkyOTU4ZjM5OTZmZjRjNDVkMWEyYTNjYWUxZjkxMGFjZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODU2ZTg0YTM1NWVhZjZhNzYyN2VmZGZjN2EyNTkxNGUyZjA4MWNhIn0=', '2020-04-15 14:47:19.832629');
INSERT INTO `django_session` VALUES ('yn091nbatqv6umkyuqjcpimuip70fnhd', 'MzczZGIxOTkyOTU4ZjM5OTZmZjRjNDVkMWEyYTNjYWUxZjkxMGFjZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlODU2ZTg0YTM1NWVhZjZhNzYyN2VmZGZjN2EyNTkxNGUyZjA4MWNhIn0=', '2020-03-18 03:46:38.970552');

-- ----------------------------
-- Table structure for olahdatadosen_dosen
-- ----------------------------
DROP TABLE IF EXISTS `olahdatadosen_dosen`;
CREATE TABLE `olahdatadosen_dosen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nidn` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jabatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `golongan` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nik_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `olahDataDosen_dosen_nik_id_ff9d931d_uniq`(`nik_id`) USING BTREE,
  UNIQUE INDEX `olahDataDosen_dosen_nidn_41bfe98e_uniq`(`nidn`) USING BTREE,
  CONSTRAINT `olahDataDosen_dosen_nik_id_ff9d931d_fk_rps_userprofiles_id` FOREIGN KEY (`nik_id`) REFERENCES `rps_userprofiles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatadosen_dosen
-- ----------------------------
INSERT INTO `olahdatadosen_dosen` VALUES (1, '0721018801', 'Asisten Ahli', '3c', 1);
INSERT INTO `olahdatadosen_dosen` VALUES (17, '1221', 'Guru Besar', '4e', 4);

-- ----------------------------
-- Table structure for olahdatajurnalkuliah_detiljurnalkuliah
-- ----------------------------
DROP TABLE IF EXISTS `olahdatajurnalkuliah_detiljurnalkuliah`;
CREATE TABLE `olahdatajurnalkuliah_detiljurnalkuliah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertemuan` smallint(6) NOT NULL,
  `tanggal` date NOT NULL,
  `jamMulai` time(6) NOT NULL,
  `jamSelesai` time(6) NOT NULL,
  `materi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jurnal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `olahDataJurnalKuliah_jurnal_id_78cb0616_fk_olahDataJ`(`jurnal_id`) USING BTREE,
  CONSTRAINT `olahDataJurnalKuliah_jurnal_id_78cb0616_fk_olahDataJ` FOREIGN KEY (`jurnal_id`) REFERENCES `olahdatajurnalkuliah_jurnalkuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatajurnalkuliah_detiljurnalkuliah
-- ----------------------------
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (12, 1, '2020-03-19', '05:27:06.000000', '09:00:07.000000', 'Pengenalan Data Mining', 'Metode', 9);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (15, 1, '2020-03-20', '07:00:00.000000', '09:00:00.000000', 'materi pembelajaran logika algoritma, ========= Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer porttitor accumsan augue, eget faucibus neque iaculis et. Integer euismod auctor velit non scelerisque. Aenean id auctor nibh. Nam malesuada, ipsum ac rutrum ornare, ligula nulla consequat risus, et ullamcorper mi eros a felis. Curabitur et dui vel tortor semper pretium. Proin eleifend felis lorem. Proin ut urna massa. Nullam aliquet dignissim velit vitae rutrum. Duis scelerisque congue iaculis. In vitae lobortis quam. Donec vitae ante lorem. Cras lacinia accumsan magna, sed mattis magna malesuada sed. Quisque quis erat suscipit, accumsan enim a, condimentum dui. Sed vel enim fermentum, ullamcorper turpis bibendum, gravida neque.\r\n\r\nQuisque quis imperdiet quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus fringilla fermentum diam et dignissim. Fusce tristique elit ultrices pulvinar mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus fermentum, tortor eget cursus fringilla, erat dui porttitor libero, eu semper nisl dui vitae tellus. Vivamus sed placerat mauris, sed rutrum nunc. Nam nec feugiat justo. Duis scelerisque fringilla aliquet.\r\n\r\nDonec eget urna quam. Morbi congue libero in pretium sagittis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin tristique, erat in euismod dapibus, lectus eros hendrerit ex, eget vulputate arcu magna in lacus. Nam facilisis ut velit ac dignissim. Quisque eget placerat elit. Nunc gravida aliquam odio, sit amet vulputate felis scelerisque et. Nulla cursus pharetra justo id accumsan. Curabitur viverra, ante ac maximus sodales, orci metus fringilla augue, sed laoreet felis mauris vitae felis. Aliquam augue justo, auctor ac aliquet ut, dapibus nec augue. Morbi iaculis, urna ut congue eleifend, elit orci rhoncus massa, a tincidunt nunc sem vitae lorem.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. In scelerisque tempor sem quis venenatis. Donec urna erat, mattis ac lobortis nec, auctor eget turpis. Donec aliquet arcu quis scelerisque facilisis. Ut sodales a lorem vel porta. Mauris sagittis nisl quis felis vestibulum aliquam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam lectus metus, viverra id odio non, tempus mattis purus. Quisque iaculis ante in porta consectetur. Nam eu sodales sapien. Nulla facilisi.\r\n\r\nProin purus quam, fermentum sit amet consequat in, porta quis elit. Sed non elit egestas lacus posuere suscipit id consequat mi. Sed fermentum congue commodo. Donec et massa sit amet lorem placerat finibus quis auctor arcu. Cras sit amet tortor egestas, ornare sapien et, tincidunt risus. Praesent quis lorem non lorem auctor pulvinar. Morbi blandit augue ac neque vestibulum semper. Cras pretium urna et nunc placerat, ac laoreet mi ornare. Phasellus lacinia auctor tellus, eu elementum diam tincidunt nec. Sed magna sem, laoreet at vestibulum vel, eleifend vel dolor. Fusce in lorem turpis.', 'metode pembelajaran logika algoritma', 8);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (16, 2, '2020-03-27', '09:00:00.000000', '11:00:00.000000', 'Materi pembelajaran logika dan algoritma', 'metode pembelajaran logika dan algoritma', 8);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (17, 3, '2020-04-02', '08:00:00.000000', '09:00:00.000000', 'Materi pembelajaran logika dan algoritma', 'metode pembelajaran logika dan algoritma', 8);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (18, 2, '2020-04-03', '08:00:00.000000', '10:00:00.000000', 'Preprocessing', 'Ceramah Diskusi dan tugas mandiri', 9);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (19, 3, '2020-04-13', '08:00:00.000000', '09:00:00.000000', 'Materi Pembelajaran 3', 'Metode Pembelajaran 3', 9);

-- ----------------------------
-- Table structure for olahdatajurnalkuliah_jurnalkuliah
-- ----------------------------
DROP TABLE IF EXISTS `olahdatajurnalkuliah_jurnalkuliah`;
CREATE TABLE `olahdatajurnalkuliah_jurnalkuliah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahunAjaran` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dosenPengajar_id` int(11) NOT NULL,
  `mk_id` int(11) NOT NULL,
  `pjmk` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ruang` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `semester` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kelas` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `olahDataJurnalKuliah_dosenPengajar_id_7f872396_fk_olahDataD`(`dosenPengajar_id`) USING BTREE,
  INDEX `olahDataJurnalKuliah_mk_id_026938f7_fk_olahDataM`(`mk_id`) USING BTREE,
  CONSTRAINT `olahDataJurnalKuliah_dosenPengajar_id_7f872396_fk_olahDataD` FOREIGN KEY (`dosenPengajar_id`) REFERENCES `olahdatadosen_dosen` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `olahDataJurnalKuliah_mk_id_026938f7_fk_olahDataM` FOREIGN KEY (`mk_id`) REFERENCES `olahdatamatakuliah_matakuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatajurnalkuliah_jurnalkuliah
-- ----------------------------
INSERT INTO `olahdatajurnalkuliah_jurnalkuliah` VALUES (7, '2019/2020', 17, 6, 'ad', 'm5', 'Gasal', '1A');
INSERT INTO `olahdatajurnalkuliah_jurnalkuliah` VALUES (8, '2019/2020', 1, 2, 'pjmk1', 'm5', 'Gasal', '1A');
INSERT INTO `olahdatajurnalkuliah_jurnalkuliah` VALUES (9, '2019/2020', 1, 1, 'ika', 'm5s', 'Genap', '3A');

-- ----------------------------
-- Table structure for olahdatajurnalkuliah_pesertakuliah
-- ----------------------------
DROP TABLE IF EXISTS `olahdatajurnalkuliah_pesertakuliah`;
CREATE TABLE `olahdatajurnalkuliah_pesertakuliah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jurnal_id` int(11) NOT NULL,
  `peserta_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `olahDataJurnalKuliah_jurnal_id_019ead3b_fk_olahDataJ`(`jurnal_id`) USING BTREE,
  INDEX `olahDataJurnalKuliah_peserta_id_0379aaaf_fk_olahDataM`(`peserta_id`) USING BTREE,
  CONSTRAINT `olahDataJurnalKuliah_jurnal_id_019ead3b_fk_olahDataJ` FOREIGN KEY (`jurnal_id`) REFERENCES `olahdatajurnalkuliah_jurnalkuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `olahDataJurnalKuliah_peserta_id_0379aaaf_fk_olahDataM` FOREIGN KEY (`peserta_id`) REFERENCES `olahdatamahasiswa_mahasiswa` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatajurnalkuliah_pesertakuliah
-- ----------------------------
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (1, 9, 586);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (2, 9, 471);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (3, 9, 557);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (4, 9, 558);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (5, 9, 559);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (6, 9, 560);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (7, 9, 585);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (8, 9, 587);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (9, 9, 588);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (10, 9, 589);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (11, 9, 590);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (12, 9, 591);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (13, 9, 592);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (14, 9, 593);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (15, 9, 594);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (16, 9, 595);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (17, 9, 596);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (18, 9, 597);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (19, 9, 598);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (20, 9, 599);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (21, 9, 600);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (22, 9, 601);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (23, 9, 603);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (24, 9, 604);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (25, 9, 605);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (26, 9, 606);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (27, 9, 607);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (28, 9, 608);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (29, 9, 609);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (30, 9, 610);
INSERT INTO `olahdatajurnalkuliah_pesertakuliah` VALUES (31, 9, 611);

-- ----------------------------
-- Table structure for olahdatamahasiswa_mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `olahdatamahasiswa_mahasiswa`;
CREATE TABLE `olahdatamahasiswa_mahasiswa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `npm` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahunMasuk` int(11) NULL DEFAULT NULL,
  `kelas` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `agama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `jenisKelamin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `noKTP` int(11) NULL DEFAULT NULL,
  `tanggalLahir` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `olahDataMahasiswa_mahasiswa_npm_6e298682_uniq`(`npm`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 612 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatamahasiswa_mahasiswa
-- ----------------------------
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (1, '12121212', 2013, NULL, NULL, '', NULL, 'Paijan Seplak', NULL, '2020-03-18');
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (3, '101010', 2013, 'as', NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (471, '17.1.03.03.0018', NULL, NULL, NULL, '', NULL, 'AHMAD RIVAI', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (472, '18.1.03.03.0015', NULL, NULL, NULL, '', NULL, 'DIMAS ADAM SAPUTRA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (557, '17.1.03.03.0027', NULL, NULL, NULL, '', NULL, 'TAMORA NONIA WIJAYA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (558, '17.1.03.03.0002', NULL, NULL, NULL, '', NULL, 'SOFIANA YULI DAMAYANTI', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (559, '17.1.03.03.0010', NULL, NULL, NULL, '', NULL, 'ERFIAN DANU ARIUS', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (560, '17.1.03.03.0029', NULL, NULL, NULL, '', NULL, 'FERI TRI HARIYANTO', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (585, '17.1.03.03.0007', NULL, NULL, NULL, '', NULL, 'RISKY FERIANTO', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (586, '17.1.03.03.0005', NULL, NULL, NULL, '', NULL, 'SUCI DEWANTI', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (587, '17.1.03.03.0006', NULL, NULL, NULL, '', NULL, 'DWIKI NURHAPY', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (588, '17.1.03.03.0001', NULL, NULL, NULL, '', NULL, 'YONGKI DYNO OKA SATRIA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (589, '17.1.03.03.0012', NULL, NULL, NULL, '', NULL, 'BASTIAN DWIKI PRASETYO', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (590, '17.1.03.03.0020', NULL, NULL, NULL, '', NULL, 'REZA CANDRA PRAMADYA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (591, '17.1.03.03.0025', NULL, NULL, NULL, '', NULL, 'RAHMAD RIZA BAHRUDIN', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (592, '17.1.03.03.0003', NULL, NULL, NULL, '', NULL, 'DIMAS ABIMANYU', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (593, '16.1.03.03.0017', NULL, NULL, NULL, '', NULL, 'GERY HENDRI VEENTOAR', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (594, '17.1.03.03.0024', NULL, NULL, NULL, '', NULL, 'STYAWAN ARDIRIANTO', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (595, '17.1.03.03.0030', NULL, NULL, NULL, '', NULL, 'RICO INDRA ARYADI', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (596, '17.1.03.03.0014', NULL, NULL, NULL, '', NULL, 'WAHYU WIDI WIDAYAT', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (597, '17.1.03.03.0021', NULL, NULL, NULL, '', NULL, 'NAUFAL RIZQULLOH', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (598, '17.1.03.03.0028', NULL, NULL, NULL, '', NULL, 'NUR LATHIF DHONI FATRIA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (599, '17.1.03.03.0011', NULL, NULL, NULL, '', NULL, 'AZIS NURDIANSYAH', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (600, '17.1.03.03.0015', NULL, NULL, NULL, '', NULL, 'BAHRUL SAWABUDIN', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (601, '17.1.03.03.0008', NULL, NULL, NULL, '', NULL, 'IQBAL ARDIWIJAYA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (602, '18.1.03.03.0044', NULL, NULL, NULL, '', NULL, 'ASTO FIRURI PRIYANDANA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (603, '17.1.03.03.0016', NULL, NULL, NULL, '', NULL, 'IKA ARI SASMITA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (604, '19.1.03.03.0056', NULL, NULL, NULL, '', NULL, 'ARIF SIDIK PERMANA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (605, '17.1.03.03.0017', NULL, NULL, NULL, '', NULL, 'SINGGIH ONGKY PRATOMO', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (606, '19.1.03.03.0057', NULL, NULL, NULL, '', NULL, 'RETNO ASTUTI', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (607, '17.1.03.03.0013', NULL, NULL, NULL, '', NULL, 'LUTFI ABUNIZAR', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (608, '16.1.03.03.0004', NULL, NULL, NULL, '', NULL, 'ENOS BUNGSENIOR KAMBA', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (609, '16.1.03.03.0027', NULL, NULL, NULL, '', NULL, 'YULVA IRFAN ANAS', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (610, '16.1.03.03.0018', NULL, NULL, NULL, '', NULL, 'GALANG SETIAWAN', NULL, NULL);
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (611, '16.1.03.03.0006', NULL, NULL, NULL, '', NULL, 'ANGGA WIBISONO', NULL, NULL);

-- ----------------------------
-- Table structure for olahdatamatakuliah_matakuliah
-- ----------------------------
DROP TABLE IF EXISTS `olahdatamatakuliah_matakuliah`;
CREATE TABLE `olahdatamatakuliah_matakuliah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `jmlPertemuan` smallint(6) NOT NULL,
  `programStudi_id` int(11) NULL DEFAULT NULL,
  `rumpunMatakuliah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `olahDataMatakuliah_matakuliah_kode_fa5042fa_uniq`(`kode`) USING BTREE,
  INDEX `olahDataMatakuliah_m_programStudi_id_98c51557_fk_rps_prodi`(`programStudi_id`) USING BTREE,
  CONSTRAINT `olahDataMatakuliah_m_programStudi_id_98c51557_fk_rps_prodi` FOREIGN KEY (`programStudi_id`) REFERENCES `rps_prodi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatamatakuliah_matakuliah
-- ----------------------------
INSERT INTO `olahdatamatakuliah_matakuliah` VALUES (1, 'SIM3707', 'Data Mining', 3, 6, 16, NULL, 'Komputer');
INSERT INTO `olahdatamatakuliah_matakuliah` VALUES (2, 'SIM3201', 'Logika dan Algoritma', 3, 1, 16, NULL, NULL);
INSERT INTO `olahdatamatakuliah_matakuliah` VALUES (6, 'SIM3702', 'Matakuliah Percobaan 2', 3, 1, 16, NULL, NULL);

-- ----------------------------
-- Table structure for olahdatarps_detilrps
-- ----------------------------
DROP TABLE IF EXISTS `olahdatarps_detilrps`;
CREATE TABLE `olahdatarps_detilrps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kemampuan` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `indikatorPenilaian` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bentukMetodeBelajar` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `teknikPenilaian` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kriteriaPenilaian` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bobotPenilaian` smallint(6) NOT NULL,
  `idRps_id` int(11) NOT NULL,
  `materiBelajar` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengalamanBelajarOffline` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengalamanBelajarOnlineAsinkron` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pengalamanBelajarOnlineSinkron` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pertemuan` smallint(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `olahDataRPS_detilrps_idRps_id_aaad56b1_fk_olahDataRPS_rps_id`(`idRps_id`) USING BTREE,
  CONSTRAINT `olahDataRPS_detilrps_idRps_id_aaad56b1_fk_olahDataRPS_rps_id` FOREIGN KEY (`idRps_id`) REFERENCES `olahdatarps_rps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatarps_detilrps
-- ----------------------------
INSERT INTO `olahdatarps_detilrps` VALUES (5, 'x kemampuan logika algoritma', 'indikator penilaian', 'metode pembelajaran logika algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'materi pembelajaran logika algoritma, ========= Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer porttitor accumsan augue, eget faucibus neque iaculis et. Integer euismod auctor velit non scelerisque. Aenean id auctor nibh. Nam malesuada, ipsum ac rutrum ornare, ligula nulla consequat risus, et ullamcorper mi eros a felis. Curabitur et dui vel tortor semper pretium. Proin eleifend felis lorem. Proin ut urna massa. Nullam aliquet dignissim velit vitae rutrum. Duis scelerisque congue iaculis. In vitae lobortis quam. Donec vitae ante lorem. Cras lacinia accumsan magna, sed mattis magna malesuada sed. Quisque quis erat suscipit, accumsan enim a, condimentum dui. Sed vel enim fermentum, ullamcorper turpis bibendum, gravida neque.\r\n\r\nQuisque quis imperdiet quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus fringilla fermentum diam et dignissim. Fusce tristique elit ultrices pulvinar mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus fermentum, tortor eget cursus fringilla, erat dui porttitor libero, eu semper nisl dui vitae tellus. Vivamus sed placerat mauris, sed rutrum nunc. Nam nec feugiat justo. Duis scelerisque fringilla aliquet.\r\n\r\nDonec eget urna quam. Morbi congue libero in pretium sagittis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin tristique, erat in euismod dapibus, lectus eros hendrerit ex, eget vulputate arcu magna in lacus. Nam facilisis ut velit ac dignissim. Quisque eget placerat elit. Nunc gravida aliquam odio, sit amet vulputate felis scelerisque et. Nulla cursus pharetra justo id accumsan. Curabitur viverra, ante ac maximus sodales, orci metus fringilla augue, sed laoreet felis mauris vitae felis. Aliquam augue justo, auctor ac aliquet ut, dapibus nec augue. Morbi iaculis, urna ut congue eleifend, elit orci rhoncus massa, a tincidunt nunc sem vitae lorem.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. In scelerisque tempor sem quis venenatis. Donec urna erat, mattis ac lobortis nec, auctor eget turpis. Donec aliquet arcu quis scelerisque facilisis. Ut sodales a lorem vel porta. Mauris sagittis nisl quis felis vestibulum aliquam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam lectus metus, viverra id odio non, tempus mattis purus. Quisque iaculis ante in porta consectetur. Nam eu sodales sapien. Nulla facilisi.\r\n\r\nProin purus quam, fermentum sit amet consequat in, porta quis elit. Sed non elit egestas lacus posuere suscipit id consequat mi. Sed fermentum congue commodo. Donec et massa sit amet lorem placerat finibus quis auctor arcu. Cras sit amet tortor egestas, ornare sapien et, tincidunt risus. Praesent quis lorem non lorem auctor pulvinar. Morbi blandit augue ac neque vestibulum semper. Cras pretium urna et nunc placerat, ac laoreet mi ornare. Phasellus lacinia auctor tellus, eu elementum diam tincidunt nec. Sed magna sem, laoreet at vestibulum vel, eleifend vel dolor. Fusce in lorem turpis.', 'pead', '', '', 1);
INSERT INTO `olahdatarps_detilrps` VALUES (8, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 2);
INSERT INTO `olahdatarps_detilrps` VALUES (9, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 3);
INSERT INTO `olahdatarps_detilrps` VALUES (10, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 4);
INSERT INTO `olahdatarps_detilrps` VALUES (11, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 5);
INSERT INTO `olahdatarps_detilrps` VALUES (12, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 6);
INSERT INTO `olahdatarps_detilrps` VALUES (13, 'kemampuan 1', 'indikator penilaian', 'metode belajar 1', 'teknik penilaian', 'kriteria penilaian', 30, 3, 'materi pembelajaran 1`', 'pengalaman belajar offline', 'Pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 1);
INSERT INTO `olahdatarps_detilrps` VALUES (14, 'Kemampuan', 'indikator penilaian', 'Metode Pembelajaran', 'teknik penilaian', 'kriteria penilaian', 30, 3, 'Materi Pembelajaran', 'Pengalaman Belajar Offline', 'Pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 2);
INSERT INTO `olahdatarps_detilrps` VALUES (15, 'Kemampuan 3', 'indikator penilaian', 'Metode Pembelajaran 3', 'teknik penilaian', 'kriteria penilaian', 40, 3, 'Materi Pembelajaran 3', 'Pengalaman Belajar Offline', 'Pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 3);

-- ----------------------------
-- Table structure for olahdatarps_pustaka
-- ----------------------------
DROP TABLE IF EXISTS `olahdatarps_pustaka`;
CREATE TABLE `olahdatarps_pustaka`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `author` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` smallint(6) NOT NULL,
  `kota` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penerbit` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for olahdatarps_referensi
-- ----------------------------
DROP TABLE IF EXISTS `olahdatarps_referensi`;
CREATE TABLE `olahdatarps_referensi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `refRps_id` int(11) NOT NULL,
  `author` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kota` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `penerbit` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun` smallint(6) NULL DEFAULT NULL,
  `tipe` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatarps_referensi
-- ----------------------------
INSERT INTO `olahdatarps_referensi` VALUES (5, 'utama', 2, 'Aidina Ristyawan M. Kom -', 'Judul 1a', 'Kediri', 'Kediri Publisher', 2002, 'Jurnal Pen');
INSERT INTO `olahdatarps_referensi` VALUES (6, 'pendukung', 2, 'Pengarang 1', 'bla', 'kediri', 'Kediri Publisher', 2031, 'Jurnal Pen');

-- ----------------------------
-- Table structure for olahdatarps_rps
-- ----------------------------
DROP TABLE IF EXISTS `olahdatarps_rps`;
CREATE TABLE `olahdatarps_rps`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dosenPengampu_id` int(11) NOT NULL,
  `capaianPembelajaran` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `prasyarat` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pathLokasi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kodemk_id` int(11) NOT NULL,
  `capaianPembelajaranProdi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `materiPembelajaran` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mediaBelajar` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggalPenyusunan` date NOT NULL,
  `teamTeaching` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `rumpun` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `olahDataRPS_rps_kodemk_id_09c7a658_fk_olahDataM`(`kodemk_id`) USING BTREE,
  INDEX `olahDataRPS_rps_dosenPengampu_id_e414b983`(`dosenPengampu_id`) USING BTREE,
  CONSTRAINT `olahDataRPS_rps_dosenPengampu_id_e414b983_fk_olahDataD` FOREIGN KEY (`dosenPengampu_id`) REFERENCES `olahdatadosen_dosen` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `olahDataRPS_rps_kodemk_id_09c7a658_fk_olahDataM` FOREIGN KEY (`kodemk_id`) REFERENCES `olahdatamatakuliah_matakuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatarps_rps
-- ----------------------------
INSERT INTO `olahdatarps_rps` VALUES (2, 1, 'CP Logika Algoritma\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'SIM3702', '', 'Deskripsi Matakuliah\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 2, 'CP PRODI, \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'MATERI BELAJAR,\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'MEDIA BELAJAR,\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2020-03-05', 'DOSEN TEAM TEACHING,\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '');
INSERT INTO `olahdatarps_rps` VALUES (3, 1, 'cp data mining\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '', '', 'asd', 1, '', '', '', '2020-03-08', '', '');

-- ----------------------------
-- Table structure for presensikuliah_presensi
-- ----------------------------
DROP TABLE IF EXISTS `presensikuliah_presensi`;
CREATE TABLE `presensikuliah_presensi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `npm_id` int(11) NOT NULL,
  `presensi` tinyint(1) NOT NULL,
  `jurnalPerkuliahan_id` int(11) NULL DEFAULT NULL,
  `importDate` datetime(6) NOT NULL,
  `presenceDate` datetime(6) NULL DEFAULT NULL,
  `nilai` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `presensiKuliah_prese_npm_id_3626b816_fk_olahDataM`(`npm_id`) USING BTREE,
  INDEX `presensiKuliah_prese_jurnalPerkuliahan_id_a5bd4d88_fk_olahDataJ`(`jurnalPerkuliahan_id`) USING BTREE,
  CONSTRAINT `presensiKuliah_prese_jurnalPerkuliahan_id_a5bd4d88_fk_olahDataJ` FOREIGN KEY (`jurnalPerkuliahan_id`) REFERENCES `olahdatajurnalkuliah_detiljurnalkuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `presensiKuliah_prese_npm_id_3626b816_fk_olahDataM` FOREIGN KEY (`npm_id`) REFERENCES `olahdatamahasiswa_mahasiswa` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 279 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of presensikuliah_presensi
-- ----------------------------
INSERT INTO `presensikuliah_presensi` VALUES (186, 586, 0, 12, '2020-04-05 06:52:59.304378', NULL, 100);
INSERT INTO `presensikuliah_presensi` VALUES (187, 471, 0, 12, '2020-04-05 06:52:59.311383', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (188, 557, 0, 12, '2020-04-05 06:52:59.316365', NULL, 98);
INSERT INTO `presensikuliah_presensi` VALUES (189, 558, 0, 12, '2020-04-05 06:52:59.323376', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (190, 559, 0, 12, '2020-04-05 06:52:59.328358', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (191, 560, 0, 12, '2020-04-05 06:52:59.332371', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (192, 585, 0, 12, '2020-04-05 06:52:59.335369', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (193, 587, 0, 12, '2020-04-05 06:52:59.341352', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (194, 588, 0, 12, '2020-04-05 06:52:59.345351', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (195, 589, 0, 12, '2020-04-05 06:52:59.349361', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (196, 590, 0, 12, '2020-04-05 06:52:59.353345', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (197, 591, 0, 12, '2020-04-05 06:52:59.358341', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (198, 592, 1, 12, '2020-04-05 06:52:59.361354', NULL, 45);
INSERT INTO `presensikuliah_presensi` VALUES (199, 593, 0, 12, '2020-04-05 06:52:59.366336', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (200, 594, 0, 12, '2020-04-05 06:52:59.369350', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (201, 595, 0, 12, '2020-04-05 06:52:59.373332', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (202, 596, 0, 12, '2020-04-05 06:52:59.377332', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (203, 597, 0, 12, '2020-04-05 06:52:59.381383', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (204, 598, 0, 12, '2020-04-05 06:52:59.386366', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (205, 599, 1, 12, '2020-04-05 06:52:59.391364', NULL, 100);
INSERT INTO `presensikuliah_presensi` VALUES (206, 600, 0, 12, '2020-04-05 06:52:59.395374', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (207, 601, 0, 12, '2020-04-05 06:52:59.399359', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (208, 603, 0, 12, '2020-04-05 06:52:59.402357', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (209, 604, 0, 12, '2020-04-05 06:52:59.406354', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (210, 605, 0, 12, '2020-04-05 06:52:59.410352', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (211, 606, 0, 12, '2020-04-05 06:52:59.413947', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (212, 607, 0, 12, '2020-04-05 06:52:59.416932', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (213, 608, 0, 12, '2020-04-05 06:52:59.421472', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (214, 609, 0, 12, '2020-04-05 06:52:59.424456', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (215, 610, 0, 12, '2020-04-05 06:52:59.428468', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (216, 611, 0, 12, '2020-04-05 06:52:59.431453', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (217, 586, 0, 18, '2020-04-11 08:12:34.203263', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (218, 471, 0, 18, '2020-04-11 08:12:34.211245', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (219, 557, 0, 18, '2020-04-11 08:12:34.216129', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (220, 558, 0, 18, '2020-04-11 08:12:34.220111', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (221, 559, 0, 18, '2020-04-11 08:12:34.224084', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (222, 560, 0, 18, '2020-04-11 08:12:34.229065', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (223, 585, 0, 18, '2020-04-11 08:12:34.233078', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (224, 587, 0, 18, '2020-04-11 08:12:34.236446', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (225, 588, 0, 18, '2020-04-11 08:12:34.241428', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (226, 589, 0, 18, '2020-04-11 08:12:34.245426', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (227, 590, 0, 18, '2020-04-11 08:12:34.249302', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (228, 591, 0, 18, '2020-04-11 08:12:34.252300', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (229, 592, 0, 18, '2020-04-11 08:12:34.256446', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (230, 593, 1, 18, '2020-04-11 08:12:34.260432', NULL, 98);
INSERT INTO `presensikuliah_presensi` VALUES (231, 594, 0, 18, '2020-04-11 08:12:34.265158', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (232, 595, 0, 18, '2020-04-11 08:12:34.268341', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (233, 596, 0, 18, '2020-04-11 08:12:34.274467', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (234, 597, 0, 18, '2020-04-11 08:12:34.278451', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (235, 598, 0, 18, '2020-04-11 08:12:34.283447', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (236, 599, 0, 18, '2020-04-11 08:12:34.286461', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (237, 600, 0, 18, '2020-04-11 08:12:34.290458', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (238, 601, 0, 18, '2020-04-11 08:12:34.294441', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (239, 603, 0, 18, '2020-04-11 08:12:34.298453', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (240, 604, 0, 18, '2020-04-11 08:12:34.301438', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (241, 605, 1, 18, '2020-04-11 08:12:34.305435', NULL, 75);
INSERT INTO `presensikuliah_presensi` VALUES (242, 606, 0, 18, '2020-04-11 08:12:34.309435', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (243, 607, 0, 18, '2020-04-11 08:12:34.313445', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (244, 608, 0, 18, '2020-04-11 08:12:34.316428', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (245, 609, 0, 18, '2020-04-11 08:12:34.320834', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (246, 610, 0, 18, '2020-04-11 08:12:34.323832', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (247, 611, 0, 18, '2020-04-11 08:12:34.327820', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (248, 586, 0, 19, '2020-04-11 08:21:51.430717', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (249, 471, 0, 19, '2020-04-11 08:21:51.467750', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (250, 557, 0, 19, '2020-04-11 08:21:51.471745', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (251, 558, 0, 19, '2020-04-11 08:21:51.475743', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (252, 559, 0, 19, '2020-04-11 08:21:51.483842', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (253, 560, 0, 19, '2020-04-11 08:21:51.487768', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (254, 585, 0, 19, '2020-04-11 08:21:51.491744', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (255, 587, 0, 19, '2020-04-11 08:21:51.496743', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (256, 588, 0, 19, '2020-04-11 08:21:51.501739', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (257, 589, 0, 19, '2020-04-11 08:21:51.505723', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (258, 590, 0, 19, '2020-04-11 08:21:51.509721', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (259, 591, 0, 19, '2020-04-11 08:21:51.514718', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (260, 592, 0, 19, '2020-04-11 08:21:51.518757', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (261, 593, 0, 19, '2020-04-11 08:21:51.522742', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (262, 594, 0, 19, '2020-04-11 08:21:51.527739', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (263, 595, 0, 19, '2020-04-11 08:21:51.531737', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (264, 596, 0, 19, '2020-04-11 08:21:51.535735', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (265, 597, 0, 19, '2020-04-11 08:21:51.539094', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (266, 598, 0, 19, '2020-04-11 08:21:51.543110', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (267, 599, 0, 19, '2020-04-11 08:21:51.548182', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (268, 600, 0, 19, '2020-04-11 08:21:51.551103', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (269, 601, 0, 19, '2020-04-11 08:21:51.555115', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (270, 603, 0, 19, '2020-04-11 08:21:51.558102', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (271, 604, 0, 19, '2020-04-11 08:21:51.563106', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (272, 605, 0, 19, '2020-04-11 08:21:51.566113', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (273, 606, 0, 19, '2020-04-11 08:21:51.570832', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (274, 607, 0, 19, '2020-04-11 08:21:51.574817', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (275, 608, 0, 19, '2020-04-11 08:21:51.579815', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (276, 609, 0, 19, '2020-04-11 08:21:51.583810', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (277, 610, 0, 19, '2020-04-11 08:21:51.587807', NULL, 0);
INSERT INTO `presensikuliah_presensi` VALUES (278, 611, 0, 19, '2020-04-11 08:21:51.592612', NULL, 0);

-- ----------------------------
-- Table structure for rps_fakultas
-- ----------------------------
DROP TABLE IF EXISTS `rps_fakultas`;
CREATE TABLE `rps_fakultas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaFakultas` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rps_fakultas
-- ----------------------------
INSERT INTO `rps_fakultas` VALUES (1, 'Teknik');
INSERT INTO `rps_fakultas` VALUES (4, 'Ekonomi');
INSERT INTO `rps_fakultas` VALUES (5, 'fkip');

-- ----------------------------
-- Table structure for rps_prodi
-- ----------------------------
DROP TABLE IF EXISTS `rps_prodi`;
CREATE TABLE `rps_prodi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namaProdi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `fak_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rps_prodi_fak_id_553b30cb_fk_rps_fakultas_id`(`fak_id`) USING BTREE,
  CONSTRAINT `rps_prodi_fak_id_553b30cb_fk_rps_fakultas_id` FOREIGN KEY (`fak_id`) REFERENCES `rps_fakultas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rps_prodi
-- ----------------------------
INSERT INTO `rps_prodi` VALUES (1, 'Sistem Informasi', 1);
INSERT INTO `rps_prodi` VALUES (6, 'Manajemen', 4);
INSERT INTO `rps_prodi` VALUES (7, 'Akuntansi', 4);
INSERT INTO `rps_prodi` VALUES (8, 'penjas', 5);
INSERT INTO `rps_prodi` VALUES (9, 'tty', 5);
INSERT INTO `rps_prodi` VALUES (10, 'ytyt', 5);
INSERT INTO `rps_prodi` VALUES (11, 'xyz', 5);

-- ----------------------------
-- Table structure for rps_userprofiles
-- ----------------------------
DROP TABLE IF EXISTS `rps_userprofiles`;
CREATE TABLE `rps_userprofiles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noKTP` int(11) NULL DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggalLahir` date NULL DEFAULT NULL,
  `jenisKelamin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `agama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `namaUser_id` int(11) NOT NULL,
  `alamat` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `programStudi_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`namaUser_id`) USING BTREE,
  INDEX `rps_userprofiles_programStudi_id_1fb3a0ef_fk_rps_prodi_id`(`programStudi_id`) USING BTREE,
  CONSTRAINT `rps_userprofiles_namaUser_id_debb4e94_fk_auth_user_id` FOREIGN KEY (`namaUser_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rps_userprofiles_programStudi_id_1fb3a0ef_fk_rps_prodi_id` FOREIGN KEY (`programStudi_id`) REFERENCES `rps_prodi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rps_userprofiles
-- ----------------------------
INSERT INTO `rps_userprofiles` VALUES (1, 56565656, 'Aidina Ristyawan', '1988-01-21', 'Laki', 'islam', 1, 'doko -sragi', 1);
INSERT INTO `rps_userprofiles` VALUES (4, 1123123, 'paijah sumarno', '2019-10-09', 'perempuan', 'budha', 9, 'kediri kota', NULL);

SET FOREIGN_KEY_CHECKS = 1;
