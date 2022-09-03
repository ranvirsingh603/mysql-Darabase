-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2022 at 12:01 PM
-- Server version: 10.6.7-MariaDB-2ubuntu1.1
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
-- Table structure for table `mdl_grade_grades`
--

CREATE TABLE `mdl_grade_grades` (
  `id` bigint(10) NOT NULL,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `exported` bigint(10) NOT NULL DEFAULT 0,
  `overridden` bigint(10) NOT NULL DEFAULT 0,
  `excluded` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedbackformat` bigint(10) NOT NULL DEFAULT 0,
  `information` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `informationformat` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `aggregationstatus` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unknown',
  `aggregationweight` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='grade_grades  This table keeps individual grades for each us' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_grade_grades`
--

INSERT INTO `mdl_grade_grades` (`id`, `itemid`, `userid`, `rawgrade`, `rawgrademax`, `rawgrademin`, `rawscaleid`, `usermodified`, `finalgrade`, `hidden`, `locked`, `locktime`, `exported`, `overridden`, `excluded`, `feedback`, `feedbackformat`, `information`, `informationformat`, `timecreated`, `timemodified`, `aggregationstatus`, `aggregationweight`) VALUES
(1, 5, 4, '10.00000', '10.00000', '0.00000', NULL, 2, '10.00000', 0, 0, 0, 0, 0, 0, '<p dir=\"ltr\" style=\"text-align: left;\">good</p><p dir=\"ltr\" style=\"text-align: left;\"><br></p>', 1, NULL, 0, NULL, 1660667299, 'used', '0.05556'),
(2, 2, 4, NULL, '135.00000', '0.00000', NULL, NULL, '103.49965', 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 1661161450, 'unknown', NULL),
(3, 3, 4, NULL, '100.00000', '0.00000', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, NULL, 'novalue', '0.00000'),
(4, 6, 4, NULL, '25.00000', '9.00000', NULL, 2, '10.00000', 0, 0, 0, 0, 0, 0, NULL, 0, NULL, 0, NULL, 1660667446, 'used', '0.38889'),
(5, 7, 4, '100.00000', '100.00000', '0.00000', NULL, 2, '100.00000', 0, 0, 0, 0, 0, 0, '<b>No test case found</b><br>\n<br>', 1, NULL, 0, 1661161287, 1661161450, 'used', '0.55555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_grade_grades`
--
ALTER TABLE `mdl_grade_grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mdl_gradgrad_useite_uix` (`userid`,`itemid`),
  ADD KEY `mdl_gradgrad_locloc_ix` (`locked`,`locktime`),
  ADD KEY `mdl_gradgrad_ite_ix` (`itemid`),
  ADD KEY `mdl_gradgrad_use_ix` (`userid`),
  ADD KEY `mdl_gradgrad_raw_ix` (`rawscaleid`),
  ADD KEY `mdl_gradgrad_use2_ix` (`usermodified`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_grade_grades`
--
ALTER TABLE `mdl_grade_grades`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
