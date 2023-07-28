-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 08:41 PM
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
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `Food_Title` varchar(30) NOT NULL,
  `Item_Code` varchar(200) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`Food_Title`, `Item_Code`, `Category`, `Price`) VALUES
('Chicken Cheese Burger', 'ccb1', 'Burger', 220),
('Beef Cheese Burger', 'bcb1', 'Burger', 220),
('BBQ Chicken Burger', 'bbqc2', 'Burger', 200),
('BBQ Beef Burger', 'bbqb2', 'Burger', 200),
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
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_method` varchar(30) NOT NULL,
  `amount` double NOT NULL,
  `U_ID` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_method`, `amount`, `U_ID`) VALUES
('PayPal', 400, 'u00001'),
('bkash', 70, 'u00002'),
('PayPal', 400, 'u00003');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` varchar(200) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Phone_No` varchar(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Address`, `Name`, `Phone_No`, `Email`, `Password`) VALUES
('u00001', 'Ibrahimpur, Kafrul, Dhaka.', 'Kabir Khan', '01316585469', 'kabir@mail.com', '123456'),
('u00002', 'Mohakhali, Dhaka', 'Sabir Khan', '01713555469', 'sabirk@mail.com', '234567'),
('u00003', 'Banani, Dhaka', 'Rahim Kabir', '01666585469', 'krahim@mail.com', '345678'),
('u00004', 'Dhanmondi-16, Dhaka', 'Ashik Barua', '01764525469', 'baruaashik@mail.com', '456789');

-- --------------------------------------------------------

--
-- Table structure for table `view_cart`
--

CREATE TABLE `view_cart` (
  `U_ID` varchar(200) NOT NULL,
  `Item_Code` varchar(200) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `view_cart`
--

INSERT INTO `view_cart` (`U_ID`, `Item_Code`, `Quantity`, `Address`) VALUES
('u00001', 'bbqb2', 2, 'Mirpur-10, Dhaka'),
('u00002', 'ds3', 2, 'Kafrul, Dhaka'),
('u00003', 'bbqb2', 2, 'Kafrul, Dhaka');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
