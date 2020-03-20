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

 Date: 18/03/2020 15:58:12
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
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$PW7L9wZAwkd9$npMPrO8HKdmoMWBpQeLQABl3zYFsYJcfpcWGMJlolLQ=', '2020-03-04 03:46:38.961609', 1, 'developer', 'Aidina', 'Ristyawan', 'ristykdr@gmail.com', 1, 1, '2020-01-25 06:48:34.478642');
INSERT INTO `auth_user` VALUES (9, 'pbkdf2_sha256$150000$qUnyC7xVevXM$vNr247as5dposw0fLFj5JMGYG+AQXCjxiCtAIGLYHOA=', '2020-02-27 07:56:56.701681', 0, 'paijah', 'paijaha', 'sumarni', 'paijah@gmail.com', 1, 1, '2020-02-20 10:39:52.000000');
INSERT INTO `auth_user` VALUES (10, 'pbkdf2_sha256$150000$H78yYvchcZIm$OPXgQOckI5SJLStPL+worTERKadn/7lthAyk/jZ0PNs=', NULL, 0, 'mhs1', '', '', '', 0, 1, '2020-02-27 04:52:31.169266');
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
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatajurnalkuliah_detiljurnalkuliah
-- ----------------------------
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (2, 1, '2020-03-12', '08:00:00.000000', '09:00:00.000000', 'materi 1', 'metode belajar 1', 2);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (3, 2, '2020-03-19', '08:00:00.000000', '10:00:00.000000', 'Pengenalan Logika', 'Diskusi', 3);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (4, 1, '2020-03-12', '14:03:07.000000', '14:03:08.000000', 'aaa', 'aaa', 3);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (7, 1, '2020-03-13', '10:00:00.000000', '11:00:00.000000', 'asldaskldj', 'alsjd', 5);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (8, 2, '2020-03-20', '10:00:00.000000', '11:00:00.000000', 'a;lskd;', 'alskd', 5);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (9, 3, '2020-03-27', '10:00:00.000000', '11:00:00.000000', 'asdklasdk', 'aklsdkl', 5);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (10, 4, '2020-03-27', '10:00:00.000000', '11:00:00.000000', 'qweqwe', 'asdas', 5);
INSERT INTO `olahdatajurnalkuliah_detiljurnalkuliah` VALUES (11, 5, '2020-03-27', '10:00:00.000000', '10:00:00.000000', 'WE', 'QE', 5);

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `olahDataJurnalKuliah_dosenPengajar_id_7f872396_fk_olahDataD`(`dosenPengajar_id`) USING BTREE,
  INDEX `olahDataJurnalKuliah_mk_id_026938f7_fk_olahDataM`(`mk_id`) USING BTREE,
  CONSTRAINT `olahDataJurnalKuliah_dosenPengajar_id_7f872396_fk_olahDataD` FOREIGN KEY (`dosenPengajar_id`) REFERENCES `olahdatadosen_dosen` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `olahDataJurnalKuliah_mk_id_026938f7_fk_olahDataM` FOREIGN KEY (`mk_id`) REFERENCES `olahdatamatakuliah_matakuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatajurnalkuliah_jurnalkuliah
-- ----------------------------
INSERT INTO `olahdatajurnalkuliah_jurnalkuliah` VALUES (2, '2019/2020', 17, 6, 'pjmk1', 'm5', 'Genap');
INSERT INTO `olahdatajurnalkuliah_jurnalkuliah` VALUES (3, '2019/2020', 1, 2, 'pjmk', 'm5', 'Gasal');
INSERT INTO `olahdatajurnalkuliah_jurnalkuliah` VALUES (5, '2019/2020', 1, 1, 'qwe', 'qwert', 'Genap');

-- ----------------------------
-- Table structure for olahdatamahasiswa_mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `olahdatamahasiswa_mahasiswa`;
CREATE TABLE `olahdatamahasiswa_mahasiswa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `npm` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahunMasuk` int(11) NOT NULL,
  `kelas` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nik_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `olahDataMahasiswa_mahasiswa_nik_id_d0a24a6c_uniq`(`nik_id`) USING BTREE,
  UNIQUE INDEX `olahDataMahasiswa_mahasiswa_npm_6e298682_uniq`(`npm`) USING BTREE,
  CONSTRAINT `olahDataMahasiswa_ma_nik_id_d0a24a6c_fk_rps_userp` FOREIGN KEY (`nik_id`) REFERENCES `rps_userprofiles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatamahasiswa_mahasiswa
-- ----------------------------
INSERT INTO `olahdatamahasiswa_mahasiswa` VALUES (3, '22222', 2019, 'A', 5);

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
INSERT INTO `olahdatamatakuliah_matakuliah` VALUES (1, 'SIM3707', 'Data Mining', 3, 6, 16, NULL, NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of olahdatarps_detilrps
-- ----------------------------
INSERT INTO `olahdatarps_detilrps` VALUES (5, 'x kemampuan logika algoritma', 'indikator penilaian', 'metode pembelajaran logika algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'materi pembelajaran logika algoritma', 'pe', '', '', 1);
INSERT INTO `olahdatarps_detilrps` VALUES (8, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 2);
INSERT INTO `olahdatarps_detilrps` VALUES (9, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 3);
INSERT INTO `olahdatarps_detilrps` VALUES (10, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 4);
INSERT INTO `olahdatarps_detilrps` VALUES (11, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 5);
INSERT INTO `olahdatarps_detilrps` VALUES (12, 'kemampuan logika dan algoritma', 'indikator penilaian', 'metode pembelajaran logika dan algoritma', 'teknik penilaian', 'kriteria penilaian', 10, 2, 'Materi pembelajaran logika dan algoritma', 'Pengalaman Belajar Online logika dan algoritma', 'pengalaman Belajar Online Asinkron', 'Pengalaman Belajar Online Sinkron', 6);

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `presensiKuliah_prese_npm_id_3626b816_fk_olahDataM`(`npm_id`) USING BTREE,
  INDEX `presensiKuliah_prese_jurnalPerkuliahan_id_a5bd4d88_fk_olahDataJ`(`jurnalPerkuliahan_id`) USING BTREE,
  CONSTRAINT `presensiKuliah_prese_jurnalPerkuliahan_id_a5bd4d88_fk_olahDataJ` FOREIGN KEY (`jurnalPerkuliahan_id`) REFERENCES `olahdatajurnalkuliah_detiljurnalkuliah` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `presensiKuliah_prese_npm_id_3626b816_fk_olahDataM` FOREIGN KEY (`npm_id`) REFERENCES `olahdatamahasiswa_mahasiswa` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rps_userprofiles
-- ----------------------------
INSERT INTO `rps_userprofiles` VALUES (1, 56565656, 'Aidina Ristyawan', '1988-01-21', 'Laki', 'islam', 1, 'doko -sragi', 1);
INSERT INTO `rps_userprofiles` VALUES (4, 1123123, 'paijah sumarno', '2019-10-09', 'perempuan', 'budha', 9, 'kediri kota', NULL);
INSERT INTO `rps_userprofiles` VALUES (5, 1111, 'mahasiswa satu', NULL, NULL, NULL, 10, '', NULL);

SET FOREIGN_KEY_CHECKS = 1;
