-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 04:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin-admitcard`
--

CREATE TABLE `admin-admitcard` (
  `admit_id` int(11) NOT NULL,
  `admit_name` text NOT NULL,
  `admit_url` text NOT NULL,
  `admit_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin-admitcard`
--

INSERT INTO `admin-admitcard` (`admit_id`, `admit_name`, `admit_url`, `admit_type`) VALUES
(5, 'coal india', '', 'Admit_C');

-- --------------------------------------------------------

--
-- Table structure for table `admin-button1`
--

CREATE TABLE `admin-button1` (
  `button1_id` int(11) NOT NULL,
  `button1_name` text NOT NULL,
  `button1_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin-button1`
--

INSERT INTO `admin-button1` (`button1_id`, `button1_name`, `button1_url`) VALUES
(1, 'java', 'btn1_url'),
(12, 'aepds', 'http://www.aepds.com'),
(13, 'sarkari result', 'http://www.sarkariresult.com'),
(14, 'sarkari result', 'http://www.sarkariresult.com'),
(15, 'rtps', 'btn1_url'),
(17, 'sarkari result', 'http://www.sarkariresult.com'),
(18, 'sarkari result', 'http://www.sarkariresult.com'),
(19, 'sarkari result', 'http://www.sarkariresult.com');

-- --------------------------------------------------------

--
-- Table structure for table `admin-dealar_teacher`
--

CREATE TABLE `admin-dealar_teacher` (
  `dea_id` int(11) NOT NULL,
  `dea_name` text NOT NULL,
  `dea_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin-dealar_teacher`
--

INSERT INTO `admin-dealar_teacher` (`dea_id`, `dea_name`, `dea_url`) VALUES
(1, 'Aepds', 'www.google.com'),
(2, 'Echallan', 'www.srf.bihar.in');

-- --------------------------------------------------------

--
-- Table structure for table `admin-link1`
--

CREATE TABLE `admin-link1` (
  `link1_id` int(11) NOT NULL,
  `link1_name` text NOT NULL,
  `link1_url` text NOT NULL,
  `link1_osite` text NOT NULL,
  `link1_edu` text NOT NULL,
  `link1_ldate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin-link1`
--

INSERT INTO `admin-link1` (`link1_id`, `link1_name`, `link1_url`, `link1_osite`, `link1_edu`, `link1_ldate`) VALUES
(2, 'omc', 'http:/omcomputerinfo.in', 'http://www.docker.com', 'Minimum Graduation', '2020-04-29'),
(6, 'bihar amin', 'http://www.google.com', 'http:/www.omc.com', 'inter', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin-link2`
--

CREATE TABLE `admin-link2` (
  `link2_id` int(11) NOT NULL,
  `link2_name` text NOT NULL,
  `link2_url` text NOT NULL,
  `link2_osite` text NOT NULL,
  `link2_edu` text NOT NULL,
  `link2_ldate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin-link2`
--

INSERT INTO `admin-link2` (`link2_id`, `link2_name`, `link2_url`, `link2_osite`, `link2_edu`, `link2_ldate`) VALUES
(4, 'bihar diploma', 'http://www.google.com', 'http://www.docker.com', 'matric', '20/02/12252');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_add` varchar(200) NOT NULL,
  `cus_mob` varchar(10) NOT NULL,
  `cus_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cus_name`, `cus_add`, `cus_mob`, `cus_email`) VALUES
(1, 'dharmendra kumar', 'garkha saaran , bihar', '7091903031', 'dsharmacpr@gamil.com'),
(9, 'mukesh', 'garkha', '5895', 'sd@fff'),
(14, 'vikash kr ray', 'chapra', '874884', 'vikash@gmail.com'),
(34, 'a', 'a', 'aaaaaaaaaa', '');

-- --------------------------------------------------------

--
-- Table structure for table `customerbill`
--

CREATE TABLE `customerbill` (
  `bid` int(11) NOT NULL,
  `cus_id` int(11) DEFAULT NULL,
  `bill_item` varchar(100) NOT NULL,
  `bill_amt` int(11) NOT NULL,
  `bill_payment` int(11) NOT NULL,
  `bill_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerbill`
--

INSERT INTO `customerbill` (`bid`, `cus_id`, `bill_item`, `bill_amt`, `bill_payment`, `bill_date`) VALUES
(1, 1, 'zeb z3-plus keyboard', 550, 500, '2020-03-08'),
(3, 1, 'dell mouse', 300, 200, '2020-03-07'),
(4, 1, 'laptop services', 460, 360, '2020-03-25'),
(5, 1, 'laptop services', 460, 360, '2020-03-25'),
(6, 1, 'self', 0, 600, '2020-03-25'),
(7, 1, 'self', 0, 600, '2020-03-25'),
(8, 1, 'netflix id', 1500, 200, '2020-12-02'),
(10, 9, 'self', 1500, 750, '2020-03-13'),
(12, 14, 'netflix id', 999, 800, '2020-03-26'),
(13, 9, 'laptop services', 0, 750, '2020-03-26'),
(14, 1, 'fasdf', 5485, 1200, '2020-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_document`
--

CREATE TABLE `dashboard_document` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `doc_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doc-upload`
--

CREATE TABLE `doc-upload` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(50) NOT NULL,
  `doc_notes` text NOT NULL,
  `doc_filename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `imp-document`
--

CREATE TABLE `imp-document` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(150) NOT NULL,
  `doc_notes` text NOT NULL,
  `doc_date` date NOT NULL,
  `doc_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `online_ser-button`
--

CREATE TABLE `online_ser-button` (
  `button_id` int(11) NOT NULL,
  `button_name` varchar(99) NOT NULL,
  `button_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `online_ser-button`
--

INSERT INTO `online_ser-button` (`button_id`, `button_name`, `button_url`) VALUES
(1, 'button11111', 'btn1_url'),
(3, 'sarkari result', 'http://www.sarkariresult.com'),
(4, 'sarkari result', 'http://www.sarkariresult.com'),
(5, 'sarkari result', 'http://www.sarkariresult.com'),
(6, 'sarkari result', 'http://www.sarkariresult.com'),
(7, 'sarkari result', 'http://www.freejobalert.com');

-- --------------------------------------------------------

--
-- Table structure for table `online_ser-link1`
--

CREATE TABLE `online_ser-link1` (
  `link1_id` int(11) NOT NULL,
  `link1_name` varchar(250) NOT NULL,
  `link1_edu` varchar(250) NOT NULL,
  `link1_ldate` date NOT NULL,
  `link1_post` varchar(101) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `online_ser-link1`
--

INSERT INTO `online_ser-link1` (`link1_id`, `link1_name`, `link1_edu`, `link1_ldate`, `link1_post`) VALUES
(1, 'upsc civil', 'Minimum Graduation', '2020-04-23', 'psc'),
(2, 'c', 'http:/google.com', '2020-04-29', 'raja kum ar');

-- --------------------------------------------------------

--
-- Table structure for table `online_ser-link2`
--

CREATE TABLE `online_ser-link2` (
  `link2_id` int(11) NOT NULL,
  `link2_name` varchar(250) NOT NULL,
  `link2_post` varchar(200) NOT NULL,
  `link2_url` text NOT NULL,
  `link2_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `online_ser-link2`
--

INSERT INTO `online_ser-link2` (`link2_id`, `link2_name`, `link2_post`, `link2_url`, `link2_type`) VALUES
(1, 'bihar', 'psc civil services', 'www.psc.bih.in', 'Admit Card'),
(3, 'bihar diploma', 'professor', 'http://www.google.asdfasd', 'Admit Card');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_address` varchar(200) NOT NULL,
  `p_mob` varchar(10) NOT NULL,
  `p_email` varchar(50) NOT NULL,
  `p_other` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`p_id`, `p_name`, `p_address`, `p_mob`, `p_email`, `p_other`) VALUES
(1, 'dk', 'garkha', '7091903031', 'abc@gmail.com', 'b tech 4th year');

-- --------------------------------------------------------

--
-- Table structure for table `product-item`
--

CREATE TABLE `product-item` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_cat` varchar(50) NOT NULL,
  `p_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product-item`
--

INSERT INTO `product-item` (`p_id`, `p_name`, `p_cat`, `p_price`) VALUES
(1, 'dell keyboard', 'keyboard', 550),
(2, 'printer cable', 'cable', 240),
(9, 'epson 003', 'ink', 499),
(12, 'prodot mu253s', 'mouse', 120),
(13, 'cooling fan', 'cpu-parts', 550),
(16, 'k7 prmimum', 'anti-virus', 400),
(17, 'dell keyboard', 'keyboard', 550),
(18, 'intex corona keyboard', 'keyboard', 300),
(19, 'A4 Lamination Paper', 'other', 500),
(22, 'zeb-a36', 'mouse', 160);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(100) NOT NULL,
  `t_add` varchar(200) NOT NULL,
  `t_mob` varchar(10) NOT NULL,
  `t_email` varchar(100) DEFAULT NULL,
  `t_notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `t_name`, `t_add`, `t_mob`, `t_email`, `t_notes`) VALUES
(2, 'janki nagar', 'ms jankinagar', '123456789', 'asdfasdfasd', 'asdffasdff'),
(3, 'dharmendra', 'garkha saran', '7091903031', 'dsharmacpr@gmail.com', 'hi '),
(4, 'ps hakma', 'ps jank', '545465311', 'as@gmail.com', 'dfakhsd;faksd'),
(5, 'ps hakma', 'ps jank', '545465311', 'as@gmail.com', 'dfakhsd;faksd'),
(6, 'abc', 'dskhf', '52454565', 'adfasdf@gmail.com', 'dkf;aldkflds'),
(7, 'dfasdas', 'dafdsf', '5531213211', 'safdasdgadf@gmail.com', 'dgdfgsdfhsdfsdfsf35121321'),
(8, 'taushif ansari', 'bms garkha', '8978585859', 'yashs8304@gmail.com', 'dbt id - 16105117009');

-- --------------------------------------------------------

--
-- Table structure for table `teacherbill`
--

CREATE TABLE `teacherbill` (
  `bill_id` int(11) NOT NULL,
  `tea_id` int(11) DEFAULT NULL,
  `bill_item` varchar(100) NOT NULL,
  `bill_amt` int(11) NOT NULL,
  `bill_payment` int(11) NOT NULL,
  `bill_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherbill`
--

INSERT INTO `teacherbill` (`bill_id`, `tea_id`, `bill_item`, `bill_amt`, `bill_payment`, `bill_date`) VALUES
(2, 3, 'data entry', 550, 500, '2020-04-23'),
(3, 3, 'printer servie', 1200, 1000, '2020-04-25'),
(5, 2, 'printer servie', 1200, 1000, '2020-04-25'),
(6, 2, 'printer servie', 1500, 900, '2020-04-24'),
(7, 2, 'printer servie', 200, 400, '2020-04-15'),
(8, 2, 'printer servie', 1250, 700, '2020-04-24'),
(9, 2, 'printer servie', 1250, 700, '2020-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `u_passward` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `u_mob` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_passward`, `name`, `user_email`, `u_mob`) VALUES
(1, 'sharma', '3dc1e4c3bc5b2ae63520627ea44df7fd', 'dharmendra sharma', 'dsharmacpr@gmail.com', '7091903031'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'dharmendra sharma', 'dsharmacpr@gmail.com', '7091903031');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin-admitcard`
--
ALTER TABLE `admin-admitcard`
  ADD PRIMARY KEY (`admit_id`);

--
-- Indexes for table `admin-button1`
--
ALTER TABLE `admin-button1`
  ADD PRIMARY KEY (`button1_id`);

--
-- Indexes for table `admin-dealar_teacher`
--
ALTER TABLE `admin-dealar_teacher`
  ADD PRIMARY KEY (`dea_id`);

--
-- Indexes for table `admin-link1`
--
ALTER TABLE `admin-link1`
  ADD PRIMARY KEY (`link1_id`);

--
-- Indexes for table `admin-link2`
--
ALTER TABLE `admin-link2`
  ADD PRIMARY KEY (`link2_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `customerbill`
--
ALTER TABLE `customerbill`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `par_ind` (`cus_id`);

--
-- Indexes for table `dashboard_document`
--
ALTER TABLE `dashboard_document`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `doc-upload`
--
ALTER TABLE `doc-upload`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `imp-document`
--
ALTER TABLE `imp-document`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `online_ser-button`
--
ALTER TABLE `online_ser-button`
  ADD PRIMARY KEY (`button_id`);

--
-- Indexes for table `online_ser-link1`
--
ALTER TABLE `online_ser-link1`
  ADD PRIMARY KEY (`link1_id`);

--
-- Indexes for table `online_ser-link2`
--
ALTER TABLE `online_ser-link2`
  ADD PRIMARY KEY (`link2_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`p_id`,`p_name`,`p_address`,`p_mob`,`p_email`,`p_other`);

--
-- Indexes for table `product-item`
--
ALTER TABLE `product-item`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `teacherbill`
--
ALTER TABLE `teacherbill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `par_ind` (`tea_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`,`u_name`,`u_passward`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin-admitcard`
--
ALTER TABLE `admin-admitcard`
  MODIFY `admit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin-button1`
--
ALTER TABLE `admin-button1`
  MODIFY `button1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `admin-dealar_teacher`
--
ALTER TABLE `admin-dealar_teacher`
  MODIFY `dea_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin-link1`
--
ALTER TABLE `admin-link1`
  MODIFY `link1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin-link2`
--
ALTER TABLE `admin-link2`
  MODIFY `link2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `customerbill`
--
ALTER TABLE `customerbill`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dashboard_document`
--
ALTER TABLE `dashboard_document`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doc-upload`
--
ALTER TABLE `doc-upload`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `imp-document`
--
ALTER TABLE `imp-document`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `online_ser-button`
--
ALTER TABLE `online_ser-button`
  MODIFY `button_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `online_ser-link1`
--
ALTER TABLE `online_ser-link1`
  MODIFY `link1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `online_ser-link2`
--
ALTER TABLE `online_ser-link2`
  MODIFY `link2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product-item`
--
ALTER TABLE `product-item`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teacherbill`
--
ALTER TABLE `teacherbill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customerbill`
--
ALTER TABLE `customerbill`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacherbill`
--
ALTER TABLE `teacherbill`
  ADD CONSTRAINT `fk_teacher` FOREIGN KEY (`tea_id`) REFERENCES `teacher` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
