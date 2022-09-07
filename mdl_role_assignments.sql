-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 07, 2022 at 09:48 AM
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
-- Table structure for table `mdl_role_assignments`
--

CREATE TABLE `mdl_role_assignments` (
  `id` bigint(10) NOT NULL,
  `roleid` bigint(10) NOT NULL DEFAULT 0,
  `contextid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `modifierid` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='assigning roles in different context' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_role_assignments`
--

INSERT INTO `mdl_role_assignments` (`id`, `roleid`, `contextid`, `userid`, `timemodified`, `modifierid`, `component`, `itemid`, `sortorder`) VALUES
(3, 3, 15, 2, 1660490269, 2, '', 0, 0),
(4, 5, 15, 4, 1660490953, 2, '', 0, 0),
(5, 5, 15, 5, 1661854027, 2, '', 0, 0),
(6, 5, 15, 6, 1661854039, 2, '', 0, 0),
(7, 3, 28, 2, 1661926462, 2, '', 0, 0),
(9, 5, 28, 6, 1662010573, 2, '', 0, 0),
(10, 5, 28, 4, 1662010573, 2, '', 0, 0),
(11, 3, 33, 2, 1662180746, 2, '', 0, 0),
(12, 5, 33, 5, 1662180780, 2, '', 0, 0),
(13, 5, 33, 6, 1662180780, 2, '', 0, 0),
(14, 5, 33, 4, 1662180780, 2, '', 0, 0),
(15, 5, 28, 5, 1662523767, 2, '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_role_assignments`
--
ALTER TABLE `mdl_role_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mdl_roleassi_sor_ix` (`sortorder`),
  ADD KEY `mdl_roleassi_rolcon_ix` (`roleid`,`contextid`),
  ADD KEY `mdl_roleassi_useconrol_ix` (`userid`,`contextid`,`roleid`),
  ADD KEY `mdl_roleassi_comiteuse_ix` (`component`,`itemid`,`userid`),
  ADD KEY `mdl_roleassi_rol_ix` (`roleid`),
  ADD KEY `mdl_roleassi_con_ix` (`contextid`),
  ADD KEY `mdl_roleassi_use_ix` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_role_assignments`
--
ALTER TABLE `mdl_role_assignments`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
