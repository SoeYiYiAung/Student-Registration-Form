-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 22, 2023 at 10:27 AM
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
-- Database: `hmm_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `academic_year`, `created_at`, `updated_at`) VALUES
(1, '2022-2023', NULL, NULL);

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
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2023_04_21_040659_create_programs_table', 1),
(27, '2023_04_21_040735_create_academic_years_table', 1),
(28, '2023_04_21_124222_create_student_registers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Program-1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_registers`
--

CREATE TABLE `student_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_id` bigint(20) UNSIGNED NOT NULL,
  `academic_year` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nrc` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `devision` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `martial_status` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `exam_pass_date` date NOT NULL,
  `degree` varchar(255) NOT NULL,
  `uni_name` varchar(255) NOT NULL,
  `uni_start_date` date NOT NULL,
  `uni_end_date` date NOT NULL,
  `experience` varchar(255) NOT NULL,
  `experience_year` varchar(255) NOT NULL,
  `current_position` varchar(255) NOT NULL,
  `current_company` varchar(255) NOT NULL,
  `company_startDate` date NOT NULL,
  `previous_position` varchar(255) NOT NULL,
  `previous_company` varchar(255) NOT NULL,
  `previous_startDate` date NOT NULL,
  `previous_endDate` date NOT NULL,
  `nrc_image` varchar(255) NOT NULL,
  `graduation_certificate` varchar(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_registers`
--

INSERT INTO `student_registers` (`id`, `program_id`, `academic_year`, `name`, `nrc`, `date_of_birth`, `email`, `phone`, `fb_link`, `address`, `city`, `devision`, `country`, `race`, `martial_status`, `gender`, `education`, `school_name`, `exam_pass_date`, `degree`, `uni_name`, `uni_start_date`, `uni_end_date`, `experience`, `experience_year`, `current_position`, `current_company`, `company_startDate`, `previous_position`, `previous_company`, `previous_startDate`, `previous_endDate`, `nrc_image`, `graduation_certificate`, `document`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Soe YY', 'syy145', '2023-04-06', 'yh456@gmail.com', '09773840310', 'hi', 'Yangon', 'hi', 'ji', 'ki', 'on', 'on', 'on', 'on', 'ff', '2023-04-28', 'f', 'f', '2023-04-28', '2023-05-04', 'on', 'on', 'sd', 'e', '2023-04-26', 'dr', 'rf', '2023-04-27', '2023-04-25', 'ER_diagram.png', 'ER_diagram.png', 'ER_diagram.png', 'hi', NULL, NULL),
(2, 1, 1, 'Soe YY', 'syy145', '2023-04-15', 'soesoe2022@gmail.com', '09456789321', 'hi', 'Mandalay', 'hi', 'ji', 'ju', 'on', 'on', 'on', 'on', 'ff', '2023-04-21', 'f', 'f', '2023-04-20', '2023-05-05', 'on', 'on', 'sd', 'e', '2023-04-28', 'dr', 'rf', '2023-04-28', '2023-05-03', 'ER_diagram.png', 'ER_diagram.png', 'ER_diagram.png', 'fi', NULL, NULL),
(4, 1, 1, 'Soe YY', 'syy145', '2023-04-20', 'admin@gmail.com', '09456789321', 'hi', 'Mandalay', 'hi', 'ji', 'ju', 'Myanmar', 'married', 'female', 'IGCSE', 'ff', '2023-05-06', 'f', 'f', '2023-05-05', '2023-05-04', 'hasExp', 'between3&5', 'sd', 'e', '2023-04-27', 'dr', 'rf', '2023-05-05', '2023-05-04', 'ER_diagram.png', 'ER_diagram.png', 'ER_diagram.png', 'fi', NULL, NULL),
(5, 1, 1, 'Soe YY', 'syy145', '2023-04-23', 'yh456@gmail.com', '09454231525', 'hi', 'Yangon', 'hi', 'ji', 'ju', 'Myanmar', 'single', 'female', 'Matriculation', 'ff', '2023-05-05', 'f', 'f', '2023-05-06', '2023-05-03', 'hasExp', 'above5', 'sd', 'e', '2023-04-21', 'dr', 'rf', '2023-04-27', '2023-04-27', 'ER_diagram.png', 'ER_diagram.png', 'ER_diagram.png', 'hi', NULL, NULL);

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
(1, 'Soe', 'syya133@gmail.com', NULL, '$2y$10$ka8aHmU150Ck7.SCnBVS8u9eegHJXdS5vzyEtRq59FjB4EZndrefa', NULL, '2023-04-22 00:41:24', '2023-04-22 00:41:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registers`
--
ALTER TABLE `student_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_registers_program_id_foreign` (`program_id`),
  ADD KEY `student_registers_academic_year_foreign` (`academic_year`);

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
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_registers`
--
ALTER TABLE `student_registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_registers`
--
ALTER TABLE `student_registers`
  ADD CONSTRAINT `student_registers_academic_year_foreign` FOREIGN KEY (`academic_year`) REFERENCES `academic_years` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_registers_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
