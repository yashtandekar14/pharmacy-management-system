-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 03:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'test', 'admin', 7898799799, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-03-01 04:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` int(11) NOT NULL,
  `PharmacistId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `ProductQty` int(11) NOT NULL,
  `IsCheckOut` int(11) DEFAULT NULL,
  `CartDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`id`, `PharmacistId`, `ProductId`, `BillingId`, `ProductQty`, `IsCheckOut`, `CartDate`) VALUES
(1, 4, 5, 582701985, 10, 1, '2024-03-25 04:53:35'),
(2, 3, 3, 954929308, 1, 1, '2024-03-25 14:48:16'),
(3, 3, 4, 954929308, 1, 1, '2024-03-25 14:48:37'),
(4, 3, 5, 954929308, 2, 1, '2024-03-26 03:31:09'),
(5, 7, 8, 645130822, 12, 1, '2024-03-27 01:50:37'),
(6, 7, 1, 923553490, 3, 1, '2024-03-27 01:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `CreationDate`) VALUES
(1, 'Johnson & Johnson', '2024-04-05 11:04:38'),
(2, 'Novartis', '2024-04-05 11:04:38'),
(3, 'Roche', '2024-04-05 11:04:38'),
(4, 'Pfizer', '2024-04-05 11:04:38'),
(5, 'Sanofi', '2024-04-05 11:04:38'),
(6, 'Merck', '2024-04-05 11:04:38'),
(7, 'GSK (GlaxoSmithKline)', '2024-04-05 11:04:38'),
(8, 'AstraZeneca', '2024-04-05 11:04:38'),
(9, 'Bayer', '2024-04-05 11:04:38'),
(10, 'Gilead Sciences', '2024-04-05 11:04:38'),
(11, 'Cipla', '2024-04-05 11:04:38'),
(12, 'Abbot', '2024-04-05 11:04:38'),
(13, 'Medtronic', '2024-04-05 11:04:38'),
(17, 'Dolo', '2024-03-27 01:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `ID` int(10) NOT NULL,
  `BillingNumber` varchar(120) DEFAULT NULL,
  `CustomerName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `ModeofPayment` varchar(100) DEFAULT NULL,
  `BillingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`ID`, `BillingNumber`, `CustomerName`, `MobileNumber`, `ModeofPayment`, `BillingDate`) VALUES
(1, '582701985', 'Anuj kumar', 6541230123, 'card', '2024-03-25 04:54:24'),
(2, '954929308', 'Test', 8789789798, 'cash', '2024-03-26 03:32:35'),
(3, '645130822', 'Amit', 4564563210, 'cash', '2024-03-27 01:50:53'),
(4, '923553490', 'Garima', 1233212320, 'cash', '2024-03-27 01:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicine`
--

CREATE TABLE `tblmedicine` (
  `ID` int(10) NOT NULL,
  `MedicineCompany` varchar(120) DEFAULT NULL,
  `MedicineName` varchar(120) DEFAULT NULL,
  `MedicineBatchno` varchar(120) DEFAULT NULL,
  `MgfDate` varchar(120) DEFAULT NULL,
  `ExpiryDate` varchar(120) DEFAULT NULL,
  `Quantity` varchar(120) DEFAULT NULL,
  `Priceperunit` varchar(120) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicine`
--

INSERT INTO `tblmedicine` (`ID`, `MedicineCompany`, `MedicineName`, `MedicineBatchno`, `MgfDate`, `ExpiryDate`, `Quantity`, `Priceperunit`, `EntryDate`) VALUES
(1, 'Roche', 'Glucerna for diabetic Health Supplement', 'AEE1555', '2022-07-19', '2027-07-17', '25', '145', '2024-03-11 07:18:33'),
(2, 'Abbot', 'Thyroxine Sodium Tablets I.P. Thyronorm(100 mcg)', 'AEE1555', '2022-06-07', '2025-06-11', '100', '125', '2024-03-11 07:18:33'),
(3, 'Cipla', 'Maxirich Multivitamins and Minerals Softgel capsules', 'BEE1555', '2024-07-01', '2028-03-17', '100', '145.78', '2024-03-11 07:18:33'),
(4, 'Sanofi', 'Seven Seas Cod Liver Oil Capsules (100 Cap) ', 'BEE4567', '2023-03-06', '2027-03-12', '35', '125', '2024-03-11 07:18:33'),
(5, 'Bayer', 'Bayer Tonic 250ml', 'CEE12345', '2023-12-31', '2026-10-24', '25', '141', '2024-03-11 07:18:33'),
(8, 'Dolo', 'Dolo 650', 'JFDFDF34234', '2024-03-01', '2027-12-27', '1200', '10', '2024-03-27 01:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblpharmacist`
--

CREATE TABLE `tblpharmacist` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `JoingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpharmacist`
--

INSERT INTO `tblpharmacist` (`ID`, `FullName`, `MobileNumber`, `UserName`, `Gender`, `Password`, `Email`, `JoingDate`) VALUES
(1, 'Test', 7899797977, 'phgh12340', 'Male', '202cb962ac59075b964b07152d234b70', 'harish@gmail.com', '2024-03-06 04:28:51'),
(2, 'Kavita Shukla', 5656565656, 'phgh12341', 'Female', '202cb962ac59075b964b07152d234b70', 'mahesh@gmail.com', '2024-03-06 04:39:48'),
(3, 'Rahul', 2356897898, 'phgh12342', 'Male', '202cb962ac59075b964b07152d234b70', 'rahul@gmail.com', '2024-03-07 04:47:23'),
(4, 'Reena Malhotra', 4545454545, 'phgh12343', 'Female', '202cb962ac59075b964b07152d234b70', 'reena12@gmail.com', '2024-03-07 04:48:55'),
(7, 'John doe', 1414252536, 'john123', 'Male', 'f925916e2754e5e03f75dd58a5733251', 'john123@gmail.com', '2024-03-27 01:49:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BillingNumber` (`BillingNumber`);

--
-- Indexes for table `tblmedicine`
--
ALTER TABLE `tblmedicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpharmacist`
--
ALTER TABLE `tblpharmacist`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicine`
--
ALTER TABLE `tblmedicine`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpharmacist`
--
ALTER TABLE `tblpharmacist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
