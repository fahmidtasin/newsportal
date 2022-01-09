-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2018 at 05:23 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'fahmid', '1', 'fahmidtasin@gmail.com', 1, '2018-05-27 17:51:00', '0000-00-00 00:00:00'),
(3, 'fara', '12345', 'fara@qq.com', 1, '2018-12-30 17:47:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to sports news', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'Entertainment', 'Entertainment related  News', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Politics', 'Politics', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1),
(8, 'Movies', 'About Latest Movies', '2018-12-30 18:30:38', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, '11', 'Fahmid', 'fahmidtasin@gmail.com', 'khubi valo akta movie! :)', '2018-12-30 19:23:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">This is a awesome news channel.</span></font><br>', '2018-06-30 18:01:03', '2018-12-29 20:59:08'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Mirpur,Dhaka-1216</p><p><b>Phone Number : </b>01681161036</p><p><b>Email -id : </b>fahmidtasin@gmail.com</p>', '2018-06-30 18:01:36', '2018-12-09 17:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(7, 'Bangladesh wins T20 World Cup!', 3, 4, '<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>Bangladesh Cricket League 2018-19, Sixth Round</b></p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>BCB North Zone vs Prime Bank South Zone</b></p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>Venue :&nbsp;</b>Zahur Ahmed Chowdhury Stadium, Chittagong</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\">Shahid Kamruzzaman Stadium, Rajshahi.</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>BCB North Zone :</b><i>&nbsp;293/10 in 83.4 overs (Ariful 98, Ziaur 69, Junaid 44; Razzak 7/69, Nahidul 1/35, Mahedi 1/47)&nbsp;<strong>&amp; (2nd innings)</strong>&nbsp;280/10 in 82.2 overs (Ziaur 77*, Junaid 77, Naeem Islam 67;&nbsp;Razzak 5/75, Nahidul 1/22, Monir 1/38)<br></i></p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>Prime Bank South Zone :&nbsp;</b><em>541/10 in 125.3 overs (Anamul 180, Al-Amin 128, Mahedi 84; Sunzamul 6/158, Ebadat 2/88, Ariful 1/41)&nbsp;<i><strong>&amp; (2nd innings)&nbsp;</strong>35/1 in 7.1 overs (Anamul 20*, Fazle Mahmud 8*; Dhiman 1/10)</i></em></p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><strong>Result :&nbsp;</strong>Prime Bank South Zone won by 9 wickets.</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><strong>Player of the Match :</strong>&nbsp;Abdur Razzak.</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><i>***</i></p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>Walton Central Zone vs Islami Bank East Zone</b></p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>Venue</b>&nbsp;: Sylhet International Cricket Stadium, Sylhet</p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>Islami Bank East Zone :&nbsp;</b><em>425/10</em><i>&nbsp;in 88.5 overs (Mahmudul 94, Mominul 82, Imrul 78; Taskin 4/96, MAbu Hider 2/85, Mosharraf 2/91)&nbsp;<strong>&amp; (2nd innings)</strong>&nbsp;<em>254/3 dec. in 43 overs (Yasir Ali 101*, Mominul 100, Rony Talukdar 24; Shahadat 1/19)</em><br></i></p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><b>Walton Central Zone :&nbsp;</b><em>224/10 in 72.5 overs (Mosaddek 57, Pinak 51, Abdul Majid 24; Taijul 6/92, Naeem 2/44)&nbsp;</em><strong><em>&amp; (2nd innings)</em></strong><em>&nbsp;134/10 in 42.2 overs (Shanto 36, Saif 31, Marshall 16; Naeem 8/47, Abu Jayed 2/8)</em></p><p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; color: rgb(34, 34, 34);\"><strong>Result :</strong>&nbsp;Islami Bank East Zone won by 321 runs.</p>', '2018-06-30 18:49:23', '2018-12-29 20:46:59', 1, 'Bangladesh-wins-T20-World-Cup!', 'bangladesh.jpg'),
(8, 'Metal Factories Are In Danger!', 7, 9, '<p>Metal</p>', '2018-12-29 20:49:30', '2018-12-31 15:02:28', 1, 'Metal-Factories-Are-In-Danger!', '6bf8b0186c8a70534a5bef2eef3726a3.jpg'),
(9, 'Aynabaji 2018', 8, 10, '<div><font color=\"#333333\" face=\"Verdana, Arial, sans-serif\"><span style=\"font-size: 13px;\"><br></span></font></div><ul class=\"ipl-zebra-list\" id=\"plot-summaries-content\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-left: 0px; border-collapse: collapse; list-style-type: none; width: 620px; color: rgb(51, 51, 51); font-family: Verdana, Arial, sans-serif; font-size: 13px;\"><li class=\"ipl-zebra-list__item\" id=\"summary-ps2613828\" style=\"margin: 0px; border: 1px solid rgb(255, 255, 255); padding: 0.9rem 0.7rem; background-color: rgb(246, 246, 245);\"><p style=\"margin-top: 0.5em; line-height: 18.2px; padding: 0px;\">Ayna, a struggling actor, gets to live his profession in real life after failing in his career. Gifted with the natural talent of acting, He is an interchangeable man and can morph into anyone he wants. A story about the dark side of metro city Dhaka.</p></li></ul>', '2018-12-30 18:56:42', '2018-12-30 18:59:43', 1, 'Aynabaji-2018', '62bdcb0085210e2a93edeeedc10f17b3.jpg'),
(11, 'Zero 2018', 8, 11, '<span style=\"color: rgb(51, 51, 51); font-family: Verdana, Arial, sans-serif; font-size: 13px; background-color: rgb(238, 238, 238);\">The story revolves around Bauua Singh (Shah Rukh Khan), a vertically challenged man, who is full of charm and wit, with a pinch of arrogance. Born to a wealthy family and raised in an environment of affluence, he is challenged to broaden his horizon and find purpose in life.</span>', '2018-12-30 19:10:29', NULL, 1, 'Zero-2018', '3fb2db6cccf4a23383383394b28b2b31.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2018-06-30 03:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Football', 'Football', '2018-06-30 03:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 12:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'National', 'National', '2018-06-30 13:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 13:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'bangladesh', 'India', '2018-06-30 13:08:42', '2018-12-29 20:08:33', 1),
(10, 8, 'Dallywood', 'Dallywood', '2018-12-30 18:00:00', '0000-00-00 00:00:00', 1),
(11, 8, 'Bollywood', 'Bollywood', '2018-12-30 18:00:00', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `AdminEmailId` (`AdminEmailId`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD KEY `CategoryId` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `tblposts_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`);

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `tblsubcategory_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
