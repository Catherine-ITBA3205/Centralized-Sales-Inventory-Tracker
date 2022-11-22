-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 01:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anns`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `BRANCH_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `BARANGAY` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`BRANCH_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`, `BARANGAY`) VALUES
(12, 'Anns Home Main Branch', 115, '(043) 980 7', ''),
(20, 'Anns Home P.Burgos Branch', 169, '(043) 984 6', ''),
(21, 'Anns Home SM Batangas Branch', 170, '(043) 984 6', ''),
(22, 'Anns Home Bauan Branch', 171, '(043) 980 7', ''),
(23, 'Anns Home Kumintang Branch', 172, '(043) 984 6', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(1, 'Whole Cakes'),
(2, 'Cookies'),
(3, 'Cupcakes'),
(4, 'Pastries'),
(5, 'Mini Cakes'),
(6, 'Slice Cakes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `NAME`, `PHONE_NUMBER`) VALUES
(11, 'A Walk in Customer Main Store', ''),
(12, 'A Walk in Customer SM Batangas', ''),
(13, 'A Walk in Customer Bauan Branch', ''),
(14, 'A Walk in Customer Kumintang Branch', ''),
(15, 'A Walk in Customer P.Burgos Branch', ''),
(16, 'Facebook Online Order', ''),
(17, 'FoodPanda Delivery', ''),
(18, 'Maxim Delivery', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(1, 'Anns', 'Home', 'Female', 'annshome01@gmail.com', '09123456789', 1, '2022-11-01', 113),
(2, 'Bauan', 'Branch', 'Female', 'bauanbranch@gmail.com', '(043) 980 7', 2, '2020-04-12', 167),
(3, 'Kumintang', 'Branch', 'Female', 'kumintangbranch@gmail.com', '(043) 984 6', 2, '2020-02-06', 173),
(5, 'SM Batangas', 'Branch', 'Female', 'smbatangasbranch@gmail.com', '0439846907', 2, '2020-06-19', 175),
(7, 'P.Burgos', 'Branch', 'Female', 'pburgosbranch@gmail.com', '0439846908', 2, '2020-06-23', 177);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL,
  `BARANGAY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`, `BARANGAY`) VALUES
(111, 'Negros Occidental', 'Bacolod City', ''),
(112, 'Negros Occidental', 'Bacolod City', ''),
(113, 'Batangas', 'Batangas', ''),
(114, 'Negros Occidental', 'Himamaylan', ''),
(115, 'Batangas', 'Batangas City', 'Bolbok'),
(116, 'Negros Occidental', 'Isabella', ''),
(126, 'Negros Occidental', 'Binalbagan', ''),
(130, 'Cebu', 'Bogo City', ''),
(131, 'Negros Occidental', 'Himamaylan', ''),
(132, 'Negros', 'Jupiter', ''),
(133, 'Aincrad', 'Floor 91', ''),
(134, 'negros', 'binalbagan', ''),
(135, 'hehe', 'tehee', ''),
(136, 'PLANET YEKOK', 'KOKEY', ''),
(137, 'Camiguin', 'Catarman', ''),
(138, 'Camiguin', 'Catarman', ''),
(139, 'Negros Occidental', 'Binalbagan', ''),
(140, 'Batangas', 'Lemery', ''),
(141, 'Capiz', 'Panay', ''),
(142, 'Camarines Norte', 'Labo', ''),
(143, 'Camarines Norte', 'Labo', ''),
(144, 'Camarines Norte', 'Labo', ''),
(145, 'Camarines Norte', 'Labo', ''),
(146, 'Capiz', 'Pilar', ''),
(147, 'Negros Occidental', 'Moises Padilla', ''),
(148, 'a', 'a', ''),
(149, '1', '1', ''),
(150, 'Negros Occidental', 'Himamaylan', ''),
(151, 'Masbate', 'Mandaon', ''),
(152, 'Aklanas', 'Madalagsasa', ''),
(153, 'Batangas', 'Mabini', ''),
(154, 'Bataan', 'Morong', ''),
(155, 'Batangas', 'Bauan', 'Poblacion'),
(156, 'Batangas', 'Bauan', ''),
(157, 'Camarines Norte', 'Labo', ''),
(158, 'Negros Occidental', 'Binalbagan', ''),
(159, 'Batangas', 'Bauan', 'Poblacion'),
(160, 'Batangas', 'Batangas', 'Bolbok'),
(161, 'Batangas', 'Batangas', 'Kumintang Ibaba'),
(162, 'Batangas', 'Batangas City', ''),
(163, 'Batangas', 'Batangas City', ''),
(164, 'Batangas', 'Batangas City', ''),
(165, 'Batangas', 'Batangas City', ''),
(166, 'Batangas', 'Bauan', 'Poblacion'),
(167, 'Batangas', 'Bauan', ''),
(168, 'Batangas', 'Batangas City', ''),
(169, 'Batangas', 'Batangas City', 'P. Burgos St.'),
(170, 'Batangas', 'Batangas City', 'Pallocan West'),
(171, 'Batangas', 'Bauan', 'San Deigo St.'),
(172, 'Batangas', 'Batangas City', 'National Road'),
(173, 'Batangas', 'Batangas City', ''),
(174, 'Batangas', 'Batangas City', ''),
(175, 'Batangas', 'Batangas City', ''),
(176, 'Batangas', 'Batangas City', ''),
(177, 'Batangas', 'Batangas City', '');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Anns', 'Home', 113, 'annshome@gmail.com', '09124033805');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) DEFAULT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `PRICE`, `CATEGORY_ID`, `BRANCH_ID`, `DATE_STOCK_IN`) VALUES
(4, 'BB-01', 'Banana Layers (Whole cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (9 rnd).\r\n', 5, 550, 1, 22, '2022-01-01'),
(5, 'PB-01', 'Banana Layers (Whole cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (9 rnd).\r\n', 0, 550, 1, 23, '2022-01-01'),
(6, 'BB-02', 'Banana Layers (Mini cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (7 rnd).', 2, 290, 5, 22, '2022-12-31'),
(7, 'MB-01', 'Banana Layers (Whole cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (9 rnd).\r\n', 5, 550, 1, 12, '2022-11-22'),
(8, 'MB-02', 'Banana Layers (Mini cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (7 rnd).\r\n', 5, 290, 5, 12, '2022-11-22'),
(9, 'PB-02', 'Banana Layers (Mini cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (7 rnd).\r\n', 4, 290, 5, 20, '2022-11-22'),
(10, 'SB-01', 'Banana Layers (Whole cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (9 rnd).\r\n', 5, 550, 1, 21, '2022-11-22'),
(11, 'KB-01', 'Banana Layers (Whole cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (9 rnd).\r\n', 5, 550, 1, 23, '2022-11-22'),
(12, 'SB-02', 'Banana Layers (Mini cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (7 rnd).\r\n', 5, 290, 5, 21, '2022-11-22'),
(13, 'KB-02', 'Banana Layers (Mini cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (7 rnd).\r\n', 5, 290, 5, 23, '2022-11-22'),
(14, 'MB-03', 'Chocolate Chips Cookies(Big Pouch 12 pcs)', 'Cookies loaded with chocolate morsels\r\n', 5, 80, 2, 12, '2022-11-22'),
(15, 'BB-03', 'Chocolate Chips Cookies(Big Pouch 12 pcs)', 'Cookies loaded with chocolate morsels\r\n', 5, 80, 2, 22, '2022-11-22'),
(16, 'PB-03', 'Chocolate Chips Cookies(Big Pouch 12 pcs)', 'Cookies loaded with chocolate morsels\r\n', 4, 80, 2, 20, '2022-11-22'),
(17, 'SB-03', 'Chocolate Chips Cookies(Big Pouch 12 pcs)', 'Cookies loaded with chocolate morsels\r\n', 5, 80, 2, 21, '2022-11-22'),
(18, 'KB-03', 'Chocolate Chips Cookies(Big Pouch 12 pcs)', 'Cookies loaded with chocolate morsels\r\n', 5, 80, 2, 23, '2022-11-22'),
(19, 'BB-04', 'Cheesecupcakes(1 piece)', 'Soft and moist butter cheese cupcakes\r\n', 5, 30, 3, 22, '2022-11-22'),
(20, 'KB-04', 'Cheesecupcakes(1 piece)', 'Soft and moist butter cheese cupcakes\r\n', 5, 30, 3, 23, '2022-11-22'),
(21, 'MB-04', 'Cheesecupcakes(1 piece)', 'Soft and moist butter cheese cupcakes\r\n', 5, 30, 3, 12, '2022-11-22'),
(22, 'PB-04', 'Cheesecupcakes(1 piece)', 'Soft and moist butter cheese cupcakes\r\n', 3, 30, 3, 20, '2022-11-22'),
(23, 'SB-04', 'Cheesecupcakes(1 piece)', 'Soft and moist butter cheese cupcakes\r\n', 5, 30, 3, 21, '2022-11-22'),
(24, 'BB-05', 'Macaroons(Whole box 36 pcs)', 'Moist chewy coconut macaroons\r\n', 5, 185, 4, 22, '2022-11-22'),
(25, 'KB-05', 'Macaroons(Whole box 36 pcs)', 'Moist chewy coconut macaroons\r\n', 5, 185, 4, 23, '2022-11-22'),
(26, 'MB-05', 'Macaroons(Whole box 36 pcs)', 'Moist chewy coconut macaroons\r\n', 5, 185, 4, 12, '2022-11-22'),
(27, 'PB-05', 'Macaroons(Whole box 36 pcs)', 'Moist chewy coconut macaroons\r\n', 2, 185, 4, 20, '2022-11-22'),
(28, 'SB-05', 'Macaroons(Whole box 36 pcs)', 'Moist chewy coconut macaroons\r\n', 5, 185, 4, 21, '2022-11-22'),
(29, 'BB-06', 'Boston Cream Cake (Whole cake)', 'Moist vanilla sponge cake with whipped cream frosting, topped with dark chocolate ganache (9 rnd).\r\n', 5, 560, 1, 22, '2022-11-22'),
(30, 'KB-06', 'Boston Cream Cake (Whole cake)', 'Moist vanilla sponge cake with whipped cream frosting, topped with dark chocolate ganache (9 rnd).\r\n', 5, 560, 1, 23, '2022-11-22'),
(31, 'MB-06', 'Boston Cream Cake (Whole cake)', 'Moist vanilla sponge cake with whipped cream frosting, topped with dark chocolate ganache (9 rnd).\r\n', 5, 560, 1, 12, '2022-11-22'),
(32, 'PB-06', 'Boston Cream Cake (Whole cake)', 'Moist vanilla sponge cake with whipped cream frosting, topped with dark chocolate ganache (9 rnd).\r\n', 4, 560, 1, 20, '2022-11-22'),
(33, 'SB-06', 'Boston Cream Cake (Whole cake)', 'Moist vanilla sponge cake with whipped cream frosting, topped with dark chocolate ganache (9 rnd).\r\n', 5, 560, 1, 21, '2022-11-22'),
(34, 'BB-07', 'Carrot Cake (Slice)', 'Two layers of moist carrot cake with cream cheese frosting (Slice).\r\n', 5, 88, 6, 22, '2022-11-22'),
(35, 'KB-07', 'Carrot Cake (Slice)', 'Two layers of moist carrot cake with cream cheese frosting (Slice).\r\n', 5, 88, 6, 23, '2022-11-22'),
(36, 'MB-07', 'Carrot Cake (Slice)', 'Two layers of moist carrot cake with cream cheese frosting (Slice).\r\n', 5, 88, 6, 12, '2022-11-22'),
(37, 'PB-07', 'Carrot Cake (Slice)', 'Two layers of moist carrot cake with cream cheese frosting (Slice).\r\n', 4, 88, 6, 20, '2022-11-22'),
(38, 'SB-07', 'Carrot Cake (Slice)', 'Two layers of moist carrot cake with cream cheese frosting (Slice).\r\n', 5, 88, 6, 21, '2022-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `T_DATE` date NOT NULL DEFAULT current_timestamp(),
  `BRANCH_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`, `T_DATE`, `BRANCH_ID`) VALUES
(1, 20, '6', '1,633.00', '174.96', '1,458.04', '174.96', '1,633.00', '1500', '2022-11-21', '1121200952', '2022-11-22', 20);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL,
  `DATE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`, `DATE`) VALUES
(57, '1121200952', 'Boston Cream Cake (Whole cake)', '1', '560', 'Bauan', 'Cashier', '2022-11-22'),
(58, '1121200952', 'Chocolate Chips Cookies(Big Pouch 12 pcs)', '1', '80', 'Bauan', 'Cashier', '2022-11-22'),
(59, '1121200952', 'Cheesecupcakes(1 piece)', '2', '30', 'Bauan', 'Cashier', '2022-11-22'),
(60, '1121200952', 'Macaroons(Whole box 36 pcs)', '3', '185', 'Bauan', 'Cashier', '2022-11-22'),
(61, '1121200952', 'Banana Layers (Mini cake)', '1', '290', 'Bauan', 'Cashier', '2022-11-22'),
(62, '1121200952', 'Carrot Cake (Slice)', '1', '88', 'Bauan', 'Cashier', '2022-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL,
  `BRANCH_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`, `BRANCH_ID`) VALUES
(1, 1, 'AnnsHome', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 12),
(2, 2, 'Cashier_Bauan', 'dd50bccc48844bf390a855cbd2119843f2e13c4c', 2, 20),
(3, 3, 'Cashier_Kumintang', '32ce40b5f2bd8469fab07ef38edb272310924fb1', 2, 21),
(4, 5, 'Cashier_SMBatangas', '8123244aef55227f2aaf4895811aeb9306176cf8', 2, 22),
(5, 7, 'Cashier_PBurgos', '83994b06b1054c0b4e42f25052ec7f653d7d41d6', 2, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`BRANCH_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD KEY `BRANCH_ID` (`BRANCH_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `BRANCH_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`BRANCH_ID`) REFERENCES `branches` (`BRANCH_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`TRANS_D_ID`) REFERENCES `transaction_details` (`TRANS_D_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
