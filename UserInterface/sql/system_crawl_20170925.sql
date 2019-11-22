-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2017 at 01:48 AM
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
-- Table structure for table `tblcrawl`
--

CREATE TABLE `tblcrawl` (
  `id` int(11) NOT NULL,
  `ProductLink` varchar(255) NOT NULL,
  `ImageLink` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductPrice` decimal(10,0) NOT NULL,
  `Source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcrawl`
--

INSERT INTO `tblcrawl` (`id`, `ProductLink`, `ImageLink`, `ProductName`, `ProductPrice`, `Source`) VALUES
(145, 'https://www.tokopedia.com/gvirtual/rahasia-profit-instagram-45days?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D841_po%3D2', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/9/22/12366473/12366473_23f6f94f-02ac-4604-ac6d-d4676a22b8a5.png', 'RAHASIA PROFIT INSTAGRAM $45/DAYS !!!', '25000', 'TOKOPEDIA'),
(146, 'https://www.tokopedia.com/luxtm/30-hari-elite-program-program-100-juta-dalam-12-bulan-berkualitas?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D841_po%3D7', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/12/15/12413665/12413665_ce0df567-dfa1-486a-a964-775ed0a0abf3_800_800.jpg', '30 HARI ELITE PROGRAM - PROGRAM 100 JUTA DALAM 12 BULAN Berkualitas', '7500', 'TOKOPEDIA'),
(147, 'https://www.tokopedia.com/innekecute/bram-webinar-belajar-dari-pakar-bisnis-dan-internet-marketing?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D837_po%3D20', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/2/5/16286505/16286505_8c265838-161c-4470-895d-829a3fff1126_394_300.png', 'Bram Webinar | Belajar Dari Pakar Bisnis Dan Internet Marketing!', '35000', 'TOKOPEDIA'),
(148, 'https://www.tokopedia.com/gebooks/pemrograman-arduino-menggunakan-ardublock-cd?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D837_po%3D29', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/8/15/6951597/6951597_6071fc17-95f1-4dfa-a9d3-778e470b7ef7_595_800.jpg', 'Pemrograman Arduino Menggunakan Ardublock +cd', '109000', 'TOKOPEDIA'),
(149, 'https://www.tokopedia.com/lynnashop/vidgram-platinum-professional-powerpoint-template-vid-limited?trkid=f%3DCa835L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D844_po%3D40', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/2/4/16239691/16239691_655fa217-ac0a-4c3b-9137-0569c75dcafc_704_300.png', 'VIDGRAM PLATINUM - Professional Powerpoint Template Vid Limited', '35000', 'TOKOPEDIA'),
(150, 'https://www.tokopedia.com/deka-computer/memory-ram-pc-ddr2-2gb?trkid=f%3DCa299L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D304_po%3D3', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/5/18/7677031/7677031_f8163a7f-eb1a-465f-8005-ed5f2dd8393d.jpg', 'Memory / RAM PC DDR2 2GB', '165000', 'TOKOPEDIA'),
(151, 'https://www.tokopedia.com/peacekomputer/memory-ddr2-2gb-pc6400-pc800-ram-buat-komputer?trkid=f%3DCa299L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D304_po%3D14', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/9/22/90466383/90466383_e1f60ee1-2b4a-45e5-be87-615b2b34c9cf_2048_0.jpg', 'Memory Ddr2 2gb | Pc6400 - Pc800 | Ram Buat Komputer |', '120000', 'TOKOPEDIA'),
(152, 'https://www.tokopedia.com/coolcomputer/paket-lga-2011-server-xeon-e5-2650-12-cpus-x79-mobo-proci-ram-16g?trkid=f%3DCa299L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D302_po%3D21', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/9/24/1523677/1523677_529a2730-f3da-42b5-82a0-07fc497b936d_720_960.jpg', 'Paket LGA 2011 server XEON E5 2650 12 CPUS  X79 MOBO+PROCI+ram 16G', '8000000', 'TOKOPEDIA'),
(153, 'https://www.tokopedia.com/abbath/ram-pc-corsair-4x2-gb-dual-channel?trkid=f%3DCa299L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D304_po%3D22', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/9/24/0/0_b7f219a7-2a80-4aa4-8334-c72463bfdf25_520_390.jpg', 'RAM PC CORSAIR 4X2 GB DUAL CHANNEL', '850000', 'TOKOPEDIA'),
(154, 'https://www.tokopedia.com/barokahberkah/memory-ram-1gb-ddr2-pc6400-headsink?trkid=f%3DCa299L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D304_po%3D30', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2016/3/31/35045711/35045711_1f587c5b-c085-4d1a-9993-9e8e13975707.jpg', 'Memory Ram 1Gb Ddr2 PC6400 Headsink', '70000', 'TOKOPEDIA'),
(155, 'https://www.tokopedia.com/Jasavideography/v-gen-ram-memory-ddr3-4gb-pc-10600-long-dimm?trkid=f%3DCa299L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D304_po%3D33', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/8/30/0/0_db9531e3-9b2f-46ff-bc41-2bc69fb5b873_700_525.jpg', 'V-GEN RAM Memory DDR3 4GB PC-10600 Long-DIMM', '440000', 'TOKOPEDIA'),
(156, 'https://www.tokopedia.com/hm2-pckita/samsung-ram-desktop-pc-8gb-ddr3-pc3-12800?trkid=f%3DCa299L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D304_po%3D34', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/8/12/8897023/8897023_8b30b602-79b9-4c1f-b428-4a00c24a7eae_500_500.jpg', 'Samsung RAM Desktop PC 8GB DDR3 PC3-12800', '840000', 'TOKOPEDIA'),
(157, 'https://www.tokopedia.com/alvio/paket-motherboard-ddr2-prosesor-core2duo-ram-1gb-fan-1?trkid=f%3DCa299L000P0W0S0Sh00Co0Po0Fr0Cb0_src%3Ddirectory_page%3D1_ob%3D24_q%3D_catid%3D302_po%3D48', 'https://ecs7.tokopedia.net/img/cache/200-square/product-1/2017/9/2/0/0_0e454d9c-c703-441f-b295-739e65d22566_387_516.jpg', 'PAKET Motherboard DDR2 + Prosesor Core2Duo + RAM 1GB + Fan.', '300000', 'TOKOPEDIA'),
(158, 'https://www.lazada.co.id/asus-a456ur-ga092d-ram-4gb-intel-core-i5-7200u-nvidia-gt930mx-2gb-1434-gold-16094649.html?ff=1&sc=ETEN', 'https://id-live-01.slatic.net/p/2/asus-a456ur-ga092d-ram-4gb-intel-core-i5-7200u-nvidia-gt930mx-2gb-1434-gold-1490338171-94649061-1c61f02817d452125d363dc5bd8f4dcb-catalog_233.jpg', 'ASUS A456UR-GA092D - RAM 4GB - Intel Core i5 7200U - nVidia GT930MX-2GB - 14&#34; - Gold', '7050000', 'LAZADA'),
(159, 'https://www.lazada.co.id/asus-x454ya-widnows-10-amd-e1-7010-15ghz-ram-4gb-ariradeon-r2-1gb-500gb-14-black-39023232.html?ff=1&sc=ETEN', 'https://id-live-01.slatic.net/p/2/asus-x454ya-widnows-10-amd-e1-7010-15ghz-ram-4gb-ariradeon-r2-1gb-500gb-14-black-1504588346-23232093-abd3c3fd117c00e7d86b63dbeb02a097-catalog_233.jpg', 'ASUS X454YA - WIDNOWS 10 - AMD E1-7010 1.5GHz - RAM 4GB - ARI\nRADEON R2 1GB - 500GB - 14" - Black', '3950000', 'LAZADA'),
(160, 'https://www.lazada.co.id/asus-x441uv-windows-10-64-bit-i3-6006-ram-4gb-nvdia-gt9202gb-hdd-500gb-14-36428936.html?ff=1&sc=ETEN', 'https://id-live-03.slatic.net/p/2/asus-x441uv-windows-10-64-bit-i3-6006-ram-4gb-nvdia-gt9202gb-hdd-500gb-14-1502435172-63982463-130516faba0e304780c6063acb39c2b6-catalog_233.jpg', 'Asus X441UV - WINDOWS 10 64 BIT - I3-6006 - RAM 4GB - NVDIA GT920\n2GB - HDD 500GB - 14"', '5900000', 'LAZADA'),
(161, 'https://www.lazada.co.id/apple-new-macbook-1234-2017-mnyf2-grey-dual-core-m3-ram-8gb-256gb-bnib-garansi-apple-1-tahun-36411578.html?ff=1&sc=ETEN', 'https://id-live-02.slatic.net/p/2/apple-new-macbook-1234-2017-mnyf2-grey-dual-core-m3-ram-8gb-256gb-bnib-garansi-apple-1-tahun-1505767234-87511463-f9d34dad221448f7fc3236ed3dfcaa99-catalog_233.jpg', 'Apple New Macbook 12&#34; 2017 MNYF2 Grey Dual Core M3 RAM 8GB  256GB BNIB Garansi apple 1 tahun', '18250000', 'LAZADA'),
(162, 'https://www.lazada.co.id/asus-transformer-t101ha-gr013t-ram-2gb-quad-core-z8350-101led-win10-grey-10416002.html?ff=1&sc=ETEN', 'https://id-live-03.slatic.net/p/2/asus-transformer-t101ha-gr013t-ram-2gb-quad-core-z8350-101led-win10-grey-1476687109-20061401-6d20fc1bf63124209b838b69df14d356-catalog_233.jpg', 'Asus Transformer T101HA-GR013T - RAM 2GB - Quad-Core Z8350 -\n10.1"LED - WIn10 - Grey', '4149000', 'LAZADA'),
(163, 'https://www.lazada.co.id/asus-e202sa-fd111d-ram-2gb-intel-celeron-n3060-116led-dos-hitam-10282533.html?ff=1&sc=ETEN', 'https://id-live-03.slatic.net/p/2/asus-e202sa-fd111d-ram-2gb-intel-celeron-n3060-116led-dos-hitam-1476326868-33528201-347d5122321eb9937e60865540cacd05-catalog_233.jpg', 'Asus E202SA-FD111D - RAM 2GB - Intel Celeron-N3060 - 11.6"LED -DOS-\nHitam', '3049000', 'LAZADA'),
(164, 'https://www.lazada.co.id/asus-rog-gl552vx-dm044t-ram-8gb-intel-core-i7-6700hq-gtx950-2gb-156fhd-windows-10-hitam-7254847.html?ff=1&sc=ETEN', 'https://id-live-03.slatic.net/p/2/asus-rog-gl552vx-dm044t-ram-8gb-intel-core-i7-6700hq-gtx950-2gb-156fhd-windows-10-hitam-1460445639-7484527-015d96278a3ce602b315adbd9f853d31-catalog_233.jpg', 'ASUS ROG GL552VX-DM044T - RAM 8GB - Intel Core i7-6700HQ -\nGTX950-2GB - 15.6"FHD - Windows 10 - Hitam', '13000000', 'LAZADA'),
(165, 'https://www.lazada.co.id/asus-pro-p2430ua-wo0815d-4gb-ram-intel-core-i3-hdd-500gbfingerprint-dos-17468282.html?ff=1&sc=ETEN', 'https://id-live-02.slatic.net/p/2/asus-pro-p2430ua-wo0815d-4gb-ram-intel-core-i3-hdd-500gbfingerprint-dos-1491890480-28286471-fe2bc79a7cef892aac04fb51a0599f5b-catalog_233.jpg', 'Asus Pro P2430UA-WO0815D, 4GB Ram, intel core i3, HDD 500GB,\nfingerprint, DOS', '5699000', 'LAZADA'),
(166, 'https://www.lazada.co.id/hp-laptop-hp-probook-core-i5-ram-2-gb-intel-core-i5-14-silver-5500048.html?ff=1&sc=ETEN', 'https://id-live-01.slatic.net/p/2/hp-laptop-hp-probook-core-i5-ram-2-gb-intel-core-i5-14-silver-1479979461-8400055-05ef1c5033df4b3d0c06cccb7831da68-catalog_233.jpg', 'HP Laptop HP Probook Core i5 - RAM 2 GB - Intel Core i5 - 14" -\nSilver', '3700000', 'LAZADA'),
(167, 'https://www.lazada.co.id/axioo-laptop-keyboard-pico-cjm-w217cu-pjm-m1110-frame-hitam-25688039.html?ff=1&sc=EUIN', 'https://id-live-03.slatic.net/p/2/axioo-laptop-keyboard-pico-cjm-w217cu-pjm-m1110-frame-hitam-1497609288-93088652-103ed830ca8d0be185f64ab83598cebd-catalog_233.jpg', 'Axioo Laptop Keyboard Pico CJM W217CU PJM M1110 Frame Hitam', '155000', 'LAZADA'),
(168, 'https://www.lazada.co.id/intel-h55-core-i5-ram-4g-fan-zalman-15376822.html?ff=1&sc=ETQN', 'https://id-live-01.slatic.net/p/2/intel-h55-core-i5-ram-4g-fan-zalman-1489403508-22867351-410335fa0196ab2c6f00e367fddc85be-catalog_233.jpg', 'Intel H55 + Core i5 + Ram 4G + Fan Zalman', '1850000', 'LAZADA'),
(169, 'https://www.lazada.co.id/ram-samsung-sodimm-ddr3l-pc3l-4gb-12800-for-notebook-laptop-34543341.html?ff=1&sc=ETQN', 'https://id-live-01.slatic.net/p/2/ram-samsung-sodimm-ddr3l-pc3l-4gb-12800-for-notebook-laptop-1502285742-14334543-c9e0954dfbcf11cf712d6e83933eaa86-catalog_233.jpg', 'RAM Samsung SODIMM [DDR3L / PC3L ] 4GB 12800 For Notebook / Laptop', '437000', 'LAZADA'),
(170, 'https://www.lazada.co.id/crypto-coin-open-air-mining-miner-frame-rig-case-up-to-6-gpu-ethbtc-ethereum-intl-41415207.html?ff=1&sc=ETQN', 'https://id-live-03.slatic.net/p/2/crypto-coin-open-air-mining-miner-frame-rig-case-up-to-6-gpu-ethbtc-ethereum-intl-1505677061-70251414-9853aabdc5d180240c0eb9f1af3189b9-catalog_233.jpg', 'Crypto Coin Open Air Mining Miner Frame Rig Case up to 6 GPU ETH\nBTC Ethereum - intl', '338000', 'LAZADA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcrawl`
--
ALTER TABLE `tblcrawl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcrawl`
--
ALTER TABLE `tblcrawl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
