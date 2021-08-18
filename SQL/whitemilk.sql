-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 08:55 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whitemilk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(28) NOT NULL,
  `permissions` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `forgot_password_code` varchar(255) DEFAULT NULL,
  `fcm_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `role`, `permissions`, `created_by`, `forgot_password_code`, `fcm_id`, `date_created`) VALUES
(1, 'admin', 'e6e061838856bf47e1de730719fb2609', 'info@ecart.in', 'super admin', '{\"orders\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"categories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"subcategories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products_order\":{\"read\":\"1\",\"update\":\"1\"},\"featured\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"customers\":{\"read\":\"1\"},\"payment\":{\"read\":\"1\",\"update\":\"1\"},\"notifications\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"transactions\":{\"read\":\"1\"},\"settings\":{\"read\":\"1\",\"update\":\"1\"},\"locations\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"reports\":{\"create\":\"1\",\"read\":\"1\"},\"faqs\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"home_sliders\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"new_offers\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"promo_codes\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"delivery_boys\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"return_requests\":{\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"}}', 0, '1beaf755d5b73d40bfb300722286235c', 'f-v4-9FhTmy3RnuKA87v1e:APA91bFgac1u7uRzbFvR6p_Vwmd2VA7hlioy0Emi9nPXIuVHxxXK7UZzhuvTK3HrTahpwn745qNWlKQ7PKXtK30wd5BKQ0YmaFcyGcZWTb-KSfUJO5HIEGkFqqjdWg347LV0t1i6W2bN', '2020-06-22 16:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `city_id` int(11) NOT NULL,
  `minimum_free_delivery_order_amount` int(20) NOT NULL DEFAULT 0,
  `delivery_charges` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `image` text CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(2) DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `slug` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8 DEFAULT NULL,
  `image` text CHARACTER SET utf8 DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch_register`
--

CREATE TABLE `branch_register` (
  `BranchID` int(11) NOT NULL,
  `BranchName` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(100) NOT NULL,
  `ContactPerson` varchar(100) NOT NULL,
  `ContactNumber` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_register`
--

INSERT INTO `branch_register` (`BranchID`, `BranchName`, `Address`, `City`, `ContactPerson`, `ContactNumber`) VALUES
(10008, 'Kurnool Branch', 'fdgdgfgd', 'Kurnool', 'bhaskar', '9381570624'),
(10000, 'MainBranch', 'sfsfs', 'cochi', 'bhaskar', '9381570624');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `row_order` int(11) NOT NULL DEFAULT 0,
  `name` varchar(60) NOT NULL,
  `subtitle` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `web_image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `row_order`, `name`, `subtitle`, `image`, `status`, `web_image`) VALUES
(29, 1, 'Home Supplies', 'Detergent, Air Freshener , Cleaner', 'upload/images/0475-2020-12-15.png', 1, 'upload/web-category-image/1624691105.2016.png'),
(30, 4, 'Beverages', 'Cold Drinks, Soft Drinks, Sodas', 'upload/images/0166-2020-12-15.png', 1, 'upload/web-category-image/1610968503.7624.png'),
(31, 3, 'Grocery', 'Grocery', 'upload/images/6460-2020-12-15.png', 1, 'upload/web-category-image/1610968488.4186.png'),
(32, 2, 'Instant Foods', 'Noodles, Instant Mix, Papad, Masala', 'upload/images/3676-2020-12-15.png', 1, 'upload/web-category-image/1610968473.0904.png'),
(46, 5, 'cakes', 'cakes', 'upload/images/9089-2020-12-15.png', 1, 'upload/web-category-image/1610968452.9915.png');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `image` text CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(250) CHARACTER SET utf8 NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('open','closed','resolved','reopen') CHARACTER SET utf8 NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_comments`
--

CREATE TABLE `complaint_comments` (
  `id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL,
  `type` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boys`
--

CREATE TABLE `delivery_boys` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `order_note` text DEFAULT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `bonus` int(11) NOT NULL,
  `balance` double DEFAULT 0,
  `driving_license` text DEFAULT NULL,
  `national_identity_card` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `bank_account_number` text DEFAULT NULL,
  `bank_name` text DEFAULT NULL,
  `account_name` text DEFAULT NULL,
  `ifsc_code` text DEFAULT NULL,
  `other_payment_information` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `fcm_id` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_boys`
--

INSERT INTO `delivery_boys` (`id`, `name`, `mobile`, `order_note`, `password`, `address`, `bonus`, `balance`, `driving_license`, `national_identity_card`, `dob`, `bank_account_number`, `bank_name`, `account_name`, `ifsc_code`, `other_payment_information`, `status`, `date_created`, `fcm_id`) VALUES
(1, 'bhaskar', '9381570624', NULL, 'e10adc3949ba59abbe56e057f20f883e', 'fghf', 10, 0, '1628851364.5483.jpeg', '1628851364.5486.jpeg', '2021-08-12', '4564646', 'dfgdg', 'fggfhf', 'dhfg5464', 'dgfd', 1, '2021-08-13 10:42:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy_notifications`
--

CREATE TABLE `delivery_boy_notifications` (
  `id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fcm_id` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `status` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int(11) NOT NULL,
  `title` varchar(256) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales_products`
--

CREATE TABLE `flash_sales_products` (
  `id` int(11) NOT NULL,
  `flash_sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `discounted_price` float NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fund_transfers`
--

CREATE TABLE `fund_transfers` (
  `id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `type` varchar(8) NOT NULL COMMENT 'credit | debit',
  `opening_balance` double NOT NULL,
  `closing_balance` double NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(28) NOT NULL,
  `message` varchar(512) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_date` date NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `order_date` datetime NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `order_list` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `discount` varchar(6) NOT NULL,
  `total_sale` varchar(10) NOT NULL,
  `shipping_charge` varchar(100) NOT NULL,
  `payment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `extension` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sub_directory` text CHARACTER SET utf8 NOT NULL,
  `size` text CHARACTER SET utf8 NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `message` varchar(512) NOT NULL,
  `type` varchar(12) NOT NULL,
  `type_id` int(11) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) DEFAULT 0,
  `otp` int(10) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `order_note` text DEFAULT NULL,
  `total` float NOT NULL,
  `delivery_charge` float NOT NULL,
  `tax_amount` float NOT NULL DEFAULT 0,
  `tax_percentage` float NOT NULL DEFAULT 0,
  `wallet_balance` float NOT NULL,
  `discount` float NOT NULL,
  `promo_code` varchar(28) DEFAULT NULL,
  `promo_discount` float NOT NULL DEFAULT 0,
  `final_total` float DEFAULT NULL,
  `payment_method` varchar(16) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(256) NOT NULL,
  `longitude` varchar(256) NOT NULL,
  `delivery_time` varchar(128) NOT NULL,
  `status` varchar(1024) NOT NULL,
  `active_status` varchar(16) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_from` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `discounted_price` double NOT NULL,
  `tax_amount` float DEFAULT 0,
  `tax_percentage` float DEFAULT 0,
  `discount` float NOT NULL,
  `sub_total` float NOT NULL,
  `deliver_by` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `active_status` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(56) NOT NULL,
  `payment_address` varchar(1024) NOT NULL,
  `amount_requested` int(11) NOT NULL,
  `remarks` varchar(512) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `row_order` int(11) NOT NULL DEFAULT 0,
  `name` varchar(500) NOT NULL,
  `tax_id` tinyint(4) DEFAULT 0,
  `slug` varchar(120) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `indicator` tinyint(4) DEFAULT 0 COMMENT '0 - none | 1 - veg | 2 - non-veg',
  `manufacturer` varchar(512) DEFAULT NULL,
  `made_in` varchar(512) DEFAULT NULL,
  `return_status` tinyint(4) DEFAULT NULL,
  `cancelable_status` tinyint(4) DEFAULT NULL,
  `till_status` varchar(28) DEFAULT NULL,
  `image` text NOT NULL,
  `other_images` varchar(512) DEFAULT NULL,
  `size_chart` text DEFAULT NULL,
  `description` text NOT NULL,
  `shipping_delivery` text DEFAULT NULL,
  `status` int(2) DEFAULT 1,
  `ratings` float(2,1) NOT NULL DEFAULT 0.0,
  `number_of_ratings` int(11) DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `row_order`, `name`, `tax_id`, `slug`, `category_id`, `subcategory_id`, `indicator`, `manufacturer`, `made_in`, `return_status`, `cancelable_status`, `till_status`, `image`, `other_images`, `size_chart`, `description`, `shipping_delivery`, `status`, `ratings`, `number_of_ratings`, `date_added`) VALUES
(215, 7, 'Real fruit juice - Mixed Fruit', 0, 'mixed-fruit-1', 30, 0, 0, '', '', 0, 0, '', 'upload/images/3047-2019-08-03.jpg', '', NULL, '<p>Real fruit juice - Mixed Fruit</p>', '', 1, 3.0, 1, '2019-08-02 19:20:22'),
(205, 92, 'Tide Detergent', 0, 'tide-detergent-1', 29, 62, 0, '', '', 0, 0, '', 'upload/images/9832-2019-08-03.jpg', '[]', NULL, '<p>Tide Detergent Powder.</p>', '', 1, 0.0, 0, '2019-08-02 18:03:03'),
(206, 91, 'Ariel Detergent', 0, 'ariel-detergent-1', 29, 62, 0, '', '', 0, 0, '', 'upload/images/9580-2019-08-03.jpg', '', NULL, '<p>Ariel Detergent Powder</p>\r\n', '', 1, 0.0, 0, '2019-08-02 18:06:21'),
(207, 90, 'Green Apple', 0, 'green-apple-1', 31, 0, 0, '', '', 0, 0, '', 'upload/images/4192-2021-05-21.jpg', '[\"upload/other_images/1621593106.9762-400.jpg\",\"upload/other_images/1621593318.3012-568.jpg\",\"upload/other_images/1621593336.6694-708.jpg\",\"upload/other_images/1621593336.6699-251.jpg\"]', 'upload/images/5567-2021-05-21.jpg', '<p>Green Apple</p>', '', 1, 3.0, 1, '2019-08-02 18:09:50'),
(208, 88, 'Harpic bathroom cleaner lemon', 0, 'harpic-bathroom-cleaner-lemon-1', 29, 63, 0, '', '', 1, 1, 'received', 'upload/images/4414-2019-08-03.jpg', '', NULL, '<p>Harpic bathroom cleaner lemon Detergent Liquid.</p>\r\n', '', 1, 1.0, 1, '2019-08-02 18:11:47'),
(209, 89, 'Lizol disinfectant floor cleaner', 0, 'lizol-disinfectant-floor-cleaner-1', 29, 63, 0, '', '', 0, 1, 'processed', 'upload/images/2699-2019-08-03.jpg', '', NULL, '<p>Lizol disinfectant floor cleaner Liquid</p>\r\n', '', 1, 0.0, 0, '2019-08-02 18:14:09'),
(483, 2, 'A Grade Watermelon', 0, 'a-grade-watermelon', 30, 0, 0, '', '', 0, 0, '', 'upload/images/8292-2021-06-26.jpg', '[\"upload/other_images/1624692251.6764-478.jpg\"]', NULL, '<h2>Watermelon</h2>', '', 1, 3.0, 1, '2020-10-05 06:18:49'),
(482, 3, 'Thums Up Soda Soft Drink', 0, 'thums-up-soda-soft-drink-1', 30, 0, 0, '', '', 0, 0, '', 'upload/images/4118-2020-10-05.jpg', '[\"upload/other_images/1601878252.693.jpg\"]', NULL, '<p>Thums Up Soda Soft Drink</p>', '', 1, 3.0, 2, '2020-10-05 06:10:52'),
(217, 11, 'Thumbs Up', 0, 'thumbs-up-1', 30, 0, 0, '', '', 0, 0, '', 'upload/images/2117-2019-08-03.jpg', '', NULL, '<p>Thumbs Up</p>', '', 1, 3.0, 1, '2019-08-02 19:23:56'),
(218, 9, 'Coca Cola Can', 0, 'coca-cola-can', 30, 70, 0, '', '', 0, 0, '', 'upload/images/0821-2019-08-03.jpg', '', NULL, '<p>Coca Cola Can</p>\r\n', '', 1, 3.0, 1, '2019-08-02 19:25:24'),
(219, 0, 'Sprite', 0, 'sprite-1', 30, 0, 0, 'PepsiCo', 'India', 0, 0, '', 'upload/images/1450-2019-08-03.jpg', '', NULL, '<p>Sprite</p>', '', 1, 4.3, 3, '2019-08-02 19:26:25'),
(220, 36, 'Mix Vegetables  Bag', 0, 'mix-vegetables-bag-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/8962-2019-08-03.jpg', '', NULL, '<p>Mix Vegetables Bag</p>', '', 1, 0.0, 0, '2019-08-02 19:35:03'),
(222, 80, 'Fresh Carrots', 0, 'fresh-carrots-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/2136-2019-08-03.jpg', '', NULL, '<p>Fresh Carrots</p>\r\n', '', 1, 0.0, 0, '2019-08-02 19:45:26'),
(223, 33, 'Bree Brussels Sprouts', 0, 'bree-brussels-sprouts-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/0216-2019-08-03.jpg', '', NULL, '<p>Bree Brussels Sprouts</p>\r\n', '', 1, 0.0, 0, '2019-08-02 19:46:43'),
(224, 19, 'Palak', 0, 'palak-1', 31, 115, 0, '', '', 1, 1, 'shipped', 'upload/images/3012-2019-08-03.jpg', '', NULL, '<p>Palak</p>', '', 1, 3.0, 1, '2019-08-02 19:48:40'),
(228, 86, 'Grapes', 0, 'grapes-2', 31, 0, 0, '', '', 0, 0, '', 'upload/images/3522-2021-05-22.jpg', '[\"upload\\/other_images\\/1621685367.6179-336.jpg\"]', 'upload/images/2394-2021-05-22.jpg', '<p>Grapes </p>', '', 1, 5.0, 1, '2019-08-02 20:24:51'),
(229, 87, 'Ching\'s Chowmein Masala', 0, 'ching-s-chowmein-masala', 32, 73, 0, '', '', 0, 0, '', 'upload/images/0592-2019-08-03.jpg', '', NULL, '<p>Ching&#39;s Chowmein Masala</p>\r\n', '', 1, 0.0, 0, '2019-08-02 20:27:02'),
(504, 4, 'Fresh Green Peas', 1, 'fresh-green-peas-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/1238-2021-06-25.jpg', '[\"upload\\/other_images\\/1624606685.6542-715.jpg\"]', NULL, '<p>Peas</p>', '', 1, 3.0, 1, '2020-10-05 10:59:07'),
(506, 45, 'Green Okra / Lady Finger', 0, 'green-okra-lady-finger-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/9617-2020-10-05.jpg', '[\"upload/other_images/1601897231.6403.jpg\"]', NULL, '<p>Green Okra / Lady Finger</p>', '', 1, 0.0, 0, '2020-10-05 11:27:11'),
(507, 42, 'Strawberry', 0, 'strawberry-2-1', 31, 0, 0, '', '', 1, 1, 'shipped', 'upload/images/1902-2021-05-22.jpg', '[\"upload/other_images/1621684749.5648-837.jpg\"]', 'upload/images/3898-2021-05-22.jpg', '<p>Delicious taste and the best of from north and south </p>', '', 1, 5.0, 1, '2020-10-05 11:29:49'),
(508, 5, 'Tasty Strawberry', 0, 'tasty-strawberry', 30, 0, 0, '', '', 1, 0, '', 'upload/images/4786-2021-06-25.jpg', '[\"upload\\/other_images\\/1624605480.7355-680.jpg\"]', NULL, '<p>Strawberry</p>', '', 1, 3.0, 1, '2020-10-05 11:31:50'),
(238, 84, 'Nescafe Classic Coffee', 0, 'nescafe-classic-coffee', 37, 83, 0, '', '', 0, 0, '', 'upload/images/7313-2020-02-12.jpg', '[\"upload/other_images/1581494506.628.jpg\",\"upload/other_images/1581494506.6359.jpg\",\"upload/other_images/1581494506.6363.jpg\"]', NULL, '<p>This is a&nbsp;<strong>Vegetarian</strong>&nbsp;product.</p>\r\n\r\n<ul>\r\n	<li>Start your day right with the first sip of this classic that awakens your senses to new opportunities</li>\r\n	<li>Premium frothy instant coffee right at home; a must try for all coffee-lovers</li>\r\n	<li>Made using specially selected and carefully roasted beans to create a captivating coffee experience</li>\r\n	<li>Flavourful and 100% pure coffee that is perfect for any time of the day</li>\r\n	<li>Specially designed Nescaf&eacute; glass jar keeps your coffee tasting delicious until the last drop</li>\r\n	<li>Customer Care: [1800-103-1947]</li>\r\n</ul>\r\n', '', 1, 0.0, 0, '2020-02-11 19:31:46'),
(239, 85, 'BRU Gold Instant Coffee', 0, 'bru-gold-instant-coffee', 37, 83, 0, '', '', 0, 0, '', 'upload/images/9596-2020-02-12.jpg', '[\"upload/other_images/1581494741.4322.jpg\",\"upload/other_images/1581494741.4324.jpg\",\"upload/other_images/1581494741.4327.jpg\"]', NULL, '<p>This is a&nbsp;<strong>Vegetarian</strong>&nbsp;product.</p>\r\n\r\n<ul>\r\n	<li>Bru Gold Instant Coffee is 100% pure granulated coffee that offers the authentic taste of coffee in every sip</li>\r\n	<li>Blend of plantation and robusta beans carefully handpicked from the finest South Indian plantations and roasted to perfection</li>\r\n	<li>Enjoy the authentic taste of coffee in every sip</li>\r\n	<li>100% pure coffee from South Indian plantations</li>\r\n	<li>Bru Gold makes both Hot coffee &amp; Cold Coffee</li>\r\n	<li>Agglomerate Coffee Powder</li>\r\n</ul>\r\n', '', 1, 0.0, 0, '2020-02-11 19:35:41'),
(241, 83, 'BRU Green Label Coffee', 0, 'bru-green-label-coffee', 37, 83, 0, '', '', 0, 0, '', 'upload/images/9694-2020-02-12.jpg', '[\"upload/other_images/1581500688.4946.jpg\",\"upload/other_images/1581500688.503.jpg\",\"upload/other_images/1581500688.5039.jpg\"]', NULL, '<p>This is a&nbsp;<strong>Vegetarian</strong>&nbsp;product.</p>\r\n\r\n<ul>\r\n	<li>Filter coffee</li>\r\n	<li>Perfect blend of 53% coffee and 47% chicory</li>\r\n	<li>Rich and thick aromatic cup of coffee</li>\r\n	<li>Larger granules ensure that the second decoction is as good as the first</li>\r\n	<li>Nitro flush packing for best freshness</li>\r\n	<li>Green Label</li>\r\n</ul>\r\n', '', 1, 0.0, 0, '2020-02-11 21:14:48'),
(244, 68, 'Apple', 0, 'apple-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/1576-2020-02-25.jpg', '[\"upload/other_images/1582628349.4736.jpg\"]', NULL, '<p>Apple</p>\r\n', '', 1, 0.0, 0, '2020-02-24 22:29:09'),
(245, 16, 'onion', 0, 'onion-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/7530-2020-02-25.jpg', '[\"upload/other_images/1582628638.665.jpg\"]', NULL, '<p>Onions</p>\r\n', '', 1, 3.0, 1, '2020-02-24 22:33:58'),
(246, 69, 'Custard Apple', 0, 'custard-apple-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/4144-2020-02-25.jpg', '[\"upload/other_images/1582628775.245.jpg\"]', NULL, '<p>Fresh custard apples</p>\r\n', '', 1, 5.0, 1, '2020-02-24 22:36:15'),
(247, 20, 'Brinjal', 0, 'brinjal-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/6638-2020-02-25.jpg', '[\"upload/other_images/1582628943.2489.jpg\"]', NULL, '<p>Brinjal</p>\r\n', '', 1, 3.0, 1, '2020-02-24 22:39:03'),
(248, 70, 'Guava', 0, 'guava-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/6755-2020-02-25.jpg', '[\"upload/other_images/1582629215.8669.jpg\"]', NULL, '<p>Guava Red</p>\r\n', '', 1, 0.0, 0, '2020-02-24 22:43:35'),
(249, 21, 'cauliflower', 0, 'cauliflower-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/5376-2020-02-25.jpg', '[\"upload/other_images/1582629496.6211.jpg\"]', NULL, '<p>Cauliflower</p>\r\n', '', 1, 0.0, 0, '2020-02-24 22:48:16'),
(250, 71, 'Litchi', 0, 'litchi-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/7835-2020-02-25.jpg', '[\"upload/other_images/1582629650.468.jpg\"]', NULL, '<p>Fresh Litchi</p>\r\n', '', 1, 0.0, 0, '2020-02-24 22:50:50'),
(251, 23, 'Cabbage', 0, 'cabbage-2', 31, 115, 0, '', '', 0, 0, '', 'upload/images/9470-2020-02-25.jpg', '[\"upload/other_images/1582629824.1372.jpg\"]', NULL, '<p>Cabbage </p>\r\n', '', 1, 3.0, 1, '2020-02-24 22:53:44'),
(252, 72, 'Grapes', 0, 'grapes-2-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/3931-2020-02-25.jpg', '[\"upload/other_images/1582629990.3869.jpg\"]', NULL, '<p>Green Grapes</p>\r\n', '', 1, 0.0, 0, '2020-02-24 22:56:30'),
(253, 73, 'Kutch Kesar Mango', 4, 'kutch-kesar-mango', 31, 114, 0, '', '', 0, 0, '', 'upload/images/8724-2021-06-26.jpg', '[\"upload/other_images/1582630133.7799.jpeg\",\"upload/other_images/1624691972.8029-978.jpg\"]', NULL, '<p>Mango</p>', '', 1, 3.0, 1, '2020-02-24 22:58:53'),
(254, 22, 'Lemon', 0, 'lemon-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/0845-2020-02-25.jpeg', '[\"upload/other_images/1582630296.983.jpeg\"]', NULL, '<p>Fresh Lemon</p>', '', 1, 3.0, 1, '2020-02-24 23:01:36'),
(255, 24, 'Pumpkin', 0, 'pumpkin-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/2370-2020-02-25.jpg', '[\"upload/other_images/1582630540.5667.jpg\"]', NULL, '<p>Pumpkin</p>', '', 1, 3.0, 1, '2020-02-24 23:05:40'),
(256, 74, 'Carrot', 0, 'carrot-2', 31, 114, 0, '', '', 0, 0, '', 'upload/images/1462-2020-02-25.jpg', '[\"upload/other_images/1582630781.1962.jpg\"]', NULL, '<p>Carrot</p>\r\n', '', 1, 3.0, 1, '2020-02-24 23:09:41'),
(257, 75, 'cucumber', 0, 'cucumber-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/4419-2020-02-25.jpg', '[\"upload/other_images/1582630947.2106.jpg\"]', NULL, '<p>Fresh Cucumber</p>\r\n', '', 1, 0.0, 0, '2020-02-24 23:12:27'),
(258, 76, 'Orange', 0, 'orange-2', 31, 114, 0, '', '', 0, 0, '', 'upload/images/1940-2020-02-25.jpg', '[\"upload/other_images/1582631340.2307.jpg\"]', NULL, '<p>Fresh orange</p>\r\n', '', 1, 0.0, 0, '2020-02-24 23:19:00'),
(259, 25, 'Green chilli', 0, 'green-chilli-2', 31, 115, 0, '', '', 0, 0, '', 'upload/images/9445-2020-02-25.jpeg', '[\"upload/other_images/1582631618.9396.jpeg\"]', NULL, '<p>Green chilli</p>\r\n', '', 1, 3.0, 1, '2020-02-24 23:23:38'),
(260, 43, 'Dragon Fruit', 0, 'dragon-fruit-1', 31, 114, 0, '', '', 1, 1, 'shipped', 'upload/images/6285-2020-02-26.jpg', '[\"upload/other_images/1582692154.0881.jpg\"]', NULL, '<p>Dragon fruits</p>', '', 1, 0.0, 0, '2020-02-25 16:12:34'),
(261, 67, 'sweet lime', 0, 'sweet-lime-1', 31, 114, 0, '', '', 0, 1, 'shipped', 'upload/images/5846-2020-02-26.jpg', '[\"upload/other_images/1582692389.9385.jpg\"]', NULL, '<p>Fresh sweet lime</p>\r\n', '', 1, 0.0, 0, '2020-02-25 16:16:29'),
(262, 26, 'tomato', 0, 'tomato-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/3106-2020-02-26.jpg', '[\"upload/other_images/1582692568.9009.jpg\"]', NULL, '<p>Tomato</p>\r\n', '', 1, 0.0, 0, '2020-02-25 16:19:28'),
(263, 27, 'Beet', 0, 'beet-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/6035-2020-02-26.jpg', '[\"upload/other_images/1582692913.5908.jpg\"]', NULL, '<p>Beet</p>\r\n', '', 1, 0.0, 0, '2020-02-25 16:25:13'),
(264, 28, 'Muskmelon', 0, 'muskmelon-1', 31, 115, 0, '', '', 0, 1, 'processed', 'upload/images/7685-2020-02-26.jpg', '[\"upload/other_images/1582693148.579.jpg\"]', NULL, '<p>Fresh muskmelon</p>\r\n', '', 1, 0.0, 0, '2020-02-25 16:29:08'),
(265, 29, 'spinach', 0, 'spinach-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/5453-2020-02-26.jpg', '[\"upload/other_images/1582693326.5805.jpg\"]', NULL, '<p>Fresh spinach</p>\r\n', '', 1, 0.0, 0, '2020-02-25 16:32:06'),
(267, 77, 'Pomegranate', 0, 'pomegranate-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/8314-2020-02-26.jpg', '[\"upload/other_images/1582693720.4152.jpg\"]', NULL, '<p>Pomegranate</p>\r\n', '', 1, 3.0, 1, '2020-02-25 16:38:40'),
(268, 30, 'Potato', 0, 'potato-2', 31, 115, 0, '', '', 0, 0, '', 'upload/images/9137-2020-02-26.jpg', '[\"upload/other_images/1582693882.3193.jpg\"]', NULL, '<p>potato</p>\r\n', '', 1, 0.0, 0, '2020-02-25 16:41:22'),
(269, 31, 'Fenugreek - મેથી', 0, 'n-a', 31, 115, 0, '', '', 0, 0, '', 'upload/images/2113-2020-02-26.jpg', '[\"upload/other_images/1582694148.9493.jpg\"]', NULL, '<p>Fenugreek leaves</p>', '', 1, 0.0, 0, '2020-02-25 16:45:48'),
(270, 78, 'Strawberry', 0, 'strawberry-2', 31, 114, 0, '', '', 0, 0, '', 'upload/images/4402-2020-02-26.jpg', '[\"upload/other_images/1582694409.3641.jpg\"]', NULL, '<p>Strawberries</p>\r\n', '', 1, 3.0, 1, '2020-02-25 16:50:09'),
(271, 17, 'Garlic', 0, 'garlic-1', 31, 115, 0, '', '', 0, 1, 'shipped', 'upload/images/6676-2020-02-26.jpg', '[\"upload/other_images/1582695148.0904.jpg\"]', NULL, '<p>garlic</p>\r\n', '', 1, 3.0, 1, '2020-02-25 17:02:28'),
(272, 32, 'Ginger', 0, 'ginger-1', 31, 115, 0, '', '', 0, 0, '', 'upload/images/8251-2020-02-26.jpg', '[\"upload/other_images/1582695299.3519.jpg\"]', NULL, '<p>ginger</p>\r\n', '', 1, 0.0, 0, '2020-02-25 17:04:59'),
(273, 81, 'watermelon', 0, 'watermelon-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/5362-2020-02-26.jpg', '[\"upload/other_images/1582695507.297.jpg\"]', NULL, '<p>Fresh watermelon</p>\r\n', '', 1, 0.0, 0, '2020-02-25 17:08:27'),
(274, 79, 'Banana', 0, 'banana-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/6534-2020-02-26.jpg', '[\"upload/other_images/1582695709.0175.jpg\"]', NULL, '<p>Banana</p>\r\n', '', 1, 5.0, 1, '2020-02-25 17:11:49'),
(275, 82, 'Organic Carrot', 0, 'organic-carrot-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/6715-2021-06-25.jpg', '[\"upload/other_images/1624617897.5943-707.jpg\",\"upload/other_images/1624623338.9404-855.jpg\"]', NULL, '<p>Carrot</p>', '', 1, 3.0, 1, '2020-02-25 17:15:31'),
(276, 18, 'Peas', 0, 'peas-1', 31, 115, 0, '', '', 1, 1, 'shipped', 'upload/images/9568-2020-02-26.jpg', '[\"upload/other_images/1582702301.3013.jpg\"]', NULL, '<p>Green peas</p>', '', 1, 0.0, 0, '2020-02-25 19:01:41'),
(277, 10, 'MinuteMaid Juice', 0, 'minutemaid-juice-1', 30, 0, 0, '', '', 1, 1, 'processed', 'upload/images/2147-2020-02-26.jpg', '[\"upload/other_images/1582710764.0891.jpg\"]', NULL, '<p>MinuteMaid Juice</p>', '', 1, 0.0, 0, '2020-02-25 21:22:44'),
(291, 15, 'Healthy Peach', 0, 'healthy-peach', 31, 115, 0, '', '', 0, 1, 'shipped', 'upload/images/8793-2021-06-25.jpg', '[\"upload\\/other_images\\/1624607546.0013-133.jpg\"]', NULL, '<p>Peach</p>', '', 1, 4.0, 2, '2020-04-15 15:30:12'),
(311, 39, 'Hakka Noodles - Full & Half', 0, 'full-half-1', 46, 117, 0, '', '', 1, 1, 'shipped', 'upload/images/9685-2020-06-06.jpg', '', NULL, '<p>Veg Hakka Noodles - Available in Full Plate &amp; Half Plate</p>', '', 1, 5.0, 2, '2020-06-06 07:34:46'),
(312, 40, 'Fresh Pomegranate', 0, 'fresh-pomegranate', 46, 0, 0, '', '', 1, 1, 'received', 'upload/images/4992-2021-06-25.jpg', '[\"upload\\/other_images\\/1624606258.7087-644.jpg\"]', NULL, '<p>Pomegranate</p>', '', 1, 3.0, 1, '2020-06-06 07:39:57'),
(500, 6, 'Juicy Mango', 0, 'juicy-mango', 31, 114, 0, '', '', 0, 0, '', 'upload/images/0107-2021-06-25.jpg', '[\"upload\\/other_images\\/1624607080.9368-945.jpg\"]', NULL, '<p>Mango</p>', '', 1, 5.0, 1, '2020-10-05 10:39:54'),
(469, 8, 'Indian Cluster Bean (Guar Bean) ', 0, 'indian-cluster-bean-guar-bean', 31, 115, 0, 'india', '', 0, 0, '', 'upload/images/6540-2020-10-05.jpg', '[\"upload/other_images/1601874399.6953.jpg\"]', NULL, '<p>Indian Cluster Bean (Guar Bean, Gum Bean)It is also known as Gavar, Guwar or Guvar bean.</p>\r\n', '', 1, 3.0, 1, '2020-10-05 05:06:39'),
(468, 1, 'Coca-Cola', 0, 'cola-1', 30, 0, 0, 'india', '', 0, 0, '', 'upload/images/9632-2020-10-05.jpg', '[\"upload/other_images/1601873699.7839.jpg\",\"upload/other_images/1618575485.0493-424.jpg\"]', NULL, '<p>Original taste in Coca-cola</p>', '', 1, 3.0, 1, '2020-10-05 04:54:59'),
(465, 12, 'Coriander , dhania', 0, 'coriander-dhania-1', 31, 115, 0, 'india', 'india', 0, 0, '', 'upload/images/0098-2020-10-03.jpg', '[\"upload/other_images/1601728256.9962.jpg\"]', NULL, '<ul>\r\n	<li>Coriander can be stuffed into parathas , kachoris and Rotis to make them more flavorful.</li>\r\n	<li>Fresh leaves are used to flavor rasam and other south indian dishes like curd and Sambhar Rice.</li>\r\n</ul>', '', 1, 3.0, 1, '2020-10-03 12:30:56'),
(464, 13, 'Fresh Papaya', 0, 'fresh-papaya-1', 31, 115, 0, 'india', 'india', 0, 0, '', 'upload/images/0977-2020-10-03.jpg', '[\"upload/other_images/1601727267.0887.jpg\"]', NULL, '<p>It can be added to salads, smoothies, and other dishes.</p>', '', 1, 3.0, 1, '2020-10-03 12:14:27'),
(463, 14, 'Cabbage', 0, 'cabbage-2-1', 31, 115, 0, 'india', 'india', 0, 0, '', 'upload/images/6582-2020-10-03.jpg', '[\"upload/other_images/1601726646.1567.jpg\"]', NULL, '<p>Cabbage also contains small amounts of other micronutrients, including vitamin A, iron and riboflavin.</p>', '', 1, 3.0, 1, '2020-10-03 12:04:06'),
(462, 44, 'Ariel matic liquid detergent', 0, 'ariel-matic-liquid-detergent-1', 29, 63, 0, 'india', '', 0, 0, '', 'upload/images/9334-2020-10-03.jpg', '[\"upload/other_images/1601725842.163.jpg\"]', NULL, '<p>New Ariel Matic Liquid Detergent removes tough stains, and protects colors in just 1 wash</p>', '', 1, 0.0, 0, '2020-10-03 11:50:42'),
(491, 46, 'Lizol Disinfectant Floor Cleaner, Lavender', 0, 'lizol-disinfectant-floor-cleaner-lavender', 29, 63, 0, '', '', 0, 0, '', 'upload/images/3920-2020-10-05.jpg', '[\"upload/other_images/1601884433.315.jpg\"]', NULL, '<h1>Lizol Disinfectant Floor Cleaner, Lavender</h1>\r\n', '', 1, 0.0, 0, '2020-10-05 07:53:53'),
(494, 47, 'Green Cucumbers', 0, 'green-cucumbers-1', 31, 114, 0, '', '', 0, 0, '', 'upload/images/8728-2020-10-05.jpg', '', NULL, '<p>Green Cucumbers</p>', '', 1, 0.0, 0, '2020-10-05 08:23:49'),
(553, 48, 'Rin soap', 0, 'rin-soap-1', 29, 62, 0, '', '', 0, 0, '', 'upload/images/7470-2020-10-06.jpg', '[\"upload/other_images/1601964813.3223.jpg\"]', NULL, '<p>Rin soap</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:13:33'),
(554, 49, 'Wheel - Soap', 0, 'wheel-soap', 29, 62, 0, '', '', 0, 0, '', 'upload/images/4938-2020-10-06.jpg', '[]', NULL, '<p>Wheel - Soap</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:14:24'),
(555, 50, 'Fena  - Soap', 0, 'fena-soap', 29, 62, 0, '', '', 0, 0, '', 'upload/images/3625-2020-10-06.jpg', '[\"upload/other_images/1601964910.5619.jpg\"]', NULL, '<p>Fena  - Soap</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:15:10'),
(556, 51, 'Saras - Detergent Soap', 0, 'saras-detergent-soap', 29, 62, 0, '', '', 0, 0, '', 'upload/images/7608-2020-10-06.jpg', '[\"upload/other_images/1601964958.7933.jpg\"]', NULL, '<p>Saras - Detergent Soap</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:15:58'),
(557, 52, 'rhubarb', 0, 'rhubarb-1', 31, 0, 0, '', '', 0, 0, '', 'upload/images/9358-2021-05-22.jpg', '[\"upload/other_images/1621685164.7168-403.jpg\"]', 'upload/images/7294-2021-05-22.jpg', '<p>rhubarb</p>', '', 1, 0.0, 0, '2020-10-06 06:16:46'),
(558, 53, 'Good News - Detergent Powder', 0, 'good-news-detergent-powder', 29, 62, 0, '', '', 0, 0, '', 'upload/images/4542-2020-10-06.jpg', '[\"upload/other_images/1601965065.8949.jpg\"]', NULL, '<p>Good News - Detergent Powder</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:17:45'),
(559, 54, 'Bananas', 0, 'bananas-1', 31, 0, 0, '', '', 0, 0, '', 'upload/images/3352-2021-05-22.jpg', '[\"upload/other_images/1621684003.5603-351.jpg\"]', 'upload/images/8077-2021-05-22.jpg', '<p>Eat Fresh and Delicious taste of bananas</p>', '', 1, 4.0, 2, '2020-10-06 06:18:40'),
(560, 55, 'Dove Face Shinging Soap', 0, 'dove-face-shinging-soap', 29, 62, 0, '', '', 0, 0, '', 'upload/images/2390-2020-10-06.jpg', '[\"upload/other_images/1601965190.9225.jpg\"]', NULL, '<p>Dove Face Shinging Soap</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:19:50'),
(561, 56, 'Avocado', 0, 'avocado', 29, 0, 1, '', '', 0, 0, '', 'upload/images/6401-2021-06-25.jpg', '[\"upload/other_images/1624605043.6269-517.jpg\"]', NULL, '<p>Organic Avodao</p>', '', 1, 2.5, 2, '2020-10-06 06:20:42'),
(562, 57, 'Kiwi', 0, 'kiwi-1', 31, 0, 0, '', '', 0, 0, '', 'upload/images/0065-2021-05-22.jpg', '[\"upload/other_images/1621684970.0868-316.jpg\"]', 'upload/images/5106-2021-05-22.jpg', '<p>Kiwi is best for health and good for blood</p>', '', 1, 0.0, 0, '2020-10-06 06:21:56'),
(563, 58, 'White Fresh Detergent Powder', 0, 'white-fresh-detergent-powder', 29, 62, 0, '', '', 0, 0, '', 'upload/images/6724-2020-10-06.jpg', '[\"upload/other_images/1601965373.7805.jpg\"]', NULL, '<p>White Fresh Detergent Powder</p>\r\n', '', 1, 3.0, 1, '2020-10-06 06:22:53'),
(564, 59, 'Purity Sensitive -Laundry Liquid', 0, 'laundry-liquid', 29, 63, 0, '', '', 0, 0, '', 'upload/images/2866-2020-10-06.jpg', '[\"upload/other_images/1601965498.6375.jpg\"]', NULL, '<p>Purity Sensitive -Laundry Liquid</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:24:58'),
(565, 60, 'Safe Wash -Liquid Deteregent', 0, 'safe-wash-liquid-deteregent', 29, 63, 0, '', '', 0, 0, '', 'upload/images/6696-2020-10-06.jpeg', '[\"upload/other_images/1601965581.7001.jpeg\"]', NULL, '<p>Safe Wash -Liquid Deteregent</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:26:21'),
(566, 61, 'Surf Excel Matic Liquid', 0, 'surf-excel-matic-liquid', 29, 63, 0, '', '', 0, 0, '', 'upload/images/1318-2020-10-06.jpg', '[\"upload/other_images/1601965651.5887.jpg\"]', NULL, '<p>Surf Excel Matic Liquid</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:27:31'),
(567, 62, 'Safe Wash -Liquid ', 0, 'safe-wash-liquid-1', 29, 63, 0, '', '', 0, 0, '', 'upload/images/1125-2020-10-06.jpg', '[\"upload/other_images/1601965748.8373.jpg\"]', NULL, '<p>Safe Wash -Liquid </p>\r\n', '', 1, 3.0, 2, '2020-10-06 06:29:08'),
(569, 63, 'Mango', 0, 'mango-2', 31, 0, 0, '', '', 0, 0, '', 'upload/images/5915-2021-05-22.jpg', '[\"upload/other_images/1621684394.9114-763.jpg\"]', 'upload/images/0009-2021-05-22.jpg', '<p>Tasty and Juicy Mango</p>', '', 1, 0.0, 0, '2020-10-06 06:31:38'),
(570, 64, 'Gain-Detergent Liquid', 0, 'gain-detergent-liquid', 29, 63, 0, '', '', 0, 0, '', 'upload/images/4379-2020-10-06.jpg', '[\"upload/other_images/1601965949.6832.jpg\"]', NULL, '<p>Gain-Detergent Liquid</p>\r\n', '', 1, 0.0, 0, '2020-10-06 06:32:29'),
(571, 65, 'Laundry-Detergent Liquid', 0, 'laundry-detergent-liquid', 29, 63, 0, '', '', 0, 0, '', 'upload/images/6957-2020-10-06.jpg', '[\"upload/other_images/1601966008.0999.jpg\"]', NULL, '<p>Laundry-Detergent Liquid</p>\r\n', '', 0, 0.0, 0, '2020-10-06 06:33:28'),
(572, 66, 'Apple', 0, 'apple-1-1', 31, 0, 0, '', '', 0, 0, '', 'upload/images/3461-2021-05-21.', '[\"upload/other_images/1621686325.2585-643.jpg\"]', 'upload/images/0618-2021-05-22.jpg', '<p>Apple</p>', '', 0, 0.0, 0, '2020-10-06 06:34:08'),
(581, 34, 'Rice-Idli', 0, 'idli-1', 30, 0, 0, '', '', 0, 0, '', 'upload/images/5483-2020-10-06.jpg', '', NULL, '<p>Rice-Idli With Sambhar</p>', '', 0, 0.0, 0, '2020-10-06 07:42:46'),
(582, 35, 'Fresh Coconut', 0, 'fresh-coconut', 31, 0, 0, '', '', 0, 0, '', 'upload/images/0676-2021-06-25.png', '[\"upload/other_images/1621684103.7984-569.jpg\",\"upload/other_images/1624605903.8129-230.png\"]', 'upload/images/9811-2021-05-22.jpg', '<p>Coconut</p>', '', 1, 3.0, 1, '2020-10-06 07:44:15'),
(594, 37, 'Organic Papaya', 0, 'organic-papaya', 30, 0, 0, '', '', 1, 1, 'shipped', 'upload/images/8248-2021-06-25.jpg', '[\"upload\\/other_images\\/1624607866.5228-651.jpg\"]', NULL, '<p>Papaya</p>', '', 1, 3.0, 1, '2020-10-06 07:56:10'),
(597, 38, 'Red Juicy Mango', 4, 'red-juicy-mango-1', 31, 0, 1, 'Meggie', 'India', 1, 1, 'received', 'upload/images/3414-2021-06-25.jpg', '[\"upload/other_images/1624602239.5599-338.jpg\"]', 'upload/images/7842-2021-06-25.jpg', '<p>Red Mango</p>', '<p>re</p>', 1, 3.0, 1, '2020-10-06 07:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_ads`
--

CREATE TABLE `product_ads` (
  `id` int(11) NOT NULL,
  `ad1` text CHARACTER SET utf8 DEFAULT NULL,
  `ad2` text CHARACTER SET utf8 DEFAULT NULL,
  `ad3` text CHARACTER SET utf8 DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text CHARACTER SET utf8 NOT NULL,
  `images` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `measurement` float NOT NULL,
  `measurement_unit_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `discounted_price` float NOT NULL,
  `serve_for` varchar(16) NOT NULL,
  `stock` float NOT NULL,
  `stock_unit_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_variant`
--

INSERT INTO `product_variant` (`id`, `product_id`, `type`, `measurement`, `measurement_unit_id`, `price`, `discounted_price`, `serve_for`, `stock`, `stock_unit_id`) VALUES
(56, 208, 'packet', 500, 4, 75, 60, 'Available', 99999, 5),
(55, 207, 'packet', 250, 4, 35, 30, 'Sold Out', 99894, 5),
(54, 207, 'packet', 500, 4, 72, 67, 'Sold Out', 99981, 5),
(53, 206, 'packet', 500, 2, 50, 45, 'Available', 99938, 5),
(52, 206, 'packet', 1, 1, 100, 90, 'Available', 100000, 5),
(49, 205, 'packet', 2, 1, 182, 172, 'Available', 99994, 5),
(165, 291, 'loose', 250, 2, 40, 35, 'Available', 99993.8, 1),
(164, 205, 'packet', 1, 1, 100, 0, 'Available', 99995, 1),
(57, 209, 'packet', 2, 3, 270, 260, 'Available', 99996, 5),
(59, 210, 'packet', 500, 2, 500.2, 0, 'Available', 100000, 5),
(60, 211, 'packet', 1, 5, 275, 260, 'Available', 100000, 5),
(61, 212, 'packet', 100, 4, 300.25, 0, 'Available', 100000, 5),
(62, 213, 'packet', 1, 5, 400, 380, 'Available', 100000, 5),
(63, 214, 'packet', 400, 2, 140, 130, 'Available', 100000, 5),
(64, 215, 'packet', 3, 3, 250, 240, 'Available', 99998, 5),
(491, 504, 'loose', 2, 1, 39, 0, 'Available', 99942, 1),
(68, 217, 'packet', 2, 3, 80, 75, 'Available', 99999, 5),
(69, 218, 'packet', 300, 4, 30, 25, 'Available', 99999, 5),
(70, 219, 'packet', 2, 3, 80, 75, 'Available', 99983, 5),
(71, 220, 'packet', 3, 1, 125, 120, 'Available', 99999, 5),
(72, 220, 'packet', 1, 1, 75, 70, 'Available', 100000, 5),
(73, 220, 'packet', 5, 1, 300, 290, 'Available', 100000, 5),
(500, 683, 'packet', 1, 6, 5500, 5000, 'Available', 100000, 6),
(75, 222, 'loose', 1, 1, 30, 25, 'Available', 100000, 1),
(76, 223, 'loose', 1, 1, 35, 30, 'Available', 100000, 1),
(77, 224, 'loose', 500, 2, 50, 45, 'Available', 100000, 1),
(78, 224, 'loose', 1, 1, 100, 90, 'Available', 100000, 1),
(79, 224, 'loose', 2, 1, 150, 140, 'Available', 100000, 1),
(80, 225, 'packet', 50, 2, 35, 30, 'Available', 100000, 5),
(81, 226, 'packet', 100, 2, 48, 45, 'Available', 100000, 5),
(82, 227, 'packet', 70, 2, 12, 10, 'Available', 100000, 5),
(86, 228, 'packet', 150, 2, 125, 20, 'Available', 99967, 5),
(87, 229, 'packet', 20, 2, 10, 8, 'Available', 100000, 5),
(88, 230, 'packet', 70, 2, 12, 10, 'Available', 100000, 5),
(100, 230, 'packet', 250, 2, 20, 19, 'Available', 100000, 5),
(102, 238, 'packet', 200, 2, 540, 100, 'Available', 100000, 2),
(103, 239, 'packet', 100, 2, 275, 25, 'Available', 100000, 2),
(105, 241, 'packet', 500, 2, 170, 150, 'Available', 100000, 5),
(106, 242, 'packet', 1, 1, 200, 180, 'Available', 100000, 5),
(107, 243, 'packet', 1, 1, 225, 0, 'Available', 100000, 5),
(108, 244, 'loose', 1, 1, 25, 50, 'Available', 99998, 1),
(109, 245, 'loose', 1, 1, 60, 60, 'Available', 99995, 1),
(110, 246, 'loose', 1, 1, 80, 70, 'Available', 99998, 1),
(111, 247, 'packet', 1, 1, 65, 60, 'Available', 100000, 1),
(112, 248, 'loose', 1, 1, 40, 35, 'Available', 100000, 1),
(113, 249, 'loose', 1, 1, 35, 30, 'Available', 99963, 1),
(114, 250, 'packet', 1, 1, 260, 75, 'Available', 100000, 1),
(115, 251, 'loose', 1, 1, 40, 25, 'Available', 99999, 1),
(116, 252, 'loose', 1, 1, 75, 35, 'Available', 99991, 1),
(117, 253, 'loose', 1, 1, 190, 140, 'Available', 99981, 1),
(118, 254, 'loose', 1, 1, 59, 20, 'Available', 99992, 1),
(119, 255, 'loose', 1, 1, 48, 40, 'Available', 99991, 1),
(120, 256, 'loose', 1, 1, 50, 20, 'Available', 100000, 1),
(121, 257, 'loose', 1, 1, 24, 19, 'Available', 100000, 1),
(122, 258, 'loose', 1, 1, 100, 65, 'Available', 99999, 1),
(123, 259, 'loose', 1, 1, 30, 14, 'Available', 99992, 1),
(124, 260, 'loose', 1, 1, 300, 195, 'Available', 99995, 1),
(125, 261, 'loose', 1, 1, 180, 120, 'Available', 99990, 1),
(126, 262, 'loose', 1, 1, 30, 25, 'Available', 99998, 1),
(127, 263, 'loose', 1, 1, 35, 29, 'Available', 100000, 1),
(128, 264, 'loose', 1, 1, 240, 150, 'Available', 99994, 1),
(129, 265, 'loose', 1, 1, 35, 20, 'Available', 100000, 1),
(131, 267, 'loose', 1, 1, 80, 75, 'Available', 99994, 1),
(132, 268, 'loose', 1, 1, 15, 10, 'Available', 99999, 1),
(133, 269, 'loose', 1, 1, 15, 12, 'Available', 100000, 1),
(134, 270, 'loose', 1, 1, 390, 299, 'Available', 99979, 1),
(135, 271, 'loose', 1, 1, 90, 75, 'Available', 100001, 1),
(136, 272, 'loose', 1, 1, 65, 45, 'Available', 99997, 1),
(137, 273, 'loose', 1, 1, 50, 40, 'Available', 100000, 1),
(138, 274, 'loose', 1, 1, 25, 19, 'Available', 100000, 1),
(139, 275, 'loose', 1, 1, 65, 60, 'Available', 99999, 1),
(140, 276, 'loose', 1, 1, 70, 65, 'Available', 99999, 1),
(141, 277, 'packet', 400, 4, 99, 55, 'Available', 99987, 3),
(142, 278, 'packet', 160, 2, 50, 45, 'Available', 100000, 5),
(501, 504, 'loose', 3, 1, 45, 0, 'Available', 99952, 1),
(146, 281, 'packet', 75, 2, 18, 15, 'Available', 100000, 5),
(147, 281, 'packet', 66, 2, 15, 12, 'Available', 100000, 5),
(148, 282, 'packet', 375, 2, 95, 88, 'Available', 100000, 5),
(169, 269, 'loose', 500, 2, 67, 76, 'Available', 100000, 1),
(168, 269, 'loose', 250, 2, 10, 1, 'Available', 100000, 1),
(162, 290, 'packet', 4, 1, 56, 0, 'Available', 100000, 1),
(362, 494, 'loose', 1, 1, 40, 34, 'Available', 99999, 1),
(361, 494, 'loose', 500, 2, 20, 18, 'Available', 99999, 1),
(477, 464, 'loose', 1, 1, 40, 34, 'Available', 99996, 1),
(377, 509, 'packet', 1, 5, 360, 345, 'Available', 100000, 5),
(175, 295, 'packet', 1, 1, 100, 0, 'Available', 100000, 1),
(176, 296, 'loose', 500, 2, 20, 0, 'Available', 100000, 1),
(177, 297, 'packet', 250, 2, 50, 0, 'Available', 100000, 1),
(178, 298, 'packet', 250, 2, 50, 0, 'Available', 100000, 1),
(179, 298, 'packet', 125, 2, 25, 0, 'Available', 100000, 1),
(180, 299, 'packet', 250, 2, 50, 0, 'Available', 100000, 5),
(181, 300, 'packet', 250, 2, 50, 45, 'Available', 100000, 5),
(182, 301, 'packet', 250, 4, 100, 90, 'Available', 100000, 5),
(183, 302, 'packet', 250, 4, 125, 120, 'Available', 100000, 5),
(184, 303, 'packet', 200, 4, 50, 0, 'Available', 100000, 1),
(185, 303, 'packet', 100, 4, 25, 0, 'Available', 100000, 1),
(186, 304, 'packet', 250, 4, 100, 0, 'Available', 100000, 5),
(187, 305, 'packet', 250, 4, 100, 0, 'Available', 100000, 5),
(188, 306, 'packet', 250, 4, 150, 140, 'Available', 100000, 5),
(191, 308, 'packet', 1, 6, 75, 0, 'Available', 100000, 6),
(192, 309, 'packet', 1, 6, 95, 85, 'Available', 100000, 6),
(193, 310, 'packet', 2, 6, 40, 35, 'Available', 100000, 6),
(194, 311, 'packet', 500, 2, 80, 0, 'Available', 99994, 6),
(195, 311, 'packet', 250, 2, 45, 0, 'Available', 100000, 6),
(196, 312, 'packet', 1, 6, 80, 0, 'Sold Out', 6, 6),
(197, 313, 'packet', 1, 6, 125, 0, 'Available', 100000, 6),
(198, 314, 'packet', 1, 6, 45.5, 40.5, 'Available', 100000, 6),
(287, 383, 'packet', 1, 5, 1000.25, 800, 'Available', 100000, 5),
(291, 378, 'packet', 1, 1, 500, 490, 'Available', 100000, 5),
(311, 460, 'packet', 20, 2, 30, 25, 'Available', 100000, 5),
(305, 458, 'packet', 100, 4, 85, 80, 'Available', 100000, 4),
(357, 491, 'packet', 975, 4, 180, 178, 'Available', 99973, 5),
(350, 486, 'packet', 500, 4, 360, 324, 'Available', 100000, 5),
(349, 486, 'packet', 200, 4, 175, 164, 'Available', 100000, 5),
(348, 486, 'packet', 100, 4, 90, 85, 'Available', 100000, 5),
(347, 485, 'packet', 1, 5, 650, 635, 'Available', 100000, 5),
(346, 484, 'packet', 300, 2, 200, 198, 'Available', 100000, 5),
(312, 461, 'packet', 100, 4, 80, 77, 'Available', 100000, 5),
(313, 461, 'packet', 200, 4, 160, 150, 'Available', 100000, 5),
(314, 461, 'packet', 400, 4, 300, 270, 'Available', 100000, 5),
(315, 462, 'packet', 750, 4, 250, 240, 'Available', 99980, 5),
(316, 462, 'packet', 2, 3, 408, 0, 'Available', 99989, 5),
(317, 463, 'loose', 1, 1, 35, 30, 'Available', 99996, 1),
(318, 463, 'loose', 3, 1, 105, 95, 'Available', 99985, 1),
(320, 464, 'loose', 1.5, 1, 50, 40, 'Available', 99995.5, 1),
(322, 465, 'loose', 10, 2, 15, 11, 'Available', 99999.9, 1),
(495, 468, 'packet', 700, 4, 65, 60, 'Available', 99998, 4),
(326, 468, 'packet', 300, 4, 38, 35, 'Available', 99997, 4),
(327, 469, 'loose', 1, 1, 40, 34, 'Available', 99976, 1),
(370, 502, 'packet', 1, 6, 250, 223, 'Available', 100000, 6),
(368, 500, 'loose', 1, 1, 35, 0, 'Available', 99984, 1),
(374, 506, 'loose', 1, 1, 20, 18, 'Available', 99839, 1),
(335, 474, 'packet', 1, 5, 470, 376, 'Available', 100000, 5),
(375, 507, 'packet', 1, 5, 197, 180, 'Available', 99938, 5),
(339, 477, 'packet', 400, 2, 176, 168, 'Available', 100000, 5),
(341, 479, 'packet', 1, 5, 5, 0, 'Available', 100000, 5),
(342, 480, 'packet', 1, 5, 25, 0, 'Available', 100000, 5),
(344, 482, 'packet', 1.25, 3, 65, 60, 'Available', 99958, 5),
(345, 483, 'loose', 250, 2, 15, 0, 'Available', 99988.5, 5),
(376, 508, 'packet', 1, 5, 350, 325, 'Available', 99932, 5),
(492, 228, 'packet', 200, 2, 130, 25, 'Available', 99993, 5),
(493, 219, 'packet', 3, 3, 100, 90, 'Available', 99985, 5),
(363, 495, 'packet', 200, 4, 120, 100, 'Available', 100000, 5),
(378, 510, 'packet', 1, 5, 450, 435, 'Available', 100000, 5),
(379, 511, 'packet', 1, 5, 450, 435, 'Available', 100000, 5),
(380, 512, 'packet', 1, 5, 570, 550, 'Available', 100000, 5),
(381, 513, 'packet', 1, 5, 553, 543, 'Available', 100000, 5),
(382, 514, 'packet', 1, 5, 500, 480, 'Available', 100000, 5),
(383, 515, 'packet', 1, 5, 250, 220, 'Available', 100000, 5),
(384, 516, 'packet', 1, 6, 120, 115, 'Available', 100000, 6),
(385, 517, 'packet', 1, 6, 310, 290, 'Available', 100000, 6),
(386, 518, 'packet', 1, 6, 220, 200, 'Available', 100000, 6),
(387, 519, 'packet', 1, 6, 120, 90, 'Available', 100000, 6),
(388, 520, 'packet', 1, 5, 780, 750, 'Available', 100000, 5),
(389, 521, 'packet', 1, 5, 1050, 1000, 'Available', 100000, 5),
(390, 522, 'packet', 1, 5, 590, 540, 'Available', 100000, 5),
(391, 523, 'packet', 1, 5, 620, 600, 'Available', 100000, 5),
(392, 524, 'packet', 1, 5, 700, 650, 'Available', 100000, 5),
(393, 525, 'packet', 1, 5, 800, 760, 'Available', 100000, 5),
(394, 526, 'packet', 1, 5, 945, 800, 'Available', 100000, 5),
(395, 527, 'packet', 1, 5, 780, 735, 'Available', 100000, 5),
(396, 528, 'packet', 1, 5, 780, 755, 'Available', 100000, 5),
(397, 529, 'packet', 1, 6, 250, 222, 'Available', 100000, 6),
(398, 530, 'packet', 1, 6, 120, 95, 'Available', 100000, 6),
(399, 531, 'packet', 1, 6, 250, 200, 'Available', 100000, 6),
(400, 532, 'packet', 1, 6, 170, 150, 'Available', 100000, 6),
(401, 533, 'packet', 1, 6, 90, 65, 'Available', 100000, 6),
(402, 534, 'packet', 1, 6, 120, 90, 'Available', 100000, 6),
(403, 535, 'packet', 1, 6, 250, 220, 'Available', 100000, 6),
(404, 536, 'packet', 1, 5, 780, 750, 'Available', 100000, 5),
(405, 537, 'packet', 1, 5, 980, 950, 'Available', 100000, 5),
(406, 538, 'packet', 1, 5, 140, 130, 'Available', 100000, 5),
(407, 539, 'packet', 1, 6, 268, 254, 'Available', 100000, 6),
(408, 540, 'packet', 1, 6, 190, 145, 'Available', 100000, 6),
(409, 541, 'packet', 1, 5, 1090, 1054, 'Available', 100000, 5),
(410, 542, 'packet', 1, 5, 1090, 1054, 'Available', 100000, 5),
(411, 543, 'packet', 1, 6, 240, 220, 'Available', 100000, 6),
(412, 544, 'packet', 1, 6, 380, 322, 'Available', 100000, 6),
(413, 545, 'packet', 1, 6, 320, 298, 'Available', 100000, 6),
(414, 546, 'packet', 1, 6, 120, 80, 'Available', 100000, 6),
(415, 547, 'packet', 1, 6, 100, 75, 'Available', 100000, 6),
(416, 548, 'packet', 1, 6, 165, 160, 'Available', 100000, 6),
(417, 549, 'packet', 1, 6, 120, 115, 'Available', 100000, 6),
(418, 550, 'packet', 1, 6, 250, 220, 'Available', 100000, 6),
(419, 551, 'packet', 1, 6, 265, 245, 'Available', 100000, 6),
(420, 552, 'packet', 1, 6, 360, 354, 'Available', 100000, 6),
(421, 553, 'packet', 1, 6, 12, 10, 'Available', 99955, 6),
(422, 554, 'packet', 1, 6, 12, 9, 'Available', 99999, 6),
(423, 555, 'packet', 1, 6, 15, 13, 'Available', 99995, 6),
(424, 556, 'packet', 1, 6, 22, 20, 'Available', 99998, 6),
(425, 557, 'packet', 1, 6, 100, 50, 'Available', 99988, 6),
(426, 558, 'packet', 1, 5, 250, 220, 'Available', 99997, 5),
(427, 559, 'packet', 1, 5, 230, 200, 'Available', 99968, 5),
(428, 560, 'packet', 1, 6, 35, 24, 'Available', 99997, 6),
(429, 561, 'packet', 1, 6, 45, 20, 'Available', 99902, 6),
(430, 562, 'packet', 1, 6, 160, 45, 'Available', 100000, 6),
(431, 563, 'packet', 1, 5, 450, 400, 'Available', 99995, 5),
(432, 564, 'packet', 1, 6, 750, 700, 'Available', 99994, 6),
(433, 565, 'packet', 1, 6, 450, 435, 'Available', 99986, 6),
(434, 566, 'packet', 1, 6, 750, 480, 'Available', 99995, 6),
(435, 567, 'packet', 1, 6, 450, 427, 'Available', 99992, 6),
(494, 468, 'packet', 500, 4, 50, 45, 'Available', 99998, 4),
(437, 569, 'packet', 1, 6, 250, 40, 'Available', 99979, 6),
(438, 570, 'packet', 1, 6, 780, 680, 'Available', 99995, 6),
(439, 571, 'packet', 1, 6, 980, 950, 'Available', 100000, 6),
(440, 572, 'packet', 1, 6, 598, 524, 'Available', 100000, 6),
(441, 573, 'packet', 1, 6, 55, 45, 'Available', 100000, 6),
(442, 574, 'packet', 1, 6, 12, 10, 'Available', 100000, 6),
(443, 575, 'packet', 1, 6, 30, 23, 'Available', 100000, 6),
(444, 576, 'packet', 1, 6, 450, 355, 'Available', 100000, 6),
(445, 577, 'packet', 6, 6, 90, 85, 'Available', 100000, 6),
(446, 578, 'packet', 1, 6, 120, 100, 'Available', 100000, 6),
(447, 579, 'packet', 1, 6, 459, 445, 'Available', 100000, 6),
(448, 580, 'packet', 1, 6, 479, 450, 'Available', 100000, 6),
(449, 581, 'packet', 1, 6, 450, 335, 'Available', 100000, 6),
(450, 582, 'packet', 1, 6, 150, 100, 'Available', 99964, 6),
(451, 583, 'packet', 1, 6, 462, 400, 'Available', 100000, 6),
(452, 584, 'packet', 1, 6, 480, 450, 'Available', 100000, 6),
(453, 585, 'packet', 1, 6, 250, 220, 'Available', 100000, 6),
(454, 586, 'packet', 1, 6, 780, 650, 'Available', 100000, 6),
(455, 587, 'packet', 1, 6, 780, 700, 'Available', 100000, 6),
(456, 588, 'packet', 1, 6, 650, 620, 'Available', 100000, 6),
(457, 589, 'packet', 1, 6, 680, 640, 'Available', 100000, 6),
(458, 590, 'packet', 8, 6, 800, 760, 'Available', 100000, 6),
(459, 591, 'packet', 4, 6, 650, 630, 'Available', 100000, 6),
(460, 592, 'packet', 6, 6, 900, 850, 'Available', 100000, 6),
(462, 594, 'packet', 1, 6, 90, 85, 'Available', 99992, 6),
(464, 596, 'packet', 1, 6, 0.5, 0, 'Available', 100000, 6),
(465, 597, 'packet', 1, 6, 150, 145, 'Available', 99959, 6),
(467, 599, 'packet', 1, 6, 490, 444, 'Available', 100000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` int(11) NOT NULL,
  `promo_code` varchar(28) NOT NULL,
  `message` varchar(512) NOT NULL,
  `start_date` varchar(28) NOT NULL,
  `end_date` varchar(28) NOT NULL,
  `no_of_users` int(11) NOT NULL,
  `minimum_order_amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `discount_type` varchar(28) NOT NULL,
  `max_discount_amount` int(11) NOT NULL,
  `repeat_usage` tinyint(4) NOT NULL,
  `no_of_repeat_usage` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `return_requests`
--

CREATE TABLE `return_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remarks` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `row_order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `short_description` varchar(64) CHARACTER SET utf8 NOT NULL,
  `style` varchar(16) NOT NULL,
  `product_ids` varchar(1024) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `row_order`, `title`, `short_description`, `style`, `product_ids`, `date_added`) VALUES
(99, 3, 'Fast Food Special', 'Hottest Deals', 'style_3', '491,483,482,469,468,465,464,312,291,277,276,270,253', '2020-08-04 15:48:17'),
(100, 4, 'New arrival', 'Latest Products', 'style_2', '582,553,508,507,506,504,500,494,491,468,312,291,277,275,228', '2020-08-04 15:50:04'),
(133, 5, 'Hot Products', 'Hot Deals', 'style_1', '597,594,582,570,569,567,566,565,564,563,562,561,560,556,555,508', '2021-02-27 03:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `company_name` varchar(64) NOT NULL,
  `personal_address` text NOT NULL,
  `company_address` text NOT NULL,
  `dob` date NOT NULL,
  `account_details` text NOT NULL,
  `password` varchar(32) NOT NULL,
  `gst_no` varchar(16) NOT NULL,
  `pan_no` varchar(16) NOT NULL,
  `status` varchar(8) NOT NULL,
  `commission` varchar(8) DEFAULT NULL,
  `balance` int(11) NOT NULL,
  `last_login_ip` varchar(32) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `variable` text NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `variable`, `value`) VALUES
(6, 'logo', 'logo.jpeg'),
(9, 'privacy_policy', '<p><strong>Privacy Policy</strong></p>\r\n\r\n<p> \r\n<p>built the eCart app as a Free app. This SERVICE is provided by at no cost and is intended for use as is.</p>\r\n</p>\r\n\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at eCart unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/support/privacy/\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n</ul>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p><strong>Children’s Privacy</strong></p>\r\n\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.</p>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2021-01-04</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at info@wrteam.in.</p>\r\n\r\n<p>This privacy policy page was created at <a href=\"https://privacypolicytemplate.net\" target=\"_blank\">privacypolicytemplate.net </a>and modified/generated by <a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\">App Privacy Policy Generator</a></p>'),
(10, 'terms_conditions', '<p><strong>Terms &amp; Conditions</strong></p>\r\n\r\n<p> \r\n<p>By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to .</p>\r\n</p>\r\n\r\n<p>is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for.</p>\r\n\r\n<p>The eCart app stores and processes personal data that you have provided to us, in order to provide my Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the eCart app won’t work properly or at all.</p>\r\n\r\n<p>The app does use third party services that declare their own Terms and Conditions.</p>\r\n\r\n<p>Link to Terms and Conditions of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://policies.google.com/terms\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/crashlytics\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n</ul>\r\n\r\n<p>You should be aware that there are certain things that will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left.</p>\r\n\r\n<p> </p>\r\n\r\n<p>If you’re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</p>\r\n\r\n<p>Along the same lines, cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, cannot accept responsibility.</p>\r\n\r\n<p>With respect to ’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</p>\r\n\r\n<p>At some point, we may wish to update the app. The app is currently available on Android – the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</p>\r\n\r\n<p><strong>Changes to This Terms and Conditions</strong></p>\r\n\r\n<p>I may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Terms and Conditions on this page.</p>\r\n\r\n<p>These terms and conditions are effective as of 2021-01-04</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at info@wrteam.in.</p>\r\n\r\n<p>This Terms and Conditions page was generated by <a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\">App Privacy Policy Generator</a></p>'),
(11, 'fcm_server_key', 'AAAAWPUqulc:APA91bFreFyNw_NlXCcVM-yqvYtCLncUfbuJrsz5Tj9fsElaCwFuFBRLssANOWtAzhuk39iOqiiQE6nP5ip01Ij1_Oxw8kv-0fgPj-4o0SS27a0aJ17gneDoN0LG7uPWy4SuTdhOIqHx'),
(12, 'contact_us', '<h2>E-commerce </h2>\r\n\r\n<p>For any kind of queries related to products, orders or services feel free to contact us on our official email address or phone number as given below :</p>\r\n\r\n<p><strong>Areas we deliver : </strong></p>\r\n\r\n<p><strong>Delivery Timings :</strong></p>\r\n\r\n<ol>\r\n	<li><strong>  8:00 AM To 10:30 AM</strong></li>\r\n	<li><strong> 10:30 AM To 12:30 PM</strong></li>\r\n	<li><strong>  4:00 PM To  7:00 PM</strong></li>\r\n</ol>\r\n\r\n<p><strong>Note : </strong>You can order for maximum 2days in advance. i.e., Today &amp; Tomorrow only.</p>\r\n\r\n<h3> </h3>\r\n'),
(13, 'system_timezone', '{\"system_configurations\":\"1\",\"system_timezone_gmt\":\"+05:30\",\"system_configurations_id\":\"13\",\"app_name\":\"whitemilk\",\"support_number\":\"+91 9381570624\",\"support_email\":\"support@nexansoft.com\",\"current_version\":\"1.0.0\",\"minimum_version_required\":\"1.0.0\",\"is-version-system-on\":\"0\",\"store_address\":\"Hyderabad\",\"map_latitude\":\"23.23305215147397\",\"map_longitude\":\"69.64400665873588\",\"currency\":\"u20b9\",\"delivery_charge\":\"500\",\"system_timezone\":\"Asia/Kolkata\",\"min_amount\":\"1000\",\"min_order_amount\":\"1\",\"max_cart_items_count\":\"30\",\"area-wise-delivery-charge\":\"0\",\"is-refer-earn-on\":\"1\",\"min-refer-earn-order-amount\":\"100\",\"refer-earn-bonus\":\"2\",\"refer-earn-method\":\"percentage\",\"max-refer-earn-amount\":\"5000\",\"minimum-withdrawal-amount\":\"10000\",\"max-product-return-days\":\"10\",\"delivery-boy-bonus-percentage\":\"10\",\"low-stock-limit\":\"10\",\"user-wallet-refill-limit\":\"1000\",\"from_mail\":\"info@ecart.com\",\"reply_to\":\"info@ecart.com\",\"generate-otp\":\"1\",\"ratings\":\"1\",\"smtp-from-mail\":\"noreply@nexansoft.com\",\"smtp-reply-to\":\"noreply@nexansoft.com\",\"smtp-email-password\":\"wrteam@0124\",\"smtp-host\":\"mail.wrteam.in\",\"smtp-port\":\"465\",\"smtp-content-type\":\"html\",\"smtp-encryption-type\":\"ssl\"}'),
(15, 'about_us', '<h2>About Us</h2>\r\n\r\n<p>eCart is one of the most selling and trending&nbsp; Grocery, Food Delivery, Fruits &amp; Vegetable store, Full Android eCommerce &amp; Website. which is helps to create your own app and web with your brand name.</p>\r\n\r\n<p>eCart has creative and dedicated group of developers who are mastered in Apps Developments and Web Development with a nice in delivering quality solutions to customers across the globe.</p>\r\n\r\n<p>Everything there including code, doc, amazing support, and most important developed by WRTeam.</p>'),
(80, 'currency', '₹'),
(81, 'delivery_boy_privacy_policy', '<p><strong>Privacy Policy</strong></p>\r\n\r\n<p> \r\n<p>built the Delivery Boy - eCart app as a Free app. This SERVICE is provided by at no cost and is intended for use as is.</p>\r\n</p>\r\n\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Delivery Boy - eCart unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/policies/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/support/privacy/\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n</ul>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p><strong>Children’s Privacy</strong></p>\r\n\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.</p>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2021-01-04</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at info@wrteam.in.</p>\r\n\r\n<p>This privacy policy page was created at <a href=\"https://privacypolicytemplate.net\" target=\"_blank\">privacypolicytemplate.net </a>and modified/generated by <a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\">App Privacy Policy Generator</a></p>'),
(94, 'doctor_brown', '{\"code_bravo\":\"57233e60-f8e9-4618-8eef-a78b1a6c378a\",\"time_check\":\"35da56c3d7058ee57dbffb511e44ddcf5c5d1ca47d377f4c730a9f30f9769728\",\"code_adam\":\"Skuarmverma\",\"dr_firestone\":\"22015911\",\"add_dr_gold\":\"1\"} '),
(82, 'delivery_boy_terms_conditions', '<p><strong>Terms &amp; Conditions</strong></p>\r\n\r\n<p> \r\n<p>By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to .</p>\r\n</p>\r\n\r\n<p>is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for.</p>\r\n\r\n<p>The Delivery Boy - eCart app stores and processes personal data that you have provided to us, in order to provide my Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the Delivery Boy - eCart app won’t work properly or at all.</p>\r\n\r\n<p>The app does use third party services that declare their own Terms and Conditions.</p>\r\n\r\n<p>Link to Terms and Conditions of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://policies.google.com/terms\" target=\"_blank\">Google Play Services</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/analytics\" target=\"_blank\">Google Analytics for Firebase</a></li>\r\n	<li><a href=\"https://firebase.google.com/terms/crashlytics\" target=\"_blank\">Firebase Crashlytics</a></li>\r\n</ul>\r\n\r\n<p>You should be aware that there are certain things that will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left.</p>\r\n\r\n<p> </p>\r\n\r\n<p>If you’re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</p>\r\n\r\n<p>Along the same lines, cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, cannot accept responsibility.</p>\r\n\r\n<p>With respect to ’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</p>\r\n\r\n<p>At some point, we may wish to update the app. The app is currently available on Android – the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</p>\r\n\r\n<p><strong>Changes to This Terms and Conditions</strong></p>\r\n\r\n<p>I may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Terms and Conditions on this page.</p>\r\n\r\n<p>These terms and conditions are effective as of 2021-01-04</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at info@wrteam.in.</p>\r\n\r\n<p>This Terms and Conditions page was generated by <a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\">App Privacy Policy Generator</a></p>'),
(92, 'payment_methods', '{\"payment_method_settings\":\"1\",\"cod_payment_method\":\"1\",\"paypal_payment_method\":\"1\",\"paypal_mode\":\"sandbox\",\"paypal_currency_code\":\"USD\",\"paypal_business_email\":\"seller@somedomain.com\",\"payumoney_payment_method\":\"1\",\"payumoney_mode\":\"sandbox\",\"payumoney_merchant_key\":\"f8Ppbt4\",\"payumoney_merchant_id\":\"7306409\",\"payumoney_salt\":\"pedRXBgC1Y\",\"razorpay_payment_method\":\"1\",\"razorpay_key\":\"rzp_test_wNjW8AkREkdXStP\",\"razorpay_secret_key\":\"RSGbQVmsFbpkZTOMXi4v414Fh\",\"paystack_payment_method\":\"1\",\"paystack_public_key\":\"pk_test_fd8f82d9c548cbd143c83a4bdf6cee5c11f8e6c66\",\"paystack_secret_key\":\"sk_test_dcc02e937927953bb933b6d4c0dec928f1f7e0118\",\"flutterwave_payment_method\":\"1\",\"flutterwave_public_key\":\"FLWPkUBK_TEST-1ffbaed6ee3788cd2bcbb898d3b90c59-X\",\"flutterwave_secret_key\":\"FLWSECK_TEST-c659ffd76304fff90fc42b67ae735b126-X\",\"flutterwave_encryption_key\":\"FLWSECK_TEST25c336edcfcaa\",\"flutterwave_currency_code\":\"KES\",\"midtrans_payment_method\":\"1\",\"is_production\":\"0\",\"midtrans_merchant_id\":\"G2823674296\",\"midtrans_client_key\":\"SB-Mid-client-r2oooHrl0UI6xDJ7-\",\"midtrans_server_key\":\"SB-Mid-server-3SMP6XVmkls2N2sRGrbGUfdal\",\"stripe_payment_method\":\"1\",\"stripe_publishable_key\":\"pk_test_51Hh290WLYfObhNTTwooBHwynrlfiPo2uwxyCVqGNNCWGmpdOHuaW4rYS9cDldKJ1hxV5ik52UXUDSYgEM66OX45550065US7tRX\",\"stripe_secret_key\":\"sk_test_51Hh90WL2YfObhNTTwO8kCsbdnMdmLxiGHEpiQPGBkYlahlBAQ3RnXPIKGn3YsGIEMoIQ5bNfxye4kzE6wfLiINzNk00xOYprnZt\",\"stripe_webhook_secret_key\":\"whsec_cm9XIsxcWEweL0J3DNtDH8YEBzcsVw8Ol\",\"stripe_currency_code\":\"INR\",\"paytm_payment_method\":\"1\",\"paytm_mode\":\"sandbox\",\"paytm_merchant_key\":\"eIcrB!DTHJlQ52DN8\",\"paytm_merchant_id\":\"PpGeMd348495255402215\"}'),
(83, 'time_slot_config', '{\"time_slot_config\":\"1\",\"is_time_slots_enabled\":\"1\",\"delivery_starts_from\":\"1\",\"allowed_days\":\"30\"}'),
(95, 'manager_app_privacy_policy', '<p><strong>Privacy Policy</strong></p>\r\n\r\n<p> \r\n<p>built the eCart Manager App app as a Free app. This SERVICE is provided by at no cost and is intended for use as is.</p>\r\n</p>\r\n\r\n<p>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</p>\r\n\r\n<p>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at eCart Manager App unless otherwise defined in this Privacy Policy.</p>\r\n\r\n<p><strong>Information Collection and Use</strong></p>\r\n\r\n<p>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.</p>\r\n\r\n<p>The app does use third party services that may collect information used to identify you.</p>\r\n\r\n<p>Link to privacy policy of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.google.com/policies/privacy/\" target=\"_blank\">Google Play Services</a></li>\r\n</ul>\r\n\r\n<p><strong>Log Data</strong></p>\r\n\r\n<p>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</p>\r\n\r\n<p><strong>Cookies</strong></p>\r\n\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</p>\r\n\r\n<p>This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</p>\r\n\r\n<p><strong>Service Providers</strong></p>\r\n\r\n<p>I may employ third-party companies and individuals due to the following reasons:</p>\r\n\r\n<ul>\r\n	<li>To facilitate our Service;</li>\r\n	<li>To provide the Service on our behalf;</li>\r\n	<li>To perform Service-related services; or</li>\r\n	<li>To assist us in analyzing how our Service is used.</li>\r\n</ul>\r\n\r\n<p>I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.</p>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<p>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</p>\r\n\r\n<p><strong>Links to Other Sites</strong></p>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<p><strong>Children’s Privacy</strong></p>\r\n\r\n<p>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions.</p>\r\n\r\n<p><strong>Changes to This Privacy Policy</strong></p>\r\n\r\n<p>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>This policy is effective as of 2021-01-04</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at info@wrteam.in.</p>\r\n\r\n<p>This privacy policy page was created at <a href=\"https://privacypolicytemplate.net\" target=\"_blank\">privacypolicytemplate.net </a>and modified/generated by <a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\">App Privacy Policy Generator</a></p>'),
(96, 'manager_app_terms_conditions', '<p><strong>Terms &amp; Conditions</strong></p>\r\n\r\n<p> \r\n<p>By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to .</p>\r\n</p>\r\n\r\n<p>is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for.</p>\r\n\r\n<p>The eCart Manager App app stores and processes personal data that you have provided to us, in order to provide my Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the eCart Manager App app won’t work properly or at all.</p>\r\n\r\n<p>The app does use third party services that declare their own Terms and Conditions.</p>\r\n\r\n<p>Link to Terms and Conditions of third party service providers used by the app</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://policies.google.com/terms\" target=\"_blank\">Google Play Services</a></li>\r\n</ul>\r\n\r\n<p>You should be aware that there are certain things that will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left.</p>\r\n\r\n<p> </p>\r\n\r\n<p>If you’re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.</p>\r\n\r\n<p>Along the same lines, cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, cannot accept responsibility.</p>\r\n\r\n<p>With respect to ’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.</p>\r\n\r\n<p>At some point, we may wish to update the app. The app is currently available on Android – the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. does not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.</p>\r\n\r\n<p><strong>Changes to This Terms and Conditions</strong></p>\r\n\r\n<p>I may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Terms and Conditions on this page.</p>\r\n\r\n<p>These terms and conditions are effective as of 2021-01-04</p>\r\n\r\n<p><strong>Contact Us</strong></p>\r\n\r\n<p>If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at info@wrteam.in.</p>\r\n\r\n<p>This Terms and Conditions page was generated by <a href=\"https://app-privacy-policy-generator.nisrulz.com/\" target=\"_blank\">App Privacy Policy Generator</a></p>'),
(101, 'refund_policy', '<p>Refund Policy</p>'),
(102, 'shipping_policy', '<p>Shipping Policies</p>'),
(103, 'delivery_returns_policy', '<p>Delivery &amp; Return Policies</p>'),
(99, 'categories_settings', '{\"add_category_settings\":\"1\",\"cat_style\":\"style_2\",\"max_visible_categories\":\"6\",\"max_col_in_single_row\":\"3\"}'),
(97, 'front_end_settings', '{\"front_end_settings\":\"1\",\"android_app_url\":\"https://play.google.com\",\"call_back_url\":\"https://commercesite.whitemilk.in:8000/\",\"common_meta_keywords\":\"website\",\"common_meta_description\":\"website\",\"color\":\"#83b735\",\"favicon\":\"1628851010.4363.jpeg\",\"web_logo\":\"1628851010.4367.jpeg\",\"loading\":\"1620996782.0844.gif\",\"screenshots\":\"1608552564.1753.png\",\"google_play\":\"1608552564.1758.png\"}'),
(100, 'front_end_about_us', '<h2>About Us</h2>\r\n\r\n<p>eCart is one of the most selling and trending  Grocery, Food Delivery, Fruits &amp; Vegetable store, Full Android eCommerce &amp; Website. which is helps to create your own app and web with your brand name.</p>\r\n\r\n<p>eCart has creative and dedicated group of developers who are mastered in Apps Developments and Web Development with a nice in delivering quality solutions to customers across the globe.</p>\r\n\r\n<p>Everything there including code, doc, amazing support, and most important developed by WRTeam.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL,
  `type_id` varchar(16) NOT NULL,
  `title` text CHARACTER SET utf8 DEFAULT NULL,
  `short_description` text CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(256) NOT NULL,
  `image2` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `type`, `type_id`, `title`, `short_description`, `image`, `image2`, `date_added`) VALUES
(257, 'default', '0', '', '', 'upload/slider/1621843357960.png', '', '2021-05-24 08:02:37'),
(258, 'default', '0', '', '', 'upload/slider/1621843387907.png', '', '2021-05-24 08:03:07'),
(264, 'default', '0', '', '', 'upload/slider/1621846122088.png', '', '2021-05-24 08:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `icon`, `link`) VALUES
(1, 'fa-facebook', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `subtitle` text NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category_id`, `name`, `slug`, `subtitle`, `image`) VALUES
(62, 29, 'Detergent Soap', 'detergent-soap-1', 'Washing Soap', 'upload/images/9961-2019-08-03.png'),
(63, 29, 'Detergent Liquid', 'detergent-liquid', 'Washing Liquid', 'upload/images/0104-2019-08-03.jpg'),
(114, 31, 'Fruits', 'fruits-1', 'Fruits', 'upload/images/2047-2020-11-10.jpg'),
(115, 31, 'Vegetables', 'vegetables-1', 'Vegetables', 'upload/images/2565-2020-11-10.jpg'),
(117, 46, 'Chinese Food', 'chinese-food', 'Chinese Food', 'upload/images/3800-2020-08-26.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 DEFAULT NULL,
  `percentage` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `title`, `percentage`, `status`) VALUES
(1, 'SGST', '9', 1),
(2, 'CGST', '9', 1),
(3, 'CGST + SGST', '18', 1),
(4, 'IGST', '18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `last_order_time` time NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(128) NOT NULL,
  `type` varchar(12) NOT NULL,
  `txn_id` varchar(256) NOT NULL,
  `payu_txn_id` varchar(512) DEFAULT NULL,
  `amount` double NOT NULL,
  `status` varchar(8) NOT NULL,
  `message` varchar(128) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `short_code` varchar(8) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `conversion` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name`, `short_code`, `parent_id`, `conversion`) VALUES
(1, ' Kilo Gram', 'kg', 0, 0),
(2, 'Gram', 'gm', 1, 1000),
(3, 'Liter', 'ltr', NULL, NULL),
(4, 'Milliliter', 'ml', 3, 1000),
(5, 'Pack', 'pack', NULL, NULL),
(6, 'Piece', 'pc', NULL, NULL),
(7, 'Meter', 'm', NULL, NULL),
(8, 'Small', 'S', NULL, NULL),
(9, 'Medium', 'M', NULL, NULL),
(10, 'Large', 'L', NULL, NULL),
(11, 'Extra Large', 'XL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `version`) VALUES
(1, 'v2.0.8'),
(2, 'v2.0.8.1'),
(3, 'v2.0.8.2'),
(4, 'v2.0.9'),
(5, 'v2.0.9.1'),
(6, 'v2.0.9.2'),
(7, 'v2.0.10'),
(8, 'v2.1.0'),
(9, 'v2.0.11'),
(10, 'v2.0.11.1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 NOT NULL,
  `profile` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '91',
  `mobile` varchar(14) CHARACTER SET utf8 NOT NULL,
  `dob` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `city` text CHARACTER SET utf8 NOT NULL,
  `area` text CHARACTER SET utf8 NOT NULL,
  `street` text CHARACTER SET utf8 NOT NULL,
  `pincode` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `apikey` varchar(32) CHARACTER SET utf8 NOT NULL,
  `balance` double NOT NULL DEFAULT 0,
  `referral_code` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `friends_code` varchar(28) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fcm_id` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(256) CHARACTER SET utf8 NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `alternate_mobile` varchar(28) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `landmark` text COLLATE utf8_unicode_ci NOT NULL,
  `area_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `pincode` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(56) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` int(11) NOT NULL,
  `order_id` varchar(32) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `type` varchar(8) NOT NULL COMMENT 'credit | debit',
  `amount` double NOT NULL,
  `message` varchar(512) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_requests`
--

CREATE TABLE `withdrawal_requests` (
  `id` int(11) NOT NULL,
  `type` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `message` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_register`
--
ALTER TABLE `branch_register`
  ADD PRIMARY KEY (`BranchID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_comments`
--
ALTER TABLE `complaint_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy_notifications`
--
ALTER TABLE `delivery_boy_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sales_products`
--
ALTER TABLE `flash_sales_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_transfers`
--
ALTER TABLE `fund_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ads`
--
ALTER TABLE `product_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_requests`
--
ALTER TABLE `return_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch_register`
--
ALTER TABLE `branch_register`
  MODIFY `BranchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10010;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_comments`
--
ALTER TABLE `complaint_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_boy_notifications`
--
ALTER TABLE `delivery_boy_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales_products`
--
ALTER TABLE `flash_sales_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fund_transfers`
--
ALTER TABLE `fund_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=702;

--
-- AUTO_INCREMENT for table `product_ads`
--
ALTER TABLE `product_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=507;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_requests`
--
ALTER TABLE `return_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
