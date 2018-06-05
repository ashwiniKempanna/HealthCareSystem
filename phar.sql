/*
MySQL Data Transfer
Source Host: localhost
Source Database: phar
Target Host: localhost
Target Database: phar
Date: 3/14/2018 3:54:34 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin_inbox
-- ----------------------------
DROP TABLE IF EXISTS `admin_inbox`;
CREATE TABLE `admin_inbox` (
  `MID` int(11) NOT NULL DEFAULT '0',
  `USER_NAME` varchar(30) DEFAULT NULL,
  `MSG_FROM` varchar(50) DEFAULT NULL,
  `MSG_SUBJECT` varchar(50) DEFAULT NULL,
  `MSG_DATA` varchar(500) DEFAULT NULL,
  `MSG_DATE` date DEFAULT NULL,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `CATEGORY` varchar(30) DEFAULT NULL,
  `ITEMNAME` varchar(50) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `PRICE` int(10) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ITEMNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `APPLIANCES` varchar(30) DEFAULT NULL,
  `BUILDINGS` varchar(30) DEFAULT NULL,
  `CLOTHING` varchar(30) DEFAULT NULL,
  `ELECTRONICS` varchar(30) DEFAULT NULL,
  `FOOD` varchar(30) DEFAULT NULL,
  `HARDWARE` varchar(30) DEFAULT NULL,
  `MUSIC` varchar(30) DEFAULT NULL,
  `BOOKS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for categorymaster
-- ----------------------------
DROP TABLE IF EXISTS `categorymaster`;
CREATE TABLE `categorymaster` (
  `CAT_NO` varchar(40) NOT NULL,
  `CAT_NAME` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`CAT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for cyber_admin
-- ----------------------------
DROP TABLE IF EXISTS `cyber_admin`;
CREATE TABLE `cyber_admin` (
  `USER_NAME` varchar(30) NOT NULL DEFAULT '',
  `PASSWORD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for cyber_signup
-- ----------------------------
DROP TABLE IF EXISTS `cyber_signup`;
CREATE TABLE `cyber_signup` (
  `USER_NAME` varchar(30) NOT NULL DEFAULT '',
  `PASSWORD` varchar(30) DEFAULT NULL,
  `ALTERNATE_EMAIL` varchar(30) DEFAULT NULL,
  `SEX` varchar(30) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `HINT_QUESTION` varchar(30) DEFAULT NULL,
  `HINT_ANSWER` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `OCCUPATION` varchar(30) DEFAULT NULL,
  `SUN_SIGN` varchar(30) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for films
-- ----------------------------
DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `BANNER` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `LANGUAGE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `ITEMNAME` varchar(30) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `PRICE` int(10) DEFAULT NULL,
  PRIMARY KEY (`ITEMNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORYNAME` varchar(30) NOT NULL,
  `PRODUCTNAME` varchar(30) DEFAULT NULL,
  `PRODUCT_DESC` varchar(100) DEFAULT NULL,
  `PROD_PRICE` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for sendorder
-- ----------------------------
DROP TABLE IF EXISTS `sendorder`;
CREATE TABLE `sendorder` (
  `CUSTOMER` varchar(30) DEFAULT NULL,
  `TIME` int(11) NOT NULL DEFAULT '0',
  `CATEGORY` varchar(30) DEFAULT NULL,
  `ITEMNAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `PRICE` int(10) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `ODATE` varchar(255) DEFAULT NULL,
  `GRANDTOTAL` int(11) DEFAULT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for topfilms
-- ----------------------------
DROP TABLE IF EXISTS `topfilms`;
CREATE TABLE `topfilms` (
  `BANNER` varchar(50) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `LANGUAGE` varchar(20) DEFAULT NULL,
  `VOTES` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user_inbox
-- ----------------------------
DROP TABLE IF EXISTS `user_inbox`;
CREATE TABLE `user_inbox` (
  `MID` int(11) NOT NULL DEFAULT '0',
  `USER_NAME` varchar(30) DEFAULT NULL,
  `MSG_FROM` varchar(50) DEFAULT NULL,
  `MSG_SUBJECT` varchar(50) DEFAULT NULL,
  `MSG_DATA` varchar(500) DEFAULT NULL,
  `MSG_DATE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `categorymaster` VALUES ('1', 'Baby product');
INSERT INTO `categorymaster` VALUES ('1', 'Hair');
INSERT INTO `cyber_admin` VALUES ('admin', 'admin');
INSERT INTO `cyber_signup` VALUES ('ram', 'ram', 'ram@mail.com', 'male', '1989-07-12', 'Hi,cv,j', 'Triupathi', 'Bangalore', 'Engineer', 'tfgh', null);
INSERT INTO `films` VALUES ('abcd', 'xyz', 'tollywood');
INSERT INTO `films` VALUES ('vijayanthi', 'tagore', 'tollywood');
INSERT INTO `films` VALUES ('raju', 'bunny', 'bollywood');
INSERT INTO `films` VALUES ('raju', 'bunny', 'hollywood');
INSERT INTO `product` VALUES ('1', 'hair', 'df', 'mvkjgkljg', '150', '2018-03-15');
INSERT INTO `product` VALUES ('2', 'Baby product', 'jhkfl', 'jv jhkjgjk', '150', '2018-03-15');
INSERT INTO `product` VALUES ('3', 'Baby product', 'hgmhg', 'hgcdmhcd', '15', '2018-03-15');
INSERT INTO `sendorder` VALUES ('ram', '3', 'Baby product', 'Baby product', 'jv jhkjgjk', '150', '1', '150', '14-Mar-2018', '300', 'bangalore');
INSERT INTO `sendorder` VALUES ('ram', '4', 'Hair', 'hair', 'mvkjgkljg', '150', '1', '150', '14-Mar-2018', '300', 'bangalore');
INSERT INTO `sendorder` VALUES ('ram', '5', 'Baby product', 'Baby product', '2018-03-15', '15', '3', '45', '14-Mar-2018', '345', 'bangalore	');
INSERT INTO `sendorder` VALUES ('ram', '6', 'Hair', 'hair', 'mvkjgkljg', '150', '2', '300', '14-Mar-2018', '345', 'bangalore	');
INSERT INTO `topfilms` VALUES ('abcd', 'xyz', 'tollywood', '0');
INSERT INTO `topfilms` VALUES ('abcd', 'xyz', 'tollywood', '1');
INSERT INTO `topfilms` VALUES ('vijayanthi', 'tagore', 'tollywood', '0');
INSERT INTO `topfilms` VALUES ('raju', 'bunny', 'bollywood', '0');
INSERT INTO `topfilms` VALUES ('raju', 'bunny', 'bollywood', '1');
INSERT INTO `topfilms` VALUES ('abcd', 'xyz', 'tollywood', '2');
INSERT INTO `topfilms` VALUES ('vijayanthi', 'tagore', 'tollywood', '3');
INSERT INTO `topfilms` VALUES ('raju', 'bunny', 'bollywood', '5');
INSERT INTO `topfilms` VALUES ('raju', 'bunny', 'hollywood', '8');
INSERT INTO `topfilms` VALUES ('raju', 'bunny', 'hollywood', '4');
