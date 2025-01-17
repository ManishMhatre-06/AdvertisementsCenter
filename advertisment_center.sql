-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2025 at 07:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advertisment_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_emailid` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_contactno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_emailid`, `admin_password`, `admin_contactno`) VALUES
(1, 'manish123', 'manish123@gmail.com', 'manish@123', '7101846738'),
(2, 'swagat123', 'swagat123@gmail.com', 'swagat@123', '1765559121'),
(3, 'sneha123', 'sneha123@gmail.com', 'sneha@123', '3192803006'),
(4, 'shravani123', 'shravani123@gmail.com', 'shravani@123', '1186542027');

-- --------------------------------------------------------

--
-- Table structure for table `banner_table`
--

CREATE TABLE `banner_table` (
  `banner_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `banner_image` blob NOT NULL,
  `banner_area` varchar(255) DEFAULT NULL,
  `banner_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner_table`
--

INSERT INTO `banner_table` (`banner_id`, `owner_id`, `banner_image`, `banner_area`, `banner_price`) VALUES
(1, 10, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333839783136362e706e672f6464646464642f303030303030, '500', 4658.03),
(2, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323439783133362e706e672f3566613264642f666666666666, '725', 4351.65),
(3, 10, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333436783130392e706e672f6363303030302f666666666666, '725', 2409.63),
(4, 10, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323639783137352e706e672f3566613264642f666666666666, '910', 3303.10),
(5, 1, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343234783233342e706e672f6666343434342f666666666666, '650', 3607.85),
(6, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343839783230322e706e672f6464646464642f303030303030, '910', 3978.19),
(7, 10, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323633783135372e706e672f3566613264642f666666666666, '1000', 3547.03),
(8, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343934783230362e706e672f3566613264642f666666666666, '725', 3467.50),
(9, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323236783133362e706e672f3566613264642f666666666666, '890', 2434.11),
(10, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333139783139372e706e672f6464646464642f303030303030, '890', 4606.41),
(11, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343231783231372e706e672f6363303030302f666666666666, '1000', 3901.34),
(12, 1, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323634783139352e706e672f3566613264642f666666666666, '910', 3791.57),
(13, 9, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333631783131382e706e672f3566613264642f666666666666, '650', 3058.77),
(14, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333630783132382e706e672f6464646464642f303030303030, '970', 581.54),
(15, 1, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343937783135382e706e672f3566613264642f666666666666, '545', 4096.11),
(16, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323930783234302e706e672f3566613264642f666666666666, '890', 2574.39),
(17, 6, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323731783130302e706e672f6363303030302f666666666666, '650', 2941.00),
(18, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333439783232362e706e672f6666343434342f666666666666, '725', 2229.24),
(19, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343235783138392e706e672f6363303030302f666666666666, '725', 3679.63),
(20, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343433783232392e706e672f3566613264642f666666666666, '500', 2939.10),
(21, 10, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343931783139312e706e672f6464646464642f303030303030, '780', 1465.96),
(22, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333830783136382e706e672f6666343434342f666666666666, '1000', 2419.44),
(23, 6, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343939783138302e706e672f6464646464642f303030303030, '725', 1554.69),
(24, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343139783234302e706e672f3566613264642f666666666666, '650', 4254.68),
(25, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343830783232312e706e672f6666343434342f666666666666, '650', 3531.25),
(26, 1, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323430783135312e706e672f6363303030302f666666666666, '1000', 1423.58),
(27, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323237783138352e706e672f6666343434342f666666666666, '650', 2197.48),
(28, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323632783230302e706e672f6464646464642f303030303030, '480', 3961.26),
(29, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323431783137392e706e672f3566613264642f666666666666, '970', 1968.73),
(30, 1, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343339783137392e706e672f6363303030302f666666666666, '725', 2506.61),
(31, 6, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343830783232382e706e672f6464646464642f303030303030, '1000', 2423.29),
(32, 10, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323433783135372e706e672f3566613264642f666666666666, '480', 3936.97),
(33, 1, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333135783139332e706e672f6666343434342f666666666666, '650', 3498.86),
(34, 10, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323039783135392e706e672f6666343434342f666666666666, '910', 3807.44),
(35, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333137783234322e706e672f6363303030302f666666666666, '1000', 2748.47),
(36, 4, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323638783231352e706e672f6464646464642f303030303030, '1000', 3334.74),
(37, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343636783133302e706e672f6363303030302f666666666666, '780', 4576.18),
(38, 4, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343536783138352e706e672f6363303030302f666666666666, '890', 1017.89),
(39, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323939783135382e706e672f6363303030302f666666666666, '725', 1327.05),
(40, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323633783134392e706e672f6666343434342f666666666666, '500', 1454.45),
(41, 6, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323838783132372e706e672f6464646464642f303030303030, '1000', 4596.90),
(42, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323731783235302e706e672f6464646464642f303030303030, '890', 3148.41),
(43, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323038783233382e706e672f3566613264642f666666666666, '890', 4103.53),
(44, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343432783132382e706e672f3566613264642f666666666666, '1000', 4773.66),
(45, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333634783234382e706e672f3566613264642f666666666666, '890', 3618.35),
(46, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343231783131332e706e672f6464646464642f303030303030, '970', 4000.18),
(47, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333931783131302e706e672f6363303030302f666666666666, '780', 4528.86),
(48, 5, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f323737783139352e706e672f6666343434342f666666666666, '970', 2622.69),
(49, 3, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f333932783137312e706e672f6666343434342f666666666666, '480', 2690.10),
(50, 2, 0x687474703a2f2f64756d6d79696d6167652e636f6d2f343431783131372e706e672f6666343434342f666666666666, '890', 4975.90);

-- --------------------------------------------------------

--
-- Table structure for table `business_table`
--

CREATE TABLE `business_table` (
  `business_id` int(11) NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `business_contactno` varchar(20) DEFAULT NULL,
  `business_emailid` varchar(255) NOT NULL,
  `business_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_table`
--

INSERT INTO `business_table` (`business_id`, `business_name`, `business_type`, `business_contactno`, `business_emailid`, `business_password`) VALUES
(1, 'Schamberger-Purdy', '', '6165625643', 'mwoollonsj@vkontakte.ru', 'wT0`g.0~n8jq'),
(2, 'Barrows-Kirlin', 'e-commerce', '8272876523', 'zvanyard0@boston.com', 'bU2!_{`(XKC`PE'),
(3, 'Fay LLC', '', '3343771513', 'sodyvoy1@reuters.com', 'xN2\"4%?I'),
(4, 'Bergstrom Group', 'travel', '3194524413', 'ggisburn2@4shared.com', 'qT1|df*5!FQW'),
(5, 'Lemke Group', NULL, '4264660297', 'edanilovitch3@jigsy.com', 'iV9!}s3~\~jR8q'),
(6, 'Morissette-Turner', '', '3061738751', 'pbowld4@elegantthemes.com', 'kD0/Hsl>K$'),
(7, 'Schmitt-Altenwerth', 'medical policy', '6756957451', 'sbedo5@1und1.de', 'kA3`~\E$4G'),
(8, 'Sipes, McDermott and Watsica', 'tour and travels', '4626359870', 'mivkovic6@github.io', 'rQ2>L/whs``Z'),
(9, 'Stiedemann-Jones', NULL, '4355729287', 'cspurr7@ucsd.edu', 'oQ7,=+l$v&#'),
(10, 'Rutherford-Brekke', 'medical policy', '6411775160', 'dcolebeck8@youtube.com', 'wD7,\G`12lHC)'),
(11, 'Kuhic LLC', 'medical policy', '2398721439', 'dfassan9@indiegogo.com', 'tB3&0rnKLA_{a?4L'),
(12, 'Wilderman Inc', NULL, '2373145167', 'mnewtona@hexun.com', 'gB1=2XO#Q7s~&'),
(13, 'O\Conner-Kunde', NULL, '2614458429', 'rjakewayb@tinypic.com', 'dF4$/|4Gf3'),
(14, 'Murphy and Sons', NULL, '2029154478', 'fmartinetsc@nyu.edu', 'dA3._XwwmJX'),
(15, 'Predovic Inc', 'e-commerce', '2625220681', 'amancerd@nationalgeographic.com', 'uA0)1u}s!@+'),
(16, 'Beatty and Sons', 'health policy', '2553674833', 'gaverye@theatlantic.com', 'wG4<4f0(gwNp('),
(17, 'Runolfsdottir, King and Schulist', 'water-park', '8399452347', 'lfantonf@dion.ne.jp', 'bX6?gp>}e9uIciX'),
(18, 'Ward-Lind', 'water-park', '2417519926', 'jmckaileg@theguardian.com', 'zA1@gNuJ1dJLLp%');

-- --------------------------------------------------------

--
-- Table structure for table `owner_table`
--

CREATE TABLE `owner_table` (
  `owner_id` int(11) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `owner_emailid` varchar(255) NOT NULL,
  `owner_password` varchar(255) NOT NULL,
  `owner_contactno` varchar(20) DEFAULT NULL,
  `owner_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner_table`
--

INSERT INTO `owner_table` (`owner_id`, `owner_name`, `owner_emailid`, `owner_password`, `owner_contactno`, `owner_address`) VALUES
(1, 'Hand Group', 'lbayldon13@google.es', 'pY1yR/+ike.Vnj#s', '3167824174', 'Room 1107'),
(2, 'Haag, Greenholt and Hickle', 'swestgate0@state.gov', 'uK6qRCd4qW', '6625843168', 'Room 645'),
(3, 'Bartoletti, Nikolaus and Wuckert', 'esisnett1@ezinearticles.com', 'oS02Iq/_zRhb@0', '4109772864', 'Apt 553'),
(4, 'Brakus Group', 'cspikings2@army.mil', 'hG5433_}F0|nFQF', '3794461726', 'Apt 728'),
(5, 'Gottlieb, Ondricka and Waelchi', 'vmelsome3@nbcnews.com', 'dV0O5l/\lEU', '2792382025', '11th Floor'),
(6, 'Schmitt-Swift', 'fgirardy4@simplemachines.org', 'mU1kc._L/w', '7017666525', 'PO Box 68701'),
(7, 'Hayes, Rippin and Bednar', 'mwainer5@hp.com', 'bH4BhXe1', '3098787879', 'Apt 127'),
(8, 'Rodriguez-Ledner', 'lmorse6@usgs.gov', 'gW5c?MKM}N@X,>', '7495262882', 'PO Box 3668'),
(9, 'Rempel-Willms', 'probertucci7@miitbeian.gov.cn', 'zF44UK$!e', '6204883648', '16th Floor'),
(10, 'Hammes, Predovic and Auer', 'jgosney8@booking.com', 'oV7r9\+c_!QH', '7752973927', 'PO Box 55725');

-- --------------------------------------------------------

--
-- Table structure for table `sales_table`
--

CREATE TABLE `sales_table` (
  `sales_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `banner_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_emailid` (`admin_emailid`);

--
-- Indexes for table `banner_table`
--
ALTER TABLE `banner_table`
  ADD PRIMARY KEY (`banner_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `business_table`
--
ALTER TABLE `business_table`
  ADD PRIMARY KEY (`business_id`),
  ADD UNIQUE KEY `business_emailid` (`business_emailid`);

--
-- Indexes for table `owner_table`
--
ALTER TABLE `owner_table`
  ADD PRIMARY KEY (`owner_id`),
  ADD UNIQUE KEY `owner_emailid` (`owner_emailid`);

--
-- Indexes for table `sales_table`
--
ALTER TABLE `sales_table`
  ADD PRIMARY KEY (`sales_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `business_id` (`business_id`),
  ADD KEY `banner_id` (`banner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner_table`
--
ALTER TABLE `banner_table`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `business_table`
--
ALTER TABLE `business_table`
  MODIFY `business_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `owner_table`
--
ALTER TABLE `owner_table`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sales_table`
--
ALTER TABLE `sales_table`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner_table`
--
ALTER TABLE `banner_table`
  ADD CONSTRAINT `banner_table_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner_table` (`owner_id`);

--
-- Constraints for table `sales_table`
--
ALTER TABLE `sales_table`
  ADD CONSTRAINT `sales_table_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner_table` (`owner_id`),
  ADD CONSTRAINT `sales_table_ibfk_2` FOREIGN KEY (`business_id`) REFERENCES `business_table` (`business_id`),
  ADD CONSTRAINT `sales_table_ibfk_3` FOREIGN KEY (`banner_id`) REFERENCES `banner_table` (`banner_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
