-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2019 at 11:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `c_name` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`c_name`) VALUES
('Buttercream'),
('Chocolate'),
('Fruit'),
('Vanilla');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemID` int(11) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemDesc` text,
  `itemPrice` float(10,2) DEFAULT NULL,
  `thumb` varchar(80) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `c_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `itemName`, `itemDesc`, `itemPrice`, `thumb`, `quantity`, `c_name`) VALUES
(14, 'Vanilla Almond', 'Light and sweet but moist and rich in flavor, our Vanilla Almond cake is filled and frosted with our house vanilla buttercream. Vanilla Almond Amycakes are decorated with sparkly clear crystal sprinkles, pearl sprinkles and a ring of buttercream rosettes.', 450.00, '47992Vanilla-Almond-Cake-620x620.jpg', 8, 'Vanilla'),
(15, 'Golden Vanilla', 'Old fashioned, buttery golden yellow cake, just as moist and dense as Grandma used to make. Filled and frosted with our house vanilla buttercream. Golden Vanilla Amycakes are decorated with ascending gold sprinkles, white ganache drizzle and white chocolate curls and flakes. ', 500.00, '28901golden-vanilla.jpg', 5, 'Vanilla'),
(16, 'Golden Chocolate', 'Old fashioned, buttery golden yellow cake, just as moist and dense as Grandma used to make. Filled and frosted with our house chocolate buttercream. Golden Chocolate Amycakes are decorated with ascending gold sprinkles, chocolate ganache drizzle and dark chocolate curls and flakes. ', 470.00, '48456ruffles-on-cake.jpg', 5, 'Chocolate'),
(17, 'Double Chocolate', 'Rich, fudgy chocolate cake filled and frosted with our house chocolate buttercream. Double Chocolate Amycakes are decorated with chocolate flakes and chocolate ganache drizzle.', 600.00, '29766double-chocolate.jpg', 4, 'Chocolate'),
(18, 'Confetti', 'Moist Vanilla Almond cake studded with confetti sprinkles in the batter. Confetti Amycakes are frosted with vanilla buttercream and decorated with colorful sprinkles.', 430.00, '89657Confetti-Cake-Fragrance-Oil.jpg', 7, 'Buttercream'),
(19, 'Zebra choco', 'Alternating layers of vanilla almond and chocolate cakes, filled and frosted with our house vanilla buttercream.  Zebra Amycakes are decorated with chocolate ganache drizzle and white and chocolate curls.\r\n', 380.00, '42899maxresdefault.jpg', 5, 'Chocolate'),
(20, 'Red Velvet', 'One of our most popular cakes, our red velvet is always moist and dense with a light chocolate flavor. It is perfectly paired when filled and frosted with our house vanilla buttercream. Red Velvet Amycakes are decorated with red velvet cake crumbs and a ring of buttercream rosettes.', 700.00, '39475red-velvet-cake.jpg', 6, 'Buttercream'),
(21, 'Old-Fashioned Banana', 'Made with the ripest bananas, this fresh Banana cake is extra moist and deliciously filled and frosted with our house vanilla buttercream. Banana Amycakes are decorated with a caramel drizzle, buttercream rosettes and banana chips.\r\n', 370.00, '59098backcake.jpg', 12, 'Fruit');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Kalidas', 'kalidasake07@gmail.com', '123456'),
(2, 'Mukesh Mahajan', 'mukesh@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`c_name`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `c_name` (`c_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `u_key` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`c_name`) REFERENCES `categories` (`c_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
