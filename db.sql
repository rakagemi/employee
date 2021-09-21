-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for test_ipaymu
CREATE DATABASE IF NOT EXISTS `test_ipaymu` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test_ipaymu`;

-- Dumping structure for table test_ipaymu.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_ipaymu.employees: ~21 rows (approximately)
DELETE FROM `employees`;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `nama`, `pekerjaan`, `tanggal_lahir`, `created_at`, `updated_at`) VALUES
	('0bd2cab2-5dea-4d5b-9476-167123112e47', 'Meda Larkin', 'Civil Engineering Technician', '1989-07-19', '2021-09-19 07:45:07', '2021-09-19 11:50:08'),
	('0c198b6e-987c-4d30-bb73-efb34890e801', 'Vena Beier', 'Board Of Directors', '1993-10-21', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('16336575-81c9-4241-8947-2f11b085def8', 'Eva Rempel', 'Financial Examiner', '2001-08-20', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('30b3ec1d-16fd-4304-ae86-0465a2b67ecc', 'Virgil Casper', 'Radiologic Technologist', '2010-03-21', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('43f945e7-d8dd-425c-9878-4de7c6dd316c', 'Verla Kuphal', 'Compensation and Benefits Manager', '2009-05-17', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('4b3157d3-4381-440d-b3dc-f84ff5255d66', 'Yvette Eichmann', 'Dragline Operator', '1999-07-22', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('4d2e2387-ed01-4a55-9c4a-859f5d1f0b6e', 'Ellis Greenholt', 'Nursing Aide', '2006-02-04', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('63b94f7c-e32a-413c-b6c4-2d257dee5e90', 'Mylene Cremin', 'Paper Goods Machine Operator', '2002-04-24', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('7393b6e3-a530-4aec-965e-39122d0723de', 'RAKA GEMI IBRAHIM', 'Backend Engineer', '1998-06-02', '2021-09-19 11:18:20', '2021-09-19 11:18:20'),
	('7aeab106-9c8b-4c4e-9fc9-520cd90cf259', 'Amara Schimmel', 'Industrial Engineer', '1992-11-01', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('95a5c895-888a-4bc4-ac46-8db986cd420f', 'Dr.Gemi', 'Dokter Bedah', '1989-12-03', '2021-09-19 11:15:25', '2021-09-19 11:15:25'),
	('95b5ea08-636c-4e67-a51b-b55d4c989d2b', 'Thora Will', 'Precision Devices Inspector', '2011-03-08', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('97048c87-6767-446c-8ab8-29f3ae436948', 'Dr. Jayde Pouros V', 'Tool and Die Maker', '2010-12-25', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('9fa24b38-ff39-4a3d-813b-68893aebf941', 'Dr.Gadis', 'Dokter Gigi', '1989-12-03', '2021-09-19 11:16:42', '2021-09-19 11:16:42'),
	('a598eee8-19fa-4e32-be34-137ed3e705a2', 'Quincy Strosin Sr.', 'Motorboat Operator', '2005-06-06', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('a5d91b7b-c4c2-468a-8d79-c5d02163bff3', 'Dr. Marcellus Terry IV', 'Benefits Specialist', '2006-03-03', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('b15652d5-3919-45cc-9512-d4fbce77ef74', 'Malik', 'Frontend Engineer', '1990-08-01', '2021-09-19 11:58:33', '2021-09-19 11:58:33'),
	('b2737919-507b-44e0-9737-5534b7ce5cd6', 'Emiliano Weimann', 'Boat Builder and Shipwright', '2009-02-12', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('cc686ff3-cb7f-40c8-9a38-38eadaf01108', 'Antwan Fay', 'Mining Machine Operator', '1995-07-08', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('e0b037d1-3857-44ec-8a4b-10f9d5bd6bb6', 'Ms. Lorena Buckridge IV', 'Petroleum Engineer', '2000-03-19', '2021-09-19 07:45:07', '2021-09-19 07:45:07'),
	('e2b38c25-6125-4b70-8327-8bd28756de79', 'Miss Jeanette Mayer II', 'Sales Manager', '1998-08-31', '2021-09-19 07:45:07', '2021-09-19 07:45:07');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table test_ipaymu.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_ipaymu.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table test_ipaymu.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_ipaymu.migrations: ~5 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2021_09_19_073201_create_employees_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table test_ipaymu.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_ipaymu.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table test_ipaymu.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_ipaymu.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table test_ipaymu.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table test_ipaymu.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
