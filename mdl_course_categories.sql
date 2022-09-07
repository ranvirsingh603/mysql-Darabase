-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2022 at 09:52 AM
-- Server version: 10.6.7-MariaDB-2ubuntu1.1-log
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moodle`
--

-- --------------------------------------------------------

--
-- Table structure for table `mdl_course_categories`
--

CREATE TABLE `mdl_course_categories` (
  `id` bigint(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `coursecount` bigint(10) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Course categories' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_course_categories`
--

INSERT INTO `mdl_course_categories` (`id`, `name`, `idnumber`, `description`, `descriptionformat`, `parent`, `sortorder`, `coursecount`, `visible`, `visibleold`, `timemodified`, `depth`, `path`, `theme`) VALUES
(1, 'Category 1', NULL, NULL, 1, 0, 10000, 1, 1, 1, 1660458972, 1, '/1', NULL),
(2, 'NPSC', '', '', 1, 1, 20000, 2, 1, 1, 1661926166, 2, '/1/2', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_course_categories`
--
ALTER TABLE `mdl_course_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mdl_courcate_par_ix` (`parent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_course_categories`
--
ALTER TABLE `mdl_course_categories`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
