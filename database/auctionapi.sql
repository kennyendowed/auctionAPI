-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2021 at 02:17 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auctionapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `name`, `key`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'auctionapi', '9EH3hiabUHuD5wbQGrHuoJq0pzNgPvEl9nh8hDuQBGFVsuz1YLuGufBwwhUWL5L2', 1, '2021-06-25 09:40:09', '2021-06-25 09:40:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `api_key_access_events`
--

CREATE TABLE `api_key_access_events` (
  `id` int UNSIGNED NOT NULL,
  `api_key_id` int UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_key_access_events`
--

INSERT INTO `api_key_access_events` (`id`, `api_key_id`, `ip_address`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signin', '2021-06-25 09:50:23', '2021-06-25 09:50:23'),
(2, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signin', '2021-06-25 09:51:17', '2021-06-25 09:51:17'),
(3, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signin', '2021-06-25 09:54:17', '2021-06-25 09:54:17'),
(4, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signin', '2021-06-25 09:57:34', '2021-06-25 09:57:34'),
(5, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/signin', '2021-06-25 09:58:50', '2021-06-25 09:58:50'),
(6, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:35:23', '2021-06-25 10:35:23'),
(7, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:35:34', '2021-06-25 10:35:34'),
(8, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:50:47', '2021-06-25 10:50:47'),
(9, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:51:28', '2021-06-25 10:51:28'),
(10, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:52:11', '2021-06-25 10:52:11'),
(11, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:52:33', '2021-06-25 10:52:33'),
(12, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:52:52', '2021-06-25 10:52:52'),
(13, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:53:25', '2021-06-25 10:53:25'),
(14, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:54:35', '2021-06-25 10:54:35'),
(15, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:54:55', '2021-06-25 10:54:55'),
(16, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:55:10', '2021-06-25 10:55:10'),
(17, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:55:33', '2021-06-25 10:55:33'),
(18, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:56:33', '2021-06-25 10:56:33'),
(19, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:57:52', '2021-06-25 10:57:52'),
(20, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:58:19', '2021-06-25 10:58:19'),
(21, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 10:59:45', '2021-06-25 10:59:45'),
(22, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:00:34', '2021-06-25 11:00:34'),
(23, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:09:06', '2021-06-25 11:09:06'),
(24, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:12:14', '2021-06-25 11:12:14'),
(25, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:13:19', '2021-06-25 11:13:19'),
(26, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:13:49', '2021-06-25 11:13:49'),
(27, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:15:21', '2021-06-25 11:15:21'),
(28, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:16:28', '2021-06-25 11:16:28'),
(29, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:17:03', '2021-06-25 11:17:03'),
(30, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:19:25', '2021-06-25 11:19:25'),
(31, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:22:10', '2021-06-25 11:22:10'),
(32, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:22:47', '2021-06-25 11:22:47'),
(33, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:23:09', '2021-06-25 11:23:09'),
(34, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:23:39', '2021-06-25 11:23:39'),
(35, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:29:22', '2021-06-25 11:29:22'),
(36, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:29:29', '2021-06-25 11:29:29'),
(37, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:32:04', '2021-06-25 11:32:04'),
(38, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:32:13', '2021-06-25 11:32:13'),
(39, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:32:17', '2021-06-25 11:32:17'),
(40, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:33:19', '2021-06-25 11:33:19'),
(41, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:33:31', '2021-06-25 11:33:31'),
(42, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:33:34', '2021-06-25 11:33:34'),
(43, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:34:05', '2021-06-25 11:34:05'),
(44, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:36:03', '2021-06-25 11:36:03'),
(45, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:36:16', '2021-06-25 11:36:16'),
(46, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:36:29', '2021-06-25 11:36:29'),
(47, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:36:36', '2021-06-25 11:36:36'),
(48, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:37:34', '2021-06-25 11:37:34'),
(49, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:37:45', '2021-06-25 11:37:45'),
(50, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:37:49', '2021-06-25 11:37:49'),
(51, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:38:07', '2021-06-25 11:38:07'),
(52, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:40:34', '2021-06-25 11:40:34'),
(53, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:41:13', '2021-06-25 11:41:13'),
(54, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:41:24', '2021-06-25 11:41:24'),
(55, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/create_product', '2021-06-25 11:41:40', '2021-06-25 11:41:40'),
(56, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/1', '2021-06-25 11:46:16', '2021-06-25 11:46:16'),
(57, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/1', '2021-06-25 11:46:55', '2021-06-25 11:46:55'),
(58, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/fetch_product', '2021-06-25 11:47:05', '2021-06-25 11:47:05'),
(59, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 11:47:23', '2021-06-25 11:47:23'),
(60, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/product/841624621275', '2021-06-25 11:49:46', '2021-06-25 11:49:46'),
(61, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/product/841624621275', '2021-06-25 11:50:14', '2021-06-25 11:50:14'),
(62, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/product/841624621275', '2021-06-25 11:50:36', '2021-06-25 11:50:36'),
(63, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 11:56:40', '2021-06-25 11:56:40'),
(64, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 11:56:46', '2021-06-25 11:56:46'),
(65, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 11:57:44', '2021-06-25 11:57:44'),
(66, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 11:59:40', '2021-06-25 11:59:40'),
(67, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 12:09:21', '2021-06-25 12:09:21'),
(68, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 12:17:13', '2021-06-25 12:17:13'),
(69, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 12:18:05', '2021-06-25 12:18:05'),
(70, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 12:21:05', '2021-06-25 12:21:05'),
(71, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 12:21:24', '2021-06-25 12:21:24'),
(72, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 12:44:22', '2021-06-25 12:44:22'),
(73, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bid/841624621275', '2021-06-25 12:45:01', '2021-06-25 12:45:01'),
(74, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bids-won', '2021-06-25 12:53:59', '2021-06-25 12:53:59'),
(75, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bids-won', '2021-06-25 12:54:06', '2021-06-25 12:54:06'),
(76, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bids-won', '2021-06-25 12:56:13', '2021-06-25 12:56:13'),
(77, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bids-won', '2021-06-25 12:56:49', '2021-06-25 12:56:49'),
(78, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bidswon', '2021-06-25 13:08:02', '2021-06-25 13:08:02'),
(79, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bidswon', '2021-06-25 13:08:19', '2021-06-25 13:08:19'),
(80, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bidswon', '2021-06-25 13:08:44', '2021-06-25 13:08:44'),
(81, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bids-won', '2021-06-25 13:09:22', '2021-06-25 13:09:22'),
(82, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bids-won', '2021-06-25 13:09:38', '2021-06-25 13:09:38'),
(83, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bids-won', '2021-06-25 13:10:19', '2021-06-25 13:10:19'),
(84, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bidswon', '2021-06-25 13:10:31', '2021-06-25 13:10:31'),
(85, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bidswon', '2021-06-25 13:10:42', '2021-06-25 13:10:42'),
(86, 1, '127.0.0.1', 'http://127.0.0.1:8000/api/bidswon', '2021-06-25 13:11:04', '2021-06-25 13:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `api_key_admin_events`
--

CREATE TABLE `api_key_admin_events` (
  `id` int UNSIGNED NOT NULL,
  `api_key_id` int UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_key_admin_events`
--

INSERT INTO `api_key_admin_events` (`id`, `api_key_id`, `ip_address`, `event`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'created', '2021-06-25 09:40:09', '2021-06-25 09:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL DEFAULT '0',
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_amount` bigint NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `user_id`, `product_id`, `bid_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '841624621275', 600, '1', '2021-06-25 12:44:22', '2021-06-25 12:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2016_12_28_111110_create_api_keys_table', 1),
(12, '2016_12_28_111111_create_api_key_access_events_table', 1),
(13, '2016_12_28_111112_create_api_key_admin_events_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2021_06_25_102901_create_bids_table', 1),
(16, '2021_06_25_102915_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avater` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_id`, `avater`, `information`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'salad rice', '841624621275', '/assets/images/product/1624621275.png', 'helo bag of rice', 600, '0', '2021-06-25 11:41:15', '2021-06-25 12:45:01'),
(2, 'beans', '421624621302', '/assets/images/product/1624621302.png', 'helo bag of rice', 500, '0', '2021-06-25 11:41:42', '2021-06-25 11:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avater` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verify` bigint NOT NULL DEFAULT '0',
  `is_permission` tinyint NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `status`, `avater`, `address`, `email_code`, `email_time`, `email_verify`, `is_permission`, `ip_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kenneth akpan', 'kennygendowed@gmail.com', '2021-06-25 09:56:46', '$2y$10$TeMEfJmjacBR/iWrSjSNcOgX2UK2gBFTWrjxTcRzKGHBQN7bJqb7u', '08120960875', '0', NULL, NULL, '3BN2JR', '2021-06-25 10:53:59', 1, 1, '127.0.0.1', NULL, '2021-06-25 09:48:59', '2021-06-25 13:13:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_keys_name_index` (`name`),
  ADD KEY `api_keys_key_index` (`key`);

--
-- Indexes for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_key_access_events_ip_address_index` (`ip_address`),
  ADD KEY `api_key_access_events_api_key_id_foreign` (`api_key_id`);

--
-- Indexes for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_key_admin_events_ip_address_index` (`ip_address`),
  ADD KEY `api_key_admin_events_event_index` (`event`),
  ADD KEY `api_key_admin_events_api_key_id_foreign` (`api_key_id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

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
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_key_access_events`
--
ALTER TABLE `api_key_access_events`
  ADD CONSTRAINT `api_key_access_events_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);

--
-- Constraints for table `api_key_admin_events`
--
ALTER TABLE `api_key_admin_events`
  ADD CONSTRAINT `api_key_admin_events_api_key_id_foreign` FOREIGN KEY (`api_key_id`) REFERENCES `api_keys` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
