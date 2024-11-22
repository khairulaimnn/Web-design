-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2022 at 04:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `User_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Item_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`User_id`, `Product_id`, `Item_quantity`) VALUES
(2, 1, 1),
(2, 3, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `PaymentType` varchar(255) NOT NULL,
  `Status` enum('Pending','Completed','Incomplete','Returned') NOT NULL,
  `User_id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `ShippingAddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `PaymentType`, `Status`, `User_id`, `Date`, `ShippingAddress`) VALUES
(1, 'cash', 'Completed', 2, '2024-11-18', 'Kuala Lumpur, Malaysia'),
(2, 'cash', 'Completed', 2, '2024-11-19', 'Kuala Lumpur, Malaysia'),
(3, 'cash', 'Completed', 2, '2024-11-19', 'Kuala Lumpur, Malaysia'),
(4, 'cash', 'Completed', 2, '2024-11-19', 'Kuala Lumpur, Malaysia'),
(5, 'cash', 'Completed', 2, '2024-11-19', 'Kuala Lumpur, Malaysia'),
(6, 'cash', 'Completed', 2, '2024-11-19', 'Kuala Lumpur, Malaysia'),
(7, 'cash', 'Completed', 2, '2024-11-19', 'Kuala Lumpur, Malaysia'),


-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_id` int(11) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Image_url` varchar(255) NOT NULL,
  `Category` enum('Men','Women','Kids') DEFAULT NULL,
  `Rating` int(11) NOT NULL,
  `Discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_id`, `Brand`, `Description`, `Price`, `Quantity`, `Image_url`, `Category`, `Rating`, `Discount`) VALUES
(1, 'Jordan Why Not.4', 'Men\'s Kyrie Infinity Basketball Shoe', 669, 5, 'images/product1.png', 'Men', 4, 20),
(2, 'Air Jordan Retro 4', 'Men\'s Jordan', 500, 7, 'images/product2.png', 'Men', 4, 10),
(3, 'Nike Air Force 1', 'Unisex Air Force 1', 419, 5, 'images/product3.png', 'Women', 5, 0),
(4, 'Adidas Originals Superstar', 'Tennis shoe ', 360, 14, 'images/product4.png', 'Women', 1, 0),
(5, 'Puma Palermo', 'Casual Sneakers', 260, 14, 'images/product5.png', 'Kids', 2, 15),
(6, 'Mango Chelsea Boots', 'Men\'s black boots', 160, 2, 'images/product6.png', 'Men', 3, 0),
(7, 'Vans', 'black boot collection', 360, 4, 'images/product7.png', 'Women', 3, 0),
(8, 'Nike Lebron's 19, 'Men\'s zoom basketball shoes', 600, 3, 'images/product8.png', 'Men', 3, 0),
(9, 'Nike Kyrie 3', 'Men\'s Kyrie basketball shoes', 1060, 17, 'images/product9.png', 'Kids', 5, 70),
(10, 'Nike Kyrie Infinity ', 'Men\'s Kyrie basketball shoes', 500, 13, 'images/main-nike-pic.png', 'Men', 5, 50),
(12, 'Nike Mag 'Back To The Future'', 'exotic nike shoes', 5000, 10, './images/product10.png', 'Men', 1, 17),
(13, 'Adidas Forum', 'Kids Addidas sneakers', 100, 13, 'images/product11.png', 'Kids', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `ID` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Order_id` int(11) NOT NULL,
  `Item_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` enum('M','F') DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `PhoneNumber` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `LastName`, `FirstName`, `Email`, `Password`, `DateOfBirth`, `Gender`, `Address`, `PhoneNumber`) VALUES
(2, 'Smith', 'John', 'john@gmail.com', 'password', '2000-07-11', 'M', 'khalifa city, abu dhabi', '8676'),
(6, 'Abdulkadir', 'salman', 'salman23@gmail.com', '1234', '2022-11-01', 'M', 'theyab bin eissa', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `User_id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wish_list`
--

INSERT INTO `wish_list` (`User_id`, `Product_id`) VALUES
(2, 2),
(2, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`User_id`,`Product_id`),
  ADD KEY `Product_id` (`Product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Order_id` (`Order_id`),
  ADD KEY `Product_id` (`Product_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD PRIMARY KEY (`User_id`,`Product_id`),
  ADD KEY `Product_id` (`Product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`),
  ADD CONSTRAINT `cart_item_ibfk_3` FOREIGN KEY (`User_id`) REFERENCES `Users` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_5` FOREIGN KEY (`User_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `wish_list`
--
ALTER TABLE `wish_list`
  ADD CONSTRAINT `wish_list_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`),
  ADD CONSTRAINT `wish_list_ibfk_3` FOREIGN KEY (`User_id`) REFERENCES `Users` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
