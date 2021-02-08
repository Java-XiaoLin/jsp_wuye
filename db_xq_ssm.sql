/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : db_xq_ssm

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 08/01/2021 15:38:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  INDEX `menuId`(`menuId`) USING BTREE,
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1836 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (1499, 3, 35);
INSERT INTO `authority` VALUES (1500, 3, 36);
INSERT INTO `authority` VALUES (1501, 3, 80);
INSERT INTO `authority` VALUES (1502, 3, 82);
INSERT INTO `authority` VALUES (1503, 3, 88);
INSERT INTO `authority` VALUES (1504, 3, 90);
INSERT INTO `authority` VALUES (1505, 3, 103);
INSERT INTO `authority` VALUES (1506, 3, 104);
INSERT INTO `authority` VALUES (1507, 3, 1);
INSERT INTO `authority` VALUES (1508, 3, 81);
INSERT INTO `authority` VALUES (1509, 3, 86);
INSERT INTO `authority` VALUES (1510, 3, 101);
INSERT INTO `authority` VALUES (1511, 1, 1);
INSERT INTO `authority` VALUES (1512, 1, 5);
INSERT INTO `authority` VALUES (1513, 1, 17);
INSERT INTO `authority` VALUES (1514, 1, 18);
INSERT INTO `authority` VALUES (1515, 1, 19);
INSERT INTO `authority` VALUES (1516, 1, 20);
INSERT INTO `authority` VALUES (1517, 1, 13);
INSERT INTO `authority` VALUES (1518, 1, 21);
INSERT INTO `authority` VALUES (1519, 1, 22);
INSERT INTO `authority` VALUES (1520, 1, 23);
INSERT INTO `authority` VALUES (1521, 1, 35);
INSERT INTO `authority` VALUES (1522, 1, 36);
INSERT INTO `authority` VALUES (1523, 1, 14);
INSERT INTO `authority` VALUES (1524, 1, 15);
INSERT INTO `authority` VALUES (1525, 1, 24);
INSERT INTO `authority` VALUES (1526, 1, 25);
INSERT INTO `authority` VALUES (1527, 1, 26);
INSERT INTO `authority` VALUES (1528, 1, 31);
INSERT INTO `authority` VALUES (1529, 1, 32);
INSERT INTO `authority` VALUES (1530, 1, 33);
INSERT INTO `authority` VALUES (1531, 1, 34);
INSERT INTO `authority` VALUES (1532, 1, 37);
INSERT INTO `authority` VALUES (1533, 1, 38);
INSERT INTO `authority` VALUES (1534, 1, 39);
INSERT INTO `authority` VALUES (1535, 1, 40);
INSERT INTO `authority` VALUES (1536, 1, 41);
INSERT INTO `authority` VALUES (1537, 1, 46);
INSERT INTO `authority` VALUES (1538, 1, 47);
INSERT INTO `authority` VALUES (1539, 1, 48);
INSERT INTO `authority` VALUES (1540, 1, 49);
INSERT INTO `authority` VALUES (1541, 1, 50);
INSERT INTO `authority` VALUES (1542, 1, 51);
INSERT INTO `authority` VALUES (1543, 1, 52);
INSERT INTO `authority` VALUES (1544, 1, 53);
INSERT INTO `authority` VALUES (1545, 1, 54);
INSERT INTO `authority` VALUES (1546, 1, 55);
INSERT INTO `authority` VALUES (1547, 1, 60);
INSERT INTO `authority` VALUES (1548, 1, 61);
INSERT INTO `authority` VALUES (1549, 1, 63);
INSERT INTO `authority` VALUES (1550, 1, 100);
INSERT INTO `authority` VALUES (1551, 1, 116);
INSERT INTO `authority` VALUES (1552, 1, 65);
INSERT INTO `authority` VALUES (1553, 1, 66);
INSERT INTO `authority` VALUES (1554, 1, 67);
INSERT INTO `authority` VALUES (1555, 1, 68);
INSERT INTO `authority` VALUES (1556, 1, 69);
INSERT INTO `authority` VALUES (1557, 1, 70);
INSERT INTO `authority` VALUES (1558, 1, 71);
INSERT INTO `authority` VALUES (1559, 1, 72);
INSERT INTO `authority` VALUES (1560, 1, 73);
INSERT INTO `authority` VALUES (1561, 1, 74);
INSERT INTO `authority` VALUES (1562, 1, 75);
INSERT INTO `authority` VALUES (1563, 1, 76);
INSERT INTO `authority` VALUES (1564, 1, 77);
INSERT INTO `authority` VALUES (1565, 1, 78);
INSERT INTO `authority` VALUES (1566, 1, 79);
INSERT INTO `authority` VALUES (1567, 1, 83);
INSERT INTO `authority` VALUES (1568, 1, 84);
INSERT INTO `authority` VALUES (1569, 1, 85);
INSERT INTO `authority` VALUES (1570, 1, 87);
INSERT INTO `authority` VALUES (1571, 1, 89);
INSERT INTO `authority` VALUES (1572, 1, 92);
INSERT INTO `authority` VALUES (1573, 1, 94);
INSERT INTO `authority` VALUES (1574, 1, 96);
INSERT INTO `authority` VALUES (1575, 1, 97);
INSERT INTO `authority` VALUES (1576, 1, 99);
INSERT INTO `authority` VALUES (1577, 1, 102);
INSERT INTO `authority` VALUES (1578, 1, 105);
INSERT INTO `authority` VALUES (1579, 1, 106);
INSERT INTO `authority` VALUES (1580, 1, 107);
INSERT INTO `authority` VALUES (1581, 1, 108);
INSERT INTO `authority` VALUES (1582, 1, 110);
INSERT INTO `authority` VALUES (1583, 1, 111);
INSERT INTO `authority` VALUES (1584, 1, 112);
INSERT INTO `authority` VALUES (1585, 1, 109);
INSERT INTO `authority` VALUES (1586, 1, 113);
INSERT INTO `authority` VALUES (1587, 1, 114);
INSERT INTO `authority` VALUES (1588, 1, 115);
INSERT INTO `authority` VALUES (1589, 1, 58);
INSERT INTO `authority` VALUES (1590, 1, 59);
INSERT INTO `authority` VALUES (1591, 1, 81);
INSERT INTO `authority` VALUES (1592, 1, 86);
INSERT INTO `authority` VALUES (1593, 1, 101);
INSERT INTO `authority` VALUES (1782, 2, 35);
INSERT INTO `authority` VALUES (1783, 2, 36);
INSERT INTO `authority` VALUES (1784, 2, 31);
INSERT INTO `authority` VALUES (1785, 2, 32);
INSERT INTO `authority` VALUES (1786, 2, 33);
INSERT INTO `authority` VALUES (1787, 2, 34);
INSERT INTO `authority` VALUES (1788, 2, 37);
INSERT INTO `authority` VALUES (1789, 2, 38);
INSERT INTO `authority` VALUES (1790, 2, 39);
INSERT INTO `authority` VALUES (1791, 2, 40);
INSERT INTO `authority` VALUES (1792, 2, 41);
INSERT INTO `authority` VALUES (1793, 2, 46);
INSERT INTO `authority` VALUES (1794, 2, 47);
INSERT INTO `authority` VALUES (1795, 2, 48);
INSERT INTO `authority` VALUES (1796, 2, 49);
INSERT INTO `authority` VALUES (1797, 2, 50);
INSERT INTO `authority` VALUES (1798, 2, 51);
INSERT INTO `authority` VALUES (1799, 2, 52);
INSERT INTO `authority` VALUES (1800, 2, 53);
INSERT INTO `authority` VALUES (1801, 2, 54);
INSERT INTO `authority` VALUES (1802, 2, 55);
INSERT INTO `authority` VALUES (1803, 2, 65);
INSERT INTO `authority` VALUES (1804, 2, 66);
INSERT INTO `authority` VALUES (1805, 2, 67);
INSERT INTO `authority` VALUES (1806, 2, 68);
INSERT INTO `authority` VALUES (1807, 2, 69);
INSERT INTO `authority` VALUES (1808, 2, 70);
INSERT INTO `authority` VALUES (1809, 2, 71);
INSERT INTO `authority` VALUES (1810, 2, 72);
INSERT INTO `authority` VALUES (1811, 2, 73);
INSERT INTO `authority` VALUES (1812, 2, 74);
INSERT INTO `authority` VALUES (1813, 2, 81);
INSERT INTO `authority` VALUES (1814, 2, 80);
INSERT INTO `authority` VALUES (1815, 2, 82);
INSERT INTO `authority` VALUES (1816, 2, 83);
INSERT INTO `authority` VALUES (1817, 2, 84);
INSERT INTO `authority` VALUES (1818, 2, 85);
INSERT INTO `authority` VALUES (1819, 2, 86);
INSERT INTO `authority` VALUES (1820, 2, 87);
INSERT INTO `authority` VALUES (1821, 2, 89);
INSERT INTO `authority` VALUES (1822, 2, 88);
INSERT INTO `authority` VALUES (1823, 2, 90);
INSERT INTO `authority` VALUES (1824, 2, 92);
INSERT INTO `authority` VALUES (1825, 2, 94);
INSERT INTO `authority` VALUES (1826, 2, 96);
INSERT INTO `authority` VALUES (1827, 2, 97);
INSERT INTO `authority` VALUES (1828, 2, 99);
INSERT INTO `authority` VALUES (1829, 2, 101);
INSERT INTO `authority` VALUES (1830, 2, 102);
INSERT INTO `authority` VALUES (1831, 2, 105);
INSERT INTO `authority` VALUES (1832, 2, 106);
INSERT INTO `authority` VALUES (1833, 2, 103);
INSERT INTO `authority` VALUES (1834, 2, 104);
INSERT INTO `authority` VALUES (1835, 2, 1);

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `building_id` int(11) NOT NULL AUTO_INCREMENT,
  `building_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `building_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`building_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES (1, '宿舍楼1', '楼房状态正常');
INSERT INTO `building` VALUES (4, '宿舍楼1', '楼房状态正常');
INSERT INTO `building` VALUES (6, '宿舍楼1', '楼房状态正常');
INSERT INTO `building` VALUES (7, '宿舍楼1', '楼房状态正常');
INSERT INTO `building` VALUES (8, '宿舍楼1', '楼房状态正常');
INSERT INTO `building` VALUES (9, '宿舍楼2', '楼房状态正常');
INSERT INTO `building` VALUES (11, '宿舍楼2', '楼房状态正常');
INSERT INTO `building` VALUES (26, '宿舍楼2', '楼房状态正常');
INSERT INTO `building` VALUES (27, '宿舍楼3', '楼房状态正常');
INSERT INTO `building` VALUES (28, '宿舍楼3', '楼房状态正常');
INSERT INTO `building` VALUES (29, '宿舍楼3', '');
INSERT INTO `building` VALUES (30, '宿舍楼3', '');
INSERT INTO `building` VALUES (31, '宿舍楼3', '');
INSERT INTO `building` VALUES (32, '宿舍楼4', '');
INSERT INTO `building` VALUES (33, '宿舍楼3', '');
INSERT INTO `building` VALUES (34, '宿舍楼4', '');
INSERT INTO `building` VALUES (35, '宿舍楼4', '');
INSERT INTO `building` VALUES (36, '宿舍楼5', '');
INSERT INTO `building` VALUES (37, '宿舍楼4', '');
INSERT INTO `building` VALUES (38, '宿舍楼6', '');
INSERT INTO `building` VALUES (39, '宿舍楼7', '');

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable`  (
  `a` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for complaint
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint`  (
  `com_id` int(64) NOT NULL AUTO_INCREMENT,
  `yezhu_id` int(64) NOT NULL,
  `complaintDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL,
  `com_question` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `com_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_id`) USING BTREE,
  INDEX `yezhu_id`(`yezhu_id`) USING BTREE,
  CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`yezhu_id`) REFERENCES `yezhu` (`yezhu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of complaint
-- ----------------------------
INSERT INTO `complaint` VALUES (7, 22, '2021-01-13', 1, '太大声了', NULL, NULL);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `employee_id` int(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `work_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sex` int(1) NOT NULL,
  `salary` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `employee_phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(64) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '老李', '门卫', 1, '3001', '12345678909', 56, '山东潍坊', NULL);
INSERT INTO `employee` VALUES (2, '老张', '看门大爷', 1, '3000', '12345678909', 56, '山东济南', '一位大爷');
INSERT INTO `employee` VALUES (3, '李阿姨', '保洁', 2, '3000', '12345678909', 45, '山东潍坊', '');

-- ----------------------------
-- Table structure for facility
-- ----------------------------
DROP TABLE IF EXISTS `facility`;
CREATE TABLE `facility`  (
  `fac_id` int(32) NOT NULL AUTO_INCREMENT,
  `fac_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fac_count` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `startTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`fac_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of facility
-- ----------------------------
INSERT INTO `facility` VALUES (2, '饮水机', '41', '2020-11-20 00:00:00', 0);
INSERT INTO `facility` VALUES (3, '垃圾桶', '38', '2020-10-20 00:00:00', 1);
INSERT INTO `facility` VALUES (4, '健身器材', '20', '2020-05-14 00:00:00', 1);
INSERT INTO `facility` VALUES (5, '大垃圾桶', '20', '2020-06-03', 0);

-- ----------------------------
-- Table structure for fee
-- ----------------------------
DROP TABLE IF EXISTS `fee`;
CREATE TABLE `fee`  (
  `fee_id` int(64) NOT NULL AUTO_INCREMENT,
  `feetype_id` int(64) NOT NULL,
  `fee_money` float(64, 0) NOT NULL,
  `start_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `final_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yezhu_id` int(64) NULL DEFAULT NULL,
  `status` int(1) NOT NULL,
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `fee_photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fee_id`) USING BTREE,
  INDEX `feetype_id`(`feetype_id`) USING BTREE,
  INDEX `yezhu_id`(`yezhu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee
-- ----------------------------
INSERT INTO `fee` VALUES (14, 2, 20, '2021-01-16', '2021-01-22', 22, 2, NULL, '/xq/resources/upload/1610023387021.jpg');

-- ----------------------------
-- Table structure for fee_type
-- ----------------------------
DROP TABLE IF EXISTS `fee_type`;
CREATE TABLE `fee_type`  (
  `feetype_id` int(64) NOT NULL AUTO_INCREMENT,
  `feetype_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`feetype_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fee_type
-- ----------------------------
INSERT INTO `fee_type` VALUES (1, '水费', NULL);
INSERT INTO `fee_type` VALUES (2, '宿舍费', NULL);
INSERT INTO `fee_type` VALUES (3, '电费', NULL);

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `house_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `building_id` int(32) NOT NULL,
  `type_id` int(32) NOT NULL,
  `yz_id` int(11) NULL DEFAULT NULL,
  `house_photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`house_id`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  INDEX `building_id`(`building_id`) USING BTREE,
  INDEX `yz_id`(`yz_id`) USING BTREE,
  CONSTRAINT `house_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `room_type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `house_ibfk_2` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `house_ibfk_3` FOREIGN KEY (`yz_id`) REFERENCES `yezhu` (`yezhu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (3, '2-102', 4, 1, NULL, '/xq/resources/upload/1609997636360.png', 0, '很好的');
INSERT INTO `house` VALUES (4, '1-102', 1, 2, NULL, '/xq/resources/upload/1591408745647.png', 0, '');
INSERT INTO `house` VALUES (5, '1-103', 1, 1, NULL, '/xq/resources/upload/1591408737221.jpg', 0, '');
INSERT INTO `house` VALUES (8, '2-101', 4, 1, NULL, '/xq/resources/upload/1591354390239.jpg', 0, '');
INSERT INTO `house` VALUES (9, '2-103', 4, 1, NULL, '/xq/resources/upload/1591354372738.png', 0, '');
INSERT INTO `house` VALUES (10, '6-101', 9, 1, NULL, '/xq/resources/upload/1591354353900.jpg', 0, '');
INSERT INTO `house` VALUES (11, '3-101', 6, 1, NULL, '/xq/resources/upload/1591191500584.jpg', 0, '');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 575 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (116, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 20:59:53');
INSERT INTO `log` VALUES (117, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 21:05:53');
INSERT INTO `log` VALUES (118, '用户名为admin的用户登录时输入验证码错误!', '2020-04-29 21:33:35');
INSERT INTO `log` VALUES (119, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 21:33:45');
INSERT INTO `log` VALUES (120, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 21:37:33');
INSERT INTO `log` VALUES (121, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 21:43:49');
INSERT INTO `log` VALUES (122, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 21:46:14');
INSERT INTO `log` VALUES (123, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 21:47:28');
INSERT INTO `log` VALUES (124, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 21:52:25');
INSERT INTO `log` VALUES (125, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-29 22:03:12');
INSERT INTO `log` VALUES (126, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 10:53:56');
INSERT INTO `log` VALUES (127, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 11:00:10');
INSERT INTO `log` VALUES (128, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 12:29:47');
INSERT INTO `log` VALUES (129, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 12:34:18');
INSERT INTO `log` VALUES (130, '用户名为admin的用户登录时输入验证码错误!', '2020-04-30 16:20:33');
INSERT INTO `log` VALUES (131, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 16:20:41');
INSERT INTO `log` VALUES (132, '用户名为admin的用户登录时输入验证码错误!', '2020-04-30 16:57:18');
INSERT INTO `log` VALUES (133, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 16:57:26');
INSERT INTO `log` VALUES (134, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 17:29:50');
INSERT INTO `log` VALUES (135, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 17:33:40');
INSERT INTO `log` VALUES (136, '用户名为admin的用户登录时输入验证码错误!', '2020-04-30 17:43:23');
INSERT INTO `log` VALUES (137, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 17:43:35');
INSERT INTO `log` VALUES (138, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 18:20:26');
INSERT INTO `log` VALUES (139, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 18:29:16');
INSERT INTO `log` VALUES (140, '用户名为admin的用户登录时输入验证码错误!', '2020-04-30 18:36:57');
INSERT INTO `log` VALUES (141, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 18:37:13');
INSERT INTO `log` VALUES (142, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 18:41:59');
INSERT INTO `log` VALUES (143, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 18:47:00');
INSERT INTO `log` VALUES (144, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 18:58:44');
INSERT INTO `log` VALUES (145, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 19:04:28');
INSERT INTO `log` VALUES (146, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 19:22:54');
INSERT INTO `log` VALUES (147, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 19:25:46');
INSERT INTO `log` VALUES (148, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 19:27:00');
INSERT INTO `log` VALUES (149, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 19:28:26');
INSERT INTO `log` VALUES (150, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-04-30 19:29:20');
INSERT INTO `log` VALUES (151, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 09:48:59');
INSERT INTO `log` VALUES (152, '用户名为admin的用户登录时输入验证码错误!', '2020-05-01 09:52:39');
INSERT INTO `log` VALUES (153, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 09:52:53');
INSERT INTO `log` VALUES (154, '用户名为admin的用户登录时输入验证码错误!', '2020-05-01 09:58:24');
INSERT INTO `log` VALUES (155, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 09:58:33');
INSERT INTO `log` VALUES (156, '用户名为admin的用户登录时输入验证码错误!', '2020-05-01 10:06:44');
INSERT INTO `log` VALUES (157, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 10:06:54');
INSERT INTO `log` VALUES (158, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 12:43:22');
INSERT INTO `log` VALUES (159, '用户名为liqingyang的用户登录时输入密码错误!', '2020-05-01 12:44:11');
INSERT INTO `log` VALUES (160, '用户名为liqingyang的用户登录时输入密码错误!', '2020-05-01 12:44:23');
INSERT INTO `log` VALUES (161, '用户名为{liqingyang}，角色为{普通用户}的用户登录成功!', '2020-05-01 12:44:38');
INSERT INTO `log` VALUES (162, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 14:26:54');
INSERT INTO `log` VALUES (163, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 14:34:04');
INSERT INTO `log` VALUES (164, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 14:36:11');
INSERT INTO `log` VALUES (165, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 14:41:50');
INSERT INTO `log` VALUES (166, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 14:44:29');
INSERT INTO `log` VALUES (167, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 14:46:34');
INSERT INTO `log` VALUES (168, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 15:27:48');
INSERT INTO `log` VALUES (169, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-01 15:37:25');
INSERT INTO `log` VALUES (170, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-03 19:09:08');
INSERT INTO `log` VALUES (171, '登录时，用户名为user01的用户不存在!', '2020-05-04 14:58:35');
INSERT INTO `log` VALUES (172, '登录时，用户名为user02的用户不存在!', '2020-05-04 14:59:16');
INSERT INTO `log` VALUES (173, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:09:59');
INSERT INTO `log` VALUES (174, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:10:13');
INSERT INTO `log` VALUES (175, '登录时，用户名为user01的用户不存在!', '2020-05-04 15:11:04');
INSERT INTO `log` VALUES (176, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:36:56');
INSERT INTO `log` VALUES (177, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:39:51');
INSERT INTO `log` VALUES (178, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:44:49');
INSERT INTO `log` VALUES (179, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:48:36');
INSERT INTO `log` VALUES (180, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:49:49');
INSERT INTO `log` VALUES (181, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:51:25');
INSERT INTO `log` VALUES (182, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:57:16');
INSERT INTO `log` VALUES (183, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-04 15:58:25');
INSERT INTO `log` VALUES (184, '用户名为admin的用户登录时输入密码错误!', '2020-05-04 15:59:23');
INSERT INTO `log` VALUES (185, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 15:59:36');
INSERT INTO `log` VALUES (186, '用户名为admin的用户登录时输入验证码错误!', '2020-05-04 18:44:26');
INSERT INTO `log` VALUES (187, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 18:44:37');
INSERT INTO `log` VALUES (188, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 18:52:10');
INSERT INTO `log` VALUES (189, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-04 19:09:09');
INSERT INTO `log` VALUES (190, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-05 17:08:27');
INSERT INTO `log` VALUES (191, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-05 17:13:10');
INSERT INTO `log` VALUES (192, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-05 17:22:14');
INSERT INTO `log` VALUES (193, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-05 17:32:48');
INSERT INTO `log` VALUES (194, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-05 17:42:14');
INSERT INTO `log` VALUES (195, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-05 22:12:51');
INSERT INTO `log` VALUES (196, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-06 22:14:16');
INSERT INTO `log` VALUES (197, '用户名为{liqingyang}，角色为{普通用户}的用户登录成功!', '2020-05-06 22:15:00');
INSERT INTO `log` VALUES (198, '用户名为{liqingyang}，的用户成功修改密码!', '2020-05-06 22:15:25');
INSERT INTO `log` VALUES (199, '用户名为{liqingyang}，角色为{普通用户}的用户登录成功!', '2020-05-06 22:15:48');
INSERT INTO `log` VALUES (200, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-06 22:16:13');
INSERT INTO `log` VALUES (201, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-07 15:39:04');
INSERT INTO `log` VALUES (202, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-08 11:10:38');
INSERT INTO `log` VALUES (203, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-08 11:11:08');
INSERT INTO `log` VALUES (204, '用户名为user06的用户登录时输入密码错误!', '2020-05-08 11:12:36');
INSERT INTO `log` VALUES (205, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-08 11:13:03');
INSERT INTO `log` VALUES (206, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-08 16:44:10');
INSERT INTO `log` VALUES (207, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-08 17:40:21');
INSERT INTO `log` VALUES (208, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-08 19:11:47');
INSERT INTO `log` VALUES (209, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-08 21:47:20');
INSERT INTO `log` VALUES (210, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-09 09:21:36');
INSERT INTO `log` VALUES (211, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-09 11:36:43');
INSERT INTO `log` VALUES (212, '用户名为user06的用户登录时输入验证码错误!', '2020-05-09 11:37:08');
INSERT INTO `log` VALUES (213, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-09 11:37:30');
INSERT INTO `log` VALUES (214, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-11 17:59:11');
INSERT INTO `log` VALUES (215, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-11 18:00:52');
INSERT INTO `log` VALUES (216, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-11 19:13:21');
INSERT INTO `log` VALUES (217, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-11 19:43:34');
INSERT INTO `log` VALUES (218, '用户名为admin的用户登录时输入验证码错误!', '2020-05-11 19:46:38');
INSERT INTO `log` VALUES (219, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-11 19:46:51');
INSERT INTO `log` VALUES (220, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-11 20:31:38');
INSERT INTO `log` VALUES (221, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-11 20:33:22');
INSERT INTO `log` VALUES (222, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 09:58:38');
INSERT INTO `log` VALUES (223, '用户名为admin的用户登录时输入验证码错误!', '2020-05-12 10:07:11');
INSERT INTO `log` VALUES (224, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 10:07:22');
INSERT INTO `log` VALUES (225, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 10:10:38');
INSERT INTO `log` VALUES (226, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 10:29:06');
INSERT INTO `log` VALUES (227, '用户名为user06的用户登录时输入验证码错误!', '2020-05-12 10:29:57');
INSERT INTO `log` VALUES (228, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 10:30:04');
INSERT INTO `log` VALUES (229, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 10:33:53');
INSERT INTO `log` VALUES (230, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 10:46:27');
INSERT INTO `log` VALUES (231, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 10:52:54');
INSERT INTO `log` VALUES (232, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 10:55:49');
INSERT INTO `log` VALUES (233, '用户名为user06的用户登录时输入密码错误!', '2020-05-12 11:07:48');
INSERT INTO `log` VALUES (234, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 11:08:02');
INSERT INTO `log` VALUES (235, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 11:11:09');
INSERT INTO `log` VALUES (236, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 11:13:46');
INSERT INTO `log` VALUES (237, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 11:19:19');
INSERT INTO `log` VALUES (238, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 14:00:47');
INSERT INTO `log` VALUES (239, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 14:03:21');
INSERT INTO `log` VALUES (240, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 16:40:24');
INSERT INTO `log` VALUES (241, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 17:30:35');
INSERT INTO `log` VALUES (242, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 17:34:26');
INSERT INTO `log` VALUES (243, '用户名为admin的用户登录时输入验证码错误!', '2020-05-12 19:04:44');
INSERT INTO `log` VALUES (244, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 19:04:54');
INSERT INTO `log` VALUES (245, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 19:12:46');
INSERT INTO `log` VALUES (246, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 19:17:55');
INSERT INTO `log` VALUES (247, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 19:27:55');
INSERT INTO `log` VALUES (248, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 19:39:59');
INSERT INTO `log` VALUES (249, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-12 19:46:30');
INSERT INTO `log` VALUES (250, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-12 20:09:12');
INSERT INTO `log` VALUES (251, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-13 10:35:16');
INSERT INTO `log` VALUES (252, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-13 10:35:59');
INSERT INTO `log` VALUES (253, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-13 20:32:39');
INSERT INTO `log` VALUES (254, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-13 20:43:16');
INSERT INTO `log` VALUES (255, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-13 21:40:11');
INSERT INTO `log` VALUES (256, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-13 22:03:51');
INSERT INTO `log` VALUES (257, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-13 22:25:41');
INSERT INTO `log` VALUES (258, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-13 22:27:44');
INSERT INTO `log` VALUES (259, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-13 22:30:41');
INSERT INTO `log` VALUES (260, '用户名为user06的用户登录时输入验证码错误!', '2020-05-14 10:33:59');
INSERT INTO `log` VALUES (261, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-14 10:34:09');
INSERT INTO `log` VALUES (262, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 10:56:44');
INSERT INTO `log` VALUES (263, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 16:30:37');
INSERT INTO `log` VALUES (264, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 16:35:24');
INSERT INTO `log` VALUES (265, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 16:40:05');
INSERT INTO `log` VALUES (266, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 16:44:10');
INSERT INTO `log` VALUES (267, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 16:51:16');
INSERT INTO `log` VALUES (268, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 16:52:02');
INSERT INTO `log` VALUES (269, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 16:59:02');
INSERT INTO `log` VALUES (270, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 17:03:30');
INSERT INTO `log` VALUES (271, '用户名为admin的用户登录时输入验证码错误!', '2020-05-14 20:04:58');
INSERT INTO `log` VALUES (272, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 20:05:06');
INSERT INTO `log` VALUES (273, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-14 20:06:36');
INSERT INTO `log` VALUES (274, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-14 20:12:18');
INSERT INTO `log` VALUES (275, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 20:27:33');
INSERT INTO `log` VALUES (276, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 20:34:32');
INSERT INTO `log` VALUES (277, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 20:37:58');
INSERT INTO `log` VALUES (278, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-14 20:39:59');
INSERT INTO `log` VALUES (279, '用户名为admin的用户登录时输入验证码错误!', '2020-05-14 20:46:15');
INSERT INTO `log` VALUES (280, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 20:46:39');
INSERT INTO `log` VALUES (281, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 20:58:30');
INSERT INTO `log` VALUES (282, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 21:01:28');
INSERT INTO `log` VALUES (283, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 21:07:59');
INSERT INTO `log` VALUES (284, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 21:18:43');
INSERT INTO `log` VALUES (285, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 21:19:25');
INSERT INTO `log` VALUES (286, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 21:32:35');
INSERT INTO `log` VALUES (287, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 21:39:17');
INSERT INTO `log` VALUES (288, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 21:45:37');
INSERT INTO `log` VALUES (289, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-14 21:48:38');
INSERT INTO `log` VALUES (290, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 18:19:17');
INSERT INTO `log` VALUES (291, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 20:16:48');
INSERT INTO `log` VALUES (292, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 21:28:00');
INSERT INTO `log` VALUES (293, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 21:42:09');
INSERT INTO `log` VALUES (294, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 21:55:27');
INSERT INTO `log` VALUES (295, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:20:43');
INSERT INTO `log` VALUES (296, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:24:19');
INSERT INTO `log` VALUES (297, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 22:25:29');
INSERT INTO `log` VALUES (298, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:26:35');
INSERT INTO `log` VALUES (299, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 22:29:46');
INSERT INTO `log` VALUES (300, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:30:22');
INSERT INTO `log` VALUES (301, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 22:31:06');
INSERT INTO `log` VALUES (302, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 22:35:23');
INSERT INTO `log` VALUES (303, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:36:10');
INSERT INTO `log` VALUES (304, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 22:39:56');
INSERT INTO `log` VALUES (305, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:40:37');
INSERT INTO `log` VALUES (306, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 22:44:22');
INSERT INTO `log` VALUES (307, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:44:51');
INSERT INTO `log` VALUES (308, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:46:48');
INSERT INTO `log` VALUES (309, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:48:03');
INSERT INTO `log` VALUES (310, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 22:52:10');
INSERT INTO `log` VALUES (311, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-15 22:52:40');
INSERT INTO `log` VALUES (312, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-15 22:53:54');
INSERT INTO `log` VALUES (313, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 10:57:29');
INSERT INTO `log` VALUES (314, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 11:10:42');
INSERT INTO `log` VALUES (315, '用户名为admin的用户登录时输入验证码错误!', '2020-05-16 11:31:27');
INSERT INTO `log` VALUES (316, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 11:31:35');
INSERT INTO `log` VALUES (317, '用户名为admin的用户登录时输入验证码错误!', '2020-05-16 11:42:12');
INSERT INTO `log` VALUES (318, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 11:42:29');
INSERT INTO `log` VALUES (319, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-16 15:07:03');
INSERT INTO `log` VALUES (320, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-20 10:39:49');
INSERT INTO `log` VALUES (321, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-20 11:04:54');
INSERT INTO `log` VALUES (322, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-20 16:18:54');
INSERT INTO `log` VALUES (323, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-20 16:19:55');
INSERT INTO `log` VALUES (324, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-20 16:22:44');
INSERT INTO `log` VALUES (325, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-20 16:30:33');
INSERT INTO `log` VALUES (326, '用户名为admin的用户登录时输入密码错误!', '2020-05-20 16:31:20');
INSERT INTO `log` VALUES (327, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-20 16:31:33');
INSERT INTO `log` VALUES (328, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-20 16:33:15');
INSERT INTO `log` VALUES (329, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-20 16:36:57');
INSERT INTO `log` VALUES (330, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-20 16:38:42');
INSERT INTO `log` VALUES (331, '用户名为user06的用户登录时输入验证码错误!', '2020-05-20 16:51:00');
INSERT INTO `log` VALUES (332, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-20 16:51:10');
INSERT INTO `log` VALUES (333, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-05-22 10:09:51');
INSERT INTO `log` VALUES (334, '用户名为{user06}，的用户成功修改密码!', '2020-05-22 10:10:14');
INSERT INTO `log` VALUES (335, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-22 10:12:56');
INSERT INTO `log` VALUES (336, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-22 18:53:11');
INSERT INTO `log` VALUES (337, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 10:28:00');
INSERT INTO `log` VALUES (338, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 10:28:53');
INSERT INTO `log` VALUES (339, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 10:37:08');
INSERT INTO `log` VALUES (340, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 10:38:29');
INSERT INTO `log` VALUES (341, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 12:00:57');
INSERT INTO `log` VALUES (342, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 16:03:46');
INSERT INTO `log` VALUES (343, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 16:10:34');
INSERT INTO `log` VALUES (344, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 16:17:24');
INSERT INTO `log` VALUES (345, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 21:00:58');
INSERT INTO `log` VALUES (346, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-23 21:08:27');
INSERT INTO `log` VALUES (347, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-25 16:41:46');
INSERT INTO `log` VALUES (348, '用户名为user08的用户登录时输入密码错误!', '2020-05-25 16:57:29');
INSERT INTO `log` VALUES (349, '用户名为{user08}，角色为{业主}的用户登录成功!', '2020-05-25 16:57:40');
INSERT INTO `log` VALUES (350, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-25 17:01:47');
INSERT INTO `log` VALUES (351, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-25 17:19:11');
INSERT INTO `log` VALUES (352, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-25 17:42:34');
INSERT INTO `log` VALUES (353, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-26 18:12:21');
INSERT INTO `log` VALUES (354, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-26 18:15:01');
INSERT INTO `log` VALUES (355, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-26 18:21:03');
INSERT INTO `log` VALUES (356, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 09:35:20');
INSERT INTO `log` VALUES (357, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 10:18:49');
INSERT INTO `log` VALUES (358, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 10:40:40');
INSERT INTO `log` VALUES (359, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 17:51:02');
INSERT INTO `log` VALUES (360, '用户名为user01的用户登录时输入验证码错误!', '2020-05-27 17:57:46');
INSERT INTO `log` VALUES (361, '用户名为user01的用户登录时输入密码错误!', '2020-05-27 17:57:55');
INSERT INTO `log` VALUES (362, '用户名为user01的用户登录时输入验证码错误!', '2020-05-27 17:58:01');
INSERT INTO `log` VALUES (363, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 17:58:09');
INSERT INTO `log` VALUES (364, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-27 18:51:28');
INSERT INTO `log` VALUES (365, '用户名为user01的用户登录时输入验证码错误!', '2020-05-27 18:55:22');
INSERT INTO `log` VALUES (366, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 18:55:33');
INSERT INTO `log` VALUES (367, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 19:07:42');
INSERT INTO `log` VALUES (368, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-27 19:23:21');
INSERT INTO `log` VALUES (369, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 19:26:19');
INSERT INTO `log` VALUES (370, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 19:29:31');
INSERT INTO `log` VALUES (371, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-27 19:37:36');
INSERT INTO `log` VALUES (372, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-28 10:07:34');
INSERT INTO `log` VALUES (373, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-28 10:13:27');
INSERT INTO `log` VALUES (374, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-28 10:33:30');
INSERT INTO `log` VALUES (375, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-28 10:59:29');
INSERT INTO `log` VALUES (376, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-28 16:14:50');
INSERT INTO `log` VALUES (377, '用户名为{小敏}，角色为{业主}的用户登录成功!', '2020-05-28 16:33:23');
INSERT INTO `log` VALUES (378, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-28 16:34:38');
INSERT INTO `log` VALUES (379, '用户名为user01的用户登录时输入验证码错误!', '2020-05-28 18:25:28');
INSERT INTO `log` VALUES (380, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-28 18:25:36');
INSERT INTO `log` VALUES (381, '用户名为{user01}，角色为{业主}的用户登录成功!', '2020-05-28 18:53:34');
INSERT INTO `log` VALUES (382, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-28 20:21:12');
INSERT INTO `log` VALUES (383, '用户名为{user07}，角色为{业主}的用户登录成功!', '2020-05-28 20:22:47');
INSERT INTO `log` VALUES (384, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-30 15:28:44');
INSERT INTO `log` VALUES (385, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-30 16:15:19');
INSERT INTO `log` VALUES (386, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-30 16:26:46');
INSERT INTO `log` VALUES (387, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-30 16:28:38');
INSERT INTO `log` VALUES (388, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-30 16:30:54');
INSERT INTO `log` VALUES (389, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-30 17:31:28');
INSERT INTO `log` VALUES (390, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-31 11:02:45');
INSERT INTO `log` VALUES (391, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-31 11:04:35');
INSERT INTO `log` VALUES (392, '用户名为{李鑫}，角色为{业主}的用户登录成功!', '2020-05-31 11:15:03');
INSERT INTO `log` VALUES (393, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-31 11:16:37');
INSERT INTO `log` VALUES (394, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-31 15:13:07');
INSERT INTO `log` VALUES (395, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-05-31 16:15:31');
INSERT INTO `log` VALUES (396, '用户名为admin的用户登录时输入验证码错误!', '2020-05-31 16:16:19');
INSERT INTO `log` VALUES (397, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-31 16:16:31');
INSERT INTO `log` VALUES (398, '用户名为{李鑫}，角色为{业主}的用户登录成功!', '2020-05-31 16:27:55');
INSERT INTO `log` VALUES (399, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-31 16:32:22');
INSERT INTO `log` VALUES (400, '用户名为{user03}，角色为{业主}的用户登录成功!', '2020-05-31 16:58:12');
INSERT INTO `log` VALUES (401, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-31 16:58:58');
INSERT INTO `log` VALUES (402, '用户名为{李鑫}，角色为{业主}的用户登录成功!', '2020-05-31 17:20:41');
INSERT INTO `log` VALUES (403, '用户名为{李鑫}，角色为{业主}的用户登录成功!', '2020-05-31 17:27:48');
INSERT INTO `log` VALUES (404, '用户名为{李鑫}，角色为{业主}的用户登录成功!', '2020-05-31 17:29:28');
INSERT INTO `log` VALUES (405, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-05-31 17:41:48');
INSERT INTO `log` VALUES (406, '用户名为user02的用户登录时输入密码错误!', '2020-06-01 20:34:31');
INSERT INTO `log` VALUES (407, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-01 20:35:32');
INSERT INTO `log` VALUES (408, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-03 09:46:23');
INSERT INTO `log` VALUES (409, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-03 09:50:36');
INSERT INTO `log` VALUES (410, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-03 09:52:52');
INSERT INTO `log` VALUES (411, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-03 10:05:22');
INSERT INTO `log` VALUES (412, '用户名为user02的用户登录时输入验证码错误!', '2020-06-03 12:09:46');
INSERT INTO `log` VALUES (413, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-03 12:09:55');
INSERT INTO `log` VALUES (414, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 12:23:32');
INSERT INTO `log` VALUES (415, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-03 12:28:54');
INSERT INTO `log` VALUES (416, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 13:07:37');
INSERT INTO `log` VALUES (417, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-03 13:07:55');
INSERT INTO `log` VALUES (418, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 16:55:31');
INSERT INTO `log` VALUES (419, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 20:22:29');
INSERT INTO `log` VALUES (420, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 20:52:22');
INSERT INTO `log` VALUES (421, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 20:55:07');
INSERT INTO `log` VALUES (422, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 21:14:47');
INSERT INTO `log` VALUES (423, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 21:37:52');
INSERT INTO `log` VALUES (424, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 21:41:05');
INSERT INTO `log` VALUES (425, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-03 21:41:55');
INSERT INTO `log` VALUES (426, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-03 21:54:53');
INSERT INTO `log` VALUES (427, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 21:55:47');
INSERT INTO `log` VALUES (428, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-03 21:58:23');
INSERT INTO `log` VALUES (429, '用户名为admin的用户登录时输入验证码错误!', '2020-06-03 21:59:00');
INSERT INTO `log` VALUES (430, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 21:59:07');
INSERT INTO `log` VALUES (431, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-03 22:02:19');
INSERT INTO `log` VALUES (432, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-03 22:04:42');
INSERT INTO `log` VALUES (433, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-03 22:08:08');
INSERT INTO `log` VALUES (434, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-03 22:11:35');
INSERT INTO `log` VALUES (435, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-03 22:12:11');
INSERT INTO `log` VALUES (436, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-03 22:12:55');
INSERT INTO `log` VALUES (437, '用户名为admin的用户登录时输入验证码错误!', '2020-06-04 16:32:28');
INSERT INTO `log` VALUES (438, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-04 16:32:36');
INSERT INTO `log` VALUES (439, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-04 16:33:39');
INSERT INTO `log` VALUES (440, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-04 16:34:04');
INSERT INTO `log` VALUES (441, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-04 16:34:45');
INSERT INTO `log` VALUES (442, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-05 18:50:42');
INSERT INTO `log` VALUES (443, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-05 19:07:14');
INSERT INTO `log` VALUES (444, '用户名为admin的用户登录时输入验证码错误!', '2020-06-06 09:21:32');
INSERT INTO `log` VALUES (445, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 09:21:44');
INSERT INTO `log` VALUES (446, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 09:48:20');
INSERT INTO `log` VALUES (447, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 09:52:33');
INSERT INTO `log` VALUES (448, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 09:56:51');
INSERT INTO `log` VALUES (449, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 10:15:55');
INSERT INTO `log` VALUES (450, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 10:20:43');
INSERT INTO `log` VALUES (451, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 10:21:53');
INSERT INTO `log` VALUES (452, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 10:28:50');
INSERT INTO `log` VALUES (453, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 10:31:58');
INSERT INTO `log` VALUES (454, '用户名为user11的用户登录时输入密码错误!', '2020-06-06 10:35:17');
INSERT INTO `log` VALUES (455, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 10:35:45');
INSERT INTO `log` VALUES (456, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 10:37:06');
INSERT INTO `log` VALUES (457, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 10:58:24');
INSERT INTO `log` VALUES (458, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 11:03:40');
INSERT INTO `log` VALUES (459, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 11:07:34');
INSERT INTO `log` VALUES (460, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 11:13:25');
INSERT INTO `log` VALUES (461, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 11:21:03');
INSERT INTO `log` VALUES (462, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 11:24:47');
INSERT INTO `log` VALUES (463, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 11:25:54');
INSERT INTO `log` VALUES (464, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 11:27:08');
INSERT INTO `log` VALUES (465, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 11:28:48');
INSERT INTO `log` VALUES (466, '用户名为{user11}，角色为{业主}的用户登录成功!', '2020-06-06 11:31:23');
INSERT INTO `log` VALUES (467, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 15:46:09');
INSERT INTO `log` VALUES (468, '用户名为admin的用户登录时输入验证码错误!', '2020-06-06 15:49:10');
INSERT INTO `log` VALUES (469, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 15:49:20');
INSERT INTO `log` VALUES (470, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 16:31:22');
INSERT INTO `log` VALUES (471, '用户名为{user06}，角色为{业主}的用户登录成功!', '2020-06-06 17:01:03');
INSERT INTO `log` VALUES (472, '用户名为admin的用户登录时输入验证码错误!', '2020-06-06 17:01:37');
INSERT INTO `log` VALUES (473, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:01:46');
INSERT INTO `log` VALUES (474, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:06:22');
INSERT INTO `log` VALUES (475, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:08:06');
INSERT INTO `log` VALUES (476, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:10:49');
INSERT INTO `log` VALUES (477, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:12:27');
INSERT INTO `log` VALUES (478, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:15:23');
INSERT INTO `log` VALUES (479, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:21:38');
INSERT INTO `log` VALUES (480, '用户名为{liqingyang}，角色为{普通管理员}的用户登录成功!', '2020-06-06 17:34:23');
INSERT INTO `log` VALUES (481, '用户名为{admin01}，角色为{普通管理员}的用户登录成功!', '2020-06-06 17:35:38');
INSERT INTO `log` VALUES (482, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:35:58');
INSERT INTO `log` VALUES (483, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:40:47');
INSERT INTO `log` VALUES (484, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-06 17:41:18');
INSERT INTO `log` VALUES (485, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:42:33');
INSERT INTO `log` VALUES (486, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:48:28');
INSERT INTO `log` VALUES (487, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 17:51:19');
INSERT INTO `log` VALUES (488, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 18:58:06');
INSERT INTO `log` VALUES (489, '用户名为{user03}，角色为{业主}的用户登录成功!', '2020-06-06 19:02:21');
INSERT INTO `log` VALUES (490, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-06 19:03:11');
INSERT INTO `log` VALUES (491, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-07 08:37:15');
INSERT INTO `log` VALUES (492, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-07 08:51:46');
INSERT INTO `log` VALUES (493, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-07 08:54:19');
INSERT INTO `log` VALUES (494, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-07 08:56:43');
INSERT INTO `log` VALUES (495, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-07 08:58:39');
INSERT INTO `log` VALUES (496, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-07 08:59:27');
INSERT INTO `log` VALUES (497, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-07 09:24:43');
INSERT INTO `log` VALUES (498, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-07 10:15:31');
INSERT INTO `log` VALUES (499, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-07 10:29:17');
INSERT INTO `log` VALUES (500, '用户名为{liqingyang}，角色为{普通管理员}的用户登录成功!', '2020-06-07 10:30:02');
INSERT INTO `log` VALUES (501, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-07 11:13:47');
INSERT INTO `log` VALUES (502, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-07 11:14:19');
INSERT INTO `log` VALUES (503, '用户名为{user02}，角色为{业主}的用户登录成功!', '2020-06-07 11:14:43');
INSERT INTO `log` VALUES (504, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2020-06-07 13:38:09');
INSERT INTO `log` VALUES (505, '用户名为user02的用户登录时输入密码错误!', '2021-01-07 13:17:01');
INSERT INTO `log` VALUES (506, '用户名为user02的用户登录时输入密码错误!', '2021-01-07 13:17:33');
INSERT INTO `log` VALUES (507, '用户名为admin的用户登录时输入验证码错误!', '2021-01-07 13:18:01');
INSERT INTO `log` VALUES (508, '用户名为admin的用户登录时输入验证码错误!', '2021-01-07 13:18:07');
INSERT INTO `log` VALUES (509, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 13:18:28');
INSERT INTO `log` VALUES (510, '用户名为user03的用户登录时输入密码错误!', '2021-01-07 13:19:39');
INSERT INTO `log` VALUES (511, '用户名为张三的用户登录时输入验证码错误!', '2021-01-07 13:20:11');
INSERT INTO `log` VALUES (512, '用户名为张三的用户登录时输入验证码错误!', '2021-01-07 13:21:05');
INSERT INTO `log` VALUES (513, '用户名为zss的用户登录时输入验证码错误!', '2021-01-07 13:25:58');
INSERT INTO `log` VALUES (514, '用户名为{zss}，角色为{业主}的用户登录成功!', '2021-01-07 13:26:04');
INSERT INTO `log` VALUES (515, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 13:28:47');
INSERT INTO `log` VALUES (516, '用户名为lisi的用户登录时输入验证码错误!', '2021-01-07 13:38:43');
INSERT INTO `log` VALUES (517, '用户名为lisi的用户登录时输入验证码错误!', '2021-01-07 13:38:57');
INSERT INTO `log` VALUES (518, '用户名为lisi的用户登录时输入密码错误!', '2021-01-07 13:39:04');
INSERT INTO `log` VALUES (519, '用户名为admin01的用户登录时输入验证码错误!', '2021-01-07 13:41:42');
INSERT INTO `log` VALUES (520, '用户名为admin01的用户登录时输入密码错误!', '2021-01-07 13:41:51');
INSERT INTO `log` VALUES (521, '用户名为admin01的用户登录时输入验证码错误!', '2021-01-07 13:42:12');
INSERT INTO `log` VALUES (522, '用户名为{admin01}，角色为{普通管理员}的用户登录成功!', '2021-01-07 13:42:28');
INSERT INTO `log` VALUES (523, '用户名为{lisi}，角色为{超级管理员}的用户登录成功!', '2021-01-07 13:45:55');
INSERT INTO `log` VALUES (524, '用户名为{lisi}，角色为{超级管理员}的用户登录成功!', '2021-01-07 13:55:40');
INSERT INTO `log` VALUES (525, '用户名为{lisi}，角色为{超级管理员}的用户登录成功!', '2021-01-07 14:04:17');
INSERT INTO `log` VALUES (526, '用户名为{lisi}，角色为{超级管理员}的用户登录成功!', '2021-01-07 19:35:49');
INSERT INTO `log` VALUES (527, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 19:48:55');
INSERT INTO `log` VALUES (528, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 19:54:42');
INSERT INTO `log` VALUES (529, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 19:57:02');
INSERT INTO `log` VALUES (530, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 19:59:00');
INSERT INTO `log` VALUES (531, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:07:19');
INSERT INTO `log` VALUES (532, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:07:41');
INSERT INTO `log` VALUES (533, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:08:03');
INSERT INTO `log` VALUES (534, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 20:08:30');
INSERT INTO `log` VALUES (535, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:09:26');
INSERT INTO `log` VALUES (536, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 20:09:40');
INSERT INTO `log` VALUES (537, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-07 20:10:16');
INSERT INTO `log` VALUES (538, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 20:10:57');
INSERT INTO `log` VALUES (539, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-07 20:12:23');
INSERT INTO `log` VALUES (540, '用户名为admin的用户登录时输入密码错误!', '2021-01-07 20:13:03');
INSERT INTO `log` VALUES (541, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 20:13:15');
INSERT INTO `log` VALUES (542, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-07 20:14:00');
INSERT INTO `log` VALUES (543, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:14:53');
INSERT INTO `log` VALUES (544, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-07 20:15:31');
INSERT INTO `log` VALUES (545, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:24:12');
INSERT INTO `log` VALUES (546, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-07 20:24:37');
INSERT INTO `log` VALUES (547, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:26:18');
INSERT INTO `log` VALUES (548, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-07 20:26:39');
INSERT INTO `log` VALUES (549, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 20:27:22');
INSERT INTO `log` VALUES (550, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:27:55');
INSERT INTO `log` VALUES (551, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 20:28:22');
INSERT INTO `log` VALUES (552, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:29:57');
INSERT INTO `log` VALUES (553, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:34:48');
INSERT INTO `log` VALUES (554, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 20:35:35');
INSERT INTO `log` VALUES (555, '用户名为lisi的用户登录时输入验证码错误!', '2021-01-07 20:37:39');
INSERT INTO `log` VALUES (556, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-07 20:37:43');
INSERT INTO `log` VALUES (557, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:38:18');
INSERT INTO `log` VALUES (558, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-07 20:39:38');
INSERT INTO `log` VALUES (559, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:40:09');
INSERT INTO `log` VALUES (560, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-07 20:42:08');
INSERT INTO `log` VALUES (561, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-08 13:49:24');
INSERT INTO `log` VALUES (562, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-08 13:50:37');
INSERT INTO `log` VALUES (563, '用户名为zss的用户登录时输入验证码错误!', '2021-01-08 14:02:20');
INSERT INTO `log` VALUES (564, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-08 14:18:59');
INSERT INTO `log` VALUES (565, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-08 14:25:18');
INSERT INTO `log` VALUES (566, '用户名为admin的用户登录时输入密码错误!', '2021-01-08 15:06:53');
INSERT INTO `log` VALUES (567, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-08 15:07:04');
INSERT INTO `log` VALUES (568, '用户名为admin的用户登录时输入密码错误!', '2021-01-08 15:08:31');
INSERT INTO `log` VALUES (569, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-08 15:08:38');
INSERT INTO `log` VALUES (570, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-08 15:10:21');
INSERT INTO `log` VALUES (571, '用户名为{zss}，角色为{学生}的用户登录成功!', '2021-01-08 15:10:44');
INSERT INTO `log` VALUES (572, '用户名为{lisi}，角色为{维修工人}的用户登录成功!', '2021-01-08 15:11:04');
INSERT INTO `log` VALUES (573, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-08 15:11:26');
INSERT INTO `log` VALUES (574, '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2021-01-08 15:17:51');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT -1,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '系统设置', '', 'icon-cog');
INSERT INTO `menu` VALUES (5, 1, '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES (13, 1, '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES (14, 0, '工人管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES (15, 14, '工人列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES (17, 5, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (18, 5, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (19, 5, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (20, 5, '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES (21, 13, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (22, 13, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (23, 13, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (24, 15, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (25, 15, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (26, 15, '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES (31, 0, '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES (32, 31, '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES (33, 32, '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES (34, 32, '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES (35, 1, '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES (36, 35, '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES (39, 38, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (40, 38, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (41, 38, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (48, 47, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (49, 47, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (50, 47, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (53, 52, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (54, 52, '编辑', 'openEdit()', 'icon-pencil');
INSERT INTO `menu` VALUES (55, 52, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (58, 0, '学生管理', '', 'icon-user-brown');
INSERT INTO `menu` VALUES (59, 58, '学生列表', '../admin/yezhu/list', 'icon-folder-user');
INSERT INTO `menu` VALUES (60, 59, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (61, 59, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (63, 59, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (67, 66, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (68, 66, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (69, 66, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (72, 71, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (73, 71, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (74, 71, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (77, 76, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (78, 76, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (79, 76, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (80, 81, '报修申请', '../admin/repair/list', 'icon-application-view-list');
INSERT INTO `menu` VALUES (81, 0, '报修管理', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES (82, 80, '申请报修', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (83, 81, '报修处理', '../admin/repair/deal_list', 'icon-application-view-columns');
INSERT INTO `menu` VALUES (84, 83, '处理报修', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (85, 83, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (86, 0, '费用管理', '', 'icon-money');
INSERT INTO `menu` VALUES (87, 86, '管理-收费列表', '../admin/fee/list', 'icon-application-view-list');
INSERT INTO `menu` VALUES (88, 86, '缴费-收费列表', '../admin/fee/deal_list', 'icon-application-view-columns');
INSERT INTO `menu` VALUES (89, 87, '添加账单', 'openAdd()', 'icon-key-start');
INSERT INTO `menu` VALUES (90, 88, '缴费', 'openEdit()', 'icon-key-delete');
INSERT INTO `menu` VALUES (92, 86, '历史账单', '../admin/fee/ls_list', 'icon-folder-image');
INSERT INTO `menu` VALUES (94, 92, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (96, 86, '已缴费列表', '../admin/fee/yj_list', 'icon-table-edit');
INSERT INTO `menu` VALUES (97, 96, '确认缴费', 'openEdit_1()', 'icon-money');
INSERT INTO `menu` VALUES (98, 59, '绑定房屋', 'openEdit_1', 'icon-house-key');
INSERT INTO `menu` VALUES (99, 96, '取消缴纳', 'openEdit_2()', 'icon-cross-octagon');
INSERT INTO `menu` VALUES (100, 59, '绑定宿舍楼', 'openEdit_1()', 'icon-neighbourhood');
INSERT INTO `menu` VALUES (101, 0, '投诉管理', '', 'icon-folder-find');
INSERT INTO `menu` VALUES (102, 101, '管理-投诉列表', '../admin/complaint/deal_list', 'icon-folder-explore');
INSERT INTO `menu` VALUES (103, 101, '投诉-投诉列表', '../admin/complaint/list', 'icon-shield');
INSERT INTO `menu` VALUES (104, 103, '投诉', 'openAdd()', 'icon-bell-delete');
INSERT INTO `menu` VALUES (105, 102, '处理', 'openEdit()', 'icon-theme');
INSERT INTO `menu` VALUES (106, 102, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (107, 0, '首页管理', '', 'icon-application-form');
INSERT INTO `menu` VALUES (108, 107, '管理-资讯列表', '../admin/news/list', 'icon-comments');
INSERT INTO `menu` VALUES (109, 107, '管理-通告栏列表', '../admin/notice/list', 'icon-email-open');
INSERT INTO `menu` VALUES (110, 108, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (111, 108, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (112, 108, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (113, 109, '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES (114, 109, '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES (115, 109, '删除', 'remove()', 'icon-no');
INSERT INTO `menu` VALUES (116, 59, '解除绑定', 'openEdit_2()', 'icon-cross');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `news_id` int(64) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `newsDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `news_content` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (2, '石家庄全市人员车辆不得出市', '2020-05-01 ', NULL, '“五一”天气提前剧透 一大波“好天气”即将抵达 西安市气象台2020年4月28日10时30分发布“五一”专题预报：\r\n“五一”节假日期间，我市以晴到多云天气为主，气温显著升高。具体预报如下： 4月28日：晴间多云，气温：15～30℃； \r\n4月29日：多云转晴，气温：17～32℃； 4月30日：多云转晴，气温：18～34℃； 5月1日：晴间多云，气温：18～35℃； 5月2日：多云，气温：18～36℃； 5月3日：晴间多云，气温：19～36℃； 5月4日：多云，气温：20～34℃； 5月5日：阴天，气温：18～30℃。 \r\n西安市气象台特别提示：“五一”假日期间，我市天气以晴到多云为主，总体有利于公众出行和户外活动，外出时注意防晒和自我防护；\r\n正值季节转换，天气多变，请及时关注最新天气预报。 除此 西安公交为“五一”小长假 也提前做足了准备。\r\n今天（1月7日）下午，河北省石家庄市召开疫情防控第3场新闻发布会。介绍疫情防控最新情况。\r\n\r\n石家庄市副市长孟祥红介绍，严控人员流动管理，石家庄市正在进行全员核酸检测，全市所有车辆及人员均不出市，高风险地区藁城区人员均不离开本区域，中风险地区人员严格管理，同时减少管控范围内的人员列动。（央视新闻）');
INSERT INTO `news` VALUES (3, '特朗普承诺:1月20日将有序过渡', '2020-05-29', NULL, '龙网-新重庆客户端8月1日22时27分讯（记者 赵紫东）针对公众关注的渝北区保时捷女车主有关情况，\r\n重庆市公安局第一时间进行核实，通过新媒体对外公布；\r\n8月1日召开专题会议研究处置，决定责成渝北区公安分局成立调查组进行深入调查。 \r\n7月30日8时50分许，保时捷女车主李某驾车行驶至渝北区龙升街路口处违规调头，与另一车辆男司机发生冲突。\r\n渝北区公安分局接报警后，依法对李某交通违法行为作出处理，双方就纠纷达成调解协议。\r\n随后，网络曝出李某多段视频，自称“爱飙车、经常闯红灯、扣分随意销”，引发公众强烈关注。\r\n不少网友质疑其家庭背景、收入来源、交通违法处理等背后有“猫腻”。 \r\n重庆市公安局对此高度重视，召开专题会议研究调查处置有关工作，责成渝北区公安分局成立调查组，本着对事实、对公众、对当事人高度负责的态度，对网络反映的李某和其丈夫渝北区公安分局石船派出所所长童小华相关情况，依纪依法调查处理。相关事实查清后，将及时向社会公布。\r\n【环球网报道】据美国有线电视新闻网（CNN）刚刚消息，特朗普承诺向拜登“有序”移交权力。特朗普在一份声明中说：“尽管我完全不同意选举结果，事实也证明了我的观点，但1月20日将会有一个有序的过渡。”');
INSERT INTO `news` VALUES (5, '外交部回应美国国会遭暴力冲击', '2020-05-16', NULL, '【环球时报-环球网报道 记者 白云怡】当地时间6日下午，数百名特朗普支持者冲破障碍进入美国国会大厦，向正在进行大选投票结果认证的国会联席会议施压。示威者和警方发生冲突，议员们被紧急疏散，选举人票认证程序一度被迫中止。据美国华盛顿特区警察局长称，截至目前已经有4人在暴力示威活动中死亡。对此，中国外交部发言人华春莹7日表示，希望美国人民能尽快享有和平、稳定和安全，她同时敦促人们深思，为何美国一些人士与媒体对2019年香港修例风波中的暴力行为给予了完全不同的评价。');
INSERT INTO `news` VALUES (6, '北京多地区气温跌破历史极值', '2020-06-02', NULL, '中新网北京1月7日电 (陈杭)7日早晨，北京市20个国家级气象站中有10个站最低气温跌破1月上旬历史同期极值，其中石景山、通州、顺义、昌平、霞云岭、上甸子共6个站跌破建站以来的历史极值。观象台最低气温-19.6℃(出现在7日05:56)，为1966年以后冬季最低值(-27.4℃，1966年2月22日)。\r\n\r\n记者从北京市气象部门获悉，受西伯利亚南下强冷空气影响，6日北京市出现大风、强降温天气，大部分地区偏北风5级左右，阵风8—9级。\r\n\r\n北京市气象台首席预报员雷蕾介绍，受补充南下的冷空气影响，预计7日午后到傍晚、明天白天，北京市有4级左右偏北风，阵风6、7级；气温仍较低，白天最高气温-7℃至-3℃，夜间最低气温-14℃至-13℃，9日开始白天最高气温将回升至1℃及以上。\r\n\r\n北京市气象部门提示，风大、气温低，公众需采取防风、防寒、防冻措施。体弱人群和心脑血管疾病患者做好健康防护。(完)');
INSERT INTO `news` VALUES (7, '15个新一线城市房价皆过万', '2020-06-02', NULL, '新一线城市房价水平如何，哪些新一线城市更容易安居？\r\n\r\n第一财经记者梳理了中国房价行情平台上15个新一线城市的平均单价数据发现，有6个城市超过了2万元/平方米，其中杭州位居第一，南京第二。中部的强省会长沙房价在15个城市中垫底，房价收入比最低。\r\n\r\n根据第一财经·新一线城市研究所2020年6月发布的《2020城市商业魅力排行榜》，2020年15个新一线城市分别是成都、重庆、杭州、武汉、西安、天津、苏州、南京、郑州、长沙、东莞、沈阳、青岛、合肥、佛山。\r\n\r\n杭州第一南京第二\r\n\r\n数据显示，15个城市中，有6个城市单价超过2万元/平方米，有2个城市超过了3万元/平方米，分别是杭州和南京，均为经济大省的省会。其中，2020年10月均价还低于南京的杭州，2个月后均价超越了南京，以33862元/平方米位居新一线城市榜首。\r\n\r\n杭州房价较高，一大原因是近年来在数字经济的带动下，人口、人才流入较快。杭州市统计局的数据显示，2020年前三季度，全市数字经济核心产业增加值2952亿元，增长11.5%，增速比上半年提高1个百分点，占GDP的25.5%。相关产业中，电子信息产品制造产业增长12.6%；人工智能产业增长10%。\r\n\r\n根据2020年4月智联招聘和恒大研究院联合推出的“中国城市人才吸引力排名”，杭州流入人才的28.8%流向了IT、通信、电子、互联网行业。从人才来源看，来自上海和北京的人才合计占比达23.6%，杭州发展所需人才主要在一线城市中，杭州也具有从一线城市争取人才的能力。\r\n\r\n数据显示，2015~2018年杭州人口增量分别是12.6万、17万、28万、33.8万人，逐渐追上广深。2019年，杭州常住人口从2018年的980.6万人增长到1036万人，增量达55.4万人，年度增量首次超过深圳和广州，位居全国第一。\r\n\r\n与此同时，杭州的土地市场也十分火热。杭州曾经连续多年卖地收入位居全国首位。2020年，杭州土地出让金虽然不再位列榜首，但也达到了2574亿元，位居第二。这是杭州连续第4年卖地收入超过2000亿元。5年来，杭州土地出让金已经超过了万亿大关。\r\n\r\n杭州之后，南京以32855元/平方米在15个城市中位居第二。\r\n\r\n南京的高教实力在全国仅次于京沪，位居第三位。近年来南京加大力度，发挥雄厚的科教资源优势，科创产业、新兴产业快速发展。今年1月4日，江苏省南京市召开的新年“第一会”——2021年创新名城建设推进大会上，第四次把“创新”定为全年发展“关键词”。\r\n\r\n在科创产业快速发展的同时，南京也在积极做大做强中心城市平台，通过南京都市圈的建设，大幅提升了南京集聚资源和辐射带动周边发展的能力，城市能级不断提升。经济快速发展的同时，南京房地产业也快速发展。2020年，南京的土地出让金也超过了2000亿元，位居全国第四。\r\n\r\n长沙房价垫底\r\n\r\n直辖市天津以26332元/平方米在15个城市中位居第三。\r\n\r\n根据国家统计局公布的2020年11月份70个大中城市商品住宅销售价格变动情况，在35个重点城市房价中，天津跌幅最深，同比下跌了4.4%。尽管如此，天津房价仍在新一线城市中位列第3。\r\n\r\n除了天津，东莞、苏州、青岛这三个经济大市房价也都超过了2万元/平方米。其中，东莞和苏州是当前北上广深之外，高新技术企业数量最多的城市，转型升级成效十分显著。其中东莞靠近深圳，承接了不少深圳购买力的外溢。苏州靠近上海，也存在类似的情况。\r\n\r\n单价超过2万元/平方米的新一线城市，全部来自东部沿海发达地区。相比之下，中西部的城市均低于2万元/平方米。其中武汉、合肥和成都位居中西部前三位，这几个城市当前的高新技术产业发展都十分不错。高新产业、新兴产业发展好的城市，往往集聚更多的年轻人才，收入也比较高，购房动力较强。\r\n\r\n但产业发展好，居民收入高的城市，房价不一定就高。这其中，长沙就是一个“收入高、房价低”的典范。\r\n\r\n数据显示，2019年长沙城镇居民人均收入达55211元，位居中西部第一，超过了济南、福州等沿海省会城市。但在房价方面，长沙在中西部地区所有城市中仅位居第17，位居芜湖、拉萨、呼和浩特、太原等城市之后。根据贝壳研究院日前发布的《2020新青年居住消费趋势报告》，30个样本城市的房价收入比重，深圳最高，长沙最低。');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` int(64) NOT NULL AUTO_INCREMENT,
  `noticeDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `notice_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '2020-05-07', '当地时间1月7日凌晨3点45分左右，美国国会参众两院联席会议在经过计票后，完成了选举人团票认证。美国前副总统、民主党候选人拜登以306票多数票，当选第46任美国总统；哈里斯当选副总统。\r\n\r\n此前，当地时间1月6日，在美国国会确认大选结果之际，大批特朗普支持者闯入美国国会大厦，导致现场混乱。据多家美媒报道，这场震惊全球的骚乱，已经造成了4人死亡。');

-- ----------------------------
-- Table structure for parking
-- ----------------------------
DROP TABLE IF EXISTS `parking`;
CREATE TABLE `parking`  (
  `park_id` int(32) NOT NULL AUTO_INCREMENT,
  `car_no` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `yezhu_id` int(32) NULL DEFAULT NULL,
  `status` int(1) NOT NULL,
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `park_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`park_id`) USING BTREE,
  INDEX `yezhu_id`(`yezhu_id`) USING BTREE,
  CONSTRAINT `parking_ibfk_1` FOREIGN KEY (`yezhu_id`) REFERENCES `yezhu` (`yezhu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parking
-- ----------------------------

-- ----------------------------
-- Table structure for repair
-- ----------------------------
DROP TABLE IF EXISTS `repair`;
CREATE TABLE `repair`  (
  `rep_id` int(64) NOT NULL AUTO_INCREMENT,
  `yezhu_id` int(64) NOT NULL,
  `repairDate` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `rep_question` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `rep_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `dealDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rep_id`) USING BTREE,
  INDEX `yezhu_id`(`yezhu_id`) USING BTREE,
  CONSTRAINT `repair_ibfk_1` FOREIGN KEY (`yezhu_id`) REFERENCES `yezhu` (`yezhu_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repair
-- ----------------------------
INSERT INTO `repair` VALUES (8, 22, '2021-01-21', 0, '下水道', '已处理', '', NULL);
INSERT INTO `repair` VALUES (9, 22, '2021-01-13', 1, '下水道', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '超级管理员拥有一切权限！！');
INSERT INTO `role` VALUES (2, '维修工人', '普通工人');
INSERT INTO `role` VALUES (3, '学生', '学生的权限');

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type_price` decimal(32, 2) NOT NULL,
  `roomNum` int(32) NOT NULL,
  `livedNum` int(32) NOT NULL DEFAULT 0,
  `avilableNum` int(32) NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `remark` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES (1, '七人间', 1500.00, 20, -4, 12, 1, '45平方米');
INSERT INTO `room_type` VALUES (2, '六人间', 2200.00, 30, 1, 7, 1, '75平方米');
INSERT INTO `room_type` VALUES (4, '五人间', 2300.00, 40, 3, 5, 1, '100平方米');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT 0,
  `age` int(3) NULL DEFAULT 0,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (29, 'admin', '123456', 1, '/xq/resources/upload/1609998508257.png', 1, 1, '山东潍坊');
INSERT INTO `user` VALUES (33, 'lisi', '123456', 2, '/xq/resources/upload/1609997529540.png', 1, 12, '11@qq.com');
INSERT INTO `user` VALUES (34, 'zss', '123456', 3, '/xq/resources/upload/1610021339821.png', 1, 11, '111');

-- ----------------------------
-- Table structure for yezhu
-- ----------------------------
DROP TABLE IF EXISTS `yezhu`;
CREATE TABLE `yezhu`  (
  `yezhu_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `yz_photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `yz_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yz_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `yz_sex` int(1) NULL DEFAULT 0,
  `idCard` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yz_phone` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yz_email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `house_id` int(11) NULL DEFAULT NULL,
  `roleid` int(1) NOT NULL DEFAULT 3,
  PRIMARY KEY (`yezhu_id`) USING BTREE,
  INDEX `house_id`(`house_id`) USING BTREE,
  INDEX `house_id_2`(`house_id`) USING BTREE,
  INDEX `house_id_3`(`house_id`) USING BTREE,
  INDEX `house_id_4`(`house_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yezhu
-- ----------------------------
INSERT INTO `yezhu` VALUES (22, 'zss', '/xq/resources/upload/1610021339821.png', '123456', '张三三', 1, '1523456', '123456', '22@qq.com', NULL, 3);

SET FOREIGN_KEY_CHECKS = 1;
