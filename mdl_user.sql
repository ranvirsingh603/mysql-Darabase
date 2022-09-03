-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2022 at 08:33 PM
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
-- Table structure for table `mdl_user`
--

CREATE TABLE `mdl_user` (
  `id` bigint(10) NOT NULL,
  `auth` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `policyagreed` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `mnethostid` bigint(10) NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idnumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT 0,
  `phone1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `calendartype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gregorian',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '99',
  `firstaccess` bigint(10) NOT NULL DEFAULT 0,
  `lastaccess` bigint(10) NOT NULL DEFAULT 0,
  `lastlogin` bigint(10) NOT NULL DEFAULT 0,
  `currentlogin` bigint(10) NOT NULL DEFAULT 0,
  `lastip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `secret` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `picture` bigint(10) NOT NULL DEFAULT 0,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 1,
  `mailformat` tinyint(1) NOT NULL DEFAULT 1,
  `maildigest` tinyint(1) NOT NULL DEFAULT 0,
  `maildisplay` tinyint(2) NOT NULL DEFAULT 2,
  `autosubscribe` tinyint(1) NOT NULL DEFAULT 1,
  `trackforums` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `trustbitmask` bigint(10) NOT NULL DEFAULT 0,
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastnamephonetic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstnamephonetic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternatename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moodlenetprofile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='One record for each person' ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `mdl_user`
--

INSERT INTO `mdl_user` (`id`, `auth`, `confirmed`, `policyagreed`, `deleted`, `suspended`, `mnethostid`, `username`, `password`, `idnumber`, `firstname`, `lastname`, `email`, `emailstop`, `phone1`, `phone2`, `institution`, `department`, `address`, `city`, `country`, `lang`, `calendartype`, `theme`, `timezone`, `firstaccess`, `lastaccess`, `lastlogin`, `currentlogin`, `lastip`, `secret`, `picture`, `description`, `descriptionformat`, `mailformat`, `maildigest`, `maildisplay`, `autosubscribe`, `trackforums`, `timecreated`, `timemodified`, `trustbitmask`, `imagealt`, `lastnamephonetic`, `firstnamephonetic`, `middlename`, `alternatename`, `moodlenetprofile`) VALUES
(1, 'manual', 1, 0, 0, 0, 1, 'guest', '$2y$10$KIYffjS9EtPN0CGIawTcguws2jV7X6jcZDCNw1ZClLh/2APNcOT8u', '', 'Guest user', ' ', 'root@localhost', 0, '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, 'This user is a special user that allows read-only access to some courses.', 1, 1, 0, 2, 1, 0, 0, 1660458972, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'manual', 1, 0, 0, 0, 1, 'admin', '$2y$10$gNEyxwJ.gXux/WIAwNp9L.opZrt0JTsvHKsTeTaH4nRVQ1sVlaKcW', '', 'Admin', 'User', 'rsmbhourla@gmail.com', 0, '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1660459529, 1662202261, 1662180588, 1662182376, '127.0.0.1', '', 0, '', 1, 1, 0, 1, 1, 0, 0, 1660459768, 0, NULL, '', '', '', '', NULL),
(3, 'manual', 1, 0, 1, 0, 1, 'matharuranvir@gmail.com.1660490506', '$2y$10$KjGZkg6fgrg8.AfX/YrR3eJ/uJjllovmxFtqVMt3CLV8oo.R2YY.O', '', 'Ranvir', 'Singh', '73c5e62e2b6e762252c62435746ad0d7', 0, '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '', 1, 1, 0, 2, 1, 0, 1660489322, 1660490506, 0, '', '', '', '', '', ''),
(4, 'manual', 1, 0, 0, 0, 1, 'ranvir', '$2y$10$NannxCJjAAEeyWFx99T8w.0DsMRMHVZnYOREvp.v0w9EaAZgthS7y', '', 'Ranvir', 'Singh', 'matharuranvir@gmail.com', 0, '', '', '', '', '', 'khanna', 'IN', 'en', 'gregorian', '', '99', 1660490695, 1662180437, 1662180178, 1662180437, '127.0.0.1', '', 0, '', 1, 1, 0, 2, 1, 0, 1660490671, 1661931032, 0, '', '', '', '', '', ''),
(5, 'manual', 1, 0, 0, 0, 1, 'jasjitkaur', '$2y$10$2H/wkfdltVhsVbPZOFpzr.ABj8QTVux8KvVhQJvlUO.UAbWRMmLVG', '', 'jasjit', 'kaur', 'jasjitkaur778@gmail.com', 0, '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 1661852849, 1662181269, 1662180524, 1662180917, '127.0.0.1', '', 0, '', 1, 1, 0, 2, 1, 0, 1661851765, 1661851765, 0, '', '', '', '', '', ''),
(6, 'manual', 1, 0, 0, 0, 1, 'komalpreeet', '$2y$10$R8VoA8yKlrdZPqVjCkAXJ.UXAKSthHd0IWYjrKXwLFyfh8lXR5drC', '', 'komalpreet', 'kaur', 'komalpreetkaur059@gmail.com', 0, '', '', '', '', '', '', '', 'en', 'gregorian', '', '99', 0, 0, 0, 0, '', '', 0, '<p dir=\"ltr\" style=\"text-align: left;\"></p><div><div><div><div>\r\n                \r\n            </div>\r\n        </div>\r\n        \r\n    </div>\r\n</div><div id=\"fitem_id_passwordpolicyinfo\">\r\n    <div>\r\n        \r\n        <div>\r\n            \r\n        </div>\r\n    </div>\r\n    <div data-fieldtype=\"static\">\r\n        <div>\r\n        The password must have at least 8 characters, at least 1 \r\ndigit(s), at least 1 lower case letter(s), at least 1 upper case \r\nletter(s), at least 1 special character(s) such as as *, -, or #\r\n        </div>\r\n        \r\n    </div>\r\n</div><div id=\"fitem_id_newpassword\">\r\n    <div>\r\n        \r\n                <label for=\"id_newpassword\">\r\n                    New password\r\n                </label>\r\n        \r\n        <div>\r\n            </div></div></div>\r\n        <span data-passwordunmask=\"wrapper\" data-passwordunmaskid=\"id_newpassword\">\r\n            <span data-passwordunmask=\"editor\">\r\n                \r\n            </span>\r\n            <a href=\"http://localhost/moodle/user/editadvanced.php#\" data-passwordunmask=\"edit\" title=\"\">\r\n                <span data-passwordunmask=\"displayvalue\">\r\n•••••\r\n\r\n</span>\r\n                <i title=\"Edit password\" role=\"img\" aria-label=\"Edit password\"></i>\r\n            </a>\r\n            <a href=\"http://localhost/moodle/user/editadvanced.php#\" data-passwordunmask=\"unmask\" title=\"\">\r\n                <i title=\"Reveal\" role=\"img\" aria-label=\"Reveal\"></i>\r\n            </a>\r\n            \r\n        </span>\r\n        <div id=\"id_error_newpassword\">\r\n            <div>Passwo</div></div><div><div><div><div>\r\n                \r\n            </div>\r\n        </div>\r\n        \r\n    </div>\r\n</div><div id=\"fitem_id_passwordpolicyinfo\">\r\n    <div>\r\n        \r\n        <div>\r\n            \r\n        </div>\r\n    </div>\r\n    <div data-fieldtype=\"static\">\r\n        <div>\r\n        The password must have at least 8 characters, at least 1 \r\ndigit(s), at least 1 lower case letter(s), at least 1 upper case \r\nletter(s), at least 1 special character(s) such as as *, -, or #\r\n        </div>\r\n        \r\n    </div>\r\n</div><div id=\"fitem_id_newpassword\">\r\n    <div>\r\n        \r\n                <label for=\"id_newpassword\">\r\n                    New password\r\n                </label>\r\n        \r\n        <div>\r\n            </div></div></div>\r\n        <span data-passwordunmask=\"wrapper\" data-passwordunmaskid=\"id_newpassword\">\r\n            <span data-passwordunmask=\"editor\">\r\n                \r\n            </span>\r\n            <a href=\"http://localhost/moodle/user/editadvanced.php#\" data-passwordunmask=\"edit\" title=\"\">\r\n                <span data-passwordunmask=\"displayvalue\">\r\n•••••\r\n\r\n<div><div><div><div>\r\n                \r\n            </div>\r\n        </div>\r\n        \r\n    </div>\r\n</div><div id=\"fitem_id_passwordpolicyinfo\">\r\n    <div>\r\n        \r\n        <div>\r\n            \r\n        </div>\r\n    </div>\r\n    <div data-fieldtype=\"static\">\r\n        <div>\r\n        The password must have at least 8 characters, at least 1 \r\ndigit(s), at least 1 lower case letter(s), at least 1 upper case \r\nletter(s), at least 1 special character(s) such as as *, -, or #\r\n        </div>\r\n        \r\n    </div>\r\n</div><div id=\"fitem_id_newpassword\">\r\n    <div>\r\n        \r\n                <label for=\"id_newpassword\">\r\n                    New password\r\n                </label>\r\n        \r\n        <div>\r\n            </div></div></div>\r\n        <span data-passwordunmask=\"wrapper\" data-passwordunmaskid=\"id_newpassword\">\r\n            <span data-passwordunmask=\"editor\">\r\n                \r\n            </span>\r\n            </span></span></a><a href=\"http://localhost/moodle/user/editadvanced.php#\" data-passwordunmask=\"edit\" title=\"\">\r\n                <span data-passwordunmask=\"displayvalue\">\r\n•••••\r\n\r\n</span>\r\n                <i title=\"Edit password\" role=\"img\" aria-label=\"Edit password\"></i>\r\n            </a>\r\n            <a href=\"http://localhost/moodle/user/editadvanced.php#\" data-passwordunmask=\"unmask\" title=\"\">\r\n                <i title=\"Reveal\" role=\"img\" aria-label=\"Reveal\"></i>\r\n            </a>\r\n            \r\n        </span>\r\n        <div id=\"id_error_newpassword\">\r\n            <div>Passwo</div></div>\r\n                <i title=\"Edit password\" role=\"img\" aria-label=\"Edit password\"></i>\r\n            \r\n            <a href=\"http://localhost/moodle/user/editadvanced.php#\" data-passwordunmask=\"unmask\" title=\"\">\r\n                <i title=\"Reveal\" role=\"img\" aria-label=\"Reveal\"></i>\r\n            </a>\r\n            \r\n        \r\n        <div id=\"id_error_newpassword\">\r\n            <div>Passwo</div></div><br><p></p>', 1, 1, 0, 2, 1, 0, 1661851863, 1661851863, 0, '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mdl_user`
--
ALTER TABLE `mdl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mdl_user_mneuse_uix` (`mnethostid`,`username`),
  ADD KEY `mdl_user_del_ix` (`deleted`),
  ADD KEY `mdl_user_con_ix` (`confirmed`),
  ADD KEY `mdl_user_fir_ix` (`firstname`),
  ADD KEY `mdl_user_las_ix` (`lastname`),
  ADD KEY `mdl_user_cit_ix` (`city`),
  ADD KEY `mdl_user_cou_ix` (`country`),
  ADD KEY `mdl_user_las2_ix` (`lastaccess`),
  ADD KEY `mdl_user_ema_ix` (`email`),
  ADD KEY `mdl_user_aut_ix` (`auth`),
  ADD KEY `mdl_user_idn_ix` (`idnumber`),
  ADD KEY `mdl_user_fir2_ix` (`firstnamephonetic`),
  ADD KEY `mdl_user_las3_ix` (`lastnamephonetic`),
  ADD KEY `mdl_user_mid_ix` (`middlename`),
  ADD KEY `mdl_user_alt_ix` (`alternatename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mdl_user`
--
ALTER TABLE `mdl_user`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
