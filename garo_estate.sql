-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2023 at 09:18 PM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garo_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Fire Safety', 1, 'fire-safety', '2023-03-30 01:40:42', '2023-03-30 01:40:42'),
(2, 'Swimming Pool', 1, 'swimming-pool', '2023-03-30 01:41:00', '2023-03-30 01:41:00'),
(3, 'Emergency Exit', 1, 'emergency-exit', '2023-03-30 01:41:27', '2023-03-30 01:41:27'),
(4, 'Laundry Room', 1, 'laundry-room', '2023-03-30 01:41:49', '2023-03-30 01:41:49'),
(5, 'Reserved Parking', 1, 'parking', '2023-03-30 01:42:10', '2023-03-30 01:47:57'),
(6, 'Visitor Parking', 1, 'visitor-parking', '2023-03-30 01:42:22', '2023-03-30 01:42:22'),
(7, 'Security', 1, 'security', '2023-03-30 01:43:48', '2023-03-30 01:43:48'),
(8, 'Club House', 1, 'club-house', '2023-03-30 01:44:01', '2023-03-30 01:44:01'),
(9, 'Children Play Area', 1, 'children-play-area', '2023-03-30 01:44:15', '2023-03-30 01:44:15'),
(10, 'Elder Seeting Area', 1, 'elder-seeting-area', '2023-03-30 01:44:35', '2023-03-30 01:44:35'),
(11, '24 * 7 Water Supply', 1, '24-7-water-supply', '2023-03-30 01:45:00', '2023-03-30 01:45:00'),
(12, 'Solar', 1, 'solar', '2023-03-30 01:45:14', '2023-03-30 01:45:14'),
(13, 'Lift', 1, 'lift', '2023-03-30 01:45:47', '2023-03-30 01:45:47'),
(14, 'Gas Pipeline', 1, 'gas-pipeline', '2023-03-30 01:46:07', '2023-03-30 01:46:07'),
(15, 'CCTV', 1, 'cctv', '2023-03-30 01:46:26', '2023-03-30 01:46:26'),
(16, 'GYM', 1, 'gym', '2023-03-30 01:46:32', '2023-03-30 01:46:32'),
(17, 'Theater', 1, 'theater', '2023-03-30 01:46:54', '2023-03-30 01:46:54'),
(18, 'Basement Parking', 1, 'basement', '2023-03-30 01:47:32', '2023-03-30 01:48:12'),
(19, 'Vaastu Compliant', 1, 'vaastu-compliant', '2023-03-30 01:49:01', '2023-03-30 01:49:01'),
(20, 'Pick Up & Drop off', 1, 'pick-up-drop-off', '2023-03-30 01:49:39', '2023-03-30 01:49:39'),
(21, 'Metro', 1, 'metro', '2023-03-30 01:49:48', '2023-03-30 01:49:48'),
(22, 'Hospital Services', 1, 'hospital-services', '2023-03-30 01:50:05', '2023-03-30 01:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `area`, `pincode`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Ambawadi', '380006', 1, 'ambawadi', '2023-03-29 23:46:34', '2023-03-29 23:46:34'),
(2, 'Amraiwadi', '380026', 1, 'amraiwadi', '2023-03-29 23:46:55', '2023-03-29 23:46:55'),
(3, 'Aslali', '382427', 1, 'aslali', '2023-03-29 23:47:31', '2023-03-29 23:47:31'),
(4, 'Bakrol', '382430', 1, 'bakrol', '2023-03-29 23:48:12', '2023-03-29 23:48:12'),
(5, 'Bapunagar', '380024', 1, 'bapunagar', '2023-03-29 23:48:28', '2023-03-29 23:48:28'),
(6, 'Bodakdev', '380054', 1, 'bodakdev', '2023-03-29 23:49:08', '2023-03-29 23:49:08'),
(7, 'Bopal', '380058', 1, 'bopal', '2023-03-29 23:49:31', '2023-03-29 23:49:31'),
(8, 'Chandkheda', '382424', 1, 'chandkheda', '2023-03-29 23:50:12', '2023-03-29 23:50:12'),
(9, 'Dariyapur', '380001', 1, 'dariyapur', '2023-03-29 23:51:12', '2023-03-29 23:51:12'),
(10, 'Ellisbridge', '380006', 1, 'ellisbridge', '2023-03-29 23:51:44', '2023-03-29 23:51:44'),
(11, 'Ghatlodia', '380061', 1, 'ghatlodia', '2023-03-29 23:52:15', '2023-03-29 23:52:15'),
(12, 'Ghodasar', '380050', 1, 'ghodasar', '2023-03-29 23:52:39', '2023-03-29 23:52:39'),
(13, 'Ghuma', '380058', 1, 'ghuma', '2023-03-29 23:52:54', '2023-03-29 23:52:54'),
(14, 'Gomtipur', '380021', 1, 'gomtipur', '2023-03-29 23:53:28', '2023-03-29 23:53:28'),
(15, 'Gujarat University', '380009', 1, 'gujarat-university', '2023-03-29 23:54:55', '2023-03-29 23:54:55'),
(16, 'Isanpur', '382443', 1, 'isanpur', '2023-03-29 23:55:40', '2023-03-29 23:55:40'),
(17, 'Jamalpur', '380001', 1, 'jamalpur', '2023-03-29 23:56:50', '2023-03-29 23:56:50'),
(18, 'Jetalpur', '382427', 1, 'jetalpur', '2023-03-29 23:57:15', '2023-03-29 23:57:15'),
(19, 'Jivraj Park', '380051', 1, 'jivraj-park', '2023-03-29 23:57:36', '2023-03-29 23:57:36'),
(20, 'Jodhpur Char Rasta', '380015', 1, 'jodhpur-char-rasta', '2023-03-29 23:58:02', '2023-03-29 23:58:02'),
(21, 'Juhapura', '380055', 1, 'juhapura', '2023-03-29 23:58:21', '2023-03-29 23:58:21'),
(22, 'Kathwada', '382430', 1, 'kathwada', '2023-03-29 23:58:50', '2023-03-29 23:58:50'),
(23, 'Khodiyarnagar', '382350', 1, 'khodiyarnagar', '2023-03-29 23:59:15', '2023-03-29 23:59:15'),
(24, 'Lambha', '382405', 1, 'lambha', '2023-03-29 23:59:44', '2023-03-29 23:59:44'),
(25, 'Manek Chowk', '380001', 1, 'manek-chowk', '2023-03-30 00:00:07', '2023-03-30 00:00:07'),
(26, 'Maninagar', '380008', 1, 'maninagar', '2023-03-30 00:00:29', '2023-03-30 00:00:29'),
(27, 'Memnagar', '380052', 1, 'memnagar', '2023-03-30 00:00:50', '2023-03-30 00:00:50'),
(28, 'Motera', '380005', 1, 'motera', '2023-03-30 00:01:41', '2023-03-30 00:01:41'),
(29, 'Narayannagar', '380007', 1, 'narayannagar', '2023-03-30 00:02:03', '2023-03-30 00:02:03'),
(30, 'Naroda', '382330', 1, 'naroda', '2023-03-30 00:02:39', '2023-03-30 00:02:39'),
(31, 'Narol', '382405', 1, 'narol', '2023-03-30 00:03:09', '2023-03-30 00:03:09'),
(32, 'Nava Vadaj', '380013', 1, 'nava-vadaj', '2023-03-30 00:03:27', '2023-03-30 00:03:27'),
(33, 'Navrangpura', '380009', 1, 'navrangpura', '2023-03-30 00:03:45', '2023-03-30 00:03:45'),
(34, 'Nikol', '382350', 1, 'nikol', '2023-03-30 00:04:02', '2023-03-30 00:04:02'),
(35, 'Odhav', '382415', 1, 'odhav', '2023-03-30 00:04:35', '2023-03-30 00:04:35'),
(36, 'Paldi', '380007', 1, 'paldi', '2023-03-30 00:04:52', '2023-03-30 00:04:52'),
(37, 'Raikhad', '380001', 1, 'raikhad', '2023-03-30 00:05:32', '2023-03-30 00:05:32'),
(38, 'Raipur', '380001', 1, 'raipur', '2023-03-30 00:05:50', '2023-03-30 00:05:50'),
(39, 'Rakhial', '380023', 1, 'rakhial', '2023-03-30 00:06:12', '2023-03-30 00:06:27'),
(40, 'Ranip', '382480', 1, 'ranip', '2023-03-30 00:06:51', '2023-03-30 00:06:51'),
(41, 'Sanathal', '382210', 1, 'sanathal', '2023-03-30 00:07:17', '2023-03-30 00:07:17'),
(42, 'Saraspur', '380018', 1, 'saraspur', '2023-03-30 00:07:45', '2023-03-30 00:07:45'),
(43, 'Sardarnagar', '382475', 1, 'sardarnagar', '2023-03-30 00:08:27', '2023-03-30 00:08:27'),
(44, 'Sarkhej', '382210', 1, 'sarkhej', '2023-03-30 00:08:57', '2023-03-30 00:08:57'),
(45, 'Shah Alam', '380028', 1, 'shah-alam', '2023-03-30 00:09:26', '2023-03-30 00:09:26'),
(46, 'Shahibag', '380004', 1, 'shahibag', '2023-03-30 00:09:55', '2023-03-30 00:09:55'),
(47, 'Shahpur', '380004', 1, 'shahpur', '2023-03-30 00:10:17', '2023-03-30 00:10:17'),
(48, 'Shastrinagar', '380013', 1, 'shastrinagar', '2023-03-30 00:10:57', '2023-03-30 00:10:57'),
(49, 'Shela', '380058', 1, 'shela', '2023-03-30 00:11:13', '2023-03-30 00:11:13'),
(50, 'Sola', '380063', 1, 'sola', '2023-03-30 00:11:46', '2023-03-30 00:11:46'),
(51, 'Stadium', '380013', 1, 'stadium', '2023-03-30 00:12:09', '2023-03-30 00:12:09'),
(52, 'Sukhrampura', '380023', 1, 'sukhrampura', '2023-03-30 00:12:33', '2023-03-30 00:12:33'),
(53, 'Thaltej', '380054', 1, 'thaltej', '2023-03-30 00:12:59', '2023-03-30 00:12:59'),
(54, 'Timba', '382425', 1, 'timba', '2023-03-30 00:13:21', '2023-03-30 00:13:21'),
(55, 'Vadaj', '380013', 1, 'vadaj', '2023-03-30 00:13:39', '2023-03-30 00:13:39'),
(56, 'Vastral', '382418', 1, 'vastral', '2023-03-30 00:13:59', '2023-03-30 00:13:59'),
(57, 'Vatva', '382440', 1, 'vatva', '2023-03-30 00:14:21', '2023-03-30 00:14:21'),
(58, 'Vehlal', '382330', 1, 'vehlal', '2023-03-30 00:14:44', '2023-03-30 00:14:44'),
(59, 'Bavla', '382220', 1, 'bavla', '2023-03-30 00:15:34', '2023-03-30 00:15:34'),
(60, 'Bhadaj', '380060', 1, 'bhadaj', '2023-03-30 00:15:44', '2023-03-30 00:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Apartments', 'apartments', '2023-03-30 01:16:41', '2023-03-30 01:16:41'),
(2, 'Bungalow', 'bungalow', '2023-03-30 01:19:01', '2023-03-30 01:19:01'),
(3, 'RowHouse', 'rowhouse', '2023-03-30 01:19:24', '2023-03-30 01:19:24'),
(4, 'Duplex', 'duplex', '2023-03-30 01:19:57', '2023-03-30 01:19:57'),
(5, 'Tenament', 'tenament', '2023-03-30 01:20:16', '2023-03-30 01:20:16'),
(6, 'Villa', 'villa', '2023-03-30 01:21:26', '2023-03-30 01:21:26'),
(7, 'Farm House', 'farm-house', '2023-03-30 01:22:17', '2023-03-30 01:22:17'),
(8, 'Pent House', 'pent-house', '2023-03-30 01:22:32', '2023-03-30 01:22:32'),
(9, 'PG', 'pg', '2023-03-30 01:22:46', '2023-03-30 01:22:46'),
(10, 'Plot', 'plot', '2023-03-30 01:22:56', '2023-03-30 01:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favouriteproperties`
--

CREATE TABLE `favouriteproperties` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `property_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourite_properties`
--

CREATE TABLE `favourite_properties` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `property_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourite_properties`
--

INSERT INTO `favourite_properties` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(9, 3, 3, '2023-04-07 13:02:01', '2023-04-07 13:02:01'),
(10, 3, 5, '2023-04-07 13:02:04', '2023-04-07 13:02:04'),
(11, 3, 4, '2023-04-07 13:02:06', '2023-04-07 13:02:06'),
(12, 3, 6, '2023-04-07 13:02:08', '2023-04-07 13:02:08'),
(13, 8, 3, '2023-04-19 08:56:02', '2023-04-19 08:56:02'),
(14, 8, 5, '2023-04-19 08:56:04', '2023-04-19 08:56:04'),
(16, 8, 4, '2023-04-20 01:17:51', '2023-04-20 01:17:51'),
(17, 8, 2, '2023-04-20 01:17:55', '2023-04-20 01:17:55'),
(18, 1, 1, '2023-06-16 03:05:03', '2023-06-16 03:05:03'),
(21, 1, 6, '2023-06-16 05:35:57', '2023-06-16 05:35:57'),
(22, 9, 4, '2023-06-29 10:05:08', '2023-06-29 10:05:08'),
(23, 9, 2, '2023-06-29 10:05:09', '2023-06-29 10:05:09'),
(24, 9, 6, '2023-06-29 10:05:12', '2023-06-29 10:05:12'),
(25, 10, 1, '2023-07-01 01:19:49', '2023-07-01 01:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `user_id`, `description`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'nice', '5', 1, '2023-03-30 08:33:01', '2023-03-30 08:33:01'),
(8, 3, 'Legel Website for Searching Proprty', '5', 1, '2023-04-07 12:49:36', '2023-04-07 12:49:36'),
(16, 9, 'nice', '5', 1, '2023-06-29 10:05:00', '2023-06-29 10:05:00'),
(17, 10, 'I am Happy with meet you', '5', 1, '2023-07-01 01:23:11', '2023-07-01 01:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `property_id` bigint UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `user_id`, `property_id`, `first_name`, `last_name`, `email`, `contact_no`, `description`, `status`, `created_at`, `updated_at`) VALUES
(4, 3, 3, 'Ronak', 'Patel', 'ronak@yopmail.com', '9865805001', 'interested Property', 1, '2023-04-07 12:44:50', '2023-06-29 09:58:52'),
(6, NULL, NULL, 'Samay', 'Shah', 'samay@yopmail.com', '9896969896', 'for post property', 1, '2023-04-20 00:02:44', '2023-07-01 01:17:07'),
(12, 9, 6, 'Kathan', 'Patel', 'kp12@gmail.com', '9879879879', 'for buy property', 0, '2023-06-29 10:04:43', '2023-06-29 10:04:43'),
(13, 10, 1, 'Vivek', 'Patel', 'vrock32@gmail.com', '9723526052', 'Interested for by if not sell', 0, '2023-07-01 01:21:31', '2023-07-01 01:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_01_090419_create_categories_table', 1),
(6, '2023_03_01_110936_create_amenities_table', 1),
(7, '2023_03_01_125641_create_properties_table', 1),
(8, '2023_03_01_155206_create_favouriteproperties_table', 1),
(9, '2023_03_01_155854_create_inquiries_table', 1),
(10, '2023_03_01_155915_create_feedbacks_table', 1),
(11, '2023_03_23_054402_create_areas_table', 1),
(12, '2023_03_26_134909_create_property_galleries_table', 1),
(13, '2023_03_30_055747_create_favourite_properties_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `amenities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` bigint UNSIGNED NOT NULL,
  `latitude` decimal(16,8) DEFAULT NULL,
  `longitude` decimal(16,8) DEFAULT NULL,
  `sq_ft` decimal(16,2) DEFAULT NULL,
  `price` int NOT NULL,
  `bhk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `category_id`, `amenities`, `title`, `description`, `address`, `area_id`, `latitude`, `longitude`, `sq_ft`, `price`, `bhk`, `bathrooms`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 6, '[\"Swimming Pool\",\"Reserved Parking\",\"Security\",\"Children Play Area\",\"Elder Seeting Area\",\"24 * 7 Water Supply\",\"Gas Pipeline\",\"Basement Parking\",\"Vaastu Compliant\",\"Pick Up & Drop off\",\"Metro\",\"Hospital Services\"]', 'Kens Villa 18', 'Situated in an idyllic Location off Dev Dholera, 40 Kms from Ahmedabad, Gujarat. Surrounded by places of historical, cultural and environmental significance : Lothal the seat of one of the most ancient civilizations; the home of the Tarnetar Mela an event attended by folks from all over; sanctuaries like Nalsarovar, Zainabad and Varavedar.', '6/Kens Villa -18, Near Nikol Pollice Station.', 34, NULL, NULL, '200.00', 65000000, '4bhk', '5', 1, 'new-sanskartirth-society', '2023-03-30 04:21:14', '2023-06-27 02:44:58'),
(2, 7, '[\"Fire Safety\",\"Emergency Exit\",\"Laundry Room\",\"Reserved Parking\",\"Visitor Parking\",\"Security\",\"Club House\",\"24 * 7 Water Supply\",\"Solar\",\"Lift\",\"Gas Pipeline\",\"CCTV\",\"Theater\",\"Basement Parking\",\"Vaastu Compliant\",\"Pick Up & Drop off\",\"Metro\",\"Hospital Services\"]', 'Shyamvihar Farm', 'Residential project, Shree Shyam Vihar Villa in Gandhinagar is offering units for sale in Mansa. Check out some Villa that suit your lifestyle and liking. Possession date of Shree Shyam Vihar Villa is Dec, 2024. The property offers 3 BHK units. As per the area plan, units are in the size range of 551.0 - 1070.0 sq.ft.. The project by Shree Developers Mansa is set in 2.26 Acres . This residential project was launched in February 2021. It has 29 units. Contact for further details. Shree Shyam Vihar Villa is located in Opp Gaytri Temple, Mansa Gandhinagar Highway, Mansa.', 'Shyamvihar farm , Dehgam road', 30, NULL, NULL, '200.00', 42000000, '4bhk', '5', 0, 'satsang-residency', '2023-03-30 04:30:05', '2023-06-16 03:06:49'),
(3, 1, '[\"Fire Safety\",\"Emergency Exit\",\"Laundry Room\",\"Reserved Parking\",\"Visitor Parking\",\"Security\",\"Club House\",\"Children Play Area\",\"Elder Seeting Area\",\"24 * 7 Water Supply\",\"Solar\",\"Gas Pipeline\",\"Vaastu Compliant\",\"Pick Up & Drop off\",\"Metro\"]', 'Pratiksha Appartment', '<p>Sola Road is one of the major roads which links to other parts of the city. The Apparel Park and the Amraiwadi Metro Stations (both East-West Corridor) are located at a 14Km and 15Km distance both via Sola Road. Further, the Ahmedabad Junction is 9Km via Sola Road and the Sardar Vallabhai Patel International Airport is 12Km via Airport Road.</p>', '218/Pratiksha Appartment, Sola Road.', 29, NULL, NULL, '150.00', 3500000, '1bhk', '2', 1, 'pratiksha-appartment', '2023-04-07 07:40:46', '2023-06-16 03:19:14'),
(4, 2, '[\"Swimming Pool\",\"Emergency Exit\",\"Laundry Room\",\"Children Play Area\",\"24 * 7 Water Supply\",\"Basement Parking\",\"Vaastu Compliant\",\"Metro\",\"Hospital Services\"]', 'Vraj Vihar', 'Residential project, Vraj Vihar in Ahmedabad is offering units for sale in Mansa. Check out some Bangalow that suit your lifestyle and liking. Possession date of Vraj Vihar is Dec, 2024. The property offers 3 BHK units. As per the area plan, units are in the size range of 551.0 - 1070.0 sq.ft.. The project by Shree Developers Mansa is set in 2.26 Acres . This residential project was launched in February 2021. It has 29 units. Contact for further details.', '13/Vraj Vihar near vastral Metro Station, S P Ring Road', 56, NULL, NULL, '200.00', 65000000, '3bhk', '4', 1, 'vraj-vihar', '2023-04-07 12:16:24', '2023-06-16 03:19:17'),
(5, 1, '[\"Swimming Pool\",\"Emergency Exit\",\"Reserved Parking\",\"Security\",\"Children Play Area\",\"Lift\",\"CCTV\",\"Vaastu Compliant\",\"Metro\"]', 'Sanidhya Appartmnts', 'Sanidhya Appartment 1 is offering property for sale. Check out some Apartment. Available configurations include 2 BHK formats in Velnath Para. It is a Ready to Move project by Sanidhya Developers. Sanidhya Appartment 1 is set in an area of 0.04 Acres and is complete with various modern-day amenities. As per the area plan, units are in the size of 396.0 sq.ft.. There are 15 units in Sanidhya Appartment 1', '601/Sanidhya Appartment, S G Highway.', 53, NULL, NULL, '200.00', 8500000, '3bhk', '4', 1, 'sanidhya-appartmnts', '2023-04-07 12:24:43', '2023-06-29 09:58:59'),
(6, 2, '[\"Swimming Pool\",\"Emergency Exit\",\"Laundry Room\",\"Visitor Parking\",\"Club House\",\"Children Play Area\",\"Elder Seeting Area\",\"24 * 7 Water Supply\",\"Lift\",\"Gas Pipeline\",\"GYM\",\"Vaastu Compliant\",\"Pick Up & Drop off\",\"Metro\",\"Hospital Services\"]', 'Sun Vihar', '<p>Sun Vihar is a project by Sun Buildcon Ahmedabad. It is set in 0.48 Acres. Sun Vihar is a Under Construction residential project. There are 2 buildings in this project. Sun Vihar is located in Nr Suryadeep Residency, Tankifaliya Road, Gitanagar, Vapi. Sun Vihar was launched in December 2021.</p>', '5/Sun Vihar , Sindhubhavan Road', 6, NULL, NULL, '200.00', 9900000, '3bhk', '4', 0, 'sun-vihar', '2023-04-07 12:30:21', '2023-06-29 09:59:17'),
(7, 7, '[\"Swimming Pool\",\"Children Play Area\",\"Elder Seeting Area\",\"Theater\",\"Vaastu Compliant\",\"Pick Up & Drop off\"]', 'Jayraj Farm', '8fjwxl, Indore Ahmedabad Highway, Daskroi, Ahmedabad District, Gujarat, 382433', 'Ahmedabad - Indoor Highway , Bhatt toll plaze', 58, NULL, NULL, '450.00', 13000000, '4bhk', '4', 0, 'jayraj-farm', '2023-06-16 03:11:04', '2023-06-27 03:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `property_galleries`
--

CREATE TABLE `property_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `property_id` bigint UNSIGNED NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_galleries`
--

INSERT INTO `property_galleries` (`id`, `property_id`, `file`, `file_type`, `is_featured`, `created_at`, `updated_at`) VALUES
(11, 3, 'pratiksha.jpeg', 'image/jpeg', 1, '2023-04-07 07:42:39', '2023-04-07 07:42:47'),
(14, 3, 'images.jpeg', 'image/jpeg', 0, '2023-04-07 11:45:39', '2023-04-07 11:45:39'),
(16, 1, 'download (1).jpeg', 'image/jpeg', 1, '2023-04-07 12:03:57', '2023-04-07 12:04:03'),
(17, 1, 'images (1).jpeg', 'image/jpeg', 0, '2023-04-07 12:04:31', '2023-04-07 12:04:31'),
(18, 2, 'download (2).jpeg', 'image/jpeg', 1, '2023-04-07 12:10:37', '2023-04-07 12:12:11'),
(19, 2, 'download (3).jpeg', 'image/jpeg', 0, '2023-04-07 12:10:58', '2023-04-07 12:12:10'),
(20, 4, 'images (2).jpeg', 'image/jpeg', 1, '2023-04-07 12:16:43', '2023-04-07 12:16:49'),
(21, 4, 'images (3).jpeg', 'image/jpeg', 0, '2023-04-07 12:17:20', '2023-04-07 12:17:20'),
(22, 5, 'download (4).jpeg', 'image/jpeg', 1, '2023-04-07 12:25:23', '2023-04-07 12:25:30'),
(23, 5, 'images (4).jpeg', 'image/jpeg', 0, '2023-04-07 12:26:10', '2023-04-07 12:26:10'),
(24, 6, 'images (4).jpeg', 'image/jpeg', 1, '2023-04-07 12:30:38', '2023-04-07 12:30:45'),
(25, 6, 'download (5).jpeg', 'image/jpeg', 0, '2023-04-07 12:31:02', '2023-04-07 12:31:02'),
(27, 7, 'images (9).jpeg', 'image/jpeg', 1, '2023-06-16 03:16:28', '2023-06-16 03:16:35'),
(28, 7, 'images (8).jpeg', 'image/jpeg', 0, '2023-06-16 03:18:19', '2023-06-16 03:18:19'),
(29, 7, 'images (7).jpeg', 'image/jpeg', 0, '2023-06-16 03:18:20', '2023-06-16 03:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role` enum('admin','customer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `first_name`, `last_name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '', NULL, 'admin@example.com', '2023-03-29 19:53:44', '$2y$10$scfm67qOVKybYo3wiFGCOuTyuG5MNS4khd.NUVKPblv5XIuUrpDVe', 'EHaWyw5JHQBIkldynhwmVf4Dfa8ZkP3RxZ6JqTQfHxHG38uL52u92LHHxId2', '2023-03-29 19:53:44', '2023-03-29 19:53:44'),
(2, 'customer', 'Yash', 'Patel', '9631478965', 'yash@yopmail.com', NULL, '$2y$10$FRHBHx3B8gjSq9.TM5rlLubVKSwqbnzwk1ITLbLBrIsFAvMEmM5Ta', NULL, '2023-03-30 08:32:49', '2023-03-30 08:32:49'),
(3, 'customer', 'Ronak', 'Patel', '9865645001', 'ronak@yopmail.com', NULL, '$2y$10$OxNjny8DpMh7lXILueSTGeujnmQ0P/tNQKSgnOSAxnonF8dxUhuWG', NULL, '2023-04-07 12:38:20', '2023-04-07 12:38:20'),
(4, 'customer', 'Rohan', 'Chauhan', '9897645678', 'rony@yopmail.com', '2023-04-07 13:22:21', '$2y$10$WGgeiP2FLmSd5GLHqxkqAu/W6gekfCmlWieXBQg1I.HTnrTxy6sqG', NULL, '2023-04-07 13:22:21', '2023-04-07 13:22:21'),
(5, 'customer', 'Pravin', 'Panchal', '9978654789', 'pravinbhaipatel3032002@gmail.com', '2023-04-07 13:22:51', '$2y$10$MzQ.0BNEZIjtY2/ED7aSgucPlp2aqz7BSd.jMEAglQRGuPDc5JfGW', NULL, '2023-04-07 13:22:51', '2023-04-07 13:22:51'),
(6, 'customer', 'Nidhi', 'Prajapati', '9876596589', 'nidhis@gmail.com', '2023-04-07 13:23:45', '$2y$10$bkbRJRuZoTSj19PkJGnS3ujlMxB1WhoddN/lOYwMmvxoE85DdVdy2', NULL, '2023-04-07 13:23:45', '2023-04-07 13:23:45'),
(9, 'customer', 'Kathan', 'Patel', '9879879879', 'kp12@gmail.com', NULL, '$2y$10$3ks7FNNagUiNPugqqek/V.vB9P8iUgqKNtKXdtnYMda1os52PZ2e.', NULL, '2023-06-29 10:04:02', '2023-06-29 10:04:02'),
(10, 'customer', 'Vivek', 'Patel', '9723526052', 'vrock32@gmail.com', NULL, '$2y$10$RqCytGSt9R/6jZrdfqJYQ.U3SxnypTjXrMQZk5ommixiDZzi.1cfe', NULL, '2023-07-01 01:19:15', '2023-07-01 01:19:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favouriteproperties`
--
ALTER TABLE `favouriteproperties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_properties`
--
ALTER TABLE `favourite_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_galleries`
--
ALTER TABLE `property_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favouriteproperties`
--
ALTER TABLE `favouriteproperties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite_properties`
--
ALTER TABLE `favourite_properties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `property_galleries`
--
ALTER TABLE `property_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
