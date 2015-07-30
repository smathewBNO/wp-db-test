DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wp_postmeta` WRITE;
INSERT INTO `wp_postmeta` VALUES ('1','2','_wp_page_template','default'), ('2','4','_edit_last','1'), ('3','4','_edit_lock','1435261754:1'), ('4','4','_wp_page_template','default'), ('5','7','_edit_last','1'), ('6','7','_edit_lock','1438269236:1'), ('7','7','_wp_page_template','default'), ('8','10','_edit_last','1'), ('9','10','_edit_lock','1435262153:1'), ('10','10','_wp_page_template','profile.php'), ('11','13','branch','master'), ('12','13','commit_hash','8c05ed0'), ('13','13','files_changed','21'), ('14','13','committed_files','a:21:{i:0;s:12:\"?? .DS_Store\";i:1;s:12:\"?? .htaccess\";i:2;s:12:\"?? index.php\";i:3;s:14:\"?? license.txt\";i:4;s:14:\"?? readme.html\";i:5;s:18:\"?? wp-activate.php\";i:6;s:12:\"?? wp-admin/\";i:7;s:21:\"?? wp-blog-header.php\";i:8;s:23:\"?? wp-comments-post.php\";i:9;s:23:\"?? wp-config-sample.php\";i:10;s:14:\"?? wp-content/\";i:11;s:14:\"?? wp-cron.php\";i:12;s:15:\"?? wp-includes/\";i:13;s:20:\"?? wp-links-opml.php\";i:14;s:14:\"?? wp-load.php\";i:15;s:15:\"?? wp-login.php\";i:16;s:14:\"?? wp-mail.php\";i:17;s:18:\"?? wp-settings.php\";i:18;s:16:\"?? wp-signup.php\";i:19;s:19:\"?? wp-trackback.php\";i:20;s:13:\"?? xmlrpc.php\";}'), ('15','13','db_hash','8c05ed0'), ('16','14','_edit_lock','1438269516:1'), ('17','14','_edit_last','1'), ('18','15','_edit_lock','1438269449:1'), ('19','15','_edit_last','1'), ('20','15','committed_files','a:1:{i:0;s:40:\" M wp-content/themes/dbdesign/header.php\";}'), ('21','15','files_changed','1'), ('22','15','commit_hash','1905e2c'), ('23','15','branch','master'), ('24','15','commit_status','Committed'), ('25','15','git_tag',''), ('26','13','_edit_lock','1438269497:1');
UNLOCK TABLES;
