-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2021 at 06:59 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_enregistered` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`student_id`, `first_name`, `last_name`, `gender`, `email`, `phone`, `date_enregistered`, `user_id`, `class_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Amina', 'Trigui', 'Female', 'aminatrigui@gmail.com', '+216 27 254 845', '2021-05-10', 5, 1, NULL, '2021-05-10 19:21:46', '2021-05-10 19:21:46'),
(4, 'Youssef', 'Dhouib', 'Male', 'youssefdhouib@gmail.com', '+216 22 415 785', '2021-05-16', 5, 3, NULL, '2021-05-16 17:25:52', '2021-05-16 17:25:52'),
(5, 'Ines', 'Taktak', 'Male', 'inestaktak@gmail.com', '+216 90 145 756', '2021-05-16', 7, 1, NULL, '2021-05-16 17:27:09', '2021-05-16 17:27:09'),
(6, 'Zied', 'Ammar', 'Male', 'ziedammar@gmail.com', '+216 50 478 126', '2021-05-16', 9, 8, NULL, '2021-05-16 18:42:17', '2021-05-16 18:42:17'),
(7, 'Malek', 'Derbel', 'Female', 'malekderbel@gmail.com', '+216 25 458 126', '2021-05-16', 10, 2, NULL, '2021-05-16 18:43:08', '2021-05-16 18:43:08'),
(8, 'Rayen', 'Chaari', 'Male', 'rayenchaari@gmail.com', '+216 55 951 231', '2021-05-16', 11, 4, NULL, '2021-05-16 18:44:13', '2021-05-16 18:44:13'),
(9, 'Rania', 'Badri', 'Female', 'raniabadri@gmail.com', '+216 53 147 758', '2021-05-16', 12, 5, NULL, '2021-05-16 18:50:08', '2021-05-16 18:50:08'),
(10, 'Yessin', 'Bouassida', 'Male', 'yessinbouassida@gmail.com', '+216 22 145 856', '2021-05-16', 13, 6, NULL, '2021-05-16 18:59:19', '2021-05-16 18:59:19'),
(11, 'Yesser', 'Jerbi', 'Male', 'yesserjerbi@gmail.com', '+216 50 153 298', '2021-05-16', 15, 7, NULL, '2021-05-16 19:00:23', '2021-05-16 19:00:23'),
(12, 'yesmin', 'Kallel', 'Female', 'yesminkallel@gmail.com', '+216 55 471 896', '2021-05-17', 20, 5, '2021-05-17 09:18:57', '2021-05-17 09:16:36', '2021-05-17 09:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `class_code`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1nd Degree', '1', NULL, '2021-05-10 15:16:20', '2021-05-10 15:16:20'),
(2, '2nd Degree', '2', NULL, '2021-05-10 15:17:11', '2021-05-10 15:17:11'),
(3, '3rd Degree', '3', NULL, '2021-05-10 15:17:22', '2021-05-10 15:17:22'),
(8, '1rst Engineering', '4', NULL, '2021-05-16 16:43:08', '2021-05-16 16:43:08'),
(9, '2nd Engineering', '5', NULL, '2021-05-16 16:43:29', '2021-05-16 16:43:29'),
(10, '3rd Engineering', '6', NULL, '2021-05-16 16:43:46', '2021-05-16 16:43:46'),
(11, '1rst Master', '7', NULL, '2021-05-16 16:44:01', '2021-05-16 16:44:01'),
(12, '2nd Master', '8', NULL, '2021-05-16 16:44:14', '2021-05-16 16:44:14'),
(13, '3rd Master', '9', '2021-05-17 09:08:04', '2021-05-17 09:07:42', '2021-05-17 09:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_code`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '1', 'This course will help you get started with the language in no time. We will cover installing a web server, PHP, and the MySQL database server.', 0, NULL, '2021-05-10 15:18:30', '2021-05-10 15:18:30'),
(2, 'Java', '2', 'In this Introduction to Java Programming training course, you gain extensive hands-on experience writing, compiling, and executing Java programs.', 0, NULL, '2021-05-10 15:20:46', '2021-05-10 15:20:46'),
(4, 'Mobile Developement', '3', 'This course introduces students to programming technologies, design and development related to mobile applications.', 1, NULL, '2021-05-16 16:45:18', '2021-05-16 16:45:18'),
(5, 'Python', '4', 'Python is a general-purpose, versatile, and powerful programming language. It’s a great first language because it’s concise and easy to read. Whatever you want to do, Python can do it. From web development to machine learning to data science, Python is the language for you.', 1, NULL, '2021-05-16 17:04:26', '2021-05-16 17:04:26'),
(6, 'Statistics', '5', 'Statistics fundamentals introduces the foundational concepts needed to run a statistical test and interpret the results. We will overview the two branches of statistics--descriptive statistics and inferential statistics—and run hypothesis tests on real and simulated data sets using Excel’s Data Analysis ToolPak.', 1, NULL, '2021-05-16 17:05:59', '2021-05-16 17:05:59'),
(7, 'XML', '6', 'In this course, your professional instructor introduces XML and explains why it’s such a powerful language for sharing and transmitting data. You will discover the basics of an XML document, and how to define XML documents and learn their syntax.', 1, NULL, '2021-05-16 17:12:02', '2021-05-16 17:12:02'),
(8, 'Business Intelligence', '7', 'The course starts with some basic insights into business intelligence and how it differs from data science, before covering the key roles and processes involved.', 1, NULL, '2021-05-16 17:17:45', '2021-05-16 17:17:45'),
(9, 'Cloud Computing', '8', 'This course breaks down what the cloud is and explains terminology such as scalability, latency, and high-availability. You\'ll learn about the many advantages including ease of remote collaboration, how there are no hardware limitations, and reliable disaster recovery.', 1, NULL, '2021-05-16 17:21:56', '2021-05-16 17:21:56'),
(10, 'Computer Law', '9', 'Computer law refers to all the legal rules applicable to activities using a computer medium (software, software package, application, hardware, information system or any other computer tool).', 1, NULL, '2021-05-16 18:36:36', '2021-05-16 18:36:36'),
(11, 'Data Mining', '10', 'A set of statistical approaches to extract information from large data sets\r\nfrom large data sets for decision support purposes.', 1, NULL, '2021-05-16 18:38:57', '2021-05-16 18:38:57'),
(12, 'Big Data', '12', 'this is the course of bigdata', 0, '2021-05-17 09:10:07', '2021-05-17 09:08:53', '2021-05-17 09:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `level_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`level_id`, `level`, `course_id`, `level_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2nd Degree Specialising in Big Data and Data Analysis', 1, 'Develop the skills to evaluate the achievements for computerized management in order to propose relevant improvements, especially in the decision-making context', NULL, '2021-05-10 15:23:28', '2021-05-10 15:23:28'),
(2, '2nd Degree Specialising in Multimedia', 1, 'To develop, in the student, the spirit of creation, initiative and control of new information technologies applied in the socio-economic environment and in the field of scientific research on a national and international scale', NULL, '2021-05-10 15:24:55', '2021-05-10 15:24:55'),
(4, '1rst Engineering in Digital Technologies for HealthCare', 7, 'Train specialists who master the problems of digital systems for health and well-being through sport. These specialists will be versatile with knowledge of health, nutrition and advanced computer skills, enabling them to develop innovative applications for health and they will be able to propose and implement appropriate and innovative solutions to understand performance measurement systems and motor analysis.', NULL, '2021-05-16 17:19:37', '2021-05-16 17:19:37'),
(5, '1rst MASTER OF SCIENCE ON CYBER PHYSICAL SYSTEMS', 8, 'Train specialists who master the problems of cyber-physical systems resulting from the fusion of the physical and digital dimensions of our environments, such as industry 4.0, smart cities or intelligent transport systems, and who are capable of proposing and implementing adequate and innovative solutions to understand these systems.', NULL, '2021-05-16 17:24:13', '2021-05-16 17:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 2),
(12, '2019_08_19_000000_create_failed_jobs_table', 2),
(13, '2021_05_08_122810_create_admissions_table', 2),
(14, '2021_05_08_123043_create_roles_table', 2),
(15, '2021_05_08_123135_create_teachers_table', 2),
(16, '2021_05_08_140740_create_classes_table', 2),
(17, '2021_05_08_140822_create_levels_table', 2),
(18, '2021_05_08_140852_create_courses_table', 2),
(19, '2021_05_08_161200_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, '2021-05-12 16:40:09', '2021-05-12 16:40:09'),
(2, 'Student', NULL, '2021-05-12 16:40:51', '2021-05-12 16:40:51'),
(3, 'Teacher', NULL, '2021-05-12 16:41:42', '2021-05-12 16:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_enregistered` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `first_name`, `last_name`, `gender`, `email`, `phone`, `date_enregistered`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Wajdi', 'Bouaziz', 'Male', 'wajdi.isims@gmail.com', '+216 24 541 758', '2021-05-10', 1, NULL, '2021-05-10 15:31:45', '2021-05-10 15:31:45'),
(2, 'Hanene', 'Jmal', 'Female', 'hanen.jmal@isims.usf.tn', '+216 24 541 758', '2021-05-10', 2, NULL, '2021-05-10 16:00:21', '2021-05-10 16:00:21'),
(5, 'sameh', 'Jmal', 'Female', 'samehjmal@gmail.com', '+216 23 849 741', '2021-05-16', 20, NULL, '2021-05-16 19:01:24', '2021-05-16 19:01:24'),
(6, 'Faiza', 'Ghozzi', 'Female', 'faizaghozzi@gmail.com', '+216 90 741 362', '2021-05-16', 22, NULL, '2021-05-16 19:03:03', '2021-05-16 19:03:03'),
(7, 'Mohamed', 'Miledi', 'Male', 'mohamedmiledi@gmail.com', '+216 92 123 813', '2021-05-16', 24, NULL, '2021-05-16 19:04:11', '2021-05-16 19:04:11'),
(8, 'Inès', 'Kammoun', 'Female', 'ineskammoun@gmail.com', '+216 95 731 426', '2021-05-16', 25, NULL, '2021-05-16 19:05:08', '2021-05-16 19:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '4',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Sirine Nouveau Compte', 1, 'sirinenouveaucompte@gmail.com', NULL, '$2y$10$8PMZnnJ43Dekunq7wVdXl.X2.6yBNqnqegstMz3LECc/mD8fHgF6q', '2021-05-12 19:26:17', '2021-05-12 19:26:17', NULL),
(14, 'Mariem Sfaxi', 2, 'mariemnouveaucompte1@gmail.com', NULL, '$2y$10$hUt5euABhftiSS9mU77RROBUndsaBdEkMBKXrhfYBCyENSEFKMp.K', '2021-05-12 22:07:57', '2021-05-12 22:07:57', NULL),
(15, 'Wajdi Bouaziz', 3, 'wajdibouaziz@gmail.com', NULL, '$2y$10$4RwhBhBR/KZrA4d2IET1puYOFKUNvoOZegu5THzkB1mLnE/EbfNxy', '2021-05-12 22:23:38', '2021-05-12 22:23:38', NULL),
(17, 'Amine Ben Hmedou', 4, 'aminebenhmedou@gmail.com', NULL, '$2y$10$ZowDiVyFV1GGTtkr/l6VSeC3WnXKL4xG3lOQxVKtQIobVPRk.Xvui', '2021-05-16 19:40:14', '2021-05-16 19:40:14', NULL),
(18, 'Yesmin Dammak', 4, 'yesmindammak@gmail.com', NULL, '$2y$10$y.RJYc/2WIn.7Vh/FReRDeRwmTuAI0n.1OkEXKViFe/JwjYXMVrNO', '2021-05-17 09:06:45', '2021-05-17 09:06:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `admissions_email_unique` (`email`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `classes_class_code_unique` (`class_code`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `courses_course_code_unique` (`course_code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`level_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `student_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `level_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
