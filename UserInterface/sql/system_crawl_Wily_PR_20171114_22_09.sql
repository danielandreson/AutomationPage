-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2017 at 04:09 PM
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
  `CategoryValue` varchar(1000) NOT NULL,
  `Link` varchar(1000) NOT NULL,
  `LinkChild` varchar(1000) DEFAULT NULL,
  `Source` varchar(1000) NOT NULL,
  `Rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CategoryId`, `CategoryValue`, `Link`, `LinkChild`, `Source`, `Rate`) VALUES
(1, 'Jual Kemeja Formal Pria - Dress Shirt Pria Terbaru | Tokopedia', 'https://www.tokopedia.com/p/fashion-pria/atasan/kemeja-formal', 'https://www.tokopedia.com/p/fashion-pria/atasan/kemeja-formal?page=1', 'TOKOPEDIA', 3),
(2, 'Jual Kemeja Lengan Panjang Pria dengan Harga Murah | Bhinneka ...', 'http://www.bhinneka.com/category/kemeja_lengan_panjang_pria.aspx', 'http://www.bhinneka.com/category/kemeja_lengan_panjang_pria.aspx?page=1', 'BHINEKA', 3);

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

--
-- Dumping data for table `tblcomment`
--

INSERT INTO `tblcomment` (`CommentId`, `Name`, `Address`, `Education`, `CreatedDate`, `CreatedBy`, `Active`, `Note`, `RateQuality`, `RateFresh`, `RatePerform`, `RatePageCorresponding`) VALUES
(1, '1', '1', '1', '2017-10-25 23:37:37', '1', b'1', '', 1, 1, 1, 1),
(2, '1', '1', '1', '2017-10-25 23:39:21', '1', b'1', '1', 1, 1, 1, 1),
(3, 'Daniel', 'aNDRESON', '1', '2017-10-25 23:41:49', 'Daniel', b'1', '1', 1, 1, 1, 1),
(4, '1', '1', '1', '2017-10-25 23:42:37', '1', b'1', '1', 1, 1, 1, 1),
(5, '1', '1', '1', '2017-10-25 23:44:11', '1', b'1', '1', 1, 1, 1, 1),
(6, 'Daniel', 'Andreosn', 'Mahasiswa', '2017-10-25 23:44:46', 'Daniel', b'1', 'Butuh Improvement', 2, 2, 3, 4),
(7, 'Daniel andreson', 'batam center palm regency 2 blok d1 no 8 ', 'bachelor degree', '2017-10-29 10:06:37', 'Daniel andreson', b'1', 'tingkatkan lagi', 3, 3, 5, 5);

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
(1, 'https://www.tokopedia.com/jagobusana/kemeja-lengan-panjang-hitam-polos-motif-reguler-bahan-katun-halus?trkid=f%3DCa1805L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D1805_po%3D1', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/7/30/8122809/8122809_d08eb770-6f87-49ff-afa6-314d7a6b50f4.jpg', 'Kemeja Lengan Panjang Hitam Polos motif reguler Bahan Katun Halus', '75000.00', 'TOKOPEDIA'),
(2, 'https://www.tokopedia.com/superbusana/kemeja-pria-merah-polos-lengan-panjang?trkid=f%3DCa1805L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D1805_po%3D2', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/8/1/0/0_02d04dbc-662e-4654-8380-0a45298e850d_400_600.jpg', 'kemeja pria merah polos lengan panjang', '80000.00', 'TOKOPEDIA'),
(3, 'http://www.bhinneka.com/products/sku04315286/vanmarvell_kemeja_polos_slimfit_size_m_-_putih.aspx', '//assets.bmdstatic.com/assets/Data/thumbnail_product_160x160/SKU04315286-201573144654.jpg', 'VANMARVELL Kemeja Polos Slimfit Size M - Putih', '95000.00', 'BHINEKA'),
(4, 'http://www.bhinneka.com/products/sku04315261/vanmarvell_kemeja_polos_slimfit_size_xxl_-_navy_blue.aspx', '//assets.bmdstatic.com/assets/Data/thumbnail_product_160x160/SKU04315261-201573144629.jpg', 'VANMARVELL Kemeja Polos Slimfit Size XXL - Navy Blue', '95000.00', 'BHINEKA');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblcomment`
--
ALTER TABLE `tblcomment`
  MODIFY `CommentId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblcrawl`
--
ALTER TABLE `tblcrawl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
