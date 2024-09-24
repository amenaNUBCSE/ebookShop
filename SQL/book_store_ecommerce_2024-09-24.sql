# ************************************************************
# Sequel Ace SQL dump
# Version 20062
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: 127.0.0.1 (MySQL 8.0.27)
# Database: book_store_ecommerce
# Generation Time: 2024-09-24 09:53:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authors_author_name_unique` (`author_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`)
VALUES
	(1,'Pablo Augusto Sznajdleder','2023-11-04 21:23:21','2023-11-04 21:23:21'),
	(2,'J.K. Rowling','2023-11-04 21:12:48','2023-11-04 21:12:48'),
	(3,'Gabriel Garcia Marquez','2023-11-04 21:13:02','2024-09-23 18:50:28'),
	(4,'Agatha Christie','2023-11-04 21:13:16','2023-11-04 21:13:16'),
	(5,'George R.R. Martin','2023-11-04 21:13:36','2023-11-04 21:13:36'),
	(6,'Jane Austen','2023-11-04 21:13:48','2023-11-04 21:13:48'),
	(7,'Malcolm Gladwell','2023-11-04 21:14:01','2023-11-04 21:14:01'),
	(8,'Michelle Obama','2023-11-04 21:14:29','2023-11-04 21:14:29'),
	(9,'Yuval Noah Harari','2023-11-04 21:14:47','2023-11-04 21:14:47'),
	(10,'Erik Larson','2023-11-04 21:15:12','2023-11-04 21:15:12'),
	(11,'J.R.R. Tolkien','2023-11-04 21:15:25','2023-11-04 21:15:25'),
	(12,'Roald Dahl','2023-11-04 21:15:38','2023-11-04 21:15:38'),
	(13,'Rick Riordan','2023-11-04 21:16:01','2023-11-04 21:16:01'),
	(14,'Dr. Seuss','2023-11-04 21:16:42','2023-11-04 21:16:42'),
	(15,'Neil deGrasse Tyson','2023-11-04 21:16:55','2023-11-04 21:16:55'),
	(16,'Richard Dawkins','2023-11-04 21:17:13','2023-11-04 21:17:13'),
	(17,'Rachel Carson','2023-11-04 21:17:31','2023-11-04 21:17:31'),
	(18,'Stephen Jay Gould','2023-11-04 21:17:44','2023-11-04 21:17:44'),
	(19,'Carl Sagan','2023-11-04 21:17:58','2023-11-04 21:17:58'),
	(20,'Susan Sontag','2023-11-04 21:18:10','2023-11-04 21:18:10'),
	(21,'John Berger','2023-11-04 21:18:24','2023-11-04 21:18:24'),
	(22,'Ansel Adams','2023-11-04 21:19:01','2023-11-04 21:19:01'),
	(23,'Grayson Perry','2023-11-04 21:19:14','2023-11-04 21:19:14'),
	(24,'Kehinde Wiley','2023-11-04 21:19:29','2023-11-04 21:19:29'),
	(25,'Brené Brown','2023-11-04 21:19:45','2023-11-04 21:19:45'),
	(26,'Eckhart Tolle','2023-11-04 21:19:59','2023-11-04 21:19:59'),
	(27,'Dale Carnegie','2023-11-04 21:20:11','2023-11-04 21:20:11'),
	(28,'Louise Hay','2023-11-04 21:20:24','2023-11-04 21:20:24'),
	(29,'Mark Manson','2023-11-04 21:20:42','2023-11-04 21:20:42'),
	(30,'Peter Drucker','2023-11-04 21:20:57','2023-11-04 21:20:57'),
	(31,'Sheryl Sandberg','2023-11-04 21:21:12','2023-11-04 21:21:12'),
	(32,'Daniel Kahneman','2023-11-04 21:21:25','2023-11-04 21:21:25'),
	(33,'Michael E. Porter','2023-11-04 21:21:57','2023-11-04 21:21:57'),
	(34,'Simon Sinek','2023-11-04 21:22:13','2023-11-04 21:22:13'),
	(35,'C.S. Lewis','2023-11-04 21:22:29','2023-11-04 21:22:29'),
	(36,'Karen Armstrong','2023-11-04 21:22:46','2023-11-04 21:22:46'),
	(37,'Thich Nhat Hanh','2023-11-04 21:22:58','2023-11-04 21:22:58'),
	(38,'Paulo Coelho','2023-11-04 21:23:21','2023-11-04 21:23:21');

/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table books
# ------------------------------------------------------------

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `book_isbn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `publisher_id` bigint unsigned NOT NULL,
  `subcategory_id` bigint unsigned NOT NULL,
  `book_number_pages` int NOT NULL,
  `book_publication_date` date DEFAULT NULL,
  `book_description` text COLLATE utf8mb4_unicode_ci,
  `book_image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_price` double NOT NULL,
  `book_stock` int NOT NULL,
  `book_discount` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_book_isbn_unique` (`book_isbn`),
  UNIQUE KEY `books_book_title_unique` (`book_title`),
  UNIQUE KEY `books_book_image_url_unique` (`book_image_url`),
  KEY `books_author_id_foreign` (`author_id`),
  KEY `books_publisher_id_foreign` (`publisher_id`),
  KEY `books_subcategory_id_foreign` (`subcategory_id`),
  CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`),
  CONSTRAINT `books_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;

INSERT INTO `books` (`id`, `book_isbn`, `book_title`, `author_id`, `publisher_id`, `subcategory_id`, `book_number_pages`, `book_publication_date`, `book_description`, `book_image_url`, `book_price`, `book_stock`, `book_discount`, `created_at`, `updated_at`)
VALUES
	(1,'9789587783377','Object Oriented Programming and Data Structure in Depth\n',1,1,24,336,'2017-08-10','Object-oriented programming and data structure in depth is a book designed to extend the knowledge that was acquired throughout the courses of the initial programming subjects; mainly structured programming. The purpose of starting by explaining Object Oriented Programming (OOP) is to provide a tool that allows encapsulating the logic and complexity of those algorithms; hiding it so as not to see it. And thus concentrate on the analysis, design and development of algorithms with a higher degree of complexity. For those who acquired their basic knowledge programming in C, the work begins by explaining the main encapsulation concepts by implementing them with C++. But this is just the beginning, since the advanced programming course proposed follows the paths of the Java language. Why Java? Because today, and for more than 20 years, Java is the programming language with the highest level of acceptance in the professional field. Most companies develop their applications in Java. And, although the main focus here will be on algorithmic logic, when implementing these algorithms with Java, the reader will be acquiring a skill that will allow them to start working on development projects that use this language.','img/books/9789587783377.jpg',550,1,0,'2023-11-06 00:00:29','2024-09-23 19:34:47'),
	(2,'9789587783378','The Cooper Violin',4,13,1,201,'2020-07-15','book summary','img/books/9789587783378.jpg',950,1,0,'2023-11-06 00:00:29','2024-09-23 19:34:48'),
	(3,'9789587783379','The Da Vinci Code',3,3,7,125,'2014-02-13','book summary','img/books/9789587783379.jpg',1200,1,0,'2023-11-06 00:00:29','2024-09-23 19:34:48'),
	(4,'9789587783370','Everything Comes Back',4,4,33,643,'2017-08-10','book summary','img/books/9789587783370.jpg',340,1,20,'2023-11-06 00:00:29','2024-09-23 19:34:48'),
	(5,'9789587783371','A Teaspoon of Earth and Sea',5,5,20,90,'2017-08-10','book summary','img/books/9789587783371.jpg',560,1,10,'2023-11-06 00:00:29','2024-09-23 19:34:48'),
	(6,'9789587783372','La Historia de Rondha',6,6,19,342,'2015-07-10','book summary','img/books/9789587783372.jpg',780,1,30,'2023-11-06 00:00:29','2024-09-23 19:34:49'),
	(7,'9789587783373','Jane\'s first picnic',7,7,18,456,'2016-10-10','book summary','img/books/9789587783373.jpg',500,1,20,'2023-11-06 00:00:29','2024-09-23 19:34:49');

/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` longtext COLLATE utf8mb4_unicode_ci,
  `category_image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_category_image_url_unique` (`category_image_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `category_image_url`, `created_at`, `updated_at`)
VALUES
	(1,'Fiction','The fiction category encompasses a wide range of imaginative stories. From invented worlds of science fiction and fantasy to stories that explore everyday life through contemporary novels. Literature in this category sparks the imagination and immerses readers in fictional worlds or alternate realities.','img/categories/Ficción.jpg','2023-11-04 02:39:18','2023-11-04 02:39:18'),
	(2,'Non-fiction','Books based on real facts and knowledge. From fascinating biographies to detailed historical analyses, this category offers a wide range of informative reading. It also includes self-help works, travel books and other topics that explore reality from different perspectives.','img/categories/No-ficción.jpg','2023-11-04 02:39:47','2023-11-04 02:39:47'),
	(3,'Children and young people','This category focuses on business topics, from books on finance and marketing strategies to economic analysis and organizational leadership. Offers resources to better understand the world of business and economics.','img/categories/Niños-y-jóvenes.jpg','2023-11-04 02:40:29','2023-11-04 02:40:29'),
	(4,'Science and Technology','This category covers books that explore and explain the world around us. From scientific discoveries to books that analyze computing and digital, it offers readings that seek to better understand the scientific and technological phenomena that impact our daily lives.','img/categories/Ciencia-y-tecnologia.jpg','2023-11-04 02:40:52','2023-11-04 02:40:52'),
	(5,'Art and photography','Books that celebrate creative expression and visual aesthetics. From books that explore the history of art and architecture to works that present beauty through photography, this category invites you to appreciate and understand various artistic manifestations.','img/categories/Arte-y-fotografía.jpg','2023-11-04 02:41:17','2023-11-04 02:41:17'),
	(6,'Self-help and well-being','Books designed for personal growth and improving emotional and physical well-being. From personal development tips to techniques for achieving peace of mind, this category focuses on personal empowerment and improving quality of life.','img/categories/Autoayuda-y-bienestar.jpg','2023-11-04 02:41:52','2023-11-04 02:41:52'),
	(7,'Business and economy','This category focuses on business topics, from books on finance and marketing strategies to economic analysis and organizational leadership. Offers resources to better understand the world of business and economics.','img/categories/Negocios-y-economía.jpg','2023-11-04 02:42:21','2023-11-04 02:42:21'),
	(8,'Religion and spirituality','Books that explore different religious traditions, spiritual philosophies and reflections on the meaning of life. From sacred texts to works of inspiration and reflection, this category invites you to explore the diversity of spiritual beliefs and practices.','img/categories/Religión-y-espiritualidad.jpg','2023-11-04 02:42:44','2023-11-04 02:42:44');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table featured
# ------------------------------------------------------------

DROP TABLE IF EXISTS `featured`;

CREATE TABLE `featured` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint unsigned NOT NULL,
  `type_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `featured_book_id_foreign` (`book_id`),
  KEY `featured_type_id_foreign` (`type_id`),
  CONSTRAINT `featured_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `featured_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `featured_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table featured_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `featured_types`;

CREATE TABLE `featured_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `featured_type_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_type_description` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_11_000000_create_roles_table',1),
	(2,'2014_10_12_000000_create_users_table',1),
	(3,'2014_10_12_100000_create_password_reset_tokens_table',1),
	(4,'2019_08_19_000000_create_failed_jobs_table',1),
	(5,'2019_12_14_000001_create_personal_access_tokens_table',1),
	(6,'2023_09_25_002853_create_categories_table',1),
	(7,'2023_10_11_163907_create_subcategories_table',1),
	(8,'2023_10_19_195913_create_authors_table',1),
	(9,'2023_10_22_012750_create_publishers_table',1),
	(10,'2023_10_23_024221_create_books_table',1),
	(11,'2024_08_01_025617_create_featured_types_table',1),
	(12,'2024_08_01_030606_create_featured_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table publishers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `publishers`;

CREATE TABLE `publishers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `publisher_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `publishers_publisher_name_unique` (`publisher_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;

INSERT INTO `publishers` (`id`, `publisher_name`, `created_at`, `updated_at`)
VALUES
	(1,'Alfaomega','2023-11-04 21:35:59','2023-11-04 21:35:59'),
	(2,'Bloomsbury','2023-11-04 21:35:59','2023-11-04 21:35:59'),
	(3,'Scholastic','2023-11-04 21:36:12','2023-11-04 21:36:12'),
	(4,'Penguin Books','2023-11-04 21:36:34','2023-11-04 21:36:34'),
	(5,'HarperCollins','2023-11-04 21:36:45','2023-11-04 21:36:45'),
	(6,'William Morrow','2023-11-04 21:36:54','2023-11-04 21:36:54'),
	(7,'Bantam Books','2023-11-04 21:38:15','2023-11-04 21:38:15'),
	(8,'Vintage Books','2023-11-04 21:38:46','2023-11-04 21:38:46'),
	(9,'Brown and Company','2023-11-04 21:39:00','2023-11-04 21:39:00'),
	(10,'Crown Publishing Group','2023-11-04 21:39:12','2023-11-04 21:39:12'),
	(11,'Harper','2023-11-04 21:39:31','2023-11-04 21:39:31'),
	(12,'Houghton Mifflin Harcourt','2023-11-04 21:39:47','2023-11-04 21:39:47'),
	(13,'Disney-Hyperion Books','2023-11-04 21:40:05','2023-11-04 21:40:05'),
	(14,'Random House Books for Young Readers','2023-11-04 21:40:43','2023-11-04 21:40:43'),
	(15,'W.W. Norton & Company','2023-11-04 21:40:59','2023-11-04 21:40:59'),
	(16,'Oxford University Press','2023-11-04 21:41:16','2023-11-04 21:41:16'),
	(17,'Basic Books','2023-11-04 21:41:25','2023-11-04 21:41:25'),
	(18,'Mariner Books','2023-11-04 21:41:41','2023-11-04 21:41:41'),
	(19,'Houghton Mifflin','2023-11-04 21:41:49','2023-11-04 21:41:49'),
	(20,'Ballantine Books','2023-11-04 21:42:01','2023-11-04 21:42:01'),
	(21,'Random House','2023-11-04 21:42:09','2023-11-04 21:42:09'),
	(22,'Picador','2023-11-04 21:42:20','2023-11-04 21:42:20'),
	(23,'Farrar','2023-11-04 21:42:27','2023-11-04 21:42:27'),
	(24,'Little','2023-11-04 21:42:38','2023-11-04 21:42:38'),
	(25,'Rizzoli','2023-11-04 21:42:49','2023-11-04 21:42:49'),
	(26,'Prestel','2023-11-04 21:42:59','2023-11-04 21:42:59'),
	(27,'New World Library','2023-11-04 21:43:11','2023-11-04 21:43:11'),
	(28,'Simon & Schuster','2023-11-04 21:43:21','2023-11-04 21:43:21'),
	(29,'Hay House','2023-11-04 21:43:31','2023-11-04 21:43:31'),
	(30,'HarperOne','2023-11-04 21:43:38','2023-11-04 21:43:38'),
	(31,'HarperBusiness','2023-11-04 21:43:47','2023-11-04 21:43:47'),
	(32,'Knopf','2023-11-04 21:43:54','2023-11-04 21:43:54'),
	(33,'Portfolio','2023-11-04 21:44:07','2023-11-04 21:44:07');

/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin',NULL,NULL),
	(2,'user',NULL,NULL);

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subcategories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subcategories`;

CREATE TABLE `subcategories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_category_id_foreign` (`category_id`),
  CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_description`, `created_at`, `updated_at`)
VALUES
	(1,1,'contemporary novel','The contemporary novel covers stories that reflect modern life, set in current or recent time. These narrative works often explore relevant themes, social dilemmas and human emotions in the current context, providing a reflective vision of contemporary society.','2023-11-04 02:45:42','2024-09-23 17:52:13'),
	(2,1,'classic literature','Works of classic literature are those that have stood the test of time, being timeless in their relevance and depth. These books represent literary milestones from different eras, transmitting universal values, exploring the human condition and offering a unique look at the history and society of their periods.','2023-11-04 02:46:29','2024-09-23 17:52:13'),
	(3,1,'Science fiction and fantasy','These subcategories cover imaginary worlds, advanced technology, fantastic beings, and alternative worlds. Science fiction delves into possible technological advances and dystopian futures, while fantasy explores magical worlds, mythological creatures, and epic adventures.','2023-11-04 02:50:15','2024-09-23 17:52:14'),
	(4,1,'Mystery and thriller','Mystery and thriller stories are full of suspense, intrigue and strong emotions. From unsolved crimes to dangerous conspiracies, these narratives keep readers on the edge of their seats, challenging their ability to solve puzzles or anticipate unexpected twists.','2023-11-04 02:52:03','2024-09-23 17:52:14'),
	(5,1,'Historical novel','This genre combines fiction with real historical events. Historical novels recreate bygone eras, immersing readers in specific historical periods, featuring fictional characters in authentic settings, and offering a unique view of history.','2023-11-04 02:52:37','2024-09-23 17:52:14'),
	(6,1,'Genre literature','This subcategory includes a wide range of specific topics, such as romance novels, old west stories, horror novels, among others. Each subgenre has its own distinctive elements that appeal to different audiences, from love and passion to suspense and action in specific contexts.','2023-11-04 02:53:28','2024-09-23 17:52:14'),
	(7,2,'Biographies and memoirs','These works present detailed accounts of the lives of real people, either told by them themselves (memoirs) or by an author who researches and recounts the life of an individual (biographies). They offer an intimate view of the lives, achievements, challenges and experiences of prominent figures or ordinary people with extraordinary stories.','2023-11-04 20:39:14','2024-09-23 17:52:15'),
	(8,2,'history books','These works explore particular events, periods and aspects of the past. From detailed analyzes of ancient civilizations to more recent historical events, these books offer a deeper understanding of how the world we live in evolved.','2023-11-04 20:40:04','2024-09-23 17:52:15'),
	(9,2,'Essays and criticism','This type of book presents reflections, analyzes and evaluations on various topics, whether from an academic or personal perspective. They address criticism of art, literature, society, politics or culture, offering enriching and provocative perspectives on topics of interest.','2023-11-04 20:42:23','2024-09-23 17:52:15'),
	(10,2,'travel books','These works relate travel experiences, adventures and discoveries. From travel guides to exploration narratives of different places and cultures, these books inspire, inform and entertain, transporting readers to different corners of the world.','2023-11-04 20:42:52','2024-09-23 17:52:15'),
	(11,2,'Cooking and gastronomy books','These books offer recipes, cooking stories, explore food trends, and teach cooking techniques. From ethnic cookbooks to nutrition guides, these books are a source of inspiration for food and gastronomy lovers.','2023-11-04 20:43:22','2024-09-23 17:52:16'),
	(12,2,'Personal development and self-help','These books seek to help readers grow personally, face challenges, and improve quality of life. They cover topics ranging from time management and leadership to techniques for managing stress, overcoming obstacles, and achieving goals.','2023-11-04 20:43:48','2024-09-23 17:52:16'),
	(13,3,'Children\'s books','These books are designed specifically for little ones, from newborns to children up to five years old. They include board books, books with colorful illustrations and tactile textures to encourage interaction and early learning. Its simple stories and colorful images seek to entertain and stimulate the cognitive and emotional development of young children.','2023-11-04 20:46:35','2024-09-23 17:52:16'),
	(14,3,'Youth books','This subcategory focuses on teenage readers, offering a wide range of genres and topics. From fantasy, science fiction or romance novels to realistic stories that address topics relevant to young people, these books seek to connect with their interests, explore their emotions and challenge their intellect.','2023-11-04 20:47:19','2024-09-23 17:52:16'),
	(15,3,'Educational books','These books are aimed at teaching and providing knowledge to children and young people. They can cover a variety of topics, from math and science to languages, history, and more. They use interactive methods, such as engaging illustrations, games and activities, to facilitate learning and skill development.','2023-11-04 20:47:55','2024-09-23 17:52:17'),
	(16,3,'Illustrated books','These books are characterized by having a combination of text and striking illustrations that tell stories in a visually attractive way. They are intended for readers of different ages and often explore emotional or complex themes through striking illustrations and simple narratives.','2023-11-04 20:48:48','2024-09-23 17:52:17'),
	(17,3,'Activity books','This subcategory offers books that propose practical and entertaining activities. From coloring books and puzzle games to craft books, they seek to keep children and young people entertained while stimulating their creativity, motor skills and logical thinking.','2023-11-04 20:49:29','2024-09-23 17:52:17'),
	(18,3,'Fantasy and science fiction for young people','These books are set in imaginary worlds, full of magic, adventure and fantastic elements. Aimed at young readers, they explore alternative worlds, time travel, supernatural powers, and other themes that spark imagination and curiosity.','2023-11-04 20:49:54','2024-09-23 17:52:18'),
	(19,4,'Natural sciences','This subcategory covers a wide range of scientific disciplines that focus on the study of nature and natural phenomena. It includes biology, chemistry, physics, geology, and other fundamental sciences that explore and explain the processes and characteristics of the natural world.','2023-11-04 20:51:17','2024-09-23 17:52:18'),
	(20,4,'Astronomy and astrophysics','Books that explore the universe, from planets and stars to cosmology. This subcategory addresses topics such as observational astronomy, star physics, black holes, galaxies and other cosmic phenomena, providing a deeper understanding of outer space.','2023-11-04 20:51:42','2024-09-23 17:52:18'),
	(21,4,'Biology and wildlife','Focused on life on Earth, this subcategory explores biology in all its forms, from cellular structure to ecosystem ecology. Books included may cover wildlife diversity, species conservation, evolution, and animal behavior.','2023-11-04 20:52:04','2024-09-23 17:52:19'),
	(22,4,'Environment and ecology','Books that analyze the relationship between living beings and their environment. They focus on environmental issues, such as climate change, sustainability, the conservation of natural resources and ecology, offering solutions and reflections on how to preserve our planet.','2023-11-04 20:52:50','2024-09-23 17:52:19'),
	(23,4,'Popular science books','This subcategory seeks to bring science closer to the general public. Popular science books explain complex scientific concepts in an accessible and entertaining way, making complex topics understandable for readers without specific scientific training.','2023-11-04 20:53:22','2024-09-23 17:52:19'),
	(24,4,'Technology and computing','Focused on technological advances, this subcategory addresses topics such as computing, artificial intelligence, programming, cybersecurity and the digital revolution. It offers an overview of technology and its impact on society.','2023-11-04 20:53:45','2024-09-23 17:52:20'),
	(25,5,'art history','This subcategory delves into the evolution of art over time. From prehistory to contemporary art movements, explore the styles, artists and works that have shaped the art world. It offers detailed analyzes of the trends, periods and influences that marked milestones in the history of art.','2023-11-04 20:56:50','2024-09-23 17:52:20'),
	(26,5,'Photograph','Focused on capturing moments, this subcategory explores techniques, styles, and the history of photography. From books detailing photographic technique to collections of iconic images, it offers a broad view of the power and beauty of photography as an art form and documentation.','2023-11-04 20:57:23','2024-09-23 17:52:20'),
	(27,5,'Design and fashion','This area focuses on aesthetics and creativity in fashion and design. From books exploring graphic design to fashion trends throughout history, it offers a deeper understanding of how creativity and style have evolved in different cultural contexts.','2023-11-04 20:58:01','2024-09-23 17:52:21'),
	(28,5,'Architecture','This subcategory dives into architectural history, styles, and innovations. From books analyzing ancient architecture to modern trends, it offers a detailed perspective on the most significant buildings, notable architects, and movements that have influenced construction over time.','2023-11-04 20:58:33','2024-09-23 17:52:21'),
	(29,5,'Music and cinema','This section explores the relationship between art, music and film. From books that examine the history of cinema to those that focus on the relationship between music and visual art, it provides a comprehensive view of how these art forms intertwine and complement each other.','2023-11-04 20:59:09','2024-09-23 17:52:21'),
	(30,5,'performing arts','This subcategory focuses on the performing arts. From books that explore theater and dance to those that analyze performances and stage productions, it offers a deeper understanding of artistic expression through movement and performance.','2023-11-04 20:59:38','2024-09-23 17:52:21'),
	(31,6,'Mindfulness and meditation','These readings focus on teaching mindfulness and meditation techniques to cultivate full attention, reduce stress, and improve mental health. The books in this subcategory offer practices for being present in the moment and achieving inner peace.','2023-11-04 21:01:06','2024-09-23 17:52:22'),
	(32,6,'Health and well-being','This subcategory covers books that provide information about physical health and general well-being. From exercise and nutrition guides to tips for a healthier lifestyle, these books aim to help readers improve their overall well-being.','2023-11-04 21:01:31','2024-09-23 17:52:22'),
	(33,6,'personal growth','Readings that focus on personal development, addressing topics such as time management, goal setting, personal success, and overcoming obstacles. They offer tools and advice for personal growth and fulfillment.','2023-11-04 21:02:02','2024-09-23 17:52:23'),
	(34,6,'Motivation and personal improvement','This subcategory focuses on books that seek to inspire, motivate, and foster determination to overcome challenges. They offer success stories, motivation strategies, and how to overcome obstacles to achieve personal goals.','2023-11-04 21:02:55','2024-09-23 17:52:23'),
	(35,6,'Psychology','Books that explore different aspects of human psychology, from introductory books to in-depth studies on the mind, behavior and understanding emotions. These books offer insights into the workings of the human mind.','2023-11-04 21:03:26','2024-09-23 17:52:23'),
	(36,6,'Spirituality','This subcategory encompasses books that explore spirituality in its various forms. From religious teachings to non-religious spiritual practices, these books offer reflections on the meaning of life, the connection to the transcendental, and the search for meaning and purpose.','2023-11-04 21:04:09','2024-09-23 17:52:23'),
	(37,7,'Personal finances','These works focus on the effective management of personal finances. They offer advice on saving, investing, debt management, retirement planning and strategies to ensure financial stability at the individual and family level.','2023-11-04 21:05:07','2024-09-23 17:52:24'),
	(38,7,'Marketing and sales','This subcategory focuses on effective marketing strategies and sales techniques. Books in this area cover everything from fundamental concepts to the latest trends in advertising, branding, market analysis and sales tactics to promote products and services.','2023-11-04 21:05:28','2024-09-23 17:52:24'),
	(39,7,'Entrepreneurship','These works explore the world of entrepreneurship and business from the perspective of those seeking to start, manage and grow their own businesses. They offer advice on business creation, business strategies, startup management and business success stories.','2023-11-04 21:05:55','2024-09-23 17:52:24'),
	(40,7,'Leadership and management','This subcategory focuses on the development of leadership, team and organizational management skills. Books in this area explore leadership styles, conflict resolution, human resource management, team motivation, and strategies for organizational growth.','2023-11-04 21:06:18','2024-09-23 17:52:25'),
	(41,7,'Economics and financial theory','These books dive into the fundamental principles of economics and financial theories. They explore topics such as macroeconomics, microeconomics, economic policies, financial theories and the functioning of financial markets.','2023-11-04 21:06:41','2024-09-23 17:52:25'),
	(42,7,'Industry and business sector','This subcategory focuses on analyzing specific industrial sectors and their dynamics. It offers detailed information on sectors such as technology, health, energy, among others, exploring trends, challenges and opportunities within each one.','2023-11-04 21:07:09','2024-09-23 17:52:25'),
	(43,8,'Comparative Religions','This subcategory focuses on comparing different religious traditions, identifying similarities and differences between beliefs, practices, mythologies, and worldviews. The books in this section explore the intersection and diversity of the world\'s major religions, offering a broader understanding of different forms of faith.','2023-11-04 21:08:08','2024-09-23 17:52:25'),
	(44,8,'Religious Philosophy','Books that address the philosophical aspects of religion, exploring concepts such as the existence of God, morality, the purpose of life, and other fundamental topics from a philosophical perspective. This subcategory dives into the ideas and arguments surrounding faith and spirituality from a more rational approach.','2023-11-04 21:08:37','2024-09-23 17:52:26'),
	(45,8,'Mysticism and Esotericism','Here you will find books that explore more hidden or mysterious aspects of spiritual practices. From the mysticism of different traditions to esoteric practices, such as alchemy or astrology, these books offer insight into the deepest and least known aspects of spirituality.','2023-11-04 21:09:04','2024-09-23 17:52:26'),
	(46,8,'Holy Books','This subcategory houses texts considered sacred or fundamental in various religious traditions. From the Bible, the Quran, the Torah, the Vedas and other religious texts, these books are fundamental to the study and understanding of religious beliefs and practices.','2023-11-04 21:09:32','2024-09-23 17:52:26'),
	(47,8,'Theology','Theology books explore and discuss doctrinal, theological concepts and dogmas within different religious traditions. These texts examine the nature of faith, divinity, salvation, and other fundamental theological aspects of various religions.','2023-11-04 21:10:00','2024-09-23 17:52:26'),
	(48,8,'Spiritual Inspiration','This subcategory includes books that offer inspiration, motivation, and reflections on spirituality. From contemporary writings to timeless classics, these books provide messages of hope, comfort, and spiritual guidance for readers.','2023-11-04 21:10:31','2024-09-23 17:52:27');

/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint unsigned NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'admin','admin@gmail.com',NULL,'$2a$12$ciCMrP7CDAaH.F13/aTYO.A23olQoLm/rsijwc9r5MJgk68O0PaKe',1,NULL,NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
