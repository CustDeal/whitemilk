-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2021 at 11:54 AM
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
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `branch_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `role`, `permissions`, `created_by`, `forgot_password_code`, `fcm_id`, `date_created`, `branch_id`) VALUES
(1, 'admin', 'e6e061838856bf47e1de730719fb2609', 'info@ecart.in', 'super admin', '{\"orders\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"categories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"subcategories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products_order\":{\"read\":\"1\",\"update\":\"1\"},\"featured\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"customers\":{\"read\":\"1\"},\"payment\":{\"read\":\"1\",\"update\":\"1\"},\"notifications\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"transactions\":{\"read\":\"1\"},\"settings\":{\"read\":\"1\",\"update\":\"1\"},\"locations\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"reports\":{\"create\":\"1\",\"read\":\"1\"},\"faqs\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"home_sliders\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"new_offers\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"promo_codes\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"delivery_boys\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"return_requests\":{\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"}}', 0, '1beaf755d5b73d40bfb300722286235c', 'f-v4-9FhTmy3RnuKA87v1e:APA91bFgac1u7uRzbFvR6p_Vwmd2VA7hlioy0Emi9nPXIuVHxxXK7UZzhuvTK3HrTahpwn745qNWlKQ7PKXtK30wd5BKQ0YmaFcyGcZWTb-KSfUJO5HIEGkFqqjdWg347LV0t1i6W2bN', '2020-06-22 16:48:25', NULL),
(128, 'adminbranch', 'ee211a1cb226c60eedf2eea3f3278855', 'pos@pos.com', 'POS', '{\"orders\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"categories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"subcategories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products_order\":{\"read\":\"1\",\"update\":\"1\"},\"featured\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"customers\":{\"read\":\"1\"},\"payment\":{\"read\":\"1\",\"update\":\"1\"},\"notifications\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"transactions\":{\"read\":\"1\"},\"settings\":{\"read\":\"1\",\"update\":\"1\"},\"locations\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"reports\":{\"create\":\"1\",\"read\":\"1\"},\"faqs\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"home_sliders\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"new_offers\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"promo_codes\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"delivery_boys\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"return_requests\":{\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"}}', 0, NULL, NULL, '2021-08-19 09:34:28', 0),
(129, 'adminbranch', 'e6e061838856bf47e1de730719fb2609', 'pos@pos.com', 'POS', '{\"orders\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"categories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"subcategories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products_order\":{\"read\":\"1\",\"update\":\"1\"},\"featured\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"customers\":{\"read\":\"1\"},\"payment\":{\"read\":\"1\",\"update\":\"1\"},\"notifications\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"transactions\":{\"read\":\"1\"},\"settings\":{\"read\":\"1\",\"update\":\"1\"},\"locations\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"reports\":{\"create\":\"1\",\"read\":\"1\"},\"faqs\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"home_sliders\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"new_offers\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"promo_codes\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"delivery_boys\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"return_requests\":{\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"}}', 0, NULL, NULL, '2021-08-19 09:42:02', 10015),
(130, 'branchadmin2', '5178e44571fc32804d4224df9faa4497', 'pos@pos.com', 'POS', '{\"orders\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"categories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"subcategories\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"products_order\":{\"read\":\"1\",\"update\":\"1\"},\"featured\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"customers\":{\"read\":\"1\"},\"payment\":{\"read\":\"1\",\"update\":\"1\"},\"notifications\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"transactions\":{\"read\":\"1\"},\"settings\":{\"read\":\"1\",\"update\":\"1\"},\"locations\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"reports\":{\"create\":\"1\",\"read\":\"1\"},\"faqs\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"home_sliders\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"new_offers\":{\"create\":\"1\",\"read\":\"1\",\"delete\":\"1\"},\"promo_codes\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"delivery_boys\":{\"create\":\"1\",\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"return_requests\":{\"read\":\"1\",\"update\":\"1\",\"delete\":\"1\"}}', 0, NULL, NULL, '2021-08-19 09:47:35', 10016);

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
  `ContactNumber` varchar(12) NOT NULL,
  `type` int(10) NOT NULL DEFAULT 0 COMMENT '0-BRANCH 1-POS'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_register`
--

INSERT INTO `branch_register` (`BranchID`, `BranchName`, `Address`, `City`, `ContactPerson`, `ContactNumber`, `type`) VALUES
(10008, 'Talwara Branch', 'Talwara Branch', 'Talwara Branch', 'Talwara Branch', 'Talwara Bran', 0),
(10000, 'MainBranch', 'sfsfs', 'cochi', 'bhaskar', '9381570624', 0),
(10011, 'DEMO 2', 'DEMO 2', 'DEMO 2', 'DEMO 2', 'DEMO 2', 1),
(10012, 'admin branch', 'admin branch', 'admin branch', 'admin branch', 'adminbranch', 1),
(10013, 'admin branch', 'admin branch', 'admin branch', 'admin branch', 'adminbranch', 1),
(10014, 'admin branch', 'admin branch', 'admin branch', 'admin branch', 'adminbranch', 1),
(10015, 'admin branch', 'admin branch', 'admin branch', 'admin branch', 'adminbranch', 1),
(10016, 'branchadmin2', 'branchadmin2', 'branchadmin2', 'branchadmin2', 'branchadmin2', 1);

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
  `BranchID` varchar(10) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'normal',
  `subscription_date` text NOT NULL,
  `ordered_by` int(11) DEFAULT NULL,
  `isSubscriptionDelivered` tinyint(1) NOT NULL DEFAULT 0,
  `SubscripPlanID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `delivery_boy_id`, `otp`, `mobile`, `total`, `delivery_charge`, `tax_amount`, `tax_percentage`, `wallet_balance`, `discount`, `promo_code`, `promo_discount`, `final_total`, `payment_method`, `address`, `latitude`, `longitude`, `delivery_time`, `status`, `active_status`, `date_added`, `BranchID`, `type`, `subscription_date`, `ordered_by`, `isSubscriptionDelivered`, `SubscripPlanID`) VALUES
(1, 4, 0, NULL, '9703694602', 308, 0, 0, 0, 0, 0, '-', 0, 308, 'cod', 'raviteja apartments lingampally, , , 500019, Deliver to ', '17.3362009', '77.9051332', 'Tomorrow - Evening 7PM TO 9PM', '[[\"received\",\"01-09-2020 06:13:45pm\"],[\"processed\",\"08-09-2020 07:51:53pm\"],[\"shipped\",\"08-09-2020 07:51:53pm\"],[\"delivered\",\"08-09-2020 07:51:53pm\"]]', 'delivered', '2020-08-31 18:30:00', '3', 'normal', '', NULL, 0, 0),
(2, 5, 0, NULL, '8185975342', 28, 0, 0, 0, 0, 0, '-', 0, 28, 'cod', 'Any funrnichars, , , 500019, Deliver to ', '17.5932097', '77.7142672', 'Tomorrow - Morning 8AM TO 10AM', '[[\"received\",\"01-09-2020 08:20:02pm\"],[\"cancelled\",\"01-09-2020 08:26:02pm\"]]', 'cancelled', '2020-09-01 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(3, 5, 0, NULL, '8185975342', 28, 0, 0, 0, 0, 0, '-', 0, 28, 'cod', 'Any funrnichars, , , 500019, Deliver to home', '17.5932097', '77.7142672', 'Tomorrow - Morning 8AM TO 10AM', '[[\"received\",\"01-09-2020 08:21:36pm\"],[\"processed\",\"08-09-2020 07:51:29pm\"],[\"shipped\",\"08-09-2020 07:51:29pm\"],[\"delivered\",\"08-09-2020 07:51:29pm\"]]', 'delivered', '2020-09-01 18:30:00', '1', 'normal', '', NULL, 0, 0),
(4, 11, 0, NULL, '9515109126', 70, 0, 0, 0, 0, 0, '-', 0, 70, 'cod', 'hhhhh 201, Patancheru, Hyderabad, 502319, Deliver to work', '17.4952661', '78.3227282', 'Tomorrow - Morning 8AM TO 10AM', '[[\"received\",\"01-09-2020 08:23:58pm\"],[\"processed\",\"08-09-2020 07:50:59pm\"],[\"shipped\",\"08-09-2020 07:50:59pm\"],[\"delivered\",\"08-09-2020 07:50:59pm\"]]', 'delivered', '2020-09-01 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(5, 12, 1, NULL, '7993432175', 624, 0, 0, 0, 0, 0, 'First50', 312, 312, 'cod', 'shanti gardens,C block flat no 503,Nacharam,hyd, , , 500076, Deliver to home', '17.4254191', '78.5526678', 'Tomorrow - Morning 06AM to 08AM', '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-03 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(6, 12, 1, NULL, '7993432175', 190, 0, 0, 0, 0, 0, '-', 0, 190, 'cod', 'shanti gardens,C block flat no 503,Nacharam,hyd, , , 500076, Deliver to ', '17.4254191', '78.5526678', 'Tomorrow - Morning 06AM to 08AM', '[[\"received\",\"04-09-2020 10:20:03am\"],[\"processed\",\"04-09-2020 10:07:57pm\"],[\"shipped\",\"05-09-2020 07:40:45am\"],[\"delivered\",\"05-09-2020 07:40:45am\"]]', 'delivered', '2020-09-03 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(7, 13, 0, NULL, '8886976410', 124, 0, 0, 0, 0, 0, '-', 0, 124, 'cod', 'Vinayaka Nagar Filmnagar jubilee Hyderabad 500096, hyderabad, Hyderabad, 500019, Deliver to ', '17.4503205', '78.3815868', 'Tomorrow - Morning 8AM TO 10AM', '[[\"received\",\"04-09-2020 06:36:37pm\"],[\"processed\",\"04-09-2020 10:14:25pm\"],[\"shipped\",\"08-09-2020 07:50:33pm\"],[\"delivered\",\"08-09-2020 07:50:33pm\"]]', 'delivered', '2020-09-03 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(8, 13, 1, NULL, '8886976410', 124, 0, 0, 0, 0, 0, '-', 0, 124, 'cod', 'Vinayaka Nagar Filmnagar jubilee Hyderabad 500096, hyderabad, Hyderabad, 500019, Deliver to ', '17.4503205', '78.3815868', 'Tomorrow - Morning 8AM TO 10AM', '[[\"received\",\"04-09-2020 06:36:38pm\"],[\"processed\",\"04-09-2020 10:09:01pm\"],[\"shipped\",\"05-09-2020 10:57:50pm\"],[\"delivered\",\"05-09-2020 10:57:50pm\"]]', 'delivered', '2020-09-03 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(9, 16, 1, NULL, '9866032963', 345, 0, 0, 0, 0, 0, 'FIRST50', 172.5, 172.5, 'cod', 'narsingi, near community hall, hyderabad, Hyderabad, 500089, Deliver to ', '17.3924282', '78.3604182', 'Tomorrow - Morning 8AM TO 10AM', '[[\"received\",\"11-09-2020 01:12:37am\"],[\"processed\",\"11-09-2020 01:09:50pm\"],[\"shipped\",\"11-09-2020 03:04:00pm\"],[\"delivered\",\"11-09-2020 03:04:00pm\"]]', 'delivered', '2020-09-10 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(10, 18, 1, NULL, '9000350528', 1717, 0, 0, 0, 0, 0, 'first50', 858.5, 858.5, 'cod', '#8, Near BABU RAO community hall, Narsingi,,9866032963, Manikonda Sriramnagar colny, Hyderabad, 500089, Deliver to ', '17.3924291', '78.3604193', 'Tomorrow - Morning 8AM TO 10AM', '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(11, 17, 1, NULL, '9398282305', 130, 0, 0, 0, 0, 0, 'First50', 65, 65, 'cod', 'Plotno 204 2nd floor kphb 6th phase sai Montisorri School apartment Anupama Hospital Backside Hyderabad., , , 500078, Deliver to home', '17.4862573', '78.3900911', 'Tomorrow - Morning 8AM TO 10AM', '[[\"received\",\"11-09-2020 09:52:11pm\"],[\"processed\",\"12-09-2020 03:55:40am\"],[\"shipped\",\"12-09-2020 10:32:58am\"],[\"delivered\",\"12-09-2020 10:32:58am\"]]', 'delivered', '2020-09-11 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(12, 19, 0, NULL, '9490974433', 260, 0, 0, 0, 0, 0, '-', 0, 260, 'cod', 'the, , , 500072, Deliver to home', '16.5156271', '80.6250763', 'Tomorrow - Morning 06AM to 08AM', '[[\"received\",\"12-09-2020 08:52:41pm\"],[\"processed\",\"13-09-2020 03:53:42pm\"],[\"shipped\",\"13-09-2020 03:53:42pm\"],[\"delivered\",\"13-09-2020 03:53:42pm\"]]', 'delivered', '2020-09-12 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(13, 21, 1, NULL, '6300774346', 28, 0, 0, 0, 0, 0, '-', 0, 28, 'cod', 'gokul nagar rod, , , 502319, Deliver to ', '17.535407', '78.261319', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"15-09-2020 08:10:36pm\"],[\"processed\",\"15-09-2020 11:09:43pm\"],[\"shipped\",\"16-09-2020 08:43:55am\"],[\"delivered\",\"16-09-2020 08:43:55am\"]]', 'delivered', '2020-09-15 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(14, 23, 1, NULL, '7997776004', 264, 0, 0, 0, 0, 0, 'first50', 132, 132, 'cod', 'plot no 303 3rd floor sai montisorri school apartments kphb 6th phase anuapama hospital backside, , , 500078, Deliver to home', '17.4862758', '78.3900774', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-15 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(15, 25, 1, NULL, '6281247601', 90, 0, 0, 0, 0, 0, 'first50', 45, 45, 'cod', 'shop no 3 jaya empire near nala pochama temple srinivasa nagar colony near balaji towers, , , 500085, Deliver to ', '17.5146222', '78.3885216', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"19-09-2020 04:14:38pm\"],[\"processed\",\"20-09-2020 12:00:41am\"],[\"shipped\",\"20-09-2020 08:34:18am\"],[\"delivered\",\"20-09-2020 08:34:18am\"]]', 'delivered', '2020-09-18 18:30:00', '2', 'normal', '', NULL, 0, 0),
(16, 26, 1, NULL, '7093049755', 1798, 0, 0, 0, 0, 0, 'first50', 899, 899, 'cod', '8-5, Near Methodist Church, Narsingi, Manikonda Sriramnagar colny, Hyderabad, 500089, Deliver to ', '17.392581510686643', '78.36013354361057', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-19 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(17, 26, 1, NULL, '7093049755', 1696, 0, 0, 0, 0, 0, '-', 0, 1696, 'cod', '8-5, Near Methodist Church, Narsingi, Manikonda Sriramnagar colny, Hyderabad, 500089, Deliver to ', '17.392581510686643', '78.36013354361057', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-20 18:30:00', '2', 'normal', '', NULL, 0, 0),
(18, 26, 0, NULL, '7093049755', 469, 0, 0, 0, 0, 0, 'ORDER599', 230, 239, 'cod', '8-5, Near Methodist Church, Narsingi, Manikonda Sriramnagar colny, Hyderabad, 500089, Deliver to ', '17.392581510686643', '78.36013354361057', 'Tomorrow - Morning 06 AM TO 08 AM', '[[\"received\",\"22-09-2020 11:48:10pm\"],[\"cancelled\",\"22-09-2020 11:56:42pm\"]]', 'cancelled', '2020-09-22 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(19, 29, 1, NULL, '8008900686', 2053, 0, 0, 0, 0, 0, 'FIRST50', 500, 1553, 'cod', 'Plot 29, Road 1, Nandan Ratan Pride, Behind Symphony park homes, Landmark Heritage super market, \\nSurvey no. 96/AA - 105AA, Beeramguda, Bandlaguda Village, Ramachandra Puram Mandal, Hyderabad,, , , 502319, Deliver to home', '17.5331365', '78.2825479', 'Tomorrow - Morning 06 AM TO 08 AM', '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-26 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(20, 30, 0, NULL, '9063444745', 997, 0, 0, 0, 0, 0, 'first50', 498.5, 498.5, 'cod', '8-6, Near COMMUNITY HALL, Manikonda road, Narsingi, , , 500089, Deliver to ', '17.3924319', '78.3604159', 'Tomorrow - Morning 06 AM TO 08 AM', '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-27 18:30:00', '4', 'normal', '', NULL, 0, 0),
(21, 26, 0, NULL, '7093049755', 2037, 0, 0, 0, 0, 0, '-', 0, 2037, 'cod', '8-5, Near Methodist Church, Narsingi, Manikonda Sriramnagar colny, Hyderabad, 500089, Deliver to ', '17.392581510686643', '78.36013354361057', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(22, 26, 0, NULL, '7093049755', 415, 0, 0, 0, 0, 0, '-', 0, 415, 'cod', '8-5, Near Methodist Church, Narsingi, Manikonda Sriramnagar colny, Hyderabad, 500089, Deliver to ', '17.392581510686643', '78.36013354361057', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"29-09-2020 11:29:28pm\"],[\"cancelled\",\"30-09-2020 08:16:48am\"]]', 'cancelled', '2020-09-29 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(23, 26, 1, NULL, '7093049755', 1024, 0, 0, 0, 0, 0, '-', 0, 1024, 'cod', '8-5, Near Methodist Church, Narsingi, Manikonda Sriramnagar colny, Hyderabad, 500089, Deliver to ', '17.392581510686643', '78.36013354361057', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(24, 31, 1, NULL, '9381772307', 633, 0, 0, 0, 0, 0, 'First50', 316.5, 316.5, 'cod', 'Plotno 303 3rd floor sai Montisorri School apartment Hig 519 Kphb 6th phase Hyd, , , 500078, Deliver to home', '17.4862867', '78.3900588', 'Tomorrow - Morning 06 AM TO 08 AM', '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-09-30 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(25, 34, 0, NULL, '9652561847', 28, 0, 0, 0, 0, 0, '-', 0, 28, 'cod', 'ramcharanra pur, , , 502300, Deliver to home', '17.3307775', '77.9187006', 'Tomorrow - Morning 06 AM TO 08 AM', '[[\"received\",\"03-10-2020 02:25:55pm\"],[\"cancelled\",\"03-10-2020 02:28:57pm\"]]', 'cancelled', '2020-10-02 18:30:00', '4', 'normal', '', NULL, 0, 0),
(26, 30, 0, NULL, '9063444745', 1223, 0, 0, 0, 0, 0, '-', 0, 1223, 'cod', 'h.no. 6-23 Opposite ratnadeep, Nanakramguda,, kondapur , Hyderabad, 500032, Deliver to ', '17.419506905514048', '78.35383839905262', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(27, 36, 1, NULL, '9963149757', 198, 0, 0, 0, 0, 0, 'First50', 99, 99, 'cod', 'Plotno 204 hig 519 sai Montisorri School apartment Kphb 6th phase Anupama Hospital Backside Hyd 500078, , , 500078, Deliver to home', '17.5146411', '78.3884916', 'Tomorrow - Morning 06 AM TO 08 AM', '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(28, 35, 1, NULL, '7680988027', 1011, 0, 0, 0, 0, 0, 'FIRST50', 500, 511, 'RazorPay', 'sriharivasamu FL.no.502, , , 502032, Deliver to ', '17.5290624', '78.2929849', 'Tomorrow - Morning 06 AM TO 08 AM', '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(29, 30, 0, NULL, '9063444745', 1695, 0, 0, 0, 0, 0, '-', 0, 1695, 'cod', '#4, ground F, opposite oriantal bank of commerce, kondapur , Hyderabad, 500032, Deliver to ', '17.447868301864652', '78.36231887340546', 'Tomorrow - Morning 06 AM TO 08 AM', '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(30, 38, 1, NULL, '8333806284', 154, 0, 0, 0, 0, 0, '-', 0, 154, 'cod', 'SRT 63, near Emmanuel church sanath nagar, Hyderabad, , , 500018, Deliver to home', '17.45187438066591', '78.44661165028812', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"08-10-2020 11:47:30pm\"],[\"processed\",\"09-10-2020 09:05:18am\"],[\"shipped\",\"09-10-2020 09:05:18am\"],[\"delivered\",\"09-10-2020 09:05:18am\"]]', 'delivered', '2020-10-08 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(31, 30, 0, NULL, '9063444745', 1430, 0, 0, 0, 0, 0, '-', 0, 1430, 'cod', '#4, ground F, opposite oriantal bank of commerce, kondapur , Hyderabad, 500032, Deliver to ', '17.447868301864652', '78.36231887340546', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(32, 40, 1, NULL, '9912014729', 1026, 0, 0, 0, 0, 0, 'FIRST50', 500, 526, 'RazorPay', 'Fl.no.501, Sriharivasamu, Greenmeadows, Beeramguda, opposite Venkateswara Swamy temple., , , 502032, Deliver to home', '17.5290471', '78.292961', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-10 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(33, 39, 1, NULL, '9063917758', 1002, 0, 0, 0, 0, 0, 'first50', 500, 502, 'cod', 'flat no 415/A sai Balaji towers,near sai baba temple apiic colony substation, jeedimetla , hyderabad, , , 500055, Deliver to ', '17.520022', '78.4431996', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-11 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(34, 30, 0, NULL, '9063444745', 1368, 0, 0, 0, 0, 0, '-', 0, 1368, 'cod', '#4, ground F, opposite oriantal bank of commerce, kondapur , Hyderabad, 500032, Deliver to ', '17.447868301864652', '78.36231887340546', 'Tomorrow - Morning 08 AM TO 10 AM', '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(35, 42, 1, NULL, '9985523133', 1008, 0, 0, 0, 0, 0, 'FIRST50', 500, 508, 'RazorPay', 'Sriharivasamu,Greenmeadows,Near Sri Chaitanya Technoc School, opp to temple., , , 502032, Deliver to home', '17.5290133', '78.2929509', 'Tomorrow - 11:00 AM to 01:00 PM', '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-14 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(36, 38, 1, NULL, '8333806284', 280, 0, 0, 0, 0, 0, '-', 0, 280, 'cod', 'SRT 63, near Emmanuel church sanath nagar, Hyderabad, , , 500018, Deliver to ', '17.45187438066591', '78.44661165028812', 'Tomorrow - 11:00 AM to 01:00 PM', '[[\"received\",\"15-10-2020 08:33:09pm\"],[\"processed\",\"16-10-2020 07:44:27am\"],[\"shipped\",\"16-10-2020 07:44:27am\"],[\"delivered\",\"16-10-2020 07:44:27am\"]]', 'delivered', '2020-10-15 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(37, 43, 1, NULL, '7013431523', 419, 0, 0, 0, 0, 0, 'FIRST50', 199, 220, 'RazorPay', 'Flat no:503, Srihari vasamu,Green meadows colony, second left to srichaitanya school, Beeramguda, Hyderabad., , , 502032, Deliver to ', '17.5290376', '78.2929581', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"17-10-2020 11:59:12pm\"],[\"processed\",\"19-10-2020 07:31:06am\"],[\"shipped\",\"19-10-2020 07:31:06am\"],[\"delivered\",\"19-10-2020 07:31:06am\"]]', 'delivered', '2020-10-17 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(38, 44, 1, NULL, '9133145484', 366, 0, 0, 0, 0, 0, 'First50', 183, 183, 'cod', 'Plotno 204 hig 519 sai Montisorri School apartment Kphb 6th phase Anupama Hospital Backside Hyd, , , 500072, Deliver to ', '17.5145994', '78.3884869', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(39, 30, 0, NULL, '9063444745', 600, 0, 0, 0, 0, 0, '-', 0, 600, 'cod', '#4, ground F, opposite oriantal bank of commerce, kondapur , Hyderabad, 500032, Deliver to ', '17.447868301864652', '78.36231887340546', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(40, 37, 1, NULL, '8332805929', 488, 0, 0, 0, 0, 0, 'First50', 199, 289, 'cod', 'plot no. 30,Nandan rathan pride, symphony back side, krishnareddy pet road, beeramduda, , , 502032, Deliver to ', '17.5312639', '78.2840394', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"21-10-2020 07:59:18pm\"]]', 'received', '2020-10-21 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(41, 30, 0, NULL, '9063444745', 275, 0, 0, 0, 0, 0, '-', 0, 275, 'cod', '#4, ground F, opposite oriantal bank of commerce, kondapur , Hyderabad, 500032, Deliver to ', '17.447868301864652', '78.36231887340546', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"23-10-2020 12:45:15am\"]]', 'received', '2020-10-22 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(42, 45, 1, NULL, '7799689090', 420, 0, 0, 0, 0, 0, 'FIRST50', 199, 221, 'RazorPay', 'HIG-519, FLOT NO 303, KPHB 6TH PHASE, , , 500072, Deliver to home', '17.486243', '78.3900402', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"24-10-2020 08:45:04am\"],[\"processed\",\"25-10-2020 10:27:12am\"],[\"shipped\",\"25-10-2020 10:27:12am\"],[\"delivered\",\"25-10-2020 10:27:12am\"]]', 'delivered', '2020-10-23 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(43, 30, 0, NULL, '9063444745', 215, 0, 0, 0, 0, 0, '-', 0, 215, 'cod', '#4, ground F, opposite oriantal bank of commerce, kondapur , Hyderabad, 500032, Deliver to ', '17.447868301864652', '78.36231887340546', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"24-10-2020 01:56:11pm\"]]', 'received', '2020-10-23 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(44, 30, 0, NULL, '9063444745', 280, 0, 0, 0, 0, 0, '-', 0, 280, 'cod', '#4, ground F, opposite oriantal bank of commerce, kondapur , Hyderabad, 500032, Deliver to ', '17.447868301864652', '78.36231887340546', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"26-10-2020 08:36:04pm\"]]', 'received', '2020-10-26 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(45, 38, 0, NULL, '8333806284', 423, 0, 0, 0, 0, 0, '-', 0, 423, 'cod', 'SRT 63, near Emmanuel church sanath nagar, Hyderabad, , , 500018, Deliver to ', '17.45187438066591', '78.44661165028812', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(46, 46, 0, NULL, '9110558859', 360, 0, 0, 0, 0, 0, 'FIRST50', 180, 180, 'cod', 'HIG-519, Sai English High school, Kphb 6th phase, 500072, , , 500072, Deliver to ', '17.4862688', '78.3900311', 'Tomorrow - 11:00 AM  to 01:00 PM', '[[\"received\",\"11-11-2020 06:40:55pm\"],[\"cancelled\",\"15-11-2020 10:38:38am\"]]', 'cancelled', '2020-11-11 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(47, 6, 0, NULL, '9515109126', 1932, 0, 0, 0, 0, 0, '-', 0, 1932, 'cod', 'flot:no:401 block A raviteja apartment taranagar lingampally, Lingampally, Hyderabad, 500019, Deliver to ', '17.4905561', '78.3192537', 'Tomorrow - Morning 9am to 12 pm', '[[\"received\",\"13-01-2021 10:05:45pm\"]]', 'received', '2021-01-13 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(48, 6, 0, NULL, '9515109126', 32, 0, 0, 0, 0, 0, '-', 0, 32, 'cod', 'flot:no:401 block A raviteja apartment taranagar lingampally, Lingampally, Hyderabad, 500019, Deliver to ', '17.4905561', '78.3192537', 'Tomorrow - Morning 9am to 12 pm', '[[\"received\",\"13-01-2021 10:07:43pm\"],[\"processed\",\"13-01-2021 10:10:15pm\"],[\"shipped\",\"13-01-2021 10:10:15pm\"],[\"delivered\",\"13-01-2021 10:10:15pm\"]]', 'delivered', '2021-01-13 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(49, 50, 0, 157482, '7976599339', 250, 100, 39.6, 15.84, 0, 0, '-', 0, 389.6, 'cod', '3 f 9 jawahar nagar, Bharat baiery, Hyderabad, Lingampally, raj, india, Pin Code : 335001', '0.0', '0.0', '5-Feb-2021 - Afternoon 12 AM to 2 PM', '[[\"received\",\"04-02-2021 10:09:30pm\"]]', 'received', '2021-02-03 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(50, 50, 0, 523516, '7976599339', 480, 0, 0, 0, 0, 0, '-', 0, 480, 'cod', '3 f 9 jawahar nagar, Bharat baiery, Hyderabad, Lingampally, raj, india, Pin Code : 335001', '0', '0', '5-Feb-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"04-02-2021 11:07:03pm\"]]', 'received', '2021-02-03 18:30:00', '4', 'normal', '', NULL, 0, 0),
(51, 51, 0, 988542, '9100370659', 290, 0, 0, 0, 0, 0, '-', 0, 290, 'cod', 'chintal, dwarakapuri colony, Hyderabad, Lingampally, telangana, india, Pin Code : 500054', '0', '0', '6-Feb-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"05-02-2021 01:50:25pm\"]]', 'received', '2021-02-04 18:30:00', '2', 'normal', '', NULL, 0, 0),
(52, 52, 0, 130736, '9133755736', 700, 0, 39.6, 5.66, 0, 0, '-', 0, 739.6, 'cod', 'Gospadu, jevb, Hyderabad, Lingampally, India, India, Pin Code : 518573', '0', '0', '12-Feb-2021 - Afternoon 12 AM to 2 PM', '[[\"received\",\"11-02-2021 05:03:33pm\"]]', 'received', '2021-02-10 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(53, 52, 0, 778688, '9133755736', 630, 0, 0, 0, 0, 0, '-', 0, 630, 'cod', 'Gospadu, jevb, Hyderabad, Lingampally, India, India, Pin Code : 518573', '0', '0', '12-Feb-2021 - Evening 2 PM to 6 PM', '[[\"received\",\"11-02-2021 05:05:04pm\"]]', 'received', '2021-02-10 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(54, 52, 0, 631690, '9133755736', 195, 0, 0, 0, 0, 0, '-', 0, 205, 'RazorPay', 'Gospadu, jevb, Hyderabad, Lingampally, India, India, Pin Code : 518573', '0', '0', '12-Feb-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"11-02-2021 05:06:19pm\"]]', 'received', '2021-02-10 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(55, 48, 0, 127778, '7207303636', 739, 0, 0, 0, 0, 0, '-', 0, 739, 'cod', '15-18, gmart, Hyderabad, Lingampally, telengana, india, Pin Code : 500015', '0', '0', '13-Feb-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-10 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(56, 48, 0, 255097, '7207303636', 1775, 0, 0, 0, 0, 0, '-', 0, 1775, 'cod', '15-18, gmart, Hyderabad, Lingampally, telengana, india, Pin Code : 500015', '0', '0', '12-Feb-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"11-02-2021 10:37:00pm\"]]', 'received', '2021-02-10 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(57, 6, 0, 518997, '9515109126', 145, 10, 0, 0, 0, 0, '-', 0, 155, 'cod', 'flot no 401 block a, pochamma temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500019', '0', '0', '23-Feb-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"22-02-2021 02:03:41pm\"],[\"processed\",\"22-02-2021 02:18:15pm\"]]', 'processed', '2021-02-21 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(58, 53, 0, 760057, '7780174532', 444, 0, 22.2, 5, 0, 0, '-', 0, 466.2, 'PayPal', 'kukutpally, temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500089', '0', '0', '22-Feb-2021 - Night 6 PM to 9 PM', '[[\"awaiting_payment\",\"22-02-2021 03:00:57pm\"],[\"received\",\"08-06-2021 01:40:03am\"]]', 'received', '2021-02-21 18:30:00', '6', 'normal', '', NULL, 0, 0),
(59, 53, 0, 239166, '7780174532', 444, 0, 22.2, 5, 0, 0, '-', 0, 466.2, 'Midtrans', 'kukutpally, temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500089', '0', '0', '22-Feb-2021 - Night 6 PM to 9 PM', '[[\"awaiting_payment\",\"22-02-2021 03:01:39pm\"],[\"received\",\"22-02-2021 03:26:26pm\"],[\"processed\",\"22-02-2021 03:26:34pm\"]]', 'processed', '2021-02-21 18:30:00', '6', 'normal', '', NULL, 0, 0),
(60, 53, 0, 629645, '7780174532', 444, 0, 22.2, 5, 0, 0, '-', 0, 466.2, 'Midtrans', 'kukutpally, temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500089', '0', '0', '22-Feb-2021 - Night 6 PM to 9 PM', '[[\"awaiting_payment\",\"22-02-2021 03:01:50pm\"],[\"received\",\"22-02-2021 03:24:28pm\"],[\"processed\",\"22-02-2021 03:25:15pm\"],[\"shipped\",\"22-02-2021 03:25:22pm\"],[\"delivered\",\"22-02-2021 03:25:32pm\"]]', 'delivered', '2021-02-21 18:30:00', '6', 'normal', '', NULL, 0, 0),
(61, 53, 0, 479492, '7780174532', 444, 0, 22.2, 5, 0, 0, '-', 0, 466.2, 'cod', 'kukutpally, temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500089', '0', '0', '22-Feb-2021 - Night 6 PM to 9 PM', '[[\"received\",\"22-02-2021 03:02:17pm\"]]', 'received', '2021-02-21 18:30:00', '6', 'normal', '', NULL, 0, 0),
(62, 53, 0, 389855, '7780174532', 1288, 0, 0, 0, 0, 0, '-', 0, 1288, 'cod', 'kukutpally, temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500089', '0', '0', '22-Feb-2021 - Night 6 PM to 9 PM', '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-21 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(63, 53, 0, 426355, '7780174532', 703, 0, 0, 0, 0, 0, '-', 0, 703, 'cod', 'kukutpally, temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500089', '0', '0', '23-Feb-2021 - Afternoon 12 AM to 2 PM', '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-21 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(64, 6, 0, 439724, '9515109126', 97, 10, 0, 0, 17, 0, '-', 0, 90, 'RazorPay', 'flot no 401 block a, pochamma temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500019', '0', '0', '22-Feb-2021 - Night 6 PM to 9 PM', '[[\"received\",\"22-02-2021 04:48:21pm\"]]', 'received', '2021-02-21 18:30:00', '10003', 'normal', '', NULL, 0, 0),
(65, 6, 1, 126899, '9515109126', 119, 100, 0, 0, 0, 0, '-', 0, 219, 'cod', '401, pochamma temple, Hyderabad, kukatpally, Telangana, India, Pin Code : 500019', '-0.0010997056960347867', '-1.6294419765472412E-4', '23-Feb-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"22-02-2021 11:08:03pm\"],[\"processed\",\"22-02-2021 11:17:03pm\"],[\"shipped\",\"22-02-2021 11:17:03pm\"]]', 'shipped', '2021-02-21 18:30:00', '10002', 'normal', '', NULL, 0, 0),
(66, 6, 0, 948008, '9515109126', 295, 100, 39.6, 13.42, 0, 0, '-', 0, 434.6, 'cod', '401, pochamma temple, Hyderabad, kukatpally, Telangana, India, Pin Code : 500019', '17.490299474529145', '78.3194313570857', '1-Mar-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"25-02-2021 01:48:57pm\"]]', 'received', '2021-02-24 18:30:00', '10000', 'normal', '', NULL, 0, 0),
(71, 50, 0, 220373, '7976599339', 780, 0, 0, 0, 0, 0, '-', 0, 780, 'cod', 'jawahar nagar, Bharat bakery, Hyderabad, Lingampally, raj, india, Pin Code : 335001', '0', '0', '2021-03-11 - Evening 2 PM to 6 PM', '[[\"received\",\"04-03-2021 11:02:29pm\"],[\"reschedule\",\"09-03-2021 04:37:37pm\"]]', 'reschedule', '2021-03-03 18:30:00', '10000', 'subscription', '08-Mar-2021', NULL, 0, 0),
(72, 50, 0, 772373, '7976599339', 415, 0, 39.6, 9.54, 0, 0, '-', 0, 454.6, 'cod', 'jawahar nagar, Bharat bakery, Hyderabad, Lingampally, raj, india, Pin Code : 335001', '0', '0', '10-Mar-2021 - Afternoon 12 AM to 2 PM', '[[\"received\",\"04-03-2021 11:10:44pm\"]]', 'received', '2021-03-03 18:30:00', '10000', 'normal', 'start_date', NULL, 0, 0),
(73, 50, 0, 341665, '7976599339', 780, 0, 0, 0, 0, 0, '-', 0, 780, 'cod', 'jawahar nagar, Bharat bakery, Hyderabad, Lingampally, raj, india, Pin Code : 335001', '0', '0', '11-Mar-2021 - Afternoon 12 AM to 2 PM', '[[\"received\",\"05-03-2021 02:39:42pm\"],[\"reschedule\",\"09-03-2021 10:42:56pm\"],[\"processed\",\"09-03-2021 10:43:30pm\"]]', 'processed', '2021-03-04 18:30:00', '10000', 'subscription', '05-Mar-2021', NULL, 0, 0),
(78, 53, 0, 584163, '7780174532', 780, 0, 0, 0, 0, 0, '-', 0, 780, 'cod', 'lingampally, temple, null, null, Telangana, India, Pin Code : 500019', '17.743363223573702', '78.33966996520758', '30-Mar-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"30-03-2021 10:06:58am\"]]', 'received', '2021-03-29 18:30:00', '10000', 'subscription', '30-Mar-2021', NULL, 0, 0),
(76, 6, 0, 433605, '9515109126', 1055, 0, 0, 0, 300, 0, '-', 0, 755, 'cod', '401, pochamma temple, Hyderabad, kukatpally, Telangana, India, Pin Code : 500019', '17.490299474529145', '78.3194313570857', '9-Mar-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"05-03-2021 04:33:48pm\"]]', 'received', '2021-03-04 18:30:00', '10000', 'normal', 'start_date', NULL, 0, 0),
(77, 53, 0, 206715, '7780174532', 311, 0, 0, 0, 0, 0, '-', 0, 311, 'cod', 'lingampally, temple, Hyderabad, Lingampally, Telangana, India, Pin Code : 500019', '17.743363223573702', '78.33966996520758', '12-Mar-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"05-03-2021 06:00:24pm\"],[\"reschedule\",\"12-03-2021 09:47:58pm\"]]', 'reschedule', '2021-03-04 18:30:00', '10000', 'normal', 'start_date', NULL, 0, 0),
(79, 6, 0, 643867, '9515109126', 448, 0, 2.5, 0.56, 450.5, 0, '-', 0, 450.5, 'cod', '401, pochamma temple, Hyderabad, Madhapur, Telangana, India, Pin Code : 500019', '17.490299474529145', '78.3194313570857', '1-Jul-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"26-06-2021 04:22:42pm\"]]', 'received', '2021-06-25 18:30:00', '10000', '', '', NULL, 0, 0),
(80, 55, 0, 236289, '9381570624', 305, 0, 39.6, 12.98, 0, 0, '-', 0, 344.6, 'cod', 'sr Nagar, statch, Hyderabad, Madhapur, SR Nagar, India, Pin Code : 500019', '17.442536', '78.4451755', '27-Jun-2021 - Night 6 PM to 9 PM', '[[\"received\",\"26-06-2021 04:33:14pm\"],[\"reschedule\",\"26-06-2021 05:23:54pm\"]]', 'reschedule', '2021-06-25 18:30:00', '10000', '', '', NULL, 0, 0),
(81, 56, 0, 385927, '8142815139', 60, 15, 0, 0, 0, 0, '-', 0, 75, 'cod', 'plot no 316 Raghavendra Colony, Bheeramguda,, Thirumala Hospital Besides, Hyderabad, Madhapur, Telangana, India, Pin Code : 502032', '0', '0', '30-Jun-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"26-06-2021 05:45:29pm\"]]', 'received', '2021-06-25 18:30:00', '10003', '', '', NULL, 0, 0),
(82, 55, 0, 705497, '9381570624', 500, 0, 79.2, 15.84, 0, 0, '-', 0, 579.2, 'cod', 'sr Nagar, statch, Hyderabad, Madhapur, SR Nagar, India, Pin Code : 500019', '0', '0', '26-Jun-2021 - Night 6 PM to 9 PM', '[[\"received\",\"26-06-2021 06:19:42pm\"]]', 'received', '2021-06-25 18:30:00', '10005', '', '', NULL, 0, 0),
(83, 55, 0, 743492, '9381570624', 280, 0, 39.6, 14.14, 0, 0, '-', 0, 319.6, 'cod', 'sr Nagar, statch, Hyderabad, Madhapur, SR Nagar, India, Pin Code : 500019', '0', '0', '26-Jun-2021 - Night 6 PM to 9 PM', '[[\"received\",\"26-06-2021 06:35:58pm\"]]', 'received', '2021-06-25 18:30:00', '10006', '', '', NULL, 0, 0),
(84, 55, 0, 622781, '9381570624', 1889, 0, 22.2, 1.18, 0, 0, '-', 0, 1911.2, 'cod', 'sr Nagar, statch, Hyderabad, Madhapur, SR Nagar, India, Pin Code : 500019', '0', '0', '26-Jun-2021 - Night 6 PM to 9 PM', '[[\"received\",\"26-06-2021 06:53:20pm\"]]', 'received', '2021-06-25 18:30:00', '10006', '', '', NULL, 0, 0),
(85, 55, 0, 756986, '9381570624', 518, 0, 0, 0, 0, 0, '-', 0, 518, 'cod', 'sr Nagar, statch, Hyderabad, Madhapur, SR Nagar, India, Pin Code : 500019', '0', '0', '26-Jun-2021 - Night 6 PM to 9 PM', '[[\"received\",\"26-06-2021 06:57:30pm\"]]', 'received', '2021-06-25 18:30:00', '10006', '', '', NULL, 0, 0),
(86, 51, 0, 678284, '9100370659', 195, 0, 0, 0, 0, 0, '-', 0, 195, 'cod', 'chintal, dwarakapuri colony, null, Madhapur, telangana, india, Pin Code : 500054', '0', '0', '25-Jul-2021 - Morning 9 AM to 12 PM', '[[\"received\",\"24-07-2021 03:39:39pm\"]]', 'received', '2021-07-23 18:30:00', '10000', '', '', NULL, 0, 0),
(87, 2, 0, NULL, '9676971805', 0, 100, 0, 0, 0, 0, NULL, 0, 0, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', '2021-08-02T09:52', '', '', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(88, 3, 0, NULL, '7995922960', 0, 100, 0, 0, 0, 0, NULL, 0, 0, 'cod', 'NA , NA, sangareddy X road, 502285', '17.58984037334654', '78.08609090745449', '2021-08-02T09:54', '', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(89, 4, 0, NULL, '9703694602', 0, 100, 0, 0, 0, 0, NULL, 0, 0, 'cod', 'NA , NA, raviteja apartments lingampally, 500019', '17.3362009', '77.9051332', '2021-08-02T09:59', '[[\"received\",\"02-08-2021 09:59:18\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(90, 4, 0, NULL, '9703694602', 0, 100, 0, 0, 0, 0, NULL, 0, 0, 'cod', 'NA , NA, raviteja apartments lingampally, 500019', '17.3362009', '77.9051332', '2021-08-02T09:59', '[[\"received\",\"02-08-2021 10:00:09 AM\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(91, 2, 0, NULL, '9676971805', 0, 100, 0, 0, 0, 0, NULL, 0, 0, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', '2021-08-02T10:57', '[[\"received\",\"02-08-2021 10:57:54 AM\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(92, 2, 0, NULL, '9676971805', 0, 100, 0, 0, 0, 0, NULL, 0, 0, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', '2021-08-02T10:57', '[[\"received\",\"02-08-2021 10:59:40 AM\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(93, 2, 0, NULL, '9676971805', 0, 100, 0, 0, 0, 0, NULL, 0, 0, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', '2021-08-02T11:01', '[[\"received\",\"02-08-2021 11:01:16 AM\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(94, 2, 0, NULL, '9676971805', 0, 100, 0, 0, 0, 0, NULL, 0, 0, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', '2021-08-02T11:02', '[[\"received\",\"02-08-2021 11:02:58 AM\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(95, 2, 0, NULL, '9676971805', -30.96, 100, 30.96, 0, 0, 0, NULL, 0, 100, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', '2021-08-02T11:02', '[[\"received\",\"02-08-2021 11:17:39 AM\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(96, 2, 0, NULL, '9676971805', 141.04, 100, 30.96, 0, 0, 0, NULL, 0, 272, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', '2021-08-02T11:02', '[[\"received\",\"02-08-2021 11:18:54 AM\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(97, 2, 0, NULL, '9676971805', 141.04, 0, 30.96, 0, 0, 0, NULL, 0, 172, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', '2021-08-02T11:02', '[[\"received\",\"02-08-2021 11:57:42 AM\"]]', 'received', '2021-08-01 18:30:00', '10008', 'normal', '', 0, 0, 0),
(98, 1, 0, NULL, '9177684763', 10, 0, 0, 0, 0, 0, NULL, 0, 10, 'cod', 'NA , NA, H-no:501-balaji apartment taranagar lingampally, 502319', '17.4953437', '78.3225987', 'Evening 2 PM to 6 PM', '[[\"received\",\"05-08-2021 11:53:51 AM\"]]', 'received', '2021-08-04 18:30:00', '10008', 'normal', '', 0, 0, 0),
(99, 1, 0, NULL, '9177684763', 10, 0, 0, 0, 0, 0, NULL, 0, 10, 'cod', 'NA , NA, H-no:501-balaji apartment taranagar lingampally, 502319', '17.4953437', '78.3225987', 'Evening 2 PM to 6 PM', '[[\"received\",\"05-08-2021 11:56:15 AM\"]]', 'received', '2021-08-04 18:30:00', '10008', 'normal', '', 0, 0, 1),
(100, 1, 0, NULL, '9177684763', 10, 0, 0, 0, 0, 0, NULL, 0, 10, 'cod', 'NA , NA, H-no:501-balaji apartment taranagar lingampally, 502319', '17.4953437', '78.3225987', 'Evening 2 PM to 6 PM', '[[\"received\",\"05-08-2021 11:58:24 AM\"]]', 'received', '2021-08-04 18:30:00', '10008', 'subscription', '', 0, 0, 1),
(101, 1, 0, NULL, '9177684763', 10, 0, 0, 0, 0, 0, NULL, 0, 10, 'cod', 'NA , NA, H-no:501-balaji apartment taranagar lingampally, 502319', '17.4953437', '78.3225987', 'Evening 2 PM to 6 PM', '[[\"received\",\"05-08-2021 11:58:26 AM\"]]', 'received', '2021-08-04 18:30:00', '10008', 'subscription', '', 0, 0, 1),
(102, 3, 0, NULL, '7995922960', 60, 0, 0, 0, 0, 0, NULL, 0, 60, 'cod', 'NA , NA, sangareddy X road, 502285', '17.58984037334654', '78.08609090745449', 'Morning 9 AM to 12 PM', '[[\"received\",\"05-08-2021 12:00:15 PM\"]]', 'received', '2021-08-04 18:30:00', '10008', 'normal', '', 0, 0, 0),
(103, 3, 0, NULL, '7995922960', 60, 0, 0, 0, 0, 0, NULL, 0, 60, 'cod', 'NA , NA, sangareddy X road, 502285', '17.58984037334654', '78.08609090745449', 'Morning 9 AM to 12 PM', '[[\"received\",\"05-08-2021 12:00:55 PM\"]]', 'received', '2021-08-04 18:30:00', '10008', 'normal', '', 0, 0, 0),
(104, 2, 0, NULL, '9676971805', 20, 0, 0, 0, 0, 0, NULL, 0, 20, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', 'Evening 2 PM to 6 PM', '[[\"received\",\"17-08-2021 14:57:16 PM\"]]', 'received', '2021-08-17 09:27:16', '10008', 'subscription', '', 0, 0, 1),
(105, 1, 0, NULL, '9177684763', 30, 0, 0, 0, 0, 0, NULL, 0, 30, 'cod', 'NA , NA, H-no:501-balaji apartment taranagar lingampally, 502319', '17.4953437', '78.3225987', 'Evening 2 PM to 6 PM', '[[\"received\",\"17-08-2021 15:00:52 PM\"]]', 'received', '2021-08-17 09:30:52', '10008', 'normal', '', 0, 0, 0),
(106, 1, 0, NULL, '9177684763', 45, 0, 0, 0, 0, 0, NULL, 0, 45, 'cod', 'NA , NA, H-no:501-balaji apartment taranagar lingampally, 502319', '17.4953437', '78.3225987', 'Evening 2 PM to 6 PM', '[[\"received\",\"17-08-2021 15:01:25 PM\"]]', 'received', '2021-08-17 09:31:25', '10008', 'subscription', '', 0, 0, 1),
(107, 1, 0, NULL, '9177684763', 30, 0, 0, 0, 0, 0, NULL, 0, 30, 'cod', 'NA , NA, H-no:501-balaji apartment taranagar lingampally, 502319', '17.4953437', '78.3225987', 'Evening 2 PM to 6 PM', '[[\"received\",\"17-08-2021 15:04:25 PM\"]]', 'received', '2021-08-17 09:34:25', '10008', 'subscription', '', 0, 0, 1),
(108, 2, 0, NULL, '9676971805', 180, 0, 0, 0, 0, 0, NULL, 0, 180, 'cod', 'NA , NA, 5-545 chanda nagar near railway station, 510037', '17.5040243', '78.448589', 'Morning 9 AM to 12 PM', '[[\"received\",\"21-08-2021 15:09:08 PM\"]]', 'received', '2021-08-21 09:39:08', '10000', 'subscription', '', 0, 0, 1);

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

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_variant_id`, `quantity`, `price`, `discounted_price`, `tax_amount`, `tax_percentage`, `discount`, `sub_total`, `deliver_by`, `status`, `active_status`, `date_added`) VALUES
(1, 4, 1, 65, 1, 245, 200, 0, 0, 0, 200, NULL, '[[\"received\",\"01-09-2020 06:13:45pm\"],[\"processed\",\"08-09-2020 07:51:53pm\"],[\"shipped\",\"08-09-2020 07:51:53pm\"],[\"delivered\",\"08-09-2020 07:51:53pm\"]]', 'delivered', '2020-09-01 17:43:45'),
(2, 4, 1, 68, 1, 75, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"01-09-2020 06:13:45pm\"],[\"processed\",\"08-09-2020 07:51:53pm\"],[\"shipped\",\"08-09-2020 07:51:53pm\"],[\"delivered\",\"08-09-2020 07:51:53pm\"]]', 'delivered', '2020-09-01 17:43:45'),
(3, 4, 1, 13, 1, 10, 7, 0, 0, 0, 7, NULL, '[[\"received\",\"01-09-2020 06:13:45pm\"],[\"processed\",\"08-09-2020 07:51:53pm\"],[\"shipped\",\"08-09-2020 07:51:53pm\"],[\"delivered\",\"08-09-2020 07:51:53pm\"]]', 'delivered', '2020-09-01 17:43:45'),
(4, 4, 1, 148, 1, 60, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"01-09-2020 06:13:45pm\"],[\"processed\",\"08-09-2020 07:51:53pm\"],[\"shipped\",\"08-09-2020 07:51:53pm\"],[\"delivered\",\"08-09-2020 07:51:53pm\"]]', 'delivered', '2020-09-01 17:43:45'),
(5, 4, 1, 125, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"01-09-2020 06:13:45pm\"],[\"processed\",\"08-09-2020 07:51:53pm\"],[\"shipped\",\"08-09-2020 07:51:53pm\"],[\"delivered\",\"08-09-2020 07:51:53pm\"]]', 'delivered', '2020-09-01 17:43:45'),
(6, 5, 2, 58, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"01-09-2020 08:20:02pm\"],[\"cancelled\",\"01-09-2020 08:26:02pm\"]]', 'cancelled', '2020-09-01 19:50:02'),
(7, 5, 3, 58, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"01-09-2020 08:21:36pm\"],[\"processed\",\"08-09-2020 07:51:29pm\"],[\"shipped\",\"08-09-2020 07:51:29pm\"],[\"delivered\",\"08-09-2020 07:51:29pm\"]]', 'delivered', '2020-09-01 19:51:36'),
(8, 11, 4, 138, 1, 40, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"01-09-2020 08:23:58pm\"],[\"processed\",\"08-09-2020 07:50:59pm\"],[\"shipped\",\"08-09-2020 07:50:59pm\"],[\"delivered\",\"08-09-2020 07:50:59pm\"]]', 'delivered', '2020-09-01 19:53:58'),
(9, 11, 4, 139, 1, 70, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"01-09-2020 08:23:58pm\"],[\"processed\",\"08-09-2020 07:50:59pm\"],[\"shipped\",\"08-09-2020 07:50:59pm\"],[\"delivered\",\"08-09-2020 07:50:59pm\"]]', 'delivered', '2020-09-01 19:53:58'),
(10, 12, 5, 68, 1, 75, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(11, 12, 5, 154, 2, 140, 90, 0, 0, 0, 180, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(12, 12, 5, 38, 1, 60, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(13, 12, 5, 138, 4, 30, 20, 0, 0, 0, 80, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(14, 12, 5, 145, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(15, 12, 5, 136, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(16, 12, 5, 34, 2, 38, 30, 0, 0, 0, 60, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(17, 12, 5, 27, 1, 30, 24, 0, 0, 0, 24, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(18, 12, 5, 104, 1, 40, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(19, 12, 5, 39, 2, 40, 20, 0, 0, 0, 40, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(20, 12, 5, 35, 6, 8, 5, 0, 0, 0, 30, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(21, 12, 5, 77, 5, 10, 5, 0, 0, 0, 25, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(22, 12, 5, 78, 5, 10, 5, 0, 0, 0, 25, NULL, '[[\"received\",\"04-09-2020 10:15:31am\"],[\"processed\",\"04-09-2020 10:42:54pm\"],[\"shipped\",\"05-09-2020 07:41:23am\"],[\"delivered\",\"05-09-2020 07:41:23am\"]]', 'delivered', '2020-09-04 09:45:31'),
(23, 12, 6, 94, 2, 75, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"04-09-2020 10:20:03am\"],[\"processed\",\"04-09-2020 10:07:57pm\"],[\"shipped\",\"05-09-2020 07:40:45am\"],[\"delivered\",\"05-09-2020 07:40:45am\"]]', 'delivered', '2020-09-04 09:50:03'),
(24, 12, 6, 72, 2, 27, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"04-09-2020 10:20:03am\"],[\"processed\",\"04-09-2020 10:07:57pm\"],[\"shipped\",\"05-09-2020 07:40:45am\"],[\"delivered\",\"05-09-2020 07:40:45am\"]]', 'delivered', '2020-09-04 09:50:03'),
(25, 12, 6, 92, 2, 70, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"04-09-2020 10:20:03am\"],[\"processed\",\"04-09-2020 10:07:57pm\"],[\"shipped\",\"05-09-2020 07:40:45am\"],[\"delivered\",\"05-09-2020 07:40:45am\"]]', 'delivered', '2020-09-04 09:50:03'),
(26, 13, 7, 100, 2, 60, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"04-09-2020 06:36:37pm\"],[\"processed\",\"04-09-2020 10:14:25pm\"],[\"shipped\",\"08-09-2020 07:50:33pm\"],[\"delivered\",\"08-09-2020 07:50:33pm\"]]', 'delivered', '2020-09-04 18:06:37'),
(27, 13, 7, 54, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"04-09-2020 06:36:37pm\"],[\"processed\",\"04-09-2020 10:14:25pm\"],[\"shipped\",\"08-09-2020 07:50:33pm\"],[\"delivered\",\"08-09-2020 07:50:33pm\"]]', 'delivered', '2020-09-04 18:06:37'),
(28, 13, 7, 133, 1, 25, 16, 0, 0, 0, 16, NULL, '[[\"received\",\"04-09-2020 06:36:37pm\"],[\"processed\",\"04-09-2020 10:14:25pm\"],[\"shipped\",\"08-09-2020 07:50:33pm\"],[\"delivered\",\"08-09-2020 07:50:33pm\"]]', 'delivered', '2020-09-04 18:06:38'),
(29, 13, 8, 100, 2, 60, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"04-09-2020 06:36:38pm\"],[\"processed\",\"04-09-2020 10:09:01pm\"],[\"shipped\",\"05-09-2020 10:57:50pm\"],[\"delivered\",\"05-09-2020 10:57:50pm\"]]', 'delivered', '2020-09-04 18:06:38'),
(30, 13, 8, 54, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"04-09-2020 06:36:38pm\"],[\"processed\",\"04-09-2020 10:09:01pm\"],[\"shipped\",\"05-09-2020 10:57:50pm\"],[\"delivered\",\"05-09-2020 10:57:50pm\"]]', 'delivered', '2020-09-04 18:06:38'),
(31, 13, 8, 133, 1, 25, 16, 0, 0, 0, 16, NULL, '[[\"received\",\"04-09-2020 06:36:38pm\"],[\"processed\",\"04-09-2020 10:09:01pm\"],[\"shipped\",\"05-09-2020 10:57:50pm\"],[\"delivered\",\"05-09-2020 10:57:50pm\"]]', 'delivered', '2020-09-04 18:06:38'),
(32, 16, 9, 51, 2, 140, 120, 0, 0, 0, 240, NULL, '[[\"received\",\"11-09-2020 01:12:37am\"],[\"processed\",\"11-09-2020 01:09:50pm\"],[\"shipped\",\"11-09-2020 03:04:00pm\"],[\"delivered\",\"11-09-2020 03:04:00pm\"]]', 'delivered', '2020-09-11 00:42:37'),
(33, 16, 9, 58, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"11-09-2020 01:12:37am\"],[\"processed\",\"11-09-2020 01:09:50pm\"],[\"shipped\",\"11-09-2020 03:04:00pm\"],[\"delivered\",\"11-09-2020 03:04:00pm\"]]', 'delivered', '2020-09-11 00:42:37'),
(34, 16, 9, 87, 1, 105, 77, 0, 0, 0, 77, NULL, '[[\"received\",\"11-09-2020 01:12:37am\"],[\"processed\",\"11-09-2020 01:09:50pm\"],[\"shipped\",\"11-09-2020 03:04:00pm\"],[\"delivered\",\"11-09-2020 03:04:00pm\"]]', 'delivered', '2020-09-11 00:42:37'),
(35, 18, 10, 35, 1, 8, 5, 0, 0, 0, 5, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(36, 18, 10, 74, 1, 10, 6, 0, 0, 0, 6, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(37, 18, 10, 13, 2, 12, 10, 0, 0, 0, 20, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(38, 18, 10, 75, 3, 10, 5, 0, 0, 0, 15, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(39, 18, 10, 76, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(40, 18, 10, 77, 1, 10, 5, 0, 0, 0, 5, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(41, 18, 10, 78, 1, 30, 20, 0, 0, 0, 20, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(42, 18, 10, 14, 2, 15, 10, 0, 0, 0, 20, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(43, 18, 10, 38, 3, 60, 40, 0, 0, 0, 120, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(44, 18, 10, 4, 2, 60, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(45, 18, 10, 138, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(46, 18, 10, 26, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(47, 18, 10, 190, 1, 70, 55, 0, 0, 0, 55, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(48, 18, 10, 2, 1, 70, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(49, 18, 10, 9, 1, 92, 65, 0, 0, 0, 65, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(50, 18, 10, 47, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(51, 18, 10, 46, 1, 110, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(52, 18, 10, 11, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(53, 18, 10, 19, 1, 45, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(54, 18, 10, 87, 1, 105, 77, 0, 0, 0, 77, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(55, 18, 10, 27, 1, 30, 24, 0, 0, 0, 24, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(56, 18, 10, 40, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(57, 18, 10, 43, 3, 120, 60, 0, 0, 0, 180, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(58, 18, 10, 39, 2, 40, 20, 0, 0, 0, 40, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(59, 18, 10, 6, 1, 70, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(60, 18, 10, 7, 3, 90, 70, 0, 0, 0, 210, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(61, 18, 10, 21, 1, 70, 69, 0, 0, 0, 69, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(62, 18, 10, 96, 2, 50, 30, 0, 0, 0, 60, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(63, 18, 10, 95, 2, 40, 25, 0, 0, 0, 50, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(64, 18, 10, 80, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"11-09-2020 09:07:40pm\"],[\"processed\",\"12-09-2020 03:55:52am\"],[\"shipped\",\"12-09-2020 10:25:26am\"],[\"delivered\",\"12-09-2020 10:25:26am\"]]', 'delivered', '2020-09-11 20:37:40'),
(65, 17, 11, 77, 2, 10, 5, 0, 0, 0, 10, NULL, '[[\"received\",\"11-09-2020 09:52:11pm\"],[\"processed\",\"12-09-2020 03:55:40am\"],[\"shipped\",\"12-09-2020 10:32:58am\"],[\"delivered\",\"12-09-2020 10:32:58am\"]]', 'delivered', '2020-09-11 21:22:11'),
(66, 17, 11, 78, 2, 30, 20, 0, 0, 0, 40, NULL, '[[\"received\",\"11-09-2020 09:52:11pm\"],[\"processed\",\"12-09-2020 03:55:40am\"],[\"shipped\",\"12-09-2020 10:32:58am\"],[\"delivered\",\"12-09-2020 10:32:58am\"]]', 'delivered', '2020-09-11 21:22:11'),
(67, 17, 11, 35, 3, 8, 5, 0, 0, 0, 15, NULL, '[[\"received\",\"11-09-2020 09:52:11pm\"],[\"processed\",\"12-09-2020 03:55:40am\"],[\"shipped\",\"12-09-2020 10:32:58am\"],[\"delivered\",\"12-09-2020 10:32:58am\"]]', 'delivered', '2020-09-11 21:22:11'),
(68, 17, 11, 68, 1, 75, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"11-09-2020 09:52:11pm\"],[\"processed\",\"12-09-2020 03:55:40am\"],[\"shipped\",\"12-09-2020 10:32:58am\"],[\"delivered\",\"12-09-2020 10:32:58am\"]]', 'delivered', '2020-09-11 21:22:11'),
(69, 17, 11, 79, 1, 10, 5, 0, 0, 0, 5, NULL, '[[\"received\",\"11-09-2020 09:52:11pm\"],[\"processed\",\"12-09-2020 03:55:40am\"],[\"shipped\",\"12-09-2020 10:32:58am\"],[\"delivered\",\"12-09-2020 10:32:58am\"]]', 'delivered', '2020-09-11 21:22:11'),
(70, 17, 11, 75, 2, 10, 5, 0, 0, 0, 10, NULL, '[[\"received\",\"11-09-2020 09:52:11pm\"],[\"processed\",\"12-09-2020 03:55:40am\"],[\"shipped\",\"12-09-2020 10:32:58am\"],[\"delivered\",\"12-09-2020 10:32:58am\"]]', 'delivered', '2020-09-11 21:22:11'),
(71, 19, 12, 103, 2, 145, 130, 0, 0, 0, 260, NULL, '[[\"received\",\"12-09-2020 08:52:41pm\"],[\"processed\",\"13-09-2020 03:53:42pm\"],[\"shipped\",\"13-09-2020 03:53:42pm\"],[\"delivered\",\"13-09-2020 03:53:42pm\"]]', 'delivered', '2020-09-12 20:22:41'),
(72, 21, 13, 58, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"15-09-2020 08:10:36pm\"],[\"processed\",\"15-09-2020 11:09:43pm\"],[\"shipped\",\"16-09-2020 08:43:55am\"],[\"delivered\",\"16-09-2020 08:43:55am\"]]', 'delivered', '2020-09-15 19:40:36'),
(73, 23, 14, 145, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(74, 23, 14, 34, 3, 38, 30, 0, 0, 0, 90, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(75, 23, 14, 112, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(76, 23, 14, 68, 1, 75, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(77, 23, 14, 136, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(78, 23, 14, 180, 1, 25, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(79, 23, 14, 127, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(80, 23, 14, 132, 1, 23, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(81, 23, 14, 13, 1, 12, 10, 0, 0, 0, 10, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(82, 23, 14, 74, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"16-09-2020 11:53:39am\"],[\"processed\",\"16-09-2020 09:55:19pm\"],[\"shipped\",\"17-09-2020 09:59:38am\"],[\"delivered\",\"17-09-2020 09:59:38am\"]]', 'delivered', '2020-09-16 11:23:39'),
(83, 25, 15, 34, 3, 38, 30, 0, 0, 0, 90, NULL, '[[\"received\",\"19-09-2020 04:14:38pm\"],[\"processed\",\"20-09-2020 12:00:41am\"],[\"shipped\",\"20-09-2020 08:34:18am\"],[\"delivered\",\"20-09-2020 08:34:18am\"]]', 'delivered', '2020-09-19 15:44:38'),
(84, 26, 16, 193, 6, 137, 115, 0, 0, 0, 690, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(85, 26, 16, 51, 2, 140, 120, 0, 0, 0, 240, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(86, 26, 16, 55, 1, 90, 55, 0, 0, 0, 55, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(87, 26, 16, 59, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(88, 26, 16, 95, 2, 40, 25, 0, 0, 0, 50, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(89, 26, 16, 19, 1, 45, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(90, 26, 16, 40, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(91, 26, 16, 39, 1, 40, 20, 0, 0, 0, 20, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(92, 26, 16, 21, 1, 70, 69, 0, 0, 0, 69, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(93, 26, 16, 75, 4, 10, 5, 0, 0, 0, 20, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(94, 26, 16, 76, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(95, 26, 16, 13, 2, 12, 10, 0, 0, 0, 20, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(96, 26, 16, 14, 2, 15, 10, 0, 0, 0, 20, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(97, 26, 16, 35, 4, 8, 5, 0, 0, 0, 20, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(98, 26, 16, 68, 2, 75, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(99, 26, 16, 56, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(100, 26, 16, 47, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(101, 26, 16, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(102, 26, 16, 8, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(103, 26, 16, 81, 1, 35, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"20-09-2020 12:00:32pm\"],[\"cancelled\",\"21-09-2020 06:54:51am\"]]', 'cancelled', '2020-09-20 11:30:32'),
(104, 26, 17, 51, 4, 140, 120, 0, 0, 0, 480, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(105, 26, 17, 138, 2, 30, 25, 0, 0, 0, 50, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(106, 26, 17, 46, 1, 110, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(107, 26, 17, 9, 1, 92, 65, 0, 0, 0, 65, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(108, 26, 17, 47, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(109, 26, 17, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(110, 26, 17, 156, 1, 30, 22, 0, 0, 0, 22, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(111, 26, 17, 19, 1, 45, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(112, 26, 17, 40, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(113, 26, 17, 81, 2, 35, 25, 0, 0, 0, 50, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(114, 26, 17, 6, 1, 70, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(115, 26, 17, 35, 4, 8, 5, 0, 0, 0, 20, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(116, 26, 17, 74, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(117, 26, 17, 76, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(118, 26, 17, 13, 3, 12, 10, 0, 0, 0, 30, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(119, 26, 17, 14, 2, 15, 10, 0, 0, 0, 20, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(120, 26, 17, 68, 3, 75, 50, 0, 0, 0, 150, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(121, 26, 17, 58, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(122, 26, 17, 95, 2, 40, 25, 0, 0, 0, 50, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(123, 26, 17, 59, 1, 160, 120, 0, 0, 0, 120, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(124, 26, 17, 55, 1, 120, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(125, 26, 17, 77, 4, 12, 8, 0, 0, 0, 32, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(126, 26, 17, 39, 1, 40, 20, 0, 0, 0, 20, NULL, '[[\"received\",\"21-09-2020 10:26:13am\"],[\"processed\",\"22-09-2020 08:18:34am\"],[\"shipped\",\"22-09-2020 08:18:34am\"],[\"delivered\",\"22-09-2020 09:14:52am\"]]', 'delivered', '2020-09-21 09:56:13'),
(127, 26, 18, 193, 2, 137, 115, 0, 0, 0, 230, NULL, '[[\"received\",\"22-09-2020 11:48:10pm\"],[\"cancelled\",\"22-09-2020 11:56:42pm\"]]', 'cancelled', '2020-09-22 23:18:10'),
(128, 26, 18, 181, 2, 299, 239, 0, 0, 0, 478, NULL, '[[\"received\",\"22-09-2020 11:48:10pm\"],[\"cancelled\",\"22-09-2020 11:48:32pm\"]]', 'cancelled', '2020-09-22 23:18:10'),
(129, 29, 19, 13, 1, 12, 10, 0, 0, 0, 10, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(130, 29, 19, 78, 2, 30, 20, 0, 0, 0, 40, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(131, 29, 19, 79, 2, 13, 10, 0, 0, 0, 20, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(132, 29, 19, 35, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(133, 29, 19, 4, 1, 60, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(134, 29, 19, 38, 2, 60, 45, 0, 0, 0, 90, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(135, 29, 19, 144, 1, 40, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(136, 29, 19, 146, 1, 120, 80, 0, 0, 0, 80, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(137, 29, 19, 170, 1, 70, 52, 0, 0, 0, 52, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(138, 29, 19, 174, 1, 70, 58, 0, 0, 0, 58, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(139, 29, 19, 190, 2, 18, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(140, 29, 19, 159, 1, 35, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(141, 29, 19, 131, 1, 46, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(142, 29, 19, 31, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(143, 29, 19, 32, 1, 50, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(144, 29, 19, 27, 1, 30, 24, 0, 0, 0, 24, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(145, 29, 19, 30, 1, 65, 59, 0, 0, 0, 59, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(146, 29, 19, 113, 1, 160, 140, 0, 0, 0, 140, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(147, 29, 19, 3, 2, 35, 26, 0, 0, 0, 52, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(148, 29, 19, 7, 1, 180, 160, 0, 0, 0, 160, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(149, 29, 19, 68, 1, 75, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(150, 29, 19, 186, 1, 85, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(151, 29, 19, 51, 1, 140, 120, 0, 0, 0, 120, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(152, 29, 19, 53, 1, 400, 299, 0, 0, 0, 299, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(153, 29, 19, 99, 1, 160, 135, 0, 0, 0, 135, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(154, 29, 19, 54, 1, 40, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(155, 29, 19, 58, 2, 50, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(156, 29, 19, 57, 1, 80, 65, 0, 0, 0, 65, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(157, 29, 19, 184, 1, 160, 140, 0, 0, 0, 140, NULL, '[[\"received\",\"27-09-2020 11:39:18am\"],[\"processed\",\"28-09-2020 12:58:59am\"],[\"shipped\",\"28-09-2020 09:18:43am\"],[\"delivered\",\"28-09-2020 09:18:43am\"]]', 'delivered', '2020-09-27 11:09:18'),
(158, 30, 20, 38, 2, 60, 45, 0, 0, 0, 90, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(159, 30, 20, 26, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(160, 30, 20, 9, 2, 92, 65, 0, 0, 0, 130, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(161, 30, 20, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(162, 30, 20, 40, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(163, 30, 20, 48, 1, 70, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(164, 30, 20, 5, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(165, 30, 20, 35, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(166, 30, 20, 76, 3, 12, 8, 0, 0, 0, 24, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(167, 30, 20, 77, 4, 12, 8, 0, 0, 0, 32, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(168, 30, 20, 13, 3, 12, 10, 0, 0, 0, 30, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(169, 30, 20, 14, 4, 15, 10, 0, 0, 0, 40, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(170, 30, 20, 51, 2, 140, 120, 0, 0, 0, 240, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(171, 30, 20, 58, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"28-09-2020 05:06:23pm\"],[\"cancelled\",\"30-09-2020 08:15:37am\"]]', 'cancelled', '2020-09-28 16:36:23'),
(172, 26, 21, 49, 3, 290, 270, 0, 0, 0, 810, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(173, 26, 21, 38, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(174, 26, 21, 194, 1, 120, 100, 0, 0, 0, 100, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(175, 26, 21, 4, 1, 60, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(176, 26, 21, 138, 1, 40, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(177, 26, 21, 26, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(178, 26, 21, 190, 1, 18, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(179, 26, 21, 9, 2, 92, 65, 0, 0, 0, 130, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(180, 26, 21, 46, 2, 110, 90, 0, 0, 0, 180, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(181, 26, 21, 47, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(182, 26, 21, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(183, 26, 21, 8, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(184, 26, 21, 156, 1, 30, 22, 0, 0, 0, 22, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(185, 26, 21, 19, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(186, 26, 21, 32, 1, 50, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(187, 26, 21, 40, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(188, 26, 21, 43, 1, 190, 170, 0, 0, 0, 170, NULL, '[[\"received\",\"29-09-2020 11:28:30pm\"],[\"cancelled\",\"30-09-2020 08:16:18am\"]]', 'cancelled', '2020-09-29 22:58:30'),
(189, 26, 22, 192, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"29-09-2020 11:29:28pm\"],[\"cancelled\",\"30-09-2020 08:16:48am\"]]', 'cancelled', '2020-09-29 22:59:28'),
(190, 26, 22, 184, 1, 160, 140, 0, 0, 0, 140, NULL, '[[\"received\",\"29-09-2020 11:29:28pm\"],[\"cancelled\",\"30-09-2020 08:16:48am\"]]', 'cancelled', '2020-09-29 22:59:28'),
(191, 26, 22, 100, 1, 80, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"29-09-2020 11:29:28pm\"],[\"cancelled\",\"30-09-2020 08:16:48am\"]]', 'cancelled', '2020-09-29 22:59:28'),
(192, 26, 22, 99, 1, 160, 135, 0, 0, 0, 135, NULL, '[[\"received\",\"29-09-2020 11:29:28pm\"],[\"cancelled\",\"30-09-2020 08:16:48am\"]]', 'cancelled', '2020-09-29 22:59:28'),
(193, 26, 23, 38, 2, 60, 45, 0, 0, 0, 90, NULL, '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 23:09:56'),
(194, 26, 23, 160, 2, 160, 130, 0, 0, 0, 260, NULL, '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 23:09:56'),
(195, 26, 23, 138, 1, 40, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 23:09:56'),
(196, 26, 23, 161, 1, 90, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 23:09:56'),
(197, 26, 23, 173, 2, 80, 65, 0, 0, 0, 130, NULL, '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 23:09:56'),
(198, 26, 23, 34, 3, 80, 68, 0, 0, 0, 204, NULL, '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 23:09:56'),
(199, 26, 23, 68, 2, 75, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 23:09:56'),
(200, 26, 23, 162, 1, 180, 150, 0, 0, 0, 150, NULL, '[[\"received\",\"30-09-2020 11:39:56pm\"],[\"cancelled\",\"01-10-2020 08:35:51am\"]]', 'cancelled', '2020-09-30 23:09:56'),
(201, 31, 24, 34, 3, 80, 68, 0, 0, 0, 204, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(202, 31, 24, 22, 1, 32, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(203, 31, 24, 38, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(204, 31, 24, 142, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(205, 31, 24, 145, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(206, 31, 24, 112, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(207, 31, 24, 127, 2, 25, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(208, 31, 24, 132, 1, 23, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(209, 31, 24, 23, 2, 25, 20, 0, 0, 0, 40, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(210, 31, 24, 32, 1, 50, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(211, 31, 24, 39, 1, 40, 20, 0, 0, 0, 20, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(212, 31, 24, 68, 2, 75, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(213, 31, 24, 35, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(214, 31, 24, 75, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(215, 31, 24, 77, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(216, 31, 24, 13, 1, 12, 10, 0, 0, 0, 10, NULL, '[[\"received\",\"01-10-2020 09:18:45am\"],[\"processed\",\"02-10-2020 07:07:00am\"],[\"shipped\",\"02-10-2020 07:07:00am\"],[\"delivered\",\"02-10-2020 07:07:00am\"]]', 'delivered', '2020-10-01 08:48:45'),
(217, 34, 25, 22, 1, 32, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"03-10-2020 02:25:55pm\"],[\"cancelled\",\"03-10-2020 02:28:57pm\"]]', 'cancelled', '2020-10-03 13:55:55'),
(218, 30, 26, 58, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(219, 30, 26, 51, 1, 140, 120, 0, 0, 0, 120, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(220, 30, 26, 35, 3, 12, 8, 0, 0, 0, 24, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53');
INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_variant_id`, `quantity`, `price`, `discounted_price`, `tax_amount`, `tax_percentage`, `discount`, `sub_total`, `deliver_by`, `status`, `active_status`, `date_added`) VALUES
(221, 30, 26, 76, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(222, 30, 26, 77, 3, 12, 8, 0, 0, 0, 24, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(223, 30, 26, 13, 3, 12, 10, 0, 0, 0, 30, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(224, 30, 26, 14, 3, 15, 10, 0, 0, 0, 30, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(225, 30, 26, 4, 2, 60, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(226, 30, 26, 9, 2, 92, 65, 0, 0, 0, 130, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(227, 30, 26, 46, 1, 110, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(228, 30, 26, 47, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(229, 30, 26, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(230, 30, 26, 156, 2, 30, 22, 0, 0, 0, 44, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(231, 30, 26, 40, 2, 80, 60, 0, 0, 0, 120, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(232, 30, 26, 39, 2, 40, 20, 0, 0, 0, 40, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(233, 30, 26, 5, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(234, 30, 26, 138, 2, 40, 30, 0, 0, 0, 60, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(235, 30, 26, 68, 2, 75, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"05-10-2020 11:35:53pm\"]]', 'received', '2020-10-05 23:05:53'),
(236, 36, 27, 35, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(237, 36, 27, 74, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(238, 36, 27, 75, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(239, 36, 27, 78, 1, 30, 20, 0, 0, 0, 20, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(240, 36, 27, 136, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(241, 36, 27, 145, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(242, 36, 27, 112, 2, 25, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(243, 36, 27, 137, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(244, 36, 27, 148, 1, 60, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"06-10-2020 07:04:12pm\"],[\"processed\",\"07-10-2020 05:38:08am\"],[\"shipped\",\"07-10-2020 07:40:11am\"],[\"delivered\",\"07-10-2020 07:40:11am\"]]', 'delivered', '2020-10-06 18:34:12'),
(245, 35, 28, 160, 1, 160, 130, 0, 0, 0, 130, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(246, 35, 28, 132, 4, 23, 18, 0, 0, 0, 72, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(247, 35, 28, 130, 3, 50, 42, 0, 0, 0, 126, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(248, 35, 28, 10, 3, 22, 15, 0, 0, 0, 45, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(249, 35, 28, 22, 1, 32, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(250, 35, 28, 31, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(251, 35, 28, 27, 1, 30, 24, 0, 0, 0, 24, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(252, 35, 28, 114, 2, 90, 80, 0, 0, 0, 160, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(253, 35, 28, 151, 1, 100, 85, 0, 0, 0, 85, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(254, 35, 28, 35, 10, 12, 8, 0, 0, 0, 80, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(255, 35, 28, 74, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(256, 35, 28, 76, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(257, 35, 28, 13, 1, 12, 10, 0, 0, 0, 10, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(258, 35, 28, 19, 2, 50, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(259, 35, 28, 60, 1, 140, 99, 0, 0, 0, 99, NULL, '[[\"received\",\"06-10-2020 10:07:26pm\"],[\"processed\",\"07-10-2020 05:37:50am\"],[\"shipped\",\"07-10-2020 07:55:02am\"],[\"delivered\",\"07-10-2020 07:55:02am\"]]', 'delivered', '2020-10-06 21:37:26'),
(260, 30, 29, 51, 1, 140, 120, 0, 0, 0, 120, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(261, 30, 29, 58, 2, 50, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(262, 30, 29, 38, 3, 60, 45, 0, 0, 0, 135, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(263, 30, 29, 4, 2, 60, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(264, 30, 29, 138, 2, 40, 30, 0, 0, 0, 60, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(265, 30, 29, 26, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(266, 30, 29, 9, 2, 92, 65, 0, 0, 0, 130, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(267, 30, 29, 46, 1, 110, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(268, 30, 29, 47, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(269, 30, 29, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(270, 30, 29, 156, 4, 30, 22, 0, 0, 0, 88, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(271, 30, 29, 39, 2, 40, 20, 0, 0, 0, 40, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(272, 30, 29, 5, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(273, 30, 29, 35, 3, 12, 8, 0, 0, 0, 24, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(274, 30, 29, 76, 3, 12, 8, 0, 0, 0, 24, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(275, 30, 29, 77, 5, 12, 8, 0, 0, 0, 40, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(276, 30, 29, 13, 5, 12, 10, 0, 0, 0, 50, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(277, 30, 29, 14, 4, 15, 10, 0, 0, 0, 40, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(278, 30, 29, 176, 1, 70, 65, 0, 0, 0, 65, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(279, 30, 29, 19, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(280, 30, 29, 27, 1, 30, 24, 0, 0, 0, 24, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(281, 30, 29, 40, 2, 80, 60, 0, 0, 0, 120, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(282, 30, 29, 68, 2, 75, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"06-10-2020 11:26:08pm\"]]', 'received', '2020-10-06 22:56:08'),
(283, 38, 30, 136, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"08-10-2020 11:47:30pm\"],[\"processed\",\"09-10-2020 09:05:18am\"],[\"shipped\",\"09-10-2020 09:05:18am\"],[\"delivered\",\"09-10-2020 09:05:18am\"]]', 'delivered', '2020-10-08 23:17:30'),
(284, 38, 30, 180, 2, 25, 18, 0, 0, 0, 36, NULL, '[[\"received\",\"08-10-2020 11:47:30pm\"],[\"processed\",\"09-10-2020 09:05:18am\"],[\"shipped\",\"09-10-2020 09:05:18am\"],[\"delivered\",\"09-10-2020 09:05:18am\"]]', 'delivered', '2020-10-08 23:17:30'),
(285, 38, 30, 135, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"08-10-2020 11:47:30pm\"],[\"processed\",\"09-10-2020 09:05:18am\"],[\"shipped\",\"09-10-2020 09:05:18am\"],[\"delivered\",\"09-10-2020 09:05:18am\"]]', 'delivered', '2020-10-08 23:17:30'),
(286, 38, 30, 10, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"08-10-2020 11:47:30pm\"],[\"processed\",\"09-10-2020 09:05:18am\"],[\"shipped\",\"09-10-2020 09:05:18am\"],[\"delivered\",\"09-10-2020 09:05:18am\"]]', 'delivered', '2020-10-08 23:17:30'),
(287, 38, 30, 85, 1, 25, 20, 0, 0, 0, 20, NULL, '[[\"received\",\"08-10-2020 11:47:30pm\"],[\"processed\",\"09-10-2020 09:05:18am\"],[\"shipped\",\"09-10-2020 09:05:18am\"],[\"delivered\",\"09-10-2020 09:05:18am\"]]', 'delivered', '2020-10-08 23:17:30'),
(288, 38, 30, 137, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"08-10-2020 11:47:30pm\"],[\"processed\",\"09-10-2020 09:05:18am\"],[\"shipped\",\"09-10-2020 09:05:18am\"],[\"delivered\",\"09-10-2020 09:05:18am\"]]', 'delivered', '2020-10-08 23:17:30'),
(289, 38, 30, 77, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"08-10-2020 11:47:30pm\"],[\"processed\",\"09-10-2020 09:05:18am\"],[\"shipped\",\"09-10-2020 09:05:18am\"],[\"delivered\",\"09-10-2020 09:05:18am\"]]', 'delivered', '2020-10-08 23:17:30'),
(290, 30, 31, 38, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(291, 30, 31, 4, 2, 60, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(292, 30, 31, 138, 1, 40, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(293, 30, 31, 26, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(294, 30, 31, 9, 2, 92, 65, 0, 0, 0, 130, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(295, 30, 31, 46, 1, 110, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(296, 30, 31, 47, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(297, 30, 31, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(298, 30, 31, 8, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(299, 30, 31, 27, 1, 30, 24, 0, 0, 0, 24, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(300, 30, 31, 40, 2, 80, 60, 0, 0, 0, 120, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(301, 30, 31, 39, 2, 40, 20, 0, 0, 0, 40, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(302, 30, 31, 5, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(303, 30, 31, 35, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(304, 30, 31, 76, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(305, 30, 31, 77, 3, 12, 8, 0, 0, 0, 24, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(306, 30, 31, 78, 1, 30, 20, 0, 0, 0, 20, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(307, 30, 31, 13, 4, 12, 10, 0, 0, 0, 40, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(308, 30, 31, 14, 3, 15, 10, 0, 0, 0, 30, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(309, 30, 31, 51, 2, 140, 120, 0, 0, 0, 240, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(310, 30, 31, 58, 2, 50, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"10-10-2020 11:11:39pm\"]]', 'received', '2020-10-10 22:41:39'),
(311, 40, 32, 60, 5, 140, 99, 0, 0, 0, 495, NULL, '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-11 10:16:13'),
(312, 40, 32, 34, 1, 80, 68, 0, 0, 0, 68, NULL, '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-11 10:16:13'),
(313, 40, 32, 166, 1, 140, 125, 0, 0, 0, 125, NULL, '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-11 10:16:13'),
(314, 40, 32, 159, 1, 35, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-11 10:16:13'),
(315, 40, 32, 190, 2, 18, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-11 10:16:13'),
(316, 40, 32, 130, 4, 50, 42, 0, 0, 0, 168, NULL, '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-11 10:16:13'),
(317, 40, 32, 39, 3, 40, 20, 0, 0, 0, 60, NULL, '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-11 10:16:13'),
(318, 40, 32, 6, 1, 70, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"11-10-2020 10:46:13am\"],[\"processed\",\"11-10-2020 10:50:31pm\"],[\"shipped\",\"12-10-2020 09:53:07am\"],[\"delivered\",\"12-10-2020 09:53:07am\"]]', 'delivered', '2020-10-11 10:16:13'),
(319, 39, 33, 78, 1, 30, 20, 0, 0, 0, 20, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(320, 39, 33, 38, 2, 60, 45, 0, 0, 0, 90, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(321, 39, 33, 4, 2, 60, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(322, 39, 33, 142, 2, 25, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(323, 39, 33, 145, 2, 25, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(324, 39, 33, 159, 2, 35, 30, 0, 0, 0, 60, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(325, 39, 33, 131, 2, 46, 35, 0, 0, 0, 70, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(326, 39, 33, 152, 2, 40, 35, 0, 0, 0, 70, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(327, 39, 33, 15, 2, 20, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(328, 39, 33, 19, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(329, 39, 33, 32, 1, 50, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(330, 39, 33, 29, 1, 50, 48, 0, 0, 0, 48, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(331, 39, 33, 81, 2, 35, 25, 0, 0, 0, 50, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(332, 39, 33, 6, 1, 70, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(333, 39, 33, 97, 1, 80, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(334, 39, 33, 60, 1, 140, 99, 0, 0, 0, 99, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(335, 39, 33, 68, 2, 75, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"12-10-2020 05:51:42pm\"],[\"cancelled\",\"13-10-2020 08:26:42am\"]]', 'cancelled', '2020-10-12 17:21:42'),
(336, 30, 34, 38, 1, 60, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(337, 30, 34, 194, 1, 120, 100, 0, 0, 0, 100, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(338, 30, 34, 4, 1, 60, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(339, 30, 34, 26, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(340, 30, 34, 190, 1, 18, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(341, 30, 34, 9, 2, 92, 65, 0, 0, 0, 130, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(342, 30, 34, 46, 1, 110, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(343, 30, 34, 47, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(344, 30, 34, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(345, 30, 34, 8, 1, 80, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(346, 30, 34, 19, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(347, 30, 34, 40, 2, 80, 60, 0, 0, 0, 120, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(348, 30, 34, 35, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(349, 30, 34, 76, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(350, 30, 34, 77, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(351, 30, 34, 13, 4, 12, 10, 0, 0, 0, 40, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:43'),
(352, 30, 34, 14, 3, 15, 10, 0, 0, 0, 30, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:44'),
(353, 30, 34, 51, 2, 140, 120, 0, 0, 0, 240, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:44'),
(354, 30, 34, 58, 2, 50, 40, 0, 0, 0, 80, NULL, '[[\"received\",\"13-10-2020 07:30:43pm\"]]', 'received', '2020-10-13 19:00:44'),
(355, 42, 35, 95, 2, 70, 60, 0, 0, 0, 120, NULL, '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-15 07:16:19'),
(356, 42, 35, 96, 3, 80, 70, 0, 0, 0, 210, NULL, '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-15 07:16:19'),
(357, 42, 35, 186, 1, 85, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-15 07:16:19'),
(358, 42, 35, 181, 2, 299, 239, 0, 0, 0, 478, NULL, '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-15 07:16:19'),
(359, 42, 35, 35, 10, 12, 8, 0, 0, 0, 80, NULL, '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-15 07:16:19'),
(360, 42, 35, 74, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-15 07:16:19'),
(361, 42, 35, 13, 1, 12, 10, 0, 0, 0, 10, NULL, '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-15 07:16:19'),
(362, 42, 35, 75, 4, 12, 8, 0, 0, 0, 32, NULL, '[[\"received\",\"15-10-2020 07:46:19am\"],[\"processed\",\"16-10-2020 11:09:10am\"],[\"shipped\",\"16-10-2020 11:09:10am\"],[\"delivered\",\"16-10-2020 12:33:00pm\"]]', 'delivered', '2020-10-15 07:16:19'),
(363, 38, 36, 75, 3, 12, 8, 0, 0, 0, 24, NULL, '[[\"received\",\"15-10-2020 08:33:09pm\"],[\"processed\",\"16-10-2020 07:44:27am\"],[\"shipped\",\"16-10-2020 07:44:27am\"],[\"delivered\",\"16-10-2020 07:44:27am\"]]', 'delivered', '2020-10-15 20:03:09'),
(364, 38, 36, 35, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"15-10-2020 08:33:09pm\"],[\"processed\",\"16-10-2020 07:44:27am\"],[\"shipped\",\"16-10-2020 07:44:27am\"],[\"delivered\",\"16-10-2020 07:44:27am\"]]', 'delivered', '2020-10-15 20:03:09'),
(365, 38, 36, 160, 1, 160, 130, 0, 0, 0, 130, NULL, '[[\"received\",\"15-10-2020 08:33:09pm\"],[\"processed\",\"16-10-2020 07:44:27am\"],[\"shipped\",\"16-10-2020 07:44:27am\"],[\"delivered\",\"16-10-2020 07:44:27am\"]]', 'delivered', '2020-10-15 20:03:09'),
(366, 38, 36, 145, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"15-10-2020 08:33:09pm\"],[\"processed\",\"16-10-2020 07:44:27am\"],[\"shipped\",\"16-10-2020 07:44:27am\"],[\"delivered\",\"16-10-2020 07:44:27am\"]]', 'delivered', '2020-10-15 20:03:09'),
(367, 38, 36, 159, 2, 35, 30, 0, 0, 0, 60, NULL, '[[\"received\",\"15-10-2020 08:33:09pm\"],[\"processed\",\"16-10-2020 07:44:27am\"],[\"shipped\",\"16-10-2020 07:44:27am\"],[\"delivered\",\"16-10-2020 07:44:27am\"]]', 'delivered', '2020-10-15 20:03:10'),
(368, 38, 36, 132, 1, 23, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"15-10-2020 08:33:09pm\"],[\"processed\",\"16-10-2020 07:44:27am\"],[\"shipped\",\"16-10-2020 07:44:27am\"],[\"delivered\",\"16-10-2020 07:44:27am\"]]', 'delivered', '2020-10-15 20:03:10'),
(369, 38, 36, 10, 1, 30, 25, 0, 0, 0, 25, NULL, '[[\"received\",\"15-10-2020 08:33:09pm\"],[\"processed\",\"16-10-2020 07:44:27am\"],[\"shipped\",\"16-10-2020 07:44:27am\"],[\"delivered\",\"16-10-2020 07:44:27am\"]]', 'delivered', '2020-10-15 20:03:10'),
(370, 43, 37, 160, 1, 160, 130, 0, 0, 0, 130, NULL, '[[\"received\",\"17-10-2020 11:59:12pm\"],[\"processed\",\"19-10-2020 07:31:06am\"],[\"shipped\",\"19-10-2020 07:31:06am\"],[\"delivered\",\"19-10-2020 07:31:06am\"]]', 'delivered', '2020-10-17 23:29:12'),
(371, 43, 37, 159, 1, 35, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"17-10-2020 11:59:12pm\"],[\"processed\",\"19-10-2020 07:31:06am\"],[\"shipped\",\"19-10-2020 07:31:06am\"],[\"delivered\",\"19-10-2020 07:31:06am\"]]', 'delivered', '2020-10-17 23:29:12'),
(372, 43, 37, 9, 1, 92, 65, 0, 0, 0, 65, NULL, '[[\"received\",\"17-10-2020 11:59:12pm\"],[\"processed\",\"19-10-2020 07:31:06am\"],[\"shipped\",\"19-10-2020 07:31:06am\"],[\"delivered\",\"19-10-2020 07:31:06am\"]]', 'delivered', '2020-10-17 23:29:12'),
(373, 43, 37, 151, 1, 100, 85, 0, 0, 0, 85, NULL, '[[\"received\",\"17-10-2020 11:59:12pm\"],[\"cancelled\",\"18-10-2020 12:50:22pm\"]]', 'cancelled', '2020-10-17 23:29:12'),
(374, 43, 37, 11, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"17-10-2020 11:59:12pm\"],[\"processed\",\"19-10-2020 07:31:06am\"],[\"shipped\",\"19-10-2020 07:31:06am\"],[\"delivered\",\"19-10-2020 07:31:06am\"]]', 'delivered', '2020-10-17 23:29:12'),
(375, 43, 37, 68, 2, 75, 50, 0, 0, 0, 100, NULL, '[[\"received\",\"17-10-2020 11:59:12pm\"],[\"processed\",\"19-10-2020 07:31:06am\"],[\"shipped\",\"19-10-2020 07:31:06am\"],[\"delivered\",\"19-10-2020 07:31:06am\"]]', 'delivered', '2020-10-17 23:29:12'),
(376, 43, 37, 27, 1, 30, 24, 0, 0, 0, 24, NULL, '[[\"received\",\"17-10-2020 11:59:12pm\"],[\"processed\",\"19-10-2020 07:31:06am\"],[\"shipped\",\"19-10-2020 07:31:06am\"],[\"delivered\",\"19-10-2020 07:31:06am\"]]', 'delivered', '2020-10-17 23:29:12'),
(377, 44, 38, 68, 1, 75, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(378, 44, 38, 35, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"],[\"returned\",\"19-10-2020 10:07:40pm\"]]', 'returned', '2020-10-18 19:20:17'),
(379, 44, 38, 73, 2, 10, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(380, 44, 38, 75, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(381, 44, 38, 77, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(382, 44, 38, 136, 2, 30, 25, 0, 0, 0, 50, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(383, 44, 38, 145, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(384, 44, 38, 34, 2, 80, 68, 0, 0, 0, 136, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(385, 44, 38, 112, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(386, 44, 38, 132, 2, 23, 18, 0, 0, 0, 36, NULL, '[[\"received\",\"18-10-2020 07:50:17pm\"],[\"processed\",\"19-10-2020 08:09:28am\"],[\"shipped\",\"19-10-2020 08:09:28am\"],[\"delivered\",\"19-10-2020 08:09:28am\"]]', 'delivered', '2020-10-18 19:20:17'),
(387, 30, 39, 38, 1, 60, 55, 0, 0, 0, 55, NULL, '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 21:04:56'),
(388, 30, 39, 194, 1, 120, 100, 0, 0, 0, 100, NULL, '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 21:04:56'),
(389, 30, 39, 4, 1, 60, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 21:04:56'),
(390, 30, 39, 138, 1, 40, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 21:04:56'),
(391, 30, 39, 26, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 21:04:56'),
(392, 30, 39, 9, 1, 92, 65, 0, 0, 0, 65, NULL, '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 21:04:56'),
(393, 30, 39, 46, 1, 110, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 21:04:56'),
(394, 30, 39, 11, 2, 90, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"20-10-2020 09:34:56pm\"]]', 'received', '2020-10-20 21:04:56'),
(395, 37, 40, 160, 1, 210, 190, 0, 0, 0, 190, NULL, '[[\"received\",\"21-10-2020 07:59:18pm\"]]', 'received', '2020-10-21 19:29:18'),
(396, 37, 40, 34, 1, 110, 90, 0, 0, 0, 90, NULL, '[[\"received\",\"21-10-2020 07:59:18pm\"]]', 'received', '2020-10-21 19:29:18'),
(397, 37, 40, 22, 1, 32, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"21-10-2020 07:59:18pm\"]]', 'received', '2020-10-21 19:29:18'),
(398, 37, 40, 31, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"21-10-2020 07:59:18pm\"]]', 'received', '2020-10-21 19:29:18'),
(399, 37, 40, 192, 1, 90, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"21-10-2020 07:59:18pm\"]]', 'received', '2020-10-21 19:29:18'),
(400, 37, 40, 100, 1, 80, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"21-10-2020 07:59:18pm\"]]', 'received', '2020-10-21 19:29:18'),
(401, 30, 41, 38, 5, 60, 55, 0, 0, 0, 275, NULL, '[[\"received\",\"23-10-2020 12:45:15am\"]]', 'received', '2020-10-23 00:15:15'),
(402, 45, 42, 34, 3, 110, 90, 0, 0, 0, 270, NULL, '[[\"received\",\"24-10-2020 08:45:04am\"],[\"processed\",\"25-10-2020 10:27:12am\"],[\"shipped\",\"25-10-2020 10:27:12am\"],[\"delivered\",\"25-10-2020 10:27:12am\"]]', 'delivered', '2020-10-24 08:15:04'),
(403, 45, 42, 38, 2, 60, 55, 0, 0, 0, 110, NULL, '[[\"received\",\"24-10-2020 08:45:04am\"],[\"processed\",\"25-10-2020 10:27:12am\"],[\"shipped\",\"25-10-2020 10:27:12am\"],[\"delivered\",\"25-10-2020 10:27:12am\"]]', 'delivered', '2020-10-24 08:15:04'),
(404, 45, 42, 158, 1, 50, 40, 0, 0, 0, 40, NULL, '[[\"received\",\"24-10-2020 08:45:04am\"],[\"processed\",\"25-10-2020 10:27:12am\"],[\"shipped\",\"25-10-2020 10:27:12am\"],[\"delivered\",\"25-10-2020 10:27:12am\"]]', 'delivered', '2020-10-24 08:15:04'),
(405, 30, 43, 186, 2, 85, 70, 0, 0, 0, 140, NULL, '[[\"received\",\"24-10-2020 01:56:11pm\"]]', 'received', '2020-10-24 13:26:11'),
(406, 30, 43, 185, 1, 90, 75, 0, 0, 0, 75, NULL, '[[\"received\",\"24-10-2020 01:56:11pm\"]]', 'received', '2020-10-24 13:26:11'),
(407, 30, 44, 186, 4, 85, 70, 0, 0, 0, 280, NULL, '[[\"received\",\"26-10-2020 08:36:04pm\"]]', 'received', '2020-10-26 20:06:04'),
(408, 38, 45, 35, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(409, 38, 45, 74, 2, 12, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(410, 38, 45, 77, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(411, 38, 45, 14, 1, 15, 10, 0, 0, 0, 10, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(412, 38, 45, 22, 1, 32, 28, 0, 0, 0, 28, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(413, 38, 45, 13, 1, 12, 10, 0, 0, 0, 10, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(414, 38, 45, 76, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(415, 38, 45, 75, 3, 12, 8, 0, 0, 0, 24, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(416, 38, 45, 73, 2, 10, 8, 0, 0, 0, 16, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(417, 38, 45, 145, 1, 25, 15, 0, 0, 0, 15, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(418, 38, 45, 159, 2, 35, 30, 0, 0, 0, 60, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(419, 38, 45, 160, 1, 240, 220, 0, 0, 0, 220, NULL, '[[\"received\",\"01-11-2020 07:10:09pm\"]]', 'received', '2020-11-01 19:40:09'),
(420, 46, 46, 34, 3, 140, 120, 0, 0, 0, 360, NULL, '[[\"received\",\"11-11-2020 06:40:55pm\"],[\"cancelled\",\"15-11-2020 10:38:38am\"]]', 'cancelled', '2020-11-11 19:10:55'),
(421, 6, 47, 4, 2, 966, 0, 0, 0, 0, 1932, NULL, '[[\"received\",\"13-01-2021 10:05:45pm\"]]', 'received', '2021-01-13 22:35:45'),
(422, 6, 48, 35, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"13-01-2021 10:07:43pm\"],[\"processed\",\"13-01-2021 10:10:15pm\"],[\"shipped\",\"13-01-2021 10:10:15pm\"],[\"delivered\",\"13-01-2021 10:10:15pm\"]]', 'delivered', '2021-01-13 22:37:43'),
(423, 6, 48, 73, 1, 10, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"13-01-2021 10:07:43pm\"],[\"cancelled\",\"13-01-2021 10:08:18pm\"]]', 'cancelled', '2021-01-13 22:37:43'),
(424, 6, 48, 74, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"13-01-2021 10:07:43pm\"],[\"processed\",\"13-01-2021 10:10:15pm\"],[\"shipped\",\"13-01-2021 10:10:15pm\"],[\"delivered\",\"13-01-2021 10:10:15pm\"]]', 'delivered', '2021-01-13 22:37:43'),
(425, 6, 48, 75, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"13-01-2021 10:07:43pm\"],[\"processed\",\"13-01-2021 10:10:15pm\"],[\"shipped\",\"13-01-2021 10:10:15pm\"],[\"delivered\",\"13-01-2021 10:10:15pm\"],[\"returned\",\"13-01-2021 10:11:51pm\"]]', 'returned', '2021-01-13 22:37:43'),
(426, 6, 48, 76, 1, 12, 8, 0, 0, 0, 8, NULL, '[[\"received\",\"13-01-2021 10:07:43pm\"],[\"processed\",\"13-01-2021 10:10:15pm\"],[\"shipped\",\"13-01-2021 10:10:15pm\"],[\"delivered\",\"13-01-2021 10:10:15pm\"],[\"returned\",\"13-01-2021 10:11:42pm\"]]', 'returned', '2021-01-13 22:37:43'),
(427, 50, 49, 463, 1, 250, 220, 39.6, 18, 0, 259.6, NULL, '[[\"received\",\"04-02-2021 10:09:30pm\"]]', 'received', '2021-02-04 16:39:30'),
(428, 50, 49, 146, 2, 18, 15, 0, 0, 0, 30, NULL, '[[\"received\",\"04-02-2021 10:09:30pm\"]]', 'received', '2021-02-04 16:39:31'),
(429, 50, 50, 474, 1, 500, 480, 0, 0, 0, 480, NULL, '[[\"received\",\"04-02-2021 11:07:03pm\"]]', 'received', '2021-02-04 17:37:03'),
(430, 51, 51, 480, 1, 350, 290, 0, 0, 0, 290, NULL, '[[\"received\",\"05-02-2021 01:50:25pm\"]]', 'received', '2021-02-05 08:20:25'),
(431, 52, 52, 463, 1, 250, 220, 39.6, 18, 0, 259.6, NULL, '[[\"received\",\"11-02-2021 05:03:33pm\"]]', 'received', '2021-02-11 11:33:33'),
(432, 52, 52, 464, 1, 500, 480, 0, 0, 0, 480, NULL, '[[\"received\",\"11-02-2021 05:03:33pm\"]]', 'received', '2021-02-11 11:33:33'),
(433, 52, 53, 465, 1, 650, 630, 0, 0, 0, 630, NULL, '[[\"received\",\"11-02-2021 05:05:04pm\"]]', 'received', '2021-02-11 11:35:04'),
(434, 52, 54, 124, 1, 300, 195, 0, 0, 0, 195, NULL, '[[\"received\",\"11-02-2021 05:06:19pm\"]]', 'received', '2021-02-11 11:36:19'),
(435, 48, 55, 109, 4, 60, 60, 0, 0, 0, 240, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-11 17:04:36'),
(436, 48, 55, 165, 2, 40, 35, 0, 0, 0, 70, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"],[\"cancelled\",\"11-02-2021 10:39:12pm\"]]', 'cancelled', '2021-02-11 17:04:36'),
(437, 48, 55, 317, 4, 35, 30, 0, 0, 0, 120, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-11 17:04:36'),
(438, 48, 55, 319, 1, 40, 34, 0, 0, 0, 34, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-11 17:04:36'),
(439, 48, 55, 322, 1, 15, 11, 0, 0, 0, 11, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-11 17:04:36'),
(440, 48, 55, 325, 2, 85, 80, 0, 0, 0, 160, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-11 17:04:36'),
(441, 48, 55, 327, 2, 40, 34, 0, 0, 0, 68, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-11 17:04:36'),
(442, 48, 55, 368, 2, 35, 0, 0, 0, 0, 70, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-11 17:04:36'),
(443, 48, 55, 374, 2, 20, 18, 0, 0, 0, 36, NULL, '[[\"received\",\"11-02-2021 10:34:36pm\"]]', 'received', '2021-02-11 17:04:36'),
(444, 48, 56, 64, 2, 250, 240, 0, 0, 0, 480, NULL, '[[\"received\",\"11-02-2021 10:37:00pm\"]]', 'received', '2021-02-11 17:07:00'),
(445, 48, 56, 65, 3, 60, 55, 0, 0, 0, 165, NULL, '[[\"received\",\"11-02-2021 10:37:00pm\"]]', 'received', '2021-02-11 17:07:00'),
(446, 48, 56, 344, 2, 65, 60, 0, 0, 0, 120, NULL, '[[\"received\",\"11-02-2021 10:37:00pm\"]]', 'received', '2021-02-11 17:07:00'),
(447, 48, 56, 376, 3, 350, 325, 0, 0, 0, 975, NULL, '[[\"received\",\"11-02-2021 10:37:00pm\"]]', 'received', '2021-02-11 17:07:00'),
(448, 48, 56, 326, 1, 38, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"11-02-2021 10:37:00pm\"]]', 'received', '2021-02-11 17:07:00'),
(449, 6, 57, 446, 1, 120, 100, 0, 0, 0, 100, NULL, '[[\"received\",\"22-02-2021 02:03:41pm\"],[\"processed\",\"22-02-2021 02:18:15pm\"]]', 'processed', '2021-02-22 08:33:41'),
(450, 6, 57, 441, 1, 55, 45, 0, 0, 0, 45, NULL, '[[\"received\",\"22-02-2021 02:03:41pm\"],[\"processed\",\"22-02-2021 02:18:15pm\"]]', 'processed', '2021-02-22 08:33:41'),
(451, 53, 58, 476, 1, 490, 444, 22.2, 5, 0, 466.2, NULL, '[[\"awaiting_payment\",\"22-02-2021 03:00:57pm\"],[\"received\",\"08-06-2021 01:40:03am\"]]', 'received', '2021-02-22 09:30:57'),
(452, 53, 59, 476, 1, 490, 444, 22.2, 5, 0, 466.2, NULL, '[[\"awaiting_payment\",\"22-02-2021 03:01:39pm\"],[\"received\",\"22-02-2021 03:26:26pm\"],[\"processed\",\"22-02-2021 03:26:34pm\"]]', 'processed', '2021-02-22 09:31:39'),
(453, 53, 60, 476, 1, 490, 444, 22.2, 5, 0, 466.2, NULL, '[[\"awaiting_payment\",\"22-02-2021 03:01:50pm\"],[\"received\",\"22-02-2021 03:24:28pm\"],[\"processed\",\"22-02-2021 03:25:15pm\"],[\"shipped\",\"22-02-2021 03:25:22pm\"],[\"delivered\",\"22-02-2021 03:25:32pm\"]]', 'delivered', '2021-02-22 09:31:50'),
(454, 53, 61, 476, 1, 490, 444, 22.2, 5, 0, 466.2, NULL, '[[\"received\",\"22-02-2021 03:02:17pm\"]]', 'received', '2021-02-22 09:32:17'),
(455, 53, 62, 114, 1, 260, 75, 0, 0, 0, 75, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-22 10:09:50'),
(456, 53, 62, 112, 1, 40, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-22 10:09:50'),
(457, 53, 62, 110, 1, 80, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-22 10:09:51'),
(458, 53, 62, 108, 1, 25, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-22 10:09:51'),
(459, 53, 62, 360, 1, 200, 180, 0, 0, 0, 180, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-22 10:09:51'),
(460, 53, 62, 361, 1, 20, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-22 10:09:51'),
(461, 53, 62, 336, 1, 80, 0, 0, 0, 0, 80, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-22 10:09:51'),
(462, 53, 62, 124, 1, 300, 195, 0, 0, 0, 195, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"],[\"cancelled\",\"22-02-2021 03:40:15pm\"]]', 'cancelled', '2021-02-22 10:09:51'),
(463, 53, 62, 373, 1, 800, 780, 0, 0, 0, 780, NULL, '[[\"received\",\"22-02-2021 03:39:50pm\"]]', 'received', '2021-02-22 10:09:51'),
(464, 53, 63, 110, 1, 80, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-22 10:13:26'),
(465, 53, 63, 112, 1, 40, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-22 10:13:27'),
(466, 53, 63, 124, 1, 300, 195, 0, 0, 0, 195, NULL, '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-22 10:13:27'),
(467, 53, 63, 114, 1, 260, 75, 0, 0, 0, 75, NULL, '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-22 10:13:27'),
(468, 53, 63, 336, 1, 80, 0, 0, 0, 0, 80, NULL, '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-22 10:13:27'),
(469, 53, 63, 108, 1, 25, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-22 10:13:27'),
(470, 53, 63, 360, 1, 200, 180, 0, 0, 0, 180, NULL, '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-22 10:13:27'),
(471, 53, 63, 361, 1, 20, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"22-02-2021 03:43:26pm\"]]', 'received', '2021-02-22 10:13:27'),
(472, 6, 64, 368, 1, 35, 0, 0, 0, 0, 35, NULL, '[[\"received\",\"22-02-2021 04:48:21pm\"]]', 'received', '2021-02-22 11:18:21'),
(473, 6, 64, 374, 1, 20, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"22-02-2021 04:48:21pm\"]]', 'received', '2021-02-22 11:18:21'),
(474, 6, 64, 372, 2, 25, 22, 0, 0, 0, 44, NULL, '[[\"received\",\"22-02-2021 04:48:21pm\"]]', 'received', '2021-02-22 11:18:22'),
(475, 6, 65, 374, 1, 20, 18, 0, 0, 0, 18, '1', '[[\"received\",\"22-02-2021 11:08:03pm\"],[\"processed\",\"22-02-2021 11:17:03pm\"],[\"shipped\",\"22-02-2021 11:17:03pm\"]]', 'shipped', '2021-02-22 17:38:03'),
(476, 6, 65, 368, 1, 35, 0, 0, 0, 0, 35, '1', '[[\"received\",\"22-02-2021 11:08:03pm\"],[\"processed\",\"22-02-2021 11:17:03pm\"],[\"shipped\",\"22-02-2021 11:17:03pm\"]]', 'shipped', '2021-02-22 17:38:03'),
(477, 6, 65, 372, 3, 25, 22, 0, 0, 0, 66, '1', '[[\"received\",\"22-02-2021 11:08:03pm\"],[\"processed\",\"22-02-2021 11:17:03pm\"],[\"shipped\",\"22-02-2021 11:17:03pm\"]]', 'shipped', '2021-02-22 17:38:03'),
(478, 6, 66, 68, 1, 80, 75, 0, 0, 0, 75, NULL, '[[\"received\",\"25-02-2021 01:48:57pm\"]]', 'received', '2021-02-25 08:18:57'),
(479, 6, 66, 463, 1, 250, 220, 39.6, 18, 0, 259.6, NULL, '[[\"received\",\"25-02-2021 01:48:57pm\"]]', 'received', '2021-02-25 08:18:57'),
(484, 50, 71, 109, 15, 60, 60, 0, 0, 0, 900, NULL, '[[\"received\",\"04-03-2021 11:02:29pm\"]]', 'received', '2021-03-04 17:32:29'),
(485, 50, 72, 124, 1, 300, 195, 0, 0, 0, 195, NULL, '[[\"received\",\"04-03-2021 11:10:44pm\"]]', 'received', '2021-03-04 17:40:44'),
(486, 50, 72, 463, 1, 250, 220, 39.6, 18, 0, 259.6, NULL, '[[\"received\",\"04-03-2021 11:10:44pm\"]]', 'received', '2021-03-04 17:40:44'),
(487, 50, 73, 109, 15, 60, 60, 0, 0, 0, 900, NULL, '[[\"received\",\"05-03-2021 02:39:42pm\"],[\"reschedule\",\"09-03-2021 10:42:56pm\"],[\"processed\",\"09-03-2021 10:43:30pm\"]]', 'processed', '2021-03-05 09:09:42'),
(490, 6, 76, 336, 1, 80, 0, 0, 0, 0, 80, NULL, '[[\"received\",\"05-03-2021 04:33:48pm\"]]', 'received', '2021-03-05 11:03:48'),
(491, 6, 76, 124, 1, 300, 195, 0, 0, 0, 195, NULL, '[[\"received\",\"05-03-2021 04:33:48pm\"]]', 'received', '2021-03-05 11:03:48'),
(492, 6, 76, 373, 1, 800, 780, 0, 0, 0, 780, NULL, '[[\"received\",\"05-03-2021 04:33:48pm\"]]', 'received', '2021-03-05 11:03:48'),
(493, 53, 77, 110, 1, 80, 70, 0, 0, 0, 70, NULL, '[[\"received\",\"05-03-2021 06:00:24pm\"]]', 'received', '2021-03-05 12:30:24'),
(494, 53, 77, 114, 1, 260, 75, 0, 0, 0, 75, NULL, '[[\"received\",\"05-03-2021 06:00:24pm\"]]', 'received', '2021-03-05 12:30:24'),
(495, 53, 77, 336, 1, 80, 0, 0, 0, 0, 80, NULL, '[[\"received\",\"05-03-2021 06:00:24pm\"]]', 'received', '2021-03-05 12:30:24'),
(496, 53, 77, 108, 1, 25, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"05-03-2021 06:00:24pm\"]]', 'received', '2021-03-05 12:30:24'),
(497, 53, 77, 361, 2, 20, 18, 0, 0, 0, 36, NULL, '[[\"received\",\"05-03-2021 06:00:24pm\"]]', 'received', '2021-03-05 12:30:24'),
(498, 53, 78, 109, 15, 60, 60, 0, 0, 0, 900, NULL, '[[\"received\",\"30-03-2021 10:06:58am\"]]', 'received', '2021-03-30 04:36:58'),
(499, 6, 79, 326, 1, 38, 35, 0, 0, 0, 35, NULL, '[[\"received\",\"26-06-2021 04:22:42pm\"]]', 'received', '2021-06-26 10:52:42'),
(500, 6, 79, 141, 1, 99, 55, 0, 0, 0, 55, NULL, '[[\"received\",\"26-06-2021 04:22:42pm\"]]', 'received', '2021-06-26 10:52:42'),
(501, 6, 79, 311, 2, 30, 25, 0, 0, 0, 50, NULL, '[[\"received\",\"26-06-2021 04:22:42pm\"]]', 'received', '2021-06-26 10:52:42'),
(502, 6, 79, 143, 2, 149, 124, 0, 0, 0, 248, NULL, '[[\"received\",\"26-06-2021 04:22:42pm\"]]', 'received', '2021-06-26 10:52:42'),
(503, 6, 79, 341, 2, 5, 0, 0, 0, 0, 10, NULL, '[[\"received\",\"26-06-2021 04:22:42pm\"]]', 'received', '2021-06-26 10:52:42'),
(504, 6, 79, 342, 2, 25, 0, 1.25, 5, 0, 52.5, NULL, '[[\"received\",\"26-06-2021 04:22:42pm\"]]', 'received', '2021-06-26 10:52:42'),
(505, 55, 80, 462, 1, 90, 85, 0, 0, 0, 85, NULL, '[[\"received\",\"26-06-2021 04:33:14pm\"]]', 'received', '2021-06-26 11:03:14'),
(506, 55, 80, 463, 1, 250, 220, 39.6, 18, 0, 259.6, NULL, '[[\"received\",\"26-06-2021 04:33:14pm\"]]', 'received', '2021-06-26 11:03:14'),
(507, 56, 81, 109, 1, 60, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"26-06-2021 05:45:29pm\"]]', 'received', '2021-06-26 12:15:29'),
(508, 55, 82, 463, 2, 250, 220, 39.6, 18, 0, 519.2, NULL, '[[\"received\",\"26-06-2021 06:19:42pm\"]]', 'received', '2021-06-26 12:49:42'),
(509, 55, 82, 109, 1, 60, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"26-06-2021 06:19:42pm\"]]', 'received', '2021-06-26 12:49:42'),
(510, 55, 83, 463, 1, 250, 220, 39.6, 18, 0, 259.6, NULL, '[[\"received\",\"26-06-2021 06:35:58pm\"]]', 'received', '2021-06-26 13:05:58'),
(511, 55, 83, 109, 1, 60, 60, 0, 0, 0, 60, NULL, '[[\"received\",\"26-06-2021 06:35:58pm\"]]', 'received', '2021-06-26 13:05:58'),
(512, 55, 84, 464, 1, 500, 480, 0, 0, 0, 480, NULL, '[[\"received\",\"26-06-2021 06:53:20pm\"]]', 'received', '2021-06-26 13:23:20'),
(513, 55, 84, 465, 1, 650, 630, 0, 0, 0, 630, NULL, '[[\"received\",\"26-06-2021 06:53:20pm\"]]', 'received', '2021-06-26 13:23:20'),
(514, 55, 84, 467, 1, 490, 444, 22.2, 5, 0, 466.2, NULL, '[[\"received\",\"26-06-2021 06:53:20pm\"]]', 'received', '2021-06-26 13:23:20'),
(515, 55, 84, 466, 1, 350, 290, 0, 0, 0, 290, NULL, '[[\"received\",\"26-06-2021 06:53:20pm\"]]', 'received', '2021-06-26 13:23:20'),
(516, 55, 84, 195, 1, 45, 0, 0, 0, 0, 45, NULL, '[[\"received\",\"26-06-2021 06:53:20pm\"]]', 'received', '2021-06-26 13:23:20'),
(517, 55, 85, 108, 1, 25, 50, 0, 0, 0, 50, NULL, '[[\"received\",\"26-06-2021 06:57:30pm\"]]', 'received', '2021-06-26 13:27:30'),
(518, 55, 85, 361, 1, 20, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"26-06-2021 06:57:30pm\"]]', 'received', '2021-06-26 13:27:30'),
(519, 55, 85, 360, 1, 200, 180, 0, 0, 0, 180, NULL, '[[\"received\",\"26-06-2021 06:57:30pm\"]]', 'received', '2021-06-26 13:27:30'),
(520, 55, 85, 124, 1, 300, 195, 0, 0, 0, 195, NULL, '[[\"received\",\"26-06-2021 06:57:30pm\"]]', 'received', '2021-06-26 13:27:30'),
(521, 55, 85, 368, 1, 35, 0, 0, 0, 0, 35, NULL, '[[\"received\",\"26-06-2021 06:57:30pm\"]]', 'received', '2021-06-26 13:27:30'),
(522, 55, 85, 374, 1, 20, 18, 0, 0, 0, 18, NULL, '[[\"received\",\"26-06-2021 06:57:30pm\"]]', 'received', '2021-06-26 13:27:30'),
(523, 55, 85, 372, 1, 25, 22, 0, 0, 0, 22, NULL, '[[\"received\",\"26-06-2021 06:57:30pm\"]]', 'received', '2021-06-26 13:27:30');
INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `product_variant_id`, `quantity`, `price`, `discounted_price`, `tax_amount`, `tax_percentage`, `discount`, `sub_total`, `deliver_by`, `status`, `active_status`, `date_added`) VALUES
(524, 51, 86, 124, 1, 300, 195, 0, 0, 0, 195, NULL, '[[\"received\",\"24-07-2021 03:39:39pm\"]]', 'received', '2021-07-24 10:09:39'),
(525, 2, 91, 81, 2, 48, 45, 0, 0, 0, 90, NULL, '[[\"received\",\"02-08-2021 10:57:54 AM\"]]', 'received', '2021-08-02 05:27:54'),
(526, 2, 91, 80, 3, 35, 30, 0, 0, 0, 90, NULL, '[[\"received\",\"02-08-2021 10:57:54 AM\"]]', 'received', '2021-08-02 05:27:54'),
(527, 2, 91, 86, 4, 25, 20, 0, 0, 0, 80, NULL, '[[\"received\",\"02-08-2021 10:57:54 AM\"]]', 'received', '2021-08-02 05:27:54'),
(528, 2, 92, 81, 2, 48, 45, 0, 0, 0, 90, NULL, '[[\"received\",\"02-08-2021 10:59:40 AM\"]]', 'received', '2021-08-02 05:29:40'),
(529, 2, 92, 80, 3, 35, 30, 0, 0, 0, 90, NULL, '[[\"received\",\"02-08-2021 10:59:40 AM\"]]', 'received', '2021-08-02 05:29:40'),
(530, 2, 92, 86, 4, 25, 20, 0, 0, 0, 80, NULL, '[[\"received\",\"02-08-2021 10:59:40 AM\"]]', 'received', '2021-08-02 05:29:40'),
(531, 2, 94, 49, 1, 182, 172, 30.96, 18, 0, 172, NULL, '[[\"received\",\"02-08-2021 11:02:58 AM\"]]', 'received', '2021-08-02 05:32:58'),
(532, 2, 95, 49, 1, 182, 172, 30.96, 18, 0, 172, NULL, '[[\"received\",\"02-08-2021 11:17:39 AM\"]]', 'received', '2021-08-02 05:47:39'),
(533, 2, 96, 49, 1, 182, 172, 30.96, 18, 0, 172, NULL, '[[\"received\",\"02-08-2021 11:18:54 AM\"]]', 'received', '2021-08-02 05:48:54'),
(534, 2, 97, 49, 1, 182, 172, 30.96, 18, 0, 172, NULL, '[[\"received\",\"02-08-2021 11:57:42 AM\"]]', 'received', '2021-08-02 06:27:42'),
(535, 1, 98, 82, 1, 12, 10, 0, 0, 0, 10, NULL, '2', 'received', '2021-08-05 06:23:51'),
(536, 1, 99, 82, 1, 12, 10, 0, 0, 0, 10, NULL, '2', 'received', '2021-08-05 06:26:15'),
(537, 1, 100, 82, 1, 12, 10, 0, 0, 0, 10, NULL, '2', 'received', '2021-08-05 06:28:25'),
(538, 1, 101, 82, 1, 12, 10, 0, 0, 0, 10, NULL, '2', 'received', '2021-08-05 06:28:27'),
(539, 3, 102, 80, 1, 35, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"05-08-2021 12:00:15 PM\"]]', 'received', '2021-08-05 06:30:15'),
(540, 3, 102, 80, 1, 35, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"05-08-2021 12:00:15 PM\"]]', 'received', '2021-08-05 06:30:15'),
(541, 3, 103, 80, 1, 35, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"05-08-2021 12:00:55 PM\"]]', 'received', '2021-08-05 06:30:55'),
(542, 3, 103, 80, 1, 35, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"05-08-2021 12:00:55 PM\"]]', 'received', '2021-08-05 06:30:55'),
(543, 2, 104, 86, 1, 25, 20, 0, 0, 0, 20, NULL, '2', 'received', '2021-08-17 09:27:17'),
(544, 1, 105, 80, 1, 35, 30, 0, 0, 0, 30, NULL, '[[\"received\",\"17-08-2021 15:00:52 PM\"]]', 'received', '2021-08-17 09:30:52'),
(545, 1, 106, 81, 1, 48, 45, 0, 0, 0, 45, NULL, '2', 'received', '2021-08-17 09:31:25'),
(546, 1, 107, 80, 1, 35, 30, 0, 0, 0, 30, NULL, '2', 'received', '2021-08-17 09:34:26'),
(547, 2, 108, 375, 1, 197, 180, 0, 0, 0, 180, NULL, '2', 'received', '2021-08-21 09:39:10');

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
-- Table structure for table `subcription_plan`
--

CREATE TABLE `subcription_plan` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `days` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcription_plan`
--

INSERT INTO `subcription_plan` (`id`, `name`, `days`) VALUES
(1, 'Weekly Subscription', 7),
(5, '15 Days Subscription', 15),
(3, 'Monthly Subscription', 30),
(6, 'Existing Plan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcription_products`
--

CREATE TABLE `subcription_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `measurement` float NOT NULL,
  `measurement_unit_id` int(11) NOT NULL,
  `sub_plan_id` int(11) NOT NULL,
  `offer_days` int(11) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp(),
  `isDelivered` int(11) DEFAULT NULL,
  `isHoliday` int(11) DEFAULT NULL,
  `UserID` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcription_products`
--

INSERT INTO `subcription_products` (`id`, `product_id`, `product_variant_id`, `branch`, `measurement`, `measurement_unit_id`, `sub_plan_id`, `offer_days`, `added_on`, `isDelivered`, `isHoliday`, `UserID`, `status`) VALUES
(2, 671, 481, 7, 250, 4, 5, 2, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(4, 245, 109, 10000, 1, 1, 5, 2, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(5, 245, 484, 7, 1, 1, 5, 2, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(6, 598, 480, 2, 1, 6, 5, 5, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(7, 245, 109, 10000, 1, 1, 1, 7, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(8, 262, 126, 10000, 1, 1, 5, 7, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(10, 268, 132, 10000, 1, 1, 5, 1, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(11, 262, 126, 10000, 1, 1, 5, 15, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(12, 262, 0, 10000, 1, 0, 5, 15, '0000-00-00 00:00:00', NULL, NULL, 0, 0),
(13, 671, 477, 10000, 250, 4, 5, 3, '0000-00-00 00:00:00', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_history`
--

CREATE TABLE `subscription_history` (
  `SHID` int(11) NOT NULL,
  `BranchCode` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `ProductCode` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `OrderDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `SubscripPlanID` int(11) NOT NULL,
  `DayCount` int(11) NOT NULL,
  `isDelivered` int(1) DEFAULT NULL,
  `isHoliday` int(1) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `deliverdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription_history`
--

INSERT INTO `subscription_history` (`SHID`, `BranchCode`, `UserID`, `OrderNo`, `ProductCode`, `product_variant_id`, `Price`, `OrderDateTime`, `SubscripPlanID`, `DayCount`, `isDelivered`, `isHoliday`, `status`, `deliverdate`) VALUES
(15, 10008, 1, 107, 225, 80, '30', '2021-08-17 15:04:25', 1, 1, 0, 0, 1, '2021-08-18'),
(16, 10008, 1, 107, 225, 80, '30', '2021-08-17 15:04:25', 1, 2, 0, 1, 1, '2021-08-19'),
(17, 10008, 1, 107, 225, 80, '30', '2021-08-17 15:04:25', 1, 3, 0, 0, 1, '2021-08-20'),
(18, 10008, 1, 107, 225, 80, '30', '2021-08-17 15:04:25', 1, 4, 0, 0, 1, '2021-08-21'),
(19, 10008, 1, 107, 225, 80, '30', '2021-08-17 15:04:25', 1, 5, 0, 0, 1, '2021-08-22'),
(20, 10008, 1, 107, 225, 80, '30', '2021-08-17 15:04:25', 1, 6, 0, 0, 1, '2021-08-23'),
(21, 10008, 1, 107, 225, 80, '30', '2021-08-17 15:04:25', 1, 7, 0, 0, 1, '2021-08-24'),
(22, 10008, 1, 107, 225, 80, '30', '2021-08-17 15:21:00', 1, 8, 0, 0, 1, '2021-08-25'),
(23, 10000, 2, 108, 507, 375, '180', '2021-08-21 15:09:09', 1, 1, 0, 0, 2, '2021-08-22'),
(24, 10000, 2, 108, 507, 375, '180', '2021-08-21 15:09:09', 1, 2, 0, 0, 2, '2021-08-23'),
(25, 10000, 2, 108, 507, 375, '180', '2021-08-21 15:09:09', 1, 3, 0, 0, 2, '2021-08-24'),
(26, 10000, 2, 108, 507, 375, '180', '2021-08-21 15:09:10', 1, 4, 0, 0, 2, '2021-08-25'),
(27, 10000, 2, 108, 507, 375, '180', '2021-08-21 15:09:10', 1, 5, 0, 0, 2, '2021-08-26'),
(28, 10000, 2, 108, 507, 375, '180', '2021-08-21 15:09:10', 1, 6, 0, 0, 2, '2021-08-27'),
(29, 10000, 2, 108, 507, 375, '180', '2021-08-21 15:09:10', 1, 7, 0, 0, 2, '2021-08-28');

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

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `title`, `from_time`, `to_time`, `last_order_time`, `status`) VALUES
(31, 'Evening 2 PM to 6 PM', '14:00:00', '18:00:00', '14:11:00', 1),
(22, 'Morning 9 AM to 12 PM', '09:00:00', '12:00:00', '00:25:00', 1),
(25, 'Afternoon 12 AM to 2 PM', '12:00:00', '14:00:00', '12:01:00', 1),
(32, 'Night 6 PM to 9 PM', '18:00:00', '21:00:00', '21:00:00', 1);

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `altcustid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `beat` int(11) DEFAULT NULL,
  `delivery_boy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile`, `country_code`, `mobile`, `dob`, `city`, `area`, `street`, `pincode`, `apikey`, `balance`, `referral_code`, `friends_code`, `fcm_id`, `latitude`, `longitude`, `password`, `status`, `created_at`, `altcustid`, `beat`, `delivery_boy`) VALUES
(1, 'Sumithra Sumithra', 'sumithrasumithra260@gmail.com', NULL, '91', '9177684763', '', '1', '12', 'H-no:501-balaji apartment taranagar lingampally', '502319', '', 0, 'YV6RBA81WA', '', 'dhtjN0JeTzimUpOqcQkRzG:APA91bEqs6SjEB4d1hHq-7lwLpqdJtsrcDVW5NjeHKWf_xiSg1ZLP4Zgax35rroK2vppEx0Ao-ddlkYj6Ri5K6geEIPBLF__Byvn1AI5D2aMdy_NKbJ6JaYMYlAXFIpT3NIL_CZ8gH7y', '17.4953437', '78.3225987', 'c5b2cebf15b205503560c4e8e6d1ea78', 1, '2020-09-01 14:56:47', NULL, NULL, NULL),
(2, 'asheesh', 'candy.andy@1234gmail.com', NULL, '91', '9676971805', '', '1', '3', '5-545 chanda nagar near railway station', '510037', '', 0, 'SDNX5Q8HWV', '', 'dJS6XHqSTSSeM81zuSuIvm:APA91bFoSSnqyP05iDVWVtzsMQKaK50wr80TcQnPC8LZYE6aSOrnC52UwbTX4AbTw47rYhI-7NP92OvHwCl7lp2z0dsUkI89XO9_jqZIW8IyojCm5J_2Y6plM4YJsH58tm2fzvpn4o11', '17.5040243', '78.448589', 'fd02cfb68cb22308bd2533189012327c', 1, '2020-09-01 15:16:00', NULL, NULL, NULL),
(3, 'Ashok.c', 'ashok555rock@gmail.com', NULL, '91', '7995922960', '', '8', '24', 'sangareddy X road', '502285', '', 1010, 'UFOGKS2PLN', '', 'eHP6OqCQSpK1UlbDqQGSHm:APA91bELr4WgxBRxm01Rtv8FmmP2qvzVzS0Sep7sATVy0MWwS1yvKfdmaqX6CEZAJTpQrAvZUC7DGyWCj_5bKKr615qkTm-36Kppl4Efn43SyRiWZOjGCOLe_5SkmidlPRP0Y4Ke51sh', '17.58984037334654', '78.08609090745449', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2020-09-01 16:21:54', NULL, NULL, NULL),
(4, 'chinna', 'chinnadariyapuram@gmail.com', NULL, '91', '9703694602', '', '1', '13', 'raviteja apartments lingampally', '500019', '', 0, 'R4I6RQAJPG', '', 'e7RvR9MdThSZLT0X8CmoDB:APA91bEF7OHhPRCYG9d1T19Afhdj1Bo6gFmxcLKn5yWLSLzIoJxY3dn68m4jf4CQafyZxC4kUC1Lgv4kh3rgn4k-U4xd7UKhZbMnoUUrbdCsdknOxMx9UlQT6e2IV1dEtXsf2ocFWrFE', '17.3362009', '77.9051332', '1cf4473fbe6c453f68ae16d5400ae5d5', 1, '2020-09-01 17:34:01', NULL, NULL, NULL),
(5, 'praveen kumar', 'praveen946753@gmail.com', NULL, '91', '8185975342', '', '1', '3', 'Any funrnichars', '500019', '', 0, 'ISSHQGNY5N', '', 'dEtuahp3QJW-pbd5UZue32:APA91bE_acDYmurywLZ2mL2CKcT61Dif7HNZ5CBNetQGnbbvBl8HbYDKLdW1zdzrvwPBKiQj9IREawoZZshOhF0tb8Dh7uzB2oqSn-sMe5DIt_GCR_UJqzBP_fnXWtfQt3ROpWZzCXAZ', '17.5932097', '77.7142672', '0207200b2e3c8814955a2d05c3340846', 1, '2020-09-01 19:47:26', NULL, NULL, NULL),
(6, 'basker', 'chillabhanu2317@gmail.com', '1614016873.8636.jpg', '91', '9515109126', '', '', '', '', '', '', 800, 'ATVJBJF3V8', '', '', '17.490299474529145', '78.3194313570857', '68d309812548887400e375eaa036d2f1', 1, '2020-09-02 13:57:21', NULL, NULL, NULL),
(7, 'Ramesh', 'rr0170495@gmail.com', NULL, '91', '8520920939', '', '1', '3', 'anu furniture \nchanadanagar', '500019', '', 0, '3KBIZKVOTM', '', 'ffOVKf06R2Ovx3WfcJGSHu:APA91bGIw3abN3Aiic0ZtFQBYbpyp-JpAll358hpSdpdblMi8QwJivVrqhySdxIjzhHAs3Lph0eQDUjuSHp_YGHAQuLONR-PtNklQ3XBal35edI-A1UqwIvjbe-Aq9ziM8JLZq8abGoe', '17.4867089', '78.39948', '23e4d460bab4c6db11c4586185c4455d', 1, '2020-09-03 10:29:40', NULL, NULL, NULL),
(8, 'Arun kumar', 'chnandhu5974@gmail.com', NULL, '91', '7093525974', '', '1', '3', 'Anu furniture Chandannagar', '500019', '', 0, 'XRYQ0AWYVM', '', 'eG_tYbAfRz21BrBlFmSZjg:APA91bGk3lvoRjbKSdynkVyt5w4jX1zQSOj6MjHumEJ8SsIFxa19ZBxYu3T1RMa-L-wWAplo0x3NbfuD9rCQDNKpQMklsjhciueVFGB6mGtbn3VFvXzP2vlD1GLC6yq9a0flEgbVGpuF', '17.4867216', '78.3994942', '722279e9e630b3e731464b69968ea4b4', 1, '2020-09-03 10:35:36', NULL, NULL, NULL),
(9, 'MD Adil', 'khanmohdadil738@gmail.com', NULL, '91', '6302422048', '', '1', '3', 'anu furniture chandanagar', '500019', '', 0, 'OX5KET9FIM', '', 'cdyzGkj0TeSOfCAAZrr8Id:APA91bEY6S6wZg7mRQV6ny3wsZmN6oXqGD9ejwb7F2tFKaMp2bB7ThmXLknQ5cEat9xTdp4K70S1kdsQn-X3QmjDmfP38oqSGfJuyyKtORkzlQGT08w5vlS30WcaZ0ke3kyeJPmmAI8Y', '17.4867333', '78.3994715', '1963bd5135521d623f6c29e6b1174975', 1, '2020-09-03 10:39:31', NULL, NULL, NULL),
(10, 'avinash', 'avinashashwini1@gmail.com', NULL, '91', '9515890642', '', '1', '3', 'lingampally', '500019', '', 0, '9Y5LFFIWGV', '', 'deHHHeOnQSOBsuztsebgAn:APA91bGOEfiHxqTREa-jMmpqkbl57JMEM-ZT_9m6cD-0ktH6jx5gJqopFU5FkDgjYZ0nu3YmI9zjeMXASvBv4Ln1E-iD80yJzMflolC6NP-P7QV8R9rZcsac6VZ-YB4yYhoOvW11B5Ex', '17.4880615', '78.4097901', '3fca379b3f0e322b7b7967bfcfb948ad', 1, '2020-09-03 17:02:36', NULL, NULL, NULL),
(11, 'madhu', 'madhubotlamadhu@gmail.com', NULL, '91', '9666290838', '', '1', '3', 'anu furniture  chandanagar', '500019', '', 0, 'HX71RKDS5H', '', 'f8mIY2g7S9O06Pn6fvKy-_:APA91bFBfpH3i3gV4TGu-o3PgTZXqc5dfYphtb1c18YE19SbwCwuCxJzmKOJL6Bd4It24ets7MNNr7YDWIMy6em7zYHCbsOVBRuQvZs6tGdRc6ldFRnrkq-oLrWYRNjBPFWg-B7dY7Ic', '17.4879487', '78.4102754', '84811fed582a9c7b8cb41f68f0ed6147', 1, '2020-09-03 22:12:30', NULL, NULL, NULL),
(12, 'swikrutee', 'swikruteebhatnagar@gmail.com', NULL, '91', '7993432175', '', '1', '16', 'shanti gardens,C block flat no 503,Nacharam,hyd', '500076', '', 0, 'FJD011QISO', '', 'f7sYxKX4Q5u0DtdDlBtepr:APA91bHEaof8j9UGqjeDaprCfGZtWon6wPLQqFMGuJT0GbYBKJXSr-_WXNT-3LI3OJlLcC6XRrsLpE1BriD8sbMKYBC7X6NCxpvKoIPkr1dWW4TWLyzFHkwkvnnigDG7iLTfmUSnVXzZ', '17.4254191', '78.5526678', '6a44840b70bcb02bf6d31979998af798', 1, '2020-09-04 09:44:18', NULL, NULL, NULL),
(13, 'D RAMA Raju', 'derangularamaraju1@gmail.com', NULL, '91', '8886976410', '31-03-1996', '1', '16', 'Vinayaka Nagar Filmnagar jubilee Hyderabad 500096', '500019', '', 0, 'ZMH9GB1W0H', '', 'crvKxhtxTyuwfQecWFi0f3:APA91bHxAbn-80Fx7YRsXGvFoHB6iyJe_oYdDDjjJisiY87K2e10XzPP2Yy9UrpAuHmwRQUnhuGS3zjkJDJ21XnMFcqjK1CXngXqKcB4F_DZ6tEVjwLttBbiFIBwix9dPa4uSHRIN-if', '17.4503205', '78.3815868', '9263f7ccfdcaf70ba157ae69a0ecb690', 1, '2020-09-04 18:02:12', NULL, NULL, NULL),
(14, 'pgangaramulu', 'ramulupgangaramulu@gmail.com', NULL, '91', '9441843426', '', '1', '13', 'Near raiwaystation', '500019', '', 0, 'OKEJQZ5ZXB', '', 'elOXyATsRLioisT4APHus8:APA91bHbj3SxRgSCk4XDghF1C7yQ_mfYMCIqGioJOjF4ynogjRQtSCSFhFefdfmLNS9zprfFjRds6-oWHsivgzR4NP3Xn6-8IZ19O9Ga3Lvyn1dLC8rOudCVDrHJWpDJz5QSK13_3XD4', '17.3349177', '77.9051587', '25d55ad283aa400af464c76d713c07ad', 1, '2020-09-06 17:21:50', NULL, NULL, NULL),
(15, 'vbbh', 'anmol.agarwal00000@gmail.com', NULL, '91', '8897205090', '', '1', '16', 'Adarsh nagar', '500063', '', 0, 'NBAIB12GFG', '', 'c5b-K8dVQkGPTLKOvEmsuU:APA91bHldBy0r4fwDkwwwhNV1NxqTkBaHPJtt1lL4ls7agv_H9D9BjY7EtI1RQ45GOWARFrLsk2USkhVGUnfQMYp-lEgnC6MHE8VdnNImiastn9pFBq6KYyjaozpRD-gM63-PETRuVIa', '17.4062893', '78.4699663', 'e19d5cd5af0378da05f63f891c7467af', 1, '2020-09-10 22:14:47', NULL, NULL, NULL),
(16, 'prapul', 'prapul397@gmail.com', NULL, '91', '9866032963', '', '1', '16', 'narsingi, near community hall', '500089', '', 0, 'T7E3Z33185', '', 'eCJmHDuDR462rHMcrV0h-V:APA91bEs7eLVvT-ePM1Go7T8a0-DEg0lVF_8U_zxl7-XS63n29HY7PqB3-kAOE8uKqjhUz9pXvrbwFIGaterPWvDp2sdjeJRICLCac45cMqEmtSwh257hdfmcT1iEnPxuW-aQkdq_leX', '17.3924282', '78.3604182', 'd4c9fcb601ebe8aa8d4ab59dcdbf692a', 1, '2020-09-11 00:35:13', NULL, NULL, NULL),
(17, 'Harshith', 'harshithrambo@gmail.com', NULL, '91', '9398282305', '', '1', '20', 'Plotno 204 2nd floor kphb 6th phase sai Montisorri School apartment Anupama Hospital Backside Hyderabad.', '500078', '', 0, 'B0MWDP9L3M', '', 'fAECi1v8TvyWK6Li4WLtJj:APA91bFmn---HDeXNNa9Dvz-pU5ClB8OBnxXx3wJxuBsZ1P4g7X9vA1uoFwaQ5kDrokwxGDDD5rLosk4LDWkCi6XFGLsTCWETukyK0C14PFL1HHknaU2GBKQvhKkWj9gD8zDUrgR8Q9q', '17.4862573', '78.3900911', '7348001f3680253975a7e13186c965f1', 1, '2020-09-11 12:03:48', NULL, NULL, NULL),
(18, 'Lavanya', 'lavanya569podi@gmail.con', NULL, '91', '9000350528', '', '1', '19', '#8, Near BABU RAO community hall, Narsingi,,9866032963', '500089', '', 0, 'FGTLJO8IHZ', 'T7E3Z33185', 'cvxICFeKRRSwvbqxxnz_XI:APA91bHjfs7_TzBO1GxKYWzHzVIo7KGt6YyWNjX7CghT4P8xQBJvJNjZXaYEp4k1ousYRDOc9KeRSN42VrhAYEnu5Xm5BgyROU3A1HMJNceVEr4MhbF69f9xm5pK9w15subt2Ger0LA7', '17.3924291', '78.3604193', 'ccd4680e0e9a1a166b9fd01327a2aeeb', 1, '2020-09-11 19:26:01', NULL, NULL, NULL),
(19, 'kumaraswamy', 'asd@as.com', NULL, '91', '9490974433', '', '1', '20', 'the', '500072', '', 0, 'WNXS6M06UF', '', 'fMPTJO7jS7O4yhH_kyeAa0:APA91bERFP8egJZZcb1EOLdeMtWNQzrG1nSphdqsuHL80jiPUYeJPxRr7cMjMjodgVQGTvJB1j19nje1DoD7qPo9r3hD-CNHDoi13IggudiX20hnOEqkMvxZOnBM3JzeQAQ8-x-16PIp', '16.5156271', '80.6250763', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2020-09-12 20:21:21', NULL, NULL, NULL),
(20, 'G.sudhakar', 'sudhagarikapati78@gmail.com', NULL, '91', '9908782178', '', '1', '13', 'near railway satation', '500019', '', 0, '1L7IWB7XRL', '', 'fFMVrZRCSZCX13opIl-FUc:APA91bFN-xk-hV37RBLP7J6E29wpS-awfwXtl-EgszXJo_I64RfHpXWvm5eeUcC0yQfCugTxgJ_EF1kWecJpff7z2Njf0wX9kd0vMGXYJq4sP5scZM8gpuY0hJVXSEcDcAkGgr-1Tro1', '17.3349384', '77.9051334', '30ab897e6baefdd611774b990af81cac', 1, '2020-09-13 10:49:33', NULL, NULL, NULL),
(21, 'rakesh', 'rakeshyadav2462002@gmail.com', NULL, '911', '6300774346', '01-01-2000', '1', '12', 'gokul nagar colony ', '502319', '', 0, 'LTW6A3PWJ2', '', 'eC3vSutDTUi3uJIYwBmWLD:APA91bF4WtNNanlTqVn2LZtBVuuZ_ODkrWId6XTYNAU4JDdSLdUH9-GIZYqinQAgxjnFu43sJiFxNFIldfKIpkWCldaxTt3EwaBxlLNV5kvmRQgUTw1dVRZvARQ5iLUBCqQ0o1n9myeJ', '17.535407', '78.261319', 'ff77344f5b521c71183e4129adc6642b', 1, '2020-09-15 19:39:21', NULL, NULL, NULL),
(22, 'JAGAN RAM', 'jaganram075@gmail.com', NULL, '91', '9052872794', '17-10-1999', '1', '12', 'Patancheru gokul nagar,chinna shivalayam ', '502319', '', 0, '7GGFCUWFX9', '', 'dF7GuNn4Soaf5P7PZBXi6b:APA91bE6lhEB9h7ThfXRjbpPaj-RSU7EEDpiECDEDviCoame7mz0ti2ZglKgQj2J4wGAh1NkWs1DH3rE48sAJ9bfMabCSw_AOEu0lPYvT-Ec28obZDKF2raIZjxZzldE_-reex-AE8mO', '17.5296008', '78.2635309', '95acc379a8e65b301f481efc13bbfe89', 1, '2020-09-15 20:10:32', NULL, NULL, NULL),
(23, 'raja', 'nnraja476@gmail.com', NULL, '91', '7997776004', '', '1', '20', 'plot no 303 3rd floor sai montisorri school apartments kphb 6th phase anuapama hospital backside', '500078', '', 56, 'CTO272NXJJ', 'B0MWDP9L3M', 'fZ6lMRJETs-9-0w7bxAYyR:APA91bHLjLPFBxwovuMVzJDrZX3e2qYz-THmu252Hgp5XSsMi0CjOje0JKiUdrnxR_foOqw4PrKrA35Nvvjl3Ec8O6NzB_HRQPhOcVJTlByymQv3fsV0IgCK7wzXzSydflY6E4ajEFxr', '17.4862758', '78.3900774', 'c1ed331d13bd45b4ae8b5a30bb6d450d', 1, '2020-09-16 11:07:26', NULL, NULL, NULL),
(24, 'Sruthi', 'sruthisbeautyparlour47@gmail.com', NULL, '91', '7989897077', '', '1', '20', 'Plotno 204 2ndflorr sai Montisorri School apartment Hig 519 Kphb 6th phase Anupama Hospital Backside Hyd500078', '500078', '', 0, 'D3H953MI99', 'B0MWDP9L3M', 'fAECi1v8TvyWK6Li4WLtJj:APA91bFmn---HDeXNNa9Dvz-pU5ClB8OBnxXx3wJxuBsZ1P4g7X9vA1uoFwaQ5kDrokwxGDDD5rLosk4LDWkCi6XFGLsTCWETukyK0C14PFL1HHknaU2GBKQvhKkWj9gD8zDUrgR8Q9q', '17.4860521', '78.3901338', 'a4dc068bc734fcfeb4effdc974d16975', 1, '2020-09-16 15:40:10', NULL, NULL, NULL),
(25, 'srinu', 'harshithramb@gmail.com', NULL, '91', '6281247601', '', '1', '15', 'shop no 3 jaya empire near nala pochama temple srinivasa nagar colony near balaji towers', '500085', '', 0, 'E8IPMQHRG0', '', 'f8NhQLrZRFiOyYdXqPIJDB:APA91bGy8W0Y3XO2j6AcTsT4pToL9u5jXgssWkTq7fLzP3GFcvm-M5GVQEWDGaZ3M4ybJpBbCZZlzsltjetS-UkgbMbKuyVHzo6A7AU1PI9jZVG7kD3PigH1eo7ncoUY_QSU8fk03PgK', '17.5146222', '78.3885216', 'a9fe655e7f2cc313981a8dbedbaba509', 1, '2020-09-19 15:40:03', NULL, NULL, NULL),
(26, 'anil ', 'anil12anil128@gmail.com', NULL, '91', '7093049755', '', '1', '19', '8-5, Near Methodist Church, Narsingi', '500089', '', 0, 'T6T8VO79D5', 'T7E3Z33185', 'dfBGPEjbRkCl52Fz0lopAC:APA91bEtX5UXaK0iJrF9Qqtt_z0MxHhAl9ecx23H05LMUdt6PIDxvAd89vFYHGAONGaYTw7bPBBipXWuMjH8gnZEbkM96ui3-B_VLRWh54vekjGD41EHz8cOvecUtpP23Xw3xhdYiw7g', '17.392581510686643', '78.36013354361057', 'ccd4680e0e9a1a166b9fd01327a2aeeb', 1, '2020-09-19 17:57:48', NULL, NULL, NULL),
(27, 'surya', 'hatshithvarma@gmail.com', NULL, '91', '9133328883', '', '1', '15', 'jaya empire shop no 3 srinivas nagar colony near balaji towers nizampet', '500078', '', 0, 'NJWGHYPY38', 'B0MWDP9L3M', 'f8NhQLrZRFiOyYdXqPIJDB:APA91bGy8W0Y3XO2j6AcTsT4pToL9u5jXgssWkTq7fLzP3GFcvm-M5GVQEWDGaZ3M4ybJpBbCZZlzsltjetS-UkgbMbKuyVHzo6A7AU1PI9jZVG7kD3PigH1eo7ncoUY_QSU8fk03PgK', '17.5209271', '78.3784422', '2c66321bca435dc2b91c74ee4e5a51d3', 1, '2020-09-20 14:18:49', NULL, NULL, NULL),
(28, 'Sunanda Reddy', 'sunandareddy6101989@gmail.com', NULL, '', '9502453644', '', '1', '15', 'flat 008,d block, vazhraa nirman pushpak, Nizampet, Hyderabad, 500090', '500090', '', 0, 'LSAJCNCOKT', '', 'evWk3eMpDBeu_DscqnqMyR:APA91bHoEplVldL0BkyV86M4ZKJev5AKhyhXv2waZEczyxrspOC__VsJZkhWEHg5EltznXSaCEiNT0Q_N0Bl6u0W02NkMwPyQodtXRS3-kHEmLN97dpsYRW4RF6XhQdhrcb4VWX-cpsJ', '17.51409721466063', '78.38690232485533', '0c2a54e8a9caf36152ce95bf3f60c04a', 1, '2020-09-21 11:40:57', NULL, NULL, NULL),
(29, 'Ajay', 'santhoshajay20@gmail.com', NULL, '91', '8008900686', '', '1', '11', 'Plot 29, Road 1, Nandan Ratan Pride, Behind Symphony park homes, Landmark Heritage super market, \nSurvey no. 96/AA - 105AA, Beeramguda, Bandlaguda Village, Ramachandra Puram Mandal, Hyderabad,', '502319', '', 0, 'A74F5CLYUM', '', 'eCg-hvJiR-qVcea3AsPk9Z:APA91bFp5A9v_qeEL5jEruPcZJKIjtSdjyh_vq5OG2O4zmBTcoGGQl4mIfXqBDrsK1tmZGRQ6UIkRL-El18xHCXrnlM1NFx_0GpvM65usCSAqELSnL36E_F92FL_w1A_pLSpVP2imXsr', '17.5331365', '78.2825479', '253b81feba94fbb4aa94e553fdd63c6a', 1, '2020-09-27 10:55:27', NULL, NULL, NULL),
(30, 'ranjith', 'ranranjith852@gmail.com', NULL, '91', '9063444745', '', '1', '21', '#4, ground F, opposite oriantal bank of commerce', '500032', '', 0, '11T16IWFL2', 'T7E3Z33185', 'eMzJ9Iv-RpmNJn9g1flw95:APA91bHiPzUrsNR7YGf3mgogp9ije79DeEu5di9E5S8xyv5rQaZCVZsNqVCY9ll-dOYgqaewuchJSN-brhLGhV03KGBIXdWYcqtWOqi4Q3hq3zggHi_fdY98nAibAnug6SjUDq1-w9Mw', '17.447868301864652', '78.36231887340546', 'd4c9fcb601ebe8aa8d4ab59dcdbf692a', 1, '2020-09-27 22:57:37', NULL, NULL, NULL),
(31, 'Raja', 'sairamgonnabathula@gmail.com', NULL, '91', '9381772307', '', '1', '20', 'Plotno 303 3rd floor sai Montisorri School apartment Hig 519 Kphb 6th phase Hyd', '500078', '', 0, '4FU5E9KXQZ', '', 'fAECi1v8TvyWK6Li4WLtJj:APA91bFmn---HDeXNNa9Dvz-pU5ClB8OBnxXx3wJxuBsZ1P4g7X9vA1uoFwaQ5kDrokwxGDDD5rLosk4LDWkCi6XFGLsTCWETukyK0C14PFL1HHknaU2GBKQvhKkWj9gD8zDUrgR8Q9q', '17.4862867', '78.3900588', 'c1ed331d13bd45b4ae8b5a30bb6d450d', 1, '2020-09-29 18:51:29', NULL, NULL, NULL),
(32, 'Sivanag YK', 'sivanagyk@gmail.com', NULL, '91', '9642003767', '', '1', '11', 'House no:69, 3rd Lane,   Nandan Ratan Pride, Beside Symphony Park Homes, Bandlaguda,  Beeramguda,  Hyderabad', '502319', '', 0, 'OCP85NDWAL', '', 'fgSMmHhGTMys_Bp9wA-yiD:APA91bE1W7LfQNrGsvY3aomF3TUlxAQjbl3hLfr3yqaiCFbqMOEP1nOvPZIpVzIL_JlG2tLTf9zDvTQZCCCnAkYOARvtl7QQpU8L1809WMNu5-TcKLHzIbXFt9GUoBmId_LUMif1L1AA', '17.5294224', '78.2830289', 'e36fa5b55ac1b70b469f4dd6b1b9261e', 1, '2020-10-01 08:27:52', NULL, NULL, NULL),
(33, 'praveen kumar', 'mpk80801@gmail.com', NULL, '91', '6302348234', '', '1', '12', 'ramchedrapuram', '502300', '', 0, 'CPTIDG4D07', '', 'e6VlOX6aRzeP9YjUGx2sLr:APA91bEymgEzf2Xd8z0QqKyBAmCku6mKJ3fWBKhWrI-Td6Wl8YBMxixQfg8D6lWX9pL-gIzw4mlHU50xNUvc9k5wKvjdjlABaDMQwoGqH1zV-v99hCiTjduKSLRuRxe-MRmUx9bSVSM0', '17.3307735', '77.9187029', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2020-10-03 13:50:29', NULL, NULL, NULL),
(34, 'mohan', 'mohankavali5@gmail.com', NULL, '91', '9652561847', '', '1', '12', 'ramcharanra pur', '502300', '', 0, 'FKKZV0C0D9', '', 'erclLXglQJWxxDnxSiAdMU:APA91bH19Y8kjhpqKPuiYZx16njvJ2Db3l-z4oWTHzwO_liNThRm5i1AXi6wzG62sPCrZ6EFXnYeu7jYSlNiilLG7o1H3M-pf0Cxm3Q2TXGoyysy3im3maDyA6oBbMeLGyqb9mabL2U5', '17.3307775', '77.9187006', '6ebe76c9fb411be97b3b0d48b791a7c9', 1, '2020-10-03 13:52:52', NULL, NULL, NULL),
(35, 'praveen', 'madduri.praveen@gmail.com', NULL, '91', '7680988027', '', '1', '11', 'sriharivasamu FL.no.502', '502032', '', 52, 'GE30LJ854X', '', 'd9Abx7nuR-myiwcenQP1Ci:APA91bEbwdQVp13TtNJOzNMIJkCh0EXcjzQofQiZ33n2b28NtBfr7sx5Fq7Ahnp2ws16nZfoynUrPOVm5xG6Y30wK5CwLZ0xILrSKLLJ_xB0LYv-qWZgipeGrWI_PFzNL9dLlWyvF_8_', '17.5290624', '78.2929849', 'abbe87a93cc5cb7b1df9fb942e556df9', 1, '2020-10-04 19:17:28', NULL, NULL, NULL),
(36, 'Sruthi', 'sruthisbeautyparlour47@gmail.com', NULL, '91', '9963149757', '', '1', '20', 'Plotno 204 hig 519 sai Montisorri School apartment Kphb 6th phase Anupama Hospital Backside Hyd 500078', '500078', '', 0, 'EH2VR5E0S9', '', 'fAECi1v8TvyWK6Li4WLtJj:APA91bFmn---HDeXNNa9Dvz-pU5ClB8OBnxXx3wJxuBsZ1P4g7X9vA1uoFwaQ5kDrokwxGDDD5rLosk4LDWkCi6XFGLsTCWETukyK0C14PFL1HHknaU2GBKQvhKkWj9gD8zDUrgR8Q9q', '17.5146411', '78.3884916', 'ee3fd17a2b25e101afad8097c79be740', 1, '2020-10-06 18:27:28', NULL, NULL, NULL),
(37, 'Praveen', 'praveen.turbo@gmail.com', NULL, '91', '8332805929', '', '1', '11', 'plot no. 30,Nandan rathan pride, symphony back side, krishnareddy pet road, beeramduda', '502032', '', 0, 'WIX608FFNB', '', 'dNKkmtatSKqSTFpnTzz3hx:APA91bHfgcwS1F9lp7Zi1PObP_NznpTr7FMZ1eKarhV9xZ2Rxl189D_6yJJ6Oz2FYoyST59Ssuqy6Ai6lM-alCDvhnmkMi30azmsVYJINUIPfNGix6lTiElqHeVSNTk32afYdkIs-aJw', '17.5312639', '78.2840394', '6455e46dcf8f048284e4ee77ddf587ec', 1, '2020-10-06 19:35:15', NULL, NULL, NULL),
(38, 'Ramesh', 'rameshdama2000@gmail.com', NULL, '91', '8333806284', '', '1', '20', 'SRT 63, near Emmanuel church sanath nagar, Hyderabad', '500018', '', 0, 'EAM5HBZ8RT', '', 'dNFFyG3cR5GvG7b8hkG6FO:APA91bF2MtOIKNKaFJNCZWgCDKR0vMiKRLuWcz6kC6gQ4drR7uYgfrTAE47KrUxqli3-fUuecJXXhWr4tsqriFjj0QBIr6wAh2_ecLORrahrhT_mMHIBb8Xl5IEDwCnHhtEC5kAkaY-A', '17.45187438066591', '78.44661165028812', 'ee6a085462ecaae9ef1902e43bd80a50', 1, '2020-10-08 23:16:57', NULL, NULL, NULL),
(39, 'sreevalli', 'sreevalliusha2004@gmail.com', NULL, '91', '9063917758', '', '1', '20', 'flat no 415/A sai Balaji towers,near sai baba temple apiic colony substation, jeedimetla , hyderabad', '500055', '', 0, '4VNFRAABA4', '4FU5E9KXQZ', 'e6BBCPUcS7mIzqzuY-39Rf:APA91bEW-UNtI4DjTOOUu1V0m4GsviX3wIS_cAMH6Q7s3TYLiddtuL2GSFck9ZTRjnix-N0ASynmGrdsLZrR4B2IBGJOTCrW-y4dqr0WnTAp7ImJBu4r1_Z-gEOHe5xHKpEK8YWBnQLu', '17.520022', '78.4431996', '2e2b77e53fb4b6329b96203cbfc5be22', 1, '2020-10-09 12:08:58', NULL, NULL, NULL),
(40, 'Devi', 'devi.madduri@gmail.com', NULL, '91', '9912014729', '', '8', '11', 'Fl.no.501, Sriharivasamu, Greenmeadows, Beeramguda, opposite Venkateswara Swamy temple.', '502032', '', 0, 'W80WC8OQT2', '', 'fa4-2HRVQZ6Z7BhVl6yfvR:APA91bGZtaRp_jKWD6nOFulhOp3xKBDZ2-ibE2wQZzT2DDCRsRskQH-MqELguP5Wia_84D2nmoxfgqtmnZUGqDxqE2TZS71aQmptoDBdr3B3KaTIKUjsKn2BTiz2r4WAp-oUri1sKi0-', '17.5290471', '78.292961', 'abbe87a93cc5cb7b1df9fb942e556df9', 1, '2020-10-11 10:10:30', NULL, NULL, NULL),
(41, 'Sindhu', 'sindhu.7649@gmail.com', NULL, '91', '8019410415', '', '1', '20', 'kphb colony forum opposite', '500072', '', 0, 'HZLU7L9OLE', '4VNFRAABA4', 'ebhTjkviTP-cF6Da5d2vEx:APA91bHI33XpPtjZzYuGXCd0mbM_womBmgmqAQpY9mNosk6k6-1ssnWoqjQ0YaGWP9_J3RAdiDxhg4iVqYpaeL3ZBehep1A2CKG51w70I8zjV_C9laKMOKeDztmGITtQJK0MFpY-pNDQ', '17.5200588', '78.4432056', '57b695a12350d6d590831d7b59b992a4', 1, '2020-10-13 14:21:36', NULL, NULL, NULL),
(42, 'Madduri', 'p.madduri@yahoo.com', NULL, '91', '9985523133', '', '8', '11', 'Sriharivasamu,Greenmeadows,Near Sri Chaitanya Technoc School, opp to temple.', '502032', '', 0, '8QVR570H2T', 'GE30LJ854X', 'd9Abx7nuR-myiwcenQP1Ci:APA91bEbwdQVp13TtNJOzNMIJkCh0EXcjzQofQiZ33n2b28NtBfr7sx5Fq7Ahnp2ws16nZfoynUrPOVm5xG6Y30wK5CwLZ0xILrSKLLJ_xB0LYv-qWZgipeGrWI_PFzNL9dLlWyvF_8_', '17.5290133', '78.2929509', '4d3ac27f7bbb9eec591837d32fa871ac', 1, '2020-10-15 06:38:33', NULL, NULL, NULL),
(43, 'Lakshmi', 'gopisettilaxmi55@gmail.com', NULL, '91', '7013431523', '', '1', '11', 'Flat no:503, Srihari vasamu,Green meadows colony, second left to srichaitanya school, Beeramguda, Hyderabad.', '502032', '', 0, 'G4NTKSO206', '', 'fa4-2HRVQZ6Z7BhVl6yfvR:APA91bGZtaRp_jKWD6nOFulhOp3xKBDZ2-ibE2wQZzT2DDCRsRskQH-MqELguP5Wia_84D2nmoxfgqtmnZUGqDxqE2TZS71aQmptoDBdr3B3KaTIKUjsKn2BTiz2r4WAp-oUri1sKi0-', '17.5290376', '78.2929581', 'abbe87a93cc5cb7b1df9fb942e556df9', 1, '2020-10-17 23:11:09', NULL, NULL, NULL),
(44, 'Harshith', 'sruthisbeautyparlour47@gmail.com', NULL, '91', '9133145484', '', '1', '20', 'Plotno 204 hig 519 sai Montisorri School apartment Kphb 6th phase Anupama Hospital Backside Hyd', '500072', '', 0, 'UA0KNU8UGT', '', 'fAECi1v8TvyWK6Li4WLtJj:APA91bFmn---HDeXNNa9Dvz-pU5ClB8OBnxXx3wJxuBsZ1P4g7X9vA1uoFwaQ5kDrokwxGDDD5rLosk4LDWkCi6XFGLsTCWETukyK0C14PFL1HHknaU2GBKQvhKkWj9gD8zDUrgR8Q9q', '17.5145994', '78.3884869', '5f17f19889c6dd2c30f6c7c20e5c599d', 1, '2020-10-18 19:04:27', NULL, NULL, NULL),
(45, 'Manoj', 'ravillamanoj@gmail.com', NULL, '91', '7799689090', '', '1', '20', 'HIG-519, FLOT NO 303, KPHB 6TH PHASE', '500072', '', 0, 'BX8EH3S60R', 'CTO272NXJJ', 'e8MZRBHDRTqk5LwsP3CJWW:APA91bEXMmxTid7s5faHppfY3xL_hJeGtiWXgpDBi52UMZK_39lp8rrUzoF-2ZeSm00s2ix-oTVaxGxAP1V2QsAmg2kXA1GLCyySsQ5LbSBeDDwzu94hIVAsOAnHkhMJPAlTxpU1A5ec', '17.486243', '78.3900402', 'b1e2eb87af19003b002c2bfffeb8ad6f', 1, '2020-10-24 07:58:46', NULL, NULL, NULL),
(46, 'Bharathi', 'bharathikarlapudi014@gmail.com', NULL, '91', '9110558859', '', '1', '20', 'HIG-519, Sai English High school, Kphb 6th phase, 500072', '500072', '', 0, 'YQ9M4R1J8J', 'BX8EH3S60R', 'e_OcraILQ2y29M25sZB9vk:APA91bFEkkvIEXUxHNCimEnog_kqXe58mTErMAhI7Un1DbZm3rBYM7_W8uLdoXDBwgJWxkhlPXIE9nqj4TfBeD8DG6vLLPizjUtP-Deb35-awqFS2L89bxgV0eTyr9cV0hJuC-dU6OU_', '17.4862688', '78.3900311', '7acf7d347ed12f3d16d9216c93a46bab', 1, '2020-11-11 19:04:45', NULL, NULL, NULL),
(47, 'sanath', 'manchalasanath@gmail.com', NULL, '91', '9700980038', '', '1', '11', 'Hotel om Nandhan \\nplot no-49 Bramarbika colony beeramguda', '502032', '', 0, '36NSFIZ1MM', '', 'dsHEWR3CSJied8PnGzt0cG:APA91bFiml-Q8KvkKvHXOdkle3wNNx3VPaq2Auv4XgCwQ8yg9P7Ee-iWRPh60BxX0p6YbLlFNY7dQ2oB-JwCT4bFpLwwVjptVOj9dhCXBhi0CK0FtJn6KbaxJEAHggobsf8y06Z1ynBr', '17.5193225', '78.2998509', 'def15af64c8e06afc753ce60e5a94fcf', 1, '2020-12-13 08:16:38', NULL, NULL, NULL),
(48, 'sk', 'shreezshreez@gmail.com', NULL, '91', '7207303636', '', '1', '20', '34-65\nHome', '500028', '', 0, '4U8M5GLY20', '', 'dhp_gTAISYeOz7U6mB_dqP:APA91bEGAIndKESlD5p2d0gQE30BhGbJGrTvSnOpJnm3DCdW5MQL4WpmEDWHTgiWBEuy2OfyHmkjjsfcHu6Ik2ZUj9IMdCD5jY7fqOGpwAaaV9x0Mr8BMYxfly9UoP83bqLgBCCDicWs', '17.4955848', '78.5029497', '1228072f7e9abaf28147e7afd4b33274', 1, '2020-12-29 23:26:35', NULL, NULL, NULL),
(49, 'mani', 'dereddymaani@gmail.com', NULL, '91', '7032681085', '', '1', '15', 'nizampet', '500072', '', 0, 'IB18UO7BMV', '', '81dc9bdb52d04dc20036dbd8313ed055-QqgC19iVnVvtt5CbaOhpr7kLRsZpIF5WALX1LQ1j', '17.4912075', '78.4514271', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2021-01-10 18:36:05', NULL, NULL, NULL),
(50, 'vishu', 'vishujindal66@gmail.com', 'default_user_profile.png', '91', '7976599339', '', '', '', '', '', '', 49, '2MM6ON1YPN', '', '', '0', '0', 'ab56b4d92b40713acc5af89985d4b786', 1, '2021-02-04 12:05:26', NULL, NULL, NULL),
(51, 'Bhaskar', 'k.bhaskar2005@gmail.com', 'default_user_profile.png', '91', '9100370659', '', '', '', '', '', '', 0, '1G34X042S0', '', 'dOalvMKHS6y66idLLzGEq3:APA91bH_oW4-iPJjhrjR1HfFCZBsf9KFsXzMG038kzY_YNZSthR_UrRQocJ7qC1rzGfaturE3B1cyzpImR5U2QUUdkBSEv_Uc7tN5Tpc5yNjxIOX3WuUMXStrnI5tx3fNdD8Wm6bWgxs', '0', '0', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-02-05 08:11:56', NULL, NULL, NULL),
(52, 'mahesh', 'kommumahesh31@gmail.com', 'default_user_profile.png', '91', '9133755736', '', '', '', '', '', '', 0, 'XGQR4D24E4', '', 'fYuLrojnRSaCVaE_1FYWai:APA91bHrJ86lFF4ARMb_0WzbjvkpWtfeQ2Cgi4Heo49VW7ljsqwJwDeuaMz6fmNz9HeN7uqpfMNu0JvuWmI_Gv5jI6kibDhPSlBH9RcXSDJtuMFmw4CurMcZpJBtx0_PGcQzqZ3cMWEy', '0', '0', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2021-02-11 11:27:01', NULL, NULL, NULL),
(53, 'james', 'james123@gmail.com', '1613998980.0161.jpg', '91', '7780174532', '', '', '', '', '', '', 2001, 'GQFPB3SHQI', '', 'f0-l3CKLRIKCMx78cBg43P:APA91bG12r4RUZob6NL6V0ymc7p8DDXUy44rQa3ZjvdD1rQmyvZuzGprU6bXfnaiQuFbBWI-IlA2wF3SU8wja2Q9rKsa4A3HZH8VBw4YF34r_96uf3YVmxDOVlspYxu6dQqcB6Vdkf8g', '0', '0', '202cb962ac59075b964b07152d234b70', 1, '2021-02-22 08:46:10', NULL, NULL, NULL),
(54, 'uday', 'udaymasdmscs@gmail.com', 'default_user_profile.png', '91', '9502079240', '', '', '', '', '', '', 0, '92DJVYJ9SA', '', '', '0', '0', 'e618a6e3764091e6c0204fe5ecafba07', 1, '2021-03-15 08:39:38', NULL, NULL, NULL),
(55, 'basker', 'chillabhanu2317@gmail.com', 'default_user_profile.png', '91', '9381570624', '', '', '', '', '', '', 0, 'VJQM884Z2U', '', 'ddJuOmvwRyqrRjjOfxrgj6:APA91bEuE42-PCa05Xq2lesPRogoUb66lWqyr9ykhjdDfto9dxfpfZOm9t8sF82ZmMnTK5TXB5GQ39YWn1VEZu0Sddct6tcf4KxXS-lrAmVTImQS5tVUb-qvXWQcw5xeB8kr_nmzKIl_', '0', '0', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2021-06-26 10:55:03', NULL, NULL, NULL),
(56, 'Sathish Kumar Munugala', 'sathishkumarmunugala@gmail.com', 'default_user_profile.png', '91', '8142815139', '', '', '', '', '', '', 0, 'L41OJOZ662', '', 'dIqmDcJPQOO82K97CzLKSQ:APA91bE9L4NRQFAN8VuFDyl0Jz8JeTycmZVZ4fIXSfJlmEvOEiN3MpBoimIDR73J09Yra8G8BIR2UULzAXpki24wbVD_5ayApuLbIazMEFlE6SpSkMp_XDX9j0sB7CEBG8hAWcWBL2RZ', '0', '0', 'b8903ac5e38533abe2e4a0bad712fc07', 1, '2021-06-26 12:11:32', NULL, NULL, NULL),
(57, 'satya', 'm.satya541@gmail.com', 'default_user_profile.png', '91', '9052603034', '', '', '', '', '', '', 0, 'R1UC5AOYAW', '', 'cLIf1sqPQRSr-0jdCvYxao:APA91bEBAeh_BcmSR1wXSk0891nXPJLdQ1l3fNEsJe6zej4pGKlCsQkso7SD4vLqnKOmYoWXcOu3EJNllABH3CIjwbWW9DbBNjWLXWx_9aUynvbHQPQJlD6LpqG9IMN1nxgxXTJ9SkSe', '0', '0', '557aa07357cecf56cb8e2e3a078608ca', 1, '2021-07-17 16:07:14', NULL, NULL, NULL),
(58, 'ANKIT KUMAR', 'official@custdeal.com', 'default_user_profile.png', '91', '9478844116', '2021-08-03', '3', '1', 'Street Hoshiarpur', '144222', '', 0, '', NULL, '', '5465464646', '564465654', '1c6659e5199a4a611284dfdb548a3015', 1, '2021-08-02 11:06:07', 'gfdgfdg', 2, 1),
(59, 'dgfdgf', 'dgfdg@fdhgfh.fghgf', 'default_user_profile.png', '91', '3445435435', '2021-09-06', '3', '2', 'fghgfhggh', '43543543', '', 0, '', NULL, '', '43244324', '432432432', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-08-02 11:08:43', 'fdgdfgf', 1, 1),
(60, 'gfdgfd', 'gfdgfdg@sdgfd.fdhfgh', '02-08-2021-16-39-38userlogo copy.jpg', '91', '4543543543', '2021-08-25', '3', '2', '35435454354', '224324324', '', 0, '', NULL, '', '43543543543', '5435435435', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-08-02 11:09:38', 'gfdgffd', 2, 1),
(61, 'ghghfghfh', 'ghjghj@hjghjj.jjhjhj', 'default_user_profile.png', '91', '786786787867', '2021-08-12', '3', '1', 'hfhghjghj', '786786', '', 0, '', NULL, '', '786786786', '7678687687', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-08-06 11:25:26', 'hjhhjghj', 1, 1);

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
-- Indexes for table `subcription_plan`
--
ALTER TABLE `subcription_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcription_products`
--
ALTER TABLE `subcription_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_history`
--
ALTER TABLE `subscription_history`
  ADD PRIMARY KEY (`SHID`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

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
  MODIFY `BranchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=548;

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
-- AUTO_INCREMENT for table `subcription_plan`
--
ALTER TABLE `subcription_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcription_products`
--
ALTER TABLE `subcription_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subscription_history`
--
ALTER TABLE `subscription_history`
  MODIFY `SHID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
