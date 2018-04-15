-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: jrweb
-- ------------------------------------------------------
-- Server version	5.1.73-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add faq_category',7,'add_faqcategory'),(20,'Can change faq_category',7,'change_faqcategory'),(21,'Can delete faq_category',7,'delete_faqcategory'),(22,'Can add product_category',8,'add_productcategory'),(23,'Can change product_category',8,'change_productcategory'),(24,'Can delete product_category',8,'delete_productcategory'),(25,'Can add service_category',9,'add_servicecategory'),(26,'Can change service_category',9,'change_servicecategory'),(27,'Can delete service_category',9,'delete_servicecategory'),(28,'Can add about_category',10,'add_aboutcategory'),(29,'Can change about_category',10,'change_aboutcategory'),(30,'Can delete about_category',10,'delete_aboutcategory'),(31,'Can add download_category',11,'add_downloadcategory'),(32,'Can change download_category',11,'change_downloadcategory'),(33,'Can delete download_category',11,'delete_downloadcategory'),(34,'Can add announcement',12,'add_announcement'),(35,'Can change announcement',12,'change_announcement'),(36,'Can delete announcement',12,'delete_announcement'),(37,'Can add products',13,'add_products'),(38,'Can change products',13,'change_products'),(39,'Can delete products',13,'delete_products'),(40,'Can add news',14,'add_news'),(41,'Can change news',14,'change_news'),(42,'Can delete news',14,'delete_news'),(43,'Can add download',15,'add_download'),(44,'Can change download',15,'change_download'),(45,'Can delete download',15,'delete_download'),(46,'Can add faq',16,'add_faq'),(47,'Can change faq',16,'change_faq'),(48,'Can delete faq',16,'delete_faq'),(49,'Can add service',17,'add_service'),(50,'Can change service',17,'change_service'),(51,'Can delete service',17,'delete_service'),(52,'Can add about',18,'add_about'),(53,'Can change about',18,'change_about'),(54,'Can delete about',18,'delete_about');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$20000$ZIbAnBKZnMBK$ZhbhzrIGLi0gnKB00CrV9mbSpufN/fWAegL8KQE9+J8=','2015-12-18 22:10:51',1,'admin','','','threelord@126.com',1,1,'2015-12-18 22:10:43');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (38,'2015-12-18 22:11:28','1','root',3,'',4,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'app','faqcategory'),(8,'app','productcategory'),(9,'app','servicecategory'),(10,'app','aboutcategory'),(11,'app','downloadcategory'),(12,'app','announcement'),(13,'app','products'),(14,'app','news'),(15,'app','download'),(16,'app','faq'),(17,'app','service'),(18,'app','about');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-11-19 00:27:18'),(2,'auth','0001_initial','2015-11-19 00:27:18'),(3,'admin','0001_initial','2015-11-19 00:27:18'),(4,'app','0001_initial','2015-11-19 00:27:19'),(5,'app','0002_announcement','2015-11-19 00:27:19'),(6,'app','0003_delete_announcement','2015-11-19 00:27:19'),(7,'app','0004_auto_20151118_1026','2015-11-19 00:27:19'),(8,'app','0005_auto_20151119_0826','2015-11-19 00:27:19'),(9,'contenttypes','0002_remove_content_type_name','2015-11-19 00:27:19'),(10,'auth','0002_alter_permission_name_max_length','2015-11-19 00:27:19'),(11,'auth','0003_alter_user_email_max_length','2015-11-19 00:27:19'),(12,'auth','0004_alter_user_username_opts','2015-11-19 00:27:19'),(13,'auth','0005_alter_user_last_login_null','2015-11-19 00:27:19'),(14,'auth','0006_require_contenttypes_0002','2015-11-19 00:27:19'),(15,'jrweb','0001_initial','2015-11-19 00:27:19'),(16,'sessions','0001_initial','2015-11-19 00:27:19');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3hk2jt3mogzq6oatpcq55dntbxptnx7t','NDhjZGJkMjE4OGE4MmEyYzhhYzIxNTFjMjVmNGUzYjFhNzM3MTQ2OTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ4NTk3ZTlkMjBhODYxMjhkZTJhM2MzNWE2Zjk1ODU3ZTUzYWNmZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-01-01 22:10:51'),('7d771nv34cw0kon22k6gdehji29z9pii','ZDE2OTdhNDAzNGU3MzVmOTNiNDAwNmUzOTdlZjE5MmIzNGQzMzU2OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjkwMjdlYTBkYTdhYjVkNDU1Mjc0YTYxYzZlMjM5YTcxOTQ2MmYxNjgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2015-12-03 17:38:10'),('ksxhf06vm7vklnpag8clmrbuud3r273a','ODMyMzc0ZTA0ZDc1YTYwOGQxNmMyNGQ1NjUyZmZkYmI3MGQ5NzZhOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjM4OTZiMzBkN2U3ZDU5YjY2NGQyOWFkYTRiMTRjMmIyZWFhYTBiMGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-12-03 01:32:10');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_about`
--

DROP TABLE IF EXISTS `t_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_about_87025ab2` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_about`
--

LOCK TABLES `t_about` WRITE;
/*!40000 ALTER TABLE `t_about` DISABLE KEYS */;
INSERT INTO `t_about` VALUES (4,'联系人列表','刘先生    18706696696',3),(3,'公司介绍','潍坊景睿科技有限公司，是一家年轻、活力且具有创新的精神的高科技企业，公司核心成员是由在世界500强公司有着１０年以上工作经验的专家组成，因此，景睿团队具有包括项目管理及实施，超大型企业的信息化的丰富经验和方法论等。并且具有从理论到实践均具有完善的知识体系。景睿团队公司有着以\"人为本\"的经营和管理理念，公司团队在\"产，学，研\"的气氛下，也在逐渐构建和完善自己的知识体系，以应对多变的业务和服务，保持强劲的发展劲头。景瑞科技虽然年轻，但从成立以来，已经完成了多个重点项目，得到了客户的广泛好评。 ',2);
/*!40000 ALTER TABLE `t_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_about_category`
--

DROP TABLE IF EXISTS `t_about_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_about_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_about_category`
--

LOCK TABLES `t_about_category` WRITE;
/*!40000 ALTER TABLE `t_about_category` DISABLE KEYS */;
INSERT INTO `t_about_category` VALUES (3,'联系电话'),(2,'公司介绍');
/*!40000 ALTER TABLE `t_about_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_announcement`
--

DROP TABLE IF EXISTS `t_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `createdDate` date,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_announcement`
--

LOCK TABLES `t_announcement` WRITE;
/*!40000 ALTER TABLE `t_announcement` DISABLE KEYS */;
INSERT INTO `t_announcement` VALUES (1,'潍坊','潍坊','2015-11-29');
/*!40000 ALTER TABLE `t_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_download`
--

DROP TABLE IF EXISTS `t_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `downloadurl` varchar(200) NOT NULL,
  `createdDate` date DEFAULT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_download_87025ab2` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_download`
--

LOCK TABLES `t_download` WRITE;
/*!40000 ALTER TABLE `t_download` DISABLE KEYS */;
INSERT INTO `t_download` VALUES (1,'产品介绍','资料介绍','/static','2015-12-01',1);
/*!40000 ALTER TABLE `t_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_download_category`
--

DROP TABLE IF EXISTS `t_download_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_download_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_download_category`
--

LOCK TABLES `t_download_category` WRITE;
/*!40000 ALTER TABLE `t_download_category` DISABLE KEYS */;
INSERT INTO `t_download_category` VALUES (1,'资料下载');
/*!40000 ALTER TABLE `t_download_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_faq`
--

DROP TABLE IF EXISTS `t_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_faq_87025ab2` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_faq`
--

LOCK TABLES `t_faq` WRITE;
/*!40000 ALTER TABLE `t_faq` DISABLE KEYS */;
INSERT INTO `t_faq` VALUES (1,'weifang','潍坊',1);
/*!40000 ALTER TABLE `t_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_faq_category`
--

DROP TABLE IF EXISTS `t_faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_faq_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_faq_category`
--

LOCK TABLES `t_faq_category` WRITE;
/*!40000 ALTER TABLE `t_faq_category` DISABLE KEYS */;
INSERT INTO `t_faq_category` VALUES (1,'weifang');
/*!40000 ALTER TABLE `t_faq_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_news`
--

DROP TABLE IF EXISTS `t_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `createdDate` date,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_news`
--

LOCK TABLES `t_news` WRITE;
/*!40000 ALTER TABLE `t_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product_category`
--

DROP TABLE IF EXISTS `t_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product_category`
--

LOCK TABLES `t_product_category` WRITE;
/*!40000 ALTER TABLE `t_product_category` DISABLE KEYS */;
INSERT INTO `t_product_category` VALUES (1,'农产品'),(3,'空气净化器');
/*!40000 ALTER TABLE `t_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_products`
--

DROP TABLE IF EXISTS `t_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_simple_desc` longtext NOT NULL,
  `product_full_desc` longtext NOT NULL,
  `product_pic` varchar(200) NOT NULL,
  `product_order` int(11) NOT NULL,
  `createdDate` date NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_products_87025ab2` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_products`
--

LOCK TABLES `t_products` WRITE;
/*!40000 ALTER TABLE `t_products` DISABLE KEYS */;
INSERT INTO `t_products` VALUES (0,'空气净化器','空气净化器','\r\n空气净化器又称“空气清洁器”、空气清新机、净化器，是指能够吸附、分解或转化各种空气污染物（一般包括PM2.5、粉尘、花粉、异味、甲醛之类的装修污染、细菌、过敏原等），有效提高空气清洁度的产品，主要分为家用 、商用、工业、楼宇。\r\n空气净化器中有多种不同的技术和介质，使它能够向用户提供清洁和安全的空气。常用的空气净化技术有：吸附技术、负（正）离子技术、催化技术、光触媒技术、超结构光矿化技术、HEPA高效过滤技术、静电集尘技术等；材料技术主要有：光触媒、活性炭、合成纤维、HEAP高效材料、负离子发生器等。现有的空气净化器多采为复合型，即同时采用了多种净化技术和材料介质。\r\n','/static/img/空气净化器.jpg',1,'2015-11-19',3);
/*!40000 ALTER TABLE `t_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_service`
--

DROP TABLE IF EXISTS `t_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `catid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_service_87025ab2` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_service`
--

LOCK TABLES `t_service` WRITE;
/*!40000 ALTER TABLE `t_service` DISABLE KEYS */;
INSERT INTO `t_service` VALUES (2,'产品售后流程','提供完善的售后流程服务',2);
/*!40000 ALTER TABLE `t_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_service_category`
--

DROP TABLE IF EXISTS `t_service_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_service_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catname` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_service_category`
--

LOCK TABLES `t_service_category` WRITE;
/*!40000 ALTER TABLE `t_service_category` DISABLE KEYS */;
INSERT INTO `t_service_category` VALUES (2,'产品售后流程');
/*!40000 ALTER TABLE `t_service_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-07 23:15:17
