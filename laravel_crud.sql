-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2025 at 10:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_11_213051_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'laptop', 'fsdfsdf', 100.00, 200, '2025-11-11 19:50:27', '2025-11-11 19:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('11pdp32jdsGBt5BTq76SYQhs2aWqpbtJyD4UCm3a', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0lqOWRQYXNkS3U5Um04S3BoaU84SkdNcU5iR1ZKTmFtY2taUlNhdCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896819),
('1QxY9OIRSYXF6dn3q7Fmb6vRqvuqzSDUUEtJIWRA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSldXQ2RHckJMWkswTGVGeUs4c2lXUkZacGRrdFZGZFprcTFWRmY0cCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896991),
('1SG6e43G2iKn979eFlmXfoySoj0iItVa32G4iHNB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlgzV2JuSmRyZTMxNWJ6SU04Q1ZBdVlKeU5ON2c0eXFDbmRNQVNLYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896947),
('3Lp0d8NfSEf1rqZvBi5RUUSAsl3htuEjgM78EOOK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXJWODkwYW03Vlp6UTJlQWxkcXRBdUtPOXRMRlBrRUg0bUJFNGs0ZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896840),
('6b9DorzeYAV2xo17QqHBrjOdqNFscWnBqmyDgqTS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEg1d1IwcVV2ZmJQS3F2NTM2eDIxbGJ2VjB3VGNpME4yNWU2VE5GbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896936),
('6cOHLabvJsuNjLDFw6iq68BgLXrpyH15zmJk9IzF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFZpNEZpVTBUbzVXM3RISlZneVBDWkNzN3RYb2lOdGtFbjR2NDBqYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896923),
('6KXMYsaZpryDXavrRwTxlBAtPIimorFXY9mCKwl5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlZsWlk4YVFUaGlNZTlVWFJuemRqRko5RHFHbnNQODZ5bzRZcTV0RiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896743),
('6NIPWD2uCXBXjq1UTmmXBqe1mFf73gkdwIM198jW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzVXWlVWYmxZOUF0eEFxejFnZ2Fwc0tuNnA1NDlSNHB2Ymd0ZFJ5cCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896772),
('7NAgnWqyhsLBi5C3BqmZtUeIvOlxQp2E9wuVtyLG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0pMdUZ4Y2ExaklORjZ5RUNORjF5TjNONWFXMU1aSVdIam5PWkE5YiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896969),
('83YnYeqYKXPQFtFGEIlneK4C3au2GEkET5nw8gDH', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2ZTdmpLakdCQ3dwc1VhOWE0bThCZ21WeUFyWGtzelZMRVdNOUVLbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896831),
('97axOOxLRYHPhQMeeaW1Hy3B2VY9EeHbtsUkfVIF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0UzQmhzVGlEV1hmQVJRZER6ZmNUanYyYTBubVRjeHpYaVA0dkozWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896944),
('AhutLaSBD2ZMlGbRONGMiWQjGrfmb8xTMXQYMIoH', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaGMxVWxDVGF4MFZLTUVYR0R1WkFlbjBIOG9uYXBLWnB3cjFsUUpvNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896988),
('B6ndb6Gw8XWilTdqH7Bze09BcWExc6EPMCmaFMpy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUhvb1ZHamE1NXV3bVhDdG1FSHR0ejYyZURwMnJNbUxUN2c1c1VTUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896791),
('CdkjsVl87ofh0dXi5kcKlz29z7UQ1ft4hGBEQx2o', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGJNYTgxbVlGejhvQXNiTlVJc0RqM3JmOTVSNTVTSHUzRGowYnV2MSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896786),
('EEl4MHemi7C9FnR7e1Kj4Qw2awvWfDzYxbZvLHVF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUpUb09MQXNtTnZiVXJLME5XTzM5eHZMeXJEUmhvcElQbWZ5akhwUSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896931),
('f1eQ53gVeR5B3ThA23XzGou477IVGJ5zvvaDzR5x', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWp4bHh0S2RuQmVwUXBSV1A5ell3TnBZb0JLa2xOVGxodTJPcU9rbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896877),
('gYwyhUXP9awG15wKBkXVSo1wELAWztIZsuNbWvfk', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnUwNFhocjBkczRMdnNwUnVjN1dJQk1KWkF4OWtWekhCdWY5Vm1TOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896663),
('hpkUJRmb45EJ8heKDTW2c4eBvlduRccWGm6kwnfh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejNESXNMamlvU3lYMTJVdHFKMk50UmJ3VkZqdHpTRDB0MWZyc2taVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896880),
('IcT0kbx8uB9iw1VfrVJNTaYl9TQ1dKMckL0NrGVN', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblB0TkE0a0xWeFlINzRmTkMxbzJSazlQdmt1Rno5SzJLaDRrbmFNZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896903),
('iFnOt3GYAmivOj5IIrXTPC03MHA7GAwq9k1cp51M', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXZIRUdwcWtxUjhVazZ5WFhBcmhsVVY2bFJxNlNoMnJZVDZTcnE4OSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896859),
('KhvFobB5JSk80tO6A4Pmt7MXR3rnz2shbHrcklKa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3dUS0NGdW5DQW9VRlNtU3pCbE5ZUHpZb0NQMzBlR3ZGU1lFVTcxYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896985),
('L2unaeJbOzkx8TicMSM8cw42ZL1at5OtKmVoyuuw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienVWRVR6VFlxY2Z2S0k3VFFQNXVPUXFoOEdNZmVDcXFRTGJQaFRBMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896941),
('lesEOO2j33GyRUjV31Uq7uOviogNuBJbKGxuEtzD', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RuNXUxNnBKdURmVDB2b3EzRkdnVEZsOWdSN3o1eGMyZVc5UmpPcCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896781),
('lWRvhOpuCCpJ6FZMR1Lt9PsDMOLCgBDaTohCTq2v', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXZnT3JReVFzaDY0anVoejE0ZE9wTU5NYk9qd28xOHV5ajZHV0lPdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896804),
('m8r2rDuYd4pPO3Mm3y1m5ltU1MCxzIRMd4n1hdaY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUtzTURDOHVSWmI2MmJjbVZXUTJWMWFhOUt2N3h2eE5jSmo2TFNBWSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896766),
('mF2iL9bGvoK4MbNKnwFeiyAagNqOpS3E5bb4UN5x', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGxmanhuM29LZXhsWkhjVGRwWElMWW1OTEVsWDR3clBGZkFrQU1FZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896793),
('mVNd5QFfEv8lFuj73kOlgdRb7UE0lydpVZMrbg6F', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFJjTEpDdDllV2kwdWV3Zkd6OGM0UHNUQ0FvZ0hwMXJsa0hSNk9UTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7czo1OiJyb3V0ZSI7czoxNDoicHJvZHVjdHMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1762897849),
('Pn9OIE2exJQOerTxTtYmGz6WjVxnTIGvGqasYeht', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmp5M3JNYlB3Y0RTWURITVVYWjlqUk1wZkt4eFpqZXdYSTZHczhWZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896912),
('r7XlLpPf3cFC1eQNt13dB2dJ2J0X6xF6DrApZfHQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2F1eGRmUm9HcG9KTlBlQkltY01TMHdtbmxRNVdlUElodk91RW9SZCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896981),
('TIWOAOPEk56Og940pIYf4Q45coLHHly47lejDiPm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2ZVeHRqNGpiMHo1MWhpNkpQQkVCc3N4Q2MxR0NVd1oyelE4bFJpRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896763),
('uNZ8QGwJkyTinYfmUgx48FXgm1FyAYEj0BBRgG8d', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieng3ZHp2WTJ5REdKb0s2MEs4SHQ0REc1N2hldGJaeU94eExuZEZlWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896808),
('UQWf42e2F2ylGOXV2YnxSR2KBUVAKvunqwfOuCZY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnhidERXdGIxWnU3SUt2SWIwNk43N0E0NzNIVTI2bUdCNnhrZEh2eiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896907),
('Uw1ZeuB4SgaQefvLpYUeEiNZ7DWaSSLLjxlKpQcK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMlVaalI0NVpWQmJhblNMajljNDVodWI2YnJ6eU1hTUlhWmZoVWpIZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896959),
('v0whVH73ngcClO1lpaXcMXcnosHN0stxOm8gqsnf', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1BFV0FLQWpMQlBqY3VXZmlwbWlsNXJYblRhRVY5V3BTMzZzUGNmSSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896864),
('XBuRuoDLUhMZiRATe7WcewTQk36IxAASD2BAk1sY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkZMcUx0MTgxZ2w1YmdQWDFocVVadmFKbFpiZ1VGM296RWhLVXNtSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896823),
('xiMm21IuZk8Ypz6a2SUbt70lStKlRcmv9w2Aa1JB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmFEZTFpRmtEckhjQlc0ZURsdERPZ0lqMkRYRmtHNWZhcThMR20xayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896836),
('YjM0B0wFHiFA1I7LrCIgCoyZ9gxdzDNoRRaAOloW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVRVc0d4S0xNSFZaeVBxaVlmYTk2NkV5ODRPSXhYWVIzdWM4dmphVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896965),
('yQIrFbkTB2DneMR7DQmd3gfu5oHZvFy6MPUFwLH2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmtDRnl0Y3hGY21aWGViVHVVQnFyVGRUbkdyNWxZWktlQUxubWNMbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896749),
('YsgWq0kHUh0fOwP3VWpFKDLh0Rl33iKu3gGtO5aj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNm5DbEpRUlUxMDlrdTBYYTFlWVAyTThRNHFMYzNoZW1YTGZtUE5wViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896784),
('YU6Wps688ciy9iL8xNXIz1F4IFZJtvrLkwMxeWVm', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGkwT2l4MFk5ZWxvS2twVWkxRXpySXFueE1lRzNsR0Z4QmE4QkNJbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1762896827);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
