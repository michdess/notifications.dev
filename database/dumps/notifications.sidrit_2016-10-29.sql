# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.12-0ubuntu1.1)
# Database: notifications.sidrit
# Generation Time: 2016-10-28 22:26:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(7,'2014_10_12_000000_create_users_table',1),
	(8,'2014_10_12_100000_create_password_resets_table',1),
	(9,'2016_10_28_192603_create_tasks_table',1),
	(10,'2016_10_28_201005_create_notifications_table',2),
	(11,'2016_10_28_215909_create_failed_jobs_table',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`)
VALUES
	('08c46676-8726-41c6-a8ad-bf290b6db739','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:23:55','2016-10-28 22:23:55'),
	('0a97cc54-26a5-4acb-b7dd-e27c6bc042fd','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:22:39','2016-10-28 22:22:39'),
	('1147c212-ff28-426c-8ca4-02f671957879','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"sad\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:11:26','2016-10-28 22:11:26'),
	('34b0ecc7-73a4-4cdc-9b41-2a6b77209e6c','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:07:58','2016-10-28 22:07:58'),
	('50d906eb-0f9e-4f47-8d78-eb7c46fea275','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"okool\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 21:59:51','2016-10-28 21:59:51'),
	('5f716a9a-fff7-4017-93f6-01afed20d21b','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:05:20','2016-10-28 22:05:20'),
	('7c3cc5ae-6226-4264-8e4b-ffa1770ec4a9','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asdas\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:13:37','2016-10-28 22:13:37'),
	('9e009a26-16ee-450f-b09a-527d0ae51dc0','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:12:47','2016-10-28 22:12:47'),
	('a57b9caa-a895-4ca5-a00a-dc44c90817b6','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:17:06','2016-10-28 22:17:06'),
	('aac44c29-d69c-4781-b6ad-1df1e35b3246','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:12:35','2016-10-28 22:12:35'),
	('ce294867-9b1c-4bad-a9b6-85b6e4857279','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"Assistant Manager on all systems\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:01:33','2016-10-28 22:01:33'),
	('d85ee3c2-8484-4fc6-b041-a8447535b923','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:23:26','2016-10-28 22:23:26'),
	('db92f4f7-f551-40c1-8b3a-f18d5bbd1864','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:00:31','2016-10-28 22:00:31'),
	('e72d2af2-d87f-4b7a-b50f-aeee869b0358','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"asd\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:19:55','2016-10-28 22:19:55'),
	('f8930382-0590-4902-b18c-32d0ac4f8fda','App\\Notifications\\TaskAssigned',1,'App\\User','{\"title\":\"Asda\",\"by\":\"Sherlock\"}',NULL,'2016-10-28 22:18:25','2016-10-28 22:18:25');

/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assignee_id` int(10) unsigned NOT NULL,
  `by_user_id` int(10) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_assignee_id_index` (`assignee_id`),
  KEY `tasks_by_id_index` (`by_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;

INSERT INTO `tasks` (`id`, `assignee_id`, `by_user_id`, `description`, `created_at`, `updated_at`)
VALUES
	(1,1,2,'okool','2016-10-28 21:59:46','2016-10-28 21:59:46'),
	(2,1,2,'asd','2016-10-28 22:00:29','2016-10-28 22:00:29'),
	(3,1,2,'Assistant Manager on all systems','2016-10-28 22:01:27','2016-10-28 22:01:27'),
	(4,1,2,'sad','2016-10-28 22:04:09','2016-10-28 22:04:09'),
	(5,1,2,'asd','2016-10-28 22:05:15','2016-10-28 22:05:15'),
	(6,1,2,'asd','2016-10-28 22:07:53','2016-10-28 22:07:53'),
	(7,1,2,'sada','2016-10-28 22:09:34','2016-10-28 22:09:34'),
	(8,1,2,'sad','2016-10-28 22:11:22','2016-10-28 22:11:22'),
	(9,1,2,'asd','2016-10-28 22:12:31','2016-10-28 22:12:31'),
	(10,1,2,'asd','2016-10-28 22:12:44','2016-10-28 22:12:44'),
	(11,1,2,'asdas','2016-10-28 22:13:34','2016-10-28 22:13:34'),
	(12,1,2,'asd','2016-10-28 22:17:01','2016-10-28 22:17:01'),
	(13,1,2,'Asda','2016-10-28 22:18:23','2016-10-28 22:18:23'),
	(14,1,2,'asd','2016-10-28 22:19:50','2016-10-28 22:19:50'),
	(15,1,2,'asd','2016-10-28 22:22:36','2016-10-28 22:22:36'),
	(16,1,2,'asd','2016-10-28 22:23:21','2016-10-28 22:23:21'),
	(17,1,2,'asd','2016-10-28 22:23:53','2016-10-28 22:23:53');

/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Sid','forge405@gmail.com','$2y$10$YbYa7V036acJPfqvoH88buucKs/G7U7cdbqAuBRJg/qKT0cttS88G','FNPzyv3LIrS5Ba8l5A3qWXwJUBfd454hv12bF8ZJkp4QZqWw2z1IVGzl2GRr','2016-10-28 19:35:09','2016-10-28 19:35:13'),
	(2,'Sherlock','sherlock@221b.org','$2y$10$0zDitqo2v5SCbtl9XUhD4OofCB4.RJyFjt805Yxno4aeZ8oPQ32UW','YW91PqJz1MBG8BTmroKIr8xw60kPd9sSsTgH8NBCnSBrNLypDhomlz6sLWWj','2016-10-28 19:35:29','2016-10-28 19:35:34');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
