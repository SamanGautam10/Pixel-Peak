-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 12:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixelpeak`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productPrice` int(255) DEFAULT NULL,
  `productStock` int(255) NOT NULL,
  `productCategory` varchar(255) NOT NULL,
  `productDescription` varchar(500) NOT NULL,
  `imagePart` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productPrice`, `productStock`, `productCategory`, `productDescription`, `imagePart`) VALUES
(42, '7artisans AutoFocus 50mm F1.8', 228, 10, 'Camera Lens', 'Support Automatic/Manual Aperture and Face/Eye Recognition, Compatible for Sony A7 Series A7R A75 A7SII A9 A7C A1', '7artisans AutoFocus 50mm F1.8.jpeg'),
(43, 'Action Pro Head Strap Mount', 45, 15, 'Helmet Mount', 'Action Pro Head Strap Mount and Screw Compatible with All GoPro Hero Series SJCAM Xiaomi YI Eken Action Camera\r\n\r\n\r\n', 'Action Pro Head Strap Mount .png'),
(44, 'Adofys Professional', 78, 3, 'Tripods', 'Adofys Flexible Gorillapod Tripod with 360° Rotating Ball Head Tripod for All DSLR Cameras(Max Load 1.5 kgs) & Mobile Phones + Free Heavy Duty Mobile Holder', 'Adofys Professional.png'),
(45, 'Sony Tripod', 57, 27, 'Tripods', 'AmazonBasics WT3130T+WT3111H 50-Inch Lightweight Tripod with Bag, Load Capacity: 2 Kg', 'Amazon Basics 3110 .png'),
(46, 'Canon EF 75-300mm', 199, 15, 'Camera Lens', 'Canon EF 75-300mm f/4-5.6 III Telephoto Zoom Lens for Canon SLR Cameras. 75-300 millimeter telephoto zoom lens with f 4-5.6 maximum aperture for Canon SLR cameras', 'Canon EF 75-300.jpg'),
(47, 'Canon EOS 200D', 623, 7, 'Camera', 'Weighing only a little heavier than a bottle of water*, the camera slides right into your bag for that everyday photography.', 'Canon EOS 200D II.png'),
(48, 'Canon EOS R100', 615, 2, 'Camera', 'Capture memories effortlessly with the Canon EOS R100 Mirrorless Camera. Perfect for beginners and casual snapshots, paired with the versatile RF-S18-45mm f/4.5-6.3 IS STM Lens.', 'Canon EOS R100 .png'),
(49, 'Canon RF100mm F2.8L', 999, 2, 'Camera Lens', 'Maximum Macro Magnification of 1.4x\r\nSpherical Aberration Control for Varying Bokeh Control\r\nImage Stabilisation of up to 8 stops', 'Canon RF100mm F2.8L.jpeg'),
(50, 'Canon XF705', 8999, 4, 'Professional Camera', 'The XF705 Professional Camcorder offers an outstanding combination of 4K UHD image quality, features and functionality in a compact, portable design ideally suited for news gathering, outdoor events.', 'Canon XF705.png'),
(52, 'DTR 550 Foldable Tripod Stand', 36, 10, 'Tripods', 'DIGITEK (DTR 550 LW) 67 Inch Foldable Tripod Stand with Phone Holder ', 'DIGITECK.png'),
(53, 'ELECTROPRIME 1pc ', 20, 52, 'PCB', 'ELECTROPRIME 1PC TEC1-7106 TEC1 Thermoelectric Heatsink Cooler Peltier Plate Module. ELECTROPRIME 1pc Protection BMS PCB for 48/54.6V 13S 18650 Li-Ion Li-Polymer Battery 15-45A.', 'ELECTROPRIME 1pc .png'),
(54, 'Fotopro X-Go HR Chameleon ', 95, 12, 'Tripods', 'Fotopro X-Go HR Chameleon 6ft Aluminum Built in 2-in-1 Tripod + Monopod Stand for DSLR Camera | FPH-52Q Ball Head | 360°Horizontal Rotation | Upside Down Tripod | Payload 8 kg (Black)', 'Fotopro X-Go HR Chameleon .png'),
(55, 'HUMBLE Head Strap Mount', 99, 9, 'Helmet Mount', 'MADE OF DURABLE NYLON MATERIAL WITH ANTI-SLIDE DESIGN: Light weight, portable action camera headband, easy to take around. ', 'HUMBLE Head Strap Mount.png'),
(56, 'LEQTRONIQ 4K HD', 227, 7, 'Professional Camera', 'This video camera 4k has a new autofocus function, it can automatically focus and clear imaging, the shooting distance is 3.94inch&#65374;infinity.', 'LEQTRONIQ 4K HD.png'),
(57, 'Nikon D7500 ', 899, 2, 'Camera', 'Follow your passion wherever it leads with the same image quality, ISO range, image processing and energy efficiency of the award-winning D500 in an enthusiast-level DSLR.', 'Nikon D7500 .png'),
(58, 'Osaka OS 550 Tripod 55 ', 21, 23, 'Tripods', 'Osaka OS 550 Tripod 55 Inches (140 cm) with Mobile Holder and Carry Case for Smartphone & DSLR Camera Portable Lightweight Aluminium Tripod', 'Osaka OS 550 Tripod 55 .png'),
(59, 'Panasonic AG-CX8ED ', 17955, 1, 'Professional Camera', 'Industrys Smallest and Lightest 4K 60p Directors Camcorder\r\nWide 25mm* and Optical 24x Zoom Lens\r\n4K High-Precision AF\r\nHybrid O.I.S\r\n', 'Panasonic AG-CX8ED .png'),
(60, 'Panasonic LUMIX G7 ', 497, 17, 'Camera', 'Panasonic LUMIX G7 4K Digital Camera, with LUMIX G VARIO 14-42mm Mega O.I.S. Lens, 16 Megapixel Mirrorless Camera, 3-Inch LCD, DMC-G7KK (Black)', 'Panasonic LUMIX G7 .png'),
(61, 'SHOPEE Head Strap Mount ', 121, 6, 'Head Strap', 'SHOPEE Head Strap Mount Compatible with GoPro GoPro Hero 10, 9, 8, Hero 7 Black, 7 Silver, 7 White, Hero 6, 5, 4, Session, 3+, 3, 2, 1, Hero, Fusion, Action Cameras', 'SHOPEE Head Strap Mount .png'),
(62, 'Sigma 30 mm f1.4 DC DN', 262, 21, 'Camera Lens', 'Combining outstanding optical performance\r\nand compact design Introducing\r\na new F1.4 standard lens for mirrorless cameras', 'Sigma 30 mm f1.4 DC DN.jpg'),
(63, 'Sony Alpha ILCE-6100Y 24.2 MP ', 874, 15, 'Camera', 'Sony Alpha ILCE-6100Y 24.2 MP Mirrorless Digital SLR Camera with 16-50 mm ', 'Sony Alpha ILCE-6100Y 24.2 MP .png'),
(65, 'Sony E Mount FE 50mm F1.8', 299, 2, 'Camera Lens', 'Large F1.8 maximum aperture enables beautiful defocusing effects, 7-blade circular aperture creates beautiful defocused bokeh. ', 'Sony E Mount FE 50mm F1.8.jpeg'),
(66, 'Sony FX6 Cinema Line ', 5998, 9, 'Professional Camera', '10.2MP 4K full-frame back-illuminated Exmor R CMOS sensor\r\nHigh sensitivity up to ISO 409,600 and 15+ stop2 dynamic range\r\nFast Hybrid AF w/ 627 phase-detection AF points and Eye-AF tracking', 'Sony FX6 Cinema Line .png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
