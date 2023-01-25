-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 08:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobseekers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
('6307c8c039ff1', 'admin', 'admin@gmail.com', 'ac9689e2272427085e35b9d3e3e8bed88cb3434828b43b86fc0596cad4c6e270');

-- --------------------------------------------------------

--
-- Table structure for table `buypackage`
--

CREATE TABLE `buypackage` (
  `id` int(11) NOT NULL,
  `numberofpost` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `employerid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buypackage`
--

INSERT INTO `buypackage` (`id`, `numberofpost`, `amount`, `employerid`) VALUES
(34, 8, '300.00', '631cbb287121e '),
(35, 4, '150.00', '631f32f6eb444 ');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `adminid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `adminid`) VALUES
(1, 'Graphics Designer', '6307c8c039ff1'),
(2, 'Content Writer', '6307c8c039ff1'),
(3, 'Frontend Developer', '6307c8c039ff1'),
(4, 'Backend Developer', '6307c8c039ff1'),
(5, 'Bank/Non Bank', '6307c8c039ff1'),
(6, 'Garments/Textile', '6307c8c039ff1'),
(7, 'Marketing/Sales', '6307c8c039ff1');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int(15) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `mobile`, `comment`) VALUES
('631c3a19e29a4', 'Siam khan', 'minhajulsiam@gmail.com', 1900110011, 'my account is deactivated. please active my account'),
('63208972b52f9', 'Minhajul Islam', 'minhajulsiam786@gmail.com', 1900110022, 'My account is deactivated. please reactive my account');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `authentication` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `bantime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `name`, `companyname`, `location`, `email`, `mobile`, `password`, `position`, `otp`, `authentication`, `status`, `bantime`) VALUES
('631cbb287121e', 'Minhajul Islam', 'SoftTech', 'Narayanganj', 'minhajulsiam786@gmail.com', '1900112233', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'employer', 684326, 'Verified', 'active', '2022-09-13 19:03:08'),
('631f32f6eb444', 'Siam khan', 'edusoft', 'Dhaka', 'minhajulsiam28@gmail.com', '1900110011', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'employer', 588936, 'Verified', 'active', '2022-09-13 19:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE `interview` (
  `id` varchar(255) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `employerid` varchar(255) DEFAULT NULL,
  `jobpostid` varchar(255) DEFAULT NULL,
  `jobapplyid` varchar(255) DEFAULT NULL,
  `meetingid` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interview`
--

INSERT INTO `interview` (`id`, `userid`, `employerid`, `jobpostid`, `jobapplyid`, `meetingid`, `time`, `url`, `password`) VALUES
('631cbd44a9b9b', '631cbbe1417f4', '631cbb287121e', '631cbcd81e785', '631cbd11c49d4', '83919702894', '2022-09-20 23:40:00', 'https://us05web.zoom.us/j/83919702894?pwd=RVppcENBdk8vUEtnMjVjZ2VTaUhMdz09', '12345'),
('631d9f5e4c2c3', '631cbbe1417f4', '631cbb287121e', '631d9f0959611', '631d9f378c0d3', '85408875848', '2022-09-14 17:45:00', 'https://us05web.zoom.us/j/85408875848?pwd=a2F4cDFmOE1USmVLdWQ0NElGajVudz09', '12345'),
('631da13f6937c', '631cbbe1417f4', '631cbb287121e', '631d9ea111d72', '631da11de40bf', '82463050645', '2022-09-14 17:50:00', 'https://us05web.zoom.us/j/82463050645?pwd=ZnVBUWk5M0tiSnVPTHdhQm96U3VvUT09', '12345'),
('631f404106fe7', '631f323d7255d', '631cbb287121e', '631cbcd81e785', '631f39cc9c3c2', '86439667488', '2022-09-20 12:25:00', 'https://us05web.zoom.us/j/86439667488?pwd=SVp3MFhLOHAyTFdpZlZvb1NRU0hCQT09', '12345'),
('631f49d74f867', '631f323d7255d', '631cbb287121e', '631d9ea111d72', '631f39fef1b1e', '84005656326', '2022-09-15 13:05:00', 'https://us05web.zoom.us/j/84005656326?pwd=Z3g5Y1JLRWVHeTh6QlUxYWRWTTZYUT09', '12345'),
('6320820c139e1', '631f323d7255d', '631f32f6eb444', '63207dfdda2c5', '63208109c72e8', '88695139095', '2022-09-27 12:15:00', 'https://us05web.zoom.us/j/88695139095?pwd=c2lReE44aWdjVG1ENEhYYlpCZEIydz09', '12345'),
('6320842e51dba', '631f323d7255d', '631cbb287121e', '631d9f0959611', '632081b9e47b9', '84665145152', '2022-09-26 23:22:00', 'https://us05web.zoom.us/j/84665145152?pwd=V1VOQS9SeEsrTkNMaStWL3QyN2xYdz09', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `jobapply`
--

CREATE TABLE `jobapply` (
  `id` varchar(255) NOT NULL,
  `cv` varchar(300) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `jobid` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `applytime` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobapply`
--

INSERT INTO `jobapply` (`id`, `cv`, `categoryid`, `jobid`, `userid`, `applytime`, `status`) VALUES
('631cbd11c49d4', '631cbcd81e785cv.pdf', 3, '631cbcd81e785', '631cbbe1417f4', '2022-09-10', 'called for interview'),
('631d9f378c0d3', '631d9f0959611cv.pdf', 5, '631d9f0959611', '631cbbe1417f4', '2022-09-11', 'called for interview'),
('631da11de40bf', '631d9ea111d72cv.pdf', 4, '631d9ea111d72', '631cbbe1417f4', '2022-09-11', 'called for interview'),
('631f39cc9c3c2', '631cbcd81e785cv.pdf', 3, '631cbcd81e785', '631f323d7255d', '2022-09-12', 'called for interview'),
('631f39fef1b1e', '631d9ea111d72cv.pdf', 4, '631d9ea111d72', '631f323d7255d', '2022-09-12', 'called for interview'),
('63208109c72e8', '63207dfdda2c5cv.pdf', 1, '63207dfdda2c5', '631f323d7255d', '2022-09-13', 'called for interview'),
('63208158f1420', '6320803aac1abcv.pdf', 6, '6320803aac1ab', '631f323d7255d', '2022-09-13', 'rejected'),
('632081b9e47b9', '631d9f0959611cv.pdf', 5, '631d9f0959611', '631f323d7255d', '2022-09-13', 'called for interview');

-- --------------------------------------------------------

--
-- Table structure for table `jobpost`
--

CREATE TABLE `jobpost` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `employerid` varchar(255) DEFAULT NULL,
  `editlimit` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobpost`
--

INSERT INTO `jobpost` (`id`, `title`, `companyname`, `categoryid`, `location`, `type`, `requirement`, `experience`, `salary`, `employerid`, `editlimit`, `status`, `education`, `deadline`) VALUES
('631cbcd81e785', 'Junior Developer', 'SoftTech', 3, 'Narayanganj', 'Full Time', 'Html, Css, JS, React ', '1-2 years', 45, '631cbb287121e', 1, 'approved', 'Bsc in cse', '2022-09-15 13:40:00'),
('631d9ea111d72', 'Senior Developer', 'SoftTech', 4, 'Dhaka', 'Full Time', 'php developer', '1-3 years ', 60, '631cbb287121e', 1, 'approved', 'Bsc in cse', '2022-09-20 17:40:00'),
('631d9f0959611', 'Bank manager', 'SoftTech', 5, 'Narayanganj', 'Full Time', 'Computer skills, MS word, Excel', '2 years', 50, '631cbb287121e', 1, 'approved', 'BBA in Accounting', '2022-09-23 18:45:00'),
('631f4b3bbb3cc', 'Junior Executive', 'SoftTech', 7, 'Narayanganj', 'Part Time', 'Computer skills, MS word, Excel', '1-3 years ', 20, '631cbb287121e', 1, 'approved', 'BBA ', '2022-09-20 22:10:00'),
('63207ca2032b2', 'Writer', 'edusoft', 2, 'Narayanganj ', 'Work From Home', 'Excellent writing and editing skill ', '1-2 years  ', 20, '631f32f6eb444', 0, 'approved', 'Reputed institute certificates ', '2022-09-27 23:59:00'),
('63207dfdda2c5', 'Ux Designer', 'edusoft', 1, 'Narayanganj', 'Part Time', 'Photoshop, Adobe', '1 year', 25, '631f32f6eb444', 1, 'approved', 'Reputed Institute certificate', '2022-09-25 22:00:00'),
('6320803aac1ab', 'Junior Textile Manager', 'edusoft', 6, 'Dhaka', 'Full Time', 'check sample and detect ', '2 years', 45, '631f32f6eb444', 1, 'approved', 'Bsc in Textile Engineering', '2022-09-20 19:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numberofpost` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `adminid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `numberofpost`, `price`, `adminid`) VALUES
(1, 'Basic', 2, 50, '6307c8c039ff1'),
(2, 'Advanced', 5, 100, '6307c8c039ff1'),
(3, 'premium', 10, 150, '6307c8c039ff1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transid` varchar(255) DEFAULT NULL,
  `cardtype` varchar(255) DEFAULT NULL,
  `employerid` varchar(255) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `transtime` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `status`, `transid`, `cardtype`, `employerid`, `packageid`, `transtime`, `amount`) VALUES
(178, 'VALID', 'SSLCZ_TEST_631cbc9e45f41', 'BKASH-BKash', '631cbb287121e ', 1, '2022-09-10 22:36:57', '50.00'),
(179, 'VALID', 'SSLCZ_TEST_631d9dd1e6ef8', 'ABBANKIB-AB Bank', '631cbb287121e ', 1, '2022-09-11 14:37:50', '50.00'),
(180, 'VALID', 'SSLCZ_TEST_631da003645d0', 'BKASH-BKash', '631cbb287121e ', 1, '2022-09-11 14:47:11', '50.00'),
(181, 'VALID', 'SSLCZ_TEST_631da6e069780', 'BKASH-BKash', '631cbb287121e ', 1, '2022-09-11 15:16:28', '50.00'),
(182, 'VALID', 'SSLCZ_TEST_631f4acf29cf3', 'BKASH-BKash', '631cbb287121e ', 1, '2022-09-12 21:08:10', '50.00'),
(183, 'VALID', 'SSLCZ_TEST_63207c2d751b6', 'BKASH-BKash', '631f32f6eb444 ', 1, '2022-09-13 18:51:05', '50.00'),
(184, 'VALID', 'SSLCZ_TEST_63207c5e44108', 'MTBL-Mutual Trust Internet Banking', '631f32f6eb444 ', 2, '2022-09-13 18:51:53', '100.00'),
(185, 'VALID', 'SSLCZ_TEST_6324b06130af7', 'BKASH-BKash', '631cbb287121e ', 1, '2022-09-16 23:22:53', '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `authentication` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `bantime` datetime DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `additional` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `email`, `mobile`, `password`, `position`, `otp`, `authentication`, `status`, `location`, `bantime`, `education`, `skill`, `experience`, `additional`, `image`) VALUES
('631cbbe1417f4', 'Mainul Islam', 'Male', 'msiam183036@bscse.uiu.ac.bd', '01900112233', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user', 777355, 'Verified', 'active', 'Sylhet', '2022-09-13 19:02:13', 'Bsc in cse', 'Web Developer', 'Software engineer', 'photoshop', '631cbbe1417f4profilepic.jpg'),
('631f323d7255d', 'Moin khan', 'Male', 'minhajulsiam370@gmail.com', '01900112212', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'user', 973058, 'Verified', 'active', 'dhaka', '2022-09-13 19:02:15', 'Bsc in cse', 'Programming', 'Junior Software engineer', 'excel, ms word', '631f323d7255dprofile pic.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buypackage`
--
ALTER TABLE `buypackage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buypackage_ibfk_1` (`employerid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `employerid` (`employerid`),
  ADD KEY `jobpostid` (`jobpostid`),
  ADD KEY `jobapplyid` (`jobapplyid`);

--
-- Indexes for table `jobapply`
--
ALTER TABLE `jobapply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobapply_ibfk_1` (`categoryid`),
  ADD KEY `jobapply_ibfk_2` (`userid`),
  ADD KEY `jobapply_ibfk_3` (`jobid`);

--
-- Indexes for table `jobpost`
--
ALTER TABLE `jobpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employeeid` (`employerid`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_ibfk_1` (`employerid`),
  ADD KEY `payment_ibfk_2` (`packageid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buypackage`
--
ALTER TABLE `buypackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buypackage`
--
ALTER TABLE `buypackage`
  ADD CONSTRAINT `buypackage_ibfk_1` FOREIGN KEY (`employerid`) REFERENCES `employer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `admin` (`id`);

--
-- Constraints for table `interview`
--
ALTER TABLE `interview`
  ADD CONSTRAINT `interview_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `interview_ibfk_2` FOREIGN KEY (`employerid`) REFERENCES `employer` (`id`),
  ADD CONSTRAINT `interview_ibfk_3` FOREIGN KEY (`jobpostid`) REFERENCES `jobpost` (`id`),
  ADD CONSTRAINT `interview_ibfk_4` FOREIGN KEY (`jobapplyid`) REFERENCES `jobapply` (`id`);

--
-- Constraints for table `jobapply`
--
ALTER TABLE `jobapply`
  ADD CONSTRAINT `jobapply_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobapply_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobapply_ibfk_3` FOREIGN KEY (`jobid`) REFERENCES `jobpost` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobpost`
--
ALTER TABLE `jobpost`
  ADD CONSTRAINT `jobpost_ibfk_1` FOREIGN KEY (`employerid`) REFERENCES `employer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobpost_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `admin` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`employerid`) REFERENCES `employer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`packageid`) REFERENCES `package` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
