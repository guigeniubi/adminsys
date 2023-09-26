/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : xdb

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 26/09/2023 11:34:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for x_menu
-- ----------------------------
DROP TABLE IF EXISTS `x_menu`;
CREATE TABLE `x_menu`  (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `redirect` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `is_leaf` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hidden` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_menu
-- ----------------------------
INSERT INTO `x_menu` VALUES (1, 'Layout', '/sys', '/sys/user', 'sysManage', '系统管理', 'userManage', 0, 'N', 0);
INSERT INTO `x_menu` VALUES (2, 'sys/user', 'user', NULL, 'userList', '用户列表', 'user', 1, 'Y', 0);
INSERT INTO `x_menu` VALUES (3, 'sys/role', 'role', NULL, 'roleList', '角色列表', 'roleManage', 1, 'Y', 0);
INSERT INTO `x_menu` VALUES (4, 'Layout', '/test', '/test/test1', 'test', '功能测试', 'form', 0, 'N', 0);
INSERT INTO `x_menu` VALUES (5, 'test/test1', 'test1', '', 'test1', '测试点一', 'form', 4, 'Y', 0);
INSERT INTO `x_menu` VALUES (6, 'test/test2', 'test2', '', 'test2', '测试点二', 'form', 4, 'Y', 0);
INSERT INTO `x_menu` VALUES (7, 'test/test3', 'test3', '', 'test3', '测试点三', 'form', 4, 'Y', 0);

-- ----------------------------
-- Table structure for x_role
-- ----------------------------
DROP TABLE IF EXISTS `x_role`;
CREATE TABLE `x_role`  (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_desc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_role
-- ----------------------------
INSERT INTO `x_role` VALUES (1, 'admin', '超级管理员');
INSERT INTO `x_role` VALUES (2, 'hr', '人事专员');
INSERT INTO `x_role` VALUES (3, 'normal', '普通员工');

-- ----------------------------
-- Table structure for x_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `x_role_menu`;
CREATE TABLE `x_role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NULL DEFAULT NULL,
  `menu_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_role_menu
-- ----------------------------
INSERT INTO `x_role_menu` VALUES (35, 14, 2);
INSERT INTO `x_role_menu` VALUES (36, 14, 5);
INSERT INTO `x_role_menu` VALUES (37, 14, 6);
INSERT INTO `x_role_menu` VALUES (38, 14, 1);
INSERT INTO `x_role_menu` VALUES (39, 14, 4);
INSERT INTO `x_role_menu` VALUES (53, 1, 1);
INSERT INTO `x_role_menu` VALUES (54, 1, 2);
INSERT INTO `x_role_menu` VALUES (55, 1, 3);
INSERT INTO `x_role_menu` VALUES (56, 1, 4);
INSERT INTO `x_role_menu` VALUES (57, 1, 5);
INSERT INTO `x_role_menu` VALUES (58, 1, 6);
INSERT INTO `x_role_menu` VALUES (59, 1, 7);
INSERT INTO `x_role_menu` VALUES (60, 3, 4);
INSERT INTO `x_role_menu` VALUES (61, 3, 5);
INSERT INTO `x_role_menu` VALUES (62, 3, 6);
INSERT INTO `x_role_menu` VALUES (63, 3, 7);

-- ----------------------------
-- Table structure for x_user
-- ----------------------------
DROP TABLE IF EXISTS `x_user`;
CREATE TABLE `x_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `deleted` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_user
-- ----------------------------
INSERT INTO `x_user` VALUES (1, 'admin', '$2a$10$q1hDJwwzp3Ayapl4qGbNcOdo/wr2MpCurGp3zFDFHCh7onJtwFfLu', 'super@aliyun.com', '18677778888', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (2, 'zhangsan', '$2a$10$q1hDJwwzp3Ayapl4qGbNcOdo/wr2MpCurGp3zFDFHCh7onJtwFfLu', 'zhangsan@gmail.com', '13966667777', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (3, 'lisi', '$2a$10$q1hDJwwzp3Ayapl4qGbNcOdo/wr2MpCurGp3zFDFHCh7onJtwFfLu', 'lisi@gmail.com', '13966667778', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (4, 'wangwu', '$2a$10$q1hDJwwzp3Ayapl4qGbNcOdo/wr2MpCurGp3zFDFHCh7onJtwFfLu', 'wangwu@gmail.com', '13966667772', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (5, 'zhaoer', '$2a$10$q1hDJwwzp3Ayapl4qGbNcOdo/wr2MpCurGp3zFDFHCh7onJtwFfLu', 'zhaoer@gmail.com', '13966667776', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (6, 'songliu', '$2a$10$q1hDJwwzp3Ayapl4qGbNcOdo/wr2MpCurGp3zFDFHCh7onJtwFfLu', 'songliu@gmail.com', '13966667771', 1, 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif', 0);
INSERT INTO `x_user` VALUES (9, 'asdad', '$2a$10$q1hDJwwzp3Ayapl4qGbNcOdo/wr2MpCurGp3zFDFHCh7onJtwFfLu', 'asfasf@qq.com', '123456', 1, NULL, 1);
INSERT INTO `x_user` VALUES (10, 'ccc', '$2a$10$q1hDJwwzp3Ayapl4qGbNcOdo/wr2MpCurGp3zFDFHCh7onJtwFfLu', 'asfasf@qq.com', '123456', 0, NULL, 1);
INSERT INTO `x_user` VALUES (11, 'QWE', '$2a$10$Z86ZQP.DVSQOJ2RxjrMO0eRltI6EewhzQD8qlZ4Q406HvjbJgc/ym', 'asfasf@qq.com', 'QWEWQEWQ', 1, NULL, 1);
INSERT INTO `x_user` VALUES (12, 'ASDSAD', '$2a$10$S/pFiB.dEFxTrTvLcAXo3Od5rPUmW8lUTjJgW0Kniap4jnd4YUkOa', '1042684036@qq.com', 'ASD', 1, NULL, 1);
INSERT INTO `x_user` VALUES (13, 'test', '$2a$10$.yYpHd8oCFdzo7hZcH3rWep5qUwIVVkl7dn1Jg7FZbOsD0szc3ghO', 'zhouwenxuan@idea.edu.cn', '18677778888', 1, NULL, 1);

-- ----------------------------
-- Table structure for x_user_role
-- ----------------------------
DROP TABLE IF EXISTS `x_user_role`;
CREATE TABLE `x_user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of x_user_role
-- ----------------------------
INSERT INTO `x_user_role` VALUES (2, 1, 3);
INSERT INTO `x_user_role` VALUES (7, 13, 3);
INSERT INTO `x_user_role` VALUES (8, 1, 1);
INSERT INTO `x_user_role` VALUES (9, 1, 3);
INSERT INTO `x_user_role` VALUES (10, 2, 3);
INSERT INTO `x_user_role` VALUES (11, 13, 3);

SET FOREIGN_KEY_CHECKS = 1;
