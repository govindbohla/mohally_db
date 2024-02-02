-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 09:45 AM
-- Server version: 10.6.16-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u528935365_mohallydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_models`
--

CREATE TABLE `attribute_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `attribute_name` varchar(255) DEFAULT NULL,
  `a_attribute_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_models`
--

INSERT INTO `attribute_models` (`id`, `parent_id`, `attribute_name`, `a_attribute_name`, `status`, `created_at`, `updated_at`) VALUES
(25, 43, 'Size', 'مقاس', 'active', '2024-01-18 10:26:15', '2024-01-29 09:20:38'),
(26, 43, 'Color', 'لون', 'active', '2024-01-18 10:26:30', '2024-01-29 09:21:13'),
(27, 44, 'Size', 'مقاس', 'active', '2024-01-18 10:26:44', '2024-01-29 09:20:42'),
(28, 44, 'Color', 'لون', 'active', '2024-01-18 10:26:58', '2024-01-29 09:21:18'),
(29, 46, 'Color', 'لون', 'active', '2024-01-18 10:27:11', '2024-01-29 09:21:21'),
(30, 46, 'Size', 'مقاس', 'active', '2024-01-18 10:27:28', '2024-01-29 09:21:37'),
(31, 47, 'Size', 'مقاس', 'active', '2024-01-18 10:27:53', '2024-01-29 09:20:47'),
(32, 47, 'Color', 'لون', 'active', '2024-01-18 10:28:12', '2024-01-29 09:21:26'),
(33, 48, 'Color', 'لون', 'active', '2024-01-18 10:28:28', '2024-01-29 09:21:30'),
(34, 48, 'Size', 'مقاس', 'active', '2024-01-18 10:28:39', '2024-02-01 04:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_models`
--

CREATE TABLE `blogs_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs_models`
--

INSERT INTO `blogs_models` (`id`, `title`, `content`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'demo blog', '<p><br></p><p>this is demo</p><hr><p>this is demo<span style=\"font-size: 1rem;\">this is demo</span><span style=\"font-size: 1rem;\">this is demo</span><span style=\"font-size: 1rem;\">this is demo</span><br></p>', 'demo-blog', 'demo-blog.jpg', 'active', '2023-12-16 07:32:42', '2023-12-21 13:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `category_model`
--

CREATE TABLE `category_model` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `category_icon` text DEFAULT NULL,
  `a_category_name` varchar(255) DEFAULT NULL,
  `a_category_slug` varchar(255) DEFAULT NULL,
  `featured_status` varchar(50) DEFAULT NULL,
  `category_status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_model`
--

INSERT INTO `category_model` (`id`, `category_name`, `parent_id`, `category_slug`, `category_icon`, `a_category_name`, `a_category_slug`, `featured_status`, `category_status`, `created_at`, `updated_at`) VALUES
(43, 'Women\'s  Clothing', NULL, 'womens-clothing', 'womens-clothing.png', 'ملابس نسائية', NULL, 'active', 'active', '2024-01-18 07:36:49', '2024-01-31 07:43:51'),
(44, 'Men\'s  Clothing', NULL, 'mens-clothing', 'mens-clothing.png', 'ملابس رجالية\n', NULL, 'active', 'active', '2024-01-18 07:37:33', '2024-01-29 09:06:14'),
(45, 'Home &  Kitchen', NULL, 'home-kitchen', 'home-kitchen.jpg', 'المنزل والمطبخ', NULL, 'active', 'active', '2024-01-18 07:38:43', '2024-01-29 09:06:27'),
(46, 'Women\'s  Shoes', NULL, 'womens-shoes', 'womens-shoes.jpg', 'أحذية المرأة\n', NULL, 'active', 'active', '2024-01-18 07:39:26', '2024-01-29 09:06:55'),
(47, 'Women\'s Lingerie &  Lounge', NULL, 'womens-lingerie-lounge', 'womens-lingerie-lounge.jpg', 'الملابس الداخلية النسائية والصالة', NULL, 'active', 'active', '2024-01-18 07:40:53', '2024-01-29 09:07:09'),
(48, 'Men\'s  Shoes', NULL, 'mens-shoes', 'mens-shoes.jpg', 'احذية رجالية', NULL, 'active', 'active', '2024-01-18 07:41:31', '2024-01-29 09:07:20'),
(49, 'Men\'s Underwear &  Sleepwear', NULL, 'mens-underwear-sleepwear', 'mens-underwear-sleepwear.jpg', 'ملابس داخلية وملابس نوم للرجال', NULL, 'active', 'active', '2024-01-18 07:42:40', '2024-01-29 09:07:40'),
(50, 'Sports &  Outdoors', NULL, 'sports-outdoors', 'sports-outdoors.jpg', 'الرياضة والهواء الطلق\n', NULL, 'active', 'active', '2024-01-18 07:43:31', '2024-01-29 09:07:55'),
(51, 'Jewelry &  Accessories', NULL, 'jewelry-accessories', 'jewelry-accessories.jpg', 'المجوهرات والإكسسوارات', NULL, 'active', 'active', '2024-01-18 07:45:10', '2024-01-29 09:08:14'),
(52, 'Beauty &  Health', NULL, 'beauty-health', 'beauty-health.jpg', 'الصحة و الجمال', NULL, 'active', 'active', '2024-01-18 07:46:40', '2024-01-29 09:08:31'),
(53, 'Toys &  Games', NULL, 'toys-games', 'toys-games.jpg', 'الألعاب والألعاب', NULL, 'active', 'active', '2024-01-18 07:47:24', '2024-01-29 09:08:41'),
(54, 'Automotive', NULL, 'automotive', 'automotive.jpg', 'السيارات', NULL, 'inactive', 'active', '2024-01-18 07:49:03', '2024-01-29 09:08:54'),
(55, 'Kids  Fashion', NULL, 'kids-fashion', 'kids-fashion.jpg', 'أزياء الاطفال', NULL, 'active', 'active', '2024-01-18 07:51:26', '2024-01-29 09:09:34'),
(56, 'Kids  Shoes', NULL, 'kids-shoes', 'kids-shoes.jpg', 'أحذية الأطفال', NULL, 'active', 'active', '2024-01-18 07:53:00', '2024-01-29 09:09:48'),
(57, 'Electronics', NULL, 'electronics', 'electronics.jpg', 'إلكترونيات', NULL, 'inactive', 'active', '2024-01-18 07:54:47', '2024-01-29 09:10:00'),
(58, 'Bags &  Luggage', NULL, 'bags-luggage', 'bags-luggage.jpg', 'الحقائب والأمتعة', NULL, 'active', 'active', '2024-01-18 07:55:46', '2024-01-29 09:10:18'),
(59, 'Patio, Lawn &  Garden', NULL, 'patio-lawn-garden', 'patio-lawn-garden.jpg', 'الفناء والعشب والحديقة', NULL, 'active', 'active', '2024-01-18 07:57:08', '2024-01-29 09:10:31'),
(60, 'Arts, Crafts &  Sewing', NULL, 'arts-crafts-sewing', 'arts-crafts-sewing.jpg', 'الفنون والحرف والخياطة', NULL, 'active', 'active', '2024-01-18 07:58:46', '2024-01-29 09:10:47'),
(61, 'Health &  Household', NULL, 'health-household', 'health-household.jpg', 'الصحة والأسرة', NULL, 'active', 'active', '2024-01-18 08:01:01', '2024-01-29 09:11:03'),
(62, 'Pet  Supplies', NULL, 'pet-supplies', 'pet-supplies.jpg', 'مستلزمات الحيوانات الأليفة', NULL, 'active', 'active', '2024-01-18 08:53:28', '2024-01-29 09:11:17'),
(83, 'Women\'s Pants', 43, 'womens-pants', 'womens-pants.jpg', 'السراويل النسائية', NULL, 'inactive', 'active', '2024-01-18 09:23:19', '2024-01-29 09:12:21'),
(84, 'Women\'s Shorts', 43, 'womens-shorts', 'womens-shorts.jpg', 'السراويل النسائية', NULL, 'inactive', 'active', '2024-01-18 09:24:44', '2024-01-29 09:12:34'),
(85, 'Women\'s Blouses & Shirts', 43, 'womens-blouses-shirts', 'womens-blouses-shirts.jpg', 'البلوزات والقمصان النسائية', NULL, 'inactive', 'active', '2024-01-18 09:25:57', '2024-01-29 09:12:47'),
(86, 'Women\'s Dresses', 43, 'womens-dresses', 'womens-dresses.jpg', 'فساتين نسائية', NULL, 'inactive', 'active', '2024-01-18 09:27:01', '2024-01-29 09:13:09'),
(87, 'Women\'s Skirts', 43, 'womens-skirts', 'womens-skirts.jpg', 'التنانير النسائية', NULL, 'inactive', 'active', '2024-01-18 09:32:07', '2024-01-29 09:13:28'),
(88, 'Men\'s T-Shirts', 44, 'mens-t-shirts', 'mens-t-shirts.jpg', 'قمصان رجالية', NULL, 'inactive', 'active', '2024-01-18 09:34:14', '2024-01-29 09:13:43'),
(89, 'Men\'s Suits & Separates', 44, 'mens-suits-separates', 'mens-suits-separates.jpg', 'بدلات رجالية ومنفصلة', NULL, 'inactive', 'active', '2024-01-18 09:37:37', '2024-01-29 09:13:54'),
(90, 'Men\'s Pants', 44, 'mens-pants', 'mens-pants.jpg', 'بناطيل رجال', NULL, 'inactive', 'active', '2024-01-18 09:38:35', '2024-01-29 09:14:13'),
(91, 'Men\'s Shorts', 44, 'mens-shorts', 'mens-shorts.jpg', 'شورتات رجالية', NULL, 'inactive', 'active', '2024-01-18 09:39:32', '2024-01-29 09:14:27'),
(92, 'Men\'s Casual & Dress Shirts', 44, 'mens-casual-dress-shirts', 'mens-casual-dress-shirts.jpg', 'قمصان رجالية عادية و رسمية', NULL, 'inactive', 'active', '2024-01-18 09:40:17', '2024-01-29 09:14:40'),
(93, 'Bedding', 45, 'bedding', 'bedding.jpg', 'الفراش', NULL, 'inactive', 'active', '2024-01-18 09:41:54', '2024-01-29 09:14:53'),
(94, 'Couch & Sofa Decor', 45, 'couch-sofa-decor', 'couch-sofa-decor.jpg', 'ديكور الأريكة والأريكة', NULL, 'inactive', 'active', '2024-01-18 09:42:50', '2024-01-29 09:15:06'),
(95, 'Dining & Entertaining', 45, 'dining-entertaining', 'dining-entertaining.jpg', 'تناول الطعام والترفيه', NULL, 'inactive', 'active', '2024-01-18 09:43:49', '2024-01-29 09:15:18'),
(96, 'Women\'s Over the knee Boots', 46, 'womens-over-the-knee-boots', 'womens-over-the-knee-boots.jpg', 'أحذية نسائية فوق الركبة', NULL, 'inactive', 'active', '2024-01-18 09:45:18', '2024-01-29 09:15:31'),
(97, 'Women\'s Flip Flops', 46, 'womens-flip-flops', 'womens-flip-flops.jpg', 'الوجه يتخبط المرأة', NULL, 'inactive', 'active', '2024-01-18 09:47:07', '2024-01-29 09:15:43'),
(98, 'Women\'s Heeled Sandals', 46, 'womens-heeled-sandals', 'womens-heeled-sandals.jpg', 'صنادل بكعب نسائي', NULL, 'inactive', 'active', '2024-01-18 09:48:14', '2024-01-29 09:15:56'),
(99, 'Women\'s Sleepwear', 47, 'womens-sleepwear', 'womens-sleepwear.jpg', 'ملابس نوم نسائية', NULL, 'inactive', 'active', '2024-01-18 09:49:32', '2024-01-29 09:16:10'),
(100, 'Women\'s Shapewear', 47, 'womens-shapewear', 'womens-shapewear.jpg', 'ملابس داخلية نسائية', NULL, 'inactive', 'active', '2024-01-18 09:50:42', '2024-01-29 09:16:46'),
(101, 'Women\'s Bras & Bralettes', 47, 'womens-bras-bralettes', 'womens-bras-bralettes.jpg', 'حمالات الصدر النسائية & براليت', NULL, 'inactive', 'active', '2024-01-18 09:52:02', '2024-01-29 09:17:51'),
(102, 'Men\'s Boots', 48, 'mens-boots', 'mens-boots.jpg', 'أحذية رجالية', NULL, 'inactive', 'active', '2024-01-18 09:53:24', '2024-01-29 09:18:06'),
(103, 'Men\'s Semi-Formal Shoes', 48, 'mens-semi-formal-shoes', 'mens-semi-formal-shoes.jpg', 'أحذية رجالية شبه رسمية', NULL, 'inactive', 'active', '2024-01-18 09:54:10', '2024-01-29 09:18:19'),
(104, 'Men\'s Slippers', 48, 'mens-slippers', 'mens-slippers.jpg', 'النعال الرجالية', NULL, 'inactive', 'active', '2024-01-18 09:55:00', '2024-01-29 09:18:35'),
(106, 'Men\'s Shapewear', 49, 'mens-shapewear', 'mens-shapewear.jpg', 'ملابس داخلية للرجال', NULL, 'inactive', 'active', '2024-01-18 09:56:37', '2024-01-29 09:18:50'),
(107, 'Men\'s Underwear', 49, 'mens-underwear', 'mens-underwear.jpg', 'الملابس الداخلية للرجال', NULL, 'inactive', 'active', '2024-01-18 09:57:37', '2024-01-29 09:19:02'),
(108, 'Men\'s Loungewear', 49, 'mens-loungewear', 'mens-loungewear.jpg', 'ملابس نوم رجالية', NULL, 'inactive', 'active', '2024-01-18 09:58:37', '2024-01-29 09:19:14'),
(109, 'Women\'s Activewear', 50, 'womens-activewear', 'womens-activewear.jpg', 'ملابس رياضية نسائية', NULL, 'inactive', 'active', '2024-01-18 10:01:12', '2024-01-29 09:19:31'),
(110, 'Men\'s Sports Clothing', 50, 'mens-sports-clothing', 'mens-sports-clothing.jpg', 'ملابس رياضية رجالية', NULL, 'inactive', 'active', '2024-01-18 10:02:48', '2024-01-29 09:19:46'),
(111, 'Outdoor Lights', 50, 'outdoor-lights', 'outdoor-lights.jpg', 'أضواء خارجية', NULL, 'inactive', 'active', '2024-01-18 10:04:27', '2024-01-29 09:19:59'),
(125, 'Demo', 111, 'demo', '481404.png', 'تجريبي', NULL, 'inactive', 'active', '2024-01-30 08:57:42', '2024-01-30 11:07:12'),
(127, 'Test', 111, 'test', 'test.png', 'امتحان', NULL, 'inactive', 'active', '2024-01-30 11:48:26', '2024-02-01 04:11:13'),
(129, 'V-Style', 88, 'v-style', 'v-style.jpg', 'abc1', NULL, 'inactive', 'active', '2024-01-31 12:12:11', '2024-02-01 04:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_us_name` varchar(255) DEFAULT NULL,
  `contact_us_email` varchar(255) DEFAULT NULL,
  `contact_us_message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `contact_us_name`, `contact_us_email`, `contact_us_message`, `created_at`, `updated_at`) VALUES
(2, 'rakesh', 'nbtmahesh4@gmail.com', 'dsf', '2024-01-05 07:58:09', '2024-01-05 07:58:09'),
(3, 'name', 'user@gmail.com', 'dsf', '2024-01-05 07:58:19', '2024-01-05 07:58:19'),
(4, 'jon', 'jon@mailinator.com', 'this message for testing', '2024-01-08 04:56:06', '2024-01-08 04:56:06'),
(6, 'jakc', 'json@mailinator.com', 'hello', '2024-01-08 04:59:37', '2024-01-08 04:59:37'),
(8, 'jon', 'jon@mailinator.com', 'this message for testing', '2024-01-17 10:02:40', '2024-01-17 10:02:40'),
(9, 'jon', 'jon@mailinator.com', 'this message for testing', '2024-01-18 05:36:03', '2024-01-18 05:36:03'),
(10, 'ram', 'ramavatarchoudhary008@gmail.com', 'hello!', '2024-01-18 07:19:06', '2024-01-18 07:19:06'),
(11, 'jon', 'jon@mailinator.com', 'this message for testing', '2024-01-29 07:10:18', '2024-01-29 07:10:18'),
(12, 'jon', 'jon@mailinator.com', 'this message for testing', '2024-01-31 12:25:53', '2024-01-31 12:25:53'),
(13, 'jon', 'jon@mailinator.com', 'this message for testing', '2024-01-31 12:27:46', '2024-01-31 12:27:46'),
(14, 'jon', 'jon@mailinator.com', 'this message for testing', '2024-02-01 04:38:48', '2024-02-01 04:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) NOT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', '', NULL, 672),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', '', NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', '', NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_24_102810_create_user_models_table', 1),
(6, '2023_04_27_055506_create_subadmin_models_table', 1),
(7, '2023_04_28_062928_create_blogs_models_table', 1),
(8, '2023_04_29_095948_create_pages_models_table', 1),
(9, '2023_11_27_063728_create_parent_category_models_table', 1),
(10, '2023_11_27_065006_create_child_category_models_table', 1),
(11, '2023_11_27_070005_create_sub_child_category_models_table', 1),
(15, '2023_12_01_130522_create_variation_attribute_models_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_banner`
--

CREATE TABLE `pages_banner` (
  `id` bigint(20) NOT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `page_banner_location` varchar(255) NOT NULL,
  `banner_icon` longtext NOT NULL,
  `banner_status` varchar(50) NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_banner`
--

INSERT INTO `pages_banner` (`id`, `page_name`, `page_banner_location`, `banner_icon`, `banner_status`, `created_at`, `updated_at`) VALUES
(1, 'home', 'top', '{\"0\":\"image_0.png\",\"1\":\"image_1.png\",\"2\":\"image_2.png\",\"3\":\"image_3.png\"}', 'active', '2023-12-29 04:54:26', '2023-12-29 05:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `pages_models`
--

CREATE TABLE `pages_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `language_type` varchar(255) DEFAULT NULL,
  `a_content` longtext DEFAULT NULL,
  `a_heading` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_models`
--

INSERT INTO `pages_models` (`id`, `heading`, `content`, `image`, `bg_image`, `page_name`, `language_type`, `a_content`, `a_heading`, `type`, `created_at`, `updated_at`) VALUES
(6, 'Home Page Big-Banner', '{\"big_banner_subtitle\":\"ELECTRONIC DAY\",\"big_banner_offer\":\"40 % off\",\"big_banner_title\":\"GET YOUR DREAM DEVICE\",\"shop_now\":\"Shop Now\",\"shop_now_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/categories\",\"image\":\"3108.png\",\"image_bg\":\"3833.png\"}', NULL, NULL, 'Front-Home-Page', 'English', '{\"a_big_banner_subtitle\":\"\\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\",\"a_big_banner_offer\":\"40\\u066a \\u0645\\u0646\",\"a_big_banner_title\":\"\\u0627\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u062c\\u0647\\u0627\\u0632 \\u0623\\u062d\\u0644\\u0627\\u0645\\u0643\",\"a_shop_now\":\"\\u062a\\u0633\\u0648\\u0642 \\u0627\\u0644\\u0622\\u0646\",\"a_shop_now_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/categories\",\"a_image\":\"8097.png\",\"a_image_bg\":\"2418.png\"}', NULL, NULL, '2024-01-08 05:37:58', '2024-01-16 12:08:09'),
(7, 'Home Page Small-Banner-1', '{\"small_banner_title\":\"SALE\",\"small_banner_offer\":\"UPTO 60% OFF\",\"small_banner_contant\":\"School Collections\",\"image\":\"6469.png\",\"image_bg\":\"5499.png\"}', NULL, NULL, 'Front-Home-Page', 'English', '{\"a_small_banner_title\":\"\\u0623\\u064f\\u0648\\u0643\\u064e\\u0627\\u0632\\u064a\\u064f\\u0648\\u0646\",\"a_small_banner_offer\":\"\\u062e\\u0635\\u0645 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 60%\",\"a_small_banner_contant\":\"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0645\\u062f\\u0631\\u0633\\u0629\",\"a_image\":\"5892.png\",\"a_image_bg\":\"5962.png\"}', NULL, NULL, '2024-01-08 09:13:23', '2024-01-16 12:29:44'),
(8, 'Home Page Small-Banner-2', '{\"small_banner_subtitle\":\"APPAREL\",\"small_banner_title\":\"UPGRADE YOUR STYLE\",\"small_banner_contant\":\"Streetwear Collections\",\"image\":\"2507.png\"}', NULL, NULL, 'Front-Home-Page', 'English', '{\"a_small_banner_subtitle\":\"\\u062b\\u064a\\u0627\\u0628\",\"a_small_banner_title\":\"\\u062a\\u0631\\u0642\\u064a\\u0629 \\u0623\\u0633\\u0644\\u0648\\u0628\\u0643\",\"a_small_banner_contant\":\"\\u0645\\u062c\\u0645\\u0648\\u0639\\u0627\\u062a \\u0645\\u0644\\u0627\\u0628\\u0633 \\u0627\\u0644\\u0634\\u0627\\u0631\\u0639\",\"a_image\":\"1081.png\"}', NULL, NULL, '2024-01-08 09:31:23', '2024-01-16 12:47:46'),
(10, NULL, '{\"question\":\"how this is website?\",\"answer\":\"incredible\"}', NULL, NULL, 'FAQ', 'English', NULL, NULL, NULL, '2024-01-08 11:43:44', '2024-01-11 12:48:29'),
(11, NULL, '{\"question\":\"what new products are coming out ?\",\"answer\":\"t-shirt\"}', NULL, NULL, 'FAQ', 'English', NULL, NULL, NULL, '2024-01-08 12:09:17', '2024-01-08 12:09:17'),
(23, NULL, '{\"question\":\"\\u0643\\u064a\\u0641 \\u0647\\u0630\\u0627 \\u0627\\u0644\\u0645\\u0648\\u0642\\u0639\\u061f\",\"answer\":\"\\u0631\\u0627\\u0626\\u0639\"}', NULL, NULL, 'FAQ', 'Arabic', NULL, NULL, NULL, '2024-01-11 12:43:30', '2024-01-11 12:43:30'),
(24, NULL, '{\"question\":\"\\u0645\\u0627 \\u0647\\u064a \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\\u0629 \\u0627\\u0644\\u062a\\u064a \\u062a\\u062e\\u0631\\u062c\\u061f\",\"answer\":\"\\u062a\\u064a \\u0634\\u064a\\u0631\\u062a\"}', NULL, NULL, 'FAQ', 'Arabic', NULL, NULL, NULL, '2024-01-11 12:49:27', '2024-01-11 12:49:27'),
(26, 'Top-Header-Menu', '{\"get_the_mohally_app\":\"Get the Mohally App\",\"free_shipping\":\"Free Shipping\",\"free_returns\":\"Free Returns\",\"support\":\"Support\",\"cart\":\"Cart\",\"get_the_mohally_app_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"free_shipping_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"free_returns_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"support_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"cart_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"}', NULL, NULL, 'Main-Home-Page', NULL, '{\"a_get_the_mohally_app\":\"\\u0627\\u062d\\u0635\\u0644 \\u0639\\u0644\\u0649 \\u062a\\u0637\\u0628\\u064a\\u0642 \\u0645\\u0648\\u0647\\u0627\\u0644\\u064a\",\"a_free_shipping\":\"\\u0627\\u0644\\u0634\\u062d\\u0646 \\u0645\\u062c\\u0627\\u0646\\u0627\",\"a_free_returns\":\"\\u0625\\u0631\\u062c\\u0627\\u0639 \\u0645\\u062c\\u0627\\u0646\\u064a\",\"a_support\":\"\\u064a\\u062f\\u0639\\u0645\",\"a_cart\":\"\\u0639\\u0631\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0633\\u0648\\u0642\",\"a_get_the_mohally_app_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"a_free_shipping_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"a_free_returns_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"a_support_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"a_cart_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"}', NULL, NULL, '2024-01-12 08:55:34', '2024-01-16 10:07:54'),
(27, 'Title-Header-Menu', '{\"logo\":\"8322.png\",\"logo_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"menu\":{\"0\":\"Home\",\"1\":\"Best-Seller\",\"2\":\"5-star-rated\",\"3\":\"New-Arrivals\",\"4\":\"Wishlist\",\"5\":\"Categories\"},\"menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"1\":\"https:\\/\\/urlsdemo.net\\/mohally\\/best-seller\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/5-star-rated\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/new-arrivals\",\"4\":\"https:\\/\\/urlsdemo.net\\/mohally\\/front-user-sign-in\",\"5\":\"https:\\/\\/urlsdemo.net\\/mohally\\/categories\"},\"sign_in\":\"Sign in\",\"sign_in_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/front-user-sign-in\",\"register\":\"Register\",\"register_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/front-user-sign-up\"}', NULL, NULL, 'Main-Home-Page', NULL, '{\"a_logo\":\"8186.png\",\"a_logo_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"a_menu\":{\"0\":\"\\u0628\\u064a\\u062a\",\"1\":\"\\u0627\\u0644\\u0623\\u0643\\u062b\\u0631 \\u0645\\u0628\\u064a\\u0639\\u064b\\u0627\",\"2\":\"\\u062a\\u0635\\u0646\\u064a\\u0641 5 \\u0646\\u062c\\u0648\\u0645\",\"3\":\"\\u0627\\u0644\\u0648\\u0627\\u0641\\u062f\\u0648\\u0646 \\u0627\\u0644\\u062c\\u062f\\u062f\",\"4\":\"\\u0642\\u0627\\u0626\\u0645\\u0629 \\u0627\\u0644\\u0631\\u063a\\u0628\\u0627\\u062a\",\"5\":\"\\u0641\\u0626\\u0627\\u062a\"},\"a_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"1\":\"https:\\/\\/urlsdemo.net\\/mohally\\/best-seller\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/5-star-rated\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/new-arrivals\",\"4\":\"https:\\/\\/urlsdemo.net\\/mohally\\/front-user-sign-in\",\"5\":\"https:\\/\\/urlsdemo.net\\/mohally\\/categories\"},\"a_sign_in\":\"\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u062f\\u062e\\u0648\\u0644\",\"a_sign_in_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/front-user-sign-in\",\"a_register\":\"\\u064a\\u0633\\u062c\\u0644\",\"a_register_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/front-user-sign-up\"}', NULL, NULL, '2024-01-13 05:00:47', '2024-01-13 07:47:54'),
(28, 'Footer-Menu', '{\"company_info\":\"COMPANY INFO\",\"info_menu\":{\"0\":\"About Mohally\",\"1\":\"Mohally - Team Up, Price Down!\",\"2\":\"Affiliate & influencer Program\",\"3\":\"Contact us\"},\"info_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/about\",\"1\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/contact-us\"},\"customer_service\":\"CUSTOMER SERVICE\",\"cust_menu\":{\"0\":\"Return and refund policy\",\"1\":\"Intellectual property policy\",\"2\":\"Shipping info\",\"3\":\"Your Recalls and Product Safety Alerts\"},\"cust_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"1\":\"Intellectual property policy url\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"},\"help\":\"HELP\",\"help_menu\":{\"0\":\"Support center & FAQ\",\"1\":\"Mohally purchase protection\",\"2\":\"How to order\",\"3\":\"How to track\",\"4\":\"Sell on Mohally\"},\"help_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"1\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"4\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"},\"down\":\"DOWNLOAD THE MOHALLY APP\",\"down_menu\":{\"0\":\"available on the\",\"1\":\"App Store\",\"2\":\"androd app on\",\"3\":\"Goole Play\",\"4\":\"twiter\",\"5\":\"facebook\",\"6\":\"linkedin\",\"7\":\"instagram\"},\"down_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"1\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"4\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"5\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"6\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"7\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"}}', NULL, NULL, 'Main-Home-Page', NULL, '{\"a_company_info\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629\",\"a_info_menu\":{\"0\":\"\\u0639\\u0646 \\u0645\\u062d\\u0627\\u0644\\u064a\",\"1\":\"\\u0645\\u0648\\u0647\\u0627\\u0644\\u064a - \\u0643\\u0648\\u0651\\u0646 \\u0641\\u0631\\u064a\\u0642\\u064b\\u0627\\u060c \\u0648\\u062e\\u0641\\u0636 \\u0627\\u0644\\u0633\\u0639\\u0631!\",\"2\":\"\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0645\\u0624\\u062b\\u0631\\u064a\\u0646\",\"3\":\"\\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627\"},\"a_info_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/about\",\"1\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/contact-us\"},\"a_customer_service\":\"\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0632\\u0628\\u0627\\u0626\\u0646\",\"a_cust_menu\":{\"0\":\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0625\\u0631\\u062c\\u0627\\u0639 \\u0648\\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f\",\"1\":\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0645\\u0644\\u0643\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0643\\u0631\\u064a\\u0629\",\"2\":\"\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0634\\u062d\\u0646\",\"3\":\"\\u0639\\u0645\\u0644\\u064a\\u0627\\u062a \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0648\\u062a\\u0646\\u0628\\u064a\\u0647\\u0627\\u062a \\u0633\\u0644\\u0627\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\"},\"a_cust_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"1\":\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0645\\u0644\\u0643\\u064a\\u0629 \\u0627\\u0644\\u0641\\u0643\\u0631\\u064a\\u0629\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"},\"a_help\":\"\\u064a\\u0633\\u0627\\u0639\\u062f\",\"a_help_menu\":{\"0\":\"\\u0645\\u0631\\u0643\\u0632 \\u0627\\u0644\\u062f\\u0639\\u0645 \\u0648\\u0627\\u0644\\u0623\\u0633\\u0626\\u0644\\u0629 \\u0627\\u0644\\u0634\\u0627\\u0626\\u0639\\u0629\",\"1\":\"\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0634\\u062a\\u0631\\u064a\\u0627\\u062a \\u0645\\u0648\\u0647\\u0627\\u0644\\u064a\",\"2\":\"\\u0643\\u064a\\u0641 \\u062a\\u0637\\u0644\\u0628\",\"3\":\"\\u0643\\u064a\\u0641\\u064a\\u0629 \\u062a\\u062a\\u0628\\u0639\",\"4\":\"\\u0628\\u064a\\u0639 \\u0639\\u0644\\u0649\"},\"a_help_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"1\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"4\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"},\"a_down\":\"\\u0642\\u0645 \\u0628\\u062a\\u062d\\u0645\\u064a\\u0644 \\u062a\\u0637\\u0628\\u064a\\u0642 \\u0645\\u0648\\u0647\\u0627\\u0644\\u064a\",\"a_down_menu\":{\"0\":\"\\u0645\\u062a\\u0627\\u062d \\u0639\\u0644\\u0649\",\"1\":\"\\u0645\\u062a\\u062c\\u0631 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a\",\"2\":\"\\u062a\\u0637\\u0628\\u064a\\u0642 \\u0623\\u0646\\u062f\\u0631\\u0648\\u064a\\u062f \\u0639\\u0644\\u0649\",\"3\":\"\\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a \\u062c\\u0648\\u062c\\u0644\",\"4\":\"\\u062a\\u0648\\u064a\\u062a\\u0631\",\"5\":\"\\u0641\\u064a\\u0633\\u0628\\u0648\\u0643\",\"6\":\"\\u064a\\u0646\\u0643\\u062f\\u064a\\u0646\",\"7\":\"\\u0627\\u0646\\u0633\\u062a\\u063a\\u0631\\u0627\\u0645\"},\"a_down_menu_url\":{\"0\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"1\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"2\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"3\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"4\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"5\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"6\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"7\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"}}', NULL, NULL, '2024-01-16 06:00:33', '2024-01-16 09:12:55'),
(29, 'Bottom-Menu', '{\"all_rights\":\"\\u00a9 2023 all rights reserved\",\"terms_of_use\":\"Terms of use\",\"privacy_policy\":\"Privacy policy\",\"all_rights_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"terms_of_use_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"privacy_policy_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"}', NULL, NULL, 'Main-Home-Page', NULL, '{\"a_all_rights\":\"\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u062d\\u0642\\u0648\\u0642 \\u0645\\u062d\\u0641\\u0648\\u0638\\u0629 \\u0631\\u0627\\u0628\\u0637\",\"a_terms_of_use\":\"\\u0634\\u0631\\u0648\\u0637 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\",\"a_privacy_policy\":\"\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u064a\\u0629\",\"a_all_rights_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"a_terms_of_use_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\",\"a_privacy_policy_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/\"}', NULL, NULL, '2024-01-16 09:53:25', '2024-01-16 10:05:44'),
(30, 'Home-Page-Title-Content', '{\"new_arrivals\":\"New Arrivals\",\"see_all_product\":\"see all\",\"see_all_category\":\"see all\",\"see_more_product\":\"see more\",\"explore_your_interests\":\"Explore Your Interests\",\"categories\":\"Categories\",\"see_all_product_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/new-arrivals\",\"see_all_category_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/categories\",\"see_more_product_url\":\"https:\\/\\/urlsdemo.net\\/mohally\"}', NULL, NULL, 'Front-Home-Page', NULL, '{\"a_new_arrivals\":\"\\u0627\\u0644\\u0642\\u0627\\u062f\\u0645\\u0648\\u0646 \\u0627\\u0644\\u062c\\u062f\\u062f\",\"a_see_all_product\":\"\\u0627\\u0638\\u0647\\u0627\\u0631 \\u0627\\u0644\\u0643\\u0644\",\"a_see_all_category\":\"\\u0627\\u0638\\u0647\\u0627\\u0631 \\u0627\\u0644\\u0643\\u0644\",\"a_see_more_product\":\"\\u0634\\u0627\\u0647\\u062f \\u0627\\u0644\\u0645\\u0632\\u064a\\u062f\",\"a_explore_your_interests\":\"\\u0627\\u0633\\u062a\\u0643\\u0634\\u0641 \\u0627\\u0647\\u062a\\u0645\\u0627\\u0645\\u0627\\u062a\\u0643\",\"a_categories\":\"\\u0641\\u0626\\u0627\\u062a\",\"a_see_all_product_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/new-arrivals\",\"a_see_all_category_url\":\"https:\\/\\/urlsdemo.net\\/mohally\\/categories\",\"a_see_more_product_url\":\"https:\\/\\/urlsdemo.net\\/mohally\"}', NULL, NULL, '2024-01-16 13:22:48', '2024-01-17 05:09:28'),
(31, 'customer-support', '{\"content\":\"<p><strong>What is Lorem Ipsum?<\\/strong><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\",\"content1\":\"<p><strong>What is Lorem Ipsum?<\\/strong><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\"}', '{\"image\":\"21553.png\",\"image1\":\"18407.png\"}', NULL, 'customer-support', NULL, '{\"content\":\"<pre>\\r\\n\\u0645\\u0627 \\u0647\\u0648 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u061f<\\/pre>\\r\\n\\r\\n<pre>\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a. \\u0627\\u0646\\u062a\\u0634\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631 \\u0641\\u064a \\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u0627\\u064b \\u0645\\u0639 \\u0638\\u0647\\u0648\\u0631 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0636\\u0645\\u0646\\u062a \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645.\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628.\\r\\n<\\/pre>\",\"content1\":\"<pre>\\r\\n\\u0645\\u0627 \\u0647\\u0648 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u061f<\\/pre>\\r\\n\\r\\n<pre>\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a. \\u0627\\u0646\\u062a\\u0634\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631 \\u0641\\u064a \\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u0627\\u064b \\u0645\\u0639 \\u0638\\u0647\\u0648\\u0631 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0636\\u0645\\u0646\\u062a \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645.\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628.\\r\\n<\\/pre>\"}', 'دعم العملاء', NULL, '2024-01-19 07:34:54', '2024-01-22 04:36:35'),
(32, 'privacy-policy', '{\"content\":\"<p><strong>What is Lorem Ipsum?<\\/strong><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\",\"content1\":\"<p><strong>What is Lorem Ipsum?<\\/strong><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\"}', '{\"image\":\"50088.png\",\"image1\":\"87342.png\"}', NULL, 'privacy-policy', NULL, '{\"content\":\"<pre>\\r\\n\\u0645\\u0627 \\u0647\\u0648 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u061f\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a. \\u0627\\u0646\\u062a\\u0634\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631 \\u0641\\u064a \\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u0627\\u064b \\u0645\\u0639 \\u0638\\u0647\\u0648\\u0631 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0636\\u0645\\u0646\\u062a \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645.\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628.<\\/pre>\",\"content1\":\"<pre>\\r\\n\\u0645\\u0627 \\u0647\\u0648 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u061f\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a. \\u0627\\u0646\\u062a\\u0634\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631 \\u0641\\u064a \\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u0627\\u064b \\u0645\\u0639 \\u0638\\u0647\\u0648\\u0631 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0636\\u0645\\u0646\\u062a \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645.\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628.<\\/pre>\"}', 'سياسة الخصوصية', NULL, '2024-01-19 10:36:32', '2024-01-19 10:53:12'),
(34, 'terms-and-conditions', '{\"content\":\"<p><strong>Terms of Use<\\/strong><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\\r\\n\\r\\n<p><strong>1. Clause<\\/strong><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<\\/p>\\r\\n\\r\\n<p><strong>2. Clause<\\/strong><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<\\/p>\\r\\n\\r\\n<p><strong>3. Clause<\\/strong><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.<\\/p>\"}', '{\"image\":\"10078.png\"}', NULL, 'terms-and-conditions', NULL, '{\"content\":\"<pre>\\r\\n\\u0634\\u0631\\u0648\\u0637 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a. \\u0627\\u0646\\u062a\\u0634\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631 \\u0641\\u064a \\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u0627\\u064b \\u0645\\u0639 \\u0638\\u0647\\u0648\\u0631 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0636\\u0645\\u0646\\u062a \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645.\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628.\\r\\n\\r\\n1. \\u0628\\u0646\\u062f\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a.\\r\\n\\r\\n2. \\u0628\\u0646\\u062f\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a.\\r\\n\\r\\n3. \\u0627\\u0644\\u0628\\u0646\\u062f\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a.<\\/pre>\"}', 'الأحكام والشروط', NULL, '2024-01-19 12:17:50', '2024-01-19 12:31:55');
INSERT INTO `pages_models` (`id`, `heading`, `content`, `image`, `bg_image`, `page_name`, `language_type`, `a_content`, `a_heading`, `type`, `created_at`, `updated_at`) VALUES
(35, 'about-us', '{\"content5\":\"<p><span style=\\\"font-size:18px\\\"><strong>What is Lorem Ipsum?<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\",\"content6\":\"<p><span style=\\\"font-size:18px\\\"><strong>What is Lorem Ipsum?<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\",\"content7\":\"<p><span style=\\\"font-size:18px\\\"><strong>What is Lorem Ipsum?<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\",\"icon_title\":{\"0\":\"Empowerment\",\"1\":\"Inclusion and diversity\",\"2\":\"Integrity\",\"3\":\"Socially responsible\"},\"icon_content\":{\"0\":\"Everyone deserves to live the life they dream of having\",\"1\":\"Everyone deserves to live the life they dream of having\",\"2\":\"Everyone deserves to live the life they dream of having\",\"3\":\"Everyone deserves to live the life they dream of having\"}}', '{\"image\":\"11870.png\",\"image1\":\"70646.png\",\"image2\":\"76882.png\",\"icon\":{\"0\":\"170590741541.png\",\"1\":\"170590741527.png\",\"2\":\"170590741512.png\",\"3\":\"170590741529.png\"}}', NULL, 'about-us', NULL, '{\"content5\":\"<pre>\\r\\n\\u0645\\u0627 \\u0647\\u0648 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u061f\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a. \\u0627\\u0646\\u062a\\u0634\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631 \\u0641\\u064a \\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u0627\\u064b \\u0645\\u0639 \\u0638\\u0647\\u0648\\u0631 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0636\\u0645\\u0646\\u062a \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645.\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628.<\\/pre>\",\"content6\":\"<pre>\\r\\n\\u0645\\u0627 \\u0647\\u0648 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u061f\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a. \\u0627\\u0646\\u062a\\u0634\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631 \\u0641\\u064a \\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u0627\\u064b \\u0645\\u0639 \\u0638\\u0647\\u0648\\u0631 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0636\\u0645\\u0646\\u062a \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645.\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628.<\\/pre>\",\"content7\":\"<pre>\\r\\n\\u0645\\u0627 \\u0647\\u0648 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u061f\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628. \\u0644\\u0642\\u062f \\u0635\\u0645\\u062f\\u062a \\u0644\\u064a\\u0633 \\u0641\\u0642\\u0637 \\u0644\\u062e\\u0645\\u0633\\u0629 \\u0642\\u0631\\u0648\\u0646\\u060c \\u0628\\u0644 \\u0642\\u0641\\u0632\\u062a \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\\u060c \\u0648\\u0628\\u0642\\u064a\\u062a \\u062f\\u0648\\u0646 \\u062a\\u063a\\u064a\\u064a\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0623\\u0633\\u0627\\u0633\\u064a. \\u0627\\u0646\\u062a\\u0634\\u0631 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631 \\u0641\\u064a \\u0633\\u062a\\u064a\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0645\\u0627\\u0636\\u064a \\u0645\\u0639 \\u0625\\u0635\\u062f\\u0627\\u0631 \\u0623\\u0648\\u0631\\u0627\\u0642 Letraset \\u0627\\u0644\\u062a\\u064a \\u062a\\u062d\\u062a\\u0648\\u064a \\u0639\\u0644\\u0649 \\u0645\\u0642\\u0627\\u0637\\u0639 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645\\u060c \\u0648\\u0645\\u0624\\u062e\\u0631\\u0627\\u064b \\u0645\\u0639 \\u0638\\u0647\\u0648\\u0631 \\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0646\\u0634\\u0631 \\u0627\\u0644\\u0645\\u0643\\u062a\\u0628\\u064a \\u0645\\u062b\\u0644 Aldus PageMaker \\u0648\\u0627\\u0644\\u062a\\u064a \\u062a\\u0636\\u0645\\u0646\\u062a \\u0625\\u0635\\u062f\\u0627\\u0631\\u0627\\u062a \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645.\\r\\n\\r\\n\\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0628\\u0628\\u0633\\u0627\\u0637\\u0629 \\u0646\\u0635 \\u0648\\u0647\\u0645\\u064a \\u0645\\u0646 \\u0635\\u0646\\u0627\\u0639\\u0629 \\u0627\\u0644\\u0637\\u0628\\u0627\\u0639\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0636\\u064a\\u062f. \\u0644\\u0642\\u062f \\u0643\\u0627\\u0646 \\u0644\\u0648\\u0631\\u064a\\u0645 \\u0625\\u064a\\u0628\\u0633\\u0648\\u0645 \\u0647\\u0648 \\u0627\\u0644\\u0646\\u0635 \\u0627\\u0644\\u0648\\u0647\\u0645\\u064a \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633\\u064a \\u0641\\u064a \\u0627\\u0644\\u0635\\u0646\\u0627\\u0639\\u0629 \\u0645\\u0646\\u0630 \\u0627\\u0644\\u0642\\u0631\\u0646 \\u0627\\u0644\\u0633\\u0627\\u062f\\u0633 \\u0639\\u0634\\u0631\\u060c \\u0639\\u0646\\u062f\\u0645\\u0627 \\u0623\\u062e\\u0630\\u062a \\u0637\\u0627\\u0628\\u0639\\u0629 \\u063a\\u064a\\u0631 \\u0645\\u0639\\u0631\\u0648\\u0641\\u0629 \\u0644\\u0648\\u062d \\u0627\\u0644\\u0643\\u062a\\u0627\\u0628\\u0629 \\u0648\\u062e\\u0644\\u0637\\u062a\\u0647 \\u0644\\u0635\\u0646\\u0639 \\u0646\\u0645\\u0648\\u0630\\u062c \\u0643\\u062a\\u0627\\u0628.<\\/pre>\",\"icon_title\":{\"0\":\"\\u0627\\u0644\\u062a\\u0645\\u0643\\u064a\\u0646\",\"1\":\"\\u0627\\u0644\\u0634\\u0645\\u0648\\u0644 \\u0648\\u0627\\u0644\\u062a\\u0646\\u0648\\u0639\",\"2\":\"\\u0646\\u0632\\u0627\\u0647\\u0629\",\"3\":\"\\u0645\\u0633\\u0624\\u0648\\u0644 \\u0625\\u062c\\u062a\\u0645\\u0627\\u0639\\u064a\\u0627\"},\"icon_content\":{\"0\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639 \\u064a\\u0633\\u062a\\u062d\\u0642 \\u0623\\u0646 \\u064a\\u0639\\u064a\\u0634 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0627\\u0644\\u062a\\u064a \\u064a\\u062d\\u0644\\u0645 \\u0628\\u0647\\u0627\",\"1\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639 \\u064a\\u0633\\u062a\\u062d\\u0642 \\u0623\\u0646 \\u064a\\u0639\\u064a\\u0634 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0627\\u0644\\u062a\\u064a \\u064a\\u062d\\u0644\\u0645 \\u0628\\u0647\\u0627\",\"2\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639 \\u064a\\u0633\\u062a\\u062d\\u0642 \\u0623\\u0646 \\u064a\\u0639\\u064a\\u0634 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0627\\u0644\\u062a\\u064a \\u064a\\u062d\\u0644\\u0645 \\u0628\\u0647\\u0627\",\"3\":\"\\u0627\\u0644\\u062c\\u0645\\u064a\\u0639 \\u064a\\u0633\\u062a\\u062d\\u0642 \\u0623\\u0646 \\u064a\\u0639\\u064a\\u0634 \\u0627\\u0644\\u062d\\u064a\\u0627\\u0629 \\u0627\\u0644\\u062a\\u064a \\u064a\\u062d\\u0644\\u0645 \\u0628\\u0647\\u0627\"}}', 'معلومات عنا', NULL, '2024-01-22 05:21:53', '2024-01-22 07:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\UserModel', 4, 'sdfsdfsfdsdfsd654', '1abc48883b9a74482e4d798de99481a2dbb5d3bf03f0b2f9d3757cb22c935188', '[\"*\"]', '2023-12-12 11:43:23', NULL, '2023-12-12 11:41:35', '2023-12-12 11:43:23'),
(2, 'App\\Models\\UserModel', 12, 'nbtma@mailinator.com', '21549fbf6f7c3a2b2cedbb7cb30e97796326d6551fdbef05c9076d156463065b', '[\"*\"]', NULL, NULL, '2023-12-12 12:38:25', '2023-12-12 12:38:25'),
(3, 'App\\Models\\UserModel', 13, 'btma@mailinator.com', '0c9133c1ae244d94327c4442b999e632680be3be4e70ef506d0f36ac365ed130', '[\"*\"]', NULL, NULL, '2023-12-12 12:39:40', '2023-12-12 12:39:40'),
(4, 'App\\Models\\UserModel', 14, 'b1tma@mailinator.com', '0bf5cfe9b7eb7576368db2f790a45665f28fc8854fee7de5631b3db1e2b60491', '[\"*\"]', NULL, NULL, '2023-12-12 12:41:18', '2023-12-12 12:41:18'),
(5, 'App\\Models\\UserModel', 23, 'n123@mailinator.com', '325cdbedfd555e14b324bf53285453fb1c1519bf3c4645ad7a675d3f93948b93', '[\"*\"]', NULL, NULL, '2023-12-12 13:07:44', '2023-12-12 13:07:44'),
(6, 'App\\Models\\UserModel', 24, 'n1234@mailinator.com', 'faab58b7441c8a688a712153a09837a547557cfc3ba91d182b092eabe46a793f', '[\"*\"]', NULL, NULL, '2023-12-12 13:12:50', '2023-12-12 13:12:50'),
(7, 'App\\Models\\UserModel', 25, 'n12345@mailinator.com', 'dcf1d67c64b666129b29ed0091866f8061c5a431740ae0811991800dc485b612', '[\"*\"]', NULL, NULL, '2023-12-12 13:14:11', '2023-12-12 13:14:11'),
(8, 'App\\Models\\UserModel', 26, 'n123456@mailinator.com', 'e6d22af4e4d6ac3ece8c121eca70fb7ab6f0fb3d6d4dfb9ccba750a155a083a5', '[\"*\"]', NULL, NULL, '2023-12-12 13:15:59', '2023-12-12 13:15:59'),
(9, 'App\\Models\\UserModel', 27, 'n1234567@mailinator.com', '86b73b7d1ae9662b96ddd53cebfdff7bdba1d21ebd2af9e01ba80d38cd742e8b', '[\"*\"]', NULL, NULL, '2023-12-12 13:17:52', '2023-12-12 13:17:52'),
(26, 'App\\Models\\UserModel', 4, 'nbtmahesh41@gmail.com', '660c9954bdec58d2431c9ad801598a5e1d08a7c4ec0f60cbf6fff0795ca3b445', '[\"*\"]', NULL, NULL, '2023-12-13 11:38:39', '2023-12-13 11:38:39'),
(27, 'App\\Models\\UserModel', 5, 'nbtmahesh@mailinator.com', '8de7bcaae0caba83967fd3df8b4061c8123191b98374ba96fab71d453ae185e3', '[\"*\"]', NULL, NULL, '2023-12-13 11:39:20', '2023-12-13 11:39:20'),
(28, 'App\\Models\\UserModel', 6, 'nbtmahesh@mailinator.com', 'dede1b4a89855c7c28a36286c09674b9f64fc08f4383fbc642304fafc79fdf29', '[\"*\"]', NULL, NULL, '2023-12-13 11:40:42', '2023-12-13 11:40:42'),
(30, 'App\\Models\\UserModel', 8, 'nbtmahes1h@mailinator.com', 'e68d82a59fbb62fa350f7cdcb1e18dac77270cbea80392a720f8830df9f8c929', '[\"*\"]', NULL, NULL, '2023-12-13 12:00:53', '2023-12-13 12:00:53'),
(52, 'App\\Models\\UserModel', 3, 'qwerty123@gmail.com', '0081d020343a5f496efb60d3eb70930486cea62b6a89bb7b8b5a7337a0432fc1', '[\"*\"]', NULL, NULL, '2023-12-20 07:10:19', '2023-12-20 07:10:19'),
(56, 'App\\Models\\UserModel', 4, 'abc@gmail.com', 'e7c45a728c24d0a856ea4d26e93b7f0f36a22fa254563296708e7805b030080e', '[\"*\"]', NULL, NULL, '2023-12-20 09:50:52', '2023-12-20 09:50:52'),
(57, 'App\\Models\\UserModel', 4, 'abc@gmail.com', 'd7a17dad3a561eac3a361f8a2ccb3f0afdefd3983580287293e51a0bb8edf0ed', '[\"*\"]', NULL, NULL, '2023-12-20 10:42:07', '2023-12-20 10:42:07'),
(63, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'a8f37b926f438ed5969dffdb96f2512091c7f7c2a55c93ce8b2d2d15dd82c2c1', '[\"*\"]', NULL, NULL, '2023-12-20 12:49:16', '2023-12-20 12:49:16'),
(64, 'App\\Models\\UserModel', 4, 'abc@gmail.com', '45921871b890960ac1b4455fe06087db8ee3078793474aabbcef0cdbefb03c07', '[\"*\"]', NULL, NULL, '2023-12-20 12:51:37', '2023-12-20 12:51:37'),
(65, 'App\\Models\\UserModel', 6, 'as@gmail.com', '84bcfbc62fd7148d37774128200015bcd4fb1fb91aedc6a035c2cd12eede8f79', '[\"*\"]', NULL, NULL, '2023-12-20 13:02:48', '2023-12-20 13:02:48'),
(66, 'App\\Models\\UserModel', 6, 'as@gmail.com', '6e1951f836b90e2833049e7b4c18ef0076bf502f4c1b1a4ea13134a86d19b048', '[\"*\"]', NULL, NULL, '2023-12-20 13:04:54', '2023-12-20 13:04:54'),
(67, 'App\\Models\\UserModel', 4, 'abc@gmail.com', 'd69db50e42c1b212f1d64f5701287f7370286b9d5ac41166794d2bc2329245cf', '[\"*\"]', NULL, NULL, '2023-12-21 04:25:18', '2023-12-21 04:25:18'),
(68, 'App\\Models\\UserModel', 4, 'abc@gmail.com', '825fef9af292801feed88329cfbf889e48b13ffbe63d56cfa0870ed90027f276', '[\"*\"]', NULL, NULL, '2023-12-21 04:28:23', '2023-12-21 04:28:23'),
(69, 'App\\Models\\UserModel', 4, 'abc@gmail.com', '8c428c26c462d4ae878d5af3f495a990055031e0a610bce5a55efadfdf6ceab8', '[\"*\"]', NULL, NULL, '2023-12-21 04:50:37', '2023-12-21 04:50:37'),
(70, 'App\\Models\\UserModel', 4, 'abc@gmail.com', '7a170fb1860ad042722f8dffe287df7d69c28370837be3527cf9f45bc39920e6', '[\"*\"]', '2023-12-21 07:19:59', NULL, '2023-12-21 07:19:38', '2023-12-21 07:19:59'),
(71, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', '0f0daef0a240ca08b1d40ac4ad9340d417f89836ee8a35b66403436fceafecad', '[\"*\"]', NULL, NULL, '2023-12-21 08:00:15', '2023-12-21 08:00:15'),
(72, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', '63fa5807b977cc1c36bd99678593c03e05deaaad80baa5a33fc9c85a89d65b09', '[\"*\"]', NULL, NULL, '2023-12-21 08:00:29', '2023-12-21 08:00:29'),
(73, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', '64557f5ada870570e961f9c35496ad48efb31fdcb5d591f6de58942406dcfbdf', '[\"*\"]', NULL, NULL, '2023-12-21 08:49:21', '2023-12-21 08:49:21'),
(79, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'f7ac06bf6a58a990bb9e64e367bc0ea36d0eb38effe3a2c010dc9cd6e805583d', '[\"*\"]', NULL, NULL, '2023-12-21 11:21:01', '2023-12-21 11:21:01'),
(80, 'App\\Models\\UserModel', 3, 'qwerty123@gmail.com', '9b16cc80a8a723336f9d779986e451bb455d63d2e299c47f50b7486649bbe1a9', '[\"*\"]', NULL, NULL, '2023-12-21 11:23:06', '2023-12-21 11:23:06'),
(81, 'App\\Models\\UserModel', 8, 'hkhk@gmail.com', '7e803141cb2139684c074876944300fde30af2e6cc5ca9bd42b76ce0401a0252', '[\"*\"]', NULL, NULL, '2023-12-21 11:55:24', '2023-12-21 11:55:24'),
(84, 'App\\Models\\UserModel', 10, 'hkhk12@gmail.com', 'beb2edfe1d1c508ffb63c3aefa019c8584f7b317e28504134f03ea0de21f7fe0', '[\"*\"]', NULL, NULL, '2023-12-21 12:12:39', '2023-12-21 12:12:39'),
(88, 'App\\Models\\UserModel', 11, 'www123@gmail.com', 'cccdf06f446bdb9d3303d2f5dfd3a770d36767f440a89a4e2e2a4af5d586fc5a', '[\"*\"]', NULL, NULL, '2023-12-21 13:07:15', '2023-12-21 13:07:15'),
(89, 'App\\Models\\UserModel', 11, 'www123@gmail.com', 'b3a3e21de1885ed2ccbfdbf762febb2e4d4109738cc8c432891940491af54a82', '[\"*\"]', NULL, NULL, '2023-12-21 13:08:44', '2023-12-21 13:08:44'),
(100, 'App\\Models\\UserModel', 12, 'abc323@mailinator.com', 'a38bf68f45fbfdb3ee7f590183b1cdc15e83a74a86fc63ed8a0d88d740852230', '[\"*\"]', NULL, NULL, '2023-12-22 11:09:29', '2023-12-22 11:09:29'),
(101, 'App\\Models\\UserModel', 12, 'abc323@mailinator.com', 'a2683f443c5d4bf5bed463799281145bb7ec8a3834abade924a45881767a34b1', '[\"*\"]', NULL, NULL, '2023-12-22 11:09:44', '2023-12-22 11:09:44'),
(102, 'App\\Models\\UserModel', 12, 'abc323@mailinator.com', '87c101020a5485bbb8133c2f7198b3fd55f2f882027c8109896a279e62aec162', '[\"*\"]', NULL, NULL, '2023-12-22 11:11:00', '2023-12-22 11:11:00'),
(103, 'App\\Models\\UserModel', 7, 'abc322@mailinator.com', 'f8545592c12fff3cc552f7e1f68d1c503795d5f6ba9fabe06e6796c6651f9212', '[\"*\"]', NULL, NULL, '2023-12-22 11:40:22', '2023-12-22 11:40:22'),
(104, 'App\\Models\\UserModel', 7, 'abc322@mailinator.com', 'c1958fb8d3202ac2c2854dbb769e557f1686e2b8e77c31ff30eb47cd1b8436a1', '[\"*\"]', '2023-12-25 04:39:27', NULL, '2023-12-25 04:07:46', '2023-12-25 04:39:27'),
(105, 'App\\Models\\UserModel', 7, 'abc322@mailinator.com', 'bf01a4ea67a07810f6b25017c64dacef6d70afaadd4d84ebaccf654a0784cfdb', '[\"*\"]', '2023-12-25 10:03:02', NULL, '2023-12-25 09:53:19', '2023-12-25 10:03:02'),
(106, 'App\\Models\\UserModel', 13, 'mnb@gmail.com', '5718feacf32a977bd5db17040b013593bec114651a61f39627f2a5a5ff4d03a1', '[\"*\"]', NULL, NULL, '2023-12-26 05:52:07', '2023-12-26 05:52:07'),
(107, 'App\\Models\\UserModel', 13, 'mnb@gmail.com', '642d2946e09fe64c83b6b7fb20b38780308757954ce19269116169432675acf8', '[\"*\"]', NULL, NULL, '2023-12-26 05:52:26', '2023-12-26 05:52:26'),
(108, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'b4101049cd92b2b121a189bc52c0db37e9edddc772c019319b5b1a2a1849df32', '[\"*\"]', '2023-12-27 05:46:20', NULL, '2023-12-27 04:58:28', '2023-12-27 05:46:20'),
(109, 'App\\Models\\UserModel', 15, 'ndemo@mallinator.com', '3758254a89409e60d33e39489a332583db39117bd4f44bc3611fc74a9b7b3bdd', '[\"*\"]', NULL, NULL, '2023-12-27 05:38:48', '2023-12-27 05:38:48'),
(110, 'App\\Models\\UserModel', 15, 'ndemo@mallinator.com', '62babd43aec2986c8167e9d3b079d3d4c808f7dbc1ca5e9b810940cc0b375646', '[\"*\"]', NULL, NULL, '2023-12-27 05:39:17', '2023-12-27 05:39:17'),
(111, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', '2daffa272f8d745898399a871c6e580406b763ce8ddc287770833a8975940d9b', '[\"*\"]', NULL, NULL, '2023-12-27 05:49:07', '2023-12-27 05:49:07'),
(112, 'App\\Models\\UserModel', 15, 'ndemo@mallinator.com', '3bf5acdab57c2d055162fa292ac6a3fae1c5446231b583a012ba7e514a4f3623', '[\"*\"]', NULL, NULL, '2023-12-27 07:35:26', '2023-12-27 07:35:26'),
(113, 'App\\Models\\UserModel', 15, 'ndemo@mallinator.com', '4c7d8918044caa223b5bfe875a43d48dd4144c9d3e48c679212d3bc8df2bcf55', '[\"*\"]', NULL, NULL, '2023-12-27 07:35:26', '2023-12-27 07:35:26'),
(114, 'App\\Models\\UserModel', 7, 'abc322@mailinator.com', 'd80d577edb6dbdb2e918da7d0f37464160f4d2f9a2c0d1af3e8bf59dfe323b68', '[\"*\"]', '2023-12-27 12:24:47', NULL, '2023-12-27 07:44:09', '2023-12-27 12:24:47'),
(115, 'App\\Models\\UserModel', 15, 'ndemo@mallinator.com', 'fde4e129b2d1df0974f59e1960349d37d885977a229bade21b71952e08fd2bed', '[\"*\"]', NULL, NULL, '2023-12-27 09:19:55', '2023-12-27 09:19:55'),
(116, 'App\\Models\\UserModel', 16, 'abc000@mailinator.com', '45c2d1078190957fcd38881435bd372b743076f3b3e6eddde77863c62bad7a89', '[\"*\"]', NULL, NULL, '2023-12-27 09:22:36', '2023-12-27 09:22:36'),
(117, 'App\\Models\\UserModel', 19, 'nbt18@mailinator.com', 'c705c0fe18933ec93a8cf2eade0dcb7f6f60063afc3f242f70532e7deaf9fcb3', '[\"*\"]', NULL, NULL, '2023-12-27 10:52:06', '2023-12-27 10:52:06'),
(118, 'App\\Models\\UserModel', 29, 'nbt1818@mailinator.com', '3a2e8e0de6f90dbb65f20fa2e7d7cb0a74e5c66237e17fa716c3042aaf8735f0', '[\"*\"]', NULL, NULL, '2023-12-27 11:43:41', '2023-12-27 11:43:41'),
(119, 'App\\Models\\UserModel', 29, 'nbt1818@mailinator.com', 'ad114ea90327c5cbfe0c8a5a6cfce0e0de689786330a5fd5bae28a7c2235976d', '[\"*\"]', NULL, NULL, '2023-12-27 11:44:25', '2023-12-27 11:44:25'),
(120, 'App\\Models\\UserModel', 15, 'ndemo@mallinator.com', '7cce81856d00e53461279155047fabf89120e5443337eb904ba65b850591c852', '[\"*\"]', '2023-12-28 11:47:23', NULL, '2023-12-27 11:45:26', '2023-12-28 11:47:23'),
(121, 'App\\Models\\UserModel', 7, 'abc322@mailinator.com', '3af500fa0dbb3bd260ec9627ad4a76e3462528b4944d5bb0514a53b3b1ac0f0a', '[\"*\"]', '2023-12-27 12:23:23', NULL, '2023-12-27 11:58:19', '2023-12-27 12:23:23'),
(122, 'App\\Models\\UserModel', 28, 'govind@mailinator.com', '8a3c098dfaa61a735db198738ab37db88da94cdb3e8f1f99714ae1ec8c39ca46', '[\"*\"]', '2023-12-28 06:28:19', NULL, '2023-12-27 12:22:36', '2023-12-28 06:28:19'),
(123, 'App\\Models\\UserModel', 15, 'ndemo@mallinator.com', '95a40292eaa50a2179672d2c0b985bc12307b927b67f40fdd0d8e6a63201bacc', '[\"*\"]', '2023-12-28 11:11:28', NULL, '2023-12-27 13:07:33', '2023-12-28 11:11:28'),
(124, 'App\\Models\\UserModel', 29, 'nbt1818@mailinator.com', '5b50b6f5c1e5996d1fbe7908e2fe39c6ee3e26ef36f9d8cf4ffe1eb320f9eb57', '[\"*\"]', NULL, NULL, '2023-12-28 05:58:47', '2023-12-28 05:58:47'),
(125, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '9aeae23ec2f99ecff4da019e869ecf30b2f6eb3dfeeef99523e0bd18ead0cbab', '[\"*\"]', '2024-01-22 04:36:43', NULL, '2023-12-28 06:27:55', '2024-01-22 04:36:43'),
(126, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'ebf0083d997ad98c2fd2dbabe3381e1091888e5b76f1938a8a2f400416d3f8c3', '[\"*\"]', NULL, NULL, '2023-12-28 08:57:58', '2023-12-28 08:57:58'),
(127, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'eaf12789233435bbb1c6ae6ee96c18a369ed3b433e1397914432dd0b8b2aaecd', '[\"*\"]', NULL, NULL, '2023-12-28 12:19:08', '2023-12-28 12:19:08'),
(128, 'App\\Models\\UserModel', 30, 'ss@mallinator.com', '5c1fb9314ab6846220c29e7ac757d1ca6033fc29e0b08fac14e44359c732c6c9', '[\"*\"]', NULL, NULL, '2023-12-28 12:21:26', '2023-12-28 12:21:26'),
(129, 'App\\Models\\UserModel', 30, 'ss@mallinator.com', '21c583528eb5662bb1fb9c195e005bd95e8102fb88d8f17d98fa600d44835329', '[\"*\"]', '2023-12-28 12:34:24', NULL, '2023-12-28 12:21:49', '2023-12-28 12:34:24'),
(130, 'App\\Models\\UserModel', 31, 'mdemo@mallinator.com', 'b55eea5a06ab2f96802ea10df9d50bee44eed6f2ae8b05ff0d4fa70f0bdb8702', '[\"*\"]', NULL, NULL, '2023-12-29 04:17:50', '2023-12-29 04:17:50'),
(131, 'App\\Models\\UserModel', 31, 'mdemo@mallinator.com', '82f06ae108b957ed2757c8a1f9c8cb136e9a58e57a3949194c9ab7d91a9e329e', '[\"*\"]', '2023-12-29 04:18:51', NULL, '2023-12-29 04:18:05', '2023-12-29 04:18:51'),
(132, 'App\\Models\\UserModel', 32, 'sdemo@mallinator.com', '0fc0fb5c318f02110de0d5472275b7e780b088dc921109e4e8e5d598a9381429', '[\"*\"]', NULL, NULL, '2023-12-29 04:23:42', '2023-12-29 04:23:42'),
(133, 'App\\Models\\UserModel', 32, 'sdemo@mallinator.com', 'bf365fc2b04f98f45e85da0967ed8a5a9dc002ef8c0ea52aa4bd4aa40fa8e88c', '[\"*\"]', '2024-01-01 07:42:11', NULL, '2023-12-29 04:24:07', '2024-01-01 07:42:11'),
(134, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', '46d880f6d8dfa3511cd6ac92046cd1cec0045197a246ce0de88e40feda751766', '[\"*\"]', '2023-12-29 04:56:58', NULL, '2023-12-29 04:56:52', '2023-12-29 04:56:58'),
(135, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', 'ad84db52dccf712fa206252cb8b6968c4a50b55333f83f1dfaaf262b43343281', '[\"*\"]', '2024-02-01 04:39:05', NULL, '2023-12-29 05:02:06', '2024-02-01 04:39:05'),
(136, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '81d844e5044ab54e8a881ee725f6dd527c33357e8f10312d497503b7a91a8c62', '[\"*\"]', NULL, NULL, '2023-12-29 05:28:23', '2023-12-29 05:28:23'),
(137, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'cc1cb5f3813fc1b87fff9197109636000ffa86aeef9fd4ab209d9ff3615e5cf2', '[\"*\"]', '2023-12-29 05:33:28', NULL, '2023-12-29 05:28:47', '2023-12-29 05:33:28'),
(138, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'ed5bdf4b5940d954f3daa3eea779ca3e19342e7b5ac9425abcc7d6eb6a26cd4c', '[\"*\"]', '2023-12-29 05:34:08', NULL, '2023-12-29 05:33:52', '2023-12-29 05:34:08'),
(139, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'ecfaa56637199fe8c3ce165709392514f4319d843b38bbe1009a7cdd497cce8d', '[\"*\"]', '2023-12-29 05:34:49', NULL, '2023-12-29 05:34:47', '2023-12-29 05:34:49'),
(140, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '8d288cf4b0f8f235ce2cab2771a60286b8e3496b2927411d76506bed693551fc', '[\"*\"]', '2023-12-29 06:15:19', NULL, '2023-12-29 06:15:17', '2023-12-29 06:15:19'),
(141, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'ad9f76dd1f2653328e98687bfbfa0ff9274db5745a55e4c403a0b1472c4b2e10', '[\"*\"]', '2023-12-29 06:21:36', NULL, '2023-12-29 06:21:32', '2023-12-29 06:21:36'),
(142, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'c815524e7694c773e9b0df02cbc9c293349f8613dab3097ff2031fcaeb741ad7', '[\"*\"]', '2023-12-29 06:22:37', NULL, '2023-12-29 06:22:34', '2023-12-29 06:22:37'),
(143, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'a325079285f17cbe3cb44e79b5e6ce4f9e604cbd9d56f5537365289c46dbc381', '[\"*\"]', '2023-12-29 06:23:42', NULL, '2023-12-29 06:23:37', '2023-12-29 06:23:42'),
(144, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '0dade8650d7daea1a413faff17e55c4104e14b8482e0e76ad45ad8ef9165bb14', '[\"*\"]', '2023-12-29 06:25:38', NULL, '2023-12-29 06:25:34', '2023-12-29 06:25:38'),
(145, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'c170f2e1eb9b86f4d7fa0626792b2fb4c25d79c11801c202064c8c2d1cefbc0c', '[\"*\"]', '2023-12-29 06:41:23', NULL, '2023-12-29 06:41:18', '2023-12-29 06:41:23'),
(146, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '09c58a6b9163bc33dd9482bc072230a038a58f9b416395ed9bbd5ee387961d4f', '[\"*\"]', '2023-12-29 06:43:52', NULL, '2023-12-29 06:43:48', '2023-12-29 06:43:52'),
(147, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'a96a20631857167a4b372ad0913f14af2aafea8a25624fdc727fb1472bc0fe39', '[\"*\"]', '2023-12-29 06:44:53', NULL, '2023-12-29 06:44:51', '2023-12-29 06:44:53'),
(148, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '707378c64f2b1c9261c05fc32cd2d4b6f1b68000bd4a12146df2d4915a17ce34', '[\"*\"]', '2023-12-29 06:46:14', NULL, '2023-12-29 06:46:11', '2023-12-29 06:46:14'),
(149, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'e0017c045cb92bacb3f31b143001780dd69722c3249a4111ff45fc7cd769cf44', '[\"*\"]', '2023-12-29 13:26:14', NULL, '2023-12-29 06:52:32', '2023-12-29 13:26:14'),
(150, 'App\\Models\\UserModel', 34, 'demo1234@mailinator.com', 'da0a3a763a481e3a46f8971bffc650aa233acdf1bf258c873102bda9b19e00a9', '[\"*\"]', NULL, NULL, '2023-12-29 13:33:11', '2023-12-29 13:33:11'),
(151, 'App\\Models\\UserModel', 34, 'demo1234@mailinator.com', 'fb3e48189a5317df0c927899108d936cf02741f035083531192b9cc4c6d5312f', '[\"*\"]', '2023-12-29 13:33:37', NULL, '2023-12-29 13:33:32', '2023-12-29 13:33:37'),
(152, 'App\\Models\\UserModel', 34, 'demo1234@mailinator.com', '2cdd76f72918750f5a975c9ff18243cf51c245816d6a53df1951c28ceba7b2a1', '[\"*\"]', '2023-12-29 13:38:27', NULL, '2023-12-29 13:38:21', '2023-12-29 13:38:27'),
(153, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', '70fe0ea72c914c97f89727ee80ef74d6d4ec3b175cd2f981b14dda87519e1f8d', '[\"*\"]', '2023-12-30 05:03:14', NULL, '2023-12-30 05:03:12', '2023-12-30 05:03:14'),
(154, 'App\\Models\\UserModel', 35, 'demo12345@mailinator.com', '94f62fc8904f69c038aff577deeb8f3c30080ae3617a20bc185b3efdee2a237c', '[\"*\"]', NULL, NULL, '2023-12-30 05:10:23', '2023-12-30 05:10:23'),
(155, 'App\\Models\\UserModel', 35, 'demo12345@mailinator.com', 'dcfc628366446270e17ed62805e0fbd6dc33e91db630943db8bd6f2c8b8b45cd', '[\"*\"]', '2023-12-30 05:12:26', NULL, '2023-12-30 05:11:20', '2023-12-30 05:12:26'),
(156, 'App\\Models\\UserModel', 35, 'demo12345@mailinator.com', '74d2eb97410a390228b1722aadad7d1bd18e2c7c40721a924f05458279ddfab6', '[\"*\"]', '2023-12-30 05:13:23', NULL, '2023-12-30 05:13:22', '2023-12-30 05:13:23'),
(157, 'App\\Models\\UserModel', 35, 'demo12345@mailinator.com', '7339b3fd87a0af8158696749161aa8a253598f573362bfe83479085b8096b716', '[\"*\"]', '2023-12-30 05:15:22', NULL, '2023-12-30 05:15:21', '2023-12-30 05:15:22'),
(158, 'App\\Models\\UserModel', 32, 'sdemo@mallinator.com', '7bc47fa97c845f739bf667f48228a3be3095b6239648568351d24d026c790fde', '[\"*\"]', '2023-12-30 05:23:19', NULL, '2023-12-30 05:23:10', '2023-12-30 05:23:19'),
(159, 'App\\Models\\UserModel', 35, 'demo12345@mailinator.com', 'f93a35825dfaf274b3a6042e35c11ad46b2d7d45d80e7ee7eda83fc0d8439d26', '[\"*\"]', '2024-01-05 05:02:59', NULL, '2023-12-30 06:10:08', '2024-01-05 05:02:59'),
(160, 'App\\Models\\UserModel', 34, 'demo1234@mailinator.com', 'e4afb598de377fa6a71c5351548371aa77594f1152512a6cac73380dbb4eabe8', '[\"*\"]', NULL, NULL, '2024-01-01 05:13:46', '2024-01-01 05:13:46'),
(161, 'App\\Models\\UserModel', 34, 'demo1234@mailinator.com', '766ab05d1518322a7534070936c3eb304293e6ffabf10c6574232808d47d53d0', '[\"*\"]', '2024-01-27 09:03:50', NULL, '2024-01-01 05:13:46', '2024-01-27 09:03:50'),
(162, 'App\\Models\\UserModel', 7, 'abc322@mailinator.com', '53b9a7762659c3892ab1d84c57f9fe3b357bcb87c9e8e01be031db123b0a9141', '[\"*\"]', NULL, NULL, '2024-01-01 05:58:16', '2024-01-01 05:58:16'),
(163, 'App\\Models\\UserModel', 32, 'sdemo@mallinator.com', '5bb4b86d8a655157c6c1b57a109728d48f9d4bc6b6b13f849186c901f03b3986', '[\"*\"]', '2024-01-01 07:44:33', NULL, '2024-01-01 07:44:32', '2024-01-01 07:44:33'),
(164, 'App\\Models\\UserModel', 36, 'msdemo@mallinator.com', 'c12c5b9a57968f66f689f5f4692f969de4a8578bf35af07511efb9d701607dc8', '[\"*\"]', NULL, NULL, '2024-01-01 07:46:47', '2024-01-01 07:46:47'),
(165, 'App\\Models\\UserModel', 36, 'msdemo@mallinator.com', '565c73fcc7eba732aea7fcdc49387356aba5d3c6242be39c3026e7f95519817f', '[\"*\"]', '2024-01-01 09:11:17', NULL, '2024-01-01 07:47:17', '2024-01-01 09:11:17'),
(166, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '1950aed1f2c4552f8da66b3cdcf08f4a8e53ef9691bb2912c84b8a7cdfa6510d', '[\"*\"]', '2024-01-27 05:52:01', NULL, '2024-01-02 05:06:34', '2024-01-27 05:52:01'),
(167, 'App\\Models\\UserModel', 34, 'demo1234@mailinator.com', '160a67b6c43ff18b10a7833ab4873de841fdc985cc0141d74a474d80678d22a9', '[\"*\"]', '2024-01-05 04:34:22', NULL, '2024-01-02 05:08:03', '2024-01-05 04:34:22'),
(168, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '64b8fea3252f03247082357e9bf53d3137d52b7bca54fbf3f73820898d952e33', '[\"*\"]', '2024-02-01 08:55:56', NULL, '2024-01-03 07:00:37', '2024-02-01 08:55:56'),
(169, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '56f8ca6c448ec09ed949abe25fce155fd71fb145d3155c64ee0b2fc8008ff56d', '[\"*\"]', '2024-01-19 10:06:17', NULL, '2024-01-05 04:35:21', '2024-01-19 10:06:17'),
(170, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '0d7c9ebacc03d652407029bd0a5210fa8a2c3fa3e1c09b1f6283c67783fbf6d4', '[\"*\"]', '2024-01-05 05:50:21', NULL, '2024-01-05 05:06:32', '2024-01-05 05:50:21'),
(171, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '658ed16a3357a5e803ecde496fd84ad39de036e4d2bd19032fdca8cd83e91510', '[\"*\"]', '2024-01-05 05:54:00', NULL, '2024-01-05 05:52:52', '2024-01-05 05:54:00'),
(172, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'c5c0906fb528c7d88df15f7f1f73c0636824d3be061811c54d5bd782c1dcf38e', '[\"*\"]', '2024-01-05 06:19:03', NULL, '2024-01-05 06:19:02', '2024-01-05 06:19:03'),
(173, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'a8be0938bf64e2d2a9db7eea3958dff4e57b796e2e2c0e002a88c4b1669226e0', '[\"*\"]', '2024-01-05 06:21:37', NULL, '2024-01-05 06:21:33', '2024-01-05 06:21:37'),
(174, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '6062e8acb4554a6d1b5ad183b6f0b34595d7143cb3c4af68b81a500be0f4bfb2', '[\"*\"]', '2024-01-05 06:44:29', NULL, '2024-01-05 06:21:36', '2024-01-05 06:44:29'),
(175, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '802dfdc6bc1cc7cdbcb51c7baee26c8e7204825eab94eb3bfa274f20ab95b0c6', '[\"*\"]', '2024-01-05 06:45:14', NULL, '2024-01-05 06:45:13', '2024-01-05 06:45:14'),
(176, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', '3fbb7336e1df669ef4550b818ec4ee65728cb193354c5d155d78ab200a8fa625', '[\"*\"]', '2024-01-05 08:49:09', NULL, '2024-01-05 06:46:49', '2024-01-05 08:49:09'),
(177, 'App\\Models\\UserModel', 37, 'james321@mailinator.com', '05c503deea65705daa6b409e16f64a7bae980bd12dc6b2c766134afcfb625783', '[\"*\"]', NULL, NULL, '2024-01-05 07:13:51', '2024-01-05 07:13:51'),
(178, 'App\\Models\\UserModel', 38, 'testdemo7260@gmail.com', 'cbc4c375a76c1306902aef00b7e504d9abea24591f9d96ef497739934dc1d1f9', '[\"*\"]', NULL, NULL, '2024-01-05 07:40:58', '2024-01-05 07:40:58'),
(179, 'App\\Models\\UserModel', 39, 'test101@mailinator.com', '9875ac1db4a9753d37a6716f12ee57e03a4ef151bc4d0251435fa73eb11f94ca', '[\"*\"]', NULL, NULL, '2024-01-05 09:21:01', '2024-01-05 09:21:01'),
(180, 'App\\Models\\UserModel', 39, 'test101@mailinator.com', '1235da957d0462e9a331f066202fdbc459fbb8cc5156c90a2cccb29c05665716', '[\"*\"]', '2024-01-05 09:30:24', NULL, '2024-01-05 09:21:23', '2024-01-05 09:30:24'),
(181, 'App\\Models\\UserModel', 39, 'test101@mailinator.com', 'abe177344a3c198facebae3fa5fcff01dfc3ee181b89dfa5111bab7b721f90b1', '[\"*\"]', '2024-01-05 09:33:20', NULL, '2024-01-05 09:33:07', '2024-01-05 09:33:20'),
(182, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', '8d7e7a3a4924a49958c93c56fa9054a7ff0c05ff1c8942cb0615a3df497e53da', '[\"*\"]', '2024-01-05 10:24:15', NULL, '2024-01-05 10:24:13', '2024-01-05 10:24:15'),
(183, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'b1b881d89da1503be2c96071fafd3e51fb6ff32a8c1aff890fd912e3ac34d232', '[\"*\"]', '2024-01-05 10:24:51', NULL, '2024-01-05 10:24:49', '2024-01-05 10:24:51'),
(184, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '56791025ea63a70376ed1b187473db3274e475b8738af95890bc5f026116062f', '[\"*\"]', '2024-01-05 10:31:02', NULL, '2024-01-05 10:30:59', '2024-01-05 10:31:02'),
(185, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', '75ebc78bd309fcac72cfb60fac6e49f82955a7d1fae05d48356c278d095ecdd3', '[\"*\"]', '2024-01-05 10:54:54', NULL, '2024-01-05 10:53:18', '2024-01-05 10:54:54'),
(186, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'daca60453125195116eeee648ca5541a8276ec0ea29a29de77a8852216b1e2de', '[\"*\"]', '2024-01-05 12:06:15', NULL, '2024-01-05 11:40:52', '2024-01-05 12:06:15'),
(187, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'cd2bee79911de23da0e16977f9172d3600a2ef40d6920e1ee8206ef3527449a2', '[\"*\"]', '2024-01-05 12:26:19', NULL, '2024-01-05 12:26:18', '2024-01-05 12:26:19'),
(188, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'bb538b3dcfdd47e2cf064bfddaea0d02b4a8e2286e2fc6afd8a500cae6c2e9b3', '[\"*\"]', '2024-01-05 12:35:19', NULL, '2024-01-05 12:35:11', '2024-01-05 12:35:19'),
(189, 'App\\Models\\UserModel', 41, 'moh12@mailinator.com', '62c0c89fbd4b07e6ed015b7b42f19c95e1705793595b1ec3b063318fa1324ef2', '[\"*\"]', NULL, NULL, '2024-01-05 12:55:51', '2024-01-05 12:55:51'),
(190, 'App\\Models\\UserModel', 41, 'moh12@mailinator.com', 'daf09f64eb8a43c991405b51e1593642d6585c579e0e1ce0d045be5fe8252ca8', '[\"*\"]', '2024-01-08 04:52:01', NULL, '2024-01-05 12:56:11', '2024-01-08 04:52:01'),
(191, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '48efeb94efe48337f9f1b885ece8a812bc3d8756c228f2bb3934865373607f74', '[\"*\"]', NULL, NULL, '2024-01-06 03:14:43', '2024-01-06 03:14:43'),
(192, 'App\\Models\\UserModel', 33, 'demo123@mailinator.com', 'b4e71b9381c32aa9dc46fd1e88f1d635139df865b4a7774f96a1182ad978012e', '[\"*\"]', '2024-01-08 06:44:24', NULL, '2024-01-08 06:36:11', '2024-01-08 06:44:24'),
(193, 'App\\Models\\UserModel', 5, 'abc321@gmail.com', 'cddd6d16b425197a1116dcfc5c4a1546494fc4ae5bbef85cadbf57af054bab86', '[\"*\"]', '2024-01-08 07:13:31', NULL, '2024-01-08 07:13:29', '2024-01-08 07:13:31'),
(194, 'App\\Models\\UserModel', 44, 'jack123@mailinator.com', 'eb3e41aa77eb79f1934d2cd72812c0519343eb637119043f5c4963e18476cb70', '[\"*\"]', NULL, NULL, '2024-01-08 07:14:26', '2024-01-08 07:14:26'),
(195, 'App\\Models\\UserModel', 45, 'jack1234@mailinator.com', '80c08b7d9bd4c152823116293c4e3b0ca5e927e3cbaacf1ec955dee134f05e8b', '[\"*\"]', NULL, NULL, '2024-01-08 07:16:52', '2024-01-08 07:16:52'),
(196, 'App\\Models\\UserModel', 45, 'jack1234@mailinator.com', '6ebc9784e19479c6adc0ac7115e217495e4421c835b885b34724bf14c880f7a1', '[\"*\"]', '2024-01-08 07:17:10', NULL, '2024-01-08 07:17:09', '2024-01-08 07:17:10'),
(197, 'App\\Models\\UserModel', 46, 'jack12345@mailinator.com', 'f45082d4effaed0682267f9fd13812f412abee727a9c294ddc494c5d35d00cb3', '[\"*\"]', NULL, NULL, '2024-01-08 07:19:45', '2024-01-08 07:19:45'),
(198, 'App\\Models\\UserModel', 46, 'jack12345@mailinator.com', '3e1d688be3ad9a49e2d2eb0a9c428bf1256f5f003ebabc57a003e43f13030558', '[\"*\"]', '2024-01-08 07:23:46', NULL, '2024-01-08 07:20:39', '2024-01-08 07:23:46'),
(199, 'App\\Models\\UserModel', 49, 'vvv123@mailinator.com', '553254ee4d12f87a4c2add8179cfc713f55869354773a6f5121805a9dd7771f4', '[\"*\"]', NULL, NULL, '2024-01-08 07:53:18', '2024-01-08 07:53:18'),
(200, 'App\\Models\\UserModel', 51, 'vvv12345@mailinator.com', '342cfeddd1593ba2025eb200d3fd3561482dddd0e73157be3f1ddfe534831738', '[\"*\"]', NULL, NULL, '2024-01-08 09:04:20', '2024-01-08 09:04:20'),
(201, 'App\\Models\\UserModel', 52, 'xx123@mailinator.com', 'f1bc1098cf9c7e07fb3a0c23514e8c076eaee7acb1096741d33f944a72ac5c4b', '[\"*\"]', NULL, NULL, '2024-01-08 09:14:49', '2024-01-08 09:14:49'),
(202, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', 'a54c0f4c63020a2585824fd4f920479ba04f818a3ca9169901f2830d6eeb18cd', '[\"*\"]', NULL, NULL, '2024-01-08 09:47:42', '2024-01-08 09:47:42'),
(203, 'App\\Models\\UserModel', 53, 'demo090@mailinator.com', '92154a46e934a395d76149071bc0bf2c880403cbab317844f140dd657a31359a', '[\"*\"]', NULL, NULL, '2024-01-08 10:24:36', '2024-01-08 10:24:36'),
(204, 'App\\Models\\UserModel', 53, 'demo090@mailinator.com', '2474aaca463ac0daafa9f2af2e4e92a24a88a60a93925b683b1846361be05ee2', '[\"*\"]', '2024-01-08 10:27:06', NULL, '2024-01-08 10:27:04', '2024-01-08 10:27:06'),
(207, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '2282b373b849ac4828d5624d0a78f3d2ffb39016562043df8cfd7c1654a278d7', '[\"*\"]', NULL, NULL, '2024-01-08 12:17:32', '2024-01-08 12:17:32'),
(208, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'a882bea348eed793afcc2610705bd3125d85a1c6905a4bfe6f26b6fa48dcf7c3', '[\"*\"]', '2024-01-08 12:30:25', NULL, '2024-01-08 12:28:48', '2024-01-08 12:30:25'),
(209, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '8c088ed84b1a73c6fcdcecbfa47844547eb34ddfd0c498bb77027965d5b426db', '[\"*\"]', '2024-01-08 12:31:02', NULL, '2024-01-08 12:30:59', '2024-01-08 12:31:02'),
(210, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'd3ef05fef096a4e2dd33eb6f737f7940b8c558bcbe7e95401e0173d052b6ba31', '[\"*\"]', NULL, NULL, '2024-01-08 12:41:20', '2024-01-08 12:41:20'),
(211, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'fdaf07136098540d5914d041f897c614f1314cfd1569a5d05d1731b76cbd1cb3', '[\"*\"]', NULL, NULL, '2024-01-08 12:41:42', '2024-01-08 12:41:42'),
(212, 'App\\Models\\UserModel', 56, 'holder@gmail.com', '3f7470a2663df7a37305f35dfc60803ca977d9e3c7fe7f6c454a1ac289b7f84e', '[\"*\"]', '2024-01-08 12:44:00', NULL, '2024-01-08 12:42:11', '2024-01-08 12:44:00'),
(213, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'dffe50fba499feeb07248ccb476282cd0218946bfad096cf3560e01d72c656ca', '[\"*\"]', NULL, NULL, '2024-01-08 12:42:32', '2024-01-08 12:42:32'),
(214, 'App\\Models\\UserModel', 57, 'ndemo11@mailinator.com', '0cf3b60a7c2c0f42b512e87c9ccfcdd96b7ab7e08b0d4008856031c34a4a66cb', '[\"*\"]', '2024-01-08 12:47:50', NULL, '2024-01-08 12:46:53', '2024-01-08 12:47:50'),
(215, 'App\\Models\\UserModel', 58, 'ndemo10@mailinator.com', '2408692cd723a04e710e23766ca4678400a51dcb8c3301538d20e9c87a46b5be', '[\"*\"]', NULL, NULL, '2024-01-08 12:49:19', '2024-01-08 12:49:19'),
(216, 'App\\Models\\UserModel', 59, 'hkhk123@gmail.com', '711d19166680337f5652f1c4741a542d0b51a3834a0e5b55ea0a9bdf542e7b94', '[\"*\"]', '2024-01-08 12:50:02', NULL, '2024-01-08 12:49:29', '2024-01-08 12:50:02'),
(217, 'App\\Models\\UserModel', 60, 'ndemo100@mailinator.com', 'aaa6667cb8dce0e6f862f34ff5c28c3c071095a06fe34b09aa12601117d30472', '[\"*\"]', NULL, NULL, '2024-01-08 12:57:03', '2024-01-08 12:57:03'),
(218, 'App\\Models\\UserModel', 61, 'ndem@mailinator.com', '5484f22d6e1708cc9bfe0656f99c5fbab841c5c90eb3b56c3a6a0f8d61d22668', '[\"*\"]', NULL, NULL, '2024-01-08 12:59:43', '2024-01-08 12:59:43'),
(219, 'App\\Models\\UserModel', 62, 'ndemo22@mailinator.com', '070c2f9e9342d762465e7ac6a858bcbe58fb32563111757192ca52f26920cde5', '[\"*\"]', NULL, NULL, '2024-01-08 13:13:16', '2024-01-08 13:13:16'),
(220, 'App\\Models\\UserModel', 63, 'sndemo22@mailinator.com', '9095204a22d4a03b73c2d596ee116e7e08c459b87e839ca8f1f7bfd551d6668d', '[\"*\"]', NULL, NULL, '2024-01-08 13:14:01', '2024-01-08 13:14:01'),
(221, 'App\\Models\\UserModel', 64, 'snde22@mailinator.com', '4d0fd441e2b952f84a0a7122405361c16306a0ddeed291b95bef7009d23b5986', '[\"*\"]', NULL, NULL, '2024-01-08 13:17:05', '2024-01-08 13:17:05'),
(222, 'App\\Models\\UserModel', 65, 'hsnde22@mailinator.com', '41721da359582b07d9885454f98c5671ab4f3be037c5d272ff638e558ad66d65', '[\"*\"]', NULL, NULL, '2024-01-08 13:19:04', '2024-01-08 13:19:04'),
(223, 'App\\Models\\UserModel', 66, 'hde22@mailinator.com', '6737a5312d5903cf5f8df09cf354d81808600b794e78098bfb45a15d8a0858c4', '[\"*\"]', NULL, NULL, '2024-01-08 13:26:29', '2024-01-08 13:26:29'),
(224, 'App\\Models\\UserModel', 67, 'de22@mailinator.com', '3dce3b5f80e3d625bc81e191c9768b0faf4fcbb0051d4062587bfb27d79a005b', '[\"*\"]', NULL, NULL, '2024-01-08 13:28:04', '2024-01-08 13:28:04'),
(225, 'App\\Models\\UserModel', 68, 'de2@mailinator.com', 'c96568aab6bc78f9039dab7dc033c918c9f128fe9d43ac9d55d2e33695f1d93b', '[\"*\"]', NULL, NULL, '2024-01-08 13:30:04', '2024-01-08 13:30:04'),
(226, 'App\\Models\\UserModel', 69, 'dge2@mailinator.com', '26b7b3b9f1a764317a81d72643d55799e3677a3918af460d1dd7000af3b7cc3a', '[\"*\"]', NULL, NULL, '2024-01-08 13:31:45', '2024-01-08 13:31:45'),
(227, 'App\\Models\\UserModel', 70, 'dgje2@mailinator.com', '0a60f7c1d6c07bd87d97263f69e5c64b88b9adbcd6f78e81f3ef4964c2365f77', '[\"*\"]', NULL, NULL, '2024-01-08 13:33:49', '2024-01-08 13:33:49'),
(228, 'App\\Models\\UserModel', 71, 'je2@mailinator.com', '83dfa6b06d2ff1dad2ce7440718757ceec2b16f86d82d8da36dcfb2c0ae149d6', '[\"*\"]', NULL, NULL, '2024-01-08 13:37:53', '2024-01-08 13:37:53'),
(229, 'App\\Models\\UserModel', 72, 'jjje2@mailinator.com', 'ace263707a84c00cfdb68d701525d66485d24f3b32d5afd96f92b94cd0d750e9', '[\"*\"]', NULL, NULL, '2024-01-08 13:39:44', '2024-01-08 13:39:44'),
(230, 'App\\Models\\UserModel', 73, 'hkhk1234@gmail.com', '0b0bc6c5d14ba629f47d46db00ff268f7e85c12b2ef68e6e03b01a0b63375633', '[\"*\"]', NULL, NULL, '2024-01-09 04:21:44', '2024-01-09 04:21:44'),
(231, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '06004efaa32623dfac162a064439fc05ee2e6cd428f618c032178f39eb32cf31', '[\"*\"]', NULL, NULL, '2024-01-09 04:46:05', '2024-01-09 04:46:05'),
(232, 'App\\Models\\UserModel', 74, 'demo021@mailinator.com', 'a4c5a49ce056ecfb90fefa1bc058f03049185342a5e902862227bfec94dab5c3', '[\"*\"]', NULL, NULL, '2024-01-09 04:51:10', '2024-01-09 04:51:10'),
(233, 'App\\Models\\UserModel', 74, 'demo021@mailinator.com', '3e8744f7acab5dff0be647a6d2877db53c7e33ddd66121240dbcae4817fc2bcd', '[\"*\"]', '2024-01-09 04:52:01', NULL, '2024-01-09 04:51:46', '2024-01-09 04:52:01'),
(234, 'App\\Models\\UserModel', 74, 'demo021@mailinator.com', '2f1b085406ccde37cc9c270c889c1598c79263db2e7ee0c153c327e8e388de9b', '[\"*\"]', '2024-01-09 05:04:37', NULL, '2024-01-09 05:04:36', '2024-01-09 05:04:37'),
(235, 'App\\Models\\UserModel', 74, 'demo021@mailinator.com', 'a999fb4d275b88765004bccf35cea43f395abba4484775d6037ade996c8bd4fd', '[\"*\"]', '2024-01-09 06:31:37', NULL, '2024-01-09 05:52:08', '2024-01-09 06:31:37'),
(236, 'App\\Models\\UserModel', 74, 'demo021@mailinator.com', '8f40b0e55db9b14f8288580f76202fa35971f0559be1e23f610d52e427eae4d2', '[\"*\"]', '2024-01-10 12:04:13', NULL, '2024-01-09 06:34:06', '2024-01-10 12:04:13'),
(237, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', 'c7385fad31e39e24086d75df116aad0a8fe34e296b05cd138e47d3348005cb69', '[\"*\"]', NULL, NULL, '2024-01-09 06:39:57', '2024-01-09 06:39:57'),
(238, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '5a0cbebb0fa0bc78f51df5f78a3ba90775d5cc99876c796c384f9df3a1db4bda', '[\"*\"]', NULL, NULL, '2024-01-09 09:37:12', '2024-01-09 09:37:12'),
(239, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '688898fde0ad7f06a05ae6e36c3989504c8404d90625bba37e9b58218ef607da', '[\"*\"]', '2024-01-09 09:51:37', NULL, '2024-01-09 09:45:36', '2024-01-09 09:51:37'),
(240, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'c2ce8198d1596a6c13539b2b6ebf57fbf71cc69e9e9e9e045073d9f14a346ad4', '[\"*\"]', '2024-01-09 09:53:02', NULL, '2024-01-09 09:52:57', '2024-01-09 09:53:02'),
(241, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'ebcbfb55de3eb30e1ed97fa605aa7593c49c4f907475dbec3a59750a4eb1d4a2', '[\"*\"]', '2024-01-09 09:57:35', NULL, '2024-01-09 09:57:30', '2024-01-09 09:57:35'),
(242, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '36cf3019e00073524c877271734ca8803ecd10e9108921bff6d51695a027a5d5', '[\"*\"]', '2024-01-09 10:00:53', NULL, '2024-01-09 09:59:52', '2024-01-09 10:00:53'),
(243, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '32645059032af271e85837307100e8b956d5da12dbc3f38355697ac226a6952d', '[\"*\"]', '2024-01-09 10:11:54', NULL, '2024-01-09 10:05:42', '2024-01-09 10:11:54'),
(244, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'a76d931fec84a22219e1fa6349f18def367c191ae1aecb2453ae7ca72f48d845', '[\"*\"]', '2024-01-09 10:12:49', NULL, '2024-01-09 10:12:45', '2024-01-09 10:12:49'),
(245, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '5b6d4d520dd3596d60a81a25c703b32442f3157ee3bf767069f59b5cd18dc0e5', '[\"*\"]', NULL, NULL, '2024-01-09 10:24:13', '2024-01-09 10:24:13'),
(246, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'cfa587302347f39c20f133716447e98c2b14d090191c5876dfd318a407279cab', '[\"*\"]', '2024-01-09 10:25:07', NULL, '2024-01-09 10:24:23', '2024-01-09 10:25:07'),
(247, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '1b05b2e562437234b80ababa6e9f016120f4525e84c2222a3c51179486f951e0', '[\"*\"]', NULL, NULL, '2024-01-09 10:25:51', '2024-01-09 10:25:51'),
(248, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '455bc8bd937c2ac8fb5ed809622e65de3b8317a37585e4e57045991c4bda7139', '[\"*\"]', NULL, NULL, '2024-01-09 10:26:19', '2024-01-09 10:26:19'),
(249, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '4a5fc61c4e28c881e663a0a5c4ae1b095ef4686202168f88370f16030aa55b46', '[\"*\"]', '2024-01-09 10:31:14', NULL, '2024-01-09 10:27:15', '2024-01-09 10:31:14'),
(250, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'b0dfd4b086e8c05b0f67ef1d11a4c1b9645d0b6a055ec61f0513499a51fb020a', '[\"*\"]', '2024-01-09 10:32:10', NULL, '2024-01-09 10:32:04', '2024-01-09 10:32:10'),
(251, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '996766d814dfd558792a1a893638cf0774bfbb472cfc7fe3da5dd67816ec0d7c', '[\"*\"]', NULL, NULL, '2024-01-09 10:36:47', '2024-01-09 10:36:47'),
(252, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '6101156a9d2f863c7e4954cb1d3ef5c2afb0e3fc5bfc737d4f508248217ea279', '[\"*\"]', '2024-01-09 10:47:10', NULL, '2024-01-09 10:42:57', '2024-01-09 10:47:10'),
(253, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '5b65ee0dac358890476146bbced9fba62987c3a5282ad223a1352ab41d12bfa8', '[\"*\"]', '2024-01-09 11:10:13', NULL, '2024-01-09 11:01:03', '2024-01-09 11:10:13'),
(254, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'd449dc0140aac2f8485180a6d95c762ed20d8deb8ce791ee27d8c8c5b8217255', '[\"*\"]', '2024-01-09 11:11:00', NULL, '2024-01-09 11:10:54', '2024-01-09 11:11:00'),
(255, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '35cf877d7ff85c528d2ba174312a868a27f572c503577201cd47422b42ff6fbd', '[\"*\"]', NULL, NULL, '2024-01-09 11:12:59', '2024-01-09 11:12:59'),
(256, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '11ad0326865b455ab1a45286ff9b7d31bd07622b563f9a8414484ed9ce0ff9ea', '[\"*\"]', '2024-01-09 11:13:30', NULL, '2024-01-09 11:13:06', '2024-01-09 11:13:30'),
(257, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '16ce58e85332674d002576dddcaf848b2df5f4c64f24a91c678d23bff51cf6aa', '[\"*\"]', '2024-01-09 11:14:16', NULL, '2024-01-09 11:14:08', '2024-01-09 11:14:16'),
(258, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '7ed34ceba9e27b155ca7caf5becbf5a3654d52a8998cc9f7f7bb79204e4c055a', '[\"*\"]', '2024-01-09 12:38:04', NULL, '2024-01-09 12:23:39', '2024-01-09 12:38:04'),
(259, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'cd57850cf64103b30d62b7d1e8939efa2b8d8e596648aa96a487e9e56afa9a99', '[\"*\"]', '2024-01-09 12:38:54', NULL, '2024-01-09 12:38:47', '2024-01-09 12:38:54'),
(260, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '5a1b6338248a093bc551accbf44b5cee8c8fb209580e596bcae4ab094ff340ff', '[\"*\"]', '2024-01-09 13:31:48', NULL, '2024-01-09 13:31:42', '2024-01-09 13:31:48'),
(261, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '6f3a8db48be570ba97dc4d5ae078de10b7fbfde152ef37dd59506c88142d0794', '[\"*\"]', '2024-01-09 13:38:39', NULL, '2024-01-09 13:38:13', '2024-01-09 13:38:39'),
(262, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '7f97efd97782aba8b18de19d17cf6a20f56eabdf3fb40057be10cb776c09658a', '[\"*\"]', NULL, NULL, '2024-01-10 03:02:40', '2024-01-10 03:02:40'),
(263, 'App\\Models\\UserModel', 75, 'a@mailinator.com', '952d9dc7ff48dc7a482492cc972455dd04f348bfa1dbcb8ef40fbe9ea14f1ee6', '[\"*\"]', NULL, NULL, '2024-01-10 03:04:22', '2024-01-10 03:04:22'),
(264, 'App\\Models\\UserModel', 76, 'aa@mailinator.com', 'c809275d42804e33208dd76baa9a6d6d61b62a57ce29e4ba85237c5b21af31eb', '[\"*\"]', NULL, NULL, '2024-01-10 04:35:28', '2024-01-10 04:35:28'),
(265, 'App\\Models\\UserModel', 77, 'a123@mailinator.com', '68f9d94e284627eae309c2ffffbea12c198a0c3740c71aadc040398244be5104', '[\"*\"]', NULL, NULL, '2024-01-10 04:47:13', '2024-01-10 04:47:13'),
(266, 'App\\Models\\UserModel', 78, 'abc123@gmail.com', 'f0db818b716c6a54a0dff12871092b1188b5c774ac917684acb2df470b7181fd', '[\"*\"]', NULL, NULL, '2024-01-10 05:01:21', '2024-01-10 05:01:21'),
(267, 'App\\Models\\UserModel', 78, 'abc123@gmail.com', '212549a01147c46a14e6f8344263233471577432f697824e8873abd546e584d1', '[\"*\"]', NULL, NULL, '2024-01-10 05:08:59', '2024-01-10 05:08:59'),
(268, 'App\\Models\\UserModel', 78, 'abc123@gmail.com', 'c7be6f774eac93bc354138fc66dc941dcce3161ed6667b70ac651697e6f991de', '[\"*\"]', NULL, NULL, '2024-01-10 05:09:12', '2024-01-10 05:09:12'),
(269, 'App\\Models\\UserModel', 78, 'abc123@gmail.com', '11e389cfb3e563462ad50ec604e1e09a25da12a63b9d6466ed42b20ed89e6f00', '[\"*\"]', NULL, NULL, '2024-01-10 05:10:53', '2024-01-10 05:10:53'),
(270, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '6a906748850b3f945f0dfb25915d4a1d0b2d9d64ca0d229c680a8e0085cfe735', '[\"*\"]', '2024-01-10 06:47:12', NULL, '2024-01-10 06:01:34', '2024-01-10 06:47:12'),
(271, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'b9c55039b23016917dea403f7814730c36a4f9d11d3c3275c52f90a971983ea3', '[\"*\"]', '2024-01-10 06:49:11', NULL, '2024-01-10 06:49:05', '2024-01-10 06:49:11'),
(272, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '0ed550c64b1ecf44423648f4d41f34e089a33bec3e5f60c0661129f1b20f1f2f', '[\"*\"]', '2024-01-10 07:03:27', NULL, '2024-01-10 07:03:17', '2024-01-10 07:03:27'),
(273, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', 'f471803fa9b82b68ab09b4c74cf0b9e619211d15c472ff1a9f22ce14953d614d', '[\"*\"]', '2024-01-10 08:58:21', NULL, '2024-01-10 08:53:34', '2024-01-10 08:58:21'),
(274, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '317db02956f97d66485479dccc8bd5ebcd2101f4ee7f65b40f41daccb6b0546e', '[\"*\"]', NULL, NULL, '2024-01-10 09:28:30', '2024-01-10 09:28:30'),
(275, 'App\\Models\\UserModel', 78, 'abc123@gmail.com', '4bbecaa5be9a26d549c6754ecf1da496b8d4a42405d40e4f9b70bab6217692a2', '[\"*\"]', NULL, NULL, '2024-01-10 09:44:39', '2024-01-10 09:44:39'),
(276, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '82c3f65d53cd6775ee0b000b3b6abaa28bea76be8c819cb45bf23ad2e73bb7c6', '[\"*\"]', '2024-01-10 10:13:25', NULL, '2024-01-10 10:13:19', '2024-01-10 10:13:25'),
(277, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'a26b3ed701291680501603126c23f29a2ae2120c023db8f985f14fc1de02b014', '[\"*\"]', '2024-01-10 10:19:21', NULL, '2024-01-10 10:19:15', '2024-01-10 10:19:21'),
(278, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '7971bb8c47eb23ad09838003dce1e9ebfad39dcab62bdd092bf7cd7e181274eb', '[\"*\"]', '2024-01-10 12:10:10', NULL, '2024-01-10 12:10:04', '2024-01-10 12:10:10'),
(280, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '5b90407392e8d58f04d9575da92e89fa43fb399334097cc47be8285513e3708c', '[\"*\"]', '2024-01-10 12:33:51', NULL, '2024-01-10 12:33:46', '2024-01-10 12:33:51'),
(281, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'c97502e8cad81830a85d89d42be96feb128ff304e6e2197d1dafab469c6bedcb', '[\"*\"]', NULL, NULL, '2024-01-10 12:52:17', '2024-01-10 12:52:17'),
(282, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '700fefdbade6bd5f9a0570e786569ef8012fdfcfa9b4feb366829de3abd96038', '[\"*\"]', NULL, NULL, '2024-01-10 12:59:52', '2024-01-10 12:59:52'),
(283, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '7456462249573ca5e9b453f5d627a471b712d8e7434514c574c5f42d008e3ebe', '[\"*\"]', '2024-01-10 13:02:44', NULL, '2024-01-10 13:02:38', '2024-01-10 13:02:44'),
(284, 'App\\Models\\UserModel', 78, 'abc123@gmail.com', 'f1873e8266a86a286df308b62b1de8162573c53acd2982be2470f004061bf69e', '[\"*\"]', NULL, NULL, '2024-01-10 15:44:21', '2024-01-10 15:44:21'),
(293, 'App\\Models\\UserModel', 79, 'demo0200@mailinator.com', '2d0f01660062b6a9068ddf77a051c6ac2df5d520659f636ae7a11ebb87ad7fef', '[\"*\"]', NULL, NULL, '2024-01-11 06:23:23', '2024-01-11 06:23:23'),
(294, 'App\\Models\\UserModel', 80, 'trex123@mailinator.com', '346f50f94c58cd10f123778673df6ce37880dcf908e01f670dc0b09c606fca9f', '[\"*\"]', NULL, NULL, '2024-01-11 06:28:27', '2024-01-11 06:28:27'),
(295, 'App\\Models\\UserModel', 80, 'trex123@mailinator.com', '8bfe94cbbdf48e32afdb9cf6e0de0cd2b30a994c051b460705ba3580348f7546', '[\"*\"]', '2024-01-11 06:33:18', NULL, '2024-01-11 06:33:17', '2024-01-11 06:33:18'),
(296, 'App\\Models\\UserModel', 81, 'trex1234@mailinator.com', '1da65fb4995410de5d71cb56847926a82362a8aacbad90d9c5be712e28a5fef3', '[\"*\"]', NULL, NULL, '2024-01-11 06:36:01', '2024-01-11 06:36:01'),
(297, 'App\\Models\\UserModel', 82, 'trex12345@mailinator.com', '3f202b9baff773ac5a1c362c242f8f57d7cd5cfff5bb1960a0636eb7e902682e', '[\"*\"]', NULL, NULL, '2024-01-11 06:37:14', '2024-01-11 06:37:14'),
(298, 'App\\Models\\UserModel', 83, 'trex12@mailinator.com', 'a51d6549807c65ebb26fb5b4af7aded5e56308cfe7f4c3d25144b6588fd2c3de', '[\"*\"]', '2024-01-11 06:42:45', NULL, '2024-01-11 06:42:44', '2024-01-11 06:42:45'),
(301, 'App\\Models\\UserModel', 84, 'ddd123@mailinator.com', 'b13f2d7b981b9ed98fd90b02594e8bd9989109c6f3a1611207f4be126b848890', '[\"*\"]', '2024-01-11 06:53:27', NULL, '2024-01-11 06:53:27', '2024-01-11 06:53:27'),
(303, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '1d5f6b719a30429aa6d419953ea3700c2ca24a9f5af69f0a12b6ade608c4bfb2', '[\"*\"]', NULL, NULL, '2024-01-11 07:00:20', '2024-01-11 07:00:20'),
(304, 'App\\Models\\UserModel', 78, 'abc123@gmail.com', '9e996531b95ba2db9e60bf0b53e883b8b0b48bde0635d809f2f16010f42b9b42', '[\"*\"]', NULL, NULL, '2024-01-11 08:40:14', '2024-01-11 08:40:14'),
(305, 'App\\Models\\UserModel', 85, 'b@gmail.com', '38a1667ed78b73a971b7e70150e00d46765e489b829f2280e0fb5c8d17ebff1c', '[\"*\"]', NULL, NULL, '2024-01-11 08:45:23', '2024-01-11 08:45:23'),
(306, 'App\\Models\\UserModel', 85, 'b@gmail.com', 'e729dffc6e534cf140dd3b95fcf87e1b6b78cb9ddd0076849d4228263fbac6e0', '[\"*\"]', NULL, NULL, '2024-01-11 08:48:06', '2024-01-11 08:48:06'),
(307, 'App\\Models\\UserModel', 85, 'b@gmail.com', '7d7b9935032c555af0b3c3d36bb851eea0b419427b75a3373b9dfdf56b77806d', '[\"*\"]', NULL, NULL, '2024-01-11 08:49:14', '2024-01-11 08:49:14'),
(308, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '547d3b7f1fda75fae019d001333bcb85207207d5d2922323036728d221a7f702', '[\"*\"]', '2024-01-11 09:17:38', NULL, '2024-01-11 09:09:37', '2024-01-11 09:17:38'),
(309, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'c1d754eec92709a0d507bdfb3fa15647019bd691503b674a5ab817e41e74dcb0', '[\"*\"]', '2024-01-11 09:36:39', NULL, '2024-01-11 09:22:03', '2024-01-11 09:36:39'),
(313, 'App\\Models\\UserModel', 86, 'bb123@mailinator.com', '3c094b7cac15c0d24f2b3a3131c020d72d0f397f8311eed1703b74eb51dabda9', '[\"*\"]', NULL, NULL, '2024-01-11 09:29:25', '2024-01-11 09:29:25'),
(317, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', '26094fe0a63699610db54ba1c60f7768f93965ba52d0fe705af7448a632cb600', '[\"*\"]', NULL, NULL, '2024-01-11 09:40:46', '2024-01-11 09:40:46'),
(320, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', 'b12e0bb969d3e3fd0b2836db978b030b80b9d5313b21a97f3d1e8359e566a6a0', '[\"*\"]', '2024-01-11 09:46:29', NULL, '2024-01-11 09:43:43', '2024-01-11 09:46:29'),
(321, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', 'f089719d75b229837e4d4df8270e51e349e9532b715bd8f47b8fccd2dc3364c2', '[\"*\"]', '2024-01-11 10:00:02', NULL, '2024-01-11 09:59:29', '2024-01-11 10:00:02'),
(322, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', '347b382934a9eb4e19918d08905274ead0df7985119cbb2a1a21de6fe06f4a98', '[\"*\"]', '2024-01-11 10:06:52', NULL, '2024-01-11 10:06:27', '2024-01-11 10:06:52'),
(323, 'App\\Models\\UserModel', 88, 'testnbt781@mailinator.com', '034c55ae2165629b7bbbb04f8caa87bb3bc3532009447a2ed4343a389cac1a11', '[\"*\"]', '2024-01-11 10:13:30', NULL, '2024-01-11 10:07:50', '2024-01-11 10:13:30'),
(324, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', 'ef8aced3a70db03f1cebaa0bca7d36ff6578867114adf391e56527c20d636f88', '[\"*\"]', '2024-01-11 10:11:24', NULL, '2024-01-11 10:10:54', '2024-01-11 10:11:24'),
(325, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', 'dca4b69952b9516ba2db6610bda923d7708e0d08d90c9d0c1a1727a831f87c2d', '[\"*\"]', '2024-01-11 10:14:05', NULL, '2024-01-11 10:13:39', '2024-01-11 10:14:05'),
(326, 'App\\Models\\UserModel', 89, 'demo0@mailinator.com', '7e74ed298d47e3976a4f2edd44e4d76356b6bb294c752029f1e71882e1630649', '[\"*\"]', '2024-01-11 10:21:17', NULL, '2024-01-11 10:14:22', '2024-01-11 10:21:17'),
(327, 'App\\Models\\UserModel', 88, 'testnbt781@mailinator.com', '053d28431baa15e74f79ed99dd141a7560e425aed719b6082ba010b112c09a07', '[\"*\"]', '2024-01-11 10:15:06', NULL, '2024-01-11 10:15:06', '2024-01-11 10:15:06'),
(328, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', '980c9a9cd5a11d440d1a55ae2eeb83e2cc0d6307b40b90f64a7b03a75038038c', '[\"*\"]', '2024-01-11 10:18:56', NULL, '2024-01-11 10:17:22', '2024-01-11 10:18:56'),
(329, 'App\\Models\\UserModel', 88, 'testnbt781@mailinator.com', '93beb09651af3c47bd5b6b62581df559124f1002867fc1113bfa19c8ff64290c', '[\"*\"]', '2024-01-11 10:19:03', NULL, '2024-01-11 10:19:03', '2024-01-11 10:19:03'),
(330, 'App\\Models\\UserModel', 88, 'testnbt781@mailinator.com', 'c08ba71081a83afec4f47bd472da4ee04bff8ec68eac9398ed05381264f7e79e', '[\"*\"]', '2024-01-11 10:23:01', NULL, '2024-01-11 10:19:55', '2024-01-11 10:23:01'),
(331, 'App\\Models\\UserModel', 89, 'demo0@mailinator.com', 'df8210a10654aa90455648c3727cd27f3e6a5919f5d58af9cc5c825c24c332e4', '[\"*\"]', '2024-01-11 10:24:37', NULL, '2024-01-11 10:24:33', '2024-01-11 10:24:37');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(332, 'App\\Models\\UserModel', 88, 'testnbt781@mailinator.com', 'd8867a00188e242aaf2fe4fd9bbe197150b039ba0559d77e2e73566b4596cc4a', '[\"*\"]', '2024-01-11 10:33:22', NULL, '2024-01-11 10:33:21', '2024-01-11 10:33:22'),
(333, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', '236e77cbd1659aa6668949f212d583b7094ac3961e691aec17baf7f87d2e611b', '[\"*\"]', '2024-01-11 10:37:19', NULL, '2024-01-11 10:37:08', '2024-01-11 10:37:19'),
(334, 'App\\Models\\UserModel', 89, 'demo0@mailinator.com', '80a6c581b92b5a0858ab3b9d4edc5f43d3dd59fbcb8d371f26b9c1415d9dbd4a', '[\"*\"]', '2024-01-11 10:39:52', NULL, '2024-01-11 10:39:51', '2024-01-11 10:39:52'),
(335, 'App\\Models\\UserModel', 89, 'demo0@mailinator.com', '28ddbc3f036a60c38691f29d5eaa9b394d206f92c01bd4474dcd5dfc9c2ffbb2', '[\"*\"]', '2024-01-11 10:45:33', NULL, '2024-01-11 10:45:31', '2024-01-11 10:45:33'),
(336, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', '7edca33722e4352a54f104dfbe734e7697cd6ec69df6bd0d1d7336ec6c85415e', '[\"*\"]', '2024-01-11 10:49:37', NULL, '2024-01-11 10:49:31', '2024-01-11 10:49:37'),
(337, 'App\\Models\\UserModel', 89, 'demo0@mailinator.com', '8b7e09de9c760a398dc1ba27e56bb3202d1fe263bb084b14987d34b9eaa8ff98', '[\"*\"]', '2024-01-11 10:50:45', NULL, '2024-01-11 10:50:44', '2024-01-11 10:50:45'),
(338, 'App\\Models\\UserModel', 90, 'testnbt7810@mailinator.com', '4931d4772ebb7c72e61bb4d8ba57e3980bee7c5859b5c177428a5a35f70ccb57', '[\"*\"]', '2024-01-11 10:56:10', NULL, '2024-01-11 10:56:08', '2024-01-11 10:56:10'),
(339, 'App\\Models\\UserModel', 89, 'demo0@mailinator.com', '60f4832881e6f2d45c6dc68461ca9cf772abcaa37e6ae5fa16246129c2265d1a', '[\"*\"]', '2024-01-11 11:12:17', NULL, '2024-01-11 10:56:20', '2024-01-11 11:12:17'),
(340, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', '7292f6d606a0efe0d959ccbfe72cd74228208bd219727ee8b88f78fc4ef98201', '[\"*\"]', '2024-01-11 11:26:07', NULL, '2024-01-11 10:58:21', '2024-01-11 11:26:07'),
(341, 'App\\Models\\UserModel', 90, 'testnbt7810@mailinator.com', '5f2ac37e436a6ad05bceb135d7688a93359b25115d52dc412f10007c5cc76770', '[\"*\"]', '2024-01-11 11:02:22', NULL, '2024-01-11 11:02:14', '2024-01-11 11:02:22'),
(342, 'App\\Models\\UserModel', 89, 'demo0@mailinator.com', '255a2efa9b2501bd0273e3f474576aca37d87cac9bacd6968bb9bd1961205fe7', '[\"*\"]', '2024-01-11 11:14:01', NULL, '2024-01-11 11:13:58', '2024-01-11 11:14:01'),
(348, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', 'bc3be4a96fbce11003e2e0476510ddbe6a2ea8a66b4c09bace0951d5b8672200', '[\"*\"]', '2024-01-12 04:47:48', NULL, '2024-01-12 04:46:47', '2024-01-12 04:47:48'),
(349, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', 'b5ef71dfeb026ff1839ff308f1a1b7d50fe1da6e1217aace8ee0c988ad30154c', '[\"*\"]', NULL, NULL, '2024-01-12 04:49:49', '2024-01-12 04:49:49'),
(351, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', '8695e28cd5efefa1213b3620aa8b200f488807072e7b29e959d1cfc0182ac284', '[\"*\"]', '2024-01-12 04:54:34', NULL, '2024-01-12 04:52:10', '2024-01-12 04:54:34'),
(358, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', '0b9318efdf0535fd98abb1e95d2c3cfe107cacfce59bf15918c49418f7c7eadc', '[\"*\"]', '2024-01-12 05:53:58', NULL, '2024-01-12 05:26:55', '2024-01-12 05:53:58'),
(359, 'App\\Models\\UserModel', 91, 'abcd@gmail.com', 'a8b0fdf983c5cb6c8806991ea78c922283894feb7b21a525dadf3e5dc426ca21', '[\"*\"]', NULL, NULL, '2024-01-12 05:49:10', '2024-01-12 05:49:10'),
(360, 'App\\Models\\UserModel', 91, 'abcd@gmail.com', 'd31d750d881fef6aa5b37849ee38c343c1417af0377d69d0570003ae225bc873', '[\"*\"]', NULL, NULL, '2024-01-12 05:50:51', '2024-01-12 05:50:51'),
(361, 'App\\Models\\UserModel', 91, 'abcd@gmail.com', '5067218e3d4395c85545967b5bbad1cf9c9098efc2db331c671fcc7ec77a2ba6', '[\"*\"]', '2024-01-13 04:49:49', NULL, '2024-01-12 05:52:01', '2024-01-13 04:49:49'),
(362, 'App\\Models\\UserModel', 87, 'hayademo@mailinator.com', 'd920ef0aef8b277b63dcabd2ac8840459f474c0781fd3aadc4e8dece374c909e', '[\"*\"]', '2024-01-12 05:54:39', NULL, '2024-01-12 05:54:34', '2024-01-12 05:54:39'),
(366, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '65b8c31ec5a1451b3e2f74ca9559ea03cdf624979464e9c548e1bed6dd6cf0f6', '[\"*\"]', NULL, NULL, '2024-01-12 06:32:36', '2024-01-12 06:32:36'),
(367, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '558e21365b319e23d6e7b37cbe7df2ca54b767bf96b165255251d51ea7503bb6', '[\"*\"]', '2024-01-12 06:35:26', NULL, '2024-01-12 06:34:07', '2024-01-12 06:35:26'),
(368, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '65e5507e3f5b25316b009d701c3136c1806996141ee8e4fe78b1d7cf62aad524', '[\"*\"]', '2024-01-12 08:50:32', NULL, '2024-01-12 06:36:06', '2024-01-12 08:50:32'),
(370, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '79992c144b0e1cb6fad9ad85feefabc3082dcb566d59946f4d6f59bc289a4b75', '[\"*\"]', '2024-01-12 09:01:42', NULL, '2024-01-12 08:56:22', '2024-01-12 09:01:42'),
(371, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '66a02377fca24015bca5a21a1420e841fe1ef63d87412ae63f3daa8db3efb801', '[\"*\"]', '2024-01-12 10:42:53', NULL, '2024-01-12 09:02:40', '2024-01-12 10:42:53'),
(377, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '8342172c509c80d37ab5cf0fa05770b5428200781fc07d025577e13324a338ec', '[\"*\"]', '2024-01-12 11:03:58', NULL, '2024-01-12 10:44:18', '2024-01-12 11:03:58'),
(380, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '04894a99ac24734cf1910c1088b036ce0df9bbbbc348fc891daf8d5b923d6cd9', '[\"*\"]', '2024-01-12 11:11:07', NULL, '2024-01-12 11:11:04', '2024-01-12 11:11:07'),
(381, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', 'f41179b10a7b77b517f3b806c87b2707a2150bd75cd6085ae3a9d3a9784cd539', '[\"*\"]', '2024-01-12 11:22:31', NULL, '2024-01-12 11:22:28', '2024-01-12 11:22:31'),
(382, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', 'daa222c8b37add1c13d436974757faa2caa2525b20d5d1198661ce53f210801d', '[\"*\"]', '2024-01-12 11:27:18', NULL, '2024-01-12 11:27:12', '2024-01-12 11:27:18'),
(384, 'App\\Models\\UserModel', 93, 'd123@gmail.com', '4bc55870cd732e14d242459c654ad1df4b196f28b888a9aa02d2dbb82c457359', '[\"*\"]', NULL, NULL, '2024-01-12 11:41:40', '2024-01-12 11:41:40'),
(385, 'App\\Models\\UserModel', 93, 'd123@gmail.com', 'a79ecbf8a33f81d3701bd49a072b9d1a06054f1594b204235267ee6a135dd772', '[\"*\"]', '2024-01-15 03:54:07', NULL, '2024-01-12 11:42:48', '2024-01-15 03:54:07'),
(386, 'App\\Models\\UserModel', 94, 'testnbt7811@mailinator.com', 'c2c58f766ad88154c7ecd8b5a41dfa1d2f55d0d360770fef6fd60a92a549743e', '[\"*\"]', '2024-01-12 12:48:17', NULL, '2024-01-12 12:48:16', '2024-01-12 12:48:17'),
(387, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '9ae9db726a6ccfb9b673a2a3b9490a2748c47f6d98534580be01b8be9d9d6d18', '[\"*\"]', '2024-01-12 13:35:36', NULL, '2024-01-12 13:08:16', '2024-01-12 13:35:36'),
(388, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', 'f03848131f60c932b793aaeeb9d069800a151fe8b40b476db97b3dac9d7062dd', '[\"*\"]', '2024-01-13 04:13:06', NULL, '2024-01-12 13:36:18', '2024-01-13 04:13:06'),
(389, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', 'c85d2742a385c48aeedbf79c89104fb4c4f6b0a6bd4cccfce79551b9a266d233', '[\"*\"]', '2024-01-13 06:26:13', NULL, '2024-01-13 04:24:56', '2024-01-13 06:26:13'),
(390, 'App\\Models\\UserModel', 93, 'd123@gmail.com', '7fd2e5f9e13f4a6bcc9978d6a521fd6c5388669865444beee29abc14a54b5fea', '[\"*\"]', '2024-01-13 07:35:13', NULL, '2024-01-13 04:55:51', '2024-01-13 07:35:13'),
(391, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '329834cb8d7fd49ac5b74abae7c1e16842b03848e234af8ace97e8069a631649', '[\"*\"]', '2024-01-13 07:10:06', NULL, '2024-01-13 06:27:53', '2024-01-13 07:10:06'),
(393, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', 'f93162eb355bdfddef6c3e574c1c54a5eb7337c959e02282ef10591ee81c96cf', '[\"*\"]', '2024-01-13 07:13:55', NULL, '2024-01-13 07:10:35', '2024-01-13 07:13:55'),
(394, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', 'b5c49be8dc19153a4f225e70cc2e51441be77741248e92352053382d23afa13f', '[\"*\"]', '2024-01-13 07:55:07', NULL, '2024-01-13 07:15:23', '2024-01-13 07:55:07'),
(395, 'App\\Models\\UserModel', 95, 'demo0208@mailinator.com', '9ed271afe0178addbc88fcd38f00ec3e8b708f26dc1422396673dafca820735a', '[\"*\"]', '2024-01-13 07:27:03', NULL, '2024-01-13 07:27:02', '2024-01-13 07:27:03'),
(396, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '5df1125ff0aa3aac9e88143eedaabf82878bc2ba1747e367b3fe57a5d0af2dff', '[\"*\"]', '2024-01-13 08:48:08', NULL, '2024-01-13 07:56:06', '2024-01-13 08:48:08'),
(398, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '224424f6e3478d6687b749f51ff5e56db2a3f1a986781daf8f61bbfb61b836ce', '[\"*\"]', '2024-01-16 04:26:29', NULL, '2024-01-13 08:49:41', '2024-01-16 04:26:29'),
(399, 'App\\Models\\UserModel', 93, 'd123@gmail.com', 'fdb1b28fadffd6c649f241371630d94585ccc6a7c7a3b2f067922803abd76fac', '[\"*\"]', NULL, NULL, '2024-01-13 09:26:12', '2024-01-13 09:26:12'),
(400, 'App\\Models\\UserModel', 96, 'geeta@gmail.com', '295a22ed5cb88740922e9b3c106017be5de950d689bf68b862b3b9af59e00118', '[\"*\"]', NULL, NULL, '2024-01-13 09:27:57', '2024-01-13 09:27:57'),
(401, 'App\\Models\\UserModel', 97, 'hkhg12@gmail.com', 'b9d8df51e42e8acf9d8876eb26ec94b5f7de17fc9050c3b1bd53cb35eb4b6ba0', '[\"*\"]', NULL, NULL, '2024-01-13 09:29:55', '2024-01-13 09:29:55'),
(402, 'App\\Models\\UserModel', 98, 'de01@mailinator.com', '0e7cf82ff587bf5b74bfcc1de0a522d60ff87a81d4493cd59b64eaa4cc1bc2ab', '[\"*\"]', '2024-01-13 09:30:43', NULL, '2024-01-13 09:30:42', '2024-01-13 09:30:43'),
(404, 'App\\Models\\UserModel', 99, 'geeta1@gmail.com', '47a4829df5a6de4889a237b8df0628b88634abbc6dd9f6683c239f30b7d000fd', '[\"*\"]', NULL, NULL, '2024-01-13 09:33:47', '2024-01-13 09:33:47'),
(406, 'App\\Models\\UserModel', 100, 'geetu@gmail.com', '15178802c5a8c7da9bf0d0e999a1c931acd871b4de05d8770e9f65a95e96621b', '[\"*\"]', NULL, NULL, '2024-01-13 09:41:16', '2024-01-13 09:41:16'),
(407, 'App\\Models\\UserModel', 100, 'geetu@gmail.com', 'd91dc9ec7b2bce384da61f2ce9844502e51c0585dd03940f6b258b798309d102', '[\"*\"]', '2024-01-13 09:41:53', NULL, '2024-01-13 09:41:46', '2024-01-13 09:41:53'),
(411, 'App\\Models\\UserModel', 100, 'geetu@gmail.com', 'd16fb950b34ad5de5876ce3fd9986a9e87c736f0a492b16931feec6fdb4a62b8', '[\"*\"]', '2024-01-15 05:39:10', NULL, '2024-01-13 09:54:02', '2024-01-15 05:39:10'),
(420, 'App\\Models\\UserModel', 102, 'geetu123@gmail.com', '4a68559b5954d7e9e5a3864acca858bd4dbece4b8bfbd04abaa98fbe7161bb47', '[\"*\"]', NULL, NULL, '2024-01-15 07:09:56', '2024-01-15 07:09:56'),
(421, 'App\\Models\\UserModel', 102, 'geetu123@gmail.com', '58beae5c75b9ee0dbfabb116f57140bdbda65ff357d35d8538c2316b1e34cd6e', '[\"*\"]', NULL, NULL, '2024-01-15 07:10:47', '2024-01-15 07:10:47'),
(422, 'App\\Models\\UserModel', 102, 'geetu123@gmail.com', 'aafb8f9e5d0673dbfcf067b20be8ee92599308927f49480b65b5467d607d4f9b', '[\"*\"]', NULL, NULL, '2024-01-15 07:14:21', '2024-01-15 07:14:21'),
(423, 'App\\Models\\UserModel', 103, 'hkhg22@gmail.com', 'b2325e5854fc6fbdc32fcb0d2ba5d4731d91e74f9e65f4feade11610b5c4b8c6', '[\"*\"]', NULL, NULL, '2024-01-15 07:17:40', '2024-01-15 07:17:40'),
(424, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '939a5c8bd680577d98c66e69674efa58d301bfdc36a6893256e64c5e2a98199a', '[\"*\"]', NULL, NULL, '2024-01-15 07:19:31', '2024-01-15 07:19:31'),
(425, 'App\\Models\\UserModel', 104, 'abcdef@gmail.com', '1e7b8922204333cbae0f9ef6ad048678535256997bb3a8a5c7f67a60c73fd340', '[\"*\"]', NULL, NULL, '2024-01-15 07:25:38', '2024-01-15 07:25:38'),
(426, 'App\\Models\\UserModel', 104, 'abcdef@gmail.com', 'bfa68211f36223774a0da110ba6c5274982fa78d38771408c19d644c8bd944a6', '[\"*\"]', NULL, NULL, '2024-01-15 07:26:15', '2024-01-15 07:26:15'),
(427, 'App\\Models\\UserModel', 104, 'abcdef@gmail.com', 'ca184ae158a2ddcd804c1e47647624d8eae65867201a5a9ec0c1f6a539dbbfc7', '[\"*\"]', NULL, NULL, '2024-01-15 07:29:49', '2024-01-15 07:29:49'),
(428, 'App\\Models\\UserModel', 104, 'abcdef@gmail.com', 'd22f00a37594c309298e3d323a72d3692cc67a87011746899b7a37d94b195e7f', '[\"*\"]', '2024-01-15 07:32:28', NULL, '2024-01-15 07:32:21', '2024-01-15 07:32:28'),
(441, 'App\\Models\\UserModel', 105, 'smohally@mailinator.com', '6b6faf36e4cdfe56ad99b73472159251dea57cbe277a505c807cc242b06f7d57', '[\"*\"]', NULL, NULL, '2024-01-16 04:24:09', '2024-01-16 04:24:09'),
(442, 'App\\Models\\UserModel', 105, 'smohally@mailinator.com', '92a05ae9c316eb9de3fa91bbe1f116d27854081520abb78f20ecfda2e09e7af0', '[\"*\"]', '2024-01-16 04:27:15', NULL, '2024-01-16 04:27:11', '2024-01-16 04:27:15'),
(456, 'App\\Models\\UserModel', 106, 'testnbt78100@mailinator.com', '6fe8249826d8893f4110d66d87f26c82cff9f293336a90c8c3e3fd96ef3c793d', '[\"*\"]', '2024-01-16 09:56:19', NULL, '2024-01-16 09:56:18', '2024-01-16 09:56:19'),
(457, 'App\\Models\\UserModel', 106, 'testnbt78100@mailinator.com', 'be719a95de138a9597a3109b1d6b836047af31e016c8860b1533a4dd39a76e60', '[\"*\"]', '2024-01-16 09:57:49', NULL, '2024-01-16 09:57:49', '2024-01-16 09:57:49'),
(458, 'App\\Models\\UserModel', 106, 'testnbt78100@mailinator.com', 'f56086e1531fb2f3e12a1cbc5911d51fbcb76502565b3f276e0b0954beb1ad2f', '[\"*\"]', '2024-01-16 09:58:43', NULL, '2024-01-16 09:58:43', '2024-01-16 09:58:43'),
(460, 'App\\Models\\UserModel', 105, 'smohally@mailinator.com', 'c101189b11480c5949775c9f3ac24b3680bde7e08820a816b85de06c6f9f111d', '[\"*\"]', '2024-01-16 11:14:59', NULL, '2024-01-16 10:11:15', '2024-01-16 11:14:59'),
(462, 'App\\Models\\UserModel', 106, 'testnbt78100@mailinator.com', '3fe544a8084047508f16729028be5dfb0e7b2e1b68e2f073e08b4ff60895f157', '[\"*\"]', '2024-01-16 10:20:27', NULL, '2024-01-16 10:20:19', '2024-01-16 10:20:27'),
(467, 'App\\Models\\UserModel', 105, 'smohally@mailinator.com', '8bd97cd561f27d41d2d1c7a1c7a49672b75cbd55611b7889690200f85e754de4', '[\"*\"]', '2024-01-16 11:36:15', NULL, '2024-01-16 11:19:29', '2024-01-16 11:36:15'),
(468, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'ea854218c5449f2a79b8c41bbe1bae37072c8e149e6fabbf6b8aa594719ab9d6', '[\"*\"]', '2024-01-16 11:41:29', NULL, '2024-01-16 11:41:24', '2024-01-16 11:41:29'),
(469, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '40844508cc03d0706365f5f7b38e8b25d9842588eebd60f7c7c909640121edbb', '[\"*\"]', NULL, NULL, '2024-01-16 11:45:17', '2024-01-16 11:45:17'),
(471, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '972739aa23796737742b122523f754028ca8981648200ac59dc429540737be4c', '[\"*\"]', '2024-01-17 12:55:25', NULL, '2024-01-16 11:45:49', '2024-01-17 12:55:25'),
(474, 'App\\Models\\UserModel', 92, 'nuser@mailinator.com', '78185638621cdcd443e36251a2ddad8ea097f06911008db93089d266bf6b546e', '[\"*\"]', '2024-01-16 12:38:30', NULL, '2024-01-16 12:38:26', '2024-01-16 12:38:30'),
(475, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'b35ff6da02776b3e41575bf8451306a480f658cbbb58242b5c249b088af5b386', '[\"*\"]', '2024-01-17 04:49:05', NULL, '2024-01-17 04:24:20', '2024-01-17 04:49:05'),
(478, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'ab4f1e88d9547d4e3f77f9bbe21a1d98c103e642cfd9f82ad44c33337894b9f2', '[\"*\"]', '2024-01-17 05:06:00', NULL, '2024-01-17 05:05:27', '2024-01-17 05:06:00'),
(479, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '98d5d4c3d7b5e5129b3796ca9bcf6c74b89851eaf882b1ae9d7f1e531a9372f3', '[\"*\"]', '2024-01-17 05:17:17', NULL, '2024-01-17 05:16:49', '2024-01-17 05:17:17'),
(480, 'App\\Models\\UserModel', 107, 'loki@mailnator.com', '6e44719aaff40bf484769a2084fbfd597c41dfb4f4bbf43a7f0a9bc334fd354e', '[\"*\"]', NULL, NULL, '2024-01-17 05:21:03', '2024-01-17 05:21:03'),
(481, 'App\\Models\\UserModel', 108, 'loki@mailinator.com', '72703f47ea7ac4afec0ef5e886ef4efd324f1b9614029ba8c00781739a67fded', '[\"*\"]', NULL, NULL, '2024-01-17 05:22:49', '2024-01-17 05:22:49'),
(484, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'fe4588c6cf66f8a06d08c541df8a10635a3ba07a99b3f27cd565b5d7d63dbb23', '[\"*\"]', '2024-01-17 05:43:42', NULL, '2024-01-17 05:43:38', '2024-01-17 05:43:42'),
(485, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '6be6183c327384e95b7c76e0586205d534bb816a27c6f0f09571cbaf6e353db5', '[\"*\"]', '2024-01-17 05:48:10', NULL, '2024-01-17 05:48:06', '2024-01-17 05:48:10'),
(486, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '804a697ade5fb318ab4092db89f8d66daed8b733fce20a3fb0e5c4d042f03399', '[\"*\"]', '2024-01-17 05:54:43', NULL, '2024-01-17 05:48:31', '2024-01-17 05:54:43'),
(487, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'a7521dcf8fb7a34074c32423b0e2206f35a28d65a29e343780f8f91f23c7fbaa', '[\"*\"]', '2024-01-17 05:55:56', NULL, '2024-01-17 05:55:54', '2024-01-17 05:55:56'),
(488, 'App\\Models\\UserModel', 108, 'loki@mailinator.com', 'b9e9d0ce5fc38a0d1e115cad24a809f7d2808ab014f06676896e66e01a942000', '[\"*\"]', NULL, NULL, '2024-01-17 06:01:51', '2024-01-17 06:01:51'),
(489, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'a8b2269693f191aeaa21cbde004ef4d4229f7022988975627801a8d97b333ba3', '[\"*\"]', '2024-01-17 07:29:12', NULL, '2024-01-17 07:29:08', '2024-01-17 07:29:12'),
(495, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'c56ce77986fc4ec1f8b6ac7c3e9498b6611c73271d331b98529a59823f735ebd', '[\"*\"]', '2024-01-17 08:52:49', NULL, '2024-01-17 08:52:45', '2024-01-17 08:52:49'),
(496, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '62596996eda2eaae57fe7ddf094523a24e791d767f74d8158039affd10caa8dd', '[\"*\"]', '2024-01-17 13:05:53', NULL, '2024-01-17 08:54:29', '2024-01-17 13:05:53'),
(499, 'App\\Models\\UserModel', 106, 'testnbt78100@mailinator.com', '43af9c5810704f4317051c737267430885fffb3bb40533886c0e9a05bfb7e911', '[\"*\"]', '2024-01-19 11:13:24', NULL, '2024-01-17 08:59:11', '2024-01-19 11:13:24'),
(514, 'App\\Models\\UserModel', 110, 'loki@mailinator.com', '092ac01839edb79d6e799a126cb95345c5cd780a499e79947072649456e8152a', '[\"*\"]', NULL, NULL, '2024-01-17 11:45:58', '2024-01-17 11:45:58'),
(516, 'App\\Models\\UserModel', 111, 'loki@mailinator.com', '01679532148a125c818a018d352fc476fdee81a589334d43312a52bb3846695e', '[\"*\"]', NULL, NULL, '2024-01-17 11:50:05', '2024-01-17 11:50:05'),
(517, 'App\\Models\\UserModel', 112, 'loki@mailinator.com', 'af03b2c7dd5a1001402b204dd652f291276dcb964861f8f075bdd6ba13c021aa', '[\"*\"]', NULL, NULL, '2024-01-17 11:53:51', '2024-01-17 11:53:51'),
(519, 'App\\Models\\UserModel', 113, 'loki@mailinator.com', 'dd55e974e82cdd1d58a48fced8cf1828ef12b08356661d61ee5cf6679a326db1', '[\"*\"]', NULL, NULL, '2024-01-17 11:56:32', '2024-01-17 11:56:32'),
(522, 'App\\Models\\UserModel', 114, 'لوكي@mailinator.com', '37a3731fa1f4dd48f04c57ccdf647b951d878f6c8ceb476757258d02f537d1d7', '[\"*\"]', NULL, NULL, '2024-01-17 12:33:53', '2024-01-17 12:33:53'),
(527, 'App\\Models\\UserModel', 115, 'loki@mailinator.com', '58005dc91c203a337386350eeac7edf25df2976b7fe3fee1cca5b7809ef7d3d2', '[\"*\"]', '2024-01-17 13:03:07', NULL, '2024-01-17 13:01:54', '2024-01-17 13:03:07'),
(528, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '968ae4387781a5fc3b27afce9d776fefe55d2d6b14b183c7cc5154b31bfb65a9', '[\"*\"]', '2024-01-18 04:57:55', NULL, '2024-01-18 04:22:40', '2024-01-18 04:57:55'),
(529, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', 'ab297af83bc12479aed111daa16181d5cd0e97e1bb4a61dd76d999f45480fcc9', '[\"*\"]', '2024-01-18 05:18:35', NULL, '2024-01-18 05:18:31', '2024-01-18 05:18:35'),
(532, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '87f755840391a125626cf36685d07e5b7e2aade580b4046a1ea3c75a6de80920', '[\"*\"]', '2024-01-25 08:49:06', NULL, '2024-01-18 05:27:51', '2024-01-25 08:49:06'),
(535, 'App\\Models\\UserModel', 118, 'loki@mailinator.com', 'f35ec083ac7ff134fdaae7d34a93050c2e0339e455acfea1cfb0ad779bf07043', '[\"*\"]', NULL, NULL, '2024-01-18 06:09:43', '2024-01-18 06:09:43'),
(536, 'App\\Models\\UserModel', 119, 'loki@mailinator.com', '08e147e8b500c13a9e896941d8fea81728a83311bb839eab2fa80facfd22a546', '[\"*\"]', NULL, NULL, '2024-01-18 06:10:57', '2024-01-18 06:10:57'),
(540, 'App\\Models\\UserModel', 120, 'lia@mailinator.com', 'e370ba4f71e57d3e86953b254c722bde8372bceee544d15a2bfffced15bfc98e', '[\"*\"]', NULL, NULL, '2024-01-18 07:16:10', '2024-01-18 07:16:10'),
(550, 'App\\Models\\UserModel', 55, 'ndemo12@mailinator.com', '478373804ac277fc7a4d4ad19fdaaf8bdfaed68f18c23c93489b2a842270da32', '[\"*\"]', '2024-01-18 09:25:30', NULL, '2024-01-18 09:25:27', '2024-01-18 09:25:30'),
(553, 'App\\Models\\UserModel', 121, 'test55@mailinator.com', '3fa4e31df173333d27ae580d3b6e7d94d520fd2c9eb7e39460030c6cbad4db8d', '[\"*\"]', NULL, NULL, '2024-01-18 12:23:47', '2024-01-18 12:23:47'),
(554, 'App\\Models\\UserModel', 122, 'ss@mailinator.com', 'b5b2448ddf8d9773867a5f41b4fcefd90dab39a4b1ff4fab3944f48e6d61c911', '[\"*\"]', NULL, NULL, '2024-01-18 12:31:47', '2024-01-18 12:31:47'),
(555, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '0fa9f8efb8446bc2826cd9b7af1225aaa7e119821ad9baba5e6931ed148f5f10', '[\"*\"]', '2024-01-19 05:00:31', NULL, '2024-01-19 05:00:27', '2024-01-19 05:00:31'),
(560, 'App\\Models\\UserModel', 123, 'nuser2@mailinator.com', '605bd6c63d5279bce539b0ba57cce5642f257dea31445027c7d5de1a95ce016c', '[\"*\"]', NULL, NULL, '2024-01-19 06:14:37', '2024-01-19 06:14:37'),
(561, 'App\\Models\\UserModel', 123, 'nuser2@mailinator.com', '347be206a6150b2caa267d345d542458a4c6e07ba503315db25be33a4ab19d0e', '[\"*\"]', '2024-01-19 06:25:20', NULL, '2024-01-19 06:14:49', '2024-01-19 06:25:20'),
(563, 'App\\Models\\UserModel', 124, 'hhh@mailinator.com', 'a90f164fc9dbb82f0ff11a91f6ed05e13edba3bd908eed771e0c5f2ba29ebf86', '[\"*\"]', NULL, NULL, '2024-01-19 06:29:08', '2024-01-19 06:29:08'),
(564, 'App\\Models\\UserModel', 124, 'hhh@mailinator.com', '34b3174ec9d08a70e1f8758f32f445627c315caa6c109cbe62133ec8979a95a7', '[\"*\"]', '2024-01-19 06:31:18', NULL, '2024-01-19 06:30:16', '2024-01-19 06:31:18'),
(566, 'App\\Models\\UserModel', 125, 'bbb@mailinator.com', '1b44a12516860d887277e98280f5849aea2d7a3aad8836bf8f03831f7dc27698', '[\"*\"]', NULL, NULL, '2024-01-19 06:42:05', '2024-01-19 06:42:05'),
(567, 'App\\Models\\UserModel', 125, 'bbb@mailinator.com', '99db09485befffe7f885a0f934364cf3fca60bef5827fe4d4f6871ab73770258', '[\"*\"]', NULL, NULL, '2024-01-19 06:42:11', '2024-01-19 06:42:11'),
(568, 'App\\Models\\UserModel', 125, 'bbb@mailinator.com', '1338d32a28d56cceb14dabe905e338b769d740999783eb22a5906c4492d8896c', '[\"*\"]', '2024-01-19 06:43:01', NULL, '2024-01-19 06:42:56', '2024-01-19 06:43:01'),
(569, 'App\\Models\\UserModel', 125, 'bbb@mailinator.com', '497adecf45f9d7defea534d8a3602d2a4c1b8b9ee0d590376c50e8d101cab563', '[\"*\"]', '2024-01-19 06:43:36', NULL, '2024-01-19 06:43:25', '2024-01-19 06:43:36'),
(570, 'App\\Models\\UserModel', 126, 'n@mailinator.com', 'd812b49fc0b119dcd6dc0478412d25334985f03d3faafc0a4a68c6eec2f0b15a', '[\"*\"]', NULL, NULL, '2024-01-19 06:44:44', '2024-01-19 06:44:44'),
(571, 'App\\Models\\UserModel', 126, 'n@mailinator.com', '7b0a31136aab72ba02dc86e509f2f1900f9810e75662734ab56839a6c847e32c', '[\"*\"]', '2024-01-19 06:45:07', NULL, '2024-01-19 06:44:51', '2024-01-19 06:45:07'),
(572, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '459e81c2f1cb8fd68c9196272399d7e446f9db06c03ad115bf1cedc3c5617942', '[\"*\"]', NULL, NULL, '2024-01-19 06:48:29', '2024-01-19 06:48:29'),
(573, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '4efb4c397f993199b8f4dfa6236bf3ffb08c1709d1e63a7cb2fb705424bac1ca', '[\"*\"]', '2024-01-19 10:47:36', NULL, '2024-01-19 06:49:16', '2024-01-19 10:47:36'),
(576, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '377c5bff5d04e75261396493c4eac58260501a364f9aee69eeec8bf98b51a265', '[\"*\"]', '2024-01-19 11:12:46', NULL, '2024-01-19 10:52:50', '2024-01-19 11:12:46'),
(577, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'd75a258eaafeb710b5932127cb8eec30082b9609ddd79542c8bbbdb640fd3233', '[\"*\"]', '2024-01-19 10:56:38', NULL, '2024-01-19 10:53:36', '2024-01-19 10:56:38'),
(578, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '374e03d4c79c18231cbba2e0b3be9a140ce7d00cb3f5cdeec9f24455fa1f5415', '[\"*\"]', '2024-01-19 11:08:42', NULL, '2024-01-19 11:08:40', '2024-01-19 11:08:42'),
(579, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '43de54a51fa615a1b1b97c0f383a20cccdee8c4ee71ecf99c27054e2cec162ed', '[\"*\"]', '2024-01-19 11:25:07', NULL, '2024-01-19 11:09:04', '2024-01-19 11:25:07'),
(580, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '75722edb18922929ac49c150fff79d62b6ea59d0caf366009afcdd0ef9f09710', '[\"*\"]', '2024-01-23 09:30:06', NULL, '2024-01-19 11:23:07', '2024-01-23 09:30:06'),
(581, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '35a9b48bb05175efa8f0c32868cabbd22e85fc4b9303e2ff817ee72f3afbe650', '[\"*\"]', '2024-01-19 11:28:21', NULL, '2024-01-19 11:28:17', '2024-01-19 11:28:21'),
(582, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'fc24e53e30e91123f4d67a79fc705c343423022e7f7e65f4f27192c5d078cf2f', '[\"*\"]', '2024-01-19 11:32:20', NULL, '2024-01-19 11:32:18', '2024-01-19 11:32:20'),
(583, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'b95f9b4d041d3ebed90ad8af9ab1e95450e982866041eb7fe23dc1d1d4a761a1', '[\"*\"]', '2024-01-19 11:51:28', NULL, '2024-01-19 11:34:18', '2024-01-19 11:51:28'),
(584, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '3558b9fe371df670c4bc4a32afc26059cd47d0c6de23734e6a94adf62dc2fa2a', '[\"*\"]', '2024-01-19 12:38:43', NULL, '2024-01-19 11:52:05', '2024-01-19 12:38:43'),
(585, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '18934f9e4c5ccfd97022692594535a089d5f54a304b7af87dbf4848850671172', '[\"*\"]', '2024-01-19 13:24:53', NULL, '2024-01-19 13:05:58', '2024-01-19 13:24:53'),
(586, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'f6ea88e8a43db16c4565e20b0cf4710325c431c8e475def98dedb696ae9dcc0e', '[\"*\"]', '2024-01-20 04:45:30', NULL, '2024-01-19 13:29:22', '2024-01-20 04:45:30'),
(587, 'App\\Models\\UserModel', 128, 'mdemo@gmail.com', 'a7942a3bf242d2a557b606b4c734376d30500126008af61675c758424f3e3e57', '[\"*\"]', NULL, NULL, '2024-01-20 05:21:21', '2024-01-20 05:21:21'),
(588, 'App\\Models\\UserModel', 128, 'mdemo@gmail.com', '4448313e289551c9925ba4bcece97d9893363f9f688af93db252324ddede5920', '[\"*\"]', '2024-01-20 05:21:42', NULL, '2024-01-20 05:21:39', '2024-01-20 05:21:42'),
(589, 'App\\Models\\UserModel', 128, 'mdemo@gmail.com', 'adf5d3c0d3c9ede084fa465b28c8fc32310823cef245cebcd465dfd03d1e45a2', '[\"*\"]', '2024-01-20 07:00:10', NULL, '2024-01-20 06:59:34', '2024-01-20 07:00:10'),
(590, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '3c5b4522d7009c8370165455a9040513ef07a0c8b3a7f90c9caab4cbef003dfa', '[\"*\"]', '2024-01-20 07:47:47', NULL, '2024-01-20 07:46:00', '2024-01-20 07:47:47'),
(591, 'App\\Models\\UserModel', 128, 'mdemo@gmail.com', '6250a24f3ddb83b1bb0d537644c11c9747ed1d0a907511d46a9452fb5e00de0c', '[\"*\"]', '2024-01-20 10:10:56', NULL, '2024-01-20 08:54:26', '2024-01-20 10:10:56'),
(592, 'App\\Models\\UserModel', 128, 'mdemo@gmail.com', 'bf44498c8afc62a0bac9a9302850e6722ea0ea9bcc2793be330dc6112aad06b4', '[\"*\"]', '2024-01-20 10:14:55', NULL, '2024-01-20 10:12:59', '2024-01-20 10:14:55'),
(593, 'App\\Models\\UserModel', 128, 'mdemo@gmail.com', '7ed5b40665de1dbbcf94e213c42776edd79817a98856996030c44e3c83ca8872', '[\"*\"]', '2024-01-20 10:19:00', NULL, '2024-01-20 10:16:50', '2024-01-20 10:19:00'),
(594, 'App\\Models\\UserModel', 128, 'mdemo@gmail.com', '9bc1d21be733d1c14f77a9f0118719b94fa87f108b3ffec70c6b9c1049d18aab', '[\"*\"]', '2024-01-20 10:21:14', NULL, '2024-01-20 10:21:11', '2024-01-20 10:21:14'),
(595, 'App\\Models\\UserModel', 128, 'mdemo@gmail.com', 'f983f99357a79a1d03274a8f68f8c5d7bcc22b6e326c68ec997374cb50dd731f', '[\"*\"]', '2024-01-22 04:23:00', NULL, '2024-01-20 10:21:49', '2024-01-22 04:23:00'),
(596, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '70ab0546fc82e9f95dd5fbc74217be88debccd1ded9d36122aa7ae5a79248629', '[\"*\"]', '2024-01-22 06:01:26', NULL, '2024-01-22 04:28:09', '2024-01-22 06:01:26'),
(598, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'fc502f03c666d5582eb8d67790601fcf0c34b7d9caf113e2cdda8dd862c4bcd8', '[\"*\"]', '2024-01-22 06:12:36', NULL, '2024-01-22 06:12:33', '2024-01-22 06:12:36'),
(599, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '0e44e11ce010caef8b338ec52ade347baa022354ba5a735d63d2904f4c631de9', '[\"*\"]', '2024-01-22 06:20:21', NULL, '2024-01-22 06:20:19', '2024-01-22 06:20:21'),
(600, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '8318da44c7d3fbb42ef8a982bc671f9d31b0f01f3092889391a35585515f4cce', '[\"*\"]', '2024-01-22 06:22:50', NULL, '2024-01-22 06:22:48', '2024-01-22 06:22:50'),
(601, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '7072abc091009b29ac55632a289f252f9d590926e05c36d695b94db8e67080df', '[\"*\"]', '2024-01-22 08:53:51', NULL, '2024-01-22 06:23:14', '2024-01-22 08:53:51'),
(603, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'b28c07457514bf649e73ed6bec90fd8534a82c7fb63ab5d5fdce4327feeb6a54', '[\"*\"]', '2024-01-22 09:10:36', NULL, '2024-01-22 08:55:31', '2024-01-22 09:10:36'),
(604, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'de0a6c89b6c52ce7cbb471fa480e11f1e9699013b463d4b9c656921228753fb0', '[\"*\"]', '2024-01-22 09:52:47', NULL, '2024-01-22 09:17:59', '2024-01-22 09:52:47'),
(610, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'ceb26e75ee34af952b73c73618a8c51340680b3bd40b6b8dafbfcd0b47661583', '[\"*\"]', '2024-01-22 10:29:29', NULL, '2024-01-22 09:55:25', '2024-01-22 10:29:29'),
(615, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '47f5ee485a0941df3a534033781da73e6c8bd7a7d8ff27988204530812d679ba', '[\"*\"]', '2024-01-22 10:54:16', NULL, '2024-01-22 10:51:21', '2024-01-22 10:54:16'),
(616, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '54eef213eb5e0be1f5afe8691fa4f4b2b1755934d6b267b8851c4f4820e753f6', '[\"*\"]', '2024-01-22 10:56:10', NULL, '2024-01-22 10:56:08', '2024-01-22 10:56:10'),
(617, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'ddd36be61468f92004f52ed95427a5f98057027a3e95543f10b954480c5e01b8', '[\"*\"]', '2024-01-22 12:40:59', NULL, '2024-01-22 10:58:30', '2024-01-22 12:40:59'),
(621, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'edcbcaa7004269e87aba3166a4f5abe0704eb08b280f782d906e3725dd78a7c2', '[\"*\"]', '2024-01-23 05:40:58', NULL, '2024-01-22 12:45:21', '2024-01-23 05:40:58'),
(622, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', 'a51f0d838c7807f3ecfc0905b23ace086dd15c0e1b7975f8af4ab92baadf1068', '[\"*\"]', '2024-01-23 02:55:42', NULL, '2024-01-23 02:55:33', '2024-01-23 02:55:42'),
(623, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', '420f5ec36ca6f748ef781980d0028957e366f629c5d4884a005c575b09607729', '[\"*\"]', '2024-01-23 03:03:15', NULL, '2024-01-23 03:02:44', '2024-01-23 03:03:15'),
(624, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', 'f6e40379b3f9068b457162261076066469d276360ff4f9aaee0321d442265647', '[\"*\"]', '2024-01-23 03:04:34', NULL, '2024-01-23 03:04:27', '2024-01-23 03:04:34'),
(625, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', '879f778e8c28e124f79a772bbcd79f46e02be694ca5d733f45744ac6748972ea', '[\"*\"]', '2024-01-23 03:08:39', NULL, '2024-01-23 03:08:32', '2024-01-23 03:08:39'),
(626, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', 'd3a75a9f5bdfbb0ca338bf1168cf80e9bde3892769d1b5dbafeeda58454d55ff', '[\"*\"]', '2024-01-23 03:15:30', NULL, '2024-01-23 03:15:24', '2024-01-23 03:15:30'),
(627, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', 'be8b93befee73a5b652cc815598f6b3c7fedbf8e390d0f8e799a51c23d054d4e', '[\"*\"]', '2024-01-23 04:39:04', NULL, '2024-01-23 04:34:40', '2024-01-23 04:39:04'),
(628, 'App\\Models\\UserModel', 119, 'loki@mailinator.com', 'a3ccbe955d90444f150c46100f4d591ec6941d1fd925605b620179d3e634b29c', '[\"*\"]', '2024-01-23 05:47:40', NULL, '2024-01-23 04:37:19', '2024-01-23 05:47:40'),
(629, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '6ba2cfa334ca6a2f0547346c81d99938f98e562d5734413d63afd49e7a61bdc9', '[\"*\"]', '2024-01-23 06:01:57', NULL, '2024-01-23 05:41:13', '2024-01-23 06:01:57'),
(630, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', 'e809568dbcf7171eef40550d0387aa61aa485696df106d6938107a6c2deace7f', '[\"*\"]', '2024-01-23 05:51:17', NULL, '2024-01-23 05:50:56', '2024-01-23 05:51:17'),
(631, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', 'b06bff07ea11349815483982a531aeeeb1dbaf5831b6246742e4da5a196dc887', '[\"*\"]', '2024-01-23 06:01:21', NULL, '2024-01-23 05:59:53', '2024-01-23 06:01:21'),
(632, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '2d17979949ddb0afdc24e6fea648fa3c91d0486b8c4d0251833e1bd155f3b1d8', '[\"*\"]', '2024-01-23 06:11:29', NULL, '2024-01-23 06:02:18', '2024-01-23 06:11:29'),
(633, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', '1d3cf418abafa36bc6523933341aef68e3ac9165dab51e4ca84d77c79ee977aa', '[\"*\"]', '2024-01-23 06:16:31', NULL, '2024-01-23 06:15:16', '2024-01-23 06:16:31'),
(634, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', '80d10403a034936fd2272537a4a40bc025f8c6d56e1d96ad2bbcce04fca77e76', '[\"*\"]', '2024-01-23 06:20:49', NULL, '2024-01-23 06:20:33', '2024-01-23 06:20:49'),
(635, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', 'cd624b0c113a3c9203d3d049ad9508c8f754f40f584f678e717aa3d22b92bff7', '[\"*\"]', '2024-01-23 06:28:22', NULL, '2024-01-23 06:21:44', '2024-01-23 06:28:22'),
(636, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', '72b2f8cdb4eaf892ba6672639139d1be2e19f5e2862bb1968bcdad36a7078f5e', '[\"*\"]', '2024-01-23 06:40:38', NULL, '2024-01-23 06:22:39', '2024-01-23 06:40:38'),
(637, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', 'ccc59b4de452db87f2aadbdf7f7076c9221f07732ef33adfaebcb5bc366ecb9b', '[\"*\"]', '2024-01-23 06:41:51', NULL, '2024-01-23 06:41:45', '2024-01-23 06:41:51'),
(638, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', 'cf5157d38f1c39da391ceef4caf7281be5de07261b5324a32d7cb795e52da1ab', '[\"*\"]', '2024-01-23 06:56:10', NULL, '2024-01-23 06:56:03', '2024-01-23 06:56:10'),
(639, 'App\\Models\\UserModel', 101, 'ramavatarchoudhary008@gmail.com', '359bd0c060da3e731aa1d1fb751821d57cb81964da77b1cd2a64c2c6c7066f4f', '[\"*\"]', '2024-01-23 07:01:15', NULL, '2024-01-23 07:01:10', '2024-01-23 07:01:15'),
(640, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', 'c033bfd17f0d4e2ea9e149105c8acbc31f8b0f11033201c1ee2aa9cffb9f4915', '[\"*\"]', '2024-01-23 09:36:20', NULL, '2024-01-23 09:36:20', '2024-01-23 09:36:20'),
(641, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '75af5d56c238c69857f38b4f57c6dda33c477a9b3083b080e39520108fdc8f92', '[\"*\"]', '2024-01-24 04:38:15', NULL, '2024-01-23 10:30:05', '2024-01-24 04:38:15'),
(642, 'App\\Models\\UserModel', 127, 'abc@mailinator.com', '988812bddff96bb1644bc09f643b024b003340a086cdab8119a433547d259b66', '[\"*\"]', '2024-01-23 12:20:10', NULL, '2024-01-23 11:51:53', '2024-01-23 12:20:10'),
(643, 'App\\Models\\UserModel', 129, 'abcdemo@mailinator.com', '179b44c25a2658fbce2a62ccc4885036bb79a261d75953d9f700224e85d49dbc', '[\"*\"]', NULL, NULL, '2024-01-23 12:22:16', '2024-01-23 12:22:16'),
(644, 'App\\Models\\UserModel', 129, 'abcdemo@mailinator.com', '9146a9dbf189bcf08de952523923b3afd7b89183514618c036f584cbe763fe49', '[\"*\"]', '2024-01-23 12:35:20', NULL, '2024-01-23 12:22:33', '2024-01-23 12:35:20'),
(645, 'App\\Models\\UserModel', 129, 'abcdemo@mailinator.com', '46461c726a43681e267e323ce2e88b875a22eaf5031e9ea2c8871dc526acc37a', '[\"*\"]', '2024-01-23 12:39:33', NULL, '2024-01-23 12:39:31', '2024-01-23 12:39:33'),
(646, 'App\\Models\\UserModel', 129, 'abcdemo@mailinator.com', '792b780301e1068a3aec6a289d879795d3195b8bdbaac3b5ac3f613c48cc2672', '[\"*\"]', '2024-01-23 13:22:37', NULL, '2024-01-23 12:43:35', '2024-01-23 13:22:37'),
(647, 'App\\Models\\UserModel', 129, 'abcdemo@mailinator.com', '706466ec3f96fef6c8a76171414e41b98e5002c61d0faa81578f2a89a779c8a9', '[\"*\"]', '2024-01-24 04:30:51', NULL, '2024-01-23 13:24:29', '2024-01-24 04:30:51'),
(648, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', 'e73197df9aaed87041b3a73b854810f6cae90cb53a46198b5b7addc2f393a2f7', '[\"*\"]', NULL, NULL, '2024-01-24 04:32:10', '2024-01-24 04:32:10'),
(649, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', '18b095dce48f8f88a63711e83e19be9c4ade467c433c13498fb68fdef3a316e5', '[\"*\"]', '2024-01-24 04:51:10', NULL, '2024-01-24 04:32:19', '2024-01-24 04:51:10'),
(650, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', '979982605eaeee6df591f5e4676c72f48cce4376b4a4a707cfacd2f2e35edbf3', '[\"*\"]', '2024-01-24 04:52:00', NULL, '2024-01-24 04:51:37', '2024-01-24 04:52:00'),
(651, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', 'aa85d0dd257b7248ddade8e2a1a221dcd15f5ef6d8b60659584d96612bf0f1b2', '[\"*\"]', '2024-01-24 05:50:40', NULL, '2024-01-24 04:52:49', '2024-01-24 05:50:40'),
(652, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', 'd90c481dab5664afab0581a6123ccefdaff366fd2e64c8a952e49ea789992a62', '[\"*\"]', '2024-01-24 06:34:04', NULL, '2024-01-24 06:09:19', '2024-01-24 06:34:04'),
(653, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', 'a1c3e5477a90d0f82763732ebb4f42b9de43831ab3055860d6ae68b26b9c6126', '[\"*\"]', '2024-01-24 07:39:43', NULL, '2024-01-24 06:34:31', '2024-01-24 07:39:43'),
(654, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', '09e3e3fcee3239931a60f612ba97e560d6331ad8e7e600a70ba76c3802a6e00d', '[\"*\"]', '2024-01-24 08:47:04', NULL, '2024-01-24 07:50:42', '2024-01-24 08:47:04'),
(655, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', '514c9c7c73507b88023da38cff49953c7f84bf52cdcdebd3ede3cac048a64cf9', '[\"*\"]', '2024-01-25 09:16:23', NULL, '2024-01-24 08:48:44', '2024-01-25 09:16:23'),
(656, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '80498e6b3e77237dd3b8fb255812d3f7a7af613bdf97b00a273f0419f42d6b61', '[\"*\"]', '2024-01-24 10:20:26', NULL, '2024-01-24 10:20:25', '2024-01-24 10:20:26'),
(657, 'App\\Models\\UserModel', 119, 'loki@mailinator.com', '922c0e43f7c3a69beab476046791fecfd9d20390f7916e447eac6b6a0564a73c', '[\"*\"]', '2024-01-27 04:41:53', NULL, '2024-01-24 10:41:48', '2024-01-27 04:41:53'),
(658, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '4a58c622b37ca0ecad2658e86d3aa67f88d53e5b60a734fd52028f487a44808b', '[\"*\"]', '2024-01-24 11:00:11', NULL, '2024-01-24 11:00:10', '2024-01-24 11:00:11'),
(659, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', 'e380be4c63a514cfa73af8aba0e3eeeed5d15d7155a454f9336295a9935dbbe4', '[\"*\"]', '2024-01-25 04:33:57', NULL, '2024-01-25 04:32:52', '2024-01-25 04:33:57'),
(660, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', 'f5b64a02d95a2c2951c7e0f7771a58ec9c35af30935b22f0611d3dc0cba366ed', '[\"*\"]', '2024-01-25 05:15:33', NULL, '2024-01-25 04:35:13', '2024-01-25 05:15:33'),
(661, 'App\\Models\\UserModel', 54, 'demo020@mailinator.com', '1a10cd4419804f469b63023d0509d627a6a8bbc48e4a4667069b033211836459', '[\"*\"]', '2024-01-25 13:12:04', NULL, '2024-01-25 04:41:34', '2024-01-25 13:12:04'),
(662, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', 'be8abb96829f73118176ea15bae6587225b7ae7b0ac5322a7a681dd373376373', '[\"*\"]', '2024-01-25 09:22:18', NULL, '2024-01-25 09:21:51', '2024-01-25 09:22:18'),
(663, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', '3966d668f0d00bee3126acadd5cbb2d90829227283fd6caff64c03c4779d00b9', '[\"*\"]', '2024-01-25 13:03:43', NULL, '2024-01-25 09:24:06', '2024-01-25 13:03:43'),
(664, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', 'c492fca203b4fa42ba906e5bc4baf54f9ac791516e90b1adba93e7eb268d289f', '[\"*\"]', '2024-01-25 13:15:12', NULL, '2024-01-25 13:03:59', '2024-01-25 13:15:12'),
(665, 'App\\Models\\UserModel', 130, 'demo9@mailinator.com', 'd8102066fc27d0fee243bb3c0be28d18d59786b672409ea2be9d2c78da5d87b2', '[\"*\"]', '2024-01-27 07:47:46', NULL, '2024-01-25 13:15:53', '2024-01-27 07:47:46'),
(666, 'App\\Models\\UserModel', 131, 'English@mailinator.com', '9e8ab0dd4c1f5b2d762374639e20689cc6de817e4f07c59a6299bdd8be0a5318', '[\"*\"]', '2024-01-27 05:28:40', NULL, '2024-01-27 05:19:38', '2024-01-27 05:28:40'),
(667, 'App\\Models\\UserModel', 132, 'Arabic@mailinator.com', 'a7241f86b0c5d7cc23f5604c18988e4d93233ed54a8126b66411ff84b816c5b2', '[\"*\"]', '2024-01-29 08:56:32', NULL, '2024-01-27 05:33:03', '2024-01-29 08:56:32'),
(668, 'App\\Models\\UserModel', 131, 'English@mailinator.com', 'f68034e0d247eb68efe0970ae3a68dc5f446fedff170ca5654ef876f513c1b53', '[\"*\"]', '2024-01-27 05:56:25', NULL, '2024-01-27 05:46:32', '2024-01-27 05:56:25'),
(669, 'App\\Models\\UserModel', 131, 'English@mailinator.com', 'eca99d623b15d8c5fb6b937f598e00cb1b9b56dea249e13e35cd43d2d9112801', '[\"*\"]', '2024-02-01 07:14:06', NULL, '2024-01-27 05:57:00', '2024-02-01 07:14:06'),
(670, 'App\\Models\\UserModel', 131, 'English@mailinator.com', '3238d4abfe27f0b857651d218f60d7ea9f3265b29a34939cedeaceb9d96151d0', '[\"*\"]', '2024-02-01 06:40:56', NULL, '2024-01-27 07:22:39', '2024-02-01 06:40:56'),
(671, 'App\\Models\\UserModel', 1, 'demo@mailinator.com', '8f39829979d27350b4b306b2f4216046b4b9fcff1e925125c6d4142d2dbd2dd4', '[\"*\"]', '2024-01-27 12:47:41', NULL, '2024-01-27 10:22:16', '2024-01-27 12:47:41'),
(672, 'App\\Models\\UserModel', 133, 'nhdemo@mailinator.com', 'c1bfea91727a07de23560801e5ca4e3c9fa014ab7cba13606208eefc117430d8', '[\"*\"]', NULL, NULL, '2024-01-29 04:19:58', '2024-01-29 04:19:58'),
(673, 'App\\Models\\UserModel', 133, 'nhdemo@mailinator.com', '318cdbcef4d65d5f639c830c7a6f991f4645d2810bf9e12835587d92897baeea', '[\"*\"]', '2024-01-29 06:05:38', NULL, '2024-01-29 04:20:08', '2024-01-29 06:05:38'),
(674, 'App\\Models\\UserModel', 134, 'demo020@mailinator.com', '0259b578d20b31d49c1321f8c95d41cbc8eb11e4e03f06ee6e289c3a3eb3513b', '[\"*\"]', '2024-01-31 04:33:10', NULL, '2024-01-29 04:44:34', '2024-01-31 04:33:10'),
(675, 'App\\Models\\UserModel', 131, 'English@mailinator.com', '6615e2f0d5c197f78493989b26f7994c949a9dfea3cfa971aa3a929fb6963b54', '[\"*\"]', '2024-02-01 05:12:57', NULL, '2024-01-29 05:18:52', '2024-02-01 05:12:57'),
(676, 'App\\Models\\UserModel', 133, 'nhdemo@mailinator.com', 'b9a768459ffd9922eab8ef97d9c045c70dc9c9f18d7ca0312d78b87f12d83b17', '[\"*\"]', '2024-01-31 05:57:40', NULL, '2024-01-29 06:06:02', '2024-01-31 05:57:40'),
(677, 'App\\Models\\UserModel', 134, 'demo020@mailinator.com', '3fc25c8949428eaffa111c9284a95911a37b88ba7f599f4699fd562e8e718ee9', '[\"*\"]', '2024-01-30 13:21:48', NULL, '2024-01-30 08:47:03', '2024-01-30 13:21:48'),
(678, 'App\\Models\\UserModel', 134, 'demo020@mailinator.com', '78377d3bdd172423091512fcae4cb317c52961b5de960ddbef9514d4ff8e0143', '[\"*\"]', '2024-01-31 07:05:17', NULL, '2024-01-31 04:29:49', '2024-01-31 07:05:17'),
(679, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', 'ff2d5b83b6037e4770aa2f214f498997cff0cb1178393fd0905917057fa48b38', '[\"*\"]', NULL, NULL, '2024-01-31 05:59:46', '2024-01-31 05:59:46'),
(680, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', 'ee57b3ca257ffc88fff6433b765e7edf806bd7ddfc03662c793c9cc7301fdea9', '[\"*\"]', '2024-01-31 05:59:55', NULL, '2024-01-31 05:59:53', '2024-01-31 05:59:55'),
(681, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', 'bcf78480a6a9c95fa615ae086869f5a0bfddbf5378b6211feae453777644bf7f', '[\"*\"]', '2024-01-31 08:53:17', NULL, '2024-01-31 06:03:13', '2024-01-31 08:53:17'),
(682, 'App\\Models\\UserModel', 138, 'james321@mailinator.com', 'a12a40cbeaafb5d6502f762baaf9f63c3c52cb1cb92369c110e7323774d4bfa2', '[\"*\"]', '2024-01-31 07:17:46', NULL, '2024-01-31 07:17:44', '2024-01-31 07:17:46'),
(683, 'App\\Models\\UserModel', 139, 'Arabic2@mailinator.com', '5bdbf9bad9547da5f16ebc3a94bb829137dd96067736b4f22c927b70aecee62c', '[\"*\"]', NULL, NULL, '2024-01-31 07:17:48', '2024-01-31 07:17:48'),
(684, 'App\\Models\\UserModel', 140, 'Arabic3@mailinator.com', '36f330381304a437db1e80165f3d6cd923df41847fbb53b108330859526147f5', '[\"*\"]', NULL, NULL, '2024-01-31 07:18:37', '2024-01-31 07:18:37'),
(685, 'App\\Models\\UserModel', 138, 'james321@mailinator.com', 'e7d4f1f95129a1fa434f5a147c93e438d53ab8290932e5bca94689eac53cc36e', '[\"*\"]', '2024-01-31 07:52:06', NULL, '2024-01-31 07:26:10', '2024-01-31 07:52:06'),
(686, 'App\\Models\\UserModel', 138, 'james321@mailinator.com', 'b957ee1e5e86f5e04e4697693fcc54cbe3bfa047063c1266b5baf8b4026c2620', '[\"*\"]', '2024-01-31 09:21:25', NULL, '2024-01-31 07:55:17', '2024-01-31 09:21:25'),
(687, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', 'e47850f9aa72b97ca244e1030e1358a376a8a57bf7fa08ba7ebceb4891574448', '[\"*\"]', '2024-01-31 11:26:53', NULL, '2024-01-31 08:59:38', '2024-01-31 11:26:53'),
(688, 'App\\Models\\UserModel', 134, 'demo020@mailinator.com', '01a489608cd46584af7ba14339f8ce669385c5f081ab4dc5fd31c29f5ce59b15', '[\"*\"]', '2024-02-01 06:18:02', NULL, '2024-01-31 09:23:56', '2024-02-01 06:18:02'),
(689, 'App\\Models\\UserModel', 134, 'demo020@mailinator.com', '41fb359b2648134596eb778da1dd7c8240346834f05b94c929590bc0f8b8b48e', '[\"*\"]', NULL, NULL, '2024-01-31 09:37:49', '2024-01-31 09:37:49'),
(690, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', 'bb942016644ee633e1b818b5b37ecd42bb43f1c926668d8465f8cd97349a8801', '[\"*\"]', '2024-01-31 13:30:04', NULL, '2024-01-31 11:43:32', '2024-01-31 13:30:04'),
(691, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', '63edb7593c9b29c7218bf331c85945094a243b5a8bb4a679b9bea44d724bad32', '[\"*\"]', '2024-01-31 13:30:54', NULL, '2024-01-31 13:30:40', '2024-01-31 13:30:54'),
(692, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', '8e52ee63437b6865999e9fe4a830918d17da1638cbbb2de373e5f8f2f044d19c', '[\"*\"]', '2024-02-01 05:13:36', NULL, '2024-02-01 04:29:35', '2024-02-01 05:13:36'),
(693, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', '014d53b084a599764ca601b8c7e7f8b1f53f8f1d3896410e453d12030954110d', '[\"*\"]', '2024-02-01 06:08:43', NULL, '2024-02-01 05:15:33', '2024-02-01 06:08:43'),
(694, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', '42c1fab429338abd9cdf705b2306f561ec9f2b5de2a3a8177320fd725456e938', '[\"*\"]', '2024-02-01 06:41:50', NULL, '2024-02-01 06:17:02', '2024-02-01 06:41:50'),
(695, 'App\\Models\\UserModel', 137, 'demonn@mailinator.com', 'dd01ba02eec0da00cf51b4b999cc165fea8becd253c66b9e7d4997f5cc110a43', '[\"*\"]', '2024-02-01 09:30:51', NULL, '2024-02-01 06:45:30', '2024-02-01 09:30:51'),
(696, 'App\\Models\\UserModel', 134, 'demo020@mailinator.com', 'd5ecc95e57cc62989d269559da80b9bb95298a110dc84c15070a2edb64c81f8b', '[\"*\"]', '2024-02-01 08:47:05', NULL, '2024-02-01 07:51:11', '2024-02-01 08:47:05'),
(697, 'App\\Models\\UserModel', 134, 'demo020@mailinator.com', '10d9aa8d4807f7e931daf1679479eb2b142f21e493c786297710f1444847bead', '[\"*\"]', '2024-02-01 09:15:39', NULL, '2024-02-01 09:02:32', '2024-02-01 09:15:39'),
(698, 'App\\Models\\UserModel', 134, 'demo020@mailinator.com', '8df4504c1d1146f3cdd8f392aa34fc6b4543cbbaed142853b273951239f41805', '[\"*\"]', '2024-02-01 09:42:15', NULL, '2024-02-01 09:26:58', '2024-02-01 09:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_models`
--

CREATE TABLE `product_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `a_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `a_slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `a_description` text DEFAULT NULL,
  `additional_details` text DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `a_product_type` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `a_product_price` varchar(255) DEFAULT NULL,
  `sale_price` varchar(255) DEFAULT NULL,
  `a_sale_price` varchar(255) DEFAULT NULL,
  `product_catgories` text DEFAULT NULL,
  `a_product_catgories` varchar(255) DEFAULT NULL,
  `simple_product_sku` varchar(255) DEFAULT NULL,
  `a_simple_product_sku` varchar(255) DEFAULT NULL,
  `product_details` longtext DEFAULT NULL,
  `a_product_details` longtext DEFAULT NULL,
  `feature_image` varchar(255) DEFAULT NULL,
  `gallery_imgs` varchar(255) DEFAULT NULL,
  `language_type` varchar(50) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_models`
--

INSERT INTO `product_models` (`id`, `title`, `a_title`, `slug`, `a_slug`, `description`, `a_description`, `additional_details`, `product_type`, `a_product_type`, `product_price`, `a_product_price`, `sale_price`, `a_sale_price`, `product_catgories`, `a_product_catgories`, `simple_product_sku`, `a_simple_product_sku`, `product_details`, `a_product_details`, `feature_image`, `gallery_imgs`, `language_type`, `status`, `created_at`, `updated_at`) VALUES
(17, 'NewPaint', 'سروال البضائع الساق المستقيمة', 'womens-pantsNGYOqgBDok', NULL, '{\"short_description\":\"<p>NewPaint<br><\\/p>\",\"long_description\":\"<p>NewPaint<br><\\/p>\",\"additional_description\":\"<p>NewPaint<br><\\/p>\"}', '{\"a_short_description\":\"<p>\\u0633\\u0631\\u0648\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0636\\u0627\\u0626\\u0639 \\u0627\\u0644\\u0633\\u0627\\u0642 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0642\\u064a\\u0645\\u0629<br><\\/p>\",\"a_long_description\":\"<p>\\u0633\\u0631\\u0648\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0636\\u0627\\u0626\\u0639 \\u0627\\u0644\\u0633\\u0627\\u0642 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0642\\u064a\\u0645\\u0629<br><\\/p>\",\"a_additional_description\":\"<p>\\u0633\\u0631\\u0648\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0636\\u0627\\u0626\\u0639 \\u0627\\u0644\\u0633\\u0627\\u0642 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0642\\u064a\\u0645\\u0629<br><\\/p>\"}', NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":{\"0\":\"43\",\"1\":\"83\"},\"tags\":[\"9\",\"11\"],\"subtags\":[\"10\",\"11\",\"13\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"30\",\"color\":\"33\",\"sku\":null,\"quantity\":\"10\",\"price\":\"100\"},\"1\":{\"sizecapicity\":\"31\",\"color\":\"33\",\"sku\":null,\"quantity\":\"15\",\"price\":\"110\"},\"2\":{\"sizecapicity\":\"30\",\"color\":\"33\",\"sku\":null,\"quantity\":\"12\",\"price\":\"150\"}}', NULL, '1706074065.webp', '{\"0\":\"170607406551853.jpg\",\"1\":\"170607406528131.jpg\",\"2\":\"170607406517857.jpg\",\"3\":\"170607406554697.jpg\"}', 'English', 'active', '2024-01-24 05:27:45', '2024-01-30 04:25:20'),
(18, 'NewTshirt', 'الصلبة اللون الخامس الرقبة تي شيرت', 'womens-pantsdrbVR3LOfE', NULL, '{\"short_description\":\"<p>NewTshirt<br><\\/p>\",\"long_description\":\"<p>NewTshirt<br><\\/p>\",\"additional_description\":\"<p>NewTshirt<br><\\/p>\"}', '{\"a_short_description\":\"<p>\\u0627\\u0644\\u0635\\u0644\\u0628\\u0629 \\u0627\\u0644\\u0644\\u0648\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0631\\u0642\\u0628\\u0629 \\u062a\\u064a \\u0634\\u064a\\u0631\\u062a<br><\\/p>\",\"a_long_description\":\"<p>\\u0627\\u0644\\u0635\\u0644\\u0628\\u0629 \\u0627\\u0644\\u0644\\u0648\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0631\\u0642\\u0628\\u0629 \\u062a\\u064a \\u0634\\u064a\\u0631\\u062a<br><\\/p>\",\"a_additional_description\":\"<p>\\u0627\\u0644\\u0635\\u0644\\u0628\\u0629 \\u0627\\u0644\\u0644\\u0648\\u0646 \\u0627\\u0644\\u062e\\u0627\\u0645\\u0633 \\u0627\\u0644\\u0631\\u0642\\u0628\\u0629 \\u062a\\u064a \\u0634\\u064a\\u0631\\u062a<br><\\/p>\"}', NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":{\"0\":\"43\",\"1\":\"83\"},\"tags\":[\"9\",\"11\"],\"subtags\":[\"11\",\"12\",\"14\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"30\",\"color\":\"35\",\"sku\":null,\"quantity\":\"12\",\"price\":\"350\"}}', NULL, '1706588625.webp', '[\"170658862550560.webp\",\"170658862573009.webp\"]', 'English', 'active', '2024-01-24 05:38:31', '2024-01-30 04:24:10'),
(19, 'NewPaint', 'سروال البضائع الساق المستقيمة', 'womens-pantsC60MdEvWVq', NULL, '{\"short_description\":\"<p>NewPaint<br><\\/p>\",\"long_description\":\"<p>NewPaint<br><\\/p>\",\"additional_description\":\"<p>NewPaint<br><\\/p>\"}', '{\"a_short_description\":\"<p>\\u0633\\u0631\\u0648\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0636\\u0627\\u0626\\u0639 \\u0627\\u0644\\u0633\\u0627\\u0642 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0642\\u064a\\u0645\\u0629<br><\\/p>\",\"a_long_description\":\"<p>\\u0633\\u0631\\u0648\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0636\\u0627\\u0626\\u0639 \\u0627\\u0644\\u0633\\u0627\\u0642 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0642\\u064a\\u0645\\u0629<br><\\/p>\",\"a_additional_description\":\"<p>\\u0633\\u0631\\u0648\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0636\\u0627\\u0626\\u0639 \\u0627\\u0644\\u0633\\u0627\\u0642 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0642\\u064a\\u0645\\u0629<br><\\/p>\"}', NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":{\"0\":\"43\",\"1\":\"83\"},\"tags\":[\"9\",\"11\"],\"subtags\":[\"12\",\"15\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"30\",\"color\":\"37\",\"sku\":null,\"quantity\":\"14\",\"price\":\"350\"}}', NULL, '1706074847.jpg', '{\"0\":\"170607484786528.jpg\",\"1\":\"170607484769169.jpg\"}', 'English', 'active', '2024-01-24 05:40:47', '2024-01-30 04:20:29'),
(20, 'Men\'s T-Shirts', 'تي شيرت رجالي مريح ذو لون سادة ورقبة على شكل حرف V ومتوسط ​​قابل للتمدد', 'mens-t-shirtsNcdRqlVm2r', NULL, '{\"short_description\":\"<p><a href=\\\"https:\\/\\/www.temu.com\\/mens-t-shirts-o3-952.html\\\" class=\\\"_3VEjS46S _11Gw9NPE\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 0px; padding: 0px; -webkit-user-drag: none; touch-action: manipulation; color: inherit; background-color: rgb(255, 255, 255); position: relative; width: 86px; font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif; font-size: 12px;\\\"><\\/a><\\/p><div class=\\\"_3v_-G3RN\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; -webkit-user-drag: none; box-sizing: border-box; touch-action: manipulation; position: relative; top: -13px; display: flex; flex-direction: column; align-items: center; justify-content: center;\\\"><div class=\\\"_1n85zkuB\\\" title=\\\"Men\'s T-Shirts\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: transparent; margin: 21px 0px 0px; padding: 0px; -webkit-user-drag: none; box-sizing: border-box; touch-action: manipulation; font-size: 13px; color: rgb(34, 34, 34); line-height: 17px; font-weight: 400; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; text-align: center;\\\">Men\'s T-Shirts<\\/div><\\/div>\",\"long_description\":\"<p><a href=\\\"https:\\/\\/www.temu.com\\/mens-t-shirts-o3-952.html\\\" class=\\\"_3VEjS46S _11Gw9NPE\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 0px; padding: 0px; -webkit-user-drag: none; touch-action: manipulation; color: inherit; background-color: rgb(255, 255, 255); position: relative; width: 86px; font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif; font-size: 12px;\\\"><\\/a><\\/p><div class=\\\"_3v_-G3RN\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; -webkit-user-drag: none; box-sizing: border-box; touch-action: manipulation; position: relative; top: -13px; display: flex; flex-direction: column; align-items: center; justify-content: center;\\\"><div class=\\\"_1n85zkuB\\\" title=\\\"Men\'s T-Shirts\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: transparent; margin: 21px 0px 0px; padding: 0px; -webkit-user-drag: none; box-sizing: border-box; touch-action: manipulation; font-size: 13px; color: rgb(34, 34, 34); line-height: 17px; font-weight: 400; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; text-align: center;\\\">Men\'s T-Shirts<\\/div><\\/div>\",\"additional_description\":\"<p><a href=\\\"https:\\/\\/www.temu.com\\/mens-t-shirts-o3-952.html\\\" class=\\\"_3VEjS46S _11Gw9NPE\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 20px 0px 0px; padding: 0px; -webkit-user-drag: none; touch-action: manipulation; color: inherit; background-color: rgb(255, 255, 255); position: relative; width: 86px; font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif; font-size: 12px;\\\"><\\/a><\\/p><div class=\\\"_3v_-G3RN\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; -webkit-user-drag: none; box-sizing: border-box; touch-action: manipulation; position: relative; top: -13px; display: flex; flex-direction: column; align-items: center; justify-content: center;\\\"><div class=\\\"_1n85zkuB\\\" title=\\\"Men\'s T-Shirts\\\" style=\\\"border: 0px; -webkit-tap-highlight-color: transparent; margin: 21px 0px 0px; padding: 0px; -webkit-user-drag: none; box-sizing: border-box; touch-action: manipulation; font-size: 13px; color: rgb(34, 34, 34); line-height: 17px; font-weight: 400; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; text-align: center;\\\">Men\'s T-Shirts<\\/div><\\/div>\"}', '{\"a_short_description\":\"<p>\\u062a\\u064a \\u0634\\u064a\\u0631\\u062a \\u0631\\u062c\\u0627\\u0644\\u064a \\u0645\\u0631\\u064a\\u062d \\u0630\\u0648 \\u0644\\u0648\\u0646 \\u0633\\u0627\\u062f\\u0629 \\u0648\\u0631\\u0642\\u0628\\u0629 \\u0639\\u0644\\u0649 \\u0634\\u0643\\u0644 \\u062d\\u0631\\u0641 V \\u0648\\u0645\\u062a\\u0648\\u0633\\u0637 \\u200b\\u200b\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0645\\u062f\\u062f<br><\\/p>\",\"a_long_description\":\"<p>\\u062a\\u064a \\u0634\\u064a\\u0631\\u062a \\u0631\\u062c\\u0627\\u0644\\u064a \\u0645\\u0631\\u064a\\u062d \\u0630\\u0648 \\u0644\\u0648\\u0646 \\u0633\\u0627\\u062f\\u0629 \\u0648\\u0631\\u0642\\u0628\\u0629 \\u0639\\u0644\\u0649 \\u0634\\u0643\\u0644 \\u062d\\u0631\\u0641 V \\u0648\\u0645\\u062a\\u0648\\u0633\\u0637 \\u200b\\u200b\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0645\\u062f\\u062f<br><\\/p>\",\"a_additional_description\":\"<p>\\u062a\\u064a \\u0634\\u064a\\u0631\\u062a \\u0631\\u062c\\u0627\\u0644\\u064a \\u0645\\u0631\\u064a\\u062d \\u0630\\u0648 \\u0644\\u0648\\u0646 \\u0633\\u0627\\u062f\\u0629 \\u0648\\u0631\\u0642\\u0628\\u0629 \\u0639\\u0644\\u0649 \\u0634\\u0643\\u0644 \\u062d\\u0631\\u0641 V \\u0648\\u0645\\u062a\\u0648\\u0633\\u0637 \\u200b\\u200b\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0645\\u062f\\u062f<br><\\/p>\"}', NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":{\"0\":\"44\",\"1\":\"88\"},\"tags\":[\"13\",\"14\"],\"subtags\":[\"17\",\"18\",\"20\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"38\",\"color\":\"41\",\"sku\":null,\"quantity\":\"13\",\"price\":\"410\"},\"1\":{\"sizecapicity\":\"39\",\"color\":\"41\",\"sku\":null,\"quantity\":\"100\",\"price\":\"500\"}}', NULL, '1706075700.webp', '{\"0\":\"170607570036641.webp\",\"1\":\"170607570074120.webp\",\"2\":\"170607570070263.webp\"}', 'English', 'active', '2024-01-24 05:55:00', '2024-01-30 04:17:59'),
(21, 'Women\'s Skirts', 'تنانير من الدينيم بجيب منخفض الخصر', 'womens-skirtsbjHPirdwU5', NULL, '{\"short_description\":\"<p>Women\'s Skirts<br><\\/p>\",\"long_description\":\"<p>Women\'s Skirts<br><\\/p>\",\"additional_description\":\"<p>Women\'s Skirts<br><\\/p>\"}', '{\"a_short_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\",\"a_long_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\",\"a_additional_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\"}', NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":{\"0\":\"43\",\"1\":\"87\"},\"tags\":[\"26\",\"27\",\"28\",\"29\",\"30\"],\"subtags\":[\"21\",\"23\",\"25\",\"27\",\"28\",\"30\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"30\",\"color\":\"36\",\"sku\":null,\"quantity\":\"50\",\"price\":\"1500\"},\"1\":{\"sizecapicity\":\"31\",\"color\":\"36\",\"sku\":null,\"quantity\":\"100\",\"price\":\"1200\"}}', NULL, '1706076727.webp', '{\"0\":\"170607672752591.webp\",\"1\":\"170607672755943.webp\",\"2\":\"170607672736568.webp\",\"3\":\"170607672728626.webp\"}', 'English', 'active', '2024-01-24 06:12:07', '2024-01-30 04:16:06'),
(22, 'Women\'s Skirts', 'تنانير من الدينيم بجيب منخفض الخصر', 'womens-skirtsTx23SwF9qv', NULL, '{\"short_description\":\"<p><span style=\\\"background-color: rgba(0, 0, 0, 0.05);\\\">Women\'s Skirts<\\/span><br><\\/p>\",\"long_description\":\"<p><span style=\\\"background-color: rgba(0, 0, 0, 0.05);\\\">Women\'s Skirts<\\/span><br><\\/p>\",\"additional_description\":\"<p><span style=\\\"background-color: rgba(0, 0, 0, 0.05);\\\">Women\'s Skirts<\\/span><br><\\/p>\"}', '{\"a_short_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\",\"a_long_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\",\"a_additional_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\"}', NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":{\"0\":\"43\",\"1\":\"87\"},\"tags\":[\"26\",\"27\",\"28\",\"29\",\"30\"],\"subtags\":[\"21\",\"23\",\"25\",\"27\",\"28\",\"30\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"30\",\"color\":\"63\",\"sku\":null,\"quantity\":null,\"price\":null},\"1\":{\"sizecapicity\":\"31\",\"color\":\"35\",\"sku\":null,\"quantity\":null,\"price\":null}}', NULL, '1706077624.webp', '{\"0\":\"170607762473359.webp\",\"1\":\"170607762474560.webp\",\"2\":\"170607762424245.webp\",\"3\":\"170607762476174.webp\",\"4\":\"170607762480424.webp\"}', 'English', 'active', '2024-01-24 06:27:04', '2024-01-30 04:15:34'),
(25, 'Low-waisred Flap Pocket Denim Skirts', 'تنانير من الدينيم بجيب منخفض الخصر', 'womens-clothing0guZkYSDji', NULL, '{\"short_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Streetwear Sexy Zipper Button Clourse Fashion Denim Cargo Skirts, Women\'s Denim Clothing<\\/span><br><\\/p>\",\"long_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Streetwear Sexy Zipper Button Clourse Fashion Denim Cargo Skirts, Women\'s Denim Clothing<\\/span><br><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Streetwear Sexy Zipper Button Clourse Fashion Denim Cargo Skirts, Women\'s Denim Clothing<\\/span><br><\\/p>\"}', '{\"a_short_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\",\"a_long_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\",\"a_additional_description\":\"<p>\\u062a\\u0646\\u0627\\u0646\\u064a\\u0631 \\u0645\\u0646 \\u0627\\u0644\\u062f\\u064a\\u0646\\u064a\\u0645 \\u0628\\u062c\\u064a\\u0628 \\u0645\\u0646\\u062e\\u0641\\u0636 \\u0627\\u0644\\u062e\\u0635\\u0631<br><\\/p>\"}', NULL, 'simple', NULL, '300', NULL, '500', NULL, '{\"product_catgorey\":[\"43\",\"87\"],\"tags\":[\"26\",\"27\",\"28\",\"29\",\"30\"],\"subtags\":[\"21\",\"23\",\"25\",\"27\",\"28\",\"29\"]}', NULL, 'Women\'s_Denim_Clothing', NULL, '{\"0\":{\"sizecapicity\":\"30\",\"color\":\"33\",\"sku\":null,\"quantity\":null,\"price\":null}}', NULL, '1706532414.webp', '[\"170618654681534.webp\",\"170618654634593.webp\",\"170618654616788.webp\",\"170653326489603.webp\"]', 'English', 'active', '2024-01-25 12:42:26', '2024-01-29 13:12:22'),
(26, 'Solid Color Men\'s Comfy V-Neck Medium Stretch T-shirt', 'تي شيرت رجالي مريح ذو لون سادة ورقبة على شكل حرف V ومتوسط ​​قابل للتمدد', 'mens-clothingCmIYfUKqSe', NULL, '{\"short_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Men\'s Summer Clothes, Men\'s Outfits<\\/span><br><\\/p>\",\"long_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Men\'s Summer Clothes, Men\'s Outfits<\\/span><br><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Men\'s Summer Clothes, Men\'s Outfits<\\/span><br><\\/p>\"}', '{\"a_short_description\":\"<p>\\u062a\\u064a \\u0634\\u064a\\u0631\\u062a \\u0631\\u062c\\u0627\\u0644\\u064a \\u0645\\u0631\\u064a\\u062d \\u0630\\u0648 \\u0644\\u0648\\u0646 \\u0633\\u0627\\u062f\\u0629 \\u0648\\u0631\\u0642\\u0628\\u0629 \\u0639\\u0644\\u0649 \\u0634\\u0643\\u0644 \\u062d\\u0631\\u0641 V \\u0648\\u0645\\u062a\\u0648\\u0633\\u0637 \\u200b\\u200b\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0645\\u062f\\u062f<br><\\/p>\",\"a_long_description\":\"<p>\\u062a\\u064a \\u0634\\u064a\\u0631\\u062a \\u0631\\u062c\\u0627\\u0644\\u064a \\u0645\\u0631\\u064a\\u062d \\u0630\\u0648 \\u0644\\u0648\\u0646 \\u0633\\u0627\\u062f\\u0629 \\u0648\\u0631\\u0642\\u0628\\u0629 \\u0639\\u0644\\u0649 \\u0634\\u0643\\u0644 \\u062d\\u0631\\u0641 V \\u0648\\u0645\\u062a\\u0648\\u0633\\u0637 \\u200b\\u200b\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0645\\u062f\\u062f<br><\\/p>\",\"a_additional_description\":\"<p>\\u062a\\u064a \\u0634\\u064a\\u0631\\u062a \\u0631\\u062c\\u0627\\u0644\\u064a \\u0645\\u0631\\u064a\\u062d \\u0630\\u0648 \\u0644\\u0648\\u0646 \\u0633\\u0627\\u062f\\u0629 \\u0648\\u0631\\u0642\\u0628\\u0629 \\u0639\\u0644\\u0649 \\u0634\\u0643\\u0644 \\u062d\\u0631\\u0641 V \\u0648\\u0645\\u062a\\u0648\\u0633\\u0637 \\u200b\\u200b\\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0645\\u062f\\u062f<br><\\/p>\"}', NULL, 'simple', NULL, '200', NULL, '599', NULL, '{\"product_catgorey\":[\"44\",\"88\"],\"tags\":[\"13\",\"14\"],\"subtags\":[\"16\",\"20\"]}', NULL, 'Men\'s_Outfits', NULL, '{\"0\":{\"sizecapicity\":\"38\",\"color\":\"41\",\"sku\":null,\"quantity\":null,\"price\":null}}', NULL, '1706187331.webp', '{\"0\":\"170618733135301.webp\",\"1\":\"170618733154240.webp\",\"2\":\"170618733157049.webp\"}', 'English', 'active', '2024-01-25 12:55:31', '2024-01-30 04:13:23'),
(29, 'Kung Fu Rooster Pattern 3d PrintT-shirt', NULL, 'mens-clothinglmUDgSJCO3', NULL, '{\"short_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Kung Fu Rooster Pattern 3d PrintT-shirt<\\/span><br><\\/p>\",\"long_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Kung Fu Rooster Pattern 3d PrintT-shirt<\\/span><br><\\/p>\",\"additional_description\":\"<p><span style=\\\"color: rgb(34, 34, 34); font-family: miui, system-ui, -apple-system, BlinkMacSystemFont, &quot;.SFNSText-Regular&quot;, Helvetica, Arial, sans-serif;\\\">Kung Fu Rooster Pattern 3d PrintT-shirt<\\/span><br><\\/p>\"}', NULL, NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":[\"44\",\"88\"],\"tags\":[\"13\",\"14\"],\"subtags\":[\"16\",\"20\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"38\",\"color\":\"41\",\"sku\":null,\"quantity\":\"100\",\"price\":\"200\"},\"1\":{\"sizecapicity\":\"39\",\"color\":\"42\",\"sku\":null,\"quantity\":\"200\",\"price\":\"399\"}}', NULL, '1706594989.webp', '{\"0\":\"170659498922835.webp\",\"1\":\"170659498943576.webp\"}', 'English', '0', '2024-01-30 06:09:49', '2024-01-30 06:29:55'),
(30, 'testproduct', 'امتحان', 'mens-clothingUI8VxgqFnN', NULL, '{\"short_description\":\"<p>this is test product&nbsp;<span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><br><\\/p>\",\"long_description\":\"<p>this is test product&nbsp;<span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product<\\/span><br><\\/p>\",\"additional_description\":\"<p>this is test product&nbsp;<span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><span style=\\\"font-size: 1rem;\\\">this is test product&nbsp;<\\/span><br><\\/p>\"}', '{\"a_short_description\":\"<p>\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646<br><\\/p>\",\"a_long_description\":\"<p>\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646<br><\\/p>\",\"a_additional_description\":\"<p>\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646<br><\\/p>\"}', NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":[\"44\",\"88\"],\"tags\":[\"13\",\"14\"],\"subtags\":[\"16\",\"17\",\"20\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"38\",\"color\":\"41\",\"sku\":\"testred1\",\"quantity\":\"10\",\"price\":\"100\"},\"1\":{\"sizecapicity\":\"39\",\"color\":\"41\",\"sku\":\"testred2\",\"quantity\":\"10\",\"price\":\"105\"},\"2\":{\"sizecapicity\":\"40\",\"color\":\"41\",\"sku\":\"testred3\",\"quantity\":\"10\",\"price\":\"110\"},\"3\":{\"sizecapicity\":\"38\",\"color\":\"44\",\"sku\":\"testwhite1\",\"quantity\":\"10\",\"price\":\"90\"},\"4\":{\"sizecapicity\":\"39\",\"color\":\"44\",\"sku\":\"testwhite1\",\"quantity\":\"10\",\"price\":\"95\"}}', NULL, '1706598993.png', '{\"0\":\"170659899318105.png\",\"1\":\"170659899341159.png\",\"2\":\"170659899321218.png\"}', 'English', 'active', '2024-01-30 07:16:33', '2024-01-30 08:51:35'),
(31, 'demodemo', NULL, 'mens-clothing4JD6RMUQ2k', NULL, '{\"short_description\":\"<p>demodemo&nbsp;demodemo<span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><br><\\/p>\",\"long_description\":\"<p>demodemo&nbsp;demodemo<span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><br><\\/p>\",\"additional_description\":\"<p>demodemo&nbsp;demodemo<span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><span style=\\\"font-size: 1rem;\\\">demodemo&nbsp;demodemo<\\/span><br><\\/p>\"}', NULL, NULL, 'variable', NULL, NULL, NULL, NULL, NULL, '{\"product_catgorey\":[\"44\",\"88\"],\"tags\":[\"13\",\"14\"],\"subtags\":[\"16\",\"17\",\"20\"]}', NULL, NULL, NULL, '{\"0\":{\"sizecapicity\":\"38\",\"color\":\"42\",\"sku\":null,\"quantity\":\"100\",\"price\":\"500\"}}', NULL, '1706702350.jpg', '{\"0\":\"170670235015746.jpg\"}', 'English', 'active', '2024-01-31 11:59:10', '2024-01-31 11:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `ratting` int(11) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `user_id`, `product_id`, `user_name`, `description`, `ratting`, `images`, `video`, `created_at`, `updated_at`) VALUES
(20, 131, 20, 'jack', 'good', 2, '{\"0\":\"34713.jpg\",\"1\":\"13993.jpg\",\"2\":\"665311.jpg\"}', NULL, '2024-02-01 07:29:25', '2024-02-01 07:34:16'),
(21, 131, 20, 'Aaron', 'good', 5, '{\"0\":\"109233.jpg\",\"1\":\"19393.jpg\"}', NULL, '2024-02-01 07:30:50', '2024-02-01 07:35:10'),
(22, 131, 20, NULL, NULL, NULL, NULL, NULL, '2024-02-01 09:04:08', '2024-02-01 09:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `subadmin_models`
--

CREATE TABLE `subadmin_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `pro_img` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_tag_models`
--

CREATE TABLE `sub_tag_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_tag_name` varchar(255) DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `a_sub_tag_name` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_tag_models`
--

INSERT INTO `sub_tag_models` (`id`, `sub_tag_name`, `tag_id`, `category_id`, `a_sub_tag_name`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Cotton', 9, 83, 'قطن', 'active', '2024-01-22 11:03:58', '2024-01-29 09:33:48'),
(11, 'Nylon', 9, 83, 'نايلون', 'active', '2024-01-22 11:15:28', '2024-01-29 09:34:11'),
(12, 'PU', 9, 83, 'بو', 'active', '2024-01-22 11:21:26', '2024-01-29 09:34:23'),
(13, 'All Seasons', 11, 83, 'كل المواسم', 'active', '2024-01-22 11:22:06', '2024-01-29 09:34:34'),
(14, 'Spring/Fall', 11, 83, 'الربيع/الخريف', 'active', '2024-01-22 11:22:32', '2024-01-29 09:34:44'),
(15, 'Winter', 11, 83, 'شتاء\n', 'active', '2024-01-22 11:22:59', '2024-01-29 09:35:01'),
(16, 'Knitted Fabric', 13, 88, 'نسيج محبوك', 'active', '2024-01-24 05:48:01', '2024-01-29 09:35:19'),
(17, 'Cotton Blend', 13, 88, 'مزيج القطن', 'active', '2024-01-24 05:48:38', '2024-01-29 09:35:30'),
(18, 'Recycle Polyester', 13, 88, 'إعادة تدوير البوليستر', 'active', '2024-01-24 05:49:10', '2024-01-29 09:35:39'),
(19, 'Woven Fabric', 13, 88, 'القماش المنسوج', 'active', '2024-01-24 05:49:31', '2024-01-29 09:35:52'),
(20, 'Patterned', 14, 88, 'منقوشة', 'active', '2024-01-24 05:50:02', '2024-01-29 09:36:02'),
(21, 'Denim', 26, 87, 'الدنيم', 'active', '2024-01-24 06:06:05', '2024-01-29 09:36:14'),
(22, 'Cotton Blend', 26, 87, 'مزيج القطن', 'active', '2024-01-24 06:06:32', '2024-01-29 09:36:23'),
(23, 'Summer', 27, 87, 'صيف', 'active', '2024-01-24 06:06:53', '2024-01-29 09:36:38'),
(24, 'Pocket', 28, 87, 'جيب', 'active', '2024-01-24 06:07:16', '2024-01-29 09:36:50'),
(25, 'Button', 28, 87, 'زر', 'active', '2024-01-24 06:07:38', '2024-01-29 09:37:03'),
(26, 'Casual', 29, 87, 'غير رسمي', 'active', '2024-01-24 06:08:06', '2024-01-29 09:37:16'),
(27, 'Street', 29, 87, 'شارع', 'active', '2024-01-24 06:08:24', '2024-01-29 09:37:27'),
(28, 'Sexy', 29, 87, 'جنسي', 'active', '2024-01-24 06:08:59', '2024-01-29 09:37:37'),
(29, 'Slit', 30, 87, 'شق', 'active', '2024-01-24 06:09:21', '2024-01-29 09:37:51'),
(30, 'Bodycon', 30, 87, 'باڈی کون', 'active', '2024-01-24 06:09:40', '2024-02-01 05:24:53'),
(49, 'Plastic', 45, 45, 'بلاستيك', 'active', '2024-01-25 05:25:38', '2024-01-29 09:38:15'),
(70, 'PVC', 45, 45, 'new', 'active', '2024-02-01 06:10:37', '2024-02-01 06:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `tag_models`
--

CREATE TABLE `tag_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `tag_title` varchar(255) DEFAULT NULL,
  `a_tag_title` varchar(255) DEFAULT NULL,
  `tag_status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_models`
--

INSERT INTO `tag_models` (`id`, `category_id`, `tag_title`, `a_tag_title`, `tag_status`, `created_at`, `updated_at`) VALUES
(9, 83, 'Material', 'مادة', 'active', '2024-01-18 10:53:30', '2024-01-29 09:26:16'),
(10, 83, 'Details', 'تفاصيل', 'active', '2024-01-18 10:53:48', '2024-01-29 09:26:29'),
(11, 83, 'Seasons', 'مواسم', 'active', '2024-01-18 10:54:56', '2024-01-29 09:26:40'),
(12, 83, 'Style', 'أسلوب', 'active', '2024-01-18 10:56:06', '2024-01-29 09:26:50'),
(13, 88, 'Material', 'مادة', 'active', '2024-01-18 10:58:24', '2024-01-29 09:27:02'),
(14, 88, 'Details', 'تفاصيل', 'active', '2024-01-18 10:59:31', '2024-01-29 09:27:13'),
(15, 88, 'Seasons', 'س', 'active', '2024-01-18 10:59:48', '2024-01-29 09:27:27'),
(16, 88, 'Style', 'أسلوب', 'active', '2024-01-18 11:00:29', '2024-01-29 09:27:40'),
(26, 87, 'Material', 'مادة', 'active', '2024-01-24 06:00:27', '2024-01-29 09:27:58'),
(27, 87, 'Seasons', 'مواسم', 'active', '2024-01-24 06:00:59', '2024-01-29 09:28:19'),
(28, 87, 'Details', 'تفاصيل', 'active', '2024-01-24 06:01:30', '2024-01-29 09:28:38'),
(29, 87, 'Style', 'أسلوب', 'active', '2024-01-24 06:02:00', '2024-01-31 09:03:18'),
(30, 87, 'Type', 'يكتب', 'active', '2024-01-24 06:02:25', '2024-01-31 09:03:16'),
(31, 84, 'Patterned', 'منقوشة', 'active', '2024-01-24 06:31:43', '2024-01-31 09:03:15'),
(32, 84, 'Seasons', 'مواسم', 'active', '2024-01-24 06:32:07', '2024-01-31 09:03:14'),
(33, 84, 'Style', 'أسلوب', 'active', '2024-01-24 06:32:30', '2024-01-31 09:03:13'),
(34, 84, 'Printing Type', 'نوع الطباعة', 'active', '2024-01-24 06:32:55', '2024-01-31 09:03:12'),
(35, 84, 'Material', 'مادة', 'active', '2024-01-24 06:33:22', '2024-01-31 09:03:11'),
(36, 84, 'Details', 'تفاصيل', 'active', '2024-01-24 06:33:59', '2024-01-31 09:03:10'),
(45, 45, 'Material', 'مادة', 'active', '2024-01-25 05:24:50', '2024-01-31 09:03:09'),
(46, 45, 'Metal', 'معدن', 'active', '2024-01-25 05:34:54', '2024-01-31 09:03:08'),
(47, 111, 'Materialdemo', 'عرض مادي', 'active', '2024-01-31 11:54:13', '2024-02-01 05:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `pro_img` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `pro_img`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$Vh.qwww5ieSSFM.2kc1VLe/9eQpvizxSfzANsBdtZ6gkkTLuiF1Y6', '7898653214', 'admin.png', NULL, '2023-11-30 23:46:01', '2023-11-30 23:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `temp_user_name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `primary_address_status` varchar(50) NOT NULL DEFAULT 'inactive',
  `language_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `temp_user_name`, `address`, `city`, `country`, `state`, `zip_code`, `mobile_number`, `primary_address_status`, `language_type`, `created_at`, `updated_at`) VALUES
(9, 1, 'jack', 'nbt,shiv marge,murlipura', 'ARUBA', 'GUADELOUPE', 'rajasthan', '30212', '9875000000', 'inactive', NULL, '2024-01-09 05:31:22', '2024-01-27 05:39:07'),
(24, 1, 'atoz', 'kota', 'Select City', 'ALBANIA', 'jaipur', '302012', '3232323232', 'inactive', NULL, '2024-01-11 10:13:23', '2024-01-27 05:39:07'),
(29, 131, 'English', 'Shuwaikh Industry', 'Al-farwaniyah', 'Kuwait', 'Al-Farwaniyah', '81006', '9875000000', 'inactive', 'English', '2024-01-27 05:25:19', '2024-02-01 06:42:28'),
(30, 132, 'عربي', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'active', 'Arabic', '2024-01-27 05:36:39', '2024-01-29 08:56:32'),
(33, 131, 'عربي', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'Arabic', '2024-01-27 06:10:18', '2024-02-01 06:42:28'),
(34, 131, 'عربي', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'Arabic', '2024-01-27 06:24:25', '2024-02-01 06:42:28'),
(35, 131, 'عربي', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'English', '2024-01-27 07:54:00', '2024-02-01 06:42:28'),
(36, 131, 'عربي', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'English', '2024-01-29 04:22:56', '2024-02-01 06:42:28'),
(37, 131, 'nish', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'English', '2024-01-29 04:23:18', '2024-02-01 06:42:28'),
(38, 131, 'nish', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '8100', '9875000000', 'inactive', 'English', '2024-01-29 04:23:25', '2024-02-01 06:42:28'),
(39, 131, 'nish', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '8100', '9875000000', 'inactive', 'Arabic', '2024-01-29 04:23:34', '2024-02-01 06:42:28'),
(40, 134, 'ffg', 'ffg', NULL, '+1', 'rffc', '111111', '8885214851', 'active', NULL, '2024-01-29 04:48:40', '2024-01-29 05:17:28'),
(41, 134, 'dufjd', 'dnjdjf', NULL, '+1', 'djdjcjc', '888888', '8688688888', 'inactive', NULL, '2024-01-29 04:53:04', '2024-01-29 05:17:28'),
(42, 134, 'rocky', 'nbt,shiv marge,murlipura', 'jaipur', 'india', 'rajasthan', '30212', '9875000000', 'inactive', 'English', '2024-01-29 05:06:32', '2024-01-29 05:17:28'),
(43, 134, 'fjfjdf', 'ejdjfjc', NULL, '+1', 'ejdjfjcs', '558888', '5888888888', 'inactive', 'English', '2024-01-29 05:16:34', '2024-01-29 05:17:28'),
(44, 133, 'nish', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '8100', '9875000000', 'inactive', 'Arabic', '2024-01-29 06:08:39', '2024-01-30 10:39:17'),
(45, 133, 'nsjjsjsjsksk', 'jsjsjdndudosso', 'jdjddjjd', 'djjddjjd', 'nsjswjksks', '123456', '1234567890', 'inactive', NULL, '2024-01-29 06:26:54', '2024-01-30 10:39:17'),
(46, 133, 'jzjsjzjs', 'wjiskajas', 'shjzn', 'bsnjsnz', 'nsjzkka', '12345', '1234567890', 'inactive', NULL, '2024-01-29 06:42:15', '2024-01-30 10:39:17'),
(47, 133, 'jzjsjzjs', 'wjiskajas', 'shjzn', 'bsnjsnz', 'nsjzkka', '12345', '1234567890', 'inactive', NULL, '2024-01-29 06:43:56', '2024-01-30 10:39:17'),
(48, 133, 'bdshshsvs', 'fnnfdndd', 'bddbbs', 'nfdbd', 'bsbzsb', '11111', '0987654321', 'inactive', NULL, '2024-01-29 06:44:24', '2024-01-30 10:39:17'),
(49, 133, 'shaikh', 'shastri nagara', 'jaipur', 'pune', 'maharashtra', '302016', '8888888888', 'inactive', NULL, '2024-01-29 06:50:27', '2024-01-30 10:39:17'),
(51, 133, 'jj', 'nishahsh', 'hsjsn', 'jwusjs', 'snjs', '123456', '1234567890', 'inactive', NULL, '2024-01-29 06:55:44', '2024-01-30 10:39:17'),
(52, 133, 'jajajsjs', 'nsjsjjs', 'hzjzj', 'nsjsj', 'znjsjszj', '123456', '1234567890', 'inactive', NULL, '2024-01-29 07:02:01', '2024-01-30 10:39:17'),
(54, 131, 'aman', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'Arabic', '2024-01-29 07:18:01', '2024-02-01 06:42:28'),
(56, 133, 'akjaka', 'nsjsks', 'bwjsjjs', 'jejsjs', 'nsjsjsks', '12345', '1234567890', 'inactive', NULL, '2024-01-29 07:49:21', '2024-01-30 10:39:17'),
(57, 131, 'عربي', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'Arabic', '2024-01-29 08:54:07', '2024-02-01 06:42:28'),
(58, 131, 'name', 'jaipur', 'jaipur', 'india', 'rajasthan', '81006', '9875000000', 'inactive', 'English', '2024-01-29 08:55:11', '2024-02-01 06:42:28'),
(59, 133, 'shah', 'snjsjsn', 'nznsns', 'xnnx', 'jsjsj', '12345', '0987654322', 'inactive', NULL, '2024-01-29 08:59:41', '2024-01-30 10:39:17'),
(63, 133, 'Swift', '3 Newbridge Court', 'California', 'Algeria', 'California', '12345', '1234567890', 'active', 'Arabic', '2024-01-30 06:03:10', '2024-01-30 10:39:17'),
(65, 138, 'test', 'cavs', NULL, '+91', 'Rajasthan', '302013', '1234567890', 'active', 'English', '2024-01-31 07:51:48', '2024-01-31 07:51:48'),
(66, 131, 'aman', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'Arabic', '2024-01-31 11:16:37', '2024-02-01 06:42:28'),
(69, 137, 'shaikh', 'Cambridge road', 'Dubai', 'Andorra', 'Dubai', '123456', '1234567890', 'inactive', 'Arabic', '2024-01-31 11:24:30', '2024-02-01 07:55:28'),
(70, 131, 'aman', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'inactive', 'Arabic', '2024-02-01 06:42:22', '2024-02-01 06:42:28'),
(71, 131, 'aman', 'صناعة الشويخ', 'الفروانية', 'الكويت', 'الفروانية', '81006', '9875000000', 'active', 'English', '2024-02-01 06:42:28', '2024-02-01 06:42:28'),
(74, 137, 'hxjx', 'jxjx', 'hzjz', 'hxhz', 'dj', '686767', '1234567890', 'active', 'English', '2024-02-01 07:55:28', '2024-02-01 07:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_models`
--

CREATE TABLE `user_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_type` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `plain_password` varchar(255) DEFAULT NULL,
  `pro_img` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `otp` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_models`
--

INSERT INTO `user_models` (`id`, `language_type`, `first_name`, `last_name`, `email`, `password`, `plain_password`, `pro_img`, `country`, `phone`, `terms`, `status`, `otp`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'jons', 'Eli', 'demo@mailinator.com', '$2y$10$ZjmpqP87lDx/jH84V8iKROWKdb5fFKwk1zIKl2UGUPeGsAMntM0ES', 'admin123', '3080.jpg', 'AZERBAIJAN', '1234567890', NULL, 'active', '197800', NULL, '2023-12-20 04:09:44', '2024-01-29 11:54:59'),
(88, NULL, 'Tommy', 'Cruise', 'testnbt781@mailinator.com', '$2y$10$BNLmMU9uFo08HRSkqFuQweqscqCMkGfosYg.zGMqSzSjdD8zQ3gW2', 'Admin@1234', NULL, '+880', '1234567890', NULL, 'active', '517455', NULL, '2024-01-11 10:07:50', '2024-01-11 10:19:36'),
(131, NULL, 'English', 'English', 'english@mailinator.com', '$2y$10$QOpCJDcy6Vjzp2eIJNPtDej./.F1SNVkYEX8QAWuDyQBtAhgH9DYe', 'admin123', NULL, '+91', '6545654778', NULL, 'active', NULL, NULL, '2024-01-27 05:19:37', '2024-01-30 11:46:15'),
(132, NULL, 'عربي', 'عربي', 'arabic@mailinator.com', '$2y$10$kzYkLcQH6DtU3SL8awAKs.7TaUT4Kpy2BqSm43UHpaNke95U1Qb2a', 'admin123', NULL, '+91', '6545654778', NULL, 'active', '941692', NULL, '2024-01-27 05:33:03', '2024-01-31 08:50:33'),
(133, NULL, 'gsgsg', 'jsjsj', 'nhdemo@mailinator.com', '$2y$10$/8l148W/UYMsDbCnm.Id0O.aUsybsulRMXW4knaeHRyJBrNDToCYq', '123456', NULL, 'IN', '3692581470', NULL, 'active', NULL, NULL, '2024-01-29 04:19:58', '2024-01-29 04:19:58'),
(134, NULL, 'demo', 'demo', 'demo020@mailinator.com', '$2y$10$IBYWobwMaenm3HTtaSywMekEyjIY24kxAFF56X/yS0d5wA/o955S6', 'demo@020', NULL, '+93', '2222222222', NULL, 'active', '801683', NULL, '2024-01-29 04:44:33', '2024-02-01 09:00:22'),
(136, NULL, 'name', 'lname', 'name@mailinator.com', '$2y$10$l4JJzC8hqjMFNbXQMFF8p.DUhKsUliVKUfhNN3Ao7Rec5PrCGhFv.', 'Adsfdzfsd251', NULL, NULL, '1212111121', NULL, 'active', NULL, NULL, '2024-01-30 05:14:57', '2024-01-30 06:00:11'),
(137, NULL, 'aaas', 'ddd', 'demonn@mailinator.com', '$2y$10$MbK3Jqo2qIFz/29PsCPK7eRMqppPOXghMt2AfFvYyjhNKMa01DhLG', '123456', NULL, 'IN', '1234567890', NULL, 'active', NULL, NULL, '2024-01-31 05:59:46', '2024-01-31 11:34:23'),
(138, NULL, 'test', 'dan', 'james321@mailinator.com', '$2y$10$Gmp5R4SFuRIoCF6zwaVRUOowawD4/1I6r5ujgGTKAFqNBlGlGv.8i', 'Test@123', NULL, '+91', '6378905245', NULL, 'active', NULL, NULL, '2024-01-31 07:17:44', '2024-01-31 13:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

CREATE TABLE `user_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `language_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wishlist`
--

INSERT INTO `user_wishlist` (`id`, `user_id`, `product_id`, `language_type`, `created_at`, `updated_at`) VALUES
(88, 1, 20, NULL, '2024-01-24 13:04:52', '2024-01-24 13:04:52'),
(96, 134, 17, 'English', '2024-01-29 05:20:38', '2024-01-29 05:20:38'),
(99, 133, 17, 'Arabic', '2024-01-30 05:38:30', '2024-01-30 05:38:30'),
(106, 137, 26, 'Arabic', '2024-02-01 05:33:48', '2024-02-01 05:33:48'),
(107, 1, 17, 'English', '2024-02-01 06:19:23', '2024-02-01 06:19:23'),
(109, 137, 30, 'Arabic', '2024-02-01 06:28:53', '2024-02-01 06:28:53'),
(111, 131, 20, NULL, '2024-02-01 09:26:35', '2024-02-01 09:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `variation_models`
--

CREATE TABLE `variation_models` (
  `id` bigint(20) NOT NULL,
  `variation_name` varchar(255) DEFAULT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `a_variation_name` varchar(255) DEFAULT NULL,
  `variation_status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_models`
--

INSERT INTO `variation_models` (`id`, `variation_name`, `attribute_id`, `parent_id`, `a_variation_name`, `variation_status`, `created_at`, `updated_at`) VALUES
(30, 'S', 25, 43, 'س', 'active', '2024-01-18 10:37:40', '2024-01-29 09:22:09'),
(31, 'M', 25, 43, 'م', 'active', '2024-01-18 10:37:57', '2024-01-29 09:22:26'),
(32, 'L', 25, 43, 'ل', 'active', '2024-01-18 10:38:09', '2024-01-29 09:23:08'),
(33, 'Red', 26, 43, 'أحمر', 'active', '2024-01-18 10:39:23', '2024-01-29 09:23:25'),
(34, 'Yellow', 26, 43, 'أصفر', 'active', '2024-01-18 10:39:37', '2024-01-29 09:23:45'),
(35, 'Pink', 26, 43, 'لون القرنفل', 'active', '2024-01-18 10:39:49', '2024-01-29 09:24:00'),
(36, 'Black', 26, 43, 'أسود', 'active', '2024-01-18 10:40:23', '2024-01-29 09:24:20'),
(37, 'White', 26, 43, 'أبيض', 'active', '2024-01-18 10:40:56', '2024-01-29 09:24:39'),
(38, 'S', 27, 44, 'س', 'active', '2024-01-18 10:41:12', '2024-01-29 09:22:49'),
(39, 'M', 27, 44, 'م', 'active', '2024-01-18 10:42:23', '2024-01-29 09:22:40'),
(40, 'L', 27, 44, 'ل', 'active', '2024-01-18 10:42:39', '2024-01-29 09:23:12'),
(41, 'Red', 28, 44, 'أحمر', 'active', '2024-01-18 10:42:51', '2024-01-29 09:23:30'),
(42, 'Yellow', 28, 44, 'أصفر', 'active', '2024-01-18 10:43:06', '2024-01-29 09:23:47'),
(43, 'Pink', 28, 44, 'لون القرنفل', 'active', '2024-01-18 10:43:20', '2024-01-29 09:24:04'),
(44, 'White', 28, 44, 'أبيض', 'active', '2024-01-18 10:43:31', '2024-01-29 09:24:43'),
(45, 'Black', 28, 44, 'أسود', 'active', '2024-01-18 10:43:49', '2024-01-29 09:24:28'),
(63, 'Blue', 26, 43, 'أزرق', 'active', '2024-01-24 06:14:52', '2024-01-30 05:27:01'),
(64, 'Lightred', 27, 44, 'أحمر فاتح', 'active', '2024-01-31 05:36:38', '2024-01-31 10:56:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_models`
--
ALTER TABLE `attribute_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `blogs_models`
--
ALTER TABLE `blogs_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_model`
--
ALTER TABLE `category_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_banner`
--
ALTER TABLE `pages_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_models`
--
ALTER TABLE `pages_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_models`
--
ALTER TABLE `product_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_FK_1` (`user_id`),
  ADD KEY `prodoct_id_FK_2` (`product_id`);

--
-- Indexes for table `subadmin_models`
--
ALTER TABLE `subadmin_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subadmin_models_email_unique` (`email`);

--
-- Indexes for table `sub_tag_models`
--
ALTER TABLE `sub_tag_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id_FK22` (`tag_id`);

--
-- Indexes for table `tag_models`
--
ALTER TABLE `tag_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id_FK32` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_FK_11` (`user_id`);

--
-- Indexes for table `user_models`
--
ALTER TABLE `user_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_models_email_unique` (`email`);

--
-- Indexes for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_model_FK_22` (`user_id`),
  ADD KEY `user_wishlist_FK_1` (`product_id`);

--
-- Indexes for table `variation_models`
--
ALTER TABLE `variation_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id_FK_1` (`attribute_id`),
  ADD KEY `parent_cat_id_FK_2` (`parent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_models`
--
ALTER TABLE `attribute_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `blogs_models`
--
ALTER TABLE `blogs_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_model`
--
ALTER TABLE `category_model`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages_banner`
--
ALTER TABLE `pages_banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages_models`
--
ALTER TABLE `pages_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=699;

--
-- AUTO_INCREMENT for table `product_models`
--
ALTER TABLE `product_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subadmin_models`
--
ALTER TABLE `subadmin_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_tag_models`
--
ALTER TABLE `sub_tag_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tag_models`
--
ALTER TABLE `tag_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user_models`
--
ALTER TABLE `user_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `variation_models`
--
ALTER TABLE `variation_models`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_models`
--
ALTER TABLE `attribute_models`
  ADD CONSTRAINT `parent_id` FOREIGN KEY (`parent_id`) REFERENCES `category_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_review`
--
ALTER TABLE `product_review`
  ADD CONSTRAINT `prodoct_id_FK_2` FOREIGN KEY (`product_id`) REFERENCES `product_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_FK_1` FOREIGN KEY (`user_id`) REFERENCES `user_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_tag_models`
--
ALTER TABLE `sub_tag_models`
  ADD CONSTRAINT `tag_id_FK22` FOREIGN KEY (`tag_id`) REFERENCES `tag_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tag_models`
--
ALTER TABLE `tag_models`
  ADD CONSTRAINT `category_id_FK32` FOREIGN KEY (`category_id`) REFERENCES `category_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_id_FK_11` FOREIGN KEY (`user_id`) REFERENCES `user_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD CONSTRAINT `user_model_FK_22` FOREIGN KEY (`user_id`) REFERENCES `user_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_wishlist_FK_1` FOREIGN KEY (`product_id`) REFERENCES `product_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variation_models`
--
ALTER TABLE `variation_models`
  ADD CONSTRAINT `attribute_id_FK_1` FOREIGN KEY (`attribute_id`) REFERENCES `attribute_models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `parent_cat_id_FK_2` FOREIGN KEY (`parent_id`) REFERENCES `category_model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
