-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 09:05 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nba`
--

-- --------------------------------------------------------

--
-- Table structure for table `comapping`
--

CREATE TABLE IF NOT EXISTS `comapping` (
`Id` int(11) NOT NULL,
  `coCode` varchar(20) NOT NULL,
  `statement` text NOT NULL,
  `po1` int(5) DEFAULT NULL,
  `po2` int(5) DEFAULT NULL,
  `po3` int(5) DEFAULT NULL,
  `po4` int(5) DEFAULT NULL,
  `po5` int(5) DEFAULT NULL,
  `po6` int(5) DEFAULT NULL,
  `po7` int(5) DEFAULT NULL,
  `pso1` int(5) DEFAULT NULL,
  `pso2` int(5) DEFAULT NULL,
  `fieldId` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `comapping`
--

INSERT INTO `comapping` (`Id`, `coCode`, `statement`, `po1`, `po2`, `po3`, `po4`, `po5`, `po6`, `po7`, `pso1`, `pso2`, `fieldId`) VALUES
(1, 'CO008.1', 's1', 3, 3, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 'CO008.2', 's2', 2, 2, 0, 0, 2, 0, 0, 0, 0, 1),
(3, 'CO008.3', 's3', 2, 2, 2, 3, 0, 0, 0, 3, 0, 1),
(4, 'CO008.4', 's4', 3, 3, 0, 0, 0, 0, 0, 0, 0, 1),
(5, 'CO008.5', 's5', 2, 2, 0, 1, 3, 0, 1, 0, 0, 1),
(6, 'CO008.6', 's6', 2, 2, 2, 1, 0, 0, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `index`
--

CREATE TABLE IF NOT EXISTS `index` (
`Id` int(11) NOT NULL,
  `academicYear` varchar(10) NOT NULL,
  `semester` int(5) NOT NULL,
  `faculty` text NOT NULL,
  `subject` text NOT NULL,
  `subjectCode` int(10) NOT NULL,
  `abbreviation` varchar(5) NOT NULL,
  `courseSemester` varchar(10) NOT NULL,
  `coCode` varchar(10) NOT NULL,
  `th` int(5) NOT NULL,
  `poe` int(5) NOT NULL,
  `tw` int(5) NOT NULL,
  `avgMarks` int(5) NOT NULL,
  `userId` int(10) NOT NULL,
  `filename` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `index`
--

INSERT INTO `index` (`Id`, `academicYear`, `semester`, `faculty`, `subject`, `subjectCode`, `abbreviation`, `courseSemester`, `coCode`, `th`, `poe`, `tw`, `avgMarks`, `userId`, `filename`) VALUES
(1, '2020-21', 3, 'Khan sir', 'Science', 20015, 'BMA', 'CO3I', 'CO008', 70, 0, 30, 50, 1, 'BMA2020-21.csv'),
(2, '2021-22', 5, 'Patil sir', 'Netwotk', 45671, 'DCC', 'CO5I', 'CO0051', 40, 0, 60, 50, 1, 'DCC2021-22.csv'),
(3, '2020-21', 3, 'aaaa', 'Physics', 46814, 'aaa', 'aaa', 'CO1001', 70, 0, 30, 45, 2, NULL),
(4, '2021-22', 6, 'ZZ', 'kuch Bhi', 12213, '23', 'bbb', '213', 12, 12, 12, 65, 1, 'Book1.csv'),
(5, 'dfds', 2, 'dfgdf', 'dfgdf', 546, 'fdgdf', 'fgdd', 'dfgdf', -4545454, -456, -56, 456, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`Id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Id`, `username`, `password`) VALUES
(1, 'khansir', 'pbkdf2:sha256:150000$jllcfg4p$b3227221474afc5ebfd9a77111c34eb468b1248fd9b1e1bde6cdaa2a3a5c2c4f'),
(2, 'test', 'pbkdf2:sha256:150000$zgV75bD7$00836c4cf27f1402fa1012816489446d002e8f55c9e1ae7c82494b2be030a53a'),
(3, 'test2', 'pbkdf2:sha256:150000$6YLiDEyF$e7622286ed2019d13d92650c4f7445c69197bd08beb6f3b0290da741219d33d5');

-- --------------------------------------------------------

--
-- Table structure for table `studentlist`
--

CREATE TABLE IF NOT EXISTS `studentlist` (
`id` int(11) NOT NULL,
  `rollNo` int(11) NOT NULL,
  `enrollNo` int(11) NOT NULL,
  `studentsName` text NOT NULL,
  `fieldId` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=139 ;

--
-- Dumping data for table `studentlist`
--

INSERT INTO `studentlist` (`id`, `rollNo`, `enrollNo`, `studentsName`, `fieldId`) VALUES
(1, 33101, 1215010305, ' SURADKAR JAYASHREE BHAGAJI', 1),
(2, 33102, 1315010150, ' DEHADRAY SHIVANI RAJENDRA', 1),
(3, 33103, 1415010092, ' WANKHEDE POOJA DIPAK', 1),
(4, 33104, 1415010202, ' SUHAS SANJAY DEHADE', 1),
(5, 33105, 1515010031, ' SHAHANE KOMAL KARBHARI', 1),
(6, 33106, 1515010036, ' SABLE SHRADDHA VIJAY', 1),
(7, 33107, 1515010044, ' PADME AARTI NAMDEO', 1),
(8, 33108, 1515010046, ' BANKAR SWAPNIL RAJU', 1),
(9, 33109, 1515010048, ' GAIKWAD ASHWINI YASHWANT', 1),
(10, 33110, 1515010051, ' SHARDUL NEHA ROHIDAS', 1),
(11, 33111, 1515010101, 'HAREL GEETANJALI BHAGWAN', 1),
(12, 33112, 1515010104, 'JOSHI SHUBHANGI LAXMIKANT ', 1),
(13, 33113, 1515010106, ' NIKAM VARSHA PRAKASH', 1),
(14, 33114, 1515010112, ' DANDEKAR RUTUJA VASANT', 1),
(15, 33115, 1515010118, ' SHUKLA SAMRUDHI GOPALKRISHNA', 1),
(16, 33116, 1515010126, ' MOGRE RUCHITA RAMESHWAR', 1),
(17, 33117, 1515010137, ' KHAN MOHAMMED SOHAIL ', 1),
(18, 33118, 1515010140, 'JOSHI PRATHMESH NANDKUMAR', 1),
(19, 33119, 1615010001, 'PATIL DHANASHREE KRISHNA', 1),
(20, 33120, 1615010021, ' SONAWANE MANISHA RAOSAHEB', 1),
(21, 33121, 1615010028, ' KACHWAH GAYATRI AJMATSINH', 1),
(22, 33122, 1615010022, ' GIGANI AFZAL AKBAR', 1),
(23, 33123, 1615010032, ' KAMBLE AMOL SUNIL', 1),
(24, 33124, 1615010035, ' KALLOLE SAKSHI SHRINIVAS', 1),
(25, 33125, 1615010038, ' DESHPANDE REVATI PRASHANT', 1),
(26, 33126, 1615010040, ' PANMAND TEJAL SAMPAT', 1),
(27, 33127, 1615010042, ' PANDHEKAR SHRIKANT RAJESH', 1),
(28, 33128, 1615010046, ' TANGADE PRIYA PRASHANT', 1),
(29, 33129, 1615010050, ' POPHALE ABHISHEK LAXMIKANT', 1),
(30, 33130, 1615010061, ' GADGILE KISHORI KAILAS', 1),
(31, 33131, 1615010063, ' KUTE AMRUTA SANJAY', 1),
(32, 33132, 1615010069, ' ROHOKALE PALLAVI SURESH', 1),
(33, 33133, 1615010071, ' GANGAWANE PRATIKSHA RAJENDRA', 1),
(34, 33134, 1615010073, ' SABIR MUSTANSIR ABDEALI', 1),
(35, 33135, 1615010074, ' SANKAYE MANSI SATISH', 1),
(36, 33136, 1615010101, ' BULDAK MUKESHKUMAR KESHARRAM', 1),
(37, 33137, 1615010106, ' PANDE SAKSHI SHAILESH', 1),
(38, 33138, 1615010107, ' SHERE SHALAKA SHASHIR', 1),
(39, 33139, 1615010111, ' PATHARE RUTUJA PRAVIN', 1),
(40, 33140, 1615010120, ' KHADKE SHUBHANGI LAXMAN', 1),
(41, 33141, 1615010124, ' GIRGAONKAR DIKSHA LAXMIKANT', 1),
(42, 33142, 1615010131, ' SARODE ABHISHEK SANJEEV', 1),
(43, 33143, 1615010135, ' KULKARNI PRATIK RAHUL', 1),
(44, 33144, 1615010138, ' CHAVAN SNEHA BABASAHEB', 1),
(45, 33145, 1615010140, ' BHIVSANE PALLAVI PRADIP', 1),
(46, 33146, 1615010150, ' JOSHI KALYANI PANDURANG', 1),
(47, 33147, 1615010155, ' PATIL KUNDAN RAJENDRA', 1),
(48, 33148, 1615010165, ' MAHALANKAR SAURADH SANJAY', 1),
(49, 33149, 1615010168, ' BAHIWAL NEHA VIJAY', 1),
(50, 33150, 1615010185, ' MENDHE RAVI PARASHRAM', 1),
(51, 33151, 1615010188, ' MENDHE RAJ PARASHRAM', 1),
(52, 33152, 1615010273, ' WAGH JAGRUTI SUNIL', 1),
(53, 33153, 1615010274, ' GODSE POOJA PANDHARINATH', 1),
(54, 33154, 1615010276, ' LAHANE NIKITA UTTAM', 1),
(55, 33155, 1715010053, ' DOBHAL SHUBHAM RAMCHANDRA', 1),
(56, 33156, 1715010056, ' SHAIKH SABIR SHAIKH TAHER', 1),
(57, 33157, 1715010057, ' TRISHITA PANJA', 1),
(58, 33158, 1715010058, ' KHODASKAR SHREYASH PRASHANT', 1),
(59, 33159, 1715010060, ' SAWANDKAR SUDARSHAN BALAJI', 1),
(60, 33160, 1715010061, ' PATHAK JAYESH PRAMOD', 1),
(61, 33161, 1715010064, ' SHAIKH IRFAN SHAFEEK', 1),
(62, 33162, 1715010065, ' GADKARI PRATHAMESH NARENDRA', 1),
(63, 33163, 1715010066, ' SHAIKH SARA MOHAMMED SAFIULLAH', 1),
(64, 33201, 1311540002, ' KAYANDE KRISHNA CHANDRAKANT', 1),
(65, 33206, 1515010073, ' BEDVE GAYATREE LALIT', 1),
(66, 33212, 1615010471, ' TATHE RISHIKESH RAJENDRA', 1),
(67, 33219, 1615010181, ' KACHWAH AMARESHSINH AJMATSINH', 1),
(68, 33220, 1615010261, ' MODI PRATIKSHA GOKULPRASAD', 1),
(69, 33229, 1416300008, ' SIDDAMSHETTY AKASH NAGRAJ', 1),
(70, 33101, 1215010305, 'Ariyan Motowani', 2),
(71, 33102, 1315010150, ' DEHADRAY SHIVANI RAJENDRA', 2),
(72, 33103, 1415010092, ' WANKHEDE POOJA DIPAK', 2),
(73, 33104, 1415010202, ' SUHAS SANJAY DEHADE', 2),
(74, 33105, 1515010031, ' SHAHANE KOMAL KARBHARI', 2),
(75, 33106, 1515010036, ' SABLE SHRADDHA VIJAY', 2),
(76, 33107, 1515010044, ' PADME AARTI NAMDEO', 2),
(77, 33108, 1515010046, ' BANKAR SWAPNIL RAJU', 2),
(78, 33109, 1515010048, ' GAIKWAD ASHWINI YASHWANT', 2),
(79, 33110, 1515010051, ' SHARDUL NEHA ROHIDAS', 2),
(80, 33111, 1515010101, 'HAREL GEETANJALI BHAGWAN', 2),
(81, 33112, 1515010104, 'JOSHI SHUBHANGI LAXMIKANT ', 2),
(82, 33113, 1515010106, ' NIKAM VARSHA PRAKASH', 2),
(83, 33114, 1515010112, ' DANDEKAR RUTUJA VASANT', 2),
(84, 33115, 1515010118, ' SHUKLA SAMRUDHI GOPALKRISHNA', 2),
(85, 33116, 1515010126, ' MOGRE RUCHITA RAMESHWAR', 2),
(86, 33117, 1515010137, ' KHAN MOHAMMED SOHAIL ', 2),
(87, 33118, 1515010140, 'JOSHI PRATHMESH NANDKUMAR', 2),
(88, 33119, 1615010001, 'PATIL DHANASHREE KRISHNA', 2),
(89, 33120, 1615010021, ' SONAWANE MANISHA RAOSAHEB', 2),
(90, 33121, 1615010028, ' KACHWAH GAYATRI AJMATSINH', 2),
(91, 33122, 1615010022, ' GIGANI AFZAL AKBAR', 2),
(92, 33123, 1615010032, ' KAMBLE AMOL SUNIL', 2),
(93, 33124, 1615010035, ' KALLOLE SAKSHI SHRINIVAS', 2),
(94, 33125, 1615010038, ' DESHPANDE REVATI PRASHANT', 2),
(95, 33126, 1615010040, ' PANMAND TEJAL SAMPAT', 2),
(96, 33127, 1615010042, ' PANDHEKAR SHRIKANT RAJESH', 2),
(97, 33128, 1615010046, ' TANGADE PRIYA PRASHANT', 2),
(98, 33129, 1615010050, ' POPHALE ABHISHEK LAXMIKANT', 2),
(99, 33130, 1615010061, ' GADGILE KISHORI KAILAS', 2),
(100, 33131, 1615010063, ' KUTE AMRUTA SANJAY', 2),
(101, 33132, 1615010069, ' ROHOKALE PALLAVI SURESH', 2),
(102, 33133, 1615010071, ' GANGAWANE PRATIKSHA RAJENDRA', 2),
(103, 33134, 1615010073, ' SABIR MUSTANSIR ABDEALI', 2),
(104, 33135, 1615010074, ' SANKAYE MANSI SATISH', 2),
(105, 33136, 1615010101, ' BULDAK MUKESHKUMAR KESHARRAM', 2),
(106, 33137, 1615010106, ' PANDE SAKSHI SHAILESH', 2),
(107, 33138, 1615010107, ' SHERE SHALAKA SHASHIR', 2),
(108, 33139, 1615010111, ' PATHARE RUTUJA PRAVIN', 2),
(109, 33140, 1615010120, ' KHADKE SHUBHANGI LAXMAN', 2),
(110, 33141, 1615010124, ' GIRGAONKAR DIKSHA LAXMIKANT', 2),
(111, 33142, 1615010131, ' SARODE ABHISHEK SANJEEV', 2),
(112, 33143, 1615010135, ' KULKARNI PRATIK RAHUL', 2),
(113, 33144, 1615010138, ' CHAVAN SNEHA BABASAHEB', 2),
(114, 33145, 1615010140, ' BHIVSANE PALLAVI PRADIP', 2),
(115, 33146, 1615010150, ' JOSHI KALYANI PANDURANG', 2),
(116, 33147, 1615010155, ' PATIL KUNDAN RAJENDRA', 2),
(117, 33148, 1615010165, ' MAHALANKAR SAURADH SANJAY', 2),
(118, 33149, 1615010168, ' BAHIWAL NEHA VIJAY', 2),
(119, 33150, 1615010185, ' MENDHE RAVI PARASHRAM', 2),
(120, 33151, 1615010188, ' MENDHE RAJ PARASHRAM', 2),
(121, 33152, 1615010273, ' WAGH JAGRUTI SUNIL', 2),
(122, 33153, 1615010274, ' GODSE POOJA PANDHARINATH', 2),
(123, 33154, 1615010276, ' LAHANE NIKITA UTTAM', 2),
(124, 33155, 1715010053, ' DOBHAL SHUBHAM RAMCHANDRA', 2),
(125, 33156, 1715010056, ' SHAIKH SABIR SHAIKH TAHER', 2),
(126, 33157, 1715010057, ' TRISHITA PANJA', 2),
(127, 33158, 1715010058, ' KHODASKAR SHREYASH PRASHANT', 2),
(128, 33159, 1715010060, ' SAWANDKAR SUDARSHAN BALAJI', 2),
(129, 33160, 1715010061, ' PATHAK JAYESH PRAMOD', 2),
(130, 33161, 1715010064, ' SHAIKH IRFAN SHAFEEK', 2),
(131, 33162, 1715010065, ' GADKARI PRATHAMESH NARENDRA', 2),
(132, 33163, 1715010066, ' SHAIKH SARA MOHAMMED SAFIULLAH', 2),
(133, 33201, 1311540002, ' KAYANDE KRISHNA CHANDRAKANT', 2),
(134, 33206, 1515010073, ' BEDVE GAYATREE LALIT', 2),
(135, 33212, 1615010471, ' TATHE RISHIKESH RAJENDRA', 2),
(136, 33219, 1615010181, ' KACHWAH AMARESHSINH AJMATSINH', 2),
(137, 33220, 1615010261, ' MODI PRATIKSHA GOKULPRASAD', 2),
(138, 33229, 1416300008, ' SIDDAMSHETTY AKASH NAGRAJ', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comapping`
--
ALTER TABLE `comapping`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `index`
--
ALTER TABLE `index`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `studentlist`
--
ALTER TABLE `studentlist`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comapping`
--
ALTER TABLE `comapping`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `index`
--
ALTER TABLE `index`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `studentlist`
--
ALTER TABLE `studentlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
