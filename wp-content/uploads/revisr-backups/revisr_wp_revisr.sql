DROP TABLE IF EXISTS `wp_revisr`;
CREATE TABLE `wp_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
LOCK TABLES `wp_revisr` WRITE;
INSERT INTO `wp_revisr` VALUES ('1','2015-07-30 14:45:45','Successfully created a new repository.','init'), ('2','2015-07-30 14:53:30','Error backing up the database.','error'), ('3','2015-07-30 14:53:30','The daily backup was successful.','backup'), ('4','2015-07-30 15:19:10','Committed <a href=\"http://localhost:8888/wp-admin/post.php?post=15&action=edit\">#1905e2c</a> to the local repository.','commit'), ('5','2015-07-30 15:19:11','Successfully pushed 1 commit to origin/master.','push'), ('6','2015-07-30 15:44:26','Successfully backed up the database.','backup'), ('7','2015-07-30 15:44:27','Successfully pushed 1 commit to origin/master.','push'), ('8','2015-07-30 16:00:35','Successfully pushed 1 commit to origin/master.','push'), ('9','2015-07-30 16:00:35','Reverted to commit <a href=\"http://localhost:8888/wp-admin/post.php?post=13&action=edit\">#8c05ed0</a>.','revert'), ('10','2015-07-30 16:41:34','Successfully backed up the database.','backup'), ('11','2015-07-30 16:41:35','Successfully pushed 1 commit to origin/master.','push');
UNLOCK TABLES;
