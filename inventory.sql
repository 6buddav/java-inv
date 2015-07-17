-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2015 at 03:52 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
`cat_id` int(50) NOT NULL,
  `cat_name` varchar(200) DEFAULT NULL,
  `cat_detail` varchar(200) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`, `cat_detail`) VALUES
(1, 'chulo', 'nepali kitchen used for cooking'),
(2, 'tap', 'tap used for water'),
(3, 'rest', 'rest the kitchen'),
(4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_damage`
--

CREATE TABLE IF NOT EXISTS `tbl_damage` (
`damage_id` int(50) NOT NULL,
  `damage_name` varchar(200) DEFAULT NULL,
  `damage_quantity` varchar(200) DEFAULT NULL,
  `damage_date` date DEFAULT NULL,
  `damage_detail` varchar(200) DEFAULT NULL,
  `item_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE IF NOT EXISTS `tbl_item` (
`item_id` int(50) NOT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `item_rate` int(50) DEFAULT NULL,
  `item_quantity` int(50) DEFAULT NULL,
  `item_order_date` date DEFAULT NULL,
  `item_supplied_date` date DEFAULT NULL,
  `item_detail` varchar(200) DEFAULT NULL,
  `cat_id` int(50) DEFAULT NULL,
  `supplier_id` int(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_rate`, `item_quantity`, `item_order_date`, `item_supplied_date`, `item_detail`, `cat_id`, `supplier_id`) VALUES
(17, 'tm', 56, 788, '2015-07-01', '2015-07-02', 'fast', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return`
--

CREATE TABLE IF NOT EXISTS `tbl_return` (
`return_id` int(50) NOT NULL,
  `return_quantity` int(50) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_id` int(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_return`
--

INSERT INTO `tbl_return` (`return_id`, `return_quantity`, `return_date`, `item_id`) VALUES
(1, 20, '2015-07-01', 15),
(4, 23, '2015-07-01', 1),
(5, 45, '2015-07-01', 1),
(6, 12, '2015-07-03', 17),
(7, 12, '2015-07-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE IF NOT EXISTS `tbl_sales` (
`sale_id` int(50) NOT NULL,
  `sale_customer_name` varchar(200) DEFAULT NULL,
  `sale_customer_address` varchar(200) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `sale_bill_no` int(50) DEFAULT NULL,
  `sale_rate` int(50) DEFAULT NULL,
  `sale_quantity` int(50) DEFAULT NULL,
  `item_id` int(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`sale_id`, `sale_customer_name`, `sale_customer_address`, `sale_date`, `sale_bill_no`, `sale_rate`, `sale_quantity`, `item_id`) VALUES
(1, 'likesh', 'ktm', NULL, 122, 245, 25, 15),
(2, 'ram', 'ktm', NULL, NULL, NULL, NULL, 1),
(3, 'hsidfhoiadsh', 'sojofidjsaoijo', '2015-07-03', 6776, 8998, 566776, 1),
(6, 'asdf', 'sadf', '2015-07-08', 34, 435, 5435, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE IF NOT EXISTS `tbl_supplier` (
`supplier_id` int(50) NOT NULL,
  `supplier_name` varchar(200) DEFAULT NULL,
  `supplier_phone` varchar(200) DEFAULT NULL,
  `supplier_address` varchar(200) DEFAULT NULL,
  `supplier_detail` varchar(200) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`supplier_id`, `supplier_name`, `supplier_phone`, `supplier_address`, `supplier_detail`) VALUES
(2, 'sakti hd', '7368', 'jhapaswdfas', 'place in jhapa'),
(3, 'dhruba', '72384', 'samakhusi', 'owner by dhruba');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`user_id` int(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_email` varchar(200) DEFAULT NULL,
  `user_type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_type`) VALUES
(4, 'cp', '', 'cp@gmail.com', 'Guest'),
(5, 'admin', 'admin', 'admin@gmail.com', 'Admin'),
(8, 'cpl', '', 'cp@gmail.com', 'Guest');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
 ADD PRIMARY KEY (`cat_id`), ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `tbl_damage`
--
ALTER TABLE `tbl_damage`
 ADD PRIMARY KEY (`damage_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_return`
--
ALTER TABLE `tbl_return`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
 ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
 ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
MODIFY `cat_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_damage`
--
ALTER TABLE `tbl_damage`
MODIFY `damage_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
MODIFY `item_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_return`
--
ALTER TABLE `tbl_return`
MODIFY `return_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
MODIFY `sale_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
MODIFY `supplier_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
