DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wp_posts` WRITE;
INSERT INTO `wp_posts` VALUES ('1','1','2015-06-23 13:57:44','2015-06-23 13:57:44','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2015-06-23 13:57:44','2015-06-23 13:57:44','','0','http://localhost:8888/?p=1','0','post','','1'), ('4','1','2015-06-23 14:11:34','2015-06-23 14:11:34','[multipage_form_sc]','DB-Design','','publish','open','open','','db-design','','','2015-06-23 14:36:33','2015-06-23 14:36:33','','0','http://localhost:8888/?page_id=4','0','page','','0'), ('5','1','2015-06-23 14:11:34','2015-06-23 14:11:34','','DB-Design','','inherit','open','open','','4-revision-v1','','','2015-06-23 14:11:34','2015-06-23 14:11:34','','4','http://localhost:8888/2015/06/23/4-revision-v1/','0','revision','','0'), ('6','1','2015-06-23 14:36:33','2015-06-23 14:36:33','[multipage_form_sc]','DB-Design','','inherit','open','open','','4-revision-v1','','','2015-06-23 14:36:33','2015-06-23 14:36:33','','4','http://localhost:8888/2015/06/23/4-revision-v1/','0','revision','','0'), ('7','1','2015-06-24 16:05:32','2015-06-24 16:05:32','[form_report_sc]','Reporting','','publish','open','open','','reporting','','','2015-06-24 16:38:03','2015-06-24 16:38:03','','0','http://localhost:8888/?page_id=7','0','page','','0'), ('8','1','2015-06-24 16:05:32','2015-06-24 16:05:32','','Reporting','','inherit','open','open','','7-revision-v1','','','2015-06-24 16:05:32','2015-06-24 16:05:32','','7','http://localhost:8888/2015/06/24/7-revision-v1/','0','revision','','0'), ('9','1','2015-06-24 16:38:03','2015-06-24 16:38:03','[form_report_sc]','Reporting','','inherit','open','open','','7-revision-v1','','','2015-06-24 16:38:03','2015-06-24 16:38:03','','7','http://localhost:8888/2015/06/24/7-revision-v1/','0','revision','','0'), ('10','1','2015-06-25 19:52:03','2015-06-25 19:52:03','','Edit Profile','','publish','open','open','','profile','','','2015-06-25 19:55:53','2015-06-25 19:55:53','','0','http://localhost:8888/?page_id=10','0','page','','0'), ('11','1','2015-06-25 19:52:03','2015-06-25 19:52:03','','Edit Profile','','inherit','open','open','','10-revision-v1','','','2015-06-25 19:52:03','2015-06-25 19:52:03','','10','http://localhost:8888/2015/06/25/10-revision-v1/','0','revision','','0'), ('13','0','2015-07-30 14:53:30','2015-07-30 14:53:30','','Daily backup - July 30, 2015','','publish','open','open','','daily-backup-july-30-2015','','','2015-07-30 14:53:30','2015-07-30 14:53:30','','0','http://localhost:8888/daily-backup-july-30-2015/','0','revisr_commits','','0'), ('14','1','2015-07-30 15:18:49','2015-07-30 15:18:49','','','','publish','closed','closed','','14','','','2015-07-30 15:18:49','2015-07-30 15:18:49','','0','http://localhost:8888/?post_type=revisr_commits&#038;p=14','0','revisr_commits','','0'), ('15','1','2015-07-30 15:19:10','2015-07-30 15:19:10','','Test title change','','publish','closed','closed','','test-title-change','','','2015-07-30 15:19:10','2015-07-30 15:19:10','','0','http://localhost:8888/?post_type=revisr_commits&#038;p=15','0','revisr_commits','','0'), ('16','1','2015-07-30 15:44:26','2015-07-30 15:44:26','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr','','','2015-07-30 15:44:26','2015-07-30 15:44:26','','0','http://localhost:8888/revisr_commits/backed-up-the-database-with-revisr/','0','revisr_commits','','0'), ('17','1','2015-07-30 15:49:58','2015-07-30 15:49:58','','Test Page for Revisr','','publish','open','open','','test-page-for-revisr','','','2015-07-30 15:49:58','2015-07-30 15:49:58','','0','http://localhost:8888/?page_id=17','0','page','','0'), ('18','1','2015-07-30 15:49:58','2015-07-30 15:49:58','','Test Page for Revisr','','inherit','open','open','','17-revision-v1','','','2015-07-30 15:49:58','2015-07-30 15:49:58','','17','http://localhost:8888/17-revision-v1/','0','revision','','0'), ('20','1','2015-07-30 16:41:34','2015-07-30 16:41:34','','Backed up the database with Revisr.','','publish','open','open','','backed-up-the-database-with-revisr-2','','','2015-07-30 16:41:34','2015-07-30 16:41:34','','0','http://localhost:8888/revisr_commits/backed-up-the-database-with-revisr-2/','0','revisr_commits','','0'), ('21','0','2016-05-03 18:05:14','2016-05-03 18:05:14','','Daily backup - May 3, 2016','','publish','open','open','','daily-backup-may-3-2016','','','2016-05-03 18:05:14','2016-05-03 18:05:14','','0','http://localhost:8888/daily-backup-may-3-2016/','0','revisr_commits','','0');
UNLOCK TABLES;
