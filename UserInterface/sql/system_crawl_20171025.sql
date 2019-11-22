-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2017 at 01:55 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system_crawl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CategoryId` int(11) NOT NULL,
  `CategoryValue` varchar(500) NOT NULL,
  `Link` varchar(500) NOT NULL,
  `LinkChild` varchar(500) DEFAULT NULL,
  `Source` varchar(255) NOT NULL,
  `Rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CategoryId`, `CategoryValue`, `Link`, `LinkChild`, `Source`, `Rate`) VALUES
(1, ' Novel &amp; Sastra', 'https://www.tokopedia.com/p/buku/novel-sastra', NULL, 'TOKOPEDIA', 1),
(2, ' Buku Remaja dan Anak', 'https://www.tokopedia.com/p/buku/buku-remaja-dan-anak', NULL, 'TOKOPEDIA', 1),
(3, ' Sosial Politik', 'https://www.tokopedia.com/p/buku/sosial-politik', NULL, 'TOKOPEDIA', 1),
(4, ' Hobi', 'https://www.tokopedia.com/p/buku/hobi', NULL, 'TOKOPEDIA', 1),
(5, ' Majalah', 'https://www.tokopedia.com/p/buku/majalah', NULL, 'TOKOPEDIA', 1),
(6, ' Arsitektur &amp; Desain', 'https://www.tokopedia.com/p/buku/arsitektur-desain', NULL, 'TOKOPEDIA', 1),
(7, ' Pengetahuan', 'https://www.tokopedia.com/p/buku/pengetahuan', NULL, 'TOKOPEDIA', 1),
(8, ' Agama &amp; Filsafat', 'https://www.tokopedia.com/p/buku/agama-filsafat', NULL, 'TOKOPEDIA', 1),
(9, ' Komputer &amp; Internet', 'https://www.tokopedia.com/p/buku/komputer-internet', 'https://www.tokopedia.com/p/buku/komputer-internet?page=1', 'TOKOPEDIA', 3),
(10, ' Komputer &amp; Internet', 'https://www.tokopedia.com/p/buku/komputer-internet', 'https://www.tokopedia.com/p/buku/komputer-internet?page=2', 'TOKOPEDIA', 2),
(11, ' Komputer &amp; Internet', 'https://www.tokopedia.com/p/buku/komputer-internet', 'https://www.tokopedia.com/p/buku/komputer-internet?page=3', 'TOKOPEDIA', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

CREATE TABLE `tblcomment` (
  `CommentId` int(5) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Education` varchar(500) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `CreatedBy` varchar(500) NOT NULL,
  `Active` bit(1) NOT NULL,
  `Note` varchar(500) NOT NULL,
  `RateQuality` int(5) DEFAULT NULL,
  `RateFresh` int(5) DEFAULT NULL,
  `RatePerform` int(5) DEFAULT NULL,
  `RatePageCorresponding` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcrawl`
--

CREATE TABLE `tblcrawl` (
  `id` int(11) NOT NULL,
  `ProductLink` varchar(1000) NOT NULL,
  `ImageLink` varchar(1000) NOT NULL,
  `ProductName` varchar(1000) NOT NULL,
  `ProductPrice` decimal(10,2) NOT NULL,
  `Source` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcrawl`
--

INSERT INTO `tblcrawl` (`id`, `ProductLink`, `ImageLink`, `ProductName`, `ProductPrice`, `Source`) VALUES
(1, 'https://www.tokopedia.com/gvirtual/rahasia-profit-instagram-45days?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D841_po%3D1', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/9/22/12366473/12366473_23f6f94f-02ac-4604-ac6d-d4676a22b8a5.png', 'RAHASIA PROFIT INSTAGRAM $45/DAYS !!!', '25000.00', 'TOKOPEDIA'),
(2, 'https://www.tokopedia.com/ramabooks/pemrograman-grafik-dengan-java?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D837_po%3D20', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/0/0_c6592603-74b2-4a8f-b54c-d319522cbb23_517_768.jpg', 'Pemrograman Grafik dengan Java', '75000.00', 'TOKOPEDIA'),
(3, 'https://www.tokopedia.com/ramabooks/modul-pemrograman-web?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D837_po%3D21', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/0/0_344ccf16-c1d1-4ac6-abda-76b91872c7b1_572_762.jpg', 'Modul Pemrograman Web', '100000.00', 'TOKOPEDIA'),
(4, 'https://www.tokopedia.com/ramabooks/pemrograman-mikrokontroler-avr-bahasa-assembly-dan-c?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D837_po%3D24', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/0/0_fc15c7d3-05d9-4b6a-ad01-ccab8d98a209_511_773.jpg', 'Pemrograman Mikrokontroler AVR bahasa ASSEMBLY dan C', '100000.00', 'TOKOPEDIA'),
(5, 'https://www.tokopedia.com/ramabooks/pemrograman-python-teori-dan-implementasi?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D837_po%3D27', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/0/0_f5b2a388-fa89-422c-be19-d66afa6d45e5_539_796.jpg', 'Pemrograman Python (teori dan implementasi)', '100000.00', 'TOKOPEDIA'),
(6, 'https://www.tokopedia.com/gudangilmu/pemrograman-jaringan-dengan-java-cd?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D837_po%3D48', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/22/16984753/16984753_1e3ca5ad-eb9e-49c3-bfea-86da849d114f_2048_0', 'Pemrograman Jaringan dengan Java (+CD)', '81000.00', 'TOKOPEDIA'),
(7, 'https://www.tokopedia.com/gudangilmu/pemrograman-jaringan-dengan-java-cd?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D2_ob%3D24_q%3D_catid%3D837_po%3D3', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/22/16984753/16984753_1e3ca5ad-eb9e-49c3-bfea-86da849d114f_2048_0', 'Pemrograman Jaringan dengan Java (+CD)', '81000.00', 'TOKOPEDIA'),
(8, 'https://www.tokopedia.com/nafmamasean/promo-sadis-buku-jago-jualan-di-facebook-instagram-dropship-mastery?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D2_ob%3D24_q%3D_catid%3D844_po%3D6', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/219137885/219137885_21dfde3d-82ae-41d5-869d-f9e709b7027e_640_640.jpg', 'Promo Sadis Buku Jago Jualan di Facebook, Instagram, Dropship Mastery', '229000.00', 'TOKOPEDIA'),
(9, 'https://www.tokopedia.com/allana/ebook-more-python-programming-for-the-absolute-beginner?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D2_ob%3D24_q%3D_catid%3D837_po%3D33', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/335349/335349_b360fe0f-625c-493f-b30a-314b9f4ed025_1254_1250.jpg', 'Ebook More Python Programming for the Absolute Beginner', '50000.00', 'TOKOPEDIA'),
(10, 'https://www.tokopedia.com/allana/ebook-gray-hat-python-python-programming-for-hackers?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D2_ob%3D24_q%3D_catid%3D837_po%3D41', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/335349/335349_f55b7646-baee-42e8-9f55-15b74a832cad_1254_1250.jpg', 'Ebook Gray Hat Python Python Programming for Hackers ', '50000.00', 'TOKOPEDIA'),
(11, 'https://www.tokopedia.com/allana/ebook-foundations-of-python-network-programming?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D2_ob%3D24_q%3D_catid%3D837_po%3D49', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/335349/335349_861a5ecc-2763-4ef9-acce-8e5c0ae03fe6_1254_1250.jpg', 'Ebook Foundations of Python Network Programming', '50000.00', 'TOKOPEDIA'),
(12, 'https://www.tokopedia.com/allana/ebook-expert-python-programming?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D3_ob%3D24_q%3D_catid%3D837_po%3D1', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/335349/335349_fd99b320-e1f5-41ad-84b8-213b35e06a0a_1254_1250.jpg', 'Ebook Expert Python Programming', '50000.00', 'TOKOPEDIA'),
(13, 'https://www.tokopedia.com/djebenkbookstore/buku-pemrograman-stored-procedure-pada-mysql-cd?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D3_ob%3D24_q%3D_catid%3D837_po%3D10', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/9/22/21640144/21640144_72ffea79-f8e2-4378-bf54-7293b710b27e_431_500.jpg', 'Buku Pemrograman Stored Procedure Pada MySQL+cd', '148000.00', 'TOKOPEDIA'),
(14, 'https://www.tokopedia.com/game-keren/matlab-programming?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D3_ob%3D24_q%3D_catid%3D837_po%3D11', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/7/26/0/0_8c09a094-d6be-4933-b0ec-242397cb8d36_655_861.jpg', 'Matlab Programming', '10000.00', 'TOKOPEDIA'),
(15, 'https://www.tokopedia.com/allana/ebook-core-python-programming-2nd-edition?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D3_ob%3D24_q%3D_catid%3D837_po%3D16', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/335349/335349_0e331c3c-7a5e-4c0c-882c-eae55e8a2207_1254_1250.jpg', 'Ebook Core Python Programming 2nd Edition', '50000.00', 'TOKOPEDIA'),
(16, 'https://www.tokopedia.com/allana/ebook-bioinformatics-programming-using-python?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D3_ob%3D24_q%3D_catid%3D837_po%3D20', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/335349/335349_6cbff483-3662-4027-b457-1b721dd83ef2_1254_1250.jpg', 'Ebook Bioinformatics Programming Using Python', '50000.00', 'TOKOPEDIA'),
(17, 'https://www.tokopedia.com/allana/ebook-beginning-programming-with-python-for-dummies?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D3_ob%3D24_q%3D_catid%3D837_po%3D27', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/24/335349/335349_2660c223-752d-438d-904a-051c92c7da71_1254_1250.jpg', 'Ebook Beginning Programming with Python For Dummies', '50000.00', 'TOKOPEDIA');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `PageId` int(11) NOT NULL,
  `PageValue` varchar(500) NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Source` varchar(500) NOT NULL,
  `Rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD PRIMARY KEY (`CommentId`);

--
-- Indexes for table `tblcrawl`
--
ALTER TABLE `tblcrawl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`PageId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tblcomment`
--
ALTER TABLE `tblcomment`
  MODIFY `CommentId` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblcrawl`
--
ALTER TABLE `tblcrawl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `PageId` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
