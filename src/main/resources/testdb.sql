/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : testdb

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 21/04/2022 13:26:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for yesapi_track_movie
-- ----------------------------
DROP TABLE IF EXISTS `yesapi_track_movie`;
CREATE TABLE `yesapi_track_movie`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `track_movie_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `foreign_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面图',
  `track_movie_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `music_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `duration` int(11) DEFAULT NULL COMMENT '电影时长，单位：分',
  `track_movie_year` int(4) DEFAULT NULL COMMENT '年份',
  `track_movie_release` date DEFAULT NULL COMMENT '上映日期',
  `musician_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配乐作者',
  `director_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '导演',
  `actor_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '演员',
  `douban_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT 0 COMMENT '0管理员，其他为user_id',
  `movie_status` int(11) DEFAULT 0 COMMENT '0待审核，1发布，2已删除',
  `is_recommend` int(10) DEFAULT 0 COMMENT '是否推荐，0不推荐，1推荐',
  `count` int(128) DEFAULT 0 COMMENT '阅读次数',
  `create_time` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `yesapi_track_movie_status`(`movie_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电影音乐分享-电影' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
