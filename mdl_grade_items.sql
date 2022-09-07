-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2022 at 09:50 AM
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
-- Table structure for table `mdl_grade_items`
--

CREATE TABLE `mdl_grade_items` (
  `id` bigint(10) NOT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemtype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemmodule` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idnumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculation` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gradetype` smallint(4) NOT NULL DEFAULT 1,
  `grademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `grademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `multfactor` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `plusfactor` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `display` bigint(10) NOT NULL DEFAULT 0,
  `decimals` tinyint(1) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `needsupdate` bigint(10) NOT NULL DEFAULT 0,
  `weightoverride` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This table keeps information about gradeable items (ie colum' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_grade_items`
--

INSERT INTO `mdl_grade_items` (`id`, `courseid`, `categoryid`, `itemname`, `itemtype`, `itemmodule`, `iteminstance`, `itemnumber`, `iteminfo`, `idnumber`, `calculation`, `gradetype`, `grademax`, `grademin`, `scaleid`, `outcomeid`, `gradepass`, `multfactor`, `plusfactor`, `aggregationcoef`, `aggregationcoef2`, `sortorder`, `display`, `decimals`, `hidden`, `locked`, `locktime`, `needsupdate`, `weightoverride`, `timecreated`, `timemodified`) VALUES
(1, 1, NULL, NULL, 'course', NULL, 1, NULL, NULL, NULL, NULL, 1, '0.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.00000', 1, 0, NULL, 0, 0, 0, 0, 0, 1660461190, 1660461190),
(2, 2, NULL, NULL, 'course', NULL, 2, NULL, NULL, NULL, NULL, 1, '255.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.00000', 1, 0, NULL, 0, 0, 0, 0, 0, 1660490304, 1661940527),
(3, 2, 2, 'Announcements whole forum', 'mod', 'forum', 1, 1, NULL, NULL, NULL, 1, '100.00000', '0.00000', NULL, NULL, '35.00000', '1.00000', '0.00000', '0.00000', '0.32609', 2, 0, NULL, 0, 0, 0, 0, 0, 1660490909, 1661940527),
(5, 2, 2, 'Attendance', 'mod', 'attendance', 1, 0, NULL, NULL, NULL, 1, '10.00000', '0.00000', NULL, NULL, '7.00000', '1.00000', '0.00000', '0.00000', '0.03261', 3, 0, NULL, 0, 0, 0, 0, 0, 1660667070, 1661940527),
(6, 2, 2, 'Weekly Tests', 'manual', NULL, NULL, 0, '', '', NULL, 1, '25.00000', '9.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.25000', 4, 0, NULL, 0, 0, 0, 0, 1, 1660667384, 1660667397),
(7, 2, 2, 'Python', 'mod', 'vpl', 1, 0, NULL, '4', NULL, 1, '100.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.32609', 5, 0, NULL, 0, 0, 0, 0, 0, 1661160694, 1661940527),
(8, 2, 2, 'quiz', 'mod', 'quiz', 1, 0, NULL, '', NULL, 1, '10.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.03261', 6, 0, NULL, 0, 0, 0, 0, 0, 1661854254, 1661940527),
(9, 3, NULL, NULL, 'course', NULL, 3, NULL, NULL, NULL, NULL, 1, '2.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.00000', 1, 0, NULL, 0, 0, 0, 0, 0, 1661926744, 1661930782),
(10, 3, 3, 'marks', 'manual', NULL, NULL, 0, '', '', NULL, 2, '2.00000', '1.00000', 2, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '1.00000', 2, 0, NULL, 0, 0, 0, 0, 1, 1661926821, 1661930787),
(11, 2, 2, 'quiz2', 'mod', 'quiz', 2, 0, NULL, '', NULL, 1, '10.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.03261', 7, 0, NULL, 0, 0, 0, 0, 0, 1661940527, 1661940527),
(12, 3, 3, 'Quiz1', 'mod', 'quiz', 3, 0, NULL, '', NULL, 1, '10.00000', '0.00000', NULL, NULL, '7.00000', '1.00000', '0.00000', '0.00000', '0.00000', 3, 0, NULL, 0, 0, 0, 0, 0, 1662010973, 1662010974),
(13, 3, 3, 'quiz y', 'mod', 'quiz', 4, 0, NULL, '', NULL, 1, '10.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.00000', 4, 0, NULL, 0, 0, 0, 0, 0, 1662180254, 1662180255),
(14, 4, NULL, NULL, 'course', NULL, 4, NULL, NULL, NULL, NULL, 1, '10.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '0.00000', 1, 0, NULL, 0, 0, 0, 0, 0, 1662180791, 1662180839),
(15, 4, 4, 'quiz1', 'mod', 'quiz', 5, 0, NULL, '', NULL, 1, '10.00000', '0.00000', NULL, NULL, '0.00000', '1.00000', '0.00000', '0.00000', '1.00000', 2, 0, NULL, 0, 0, 0, 0, 0, 1662180839, 1662180839);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_grade_items`
--
ALTER TABLE `mdl_grade_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mdl_graditem_locloc_ix` (`locked`,`locktime`),
  ADD KEY `mdl_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  ADD KEY `mdl_graditem_gra_ix` (`gradetype`),
  ADD KEY `mdl_graditem_idncou_ix` (`idnumber`,`courseid`),
  ADD KEY `mdl_graditem_iteiteitecou_ix` (`itemtype`,`itemmodule`,`iteminstance`,`courseid`),
  ADD KEY `mdl_graditem_cou_ix` (`courseid`),
  ADD KEY `mdl_graditem_cat_ix` (`categoryid`),
  ADD KEY `mdl_graditem_sca_ix` (`scaleid`),
  ADD KEY `mdl_graditem_out_ix` (`outcomeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_grade_items`
--
ALTER TABLE `mdl_grade_items`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
