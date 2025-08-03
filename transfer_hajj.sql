-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table student.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.admins: ~2 rows (approximately)
INSERT INTO `admins` (`id`, `name`, `surname`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `password`, `phone`, `image`, `banner`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', NULL, NULL, NULL, NULL, 'admin@example.com', NULL, '$2y$10$gjT4MxtrDrQTSjdMzhKvcegvRT84dQ4SB.gXHJ/tssoJCmdSTtare', NULL, NULL, NULL, NULL, NULL, '2025-07-14 01:00:30', '2025-07-14 01:00:30'),
	(2, NULL, 'Nixon', 'Adele', 'Gibson', 'culymezofy', 'test@test.com', NULL, '$2y$10$Xrz6edMHU/V6MADQMSsC2O9ziSF9xXHHezl16d3J3Shh0njnl5xmG', NULL, NULL, NULL, 'activated', NULL, '2025-07-14 02:20:53', '2025-07-14 02:20:53'),
	(3, NULL, 'Whitaker', 'September', 'Graham', 'qumuki', 'xevuvi@mailinator.com', NULL, '$2y$10$Yqhoh5zThS3OBQDLbzZUDOqz5qInqyKe5gfQ9ok/1VAIbarHWCwDG', NULL, NULL, NULL, 'activated', NULL, '2025-07-14 04:32:06', '2025-07-14 04:32:06'),
	(4, NULL, 'Potter', 'Jasper', 'Mosley', 'qusofahuby', 'user@test.com', NULL, '$2y$10$oHQePCsN8eMiIjQD2HvVdOm6OCV.t7K/TyKXc2QS4WsKD2VBEceGC', NULL, NULL, NULL, 'activated', NULL, '2025-07-15 11:34:40', '2025-07-15 11:34:40');

-- Dumping structure for table student.air_tickets
CREATE TABLE IF NOT EXISTS `air_tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numberz_of_persons` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `air_tickets_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.air_tickets: ~0 rows (approximately)

-- Dumping structure for table student.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `package_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_user_id_foreign` (`user_id`),
  KEY `books_package_id_foreign` (`package_id`),
  CONSTRAINT `books_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.books: ~2 rows (approximately)
INSERT INTO `books` (`id`, `user_id`, `package_id`, `created_at`, `updated_at`) VALUES
	(5, 7, 3, '2025-07-24 22:55:40', '2025-07-24 22:55:40'),
	(6, 7, 4, '2025-07-24 23:18:16', '2025-07-24 23:18:16'),
	(7, 7, 5, '2025-07-24 23:23:54', '2025-07-24 23:23:54');

-- Dumping structure for table student.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.categories: ~0 rows (approximately)

-- Dumping structure for table student.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code_body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.comments: ~0 rows (approximately)

-- Dumping structure for table student.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messege` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.contacts: ~0 rows (approximately)

-- Dumping structure for table student.messegs
CREATE TABLE IF NOT EXISTS `messegs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messegs_user_id_foreign` (`user_id`),
  CONSTRAINT `messegs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.messegs: ~0 rows (approximately)

-- Dumping structure for table student.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_02_09_225721_create_visitor_registry', 1),
	(2, '2014_10_12_000000_create_users_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2019_09_23_091458_create_messegs_table', 1),
	(5, '2019_09_24_042846_create_permission_tables', 1),
	(6, '2019_09_24_043917_create_settings_table', 1),
	(7, '2019_09_24_083147_create_admins_table', 1),
	(8, '2019_09_30_045242_create_sliders_table', 1),
	(9, '2019_09_30_053924_create_services_table', 1),
	(10, '2019_09_30_072414_create_service_sliders_table', 1),
	(11, '2019_10_01_062725_create_pages_table', 1),
	(12, '2019_10_01_104920_create_categories_table', 1),
	(13, '2019_10_01_173758_create_news_table', 1),
	(14, '2019_10_02_051423_create_comments_table', 1),
	(15, '2019_10_02_062642_create_options_table', 1),
	(16, '2019_10_02_070635_create_packages_table', 1),
	(17, '2019_10_03_074628_create_books_table', 1),
	(18, '2019_10_05_112056_create_contacts_table', 1),
	(19, '2019_10_05_173502_create_questions_table', 1),
	(20, '2019_10_09_061725_create_subscibers_table', 1),
	(21, '2019_10_10_090831_create_air_tickets_table', 1),
	(22, '2025_07_21_000157_create_package_services_table', 2),
	(23, '2025_07_23_073804_add_password_to_user_table', 3);

-- Dumping structure for table student.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.model_has_permissions: ~0 rows (approximately)

-- Dumping structure for table student.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.model_has_roles: ~2 rows (approximately)
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Admin', 1),
	(2, 'App\\Admin', 2),
	(2, 'App\\Admin', 3),
	(2, 'App\\Admin', 4);

-- Dumping structure for table student.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_category_id_foreign` (`category_id`),
  CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.news: ~0 rows (approximately)

-- Dumping structure for table student.options
CREATE TABLE IF NOT EXISTS `options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.options: ~6 rows (approximately)
INSERT INTO `options` (`id`, `name`, `option`, `created_at`, `updated_at`) VALUES
	(3, 'Express-Haj', 'Hajj', '2025-07-20 09:24:45', '2025-07-20 09:28:15'),
	(4, 'Economic-Haj', 'Hajj', '2025-07-20 09:25:13', '2025-07-20 09:28:27'),
	(5, 'Express-Umrah', 'Umrah', '2025-07-20 09:25:26', '2025-07-20 09:28:40'),
	(6, 'Economic-Umrah', 'Umrah', '2025-07-20 09:25:39', '2025-07-20 09:28:50'),
	(7, 'Property Chittagong', 'Hajj', '2025-07-24 21:08:15', '2025-07-24 21:08:15'),
	(8, 'mamoon', 'Hajj', '2025-07-24 21:08:31', '2025-07-24 21:08:31');

-- Dumping structure for table student.packages
CREATE TABLE IF NOT EXISTS `packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_id` bigint unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `itinary` text COLLATE utf8mb4_unicode_ci,
  `price` double(10,2) DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci,
  `hotel` text COLLATE utf8mb4_unicode_ci,
  `term_condition` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `packages_option_id_foreign` (`option_id`),
  CONSTRAINT `packages_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.packages: ~4 rows (approximately)
INSERT INTO `packages` (`id`, `name`, `slug`, `duration`, `start`, `end`, `type`, `option_id`, `description`, `location`, `itinary`, `price`, `policy`, `hotel`, `term_condition`, `photo`, `banner`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
	(3, 'Premium', 'premium', '30 days', '2025-07-20 00:00:00', '2025-07-28 18:00:00', 'Hajj', 3, '<p>The quick brown fox jumps over the lazy dogs.&nbsp;<span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span></p>', 'Kawlar Bazar, Dhaka', '<p>The quick brown fox jumps over the lazy dogs.&nbsp;<span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span></p>', 60000.00, '<p>The quick brown fox jumps over the lazy dogs.&nbsp;<span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span></p>', '<p>Al falah</p>', '<p>The quick brown fox jumps over the lazy dogs.&nbsp;<span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span></p>', 'VQ3b0PxsMIYyzMByZAsIt6HIPINOMKMv2d3gl50A.png', 'OQIsw7ow2GJxhHVfHg4nxQk1Wh2iSfLGzP6VgNO0.jpg', 'asfd', 'adfafd', 'adsfsdf', 'activated', '2025-07-20 10:11:11', '2025-07-20 10:11:11'),
	(4, 'Economic', 'economic', '2', '2025-07-20 00:00:00', '2025-07-30 18:00:00', 'Hajj', 3, '<p>The quick brown fox jumps over the lazy dogs.&nbsp;<span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span></p>', 'kawlar bazar, Dhaka', '<p>The quick brown fox jumps over the lazy dogs.<span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span><span style="font-size: 0.875rem;">The quick brown fox jumps over the lazy dogs.</span></p>', 60000.00, '<p>afdadf</p>', '<p>adfdf</p>', '<p>adfsdf</p>', 'rBTpPb0yx9R16LCqTFEbM2Jtz8kIkuzcbFtqK5Bx.png', '7MyfLRLJWyZXl10kiIwKnTrRFqAEdK99gvq803DO.png', 'Aliquam dicta dolor', 'adfdf', 'adfdf', 'activated', '2025-07-20 10:17:51', '2025-07-20 10:17:51'),
	(5, 'Abdullah Al Mamoon', 'abdullah-al-mamoon', '2', '2025-07-21 00:00:00', '2025-07-30 18:00:00', 'Umrah', 5, '<p>adfasdf</p>', 'adfsdf', '<p>adsfsdf</p>', 50000.00, '<p>asdfasdf</p>', '<p>asdfsdf</p>', '<p>asdfsdaf</p>', 'A9L3V3gRCIBRd6EtJ8Wyiq3xxtkS5O0N08RHAWSF.jpg', '4ZaODOljtzxHvF5s1KHgDho91pKXH9C4eyyLMfSo.png', 'asfd', 'adfasdf', 'asdfsdf', 'activated', '2025-07-20 18:27:28', '2025-07-20 18:27:28'),
	(6, 'Abdullah Al Mamoon', 'abdullah-al-mamoon', '2', '2025-07-21 00:00:00', '2025-07-30 18:00:00', 'Umrah', 5, '<p>adfasdf</p>', 'adfsdf', '<p>adsfsdf</p>', 50000.00, '<p>asdfasdf</p>', '<p>asdfsdf</p>', '<p>asdfsdaf</p>', 'Ml6MgXLD0GBmm0TlfKjFiB2hNDpYxgzo1jkhhzvM.jpg', 'fSmpVFdGlPoe6WCEWC9vrDHn4jBifudBIcuY3I7D.png', 'asfd', 'adfasdf', 'asdfsdf', 'activated', '2025-07-20 18:30:10', '2025-07-20 18:30:10'),
	(7, 'Abdullah Al Mamoon', 'abdullah-al-mamoon', '2', '2025-07-21 00:00:00', '2025-07-30 18:00:00', 'Umrah', 5, '<p>adfasdf</p>', 'adfsdf', '<p>adsfsdf</p>', 50000.00, '<p>asdfasdf</p>', '<p>asdfsdf</p>', '<p>asdfsdaf</p>', 'hfp7BakFwguwhMHEb8Et2meQGhJqrgMzG2oyDXUk.jpg', 'vrRsGZ43VGEiXqHinhHTHA095LR4ypwSxqassPmZ.png', 'asfd', 'adfasdf', 'asdfsdf', 'activated', '2025-07-20 18:30:52', '2025-07-20 18:30:52');

-- Dumping structure for table student.package_services
CREATE TABLE IF NOT EXISTS `package_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` bigint unsigned NOT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_price` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_services_package_id_index` (`package_id`),
  CONSTRAINT `package_services_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.package_services: ~2 rows (approximately)
INSERT INTO `package_services` (`id`, `package_id`, `service_name`, `service_price`, `created_at`, `updated_at`) VALUES
	(1, 7, 'adfad', 2544, '2025-07-20 18:30:52', '2025-07-20 18:30:52'),
	(2, 7, 'asdfsadf', 6500, '2025-07-20 18:30:52', '2025-07-20 18:30:52');

-- Dumping structure for table student.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.pages: ~6 rows (approximately)
INSERT INTO `pages` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'home', '{"meta_title":"Aliquam sapiente cup","meta_keyword":"Dicta sed ullamco id","meta_description":"Adipisci nihil sunt"}', '2025-07-14 04:04:35', '2025-07-14 04:04:35'),
	(2, 'about', '{"about_banner":"fCZMYX59301FBB6sI19K2n3cRpeQe7fBqITZ4DCq.jpg","about_image":"KeAKzWsxqmhMKzT3lfPaPtgrfoWq7fHJTp6nnqPd.jpg","about_content":null,"about_meta_title":"Eveniet incidunt a","about_meta_keyword":"Enim quia id qui par","about_meta_description":"Excepteur quae neces"}', '2025-07-14 04:04:35', '2025-07-14 04:05:39'),
	(3, 'contact', '{"contact_image":"Wepm1peocclnn3LWY5EYPg1Q2VlblNpYCc4OPtjy.jpg","contact_heading":"Placeat exercitatio","contact_address":"Velit explicabo Adi","contact_email":"Tempore commodi aut","contact_phone":"Consequatur fugiat","contact_map":"Libero eos officiis","contact_meta_title":"Laboriosam ut hic q","contact_meta_keyword":"Ut esse tempore qu","contact_meta_description":"Cupiditate consequat"}', '2025-07-14 04:04:35', '2025-07-14 04:05:39'),
	(4, 'news', '{"news_heading":"Aut dolorem mollitia","news_meta_title":"Facere eveniet et q","news_meta_keyword":"Culpa consequat Nu","news_meta_description":"Numquam excepturi mo"}', '2025-07-14 04:04:35', '2025-07-14 04:05:28'),
	(5, 'hajj', '{"hajj_heading":"Iure id eum dolor re","hajj_meta_title":"Cupidatat sit enim","hajj_meta_keyword":"Nostrud error omnis","hajj_meta_description":"Iure non numquam mol"}', '2025-07-14 04:04:35', '2025-07-14 04:05:33'),
	(6, 'umrah', '{"umrah_heading":"Id quis repellendus","umrah_meta_title":"Dignissimos sint com","umrah_meta_keyword":"Officia ipsum et ess","umrah_meta_description":"Anim fuga Optio ea"}', '2025-07-14 04:04:35', '2025-07-14 04:05:39');

-- Dumping structure for table student.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.password_resets: ~0 rows (approximately)

-- Dumping structure for table student.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.permissions: ~48 rows (approximately)
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'user.view', 'admin', '2025-07-14 01:00:30', NULL),
	(2, 'user.create', 'admin', '2025-07-14 01:00:30', NULL),
	(3, 'user.update', 'admin', '2025-07-14 01:00:30', NULL),
	(4, 'user.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(5, 'language.view', 'admin', '2025-07-14 01:00:30', NULL),
	(6, 'language.create', 'admin', '2025-07-14 01:00:30', NULL),
	(7, 'language.update', 'admin', '2025-07-14 01:00:30', NULL),
	(8, 'language.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(9, 'role.view', 'admin', '2025-07-14 01:00:30', NULL),
	(10, 'role.create', 'admin', '2025-07-14 01:00:30', NULL),
	(11, 'role.update', 'admin', '2025-07-14 01:00:30', NULL),
	(12, 'role.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(13, 'configuration.view', 'admin', '2025-07-14 01:00:30', NULL),
	(14, 'configuration.create', 'admin', '2025-07-14 01:00:30', NULL),
	(15, 'configuration.update', 'admin', '2025-07-14 01:00:30', NULL),
	(16, 'configuration.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(17, 'news.view', 'admin', '2025-07-14 01:00:30', NULL),
	(18, 'news.create', 'admin', '2025-07-14 01:00:30', NULL),
	(19, 'news.update', 'admin', '2025-07-14 01:00:30', NULL),
	(20, 'news.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(21, 'newsCategory.view', 'admin', '2025-07-14 01:00:30', NULL),
	(22, 'newsCategory.create', 'admin', '2025-07-14 01:00:30', NULL),
	(23, 'newsCategory.update', 'admin', '2025-07-14 01:00:30', NULL),
	(24, 'newsCategory.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(25, 'PackageOption.view', 'admin', '2025-07-14 01:00:30', NULL),
	(26, 'PackageOption.create', 'admin', '2025-07-14 01:00:30', NULL),
	(27, 'PackageOption.update', 'admin', '2025-07-14 01:00:30', NULL),
	(28, 'PackageOption.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(29, 'Package.view', 'admin', '2025-07-14 01:00:30', NULL),
	(30, 'Package.create', 'admin', '2025-07-14 01:00:30', NULL),
	(31, 'Package.update', 'admin', '2025-07-14 01:00:30', NULL),
	(32, 'Package.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(33, 'Slider.view', 'admin', '2025-07-14 01:00:30', NULL),
	(34, 'Slider.create', 'admin', '2025-07-14 01:00:30', NULL),
	(35, 'Slider.update', 'admin', '2025-07-14 01:00:30', NULL),
	(36, 'Slider.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(37, 'SliderService.view', 'admin', '2025-07-14 01:00:30', NULL),
	(38, 'SliderService.create', 'admin', '2025-07-14 01:00:30', NULL),
	(39, 'SliderService.update', 'admin', '2025-07-14 01:00:30', NULL),
	(40, 'SliderService.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(41, 'book.view', 'admin', '2025-07-14 01:00:30', NULL),
	(42, 'book.delete', 'admin', '2025-07-14 01:00:30', NULL),
	(43, 'faq.view', 'admin', '2025-07-14 01:00:30', NULL),
	(44, 'faq.create', 'admin', '2025-07-14 01:00:30', NULL),
	(45, 'subscriber.view', 'admin', '2025-07-14 01:00:30', NULL),
	(46, 'subscriber.create', 'admin', '2025-07-14 01:00:30', NULL),
	(47, 'page.view', 'admin', '2025-07-14 01:00:30', NULL),
	(48, 'page.create', 'admin', '2025-07-14 01:00:30', NULL);

-- Dumping structure for table student.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` bigint unsigned DEFAULT NULL,
  `qname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qemail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ques` text COLLATE utf8mb4_unicode_ci,
  `ans` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_package_id_foreign` (`package_id`),
  CONSTRAINT `questions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.questions: ~0 rows (approximately)

-- Dumping structure for table student.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.roles: ~2 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'admin', '2025-07-14 01:00:30', '2025-07-14 01:00:30'),
	(2, 'test', 'admin', '2025-07-14 02:20:05', '2025-07-14 02:20:05');

-- Dumping structure for table student.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.role_has_permissions: ~32 rows (approximately)
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2),
	(12, 2),
	(13, 2),
	(14, 2),
	(15, 2),
	(16, 2),
	(17, 2),
	(18, 2),
	(19, 2),
	(20, 2),
	(21, 2),
	(22, 2),
	(23, 2),
	(24, 2),
	(33, 2),
	(34, 2),
	(35, 2),
	(36, 2),
	(37, 2),
	(38, 2),
	(39, 2),
	(40, 2);

-- Dumping structure for table student.services
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.services: ~0 rows (approximately)
INSERT INTO `services` (`id`, `icon`, `title`, `text`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'XPAOkXKWInpQGBiNoxF9IgcxTTtFeTuFVsVmhtXe.jpg', 'Service ONe', 'Service one description', 'activated', '2025-07-14 04:44:32', '2025-07-14 04:44:32');

-- Dumping structure for table student.service_sliders
CREATE TABLE IF NOT EXISTS `service_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.service_sliders: ~0 rows (approximately)

-- Dumping structure for table student.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.settings: ~22 rows (approximately)
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'company_name', 'Rent And Room', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(2, 'site_title', 'Luxury Package with affordable price', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(3, 'email', 'test@test.com', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(4, 'phone', '018265434656', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(5, 'alt_phone', '05221452151545', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(6, 'start_date', '14-07-2025', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(7, 'timezone', 'Africa/Abidjan', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(8, 'language', 'English', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(9, 'land_mark', 'Landing Mark', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(10, 'currency_symbol', 'Tk', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(11, 'pop_up', 'Off', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(12, 'address', 'JIBON BIMA BHABAN, JUBLEE ROAD, CHITTAGONG', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(13, 'fb', '', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(14, 'twiter', '', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(15, 'youtube', '', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(16, 'linkedin', '', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(17, 'mail_type', 'mail', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(18, 'from_email', '', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(19, 'from_name', '', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(20, 'smtp_encryption', 'ssl', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(21, 'logo', '', '2025-07-14 02:27:34', '2025-07-14 02:31:22'),
	(22, 'favicon', '', '2025-07-14 02:27:34', '2025-07-14 02:31:22');

-- Dumping structure for table student.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.sliders: ~2 rows (approximately)
INSERT INTO `sliders` (`id`, `title`, `btn_text`, `sub_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Affordable', 'Book Now', 'Make a Memory', 'Gcvhm7SV5Crk3aohKLAh7V46xjdTBuibRCYp0CEK.jpg', 'activated', '2025-07-14 01:07:35', '2025-07-15 02:57:38'),
	(2, 'Modi aliquip illum', 'Esse ea alias neque', 'Quisquam eligendi qu', '2GbBkiuFHZfUYdtRIa4ldCquvJBcQtjPivyFhYAe.jpg', 'activated', '2025-07-14 01:08:01', '2025-07-14 01:17:53');

-- Dumping structure for table student.subscibers
CREATE TABLE IF NOT EXISTS `subscibers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sub_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscibers_sub_email_unique` (`sub_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.subscibers: ~0 rows (approximately)

-- Dumping structure for table student.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messege` text COLLATE utf8mb4_unicode_ci,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `continent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `subject`, `messege`, `ip`, `country`, `city`, `continent`, `latitude`, `longitude`, `currency_symbol`, `currency_code`, `timezone`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'MD. MAMOON Ab', 'mamoon036@gmail.com', '', '01814418723', 'Request to Enable Terminal Access in cPanel', 'booked', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-14 04:14:50', '2025-07-14 04:14:50'),
	(2, 'MD. MAMOON Ab', 'mamoon021@gmail.com', '', '01814418723', 'Vel iure labore dign', 'Dolores quia veniam', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-14 04:16:23', '2025-07-14 04:16:23'),
	(3, 'MD. MAMOON Ab', 'mamoon@test.com', '', '01814418723', 'Change my email address', 'mamoon', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-15 11:28:03', '2025-07-15 11:28:03'),
	(4, 'user book', 'user@book.com', '', '012545522454', 'initial subject', 'test message', '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-15 11:36:39', '2025-07-15 11:36:39'),
	(7, 'MD. MAMOON Ab', 'test@test.com', '$2y$10$zW7ff1EbCJS5zuReMd/imujB/ohWJywwNR.6jccIW4hIkdFRRMQae', '01814418723', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-23 02:01:05', '2025-07-24 23:18:16');

-- Dumping structure for table student.visitor_registry
CREATE TABLE IF NOT EXISTS `visitor_registry` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicks` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table student.visitor_registry: ~0 rows (approximately)
INSERT INTO `visitor_registry` (`id`, `ip`, `country`, `clicks`, `created_at`, `updated_at`) VALUES
	(1, '127.0.0.1', NULL, 183, '2025-07-14 01:08:26', '2025-07-14 01:08:26');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
