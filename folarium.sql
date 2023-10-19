-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2023 at 07:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `folarium`
--

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
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `city_id` int(11) NOT NULL,
  `prov_id` int(11) NOT NULL,
  `city_name` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`city_id`, `prov_id`, `city_name`) VALUES
(1, 1, 'Cilegon'),
(2, 1, 'Tangerang'),
(3, 1, 'Tangerang Selatan'),
(4, 2, 'Bandung'),
(5, 2, 'Bekasi'),
(6, 2, 'Bogor'),
(7, 3, 'Semarang'),
(8, 3, 'Magelang'),
(9, 3, 'Batang'),
(10, 5, 'Madiun'),
(11, 5, 'Surabaya'),
(12, 4, 'Sleman'),
(13, 4, 'Kota Yogyakarta'),
(14, 4, 'Bantul'),
(15, 6, 'Jakarta Utara'),
(16, 6, 'Jakarta Selatan'),
(17, 6, 'Jakarta Pusat');

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `joply_id` int(11) NOT NULL,
  `jobs_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `joply_name` varchar(220) NOT NULL,
  `joply_register` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lamaran`
--

INSERT INTO `lamaran` (`joply_id`, `jobs_id`, `city_id`, `joply_name`, `joply_register`) VALUES
(1, 2, 9, 'Joni Haryadi', '2023-10-19 03:01:46'),
(2, 1, 11, 'Anisa Handayani', '2023-10-19 03:01:46'),
(3, 4, 12, 'Tirta Sista', '2023-10-19 03:01:46'),
(4, 5, 12, 'Hendra Arwandi', '2023-10-19 03:01:46'),
(5, 5, 3, 'Joko Cahyono', '2023-10-19 03:01:46'),
(6, 2, 10, 'Nisa Ninatun', '2023-10-19 03:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `loker`
--

CREATE TABLE `loker` (
  `jobs_id` int(11) NOT NULL,
  `profs_id` int(11) DEFAULT NULL,
  `co_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `jobs_title` varchar(220) DEFAULT NULL,
  `jobs_register` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jobs_sts` tinyint(1) DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loker`
--

INSERT INTO `loker` (`jobs_id`, `profs_id`, `co_id`, `city_id`, `jobs_title`, `jobs_register`, `jobs_sts`, `updated_at`, `created_at`) VALUES
(1, 2, 1, 17, 'Admin Keuangan', '2023-10-19 02:59:34', 1, '2023-10-19 12:03:34', '2023-10-19 12:03:34'),
(2, 2, 7, 3, 'FA Manager', '2023-10-19 02:59:34', 1, '2023-10-19 12:03:34', '2023-10-19 12:03:34'),
(3, 4, 1, 17, 'System Analyst', '2023-10-19 02:59:34', 1, '2023-10-19 12:03:34', '2023-10-19 12:03:34'),
(4, 1, 3, 13, 'Sales Promotion', '2023-10-19 02:59:34', 1, '2023-10-19 12:03:34', '2023-10-19 12:03:34'),
(5, 1, 4, 11, 'Sales Supervisor', '2023-10-19 02:59:34', 1, '2023-10-19 12:03:34', '2023-10-19 12:03:34'),
(6, NULL, NULL, NULL, NULL, '2023-10-19 05:04:48', NULL, '2023-10-19 05:04:48', '2023-10-19 05:04:48');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `negara`
--

CREATE TABLE `negara` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negara`
--

INSERT INTO `negara` (`country_id`, `country_name`) VALUES
(1, 'Indonesia'),
(2, 'Singapura'),
(3, 'Hongkong'),
(4, 'India');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `co_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `co_name` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`co_id`, `city_id`, `co_name`) VALUES
(1, 3, 'PT. ABC Indonesia'),
(2, 11, 'PT. KLM Indonesia'),
(3, 14, 'PT. XYZ Indonesia'),
(4, 1, 'PT. HIJ Indonesia'),
(5, 6, 'PT. WXY Indonesia'),
(6, 13, 'PT. QRS Indonesia'),
(7, 16, 'PT. DEF Indonesia'),
(8, 16, 'PT. GHI Indonesia'),
(9, 17, 'PT. CDE Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `profesi`
--

CREATE TABLE `profesi` (
  `profs_id` int(11) NOT NULL,
  `profs_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profesi`
--

INSERT INTO `profesi` (`profs_id`, `profs_name`) VALUES
(1, 'Sales & Marketing'),
(2, 'Finance & Accounting'),
(3, 'Human Resource'),
(4, 'Software Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `prov_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `prov_name` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`prov_id`, `country_id`, `prov_name`) VALUES
(1, 1, 'Banten'),
(2, 1, 'Jawa Barat'),
(3, 1, 'Jawa Tengah'),
(4, 1, 'Yogyakarta'),
(5, 1, 'Jawa Timur'),
(6, 1, 'DKI Jakarta');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$bwACjyGEeuWtKPboo8Jgou7S8bFKZCwfL0OA.jDU2ycwATxRBRwd2', NULL, '2023-10-18 21:14:12', '2023-10-18 21:14:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `prov_id` (`prov_id`);

--
-- Indexes for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD PRIMARY KEY (`joply_id`),
  ADD KEY `jobs_id` (`jobs_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `loker`
--
ALTER TABLE `loker`
  ADD PRIMARY KEY (`jobs_id`),
  ADD KEY `profs_id` (`profs_id`),
  ADD KEY `co_id` (`co_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`co_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `profesi`
--
ALTER TABLE `profesi`
  ADD PRIMARY KEY (`profs_id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`prov_id`),
  ADD KEY `country_id` (`country_id`);

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
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `lamaran`
--
ALTER TABLE `lamaran`
  MODIFY `joply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loker`
--
ALTER TABLE `loker`
  MODIFY `jobs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `negara`
--
ALTER TABLE `negara`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profesi`
--
ALTER TABLE `profesi`
  MODIFY `profs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `kota_ibfk_1` FOREIGN KEY (`prov_id`) REFERENCES `provinsi` (`prov_id`);

--
-- Constraints for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD CONSTRAINT `lamaran_ibfk_1` FOREIGN KEY (`jobs_id`) REFERENCES `loker` (`jobs_id`),
  ADD CONSTRAINT `lamaran_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `kota` (`city_id`);

--
-- Constraints for table `loker`
--
ALTER TABLE `loker`
  ADD CONSTRAINT `loker_ibfk_1` FOREIGN KEY (`profs_id`) REFERENCES `profesi` (`profs_id`),
  ADD CONSTRAINT `loker_ibfk_2` FOREIGN KEY (`co_id`) REFERENCES `perusahaan` (`co_id`),
  ADD CONSTRAINT `loker_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `kota` (`city_id`);

--
-- Constraints for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD CONSTRAINT `perusahaan_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `kota` (`city_id`);

--
-- Constraints for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD CONSTRAINT `provinsi_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `negara` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
