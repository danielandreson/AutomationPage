-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2017 at 09:09 AM
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
(1, 'Jual VGA Card - Game Graphics Card Harga Terbaik | Tokopedia', 'https://www.tokopedia.com/p/komputer-aksesoris/vga-card', 'https://www.tokopedia.com/p/komputer-aksesoris/vga-card?page=1', 'TOKOPEDIA', 3),
(2, 'Jual Vga / Video Graphic Card dengan Harga Murah | Bhinneka.Com', 'http://www.bhinneka.com/category/vga___video_graphic_card.aspx', 'http://www.bhinneka.com/category/vga___video_graphic_card.aspx?page=1', 'BHINEKA', 2),
(3, 'Jual Vga / Video Graphic Card dengan Harga Murah | Bhinneka.Com', 'http://www.bhinneka.com/category/vga___video_graphic_card.aspx', 'http://www.bhinneka.com/category/vga___video_graphic_card.aspx?page=2', 'BHINEKA', 2),
(4, 'Jual Vga / Video Graphic Card ASUS dengan Harga Murah | Bhinneka ...', 'http://www.bhinneka.com/category/vga___video_graphic_card/brands/asus.aspx', 'http://www.bhinneka.com/category/vga___video_graphic_card/brands/asus.aspx?page=1', 'BHINEKA', 2),
(5, 'Jual Vga / Video Graphic Card ASUS dengan Harga Murah | Bhinneka ...', 'http://www.bhinneka.com/category/vga___video_graphic_card/brands/asus.aspx', 'http://www.bhinneka.com/category/vga___video_graphic_card/brands/asus.aspx?page=2', 'BHINEKA', 2),
(6, 'Jual Vga Card Nvidia dengan Harga Murah | Bhinneka.Com', 'http://www.bhinneka.com/category/vga_card_nvidia.aspx', 'http://www.bhinneka.com/category/vga_card_nvidia.aspx?page=1', 'BHINEKA', 2),
(7, 'Jual Vga Card Nvidia dengan Harga Murah | Bhinneka.Com', 'http://www.bhinneka.com/category/vga_card_nvidia.aspx', 'http://www.bhinneka.com/category/vga_card_nvidia.aspx?page=2', 'BHINEKA', 2),
(8, 'Jual Vga / Video Graphic Card SAPPHIRE dengan Harga Murah ...', 'http://www.bhinneka.com/category/vga___video_graphic_card/brands/sapphire.aspx', 'http://www.bhinneka.com/category/vga___video_graphic_card/brands/sapphire.aspx?page=1', 'BHINEKA', 2),
(9, 'Jual Vga / Video Graphic Card SAPPHIRE dengan Harga Murah ...', 'http://www.bhinneka.com/category/vga___video_graphic_card/brands/sapphire.aspx', 'http://www.bhinneka.com/category/vga___video_graphic_card/brands/sapphire.aspx?page=2', 'BHINEKA', 2),
(10, 'Kecewa Membeli VGA Card dari Bhinneka.com - detikNews', 'https://news.detik.com/suara-pembaca/2574372/kecewa-membeli-vga-card-dari-bhinnekacom', 'https://news.detik.com/suara-pembaca/2574372/kecewa-membeli-vga-card-dari-bhinnekacom?page=1', 'BHINEKA', 2),
(11, 'Kecewa Membeli VGA Card dari Bhinneka.com - detikNews', 'https://news.detik.com/suara-pembaca/2574372/kecewa-membeli-vga-card-dari-bhinnekacom', 'https://news.detik.com/suara-pembaca/2574372/kecewa-membeli-vga-card-dari-bhinnekacom?page=2', 'BHINEKA', 2),
(12, 'Jual Vga Card Nvidia dengan Harga Murah | Bhinneka.Com Mobile ...', 'http://bhnk.co/NVidia-Ig', 'http://bhnk.co/NVidia-Ig?page=1', 'BHINEKA', 2),
(13, 'Jual Vga Card Nvidia dengan Harga Murah | Bhinneka.Com Mobile ...', 'http://bhnk.co/NVidia-Ig', 'http://bhnk.co/NVidia-Ig?page=2', 'BHINEKA', 2),
(14, 'Jual PC Gaming Berkualitas &amp; Termurah | Lazada.co.id', 'https://www.lazada.co.id/beli-pc-gaming/', NULL, 'BHINEKA', 1),
(15, 'Jual VGA Card - Game Graphics Card Harga Terbaik | Tokopedia', 'https://www.tokopedia.com/p/komputer-aksesoris/vga-card', 'https://www.tokopedia.com/p/komputer-aksesoris/vga-card?page=1', 'BHINEKA', 2),
(16, 'Jual VGA Card - Game Graphics Card Harga Terbaik | Tokopedia', 'https://www.tokopedia.com/p/komputer-aksesoris/vga-card', 'https://www.tokopedia.com/p/komputer-aksesoris/vga-card?page=2', 'BHINEKA', 2),
(17, 'EnterKomputer - vga.php', 'https://enterkomputer.com/vga.php', 'https://enterkomputer.com/vga.php?page=1', 'BHINEKA', 2),
(18, 'EnterKomputer - vga.php', 'https://enterkomputer.com/vga.php', 'https://enterkomputer.com/vga.php?page=2', 'BHINEKA', 2),
(19, 'Yang pernah belanja di bhinneka.com - Page 3 | KASKUS', 'https://www.kaskus.co.id/thread/000000000000000013476074/yang-pernah-belanja-di-bhinnekacom-masuk/3', NULL, 'BHINEKA', 1),
(20, 'Jual VGA Seri Terbaik &amp; Termurah | Lazada.co.id', 'https://www.lazada.co.id/beli-kartu-grafis/', 'https://www.lazada.co.id/beli-kartu-grafis/?page=1', 'LAZADA', 3);

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
(1, 'https://www.tokopedia.com/vicazacom/vga-gts-450-1gb-128bit-ddr5?trkid=f%3DCa317L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D318_po%3D1', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/19/44306080/44306080_7bebadba-7828-44ed-ad5c-98ef201b86d1_920_1632.jpg', 'VGA GTS 450 1gb 128bit DDR5', '500000.00', 'TOKOPEDIA'),
(2, 'https://www.tokopedia.com/novikgalaxy2/vga-pci-e-bulldozer-nvidia-geforce-gt730-4-gb-ddr3-128-bit?trkid=f%3DCa317L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D318_po%3D8', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/10/30/6031837/6031837_42e9719f-2a48-434c-989b-36b39b9dc38f_300_400.jpg', 'Vga Pci-E BULLDOZER Nvidia Geforce GT730 4 GB DDR3 128 Bit ', '695000.00', 'TOKOPEDIA'),
(3, 'https://www.tokopedia.com/tcmart/import-asli-vga-inno3d-geforce-gt-730-1gb-gddr5-lp?trkid=f%3DCa317L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D318_po%3D9', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/11/18/24631992/24631992_358b2ba7-a818-40ea-b32d-f6cba43e663b_700_442.png', 'IMPORT ASLI - VGA INNO3D GEFORCE GT 730 1GB GDDR5 LP', '1248000.00', 'TOKOPEDIA'),
(4, 'https://www.tokopedia.com/harrmods/vga-nvidia-gts-250-1gb-ddr3-256bit?trkid=f%3DCa317L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D318_po%3D10', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/11/12/984840/984840_8c458f96-9020-4a59-b8c6-ce77cc2798ed_2048_0.jpg', 'VGA Nvidia GTS 250 1GB DDR3 256bit', '400000.00', 'TOKOPEDIA'),
(5, 'https://www.lazada.co.id/his-vga-card-r7-250-128bit-20460782.html', 'https://id-live-01.slatic.net/p/2/his-vga-card-r7-250-128bit-1494201702-28706402-89f497698029486f4c6f3f858976e6e9-catalog_233.jpg', 'HIS VGA Card R7 250 128bit', '975000.00', 'LAZADA'),
(6, 'https://www.lazada.co.id/forsa-vga-gt730-4gb-128bit-ddr3-32187293.html', 'https://id-live-01.slatic.net/p/2/forsa-vga-gt730-4gb-128bit-ddr3-1500202966-39278123-a394d4341c439b1e45ea9afc3f7a666a-catalog_233.jpg', 'Forsa VGA GT730 4GB 128Bit DDR3', '769000.00', 'LAZADA'),
(7, 'https://www.lazada.co.id/vga-nvidia-geforce-gtx-750-ti-54323548.html', 'https://id-live-02.slatic.net/p/2/vga-nvidia-geforce-gtx-750-ti-1509951796-84532345-bb2beef2c20f832b3442f633d2b271bd-catalog_233.jpg', 'VGA NVIDIA GeForce GTX 750 Ti', '950000.00', 'LAZADA'),
(8, 'https://www.lazada.co.id/nvidia-vga-graphic-card-gt-630-2gb-ddr3-128-bit-hitam-1484322.html', 'https://id-live-01.slatic.net/p/2/nvidia-vga-graphic-card-gt-630-2gb-ddr3-128-bit-hitam-1480410919-139448-120d94ba5184279ac36c154eeab970b3-catalog_233.jpg', 'Nvidia VGA Graphic Card GT 630 2GB DDR3 128 BIT - Hitam', '690000.00', 'LAZADA'),
(9, 'https://www.lazada.co.id/powercolor-radeon-vga-rx-570-red-devil-4gb-gddr5-256-bit-48414287.html', 'https://id-live-02.slatic.net/p/2/powercolor-radeon-vga-rx-570-red-devil-4gb-gddr5-256-bit-1506512677-78241484-c848141eea6d9412c0bbfb46daf4f842-catalog_233.jpg', 'PowerColor Radeon VGA RX 570 Red Devil 4GB GDDR5 256 Bit', '4231640.00', 'LAZADA'),
(10, 'https://www.lazada.co.id/original-graphics-card-pc-game-for-nvidia-geforce-gts450-ddr5128bit-placa-de-video-dvivgahdmi-carte-graphique-intl-15137115.html', 'https://id-live-02.slatic.net/p/2/original-graphics-card-pc-game-for-nvidia-geforce-gts450-ddr5128bit-placa-de-video-dvivgahdmi-carte-graphique-intl-1488452183-51173151-634bfa4b02a0cc6d6429dd67246abe33-catalog_233.jpg', 'original graphics card PC game for Nvidia Geforce GTS450 DDR5\n128bit placa de video DVI+VGA+hdmi carte graphique - intl', '751000.00', 'LAZADA'),
(11, 'https://www.lazada.co.id/powercolor-vga-radeon-hd-6570-2gb-ddr3-128-bit-9653522.html', 'https://id-live-01.slatic.net/p/2/powercolor-vga-radeon-hd-6570-2gb-ddr3-128-bit-1474369130-2253569-7cf70e8bb9a009468f61da053ccea06d-catalog_233.jpg', 'PowerColor VGA Radeon HD 6570 2GB DDR3 128 Bit', '670000.00', 'LAZADA'),
(12, 'https://www.lazada.co.id/vga-gigabyte-gv-n980x3wa-4gd-garansi-3-tahun-18259465.html', 'https://id-live-03.slatic.net/p/2/vga-gigabyte-gv-n980x3wa-4gd-garansi-3-tahun-1493076698-56495281-5ee2977eda467b05fa49b689ed1aac75-catalog_233.jpg', 'VGA Gigabyte GV-N980X3WA-4GD Garansi 3 Tahun', '45000000.00', 'LAZADA');

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
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
