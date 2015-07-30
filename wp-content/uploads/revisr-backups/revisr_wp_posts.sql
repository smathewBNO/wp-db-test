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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wp_posts` WRITE;
INSERT INTO `wp_posts` VALUES ('1','1','2015-06-23 13:57:44','2015-06-23 13:57:44','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2015-06-23 13:57:44','2015-06-23 13:57:44','','0','http://localhost:8888/?p=1','0','post','','1'), ('2','1','2015-06-23 13:57:44','2015-06-23 13:57:44','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2015-06-23 13:57:44','2015-06-23 13:57:44','','0','http://localhost:8888/?page_id=2','0','page','','0'), ('4','1','2015-06-23 14:11:34','2015-06-23 14:11:34','[multipage_form_sc]','DB-Design','','publish','open','open','','db-design','','','2015-06-23 14:36:33','2015-06-23 14:36:33','','0','http://localhost:8888/?page_id=4','0','page','','0'), ('5','1','2015-06-23 14:11:34','2015-06-23 14:11:34','','DB-Design','','inherit','open','open','','4-revision-v1','','','2015-06-23 14:11:34','2015-06-23 14:11:34','','4','http://localhost:8888/2015/06/23/4-revision-v1/','0','revision','','0'), ('6','1','2015-06-23 14:36:33','2015-06-23 14:36:33','[multipage_form_sc]','DB-Design','','inherit','open','open','','4-revision-v1','','','2015-06-23 14:36:33','2015-06-23 14:36:33','','4','http://localhost:8888/2015/06/23/4-revision-v1/','0','revision','','0'), ('7','1','2015-06-24 16:05:32','2015-06-24 16:05:32','[form_report_sc]','Reporting','','publish','open','open','','reporting','','','2015-06-24 16:38:03','2015-06-24 16:38:03','','0','http://localhost:8888/?page_id=7','0','page','','0'), ('8','1','2015-06-24 16:05:32','2015-06-24 16:05:32','','Reporting','','inherit','open','open','','7-revision-v1','','','2015-06-24 16:05:32','2015-06-24 16:05:32','','7','http://localhost:8888/2015/06/24/7-revision-v1/','0','revision','','0'), ('9','1','2015-06-24 16:38:03','2015-06-24 16:38:03','[form_report_sc]','Reporting','','inherit','open','open','','7-revision-v1','','','2015-06-24 16:38:03','2015-06-24 16:38:03','','7','http://localhost:8888/2015/06/24/7-revision-v1/','0','revision','','0'), ('10','1','2015-06-25 19:52:03','2015-06-25 19:52:03','','Edit Profile','','publish','open','open','','profile','','','2015-06-25 19:55:53','2015-06-25 19:55:53','','0','http://localhost:8888/?page_id=10','0','page','','0'), ('11','1','2015-06-25 19:52:03','2015-06-25 19:52:03','','Edit Profile','','inherit','open','open','','10-revision-v1','','','2015-06-25 19:52:03','2015-06-25 19:52:03','','10','http://localhost:8888/2015/06/25/10-revision-v1/','0','revision','','0'), ('12','1','2015-07-30 14:43:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2015-07-30 14:43:28','0000-00-00 00:00:00','','0','http://localhost:8888/?p=12','0','post','','0'), ('13','0','2015-07-30 14:53:30','2015-07-30 14:53:30','','Daily backup - July 30, 2015','','publish','open','open','','daily-backup-july-30-2015','','','2015-07-30 14:53:30','2015-07-30 14:53:30','','0','http://localhost:8888/daily-backup-july-30-2015/','0','revisr_commits','','0'), ('14','1','2015-07-30 15:18:49','2015-07-30 15:18:49','','','','publish','closed','closed','','14','','','2015-07-30 15:18:49','2015-07-30 15:18:49','','0','http://localhost:8888/?post_type=revisr_commits&#038;p=14','0','revisr_commits','','0'), ('15','1','2015-07-30 15:19:10','2015-07-30 15:19:10','','Test title change','','publish','closed','closed','','test-title-change','','','2015-07-30 15:19:10','2015-07-30 15:19:10','','0','http://localhost:8888/?post_type=revisr_commits&#038;p=15','0','revisr_commits','','0');
UNLOCK TABLES;
