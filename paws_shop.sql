-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 07:11 PM
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
-- Database: `id21791288_paw_sohop`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthday` varchar(20) NOT NULL,
  `address` varchar(128) NOT NULL,
  `postcode` int(11) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `member` int(10) NOT NULL,
  `role` varchar(10) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `email`, `password`, `birthday`, `address`, `postcode`, `phone_no`, `gender`, `member`, `role`, `image`) VALUES
('abc', 'abc@gmail.com', 'abc123', '13-01-2001', 'Taman Mewah, Kordiang', 110054, '0154783654', 'Male', 1, 'Customer', 'assets/images/staff2.jpg'),
('Adminn', 'admin@gmail.com', 'admin123', '13-01-2001', 'Pet Haven , Jalan Petaling Jaya', 31000, '0128547632', 'Male', 2, 'Admin', 'assets/images/wais.jpeg'),
('Dayana', 'dayang@gmail.com', 'dayang123', '13-01-2001', '1 Pinji Taras, Selangor', 21456, '0134562148', 'men', 1, 'Customer', 'assets/images/profile.png'),
('didi', 'didi@gmail.com', 'didi123', '13-01-2024', 'no 1 jalan mudah', 31000, '0100000036', 'Male', 2, 'Customer', 'assets/images/profile.png'),
('lili', 'lili@gmail.com', 'lili123', '2001-01-01', 'kampung hiba', 31000, '0100000001', 'Female', 1, 'Customer', 'assets/images/qis.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `type`) VALUES
(1, 'normal'),
(2, 'vip');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(64) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `product_id`, `product`, `quantity`, `total_price`, `order_date`, `email`, `status`) VALUES
(1, 1, 'PET VOYAGEUR MODEL 100 - BLUE', 1, 49.00, '2022-10-08 18:54:04', 'abc@gmail.com', 'Cancelled'),
(2, 1, 'PET VOYAGEUR MODEL 100 - BLUE', 1, 49.00, '2022-10-15 09:57:40', 'abc@gmail.com', 'Success'),
(3, 2, 'LISO PET CARRIER TROLLEY (GREY', 2, 997.50, '2024-01-12 17:18:26', 'abc@gmail.com', 'Pending'),
(5, 2, 'LISO PET CARRIER TROLLEY (GREY', 1, 498.75, '2024-01-12 17:57:55', 'abc@gmail.com', 'Cancelled'),
(6, 1, 'PET VOYAGEUR MODEL 100 - BLUE', 2, 98.00, '2024-01-12 17:57:55', 'abc@gmail.com', 'Pending'),
(7, 1, 'PET VOYAGEUR MODEL 100 - BLUE', 1, 49.00, '2024-01-12 19:56:47', 'abc@gmail.com', 'Pending'),
(8, 2, 'LISO PET CARRIER TROLLEY (GREY', 1, 498.75, '2024-01-12 22:20:15', 'abc@gmail.com', 'Pending'),
(9, 1, 'PET VOYAGEUR MODEL 100 - BLUE', 1, 49.00, '2024-01-12 22:20:15', 'abc@gmail.com', 'Pending'),
(43, 2, 'LISO PET CARRIER TROLLEY (GREY', 1, 473.81, '2024-01-13 13:53:09', 'abc@gmail.com', 'Pending'),
(44, 1, 'PET VOYAGEUR MODEL 100 - BLUE', 1, 49.00, '2024-01-13 14:23:02', 'lili@gmail.com', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_dec` varchar(500) NOT NULL,
  `product_fec` varchar(500) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_dec`, `product_fec`, `product_price`, `product_image`) VALUES
(1, 'PET VOYAGEUR MODEL 100 - BLUE', 'Pet air box, suitable for pet car and air transportation', 'Features include:- Ventilation holes form unique cat silhouette profile offering optimal ventilation and air flow- Top Petting Door- Safety Lock- Easy Assembly Side Latch System- Molded Waste Collection Gutter-Treat compartment with food / water bowl- Meets airline regulations (with permanent screws / tie wraps)Size:SmallDimension: 48.3 cm L x 32.6 cm W x 28 cm H (19in x 12.8in x 11in).', 48.00, 'assets/images/1.jpg'),
(2, 'LISO PET CARRIER TROLLEY (GREY)', 'Portable foldable pet trolley bag breathable telescopic pull rod bag for cats outdoor large capacity universal wheel trolley case', 'Features:- Pet trolley-cum-backpack- Designed like a luggage with adjustable handle and 360-degrees spinner wheels- Features a bottom dust cover and large rear pocket- Mesh sides and front window allows ventilation- Comes with removable padding.Materials: 61% Polyester, 13% PE, 8% PP, 13% Aluminum, 5% Steel.Color: GreySize: 40 x 31 x 44cm', 498.75, 'assets/images/2.jpg'),
(22, '(CAT)TIN MACKEREL WITH SARDINE 70g', 'Applaws Tin Mackerel with Sardine is an irresistible tin of delicious goodness for your cat. ', '- Mackerel with sardine recipe - 100% natural with no additives - Made with limited ingredients - Provides a natural source of taurine  Ingredients: Mackerel 50%, Sardine 25%, Fish broth 21%, Rice 4%', 5.70, 'assets/images/1.jpeg'),
(23, 'FELINE ADULT INDOOR CHICKEN 3.17kg', 'Science Diet provides everyday nutrition for your cat to live its best life! The Indoor Cat formula is designed to fuel the energy needs of cats that have a predominantly indoor lifestyle during the prime of their life.', 'It has taurine to boost heart health and balanced minerals to support the kidneys and bladder. Vitamin E and Omega-3 and 6 are added to promote beautiful skin and fur. - Specially designed for indoor adult cats - With natural fibers to support digestive health - Features high quality protein to build lean muscles.', 141.55, 'assets/images/3.jpeg'),
(24, 'CATNIP TOYS-RAT PACK', 'Rat pack - Large size perfect to kick and wrestle - Packed with potent catnip - Mixed case includes gray and white styles', 'Color: Assorted (Gray and white)  Size: 1 piece', 48.00, 'assets/images/4.jpeg'),
(25, 'CATNIP TOY-OCTOPUS (PURPLE/PINK)', 'Best yet, these toys are stuffed with fragrant catnip, making them irresistible to your feline friend!', 'Materials: Cotton 80%, Polyester 20%.  Color: Purple/Pink  Size: 10.5 x 7 x 3cm', 10.00, 'assets/images/5.jpg'),
(26, 'TUNA 500g', 'ProDiet Gourmet Seafood Dry Food a tempting flavours to tempt your feline’s taste bud. Packed with essential vitamins and mineral to keep your feline healthy. - 100% real seafood - Strict quality control and contain no preservative - Uncompromising nutrition - All rounded meal', 'Tuna, Corn, Soybean Meal, Rice, Poultry Meal, Corn Gluten Meal, Poultry Fat, Tuna Oil, Vegetable Oil, Taurine, Yucca, Essential Vitamins & Minerals, Vitamin E, Vitamin C, Choline Chloride, Oligo Saccharid Enzyme and Food Grade Colour.', 6.90, 'assets/images/6.jpg'),
(27, 'CACTUS ORIA WITH CATNIP', 'Excite your cat\'s senses with the Beeztees Catnip Cactus Oria!  Filled with premium quality American catnip, your cat won\'t be able to resist pouncing and chasing this cute cactus toy. ', 'The catnip-filled toy can also help stressed cats to relax - leading to hours of fun playtime!  Size: 12 x 6cm', 18.65, 'assets/images/7.jpg'),
(28, 'TOY MOUSE BOYO (PINK/BROWN)(2pcs)', 'The Beeztees Mouse Boyo is a great toy for your cat! This toy consists of two mice, each of a different color, which are made of polyester. Both mice contain catnip for extra fun.', '- Made of polyester - Includes catnip.  Color: Pink/Brown  Size: 14 x 5 x 1.5cm(2 pcs)', 18.90, 'assets/images/9.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `member` (`member`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `email` (`email`),
  ADD KEY `product` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `member` FOREIGN KEY (`member`) REFERENCES `member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
