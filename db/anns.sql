-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2022 at 08:28 AM
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
(1, 'Cakes'),
(2, 'Cookies'),
(3, 'Cupcakes'),
(4, 'Pastries');

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
  `NAME` varchar(50) DEFAULT NULL,
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
(1, 'C-001', 'Banana Layers (Whole cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (9 rnd).\r\n', 6, 550, 1, 12, '2022-11-12'),
(2, 'C-002', 'Banana Layers (Mini cake)', 'Moist Banana Cake with dark chocolate ganache and walnuts (7 rnd).\r\n', 10, 290, 1, 12, '2022-11-12'),
(3, 'C-003', 'Boston Cream Cake (Whole cake)', 'Moist vanilla sponge cake with whipped cream frosting, topped with dark chocolate ganache (9 rnd).\r\n', 10, 560, 1, 12, '2022-11-12'),
(4, 'C-004', 'Boston Cream Cake (Mini cake)', 'Moist vanilla sponge cake with whipped cream frosting, topped with dark chocolate ganache (7 rnd).\r\n', 10, 290, 1, 12, '2022-11-12'),
(5, 'C-005', 'Caramel Cake (Whole Cake)', 'Simply vanilla sponge cake with caramel frosting, but not too sweet (9 rnd).\r\n', 10, 580, 1, 12, '2022-11-12'),
(6, 'C-006', 'Caramel Cake (Mini Cake)', 'Simply vanilla sponge cake with caramel frosting, but not too sweet (7 rnd).\r\n', 10, 298, 1, 12, '2022-11-12'),
(7, 'C-007', 'Carrot Cake (Whole Cake)', 'Two layers of moist carrot cake with cream cheese frosting (9rnd).\r\n', 10, 815, 1, 12, '2022-11-12'),
(8, 'C-008', 'Carrot Cake (Mini Cake)', 'Two layers of moist carrot cake with cream cheese frosting (7rnd).\r\n', 10, 430, 1, 12, '2022-11-12'),
(9, 'C-009', 'Carrot Cake (Slice)', 'Two layers of moist carrot cake with cream cheese frosting (Slice).\r\n', 10, 88, 1, 12, '2022-11-12'),
(10, 'C-010', 'Coco Pandan Cake (Whole Cake)', 'Moist pandan sponge cake layeres with creamcheese frosting, topped with pandan jelly, lined with toasted sweatened coconut (9 rnd).\r\n', 10, 720, 1, 12, '2022-11-12'),
(11, 'C-011', 'Coco Pandan Cake (Mini Cake)', 'Moist pandan sponge cake layeres with creamcheese frosting, topped with pandan jelly, lined with toasted sweatened coconut (7 rnd).\r\n', 10, 375, 1, 12, '2022-11-12'),
(12, 'C-012', 'Fudge Chocolate Caramel Cake (Whole Cake)', 'Moist chocolate cake filled with caramel custard with fudge chocolate frosting (9rnd).\r\n', 10, 670, 1, 12, '2022-11-12'),
(13, 'C-013', 'Fudge Chocolate Caramel Cake (Mini Cake)', 'Moist chocolate cake filled with caramel custard with fudge chocolate frosting (7rnd).\r\n', 10, 350, 1, 12, '2022-11-12'),
(14, 'C-014', 'Fudge Chocolate Caramel Cake (Slice)', 'Moist chocolate cake filled with caramel custard with fudge chocolate frosting (Slice).\r\n', 10, 65, 1, 12, '2022-11-12'),
(15, 'C-015', 'Mango Cream Cake(Whole Cake)', 'Moist Sponge cake, with a layer of mango mousse, frosted with whipped cream. (available only during mango season)(9 rnd).\r\n', 10, 850, 1, 12, '2022-11-12'),
(16, 'C-016', 'Mango Cream Cake(Mini Cake)', 'Moist Sponge cake, with a layer of mango mousse, frosted with whipped cream. (available only during mango season)(7 rnd).\r\n', 10, 440, 1, 12, '2022-11-12'),
(17, 'C-017', 'Matcha Cake (Whole Cake)', 'Matcha flavored sponge cake frosted with chocolate ganache with matcha buttercream topping(7rnd).\r\n', 10, 680, 1, 12, '2022-11-12'),
(18, 'C-018', 'Matcha Cake (Mini Cake)', 'Matcha flavored sponge cake frosted with chocolate ganache with matcha buttercream topping(9rnd).\r\n', 10, 350, 1, 12, '2022-11-12'),
(19, 'C-019', 'Mochaccino (Whole Cake)', 'Layers of moist chocolate coffee cake, and mocha creamcheese frosting(9 rnd).\r\n', 10, 798, 1, 12, '2022-11-12'),
(20, 'C-020', 'Mochaccino (Mini Cake)', 'Layers of moist chocolate coffee cake, and mocha creamcheese frosting(7 rnd).\r\n', 10, 418, 1, 12, '2022-11-13'),
(21, 'C-021', 'Nelusko (Whole Cake)', 'Soft moist mocha sponge cake with mocha buttercream frosting topped with crushed almond pralines (9 rnd)\r\n', 10, 700, 1, 12, '2022-11-13'),
(22, 'C-022', 'Nelusko (Mini Cake)', 'Soft moist mocha sponge cake with mocha buttercream frosting topped with crushed almond pralines (9 rnd)\r\n', 10, 370, 1, 12, '2022-11-13'),
(23, 'C-023', 'Red Velvet Cake (Whole Cake)', '3 layers of red velvety cake and creamcheese frosting (9 rnd).\r\n', 10, 680, 1, 12, '2022-11-13'),
(24, 'C-024', 'Red Velvet Cake (Mini Cake)', '4 layers of red velvety cake and creamcheese frosting (7 rnd).\r\n', 10, 350, 1, 12, '2022-11-13'),
(25, 'C-025', 'Red Velvet Cake (Slice)', '5 layers of red velvety cake and creamcheese frosting (Slice).\r\n', 10, 70, 1, 12, '2022-11-13'),
(26, 'C-026', 'Salted Caramel Cake (Whole Cake)', '1 layer of sponge cake base, with salted caramel frosting and piped buttercream flowers (7 rnd).', 10, 575, 1, 12, '2022-11-13'),
(27, 'C-027', 'Salted Caramel Cake (Mini Cake)', '2 layer of sponge cake base, with salted caramel frosting and piped buttercream flowers (9 rnd).\r\n', 10, 295, 1, 12, '2022-11-13'),
(28, 'C-028', 'Strawberry Cream Cake (Whole Cake)', 'Sponge cake base, with strawberry creamcheese filling, frosted with whipped cream & strawberry syrup drizzle (9 rnd).\r\n', 10, 835, 1, 12, '2022-11-13'),
(29, 'C-029', 'Strawberry Cream Cake (Mini Cake)', 'Sponge cake base, with strawberry creamcheese filling, frosted with whipped cream & strawberry syrup drizzle (7 rnd).\r\n', 10, 430, 1, 12, '2022-11-13'),
(30, 'C-030', 'Tiramisu (Whole Cake)', '4 layers of sponge cake, brushed with coffee brandy & creamcheese. Dusted with cocoa powder & the sides covered with almonds (9 rnd).\r\n', 10, 825, 1, 12, '2022-11-13'),
(31, 'C-031', 'Tiramisu (Mini Cake)', '5 layers of sponge cake, brushed with coffee brandy & creamcheese. Dusted with cocoa powder & the sides covered with almonds (7 rnd).\r\n', 10, 425, 1, 12, '2022-11-13'),
(32, 'C-032', 'Triple Chocolate Mousse Cake (Whole Cake)', 'Moist dark chocolate cake bottom, followed by milk chocolate mousse, topped with white chocolate mousse (9 rnd).\r\n', 10, 710, 1, 12, '2022-11-13'),
(33, 'C-033', 'Triple Chocolate Mousse Cake (Mini Cake)', 'Moist dark chocolate cake bottom, followed by milk chocolate mousse, topped with white chocolate mousse (7 rnd).\r\n', 10, 375, 1, 12, '2022-11-13'),
(34, 'C-034', 'Tabliya Cake (Whole Cake)', 'Cake & frosting made with pure unprocessed tabliyang mabini (9 rnd).\r\n', 10, 798, 1, 12, '2022-11-13'),
(35, 'C-035', 'Ube Cake (Whole Cake)', 'Moist ube sponge cake filled with creamcheese, frosted with ube buttercream, topped with toated sweetened coconut (9 rnd).\r\n', 10, 775, 1, 12, '2022-11-13'),
(36, 'C-036', 'Ube Cake (Mini Cake)', 'Moist ube sponge cake filled with creamcheese, frosted with ube buttercream, topped with toated sweetened coconut (7 rnd).\r\n', 10, 398, 1, 12, '2022-11-13'),
(37, 'C-037', 'Vanilla Cloud Cake (Whole Cake)', 'Vanilla sunshine cake with custard filling & torched swiss meringue frosting (9 rnd).\r\n', 10, 520, 1, 12, '2022-11-13'),
(38, 'C-038', 'Vanilla Cloud Cake (Mini Cake)', 'Vanilla sunshine cake with custard filling & torched swiss meringue frosting (7 rnd).\r\n', 10, 270, 1, 12, '2022-11-13'),
(39, 'C-039', 'Yema Cake               (Whole Cake 9\"rnd)', 'Soft moist sponge cake w/ not too sweet yema frosting, topped w/ grated cheese\r\n', 10, 795, 1, 12, '2022-11-13'),
(40, 'C-040', 'Yema Cake (Mini Cake 9\"rnd)', 'Soft moist sponge cake w/ not too sweet yema frosting, topped w/ grated cheese\r\n', 10, 425, 1, 12, '2022-11-13'),
(41, 'C-041', 'Loaf Cakes (Banana loaf cake)', 'Cakes in loaf size 3.7 x 8\"\r\n', 10, 140, 1, 12, '2022-11-13'),
(42, 'C-042', 'Loaf Cakes (Chocolate loaf cake)', 'Cakes in loaf size 3.7 x 8\"\r\n', 10, 155, 1, 12, '2022-11-13'),
(43, 'C-043', 'Loaf Cakes (Carrot loaf cake', 'Cakes in loaf size 3.7 x 8\"\r\n', 10, 235, 1, 12, '2022-11-13'),
(44, 'C-044', 'Butter Cake (Whole pan 8x8)', 'Soft and moist butter cake\r\n', 10, 365, 1, 12, '2022-11-13'),
(45, 'C-045', 'Heart-Shaped Mini-mini cakes (Banana Cake)', 'Addl cost for sprinkles. Minimum order of 3 pcs.\r\n', 10, 135, 1, 12, '2022-11-13'),
(46, 'C-046', 'Heart-Shaped Mini-mini cakes (Caramel Cake)', 'Addl cost for sprinkles. Minimum order of 3 pcs.\r\n', 10, 135, 1, 12, '2022-11-13'),
(47, 'C-047', 'Heart-Shaped Mini-mini cakes (Chocolate Cake)', 'Addl cost for sprinkles. Minimum order of 3 pcs.\r\n', 10, 145, 1, 12, '2022-11-13'),
(48, 'C-048', 'Heart-Shaped Mini-mini cakes (Carrot Cake)', 'Addl cost for sprinkles. Minimum order of 3 pcs.\r\n', 10, 175, 1, 12, '2022-11-13'),
(49, 'C-049', 'Heart-Shaped Mini-mini cakes Red Velvet Cake)', 'Addl cost for sprinkles. Minimum order of 3 pcs.\r\n', 10, 150, 1, 12, '2022-11-13'),
(50, 'C-050', 'Heart-Shaped Mini-mini cakes (Chocolate ButterCrea', 'Addl cost for sprinkles. Minimum order of 3 pcs.\r\n', 10, 175, 1, 12, '2022-11-13'),
(51, 'C-051', 'Heart-Shaped Mini-mini cakes (Chiffon Buttercream)', 'Addl cost for sprinkles. Minimum order of 3 pcs.\r\n', 10, 165, 1, 12, '2022-11-13'),
(52, 'C-052', 'Birthday Cake 1 TIER (12x12 sqr/11 round)', 'Chocolate or vanila cake with buttercream frosting available in light colored buttercream frosting\r\n', 10, 1895, 1, 12, '2022-11-13'),
(53, 'C-053', 'Birthday Cake 1 TIER  (9x13 Rectangle)', 'Chocolate or vanila cake with buttercream frosting available in light colored buttercream frosting\r\n', 10, 1350, 1, 12, '2022-11-13'),
(54, 'C-054', 'Birthday Cake 1 TIER (9 round)', 'Chocolate or vanila cake with buttercream frosting available in light colored buttercream frosting\r\n', 10, 905, 1, 12, '2022-11-13'),
(55, 'C-055', 'Birthday Cake 2 TIER (11 round & 9 round)', 'Chocolate or vanilla cake with buttercream frosting available in light colored buttercream frosting\r\n', 10, 2790, 1, 12, '2022-11-13'),
(56, 'C-056', 'Birthday Cake 2 TIER (9\" round & 7\" round)', 'Chocolate or vanila cake with buttercream frosting available in light colored buttercream frosting\r\n', 10, 1365, 1, 12, '2022-11-13'),
(57, 'C-057', 'Birthday Cake  3 TIER (11 &  9 & 7 rnd Cake)', 'Chocolate or vanilla cake with buttercream frosting available in light colored buttercream frosting\r\n', 10, 3250, 1, 12, '2022-11-13'),
(58, 'CO-001', 'Chocolate Chips Cookies (Big Pouch 12 pcs)', 'Cookies loaded with chocolate morsels\r\n', 8, 80, 2, 12, '2022-11-13'),
(59, 'CO-002', 'Chocolate Chips Cookies (Pouch 8 pcs)', 'Cookies loaded with chocolate morsels\r\n', 9, 50, 2, 12, '2022-11-13'),
(60, 'CO-003', 'Oatmeal Cookie Crisp  (Big Pouch 12 pcs)', 'Melt in your mouth thin de gato\r\n', 10, 75, 2, 12, '2022-11-13'),
(61, 'CO-004', 'Oatmeal Cookie Crisp (Pouch 8 pcs)', 'Melt in your mouth thin de gato\r\n', 10, 48, 2, 12, '2022-11-13'),
(62, 'CK-001', 'Cheese cupcakes (1 piece)', 'soft and moist butter cheese cupcakes\r\n', 9, 30, 3, 12, '2022-11-13'),
(63, 'CK-002', 'Cupcakes (Banana Cupcake)', '3 oz cupcakes, min. order of 12 pcs. Ganache, boiled icing, buttercream or cream cheese frosting\r\n', 8, 25, 3, 12, '2022-11-13'),
(64, 'CK-003', 'Cupcakes (Banana Cakes) (Frsrt in solo box)', '3 oz cupcakes, min. order of 12 pcs. Ganache, boiled icing, buttercream or cream cheese frosting\r\n', 10, 55, 3, 12, '2022-11-13'),
(65, 'CK-004', 'Cupcakes (Banana Cupcakes) (Frsrt  box of 12)', '3 oz cupcakes, min. order of 12 pcs. Ganache, boiled icing, buttercream or cream cheese frosting\r\n', 9, 380, 3, 12, '2022-11-13'),
(66, 'CK-005', 'Cupcakes (Carrot Cupcakes)                       ', '3 oz cupcakes, min. order of 12 pcs. Ganache, boiled icing, buttercream or cream cheese frosting\r\n', 10, 40, 3, 12, '2022-11-13'),
(67, 'CK-006', 'Cupcakes                    (Carrot Cupcakes)     ', '3 oz cupcakes, min. order of 12 pcs. Ganache, boiled icing, buttercream or cream cheese frosting\r\n', 10, 65, 3, 12, '2022-11-13'),
(68, 'CK-007', 'Cupcakes (Carrot Cupcakes) (Frsrt  box of 12))', '3 oz cupcakes, min. order of 12 pcs. Ganache, boiled icing, buttercream or cream cheese frosting\r\n', 10, 530, 3, 12, '2022-11-13');

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
  `T_DATE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`, `T_DATE`) VALUES
(5, 11, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2022-11-12 03:00 am', '111230112', '2022-11-12'),
(6, 11, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '1000', '2022-11-12 05:08 am', '111250906', '2022-11-12'),
(7, 11, '2', '130.00', '13.93', '116.07', '13.93', '130.00', '130', '2022-11-13 03:11 am', '111331157', '2022-11-13'),
(8, 11, '2', '410.00', '43.93', '366.07', '43.93', '410.00', '410', '2022-11-13 03:12 am', '111331222', '2022-11-13'),
(9, 13, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '1000', '2022-11-14 03:53 am', '111435331', '2022-11-14'),
(10, 18, '1', '25.00', '2.68', '22.32', '2.68', '25.00', '55', '2022-11-14 03:55 am', '111435517', '2022-11-14'),
(11, 13, '3', '655.00', '70.18', '584.82', '70.18', '655.00', '655', '2022-11-19 07:09 am', '111971138', '2022-11-19');

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
(37, '111230112', 'Banana Layers (Whole cake)', '1', '550', 'Anns', 'Manager', '2022-11-12'),
(38, '111250906', 'Banana Layers (Whole cake)', '1', '550', 'Anns', 'Manager', '2022-11-12'),
(39, '111331157', 'Chocolate Chips Cookies (Big Pouch 12 pcs)', '1', '80', 'Anns', 'Manager', '2022-11-13'),
(40, '111331157', 'Chocolate Chips Cookies (Pouch 8 pcs)', '1', '50', 'Anns', 'Manager', '2022-11-13'),
(41, '111331222', 'Cupcakes (Banana Cupcakes) (Frsrt  box of 12)', '1', '380', 'Anns', 'Manager', '2022-11-13'),
(42, '111331222', 'Cheese cupcakes (1 piece)', '1', '30', 'Anns', 'Manager', '2022-11-13'),
(43, '111435331', 'Banana Layers (Whole cake)', '1', '550', 'Anns', 'Manager', '2022-11-14'),
(44, '111435517', 'Cupcakes (Banana Cupcake)', '1', '25', 'Anns', 'Manager', '2022-11-14'),
(45, '111971138', 'Banana Layers (Whole cake)', '1', '550', 'Anns', 'Manager', '2022-11-19'),
(46, '111971138', 'Cupcakes (Banana Cupcake)', '1', '25', 'Anns', 'Manager', '2022-11-19'),
(47, '111971138', 'Chocolate Chips Cookies (Big Pouch 12 pcs)', '1', '80', 'Anns', 'Manager', '2022-11-19');

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
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'AnnsHome', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(2, 2, 'Cashier_Bauan', 'dd50bccc48844bf390a855cbd2119843f2e13c4c', 2),
(3, 3, 'Cashier_Kumintang', '32ce40b5f2bd8469fab07ef38edb272310924fb1', 2),
(4, 5, 'Cashier_SMBatangas', '8123244aef55227f2aaf4895811aeb9306176cf8', 2),
(5, 7, 'Cashier_PBurgos', '83994b06b1054c0b4e42f25052ec7f653d7d41d6', 2);

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
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD UNIQUE KEY `NAME` (`NAME`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `BRANCH_ID` (`BRANCH_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

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
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

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
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
