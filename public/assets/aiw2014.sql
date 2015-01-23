-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2014 at 05:31 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aiw2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'trangdv@outlook.com', '$2a$10$qQSrqpSlCjMHl8qAAqdCBeC21vIUNE5U9o3DjWjnAaoYzu.927pWG', NULL, NULL, '2014-11-24 16:21:27', 19, '2014-11-30 15:46:38', '2014-11-29 14:41:57', '127.0.0.1', '127.0.0.1', '2014-11-07 03:33:29', '2014-11-30 15:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE IF NOT EXISTS `clubs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nick_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coach` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `stadium` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `president` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `host_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_file_size` int(11) DEFAULT NULL,
  `host_updated_at` datetime DEFAULT NULL,
  `away_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `away_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `away_file_size` int(11) DEFAULT NULL,
  `away_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `name`, `nick_name`, `coach`, `year`, `stadium`, `volume`, `location`, `president`, `created_at`, `updated_at`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`, `host_file_name`, `host_content_type`, `host_file_size`, `host_updated_at`, `away_file_name`, `away_content_type`, `away_file_size`, `away_updated_at`) VALUES
(1, 'Barcelona', '', '', NULL, '', NULL, '', 'Costaa', '2014-11-10 14:45:41', '2014-11-30 15:51:10', 'Barcelona.png', 'image/png', 27174, '2014-11-30 15:51:09', 'kit_home.png', 'image/png', 12818, '2014-11-30 15:51:09', 'kit_away.png', 'image/png', 27190, '2014-11-30 15:51:10'),
(2, 'Atletico Madrid', '', '', NULL, '', NULL, '', 'Tôi Trang luôn', '2014-11-16 15:12:39', '2014-11-30 15:54:22', 'Atletico_Madrid.png', 'image/png', 15534, '2014-11-30 15:51:37', 'kit_home.png', 'image/png', 32073, '2014-11-30 15:54:21', 'kit_away.png', 'image/png', 18294, '2014-11-30 15:54:22'),
(3, 'Athletic Club', '', '', NULL, '', NULL, '', NULL, '2014-11-28 03:16:58', '2014-11-30 15:49:23', 'Athletic_Club.png', 'image/png', 32363, '2014-11-30 15:49:22', 'home_kit.png', 'image/png', 27676, '2014-11-30 15:49:22', 'away_kit.png', 'image/png', 23314, '2014-11-30 15:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE IF NOT EXISTS `histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_histories_on_club_id` (`club_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `name`, `year`, `club_id`, `created_at`, `updated_at`) VALUES
(1, 'Giải La Liga', '1966, 1687, 1999, 2003', 1, '2014-11-10 15:08:01', '2014-11-10 15:08:01'),
(2, 'La Liga', '1978, 1999, 2005, 2008, 2009', 2, '2014-11-16 15:12:39', '2014-11-16 15:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `student_id`, `email`, `phone`, `idol`, `created_at`, `updated_at`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`) VALUES
(1, 'Đinh Văn Trang', '4c1101040196', 'trangdv@outlook.com', '01693 280 409', 'Si Lùn', '2014-11-28 03:46:37', '2014-11-28 03:46:37', 'damvinhhung.jpg', 'image/jpeg', 9474, '2014-11-28 03:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `nation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` decimal(10,0) DEFAULT NULL,
  `weight` decimal(10,0) DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_players_on_club_id` (`club_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `age`, `dob`, `nation`, `height`, `weight`, `position`, `leg`, `level`, `created_at`, `updated_at`, `club_id`, `number`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`) VALUES
(1, 'Costa', 29, '2009-01-02', 'Mỹ', '188', '78', 'Tiền Đạo', 'Cả 3 chân', '99', '2014-11-10 15:09:58', '2014-11-28 03:10:35', 1, 21, 'Ander_Iturraspe.jpg', 'image/jpeg', 5594, '2014-11-28 03:10:35'),
(2, 'Miguel Angel Moya Rumbo', NULL, '2009-01-03', 'Mỹ', '176', '56', 'Hậu về', 'Trái', '66', '2014-11-16 15:12:39', '2014-11-28 03:10:16', 2, 16, 'Ander_Artabe.jpg', 'image/jpeg', 10077, '2014-11-28 03:10:16'),
(3, 'John Terry', NULL, '1985-10-10', 'Mỹ', '178', '60', 'Hậu về', 'Phải', '78', '2014-11-29 14:48:49', '2014-11-29 15:37:52', 3, 10, 'Benat_Etxebarria.jpg', 'image/jpeg', 4789, '2014-11-29 14:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20141101034906'),
('20141101035725'),
('20141101035728'),
('20141110143830'),
('20141110144948'),
('20141110145518'),
('20141110145815'),
('20141110150455'),
('20141121161504'),
('20141121183503'),
('20141125154752'),
('20141125161423'),
('20141125161445'),
('20141127082403'),
('20141127082558'),
('20141127103044'),
('20141127111811'),
('20141127111855'),
('20141127111936'),
('20141128033329'),
('20141128033706');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `banner_home_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_home_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_home_file_size` int(11) DEFAULT NULL,
  `banner_home_updated_at` datetime DEFAULT NULL,
  `banner_single_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_single_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_single_file_size` int(11) DEFAULT NULL,
  `banner_single_updated_at` datetime DEFAULT NULL,
  `banner_search_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_search_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_search_file_size` int(11) DEFAULT NULL,
  `banner_search_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `facebook`, `twitter`, `googleplus`, `footer_text`, `data_source`, `created_at`, `updated_at`, `banner_home_file_name`, `banner_home_content_type`, `banner_home_file_size`, `banner_home_updated_at`, `banner_single_file_name`, `banner_single_content_type`, `banner_single_file_size`, `banner_single_updated_at`, `banner_search_file_name`, `banner_search_content_type`, `banner_search_file_size`, `banner_search_updated_at`) VALUES
(1, 'facebook.com', 'twitter.com', 'googleplus.com', 'By Trang Dinh Van © 2014', 'Bản quyền dữ liệu tham khảo thuộc http://vi.soccerwiki.org/', NULL, '2014-11-28 03:09:38', 'la_liga_banner.jpg', 'image/jpeg', 189596, '2014-11-28 03:08:30', 'la_liga_banner.jpg', 'image/jpeg', 189596, '2014-11-28 03:09:37', 'la_liga_banner.jpg', 'image/jpeg', 189596, '2014-11-28 03:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
