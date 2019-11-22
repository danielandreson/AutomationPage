-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2017 at 04:00 PM
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
(1, 'Jual Tas Wanita Model Terbaru - Harga Terbaik | Tokopedia', 'https://www.tokopedia.com/p/fashion-wanita/tas', 'https://www.tokopedia.com/p/fashion-wanita/tas?page=1', 'TOKOPEDIA', 3),
(2, 'Jual Tas Tangan Wanita dengan Harga Murah | Bhinneka.Com', 'http://www.bhinneka.com/category/tas_tangan_wanita.aspx', 'http://www.bhinneka.com/category/tas_tangan_wanita.aspx?page=1', 'BHINEKA', 3),
(3, 'Tas Wanita Branded | Lazada', 'https://www.lazada.co.id/tas-wanita/', 'https://www.lazada.co.id/tas-wanita/?page=1', 'LAZADA', 3);

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
(1, 'https://www.tokopedia.com/ottybag/tas-selempang-wanita-import-mini-bag-21405-brown?trkid=f%3DCa1916L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D1921_po%3D1', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/6/22/9262259/9262259_25aba982-9242-4210-a982-b444fcea36a9.jpg', 'Tas selempang wanita import mini bag 21405 Brown', '121500.00', 'TOKOPEDIA'),
(2, 'https://www.tokopedia.com/inplus-shop/tas-tas-wanita-ransel-backpack-tas-sekolah-tas-import?trkid=f%3DCa1916L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D1917_po%3D2', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/11/2/130161013/130161013_93e30d0b-67da-4676-81db-b3ad0f315abb_872_1280.jpg', 'Tas / Tas wanita / Ransel / Backpack / Tas Sekolah / Tas Import', '148000.00', 'TOKOPEDIA'),
(3, 'https://www.tokopedia.com/brotherfashion/tas-import-korea-4in1?trkid=f%3DCa1916L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D1919_po%3D3', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/11/23/52852237/52852237_c471dae1-27ad-4629-b9f7-c5176e632e8f.jpg', 'TAS IMPORT KOREA 4IN1', '108000.00', 'TOKOPEDIA'),
(4, 'https://www.tokopedia.com/victoryst/tas-oval-25x35-seminar-souvenir-spunbond?trkid=f%3DCa1916L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D1922_po%3D4', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/9/16/24386052/24386052_5285efe5-48b8-4a43-92bb-ba349cba6e49', 'Tas oval 25x35 seminar souvenir spunbond', '1500.00', 'TOKOPEDIA'),
(5, 'http://www.bhinneka.com/products/sku11216659/naics_shop_tas_wanita_import_-_white__merchant_.aspx', '//assets.bmdstatic.com/assets/Data/thumbnail_product_160x160/NAICS-SHOP-Tas-Wanita-Import-White-Merchant--SKU11216659-201610615941.jpg', 'NAICS SHOP Tas Wanita Import - White (Merchant)', '195000.00', 'BHINEKA'),
(6, 'http://www.bhinneka.com/products/sku06216643/gallery_fanny_shop_tas_victoria_beckham_zennor_0zbv665__vb073__-_brown__merchant_.aspx', '//assets.bmdstatic.com/assets/Data/thumbnail_product_160x160/GALLERY-FANNY-SHOP-Tas-Victoria-Beckham-Zennor-0ZBV665-VB073-Brown-Merchant--SKU06216643-2016725145937.jpg', 'GALLERY FANNY SHOP Tas Victoria Beckham Zennor 0ZBV665 [VB073] - Brown (Merchant)', '370000.00', 'BHINEKA'),
(7, 'http://www.bhinneka.com/products/sku07715764/smesco_tas_tangan_wanita_motif_garis_garis__787-039859__-_merah.aspx', '//assets.bmdstatic.com/assets/Data/thumbnail_product_160x160/--SKU07715764-20151022103541.jpg', 'SMESCO Tas Tangan Wanita Motif Garis Garis [787-039859] - Merah', '250000.00', 'BHINEKA'),
(8, 'http://www.bhinneka.com/products/sku13316558/toko_wanita_tas_fashion_wanita_with_pompom_-_dark_pink__merchant_.aspx', '//assets.bmdstatic.com/assets/Data/thumbnail_product_160x160/TOKO-WANITA-Tas-Fashion-Wanita-With-Pompom-Dark-Pink-Merchant--SKU13316558-20161116101854.jpg', 'TOKO WANITA Tas Fashion Wanita With Pompom - Dark Pink (Merchant)', '179000.00', 'BHINEKA'),
(9, 'https://www.lazada.co.id/quincylabel-tas-wanita-women-fashion-pu-tote-leather-handbags-shoulder-bags-hitam-12183066.html', 'https://id-live-03.slatic.net/p/7/quincylabel-tas-wanita-women-fashion-pu-tote-leather-handbags-shoulder-bags-hitam-1488789053-66038121-d9b6b9809e585b5a7c779941046f592d-catalog_233.jpg', 'QuincyLabel Tas Wanita Women Fashion PU Tote Leather Handbags Shoulder Bags - Hitam', '36550.00', 'LAZADA'),
(10, 'https://www.lazada.co.id/vona-ferris-hitam-tas-clutch-sling-tassel-rumbai-bag-selempang-wanita-kulit-sintetis-22569507.html', 'https://id-live-02.slatic.net/p/7/vona-ferris-hitam-tas-clutch-sling-tassel-rumbai-bag-selempang-wanita-kulit-sintetis-1495279877-70596522-9877130a0738a3c10c08e731179ab3eb-catalog_233.jpg', 'VONA Ferris (Hitam) - Tas Clutch Sling Tassel Rumbai Bag Selempang Wanita Kulit Sintetis', '47900.00', 'LAZADA'),
(11, 'https://www.lazada.co.id/michael-kors-tas-wanita-tote-womens-jet-set-travel-chain-black-38715698.html', 'https://id-live-01.slatic.net/p/7/michael-kors-tas-wanita-tote-womens-jet-set-travel-chain-black-1504177535-89651783-9e4dfdf043df716317a3d517f00f6c02-catalog_233.jpg', 'Michael Kors Tas Wanita Tote Womens Jet Set Travel Chain - Black', '2750000.00', 'LAZADA'),
(12, 'https://www.lazada.co.id/jims-honey-dompet-fashion-wanita-oliver-wallet-black-14842689.html', 'https://id-live-03.slatic.net/p/7/jims-honey-dompet-fashion-wanita-oliver-wallet-black-1498696229-98624841-032cf02ca84e94c1ded8fa4384a7fdd3-catalog_233.jpg', 'Jims Honey - Dompet Fashion Wanita - Oliver Wallet (Black)', '46750.00', 'LAZADA');

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
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblcomment`
--
ALTER TABLE `tblcomment`
  MODIFY `CommentId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblcrawl`
--
ALTER TABLE `tblcrawl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
