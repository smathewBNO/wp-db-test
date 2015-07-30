DROP TABLE IF EXISTS `shopping_preferences`;
CREATE TABLE `shopping_preferences` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `zip_code` varchar(5) NOT NULL,
  `gender` int(1) NOT NULL,
  `age` int(3) NOT NULL,
  `education` varchar(50) NOT NULL,
  `income` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `categories` varchar(400) NOT NULL,
  `page` int(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
LOCK TABLES `shopping_preferences` WRITE;
INSERT INTO `shopping_preferences` VALUES ('4','test','test','test@test.com','1111111111','11111','0','0','','','','','1','2015-06-23 12:29:46'), ('5','test2','test2','test2@test.com','2222222222','22222','0','0','','','','','1','2015-06-23 12:33:51'), ('6','test3','test3','test3@test.com','3333333333','33333','0','0','','','','','1','2015-06-23 12:56:28'), ('7','test4','test4','test4@test.com','4444444444','44444','0','0','','','','','2','2015-06-23 15:26:53'), ('8','test5','test5','test5','test5','test5','0','0','','','','','2','2015-06-23 15:31:20'), ('9','test6','test6','test6','test6','test6','0','0','','','','','2','2015-06-23 15:33:03'), ('10','test7','test7','test7','test7','test7','0','33','some_grad','75000','','','2','2015-06-23 15:47:54'), ('11','test8','test8','test8','test8','test8','0','0','','','','','2','2015-06-23 16:05:04'), ('12','test9','test9','test9','test9','test9','1','22','some_college','50000','','','2','2015-06-23 16:06:36'), ('13','test20','test20','test20','test20','00000','0','0','','','','','1','2015-06-24 11:09:25'), ('15','test21','test21','test21','test21','11111','0','0','','','','','1','2015-06-24 11:17:07'), ('16','test22','test22','test22','test22','test2','0','0','','','','','1','2015-06-24 11:19:47'), ('17','test23','test23','test23','test23','12345','0','55','some_high_school','50000','ebay','eretailer','3','2015-06-24 11:32:38'), ('18','test24','test24','test24','test24','12345','1','33','some_grad','75000','ebay','classifieds','3','2015-06-24 11:37:28'), ('19','test25','test25','test25','test25','12345','0','65','all_colleg','max','eretailer','classifieds','3','2015-06-24 11:42:20'), ('20','test26','test26','test26','test26','12345','0','55','some_college','75000','eretailer','eretailer','3','2015-06-24 12:42:14'), ('21','first name','last name','email@email.com','123-456-7890','12345','0','25','all_colleg','75000','eretailer','classifieds','3','2015-06-24 12:52:46'), ('22','first','last','email','phone','12345','1','36','some_college','75000','ebay','classifieds','3','2015-06-24 12:55:52'), ('23','shawn','mathew','test@testing.com','phone num','12345','1','33','some_grad','75000','ebay','classifieds','3','2015-06-25 10:31:03');
UNLOCK TABLES;
