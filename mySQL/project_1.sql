-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 07:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `NAME` varchar(10) NOT NULL,
  `ADDRESS` varchar(20) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `ID` int(11) NOT NULL,
  `NID_NO` int(11) NOT NULL,
  `PHONE_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`NAME`, `ADDRESS`, `USERNAME`, `PASSWORD`, `ID`, `NID_NO`, `PHONE_NO`) VALUES
('admin', 'house-1B,dhaka', 'admin@12345', '12345', 1, 2147483647, 1625372932);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food_cart`
--

CREATE TABLE `food_cart` (
  `o_id` int(11) NOT NULL,
  `i_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `Food_name` varchar(200) DEFAULT NULL,
  `Item_code` varchar(100) NOT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`Food_name`, `Item_code`, `Category`, `Price`) VALUES
('', '', '', 0),
('BBQ Beef Burger', 'bbqb2', 'Burger', 200),
('BBQ Chicken Burger', 'bbqc2', 'Burger', 200),
('Beef Cheese Burger', 'bcb1', 'Burger', 220),
('Chicken Cheese Burger', 'ccb1', 'Burger', 220),
('Coca Cola', 'dc1', 'Drinks', 35),
('Fanta', 'df2', 'Drinks', 35),
('Sprite', 'ds3', 'Drinks', 35),
('Fresh Water', 'dw4', 'Drinks', 20),
('French Fry', 'fr1', 'Fries', 80),
('Onion Ring', 'fr2', 'Fries', 90),
('Coleslaw', 's1', 'Salad', 50),
('Cookie Salad', 's2', 'Salad', 115);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `order_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `u_id`, `price`, `order_date`, `quantity`, `address`, `order_status`) VALUES
(1, 123, 25, '2022-01-02', 2, 'green road', 'dispatched'),
(2, 124, 40, '2022-01-02', 2, 'green road', 'cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_method` varchar(200) DEFAULT NULL,
  `amount` double NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `update_view`
--

CREATE TABLE `update_view` (
  `admin_id` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `ADDRESS` varchar(20) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `PHONE_NO` int(11) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `EMAIL` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `ADDRESS`, `NAME`, `PHONE_NO`, `PASSWORD`, `EMAIL`) VALUES
(123, 'green road', 'ahmed', 123443, '12345', 'ahmed@gmail.com'),
(124, 'green road', 'jack', 123453, '1234345', 'jack@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `U_ID` int(11) NOT NULL,
  `I_CODE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NID_NO` (`NID_NO`),
  ADD UNIQUE KEY `PHONE_NO` (`PHONE_NO`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `food_cart`
--
ALTER TABLE `food_cart`
  ADD PRIMARY KEY (`o_id`,`i_code`),
  ADD KEY `i_code` (`i_code`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`Item_code`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`amount`,`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `update_view`
--
ALTER TABLE `update_view`
  ADD PRIMARY KEY (`admin_id`,`ord_id`),
  ADD KEY `ord_id` (`ord_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `PHONE_NO` (`PHONE_NO`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`U_ID`,`I_CODE`),
  ADD KEY `I_CODE` (`I_CODE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_cart`
--
ALTER TABLE `food_cart`
  ADD CONSTRAINT `food_cart_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `food_cart_ibfk_2` FOREIGN KEY (`i_code`) REFERENCES `food_item` (`Item_code`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `update_view`
--
ALTER TABLE `update_view`
  ADD CONSTRAINT `update_view_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`ID`),
  ADD CONSTRAINT `update_view_ibfk_2` FOREIGN KEY (`ord_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `view`
--
ALTER TABLE `view`
  ADD CONSTRAINT `view_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `user` (`USER_ID`),
  ADD CONSTRAINT `view_ibfk_2` FOREIGN KEY (`I_CODE`) REFERENCES `food_item` (`Item_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
