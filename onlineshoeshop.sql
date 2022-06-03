-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 03, 2022 at 05:47 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshoeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `shoe_shop_admin_registrations`
--

DROP TABLE IF EXISTS `shoe_shop_admin_registrations`;
CREATE TABLE IF NOT EXISTS `shoe_shop_admin_registrations` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shoe_shop_admin_registrations`
--

INSERT INTO `shoe_shop_admin_registrations` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'shivam@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `shoe_shop_category`
--

DROP TABLE IF EXISTS `shoe_shop_category`;
CREATE TABLE IF NOT EXISTS `shoe_shop_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shoe_shop_category`
--

INSERT INTO `shoe_shop_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'NIKE', 'nike.jpeg'),
(2, 'YEEZY', 'yeezy.jpeg'),
(3, 'ADIDAS', 'adidas.jpeg'),
(4, 'AIRJORDAN', 'airjordan.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `shoe_shop_orders`
--

DROP TABLE IF EXISTS `shoe_shop_orders`;
CREATE TABLE IF NOT EXISTS `shoe_shop_orders` (
  `orders_id` int NOT NULL AUTO_INCREMENT,
  `users_id` int NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  PRIMARY KEY (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shoe_shop_orders`
--

INSERT INTO `shoe_shop_orders` (`orders_id`, `users_id`, `delivery_date`, `payment_method`, `total_amount`) VALUES
(1, 2, '2020-08-09', 'Cash', '1000'),
(2, 3, '2022-06-11', 'Cash', '3500'),
(3, 1, '2022-06-12', 'Cash', '2400'),
(4, 1, '2022-05-07', 'Cash', '3584');

-- --------------------------------------------------------

--
-- Table structure for table `shoe_shop_orders_detail`
--

DROP TABLE IF EXISTS `shoe_shop_orders_detail`;
CREATE TABLE IF NOT EXISTS `shoe_shop_orders_detail` (
  `orders_detail_id` int NOT NULL AUTO_INCREMENT,
  `orders_id` int NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`orders_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shoe_shop_orders_detail`
--

INSERT INTO `shoe_shop_orders_detail` (`orders_detail_id`, `orders_id`, `product_name`, `quantity`) VALUES
(1, 1, 'NIKE PHANTOM', 1),
(2, 1, 'NIKE TANJUN', 1),
(3, 2, 'NIKE PHANTOM', 1),
(4, 2, 'NIKE TANJUN', 1),
(5, 2, 'NIKE ZOOM', 1),
(6, 2, 'NIKE LEBRON', 1),
(7, 3, 'NIKE ZOOM', 1),
(8, 3, 'NIKE TANJUN', 1),
(9, 3, 'AIRJORDAN ZOOM', 1),
(10, 4, 'AIRJORDAN SOLEFLY', 1),
(11, 4, 'ADIDAS SAMBA', 1),
(12, 4, 'YEEZY QUANTUM', 1),
(13, 4, 'NIKE ZOOM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shoe_shop_product`
--

DROP TABLE IF EXISTS `shoe_shop_product`;
CREATE TABLE IF NOT EXISTS `shoe_shop_product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_category` int NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shoe_shop_product`
--

INSERT INTO `shoe_shop_product` (`product_id`, `product_name`, `product_category`, `product_price`, `product_description`, `product_image`) VALUES
(1, 'NIKE PHANTOM', 1, '950', 'Engineered for precision without sacrificing power, the Phantom football boot by Nike is the perfect weapon to enhance your game and take it to the next level.', 'nikephantom.jpeg'),
(2, 'NIKE TANJUN', 1, '850', '\"Tanjun\" means \"simplicity\" in Japanese, and the Nike Tanjun Shoe is simplicity at its best.', 'niketanjun.jpeg'),
(3, 'NIKE ZOOM', 1, '900', 'Gear up for your next personal best with the Nike Air Zoom Alphafly NEXT% Flyknit.', 'nikezoom.jpeg'),
(4, 'NIKE LEBRON', 1, '800', 'LeBron thrives when stakes are high and the pressure on.', 'nikelebron.jpeg'),
(5, 'YEEZY BOOST', 2, '950', 'The YEEZY BOOST 350 V2 features an upper composed of re-engineered Primeknit.', 'yeezyboost.jpeg'),
(6, 'YEEZY QUANTUM', 2, '700', 'The Quantum sneaker is the epitome of urban fashion and it enhances any ensemble.', 'yeezyquantum.jpeg'),
(7, 'ADIDAS VELOSAMBA', 3, '850', 'Designed with city riding, commuting and indoor cycling in mind, the Velosamba is your incognito bike shoe.', 'adidasvelosamba.jpeg'),
(8, 'ADIDAS SAMBAROSE', 3, '999', 'The Sambarose from Adidas Originals replaces the usual sleek midsole with a chunky platform sole in translucent gum, giving a more feminine touch.', 'adidassambarose.jpeg'),
(9, 'AIRJORDAN RETRO', 4, '999', 'The first-ever Air Jordan is a stunning piece of footwear.', 'airjordanretro.jpeg'),
(10, 'AIRJORDAN ZOOM', 4, '650', 'Leathers and textiles in the upper have a broken-in feel.', 'airjordanzoom.jpeg'),
(11, 'YEEZY DESERT', 2, '980', 'adidas YEEZYs AW22 collection offers new iterations of some of their most iconic silhouettes, including the YEEZY Boost 700.', '2206030214540.jpeg'),
(12, 'YEEZY 700', 2, '685', 'Supplied by a premier sneaker marketplace dealing with unworn, already sold out, in demand rarities.', '2206030506500.jpeg'),
(13, 'ADIDAS SAMBA', 3, '985', 'Run white and black leather Samba Classic low-top sneakers from adidas featuring a round toe, a flat rubber sole, a lace fastening and a striped pattern.', '2206030509380.jpeg'),
(14, 'AIRJORDAN SOLEFLY', 4, '999', 'Turquoise blue leather Air Jordan 23 SoleFly sneakers from jordan featuring a round toe, a lace-up front fastening, a padded ankle and a rubber sole.', '2206030515020.jpeg'),
(15, 'AIRJORDAN ACCESS', 4, '899', 'The Air Jordan Access now arrive in a black and red colour scheme. Their design is crafted from leather and feature perforated detailing and a signature Jumpman logo on the sides.', '2206030516040.jpeg'),
(16, 'ADIDAS RETROPY', 3, '799', 'This product comes from a Conscious brand that performs well in relation to their impact on the planet, for example ensures the use of materials that limit the amount of chemicals, water and wastewater involved in production processes.', '2206030517340.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `shoe_shop_users_registrations`
--

DROP TABLE IF EXISTS `shoe_shop_users_registrations`;
CREATE TABLE IF NOT EXISTS `shoe_shop_users_registrations` (
  `users_id` int NOT NULL AUTO_INCREMENT,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shoe_shop_users_registrations`
--

INSERT INTO `shoe_shop_users_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`) VALUES
(1, 'Shivam', 'shivam@yahoo.com', '123456789', '9876543210', 'Bhandup Mumbai'),
(2, 'Anand', 'anand@yahoo.com', '123456789', '9876543210', 'Palika Bazaar Delhi'),
(3, 'Test', 'test@gmail.com', '123456', '9135972169', 'Mithanpura, Testpur, 842001');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
