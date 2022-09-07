-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2022 at 09:47 AM
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
-- Table structure for table `mdl_context`
--

CREATE TABLE `mdl_context` (
  `id` bigint(10) NOT NULL,
  `contextlevel` bigint(10) NOT NULL DEFAULT 0,
  `instanceid` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depth` tinyint(2) NOT NULL DEFAULT 0,
  `locked` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='one of these must be set' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_context`
--

INSERT INTO `mdl_context` (`id`, `contextlevel`, `instanceid`, `path`, `depth`, `locked`) VALUES
(1, 10, 0, '/1', 1, 0),
(2, 50, 1, '/1/2', 2, 0),
(3, 40, 1, '/1/3', 2, 0),
(4, 30, 1, '/1/4', 2, 0),
(5, 30, 2, '/1/5', 2, 0),
(6, 80, 1, '/1/6', 2, 0),
(7, 80, 2, '/1/7', 2, 0),
(8, 80, 3, '/1/8', 2, 0),
(9, 80, 4, '/1/9', 2, 0),
(10, 80, 5, '/1/10', 2, 0),
(11, 80, 6, '/1/5/11', 3, 0),
(12, 80, 7, '/1/5/12', 3, 0),
(13, 80, 8, '/1/5/13', 3, 0),
(14, 30, 3, '/1/14', 2, 0),
(15, 50, 2, '/1/3/15', 3, 0),
(16, 70, 1, '/1/3/15/16', 4, 0),
(17, 30, 4, '/1/17', 2, 0),
(18, 80, 9, '/1/17/18', 3, 0),
(19, 80, 10, '/1/17/19', 3, 0),
(20, 80, 11, '/1/17/20', 3, 0),
(21, 70, 2, '/1/3/15/21', 4, 0),
(22, 70, 3, '/1/3/15/22', 4, 0),
(23, 70, 4, '/1/3/15/23', 4, 0),
(24, 30, 5, '/1/24', 2, 0),
(25, 30, 6, '/1/25', 2, 0),
(26, 70, 5, '/1/3/15/26', 4, 0),
(27, 40, 2, '/1/3/27', 3, 0),
(28, 50, 3, '/1/3/27/28', 4, 0),
(29, 70, 6, '/1/3/27/28/29', 5, 0),
(30, 70, 7, '/1/3/15/30', 4, 0),
(31, 70, 8, '/1/3/27/28/31', 5, 0),
(32, 70, 9, '/1/3/27/28/32', 5, 0),
(33, 50, 4, '/1/3/27/33', 4, 0),
(34, 70, 10, '/1/3/27/33/34', 5, 0),
(35, 70, 11, '/1/3/27/33/35', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_context`
--
ALTER TABLE `mdl_context`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  ADD KEY `mdl_cont_ins_ix` (`instanceid`),
  ADD KEY `mdl_cont_pat_ix` (`path`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_context`
--
ALTER TABLE `mdl_context`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
