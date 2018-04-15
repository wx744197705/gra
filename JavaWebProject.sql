/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : grapro

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2018-04-15 20:44:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_center`
-- ----------------------------
DROP TABLE IF EXISTS `tb_center`;
CREATE TABLE `tb_center` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender` varchar(10) DEFAULT NULL,
  `receiver` varchar(10) DEFAULT NULL,
  `contents` varchar(500) DEFAULT NULL,
  `senddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_center
-- ----------------------------
INSERT INTO `tb_center` VALUES ('1', '10001', '20001', '老师，请假了，麻烦同意下', '2017-11-12 14:52:43');
INSERT INTO `tb_center` VALUES ('2', '20001', '20002', '给我一份信管1班的点名情况', '2017-11-12 17:19:07');
INSERT INTO `tb_center` VALUES ('3', '10002', '20001', '老师，今天有事请假，等会会提交假条', '2017-11-12 19:11:03');
INSERT INTO `tb_center` VALUES ('5', '20001', '20001', 'hee', '2017-11-12 20:31:25');
INSERT INTO `tb_center` VALUES ('6', '20001', '20001', 'hee', '2017-11-12 20:32:07');
INSERT INTO `tb_center` VALUES ('7', null, '00000', '231', '2017-11-12 20:41:11');
INSERT INTO `tb_center` VALUES ('8', null, '00000', '121345', '2017-11-12 22:46:21');
INSERT INTO `tb_center` VALUES ('9', '00000', '10001', '123', '2017-12-03 12:35:42');
INSERT INTO `tb_center` VALUES ('14', null, '10001', '', '2017-12-08 21:13:31');

-- ----------------------------
-- Table structure for `tb_course`
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `courseid` int(10) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(16) NOT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES ('10002', 'C++');
INSERT INTO `tb_course` VALUES ('10003', 'C语言');
INSERT INTO `tb_course` VALUES ('10004', '数据结构');
INSERT INTO `tb_course` VALUES ('10005', '算法');
INSERT INTO `tb_course` VALUES ('10006', '信息组织原理');
INSERT INTO `tb_course` VALUES ('10007', '会计学');
INSERT INTO `tb_course` VALUES ('10008', 'Java');
INSERT INTO `tb_course` VALUES ('10009', '微观经济学');

-- ----------------------------
-- Table structure for `tb_leavereq`
-- ----------------------------
DROP TABLE IF EXISTS `tb_leavereq`;
CREATE TABLE `tb_leavereq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `simplemsg` varchar(20) NOT NULL,
  `reqtypes` char(10) NOT NULL,
  `begindate` date NOT NULL,
  `enddate` date NOT NULL,
  `teacher` char(16) NOT NULL,
  `student` char(16) NOT NULL,
  `leavedate` datetime NOT NULL,
  `ischeck` char(3) NOT NULL DEFAULT '未批准',
  `username` char(16) NOT NULL,
  `checkdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_leavereq
-- ----------------------------
INSERT INTO `tb_leavereq` VALUES ('25', '比赛', '事假', '2017-11-05', '2017-11-07', 'Mr.wang', 'stu.li', '2017-11-05 13:53:00', '已批准', '10002', null);
INSERT INTO `tb_leavereq` VALUES ('26', '驾校学车', '事假', '2017-12-01', '2017-12-02', 'Mr.chen', 'stu.si', '2017-11-11 10:53:25', '已批准', '10001', '2017-11-11 11:11:57');
INSERT INTO `tb_leavereq` VALUES ('27', 'w无', '病假', '2018-03-01', '2018-03-23', 'Mr.chen', 'stu.si', '2018-03-10 23:57:47', '已批准', '10001', '2018-03-10 23:59:05');
INSERT INTO `tb_leavereq` VALUES ('28', '123', '病假', '2018-03-16', '2018-03-17', 'Mr.chen', 'stu.si', '2018-03-27 19:47:07', '已批准', '10001', '2018-03-27 19:48:07');
INSERT INTO `tb_leavereq` VALUES ('29', '回家', '病假', '2018-04-05', '2018-04-15', 'Mr.chen', 'stu.si', '2018-04-15 19:58:33', '已批准', '10001', '2018-04-15 20:28:40');

-- ----------------------------
-- Table structure for `tb_publicmsg`
-- ----------------------------
DROP TABLE IF EXISTS `tb_publicmsg`;
CREATE TABLE `tb_publicmsg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `types` char(2) NOT NULL,
  `msg` varchar(200) DEFAULT NULL,
  `modifydate` datetime DEFAULT NULL,
  `no` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_publicmsg
-- ----------------------------
INSERT INTO `tb_publicmsg` VALUES ('1', '动态', '祝贺我校学子在省电商比赛取得显赫成绩', '2017-11-18 18:33:08', '1');
INSERT INTO `tb_publicmsg` VALUES ('2', '公告', '最近天气转凉，大家注意保暖', '2017-11-18 18:45:04', '2');
INSERT INTO `tb_publicmsg` VALUES ('4', '公告', 'Mr.chen出差一周，具体课程调换请大家等待通知', '2017-11-18 19:31:49', '3');
INSERT INTO `tb_publicmsg` VALUES ('5', '动态', '恭喜我校学子在服务外包竞赛中荣获一等奖，具体信息可登陆学院网站查看', '2017-11-18 19:33:32', '4');
INSERT INTO `tb_publicmsg` VALUES ('6', '公告', '期末考试临近，大家注意复习', '2017-11-19 14:21:14', '2');

-- ----------------------------
-- Table structure for `tb_roster`
-- ----------------------------
DROP TABLE IF EXISTS `tb_roster`;
CREATE TABLE `tb_roster` (
  `stuid` int(10) NOT NULL,
  `stuname` varchar(16) NOT NULL,
  `stuclass` varchar(16) NOT NULL,
  `stukind` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`stuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_roster
-- ----------------------------
INSERT INTO `tb_roster` VALUES ('123', '23', '信管1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('2213', '2312', '信管1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('10001', 'stu.si', '信管1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('10002', 'stu.li', '信管1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('10003', 'stu.xu', '信管1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('10004', 'stu.lic', '信管1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('10005', 'stu.zhang', '信管1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('10006', 'stu.yu', '计算机教育1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('10202', 'stu.liang', '信管1班', '数信学院');
INSERT INTO `tb_roster` VALUES ('10303', 'stu.bu', '信管1班', '数信学院');

-- ----------------------------
-- Table structure for `tb_schebackup`
-- ----------------------------
DROP TABLE IF EXISTS `tb_schebackup`;
CREATE TABLE `tb_schebackup` (
  `scheid` int(10) NOT NULL AUTO_INCREMENT,
  `scheclass` varchar(16) NOT NULL,
  `scheweek` int(1) NOT NULL,
  `schebegin` time NOT NULL,
  `scheend` time NOT NULL,
  `scheuser` varchar(16) NOT NULL,
  `schedate` datetime DEFAULT NULL,
  `outdate` datetime DEFAULT NULL,
  `courseid` int(10) NOT NULL,
  PRIMARY KEY (`scheid`)
) ENGINE=InnoDB AUTO_INCREMENT=10131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_schebackup
-- ----------------------------
INSERT INTO `tb_schebackup` VALUES ('10012', '信管1班', '3', '18:00:00', '20:40:00', '20001', null, '2017-11-08 15:58:32', '10001');
INSERT INTO `tb_schebackup` VALUES ('10110', '信管1班', '3', '08:00:00', '09:55:00', '20002', null, '2017-11-08 15:58:32', '10002');
INSERT INTO `tb_schebackup` VALUES ('10111', '信管1班', '3', '15:00:00', '16:40:00', '20003', null, '2017-11-08 15:58:32', '10003');
INSERT INTO `tb_schebackup` VALUES ('10112', '信管1班', '4', '09:45:00', '11:50:00', '20002', null, '2017-11-08 15:58:32', '10004');
INSERT INTO `tb_schebackup` VALUES ('10113', '信管1班', '4', '18:00:00', '20:30:00', '20002', null, '2017-11-08 15:58:32', '10005');
INSERT INTO `tb_schebackup` VALUES ('10114', '信管1班', '6', '08:00:00', '09:25:00', '20002', null, '2017-11-08 15:58:32', '10006');
INSERT INTO `tb_schebackup` VALUES ('10115', '信管1班', '6', '09:45:00', '11:50:00', '20003', null, '2017-11-08 15:58:32', '10007');
INSERT INTO `tb_schebackup` VALUES ('10116', '信管1班', '6', '13:30:00', '15:00:00', '20003', null, '2017-11-08 15:58:32', '10008');
INSERT INTO `tb_schebackup` VALUES ('10117', '信管1班', '6', '18:30:00', '21:50:00', '20002', null, '2017-11-08 15:58:32', '10009');
INSERT INTO `tb_schebackup` VALUES ('10119', '信管1班', '10002', '00:00:00', '00:00:00', '20001', '2017-11-08 16:56:16', '2017-11-08 17:00:39', '0');
INSERT INTO `tb_schebackup` VALUES ('10120', '20001', '10002', '22:22:00', '22:22:00', '计算机教育1班', '2017-11-08 17:00:48', '2017-11-08 17:02:04', '0');
INSERT INTO `tb_schebackup` VALUES ('10121', '20001', '0', '22:22:00', '22:22:00', '信管1班', '2017-11-08 17:02:12', '2017-11-08 17:11:55', '10002');
INSERT INTO `tb_schebackup` VALUES ('10122', '20001', '0', '11:22:00', '22:22:00', '信管1班', '2017-11-08 17:02:35', '2017-11-08 17:11:55', '10002');
INSERT INTO `tb_schebackup` VALUES ('10123', '信管1班', '0', '12:02:00', '22:22:00', '20001', '2017-11-08 20:03:41', '2017-11-11 11:23:36', '10001');
INSERT INTO `tb_schebackup` VALUES ('10124', '计算机教育1班', '1', '09:45:00', '11:30:00', '20001', '2017-11-10 09:01:41', '2017-11-11 11:23:36', '10007');
INSERT INTO `tb_schebackup` VALUES ('10125', '信管1班', '1', '04:44:00', '04:44:00', '20001', '2017-11-11 11:28:03', '2017-11-11 11:41:09', '10001');
INSERT INTO `tb_schebackup` VALUES ('10126', '信管1班', '0', '22:22:00', '22:22:00', '20001', '2017-11-11 11:38:53', '2017-11-11 11:41:09', '10001');
INSERT INTO `tb_schebackup` VALUES ('10127', '信管1班', '0', '00:00:00', '00:00:00', '20001', '2017-11-11 11:39:36', '2017-11-11 11:41:09', '10001');
INSERT INTO `tb_schebackup` VALUES ('10128', '信管1班', '0', '00:00:00', '00:00:00', '20001', '2017-11-11 11:41:17', '2017-11-11 11:42:14', '10001');
INSERT INTO `tb_schebackup` VALUES ('10129', '信管1班', '0', '00:00:00', '00:00:00', '20001', '2017-11-11 11:42:03', '2017-11-11 11:42:14', '10002');
INSERT INTO `tb_schebackup` VALUES ('10130', '信管1班', '1', '09:45:00', '11:50:00', '20001', '2017-11-11 11:54:40', '2017-11-11 13:14:15', '10001');

-- ----------------------------
-- Table structure for `tb_schedules`
-- ----------------------------
DROP TABLE IF EXISTS `tb_schedules`;
CREATE TABLE `tb_schedules` (
  `scheid` int(10) NOT NULL AUTO_INCREMENT,
  `scheclass` varchar(16) NOT NULL,
  `scheweek` int(1) NOT NULL,
  `schebegin` time NOT NULL,
  `scheend` time NOT NULL,
  `scheuser` varchar(16) NOT NULL,
  `schedate` datetime DEFAULT NULL,
  `courseid` int(10) NOT NULL,
  PRIMARY KEY (`scheid`)
) ENGINE=InnoDB AUTO_INCREMENT=10142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_schedules
-- ----------------------------
INSERT INTO `tb_schedules` VALUES ('10132', '计算机教育1班', '2', '15:30:00', '16:40:00', '20001', '2017-11-11 13:20:33', '10008');
INSERT INTO `tb_schedules` VALUES ('10133', '信管1班', '4', '08:00:00', '09:45:00', '20003', '2017-11-11 13:26:11', '10007');
INSERT INTO `tb_schedules` VALUES ('10140', '信管1班', '3', '09:45:00', '11:30:00', '20001', '2018-03-04 20:50:51', '10003');
INSERT INTO `tb_schedules` VALUES ('10141', '信管1班', '2', '09:45:00', '11:30:00', '20001', '2018-04-15 20:27:37', '10003');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `username` char(16) NOT NULL,
  `password` char(16) NOT NULL,
  `name` char(16) DEFAULT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('00000', '123456', 'admin', '2');
INSERT INTO `tb_user` VALUES ('10001', '123456', 'stu.si', '0');
INSERT INTO `tb_user` VALUES ('10002', '123456', 'stu.li', '0');
INSERT INTO `tb_user` VALUES ('10003', '123456', 'stu.xu', '0');
INSERT INTO `tb_user` VALUES ('10202', '123456', 'stu.liang', '0');
INSERT INTO `tb_user` VALUES ('10303', '321654', 'stu.bu', '0');
INSERT INTO `tb_user` VALUES ('20001', '123456', 'Mr.chen', '1');
INSERT INTO `tb_user` VALUES ('20002', '123456', 'Mr.wang', '1');
INSERT INTO `tb_user` VALUES ('20003', '123456', 'Mr.zhou', '1');
INSERT INTO `tb_user` VALUES ('20004', '123456', 'Mr.ding', '1');

-- ----------------------------
-- Table structure for `tb_workcheck`
-- ----------------------------
DROP TABLE IF EXISTS `tb_workcheck`;
CREATE TABLE `tb_workcheck` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stuid` varchar(10) NOT NULL,
  `callno` varchar(50) DEFAULT NULL,
  `tchid` varchar(10) NOT NULL,
  `calldate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_workcheck
-- ----------------------------
INSERT INTO `tb_workcheck` VALUES ('17', '10002', '', '20003', '2017-10-29 17:40:14');
INSERT INTO `tb_workcheck` VALUES ('18', '10003', '', '20003', '2017-10-29 17:40:14');
INSERT INTO `tb_workcheck` VALUES ('23', '10006', '', '20003', '2017-10-29 18:42:18');
INSERT INTO `tb_workcheck` VALUES ('24', '10002', '', '20003', '2017-10-29 18:42:54');
INSERT INTO `tb_workcheck` VALUES ('25', '10004', '', '20003', '2017-10-29 18:42:54');
INSERT INTO `tb_workcheck` VALUES ('26', '10006', '', '20003', '2017-10-29 18:51:17');
INSERT INTO `tb_workcheck` VALUES ('27', '10001', '', '20002', '2017-10-29 18:51:34');
INSERT INTO `tb_workcheck` VALUES ('28', '10002', '', '20002', '2017-10-29 18:51:34');
INSERT INTO `tb_workcheck` VALUES ('29', '10003', '', '20002', '2017-10-29 18:51:34');
INSERT INTO `tb_workcheck` VALUES ('30', '10001', '', '20003', '2017-10-29 22:08:35');
INSERT INTO `tb_workcheck` VALUES ('31', '10003', '', '20003', '2017-10-29 22:08:35');
INSERT INTO `tb_workcheck` VALUES ('32', '10004', '', '20003', '2017-10-29 22:08:35');
INSERT INTO `tb_workcheck` VALUES ('33', '10001', '', '20001', '2017-10-30 20:29:02');
INSERT INTO `tb_workcheck` VALUES ('34', '10002', '', '20001', '2017-10-30 20:29:02');
INSERT INTO `tb_workcheck` VALUES ('35', '10003', '', '20001', '2017-10-30 20:29:02');
INSERT INTO `tb_workcheck` VALUES ('36', '10004', '', '20001', '2017-10-30 20:29:02');
INSERT INTO `tb_workcheck` VALUES ('37', '10002', '', '20003', '2017-11-01 18:34:04');
INSERT INTO `tb_workcheck` VALUES ('38', '10003', '', '20003', '2017-11-01 18:34:04');
INSERT INTO `tb_workcheck` VALUES ('40', '10001', '', '20002', '2017-11-05 16:06:28');
