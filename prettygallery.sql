

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `filename` varchar(100) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', 'TEST', '', '1858_1352351329.jpeg');
INSERT INTO `items` VALUES ('2', 'test2', '', '1858_1352352903.jpeg');
INSERT INTO `items` VALUES ('3', 'asdasd', '', '1858_1352352984.jpeg');
INSERT INTO `items` VALUES ('4', 'asdasdasdasd', '', '1858_1352353012.jpeg');
INSERT INTO `items` VALUES ('5', 'Come up with something', '', '1859_1352353358.jpeg');
INSERT INTO `items` VALUES ('6', '', '', '1858_1352353645.jpeg');
INSERT INTO `items` VALUES ('7', 'koala', '', '1858_1352356667.jpeg');
INSERT INTO `items` VALUES ('8', 'gif test', '', '1858_1352356810.gif');
INSERT INTO `items` VALUES ('9', 'Discount', '', '1859_1352356930.jpeg');
INSERT INTO `items` VALUES ('10', 'tulip', '', '1858_1352357091.jpeg');
INSERT INTO `items` VALUES ('11', 'Hdkkdkkfkjd', '', '1859_1352358888.jpeg');
INSERT INTO `items` VALUES ('16', 'test4', '', '1858_1352370265.jpeg');
INSERT INTO `items` VALUES ('17', 'asd', '', '1858_1352370276.jpeg');
INSERT INTO `items` VALUES ('18', 'sdasd', '', '1858_1352370290.jpeg');
INSERT INTO `items` VALUES ('15', 'lksflksnfs', '', '1859_1352369413.jpeg');
INSERT INTO `items` VALUES ('19', 'wer', '', '1858_1352370303.jpeg');
INSERT INTO `items` VALUES ('14', 'Nothing', '', '1864_1352364555.jpeg');
INSERT INTO `items` VALUES ('20', 'werwer', '', '1858_1352370314.jpeg');
INSERT INTO `items` VALUES ('21', 'asdasd', '', '1858_1352370327.jpeg');
INSERT INTO `items` VALUES ('22', 'hhjjgh', '', '1858_1352370339.jpeg');
INSERT INTO `items` VALUES ('23', 'ghjghj', '', '1858_1352370353.jpeg');
INSERT INTO `items` VALUES ('24', 'fsdf', '', '1858_1352370366.jpeg');
INSERT INTO `items` VALUES ('25', 'asdasd', '', '1858_1352370439.jpeg');
INSERT INTO `items` VALUES ('26', 'ssdfsdf', '', '1858_1352370457.jpeg');
INSERT INTO `items` VALUES ('27', 'sdfsdf', '', '1858_1352370472.jpeg');
INSERT INTO `items` VALUES ('28', 'dfgdfg', '', '1858_1352370483.jpeg');
INSERT INTO `items` VALUES ('29', 'asdasd', '', '1858_1352370497.jpeg');
INSERT INTO `items` VALUES ('30', 'zxczxc', '', '1858_1352370522.jpeg');
INSERT INTO `items` VALUES ('31', 'zxczxc', '', '1858_1352370541.jpeg');
INSERT INTO `items` VALUES ('32', 'cvbcvb', '', '1858_1352370570.jpeg');
INSERT INTO `items` VALUES ('33', 'asdasd', '', '1858_1352373915.jpeg');
INSERT INTO `items` VALUES ('34', 'asdas', '', '1858_1352374082.jpeg');
INSERT INTO `items` VALUES ('35', 'test caption', '', '1861_1352377135.jpeg');
INSERT INTO `items` VALUES ('36', 'mobile talents', '', '1859_1352378256.jpeg');
