-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2022 at 08:31 PM
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
-- Table structure for table `mdl_course`
--

CREATE TABLE `mdl_course` (
  `id` bigint(10) NOT NULL,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `fullname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `format` varchar(21) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'topics',
  `showgrades` tinyint(2) NOT NULL DEFAULT 1,
  `newsitems` mediumint(5) NOT NULL DEFAULT 1,
  `startdate` bigint(10) NOT NULL DEFAULT 0,
  `enddate` bigint(10) NOT NULL DEFAULT 0,
  `relativedatesmode` tinyint(1) NOT NULL DEFAULT 0,
  `marker` bigint(10) NOT NULL DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 0,
  `legacyfiles` smallint(4) NOT NULL DEFAULT 0,
  `showreports` smallint(4) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `downloadcontent` tinyint(1) DEFAULT NULL,
  `groupmode` smallint(4) NOT NULL DEFAULT 0,
  `groupmodeforce` smallint(4) NOT NULL DEFAULT 0,
  `defaultgroupingid` bigint(10) NOT NULL DEFAULT 0,
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendartype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `requested` tinyint(1) NOT NULL DEFAULT 0,
  `enablecompletion` tinyint(1) NOT NULL DEFAULT 0,
  `completionnotify` tinyint(1) NOT NULL DEFAULT 0,
  `cacherev` bigint(10) NOT NULL DEFAULT 0,
  `originalcourseid` bigint(10) DEFAULT NULL,
  `showactivitydates` tinyint(1) NOT NULL DEFAULT 0,
  `showcompletionconditions` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Central course table' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_course`
--

INSERT INTO `mdl_course` (`id`, `category`, `sortorder`, `fullname`, `shortname`, `idnumber`, `summary`, `summaryformat`, `format`, `showgrades`, `newsitems`, `startdate`, `enddate`, `relativedatesmode`, `marker`, `maxbytes`, `legacyfiles`, `showreports`, `visible`, `visibleold`, `downloadcontent`, `groupmode`, `groupmodeforce`, `defaultgroupingid`, `lang`, `calendartype`, `theme`, `timecreated`, `timemodified`, `requested`, `enablecompletion`, `completionnotify`, `cacherev`, `originalcourseid`, `showactivitydates`, `showcompletionconditions`) VALUES
(1, 0, 1, 'my moodle site', 'my moodle site', '', '', 0, 'site', 1, 3, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 0, 0, '', '', '', 1660458971, 1660460006, 0, 0, 0, 1661154376, NULL, 0, NULL),
(2, 1, 10001, '12th', '12', '', '<p dir=\"ltr\" style=\"text-align: left;\">This course is made by Ranvir Singh<br></p>', 1, 'topics', 1, 3, 1660521600, 1692057600, 0, 0, 2097152, 0, 1, 1, 1, NULL, 0, 0, 0, 'en', '', '', 1660489971, 1660491844, 0, 1, 0, 1661940529, NULL, 1, 1),
(3, 2, 20002, 'Machine Learning ', 'ML', '4627839', '<p dir=\"ltr\" style=\"text-align: left;\">This is the machine learning course.<br></p>', 1, 'topics', 1, 5, 1661990400, 1693526400, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 0, 0, '', '', '', 1661926460, 1662010517, 0, 1, 0, 1662180256, NULL, 1, 1),
(4, 2, 20001, '11th', '11', '', '', 1, 'topics', 1, 5, 1662249600, 1693785600, 0, 0, 0, 0, 0, 1, 1, NULL, 0, 0, 0, '', '', '', 1662180745, 1662180745, 0, 1, 0, 1662180841, NULL, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_course`
--
ALTER TABLE `mdl_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mdl_cour_cat_ix` (`category`),
  ADD KEY `mdl_cour_idn_ix` (`idnumber`),
  ADD KEY `mdl_cour_sho_ix` (`shortname`),
  ADD KEY `mdl_cour_sor_ix` (`sortorder`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_course`
--
ALTER TABLE `mdl_course`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
