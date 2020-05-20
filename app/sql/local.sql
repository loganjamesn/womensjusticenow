-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-04-22 16:16:49','2020-04-22 16:16:49','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','',0,0);
INSERT INTO `wp_comments` VALUES (2,1,'Logues','loganjamesnottbohm@gmail.com','','127.0.0.1','2020-04-22 16:18:03','2020-04-22 16:18:03','This is a test comment.',0,'post-trashed','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://progressivemass.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://progressivemass.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Progressive Massachusetts','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','loganjamesnottbohm@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','3','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:7:\"cars/?$\";s:24:\"index.php?post_type=cars\";s:37:\"cars/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=cars&feed=$matches[1]\";s:32:\"cars/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=cars&feed=$matches[1]\";s:24:\"cars/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=cars&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:30:\"cars/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"cars/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"cars/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cars/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cars/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"cars/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:19:\"cars/(.+?)/embed/?$\";s:37:\"index.php?cars=$matches[1]&embed=true\";s:23:\"cars/(.+?)/trackback/?$\";s:31:\"index.php?cars=$matches[1]&tb=1\";s:43:\"cars/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?cars=$matches[1]&feed=$matches[2]\";s:38:\"cars/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?cars=$matches[1]&feed=$matches[2]\";s:31:\"cars/(.+?)/page/?([0-9]{1,})/?$\";s:44:\"index.php?cars=$matches[1]&paged=$matches[2]\";s:38:\"cars/(.+?)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?cars=$matches[1]&cpage=$matches[2]\";s:27:\"cars/(.+?)(?:/([0-9]+))?/?$\";s:43:\"index.php?cars=$matches[1]&page=$matches[2]\";s:47:\"brands/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?brands=$matches[1]&feed=$matches[2]\";s:42:\"brands/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?brands=$matches[1]&feed=$matches[2]\";s:23:\"brands/([^/]+)/embed/?$\";s:39:\"index.php?brands=$matches[1]&embed=true\";s:35:\"brands/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?brands=$matches[1]&paged=$matches[2]\";s:17:\"brands/([^/]+)/?$\";s:28:\"index.php?brands=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','mytheme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','mytheme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','47018','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','America/New_York','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','9','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1603124209','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','47018','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:12:\"Recent Posts\";s:6:\"number\";i:6;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:13:\"Post Archives\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"page-sidebar\";a:2:{i:0;s:10:\"nav_menu-2\";i:1;s:14:\"recent-posts-3\";}s:12:\"blog-sidebar\";a:2:{i:0;s:10:\"archives-3\";i:1;s:12:\"categories-3\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:5:{i:1588691810;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588695410;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588695822;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588868210;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','eii|2/?]/8_0@0QBol}Bqo+Gov%|.#5m-wu_qQlF^AWQqoBMDb2|Apa<(c:r {#;','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','>aq+*Yvie!,s(F2&H=ZBL 8R>Cl6ei#-=LH:KJ_^Z3LFe>u!%q iU7.+)tW>Kd_#','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:2:{i:2;a:2:{s:5:\"title\";s:12:\"Website Menu\";s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.1-partial-0.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.4\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1588682730;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1588682732;s:7:\"checked\";a:1:{s:7:\"mytheme\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587575010;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (131,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (142,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (145,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (146,'new_admin_email','loganjamesnottbohm@gmail.com','yes');
INSERT INTO `wp_options` VALUES (157,'current_theme','My Theme','yes');
INSERT INTO `wp_options` VALUES (158,'theme_mods_mytheme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"top-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (159,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (162,'recovery_mode_email_last_sent','1587579862','yes');
INSERT INTO `wp_options` VALUES (163,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (177,'duplicate_post_copytitle','1','yes');
INSERT INTO `wp_options` VALUES (178,'duplicate_post_copydate','0','yes');
INSERT INTO `wp_options` VALUES (179,'duplicate_post_copystatus','0','yes');
INSERT INTO `wp_options` VALUES (180,'duplicate_post_copyslug','0','yes');
INSERT INTO `wp_options` VALUES (181,'duplicate_post_copyexcerpt','1','yes');
INSERT INTO `wp_options` VALUES (182,'duplicate_post_copycontent','1','yes');
INSERT INTO `wp_options` VALUES (183,'duplicate_post_copythumbnail','1','yes');
INSERT INTO `wp_options` VALUES (184,'duplicate_post_copytemplate','1','yes');
INSERT INTO `wp_options` VALUES (185,'duplicate_post_copyformat','1','yes');
INSERT INTO `wp_options` VALUES (186,'duplicate_post_copyauthor','0','yes');
INSERT INTO `wp_options` VALUES (187,'duplicate_post_copypassword','0','yes');
INSERT INTO `wp_options` VALUES (188,'duplicate_post_copyattachments','0','yes');
INSERT INTO `wp_options` VALUES (189,'duplicate_post_copychildren','0','yes');
INSERT INTO `wp_options` VALUES (190,'duplicate_post_copycomments','0','yes');
INSERT INTO `wp_options` VALUES (191,'duplicate_post_copymenuorder','1','yes');
INSERT INTO `wp_options` VALUES (192,'duplicate_post_taxonomies_blacklist','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (193,'duplicate_post_blacklist','','yes');
INSERT INTO `wp_options` VALUES (194,'duplicate_post_types_enabled','a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}','yes');
INSERT INTO `wp_options` VALUES (195,'duplicate_post_show_row','1','yes');
INSERT INTO `wp_options` VALUES (196,'duplicate_post_show_adminbar','1','yes');
INSERT INTO `wp_options` VALUES (197,'duplicate_post_show_submitbox','1','yes');
INSERT INTO `wp_options` VALUES (198,'duplicate_post_show_bulkactions','1','yes');
INSERT INTO `wp_options` VALUES (199,'duplicate_post_show_original_column','0','yes');
INSERT INTO `wp_options` VALUES (200,'duplicate_post_show_original_in_post_states','0','yes');
INSERT INTO `wp_options` VALUES (201,'duplicate_post_show_original_meta_box','0','yes');
INSERT INTO `wp_options` VALUES (202,'duplicate_post_version','3.2.4','yes');
INSERT INTO `wp_options` VALUES (203,'duplicate_post_show_notice','0','no');
INSERT INTO `wp_options` VALUES (219,'brands_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (226,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1588682732;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.9\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.4\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:5:\"2.0.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/force-regenerate-thumbnails\";s:4:\"slug\";s:27:\"force-regenerate-thumbnails\";s:6:\"plugin\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.0.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/force-regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/force-regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:71:\"https://s.w.org/plugins/geopattern-icon/force-regenerate-thumbnails.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (227,'acf_version','5.8.9','yes');
INSERT INTO `wp_options` VALUES (246,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":4,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (310,'category_children','a:2:{i:10;a:2:{i:0;i:11;i:1;i:17;}i:18;a:1:{i:0;i:19;}}','yes');
INSERT INTO `wp_options` VALUES (328,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1588970881','no');
INSERT INTO `wp_options` VALUES (329,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (412,'_site_transient_timeout_theme_roots','1588684531','no');
INSERT INTO `wp_options` VALUES (413,'_site_transient_theme_roots','a:1:{s:7:\"mytheme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (4,3,'_wp_trash_meta_time','1587573100');
INSERT INTO `wp_postmeta` VALUES (5,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (6,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (7,2,'_wp_trash_meta_time','1587573105');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (9,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (10,1,'_wp_trash_meta_time','1587573112');
INSERT INTO `wp_postmeta` VALUES (11,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (12,1,'_wp_trash_meta_comments_status','a:2:{i:1;s:1:\"1\";i:2;s:1:\"0\";}');
INSERT INTO `wp_postmeta` VALUES (14,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (15,9,'_edit_lock','1587579436:1');
INSERT INTO `wp_postmeta` VALUES (16,9,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (17,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (18,13,'_edit_lock','1588001126:1');
INSERT INTO `wp_postmeta` VALUES (19,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (20,15,'_edit_lock','1587996320:1');
INSERT INTO `wp_postmeta` VALUES (21,15,'_wp_page_template','template-contactus.php');
INSERT INTO `wp_postmeta` VALUES (22,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (23,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (24,19,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (25,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (26,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (27,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (28,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (29,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (30,19,'_menu_item_orphaned','1587579589');
INSERT INTO `wp_postmeta` VALUES (31,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (32,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (33,20,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (34,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (35,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (36,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (37,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (38,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (39,20,'_menu_item_orphaned','1587579589');
INSERT INTO `wp_postmeta` VALUES (40,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,21,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (43,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (48,21,'_menu_item_orphaned','1587579589');
INSERT INTO `wp_postmeta` VALUES (49,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (50,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (51,22,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (52,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (53,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (54,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (56,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (58,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (59,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (60,23,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (61,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (62,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (63,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (64,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (65,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (67,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (68,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (69,24,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (70,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (71,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (72,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (73,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (74,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (76,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (77,25,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (78,25,'_edit_lock','1587580427:1');
INSERT INTO `wp_postmeta` VALUES (79,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (80,27,'_menu_item_menu_item_parent','23');
INSERT INTO `wp_postmeta` VALUES (81,27,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (82,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (83,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (84,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (85,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (86,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (88,28,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (89,28,'_edit_lock','1587749146:1');
INSERT INTO `wp_postmeta` VALUES (94,31,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (95,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (96,31,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (97,31,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (98,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (99,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (100,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (101,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (105,32,'_dp_original','28');
INSERT INTO `wp_postmeta` VALUES (107,33,'_dp_original','32');
INSERT INTO `wp_postmeta` VALUES (109,34,'_dp_original','33');
INSERT INTO `wp_postmeta` VALUES (111,35,'_dp_original','34');
INSERT INTO `wp_postmeta` VALUES (113,36,'_dp_original','35');
INSERT INTO `wp_postmeta` VALUES (128,36,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (131,36,'_wp_old_slug','test-post-1-6');
INSERT INTO `wp_postmeta` VALUES (132,36,'_edit_lock','1587749138:1');
INSERT INTO `wp_postmeta` VALUES (133,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (136,35,'_wp_old_slug','test-post-1-5');
INSERT INTO `wp_postmeta` VALUES (137,35,'_edit_lock','1587749133:1');
INSERT INTO `wp_postmeta` VALUES (138,34,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (141,34,'_wp_old_slug','test-post-1-4');
INSERT INTO `wp_postmeta` VALUES (142,34,'_edit_lock','1587599882:1');
INSERT INTO `wp_postmeta` VALUES (143,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (146,33,'_wp_old_slug','test-post-1-3');
INSERT INTO `wp_postmeta` VALUES (147,33,'_edit_lock','1587998408:1');
INSERT INTO `wp_postmeta` VALUES (148,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (151,32,'_wp_old_slug','test-post-1-2');
INSERT INTO `wp_postmeta` VALUES (152,32,'_edit_lock','1587939240:1');
INSERT INTO `wp_postmeta` VALUES (153,47,'_wp_attached_file','2020/04/DistanceMakesTheHeartGrow.jpg');
INSERT INTO `wp_postmeta` VALUES (154,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1156;s:6:\"height\";i:1732;s:4:\"file\";s:37:\"2020/04/DistanceMakesTheHeartGrow.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"DistanceMakesTheHeartGrow-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"DistanceMakesTheHeartGrow-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"DistanceMakesTheHeartGrow-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"DistanceMakesTheHeartGrow-768x1151.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:39:\"DistanceMakesTheHeartGrow-1025x1536.jpg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-large\";a:4:{s:4:\"file\";s:37:\"DistanceMakesTheHeartGrow-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-small\";a:4:{s:4:\"file\";s:37:\"DistanceMakesTheHeartGrow-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (155,34,'_thumbnail_id','47');
INSERT INTO `wp_postmeta` VALUES (160,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (161,49,'_edit_lock','1588000797:1');
INSERT INTO `wp_postmeta` VALUES (165,52,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (166,52,'_edit_lock','1587931158:1');
INSERT INTO `wp_postmeta` VALUES (167,49,'color','Blue');
INSERT INTO `wp_postmeta` VALUES (168,49,'_color','field_5ea0faab07ad6');
INSERT INTO `wp_postmeta` VALUES (169,49,'registration','ASDFLKJASDF87');
INSERT INTO `wp_postmeta` VALUES (170,49,'_registration','field_5ea0fad607ad7');
INSERT INTO `wp_postmeta` VALUES (171,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (172,55,'_edit_lock','1587616880:1');
INSERT INTO `wp_postmeta` VALUES (175,32,'bill_status','favorably');
INSERT INTO `wp_postmeta` VALUES (176,32,'_bill_status','field_5ea119c5e7d27');
INSERT INTO `wp_postmeta` VALUES (177,57,'bill_status','Sent to Study');
INSERT INTO `wp_postmeta` VALUES (178,57,'_bill_status','field_5ea119c5e7d27');
INSERT INTO `wp_postmeta` VALUES (181,58,'bill_status','favorably');
INSERT INTO `wp_postmeta` VALUES (182,58,'_bill_status','field_5ea119c5e7d27');
INSERT INTO `wp_postmeta` VALUES (185,33,'_wp_old_date','2020-04-22');
INSERT INTO `wp_postmeta` VALUES (188,35,'_wp_old_date','2020-04-22');
INSERT INTO `wp_postmeta` VALUES (191,36,'_wp_old_date','2020-04-22');
INSERT INTO `wp_postmeta` VALUES (194,28,'_wp_old_date','2020-04-22');
INSERT INTO `wp_postmeta` VALUES (197,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (198,59,'_edit_lock','1587770144:1');
INSERT INTO `wp_postmeta` VALUES (199,13,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (200,13,'subheader_text','This is subheader text!');
INSERT INTO `wp_postmeta` VALUES (201,13,'_subheader_text','field_5ea357c266ce3');
INSERT INTO `wp_postmeta` VALUES (202,61,'subheader_text','This is subheader text!');
INSERT INTO `wp_postmeta` VALUES (203,61,'_subheader_text','field_5ea357c266ce3');
INSERT INTO `wp_postmeta` VALUES (206,33,'bill_status','extension');
INSERT INTO `wp_postmeta` VALUES (207,33,'_bill_status','field_5ea119c5e7d27');
INSERT INTO `wp_postmeta` VALUES (208,48,'bill_status','extension');
INSERT INTO `wp_postmeta` VALUES (209,48,'_bill_status','field_5ea119c5e7d27');
INSERT INTO `wp_postmeta` VALUES (214,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (215,64,'_edit_lock','1588004466:1');
INSERT INTO `wp_postmeta` VALUES (216,64,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (217,64,'subheader_text','This is the subheader.');
INSERT INTO `wp_postmeta` VALUES (218,64,'_subheader_text','field_5ea357c266ce3');
INSERT INTO `wp_postmeta` VALUES (219,65,'subheader_text','This is the subheader.');
INSERT INTO `wp_postmeta` VALUES (220,65,'_subheader_text','field_5ea357c266ce3');
INSERT INTO `wp_postmeta` VALUES (221,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (222,66,'_edit_lock','1588017286:1');
INSERT INTO `wp_postmeta` VALUES (223,66,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (224,66,'subheader_text','This is the subheader.');
INSERT INTO `wp_postmeta` VALUES (225,66,'_subheader_text','field_5ea357c266ce3');
INSERT INTO `wp_postmeta` VALUES (226,67,'subheader_text','This is the subheader.');
INSERT INTO `wp_postmeta` VALUES (227,67,'_subheader_text','field_5ea357c266ce3');
INSERT INTO `wp_postmeta` VALUES (228,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (229,69,'_edit_lock','1587998540:1');
INSERT INTO `wp_postmeta` VALUES (230,72,'color','Blue');
INSERT INTO `wp_postmeta` VALUES (231,72,'_color','field_5ea0faab07ad6');
INSERT INTO `wp_postmeta` VALUES (232,72,'registration','ASDFLKJASDF87');
INSERT INTO `wp_postmeta` VALUES (233,72,'_registration','field_5ea0fad607ad7');
INSERT INTO `wp_postmeta` VALUES (234,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (235,73,'_edit_lock','1588004185:1');
INSERT INTO `wp_postmeta` VALUES (236,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,74,'_edit_lock','1588004455:1');
INSERT INTO `wp_postmeta` VALUES (238,78,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (239,78,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (240,78,'_menu_item_object_id','64');
INSERT INTO `wp_postmeta` VALUES (241,78,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (242,78,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (243,78,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (244,78,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (245,78,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (247,79,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (248,79,'_menu_item_menu_item_parent','78');
INSERT INTO `wp_postmeta` VALUES (249,79,'_menu_item_object_id','66');
INSERT INTO `wp_postmeta` VALUES (250,79,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (251,79,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (252,79,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (253,79,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (254,79,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (256,80,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (257,80,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (258,80,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (259,80,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (260,80,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (261,80,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (262,80,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (263,80,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (265,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (266,81,'_edit_lock','1588004352:1');
INSERT INTO `wp_postmeta` VALUES (267,74,'session','191st Session');
INSERT INTO `wp_postmeta` VALUES (268,74,'_session','field_5ea7063f6fbfc');
INSERT INTO `wp_postmeta` VALUES (269,74,'_','field_5ea706706fbfd');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-04-22 16:16:49','2020-04-22 16:16:49','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2020-04-22 16:31:52','2020-04-22 16:31:52','',0,'http://progressivemass.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-04-22 16:16:49','2020-04-22 16:16:49','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://progressivemass.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-04-22 16:31:45','2020-04-22 16:31:45','',0,'http://progressivemass.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-04-22 16:16:49','2020-04-22 16:16:49','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://progressivemass.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-04-22 16:31:40','2020-04-22 16:31:40','',0,'http://progressivemass.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-04-22 16:31:40','2020-04-22 16:31:40','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://progressivemass.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-04-22 16:31:40','2020-04-22 16:31:40','',3,'http://progressivemass.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-04-22 16:31:45','2020-04-22 16:31:45','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://progressivemass.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-04-22 16:31:45','2020-04-22 16:31:45','',2,'http://progressivemass.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-04-22 16:31:52','2020-04-22 16:31:52','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-04-22 16:31:52','2020-04-22 16:31:52','',1,'http://progressivemass.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-04-22 12:48:44','2020-04-22 16:48:44','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget gravida cum sociis natoque. Pulvinar mattis nunc sed blandit libero volutpat. Vitae suscipit tellus mauris a diam maecenas. In arcu cursus euismod quis. Amet cursus sit amet dictum sit amet. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque in. Pellentesque sit amet porttitor eget dolor morbi. Proin sed libero enim sed faucibus. At volutpat diam ut venenatis tellus in. Faucibus interdum posuere lorem ipsum. Ut ornare lectus sit amet est placerat. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Volutpat est velit egestas dui id ornare. Diam sit amet nisl suscipit adipiscing bibendum. Arcu risus quis varius quam. At tempor commodo ullamcorper a lacus vestibulum sed arcu non.\r\n\r\nIn egestas erat imperdiet sed euismod nisi porta lorem mollis. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus mauris. A diam maecenas sed enim ut sem. Elementum tempus egestas sed sed risus pretium quam. Blandit libero volutpat sed cras. Eget nunc lobortis mattis aliquam faucibus. Nisl rhoncus mattis rhoncus urna neque. Enim ut sem viverra aliquet eget sit amet tellus. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Leo a diam sollicitudin tempor.\r\n\r\nTellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Home','','publish','closed','closed','','home','','','2020-04-22 14:14:37','2020-04-22 18:14:37','',0,'http://progressivemass.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-04-22 12:48:44','2020-04-22 16:48:44','','Home','','inherit','closed','closed','','9-revision-v1','','','2020-04-22 12:48:44','2020-04-22 16:48:44','',9,'http://progressivemass.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-04-22 13:41:45','2020-04-22 17:41:45','<blockquote>Content!!!!</blockquote>','Home','','inherit','closed','closed','','9-revision-v1','','','2020-04-22 13:41:45','2020-04-22 17:41:45','',9,'http://progressivemass.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-04-22 13:46:54','2020-04-22 17:46:54','<blockquote>This is the content!!!!</blockquote>','Home','','inherit','closed','closed','','9-revision-v1','','','2020-04-22 13:46:54','2020-04-22 17:46:54','',9,'http://progressivemass.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-04-22 13:47:14','2020-04-22 17:47:14','This is the about us page!','About Us','','publish','closed','closed','','about-us','','','2020-04-26 18:13:42','2020-04-26 22:13:42','',0,'http://progressivemass.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-04-22 13:47:14','2020-04-22 17:47:14','This is the about us page!','About Us','','inherit','closed','closed','','13-revision-v1','','','2020-04-22 13:47:14','2020-04-22 17:47:14','',13,'http://progressivemass.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-04-22 13:51:04','2020-04-22 17:51:04','This is the contact page text.','Contact Us','','publish','closed','closed','','contact-us','','','2020-04-22 13:52:32','2020-04-22 17:52:32','',0,'http://progressivemass.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-04-22 13:51:04','2020-04-22 17:51:04','contact page template!','Contact Us','','inherit','closed','closed','','15-revision-v1','','','2020-04-22 13:51:04','2020-04-22 17:51:04','',15,'http://progressivemass.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-04-22 13:52:32','2020-04-22 17:52:32','This is the contact page text.','Contact Us','','inherit','closed','closed','','15-revision-v1','','','2020-04-22 13:52:32','2020-04-22 17:52:32','',15,'http://progressivemass.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-04-22 14:14:37','2020-04-22 18:14:37','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget gravida cum sociis natoque. Pulvinar mattis nunc sed blandit libero volutpat. Vitae suscipit tellus mauris a diam maecenas. In arcu cursus euismod quis. Amet cursus sit amet dictum sit amet. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque in. Pellentesque sit amet porttitor eget dolor morbi. Proin sed libero enim sed faucibus. At volutpat diam ut venenatis tellus in. Faucibus interdum posuere lorem ipsum. Ut ornare lectus sit amet est placerat. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Volutpat est velit egestas dui id ornare. Diam sit amet nisl suscipit adipiscing bibendum. Arcu risus quis varius quam. At tempor commodo ullamcorper a lacus vestibulum sed arcu non.\r\n\r\nIn egestas erat imperdiet sed euismod nisi porta lorem mollis. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus mauris. A diam maecenas sed enim ut sem. Elementum tempus egestas sed sed risus pretium quam. Blandit libero volutpat sed cras. Eget nunc lobortis mattis aliquam faucibus. Nisl rhoncus mattis rhoncus urna neque. Enim ut sem viverra aliquet eget sit amet tellus. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Leo a diam sollicitudin tempor.\r\n\r\nTellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Home','','inherit','closed','closed','','9-revision-v1','','','2020-04-22 14:14:37','2020-04-22 18:14:37','',9,'http://progressivemass.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-04-22 14:19:49','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-22 14:19:49','0000-00-00 00:00:00','',0,'http://progressivemass.local/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-04-22 14:19:49','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-22 14:19:49','0000-00-00 00:00:00','',0,'http://progressivemass.local/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-04-22 14:19:49','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-22 14:19:49','0000-00-00 00:00:00','',0,'http://progressivemass.local/?p=21',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-04-22 14:27:26','2020-04-22 18:27:26',' ','','','publish','closed','closed','','22','','','2020-04-27 12:00:38','2020-04-27 16:00:38','',0,'http://progressivemass.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-04-22 14:27:26','2020-04-22 18:27:26',' ','','','publish','closed','closed','','23','','','2020-04-27 12:00:38','2020-04-27 16:00:38','',0,'http://progressivemass.local/?p=23',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-04-22 14:27:26','2020-04-22 18:27:26',' ','','','publish','closed','closed','','24','','','2020-04-27 12:00:38','2020-04-27 16:00:38','',0,'http://progressivemass.local/?p=24',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-04-22 14:36:09','2020-04-22 18:36:09','','Our Team','','publish','closed','closed','','our-team','','','2020-04-22 14:36:09','2020-04-22 18:36:09','',0,'http://progressivemass.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-04-22 14:36:09','2020-04-22 18:36:09','','Our Team','','inherit','closed','closed','','25-revision-v1','','','2020-04-22 14:36:09','2020-04-22 18:36:09','',25,'http://progressivemass.local/25-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-04-22 14:36:56','2020-04-22 18:36:56',' ','','','publish','closed','closed','','27','','','2020-04-27 12:00:38','2020-04-27 16:00:38','',0,'http://progressivemass.local/?p=27',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-04-19 19:03:34','2020-04-19 23:03:34','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 1','','publish','open','open','','test-post-1','','','2020-04-24 13:25:46','2020-04-24 17:25:46','',0,'http://progressivemass.local/?p=28',0,'post','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-04-22 19:03:34','2020-04-22 23:03:34','','Test Post 1','','inherit','closed','closed','','28-revision-v1','','','2020-04-22 19:03:34','2020-04-22 23:03:34','',28,'http://progressivemass.local/28-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-04-22 19:03:55','2020-04-22 23:03:55','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 1','','inherit','closed','closed','','28-revision-v1','','','2020-04-22 19:03:55','2020-04-22 23:03:55','',28,'http://progressivemass.local/28-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-04-22 19:04:45','2020-04-22 23:04:45',' ','','','publish','closed','closed','','31','','','2020-04-27 12:00:38','2020-04-27 16:00:38','',0,'http://progressivemass.local/?p=31',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-04-24 12:09:07','2020-04-24 16:09:07','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 6','','publish','open','open','','test-post-6','','','2020-04-24 15:19:14','2020-04-24 19:19:14','',0,'http://progressivemass.local/?p=32',0,'post','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-04-23 19:09:07','2020-04-23 23:09:07','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit. Chocolate.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 5','','publish','open','open','','test-post-5','','','2020-04-27 10:05:35','2020-04-27 14:05:35','',0,'http://progressivemass.local/?p=33',0,'post','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-04-22 19:09:07','2020-04-22 23:09:07','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 4','','publish','open','open','','test-post-4','','','2020-04-22 19:58:01','2020-04-22 23:58:01','',0,'http://progressivemass.local/?p=34',0,'post','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-04-21 19:09:07','2020-04-21 23:09:07','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 3','','publish','open','open','','test-post-3','','','2020-04-24 13:25:33','2020-04-24 17:25:33','',0,'http://progressivemass.local/?p=35',0,'post','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-04-20 19:09:07','2020-04-20 23:09:07','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 2','','publish','open','open','','test-post-2','','','2020-04-24 13:25:38','2020-04-24 17:25:38','',0,'http://progressivemass.local/?p=36',0,'post','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-04-22 19:08:55','2020-04-22 23:08:55','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 1','','inherit','closed','closed','','36-revision-v1','','','2020-04-22 19:08:55','2020-04-22 23:08:55','',36,'http://progressivemass.local/36-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-04-22 19:08:55','2020-04-22 23:08:55','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 1','','inherit','closed','closed','','35-revision-v1','','','2020-04-22 19:08:55','2020-04-22 23:08:55','',35,'http://progressivemass.local/35-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-04-22 19:08:55','2020-04-22 23:08:55','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 1','','inherit','closed','closed','','34-revision-v1','','','2020-04-22 19:08:55','2020-04-22 23:08:55','',34,'http://progressivemass.local/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-04-22 19:08:55','2020-04-22 23:08:55','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 1','','inherit','closed','closed','','33-revision-v1','','','2020-04-22 19:08:55','2020-04-22 23:08:55','',33,'http://progressivemass.local/33-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-04-22 19:08:55','2020-04-22 23:08:55','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 1','','inherit','closed','closed','','32-revision-v1','','','2020-04-22 19:08:55','2020-04-22 23:08:55','',32,'http://progressivemass.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-04-22 19:09:56','2020-04-22 23:09:56','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 2','','inherit','closed','closed','','36-revision-v1','','','2020-04-22 19:09:56','2020-04-22 23:09:56','',36,'http://progressivemass.local/36-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-04-22 19:10:04','2020-04-22 23:10:04','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 3','','inherit','closed','closed','','35-revision-v1','','','2020-04-22 19:10:04','2020-04-22 23:10:04','',35,'http://progressivemass.local/35-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-04-22 19:10:11','2020-04-22 23:10:11','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 4','','inherit','closed','closed','','34-revision-v1','','','2020-04-22 19:10:11','2020-04-22 23:10:11','',34,'http://progressivemass.local/34-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-04-22 19:10:17','2020-04-22 23:10:17','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 5','','inherit','closed','closed','','33-revision-v1','','','2020-04-22 19:10:17','2020-04-22 23:10:17','',33,'http://progressivemass.local/33-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-04-22 19:10:26','2020-04-22 23:10:26','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 6','','inherit','closed','closed','','32-revision-v1','','','2020-04-22 19:10:26','2020-04-22 23:10:26','',32,'http://progressivemass.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-04-22 19:57:48','2020-04-22 23:57:48','','DistanceMakesTheHeartGrow','','inherit','open','closed','','distancemakestheheartgrow','','','2020-04-22 19:57:48','2020-04-22 23:57:48','',34,'http://progressivemass.local/wp-content/uploads/2020/04/DistanceMakesTheHeartGrow.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-04-22 20:45:16','2020-04-23 00:45:16','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit. Chocolate.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 5','','inherit','closed','closed','','33-revision-v1','','','2020-04-22 20:45:16','2020-04-23 00:45:16','',33,'http://progressivemass.local/33-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-04-22 21:14:33','2020-04-23 01:14:33','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Toyota Carolla','','publish','closed','closed','','toyota-carolla','','','2020-04-22 22:27:32','2020-04-23 02:27:32','',0,'http://progressivemass.local/?post_type=cars&#038;p=49',0,'cars','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-04-22 22:18:09','2020-04-23 02:18:09','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"cars\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Car Details','car-details','publish','closed','closed','','group_5ea0fa9a4a08f','','','2020-04-22 22:18:45','2020-04-23 02:18:45','',0,'http://progressivemass.local/?post_type=acf-field-group&#038;p=52',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-04-22 22:18:09','2020-04-23 02:18:09','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Color','color','publish','closed','closed','','field_5ea0faab07ad6','','','2020-04-22 22:18:09','2020-04-23 02:18:09','',52,'http://progressivemass.local/?post_type=acf-field&p=53',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-04-22 22:18:09','2020-04-23 02:18:09','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Registration','registration','publish','closed','closed','','field_5ea0fad607ad7','','','2020-04-22 22:18:09','2020-04-23 02:18:09','',52,'http://progressivemass.local/?post_type=acf-field&p=54',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-04-23 00:33:43','2020-04-23 04:33:43','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Bill Status','bill-status','publish','closed','closed','','group_5ea119a2e3a03','','','2020-04-23 00:42:32','2020-04-23 04:42:32','',0,'http://progressivemass.local/?post_type=acf-field-group&#038;p=55',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-04-23 00:33:43','2020-04-23 04:33:43','a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:11:\"bill-status\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:5:{s:9:\"extension\";s:21:\"Received an Extension\";s:9:\"favorably\";s:35:\"Reported Favorably Out of Committee\";s:5:\"study\";s:13:\"Sent to Study\";s:12:\"passed-house\";s:15:\"Passed by House\";s:13:\"passed-senate\";s:16:\"Passed by Senate\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:1;s:4:\"ajax\";i:0;s:13:\"return_format\";s:5:\"array\";s:11:\"placeholder\";s:0:\"\";}','Bill Status','bill_status','publish','closed','closed','','field_5ea119c5e7d27','','','2020-04-23 00:42:32','2020-04-23 04:42:32','',55,'http://progressivemass.local/?post_type=acf-field&#038;p=56',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-04-23 00:33:59','2020-04-23 04:33:59','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 6','','inherit','closed','closed','','32-revision-v1','','','2020-04-23 00:33:59','2020-04-23 04:33:59','',32,'http://progressivemass.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-04-23 00:42:45','2020-04-23 04:42:45','Tellus molestie nunc non blandit massa enim nec. Ut sem viverra aliquet eget sit amet tellus cras. Eget mi proin sed libero. Scelerisque purus semper eget duis at tellus. At elementum eu facilisis sed odio morbi quis commodo odio. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Purus in massa tempor nec. Est pellentesque elit ullamcorper dignissim. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Eget dolor morbi non arcu risus quis varius. Enim nunc faucibus a pellentesque. Vel eros donec ac odio. Elit duis tristique sollicitudin nibh sit amet commodo.\r\n\r\nVulputate enim nulla aliquet porttitor lacus luctus accumsan tortor. Amet luctus venenatis lectus magna fringilla urna. Sapien pellentesque habitant morbi tristique senectus et. Integer eget aliquet nibh praesent tristique magna sit amet purus. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. Quam nulla porttitor massa id. Turpis egestas pretium aenean pharetra magna ac. Vulputate mi sit amet mauris commodo. Amet luctus venenatis lectus magna fringilla urna. Tincidunt eget nullam non nisi est sit.\r\n\r\nTempor orci dapibus ultrices in iaculis nunc sed augue lacus. Massa placerat duis ultricies lacus sed turpis tincidunt id aliquet. Et odio pellentesque diam volutpat commodo sed egestas egestas. Metus dictum at tempor commodo ullamcorper a lacus. Diam maecenas sed enim ut sem viverra aliquet eget sit. Gravida rutrum quisque non tellus orci ac auctor. Et malesuada fames ac turpis egestas maecenas pharetra convallis posuere. Fermentum odio eu feugiat pretium nibh ipsum. Quam elementum pulvinar etiam non quam lacus suspendisse. In mollis nunc sed id semper. Facilisi etiam dignissim diam quis enim. Eu augue ut lectus arcu bibendum at. Gravida quis blandit turpis cursus. Non tellus orci ac auctor.','Test Post 6','','inherit','closed','closed','','32-revision-v1','','','2020-04-23 00:42:45','2020-04-23 04:42:45','',32,'http://progressivemass.local/32-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-04-24 17:22:36','2020-04-24 21:22:36','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Subheader','subheader','publish','closed','closed','','group_5ea357b72abfc','','','2020-04-24 17:22:51','2020-04-24 21:22:51','',0,'http://progressivemass.local/?post_type=acf-field-group&#038;p=59',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-04-24 17:22:36','2020-04-24 21:22:36','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Subheader Text','subheader_text','publish','closed','closed','','field_5ea357c266ce3','','','2020-04-24 17:22:36','2020-04-24 21:22:36','',59,'http://progressivemass.local/?post_type=acf-field&p=60',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-04-24 17:23:10','2020-04-24 21:23:10','This is the about us page!','About Us','','inherit','closed','closed','','13-revision-v1','','','2020-04-24 17:23:10','2020-04-24 21:23:10','',13,'http://progressivemass.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-04-27 10:08:22','2020-04-27 14:08:22','This is the content.','Our Platform','','publish','closed','closed','','our-platform','','','2020-04-27 10:08:22','2020-04-27 14:08:22','',0,'http://progressivemass.local/?page_id=64',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-04-27 10:08:22','2020-04-27 14:08:22','This is the content.','Our Platform','','inherit','closed','closed','','64-revision-v1','','','2020-04-27 10:08:22','2020-04-27 14:08:22','',64,'http://progressivemass.local/64-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-04-27 10:28:23','2020-04-27 14:28:23','This is the content.','Shared Prosperity in the Commonwealth','','publish','closed','closed','','shared-prosperity','','','2020-04-27 10:28:23','2020-04-27 14:28:23','',64,'http://progressivemass.local/?page_id=66',0,'page','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-04-27 10:28:23','2020-04-27 14:28:23','This is the content.','Shared Prosperity in the Commonwealth','','inherit','closed','closed','','66-revision-v1','','','2020-04-27 10:28:23','2020-04-27 14:28:23','',66,'http://progressivemass.local/66-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-04-27 10:44:16','2020-04-27 14:44:16','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Accordion','accordion','publish','closed','closed','','group_5ea6ef5ce932c','','','2020-04-27 10:44:42','2020-04-27 14:44:42','',0,'http://progressivemass.local/?post_type=acf-field-group&#038;p=69',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-04-27 10:44:16','2020-04-27 14:44:16','a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}','Test Accordion','test_accordion','publish','closed','closed','','field_5ea6ef6860d14','','','2020-04-27 10:44:16','2020-04-27 14:44:16','',69,'http://progressivemass.local/?post_type=acf-field&p=70',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-04-27 10:44:16','2020-04-27 14:44:16','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','','','publish','closed','closed','','field_5ea6efb960d15','','','2020-04-27 10:44:16','2020-04-27 14:44:16','',69,'http://progressivemass.local/?post_type=acf-field&p=71',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-04-27 10:58:07','2020-04-27 14:58:07','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Toyota Carolla','','inherit','closed','closed','','49-autosave-v1','','','2020-04-27 10:58:07','2020-04-27 14:58:07','',49,'http://progressivemass.local/49-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-04-27 11:24:43','2020-04-27 15:24:43','Page content.','Fair Share Amendment','','publish','closed','closed','','fair-share-amendment','','','2020-04-27 12:07:33','2020-04-27 16:07:33','',0,'http://progressivemass.local/?post_type=legislation&#038;p=73',0,'legislation','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-04-27 11:37:42','2020-04-27 15:37:42','Page content.','Safe Communities Act','','publish','closed','closed','','safe-communities-act','','','2020-04-27 12:23:01','2020-04-27 16:23:01','',0,'http://progressivemass.local/?post_type=legislation&#038;p=74',0,'legislation','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-04-27 11:59:59','2020-04-27 15:59:59',' ','','','publish','closed','closed','','78','','','2020-04-27 12:00:38','2020-04-27 16:00:38','',0,'http://progressivemass.local/?p=78',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-04-27 11:59:59','2020-04-27 15:59:59',' ','','','publish','closed','closed','','79','','','2020-04-27 12:00:38','2020-04-27 16:00:38','',64,'http://progressivemass.local/?p=79',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-04-27 12:00:38','2020-04-27 16:00:38',' ','','','publish','closed','closed','','80','','','2020-04-27 12:00:38','2020-04-27 16:00:38','',10,'http://progressivemass.local/?p=80',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-04-27 12:17:46','2020-04-27 16:17:46','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"category:our-platform\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Legislative Session','legislative-session','publish','closed','closed','','group_5ea704d9743a3','','','2020-04-27 12:21:34','2020-04-27 16:21:34','',0,'http://progressivemass.local/?post_type=acf-field-group&#038;p=81',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-04-27 12:21:34','2020-04-27 16:21:34','a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:59:\"Please select the legislative session this bill belongs to.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:13:\"191st Session\";s:13:\"191st Session\";s:13:\"190th Session\";s:13:\"190th Session\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:13:\"191st Session\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}','Session','session','publish','closed','closed','','field_5ea7063f6fbfc','','','2020-04-27 12:21:34','2020-04-27 16:21:34','',81,'http://progressivemass.local/?post_type=acf-field&p=83',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-04-27 12:21:34','2020-04-27 16:21:34','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','','','publish','closed','closed','','field_5ea706706fbfd','','','2020-04-27 12:21:34','2020-04-27 16:21:34','',81,'http://progressivemass.local/?post_type=acf-field&p=84',1,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,3,0);
INSERT INTO `wp_term_relationships` VALUES (28,4,0);
INSERT INTO `wp_term_relationships` VALUES (28,5,0);
INSERT INTO `wp_term_relationships` VALUES (28,6,0);
INSERT INTO `wp_term_relationships` VALUES (28,7,0);
INSERT INTO `wp_term_relationships` VALUES (31,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,3,0);
INSERT INTO `wp_term_relationships` VALUES (32,4,0);
INSERT INTO `wp_term_relationships` VALUES (32,5,0);
INSERT INTO `wp_term_relationships` VALUES (32,6,0);
INSERT INTO `wp_term_relationships` VALUES (32,7,0);
INSERT INTO `wp_term_relationships` VALUES (33,4,0);
INSERT INTO `wp_term_relationships` VALUES (33,5,0);
INSERT INTO `wp_term_relationships` VALUES (33,6,0);
INSERT INTO `wp_term_relationships` VALUES (33,7,0);
INSERT INTO `wp_term_relationships` VALUES (33,9,0);
INSERT INTO `wp_term_relationships` VALUES (33,11,0);
INSERT INTO `wp_term_relationships` VALUES (34,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,4,0);
INSERT INTO `wp_term_relationships` VALUES (34,5,0);
INSERT INTO `wp_term_relationships` VALUES (34,6,0);
INSERT INTO `wp_term_relationships` VALUES (34,7,0);
INSERT INTO `wp_term_relationships` VALUES (35,3,0);
INSERT INTO `wp_term_relationships` VALUES (35,4,0);
INSERT INTO `wp_term_relationships` VALUES (35,5,0);
INSERT INTO `wp_term_relationships` VALUES (35,6,0);
INSERT INTO `wp_term_relationships` VALUES (35,7,0);
INSERT INTO `wp_term_relationships` VALUES (36,3,0);
INSERT INTO `wp_term_relationships` VALUES (36,4,0);
INSERT INTO `wp_term_relationships` VALUES (36,5,0);
INSERT INTO `wp_term_relationships` VALUES (36,6,0);
INSERT INTO `wp_term_relationships` VALUES (36,7,0);
INSERT INTO `wp_term_relationships` VALUES (49,8,0);
INSERT INTO `wp_term_relationships` VALUES (73,11,0);
INSERT INTO `wp_term_relationships` VALUES (73,13,0);
INSERT INTO `wp_term_relationships` VALUES (73,14,0);
INSERT INTO `wp_term_relationships` VALUES (73,15,0);
INSERT INTO `wp_term_relationships` VALUES (73,18,0);
INSERT INTO `wp_term_relationships` VALUES (73,19,0);
INSERT INTO `wp_term_relationships` VALUES (74,10,0);
INSERT INTO `wp_term_relationships` VALUES (74,14,0);
INSERT INTO `wp_term_relationships` VALUES (74,15,0);
INSERT INTO `wp_term_relationships` VALUES (74,16,0);
INSERT INTO `wp_term_relationships` VALUES (74,17,0);
INSERT INTO `wp_term_relationships` VALUES (74,19,0);
INSERT INTO `wp_term_relationships` VALUES (78,2,0);
INSERT INTO `wp_term_relationships` VALUES (79,2,0);
INSERT INTO `wp_term_relationships` VALUES (80,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,8);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'post_tag','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'post_tag','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'post_tag','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'post_tag','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'brands','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'category','',10,2);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'platform','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'platform','',12,1);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'platform','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'platform','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'platform','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'category','',10,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'category','',18,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Top Bar','top-bar',0);
INSERT INTO `wp_terms` VALUES (3,'Blog','blog',0);
INSERT INTO `wp_terms` VALUES (4,'politics','politics',0);
INSERT INTO `wp_terms` VALUES (5,'democracy','democracy',0);
INSERT INTO `wp_terms` VALUES (6,'reform','reform',0);
INSERT INTO `wp_terms` VALUES (7,'legislation','legislation',0);
INSERT INTO `wp_terms` VALUES (8,'Toyota','toyota',0);
INSERT INTO `wp_terms` VALUES (9,'Bills','bills',0);
INSERT INTO `wp_terms` VALUES (10,'Our Platform','our-platform',0);
INSERT INTO `wp_terms` VALUES (11,'Shared Prosperity','shared-prosperity',0);
INSERT INTO `wp_terms` VALUES (12,'Our Platform','our-platform',0);
INSERT INTO `wp_terms` VALUES (13,'Shared Prosperity','shared-prosperity',0);
INSERT INTO `wp_terms` VALUES (14,'Legislative Agenda','legislative-agenda',0);
INSERT INTO `wp_terms` VALUES (15,'191st Session','191st-session',0);
INSERT INTO `wp_terms` VALUES (16,'Racial and Social Justice','racial-and-social-justice',0);
INSERT INTO `wp_terms` VALUES (17,'Racial and Social Justice','racial-and-social-justice',0);
INSERT INTO `wp_terms` VALUES (18,'Legislation','legislation',0);
INSERT INTO `wp_terms` VALUES (19,'191st Session','191st-session',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','logan');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Logan');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Nottbohm');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','false');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"ed0c0f9e21e0f35c1f893cf12de4e098e8284f9650384490fd3461a62d20a5d0\";a:4:{s:10:\"expiration\";i:1587745422;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36\";s:5:\"login\";i:1587572622;}s:64:\"09a9b154b7514ab2cbbeca25fd7a5eadfb92a8d47dcfa85b543c53608cb67c70\";a:4:{s:10:\"expiration\";i:1588815465;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587605865;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_dashboard','a:4:{i:0;s:21:\"dashboard_site_health\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','editor=tinymce&libraryContent=browse&post_dfw=off');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1587931272');
INSERT INTO `wp_usermeta` VALUES (25,1,'meta-box-order_post','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,postimagediv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:109:\"acf-group_5ea119a2e3a03,revisionsdiv,postexcerpt,trackbacksdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'screen_layout_post','2');
INSERT INTO `wp_usermeta` VALUES (27,1,'meta-box-order_cars','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:32:\"submitdiv,brandsdiv,postimagediv\";s:6:\"normal\";s:31:\"acf-group_5ea0fa9a4a08f,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'screen_layout_cars','2');
INSERT INTO `wp_usermeta` VALUES (29,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (30,1,'metaboxhidden_post','a:4:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (31,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (32,1,'metaboxhidden_page','a:2:{i:0;s:16:\"commentstatusdiv\";i:1;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (33,1,'closedpostboxes_legislation','a:1:{i:0;s:23:\"acf-group_5ea704d9743a3\";}');
INSERT INTO `wp_usermeta` VALUES (34,1,'metaboxhidden_legislation','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'logan','$P$BIh3L0LcwiMrtKgpKQS5qqJN1pnDks/','logan','loganjamesnottbohm@gmail.com','http://progressivemass.local','2020-04-22 16:16:49','',0,'Logan Nottbohm');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-05 11:06:48
