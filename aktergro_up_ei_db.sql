-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2020 at 07:06 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aktergro_up_ei_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `doc_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `unit_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjustments`
--

INSERT INTO `adjustments` (`id`, `date`, `reference`, `location`, `doc_file`, `item_id`, `unit_id`, `quantity`, `note`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2020-10-05 06:37:39', 'ADJ0010001', 1, '', 17, '0', '50', NULL, 1, '2020-10-04 22:37:39', '2020-10-04 22:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT 0,
  `parent_category` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`, `department_id`, `parent_category`, `description`, `created_at`, `updated_at`) VALUES
(1, '021', 'Dairy Foods', 1, 0, 'Dairy Foods', '2020-09-05 23:10:03', '2020-09-05 23:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `combos`
--

CREATE TABLE `combos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` int(11) NOT NULL,
  `combo_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `combos`
--

INSERT INTO `combos` (`id`, `product_id`, `barcode`, `unit_id`, `combo_price`, `note`, `user_id`, `location_id`, `created_at`, `updated_at`) VALUES
(2, '3', '100001', 2, '013.65', NULL, 1, NULL, '2020-09-19 14:07:22', '2020-09-19 14:07:22'),
(3, '20', '111122', 2, '030.03', NULL, 1, NULL, '2020-09-19 14:16:04', '2020-09-19 14:16:04'),
(4, '17', '121212', 3, '027.30', NULL, 1, NULL, '2020-09-21 00:45:30', '2020-09-21 00:45:30'),
(5, '3', '100001', 3, '013.65', NULL, 1, NULL, '2020-09-21 12:36:50', '2020-09-21 12:36:50'),
(6, '3', '100001', 2, '013.65', NULL, 1, NULL, '2020-09-21 12:40:43', '2020-09-21 12:40:43'),
(7, '17', '251454566', 3, '163.8', NULL, 1, NULL, '2020-09-23 20:35:13', '2020-09-23 20:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `combo_items`
--

CREATE TABLE `combo_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `combo_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `damages`
--

CREATE TABLE `damages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `doc_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `unit_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Grocery Food', '01', 'Grocery Items', '2020-09-05 23:01:29', '2020-09-05 23:01:29'),
(2, 'Dairy', '02', 'Dairy Items', '2020-09-05 23:01:48', '2020-09-05 23:01:48'),
(3, 'Frozen', '03', 'Frozen Items', '2020-09-05 23:01:57', '2020-09-05 23:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_o_c_items`
--

CREATE TABLE `f_o_c_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_o_c_items`
--

INSERT INTO `f_o_c_items` (`id`, `purchase_id`, `item_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 5, 21, 20, '2020-09-22 03:42:09', '2020-09-22 03:42:09'),
(2, 6, 12, 10, '2020-09-22 03:54:16', '2020-09-22 03:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `lpo_receives`
--

CREATE TABLE `lpo_receives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `shelf_life` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exipre_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lpo_receive_items`
--

CREATE TABLE `lpo_receive_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lpo_receive_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_21_160445_create_departments_table', 1),
(5, '2020_04_21_160505_create_units_table', 1),
(6, '2020_04_21_160617_create_stores_table', 1),
(7, '2020_04_21_160656_create_categories_table', 1),
(8, '2020_04_21_160713_create_vendors_table', 1),
(9, '2020_04_26_184059_create_products_table', 1),
(10, '2020_04_26_185320_create_product_pricings_table', 1),
(11, '2020_04_28_182339_create_combos_table', 1),
(12, '2020_04_28_183237_create_repackings_table', 1),
(13, '2020_05_04_114931_create_price_update_histories_table', 1),
(14, '2020_05_04_174307_create_promotional_products_table', 1),
(15, '2020_05_05_170843_create_offers_table', 1),
(16, '2020_05_05_213843_create_product_wise_vendors_table', 1),
(17, '2020_05_07_200732_create_adjustments_table', 1),
(18, '2020_05_07_201010_create_damages_table', 1),
(19, '2020_05_10_185018_create_stock_calculations_table', 1),
(20, '2020_05_19_180932_create_taxes_table', 1),
(21, '2020_06_08_185955_create_permission_tables', 1),
(22, '2020_06_14_144257_create_requisitions_table', 1),
(23, '2020_06_15_201040_create_purchases_table', 1),
(24, '2020_06_15_202603_create_transfers_table', 1),
(25, '2020_06_16_210446_create_purchase_returns_table', 1),
(26, '2020_06_16_211352_create_transfer_returns_table', 1),
(27, '2020_06_16_211718_create_trn_receives_table', 1),
(28, '2020_06_16_212342_create_lpo_receives_table', 1),
(29, '2020_06_18_171505_create_requisition_wise_items_table', 1),
(30, '2020_06_20_185212_create_purchase_order_wise_items_table', 1),
(31, '2020_06_24_070530_create_f_o_c_items_table', 1),
(32, '2020_06_24_180306_create_transfer_items_table', 1),
(33, '2020_06_26_210102_create_transfer_return_items_table', 1),
(34, '2020_06_26_210346_create_purchase_return_items_table', 1),
(35, '2020_09_10_214738_create_combo_items_table', 2),
(36, '2020_10_16_192646_create_trn_receive_items', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy_product_id` int(11) NOT NULL,
  `buy_quantity` int(11) NOT NULL,
  `get_product_id` int(11) NOT NULL,
  `get_quantity` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `date`, `reference`, `code`, `barcode`, `name`, `unit_id`, `price`, `store_ids`, `buy_product_id`, `buy_quantity`, `get_product_id`, `get_quantity`, `note`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2020/09/22 11:09:37', 'io_1600773397637', '131313', '987654321', 'MAI DUBAI DRIKING WATER', 1, '20', '3,2', 25, 2, 23, 1, NULL, 0, '2020-09-22 03:17:04', '2020-09-22 03:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price_update_histories`
--

CREATE TABLE `price_update_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `prev_cost` double(8,2) NOT NULL,
  `prev_price` double(8,2) NOT NULL,
  `prev_markup` double(8,2) NOT NULL,
  `updated_price` double(8,2) NOT NULL,
  `updated_markup` double(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_update_histories`
--

INSERT INTO `price_update_histories` (`id`, `date`, `reference`, `store_id`, `item_id`, `prev_cost`, `prev_price`, `prev_markup`, `updated_price`, `updated_markup`, `note`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2020/10/05 06:10:24', 'PUP0010001', 1, 17, 20.00, 27.30, 30.00, 26.25, 25.00, NULL, 0, '2020-10-04 22:38:38', '2020-10-04 22:38:38'),
(2, '2020/10/05 11:10:42', 'PUP0010002', 4, 25, 20.00, 27.30, 30.00, 29.40, 40.00, NULL, 0, '2020-10-05 15:27:59', '2020-10-05 15:27:59'),
(3, '2020/10/05 11:10:59', 'PUP0010003', 4, 25, 20.00, 29.40, 40.00, 27.30, 30.00, NULL, 0, '2020-10-05 15:28:29', '2020-10-05 15:28:29'),
(8, '2020/10/07 07:10:11', 'PUP0010004', 1, 17, 20.00, 26.25, 25.00, 25.20, 20.00, NULL, 0, '2020-10-06 23:40:31', '2020-10-06 23:40:31'),
(9, '2020/10/11 03:10:53', 'PUP0010005', 1, 17, 20.00, 25.20, 20.00, 26.25, 25.00, NULL, 0, '2020-10-11 09:57:15', '2020-10-11 09:57:15'),
(10, '2020/10/11 03:10:55', 'PUP0010006', 1, 17, 20.00, 26.25, 25.00, 28.35, 35.00, NULL, 0, '2020-10-11 10:05:19', '2020-10-11 10:05:19'),
(11, '2020/10/11 04:10:19', 'PUP0010007', 1, 17, 20.00, 28.35, 35.00, 32.55, 55.00, NULL, 0, '2020-10-11 10:24:55', '2020-10-11 10:24:55'),
(12, '2020/10/11 04:10:12', 'PUP0010008', 1, 17, 20.00, 32.55, 55.00, 24.15, 15.00, NULL, 0, '2020-10-11 10:31:29', '2020-10-11 10:31:29'),
(13, '2020/10/11 04:10:16', 'PUP0010009', 1, 17, 20.00, 24.15, 15.00, 26.25, 25.00, NULL, 0, '2020-10-11 10:33:45', '2020-10-11 10:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evaluation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_wise_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generic_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `alert_quantity` int(11) DEFAULT 0,
  `quantity` int(11) DEFAULT 1,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `barcode`, `evaluation`, `dept_wise_category`, `generic_description`, `short_description`, `long_description`, `delivery_mode`, `department_id`, `category_id`, `unit_id`, `alert_quantity`, `quantity`, `note`, `user_id`, `location_id`, `created_at`, `updated_at`) VALUES
(1, 'MARMUM TRADITIONAL LABAN 200ML', '329601', '6291031001799', 'B', 'Beverage', 'LPDS__0212', 'MARMUM LABAN', 'MARMUM TRADITIONAL LABAN 200ML', 'DSD', 2, 1, 1, 20, 30, NULL, 1, NULL, '2020-09-05 23:21:27', '2020-09-19 05:42:13'),
(2, 'SAQAY SOFT FACIAL TISSUE 2FLY 150.S', '322655', '6295687641231', 'A', 'Non Food', 'LPDS__0721', 'FACIAL TISSUE', 'SAQAY SOFT FACIAL TISSUE 2FLY 150.S', 'DC', 1, 1, 1, 20, NULL, NULL, 1, NULL, '2020-09-07 05:05:40', '2020-09-07 05:05:40'),
(3, 'MAI DUBAI DRINKING WATER', '100001', '45845415261', 'A', 'Food', 'LPDS_564', 'DRINKING WATER', 'MAI DUBAI DRINKING WATER', 'DC', 2, 1, 1, 20, NULL, NULL, 1, NULL, '2020-09-19 00:28:42', '2020-09-19 00:28:42'),
(6, 'AKTER GOLD SONA MASOORI RICE 18KG', '222222', '330972', 'A', 'Food', 'LPDS_222', 'AKTER GOLD SONA MASOORI RICE 18KG', 'AKTER GOLD SONA MASOORI RICE 18KG', 'DC', 1, 1, 1, 16, NULL, NULL, 1, NULL, '2020-09-19 00:37:41', '2020-09-19 00:37:41'),
(11, 'U DRINKING WATER 1.5Ltrx6\'s', '333333', '111111111111111', 'A', 'Food', 'LPDS_333', 'U DRINKING WATER 1.5Ltrx6\'s', 'U DRINKING WATER 1.5Ltrx6\'s', 'DC', 1, 1, 1, 15, NULL, NULL, 1, NULL, '2020-09-19 00:41:35', '2020-09-19 00:41:35'),
(12, 'AL AIN UHT MILK FULL CREAM 1Ltr x 4\'s', '444444', '22222222222222', 'A', 'Food', 'LPDS_444', 'AL AIN UHT MILK FULL CREAM 1Ltr x 4\'s', 'AL AIN UHT MILK FULL CREAM 1Ltr x 4\'s', 'DC', 2, 1, 3, 15, 50, NULL, 1, NULL, '2020-09-19 00:42:31', '2020-09-19 00:42:31'),
(13, 'SHUROOQ COOKING & FRYING OIL 1.5Ltr', '5555550', '2222222222333333', 'A', 'Food', 'LPDS_555', 'SHUROOQ COOKING & FRYING OIL 1.5Ltr', 'SHUROOQ COOKING & FRYING OIL 1.5Ltr', 'DC', 2, 1, 1, 15, NULL, NULL, 1, NULL, '2020-09-19 00:43:34', '2020-09-19 00:43:34'),
(14, 'WHITE FRESH WHITE EGGS 30.S', '7777777', '222222565555', 'A', 'Food', 'LPDS_555', 'WHITE FRESH WHITE EGGS 30.S', 'WHITE FRESH WHITE EGGS 30.S', 'DC', 1, 1, 1, 15, 10, NULL, 1, NULL, '2020-09-19 00:50:51', '2020-09-19 00:50:51'),
(15, 'SEARA CHICKEN WHOLE 1000Gm', '888888', '544444444561', 'A', 'Frozen', 'LPDS_333', 'SEARA CHICKEN WHOLE 1000Gm', 'SEARA CHICKEN WHOLE 1000Gm', 'DC', 3, 1, 2, 15, NULL, NULL, 1, NULL, '2020-09-19 00:51:58', '2020-09-19 00:51:58'),
(16, 'HEINZ GREEN PEAS FROZEN 450Gm (2+1\'s)', '999999', '1521455555', 'A', 'Frozen', 'LPDS_222', 'HEINZ GREEN PEAS FROZEN 450Gm (2+1\'s)', 'HEINZ GREEN PEAS FROZEN 450Gm (2+1\'s)', 'DC', 3, 1, 2, 15, NULL, NULL, 1, NULL, '2020-09-19 00:52:58', '2020-09-19 00:52:58'),
(17, 'KESKI FISH 250gm', '121212', '2222222444444', 'A', 'Frozen', 'LPDS_333', 'KESKI FISH 250gm', 'KESKI FISH 250gm', 'DC', 3, 1, 2, 15, NULL, NULL, 1, 1, '2020-09-19 00:54:08', '2020-09-19 00:54:08'),
(18, 'Fortune Chakki Fresh Atta 5 kg', '666666', '5614141414141414547', 'A', 'Food', 'LPDS_333', 'Fortune Chakki Fresh Atta 5 kg', 'Fortune Chakki Fresh Atta 5 kg', 'DC', 1, 1, 1, 15, NULL, NULL, 1, NULL, '2020-09-19 02:03:37', '2020-09-19 02:03:37'),
(19, 'PANJARE TUNA FISH IN OIL 155GM', '222222', '215645645314', 'A', 'Food', 'LPDS_333', 'PANJARE TUNA FISH IN OIL 155GM', 'PANJARE TUNA FISH IN OIL 155GM', 'DC', 1, 1, 1, 5, NULL, NULL, 1, NULL, '2020-09-19 02:04:53', '2020-09-19 02:04:53'),
(20, 'AMERICAN CLASSIC TUNA LIGHT MEAT FLAKES IN SOYA BEAN OIL 185GM', '111122', '121125153', 'A', 'Food', 'LPDS_333', 'AMERICAN CLASSIC TUNA LIGHT MEAT FLAKES IN SOYA BEAN OIL 185GM', 'AMERICAN CLASSIC TUNA LIGHT MEAT FLAKES IN SOYA BEAN OIL 185GM', 'DC', 1, 1, 1, 15, NULL, NULL, 1, NULL, '2020-09-19 02:05:52', '2020-09-19 02:05:52'),
(21, 'Koka Cup Noodles 70 gm x 3\'s', '554545', '45345645487', 'A', 'Food', 'LPDS_333', 'Koka Cup Noodles 70 gm x 3\'s', 'Koka Cup Noodles 70 gm x 3\'s', 'DC', 1, 1, 1, 11, NULL, NULL, 1, NULL, '2020-09-19 02:08:27', '2020-09-19 02:08:27'),
(22, 'SONAR BANGLA TEA 1KG', '211211', '31538415346', 'A', 'Food', 'LPDS_333', 'SONAR BANGLA TEA 1KG', 'SONAR BANGLA TEA 1KG', 'DC', 1, 1, 1, 16, NULL, NULL, 1, NULL, '2020-09-19 02:09:27', '2020-09-19 02:09:27'),
(23, 'KPL Shudi Coconut oil + sugar', '421251', '215154', 'A', 'Food', 'LPDS_333', 'KPL Shudi Coconut oil + sugar', 'KPL Shudi Coconut oil + sugar', 'DSD', 2, 1, 1, 9, NULL, NULL, 1, NULL, '2020-09-19 02:10:29', '2020-09-19 02:10:29'),
(25, 'KABANI MATTA RICE 5KG', '212121', '223121412545644', 'A', 'Food', 'LPDS_333', 'KABANI MATTA RICE 5KG', 'KABANI MATTA RICE 5KG', 'DC', 1, 1, 1, 11, NULL, NULL, 1, NULL, '2020-09-19 02:12:44', '2020-09-19 02:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_pricings`
--

CREATE TABLE `product_pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `final_cost` double(8,2) DEFAULT 0.00,
  `avg_cost` double(8,2) DEFAULT 0.00,
  `last_grn_cost` double(8,2) DEFAULT 0.00,
  `markup` double(8,2) DEFAULT 0.00,
  `final_price` double(8,2) DEFAULT 0.00,
  `price_without_tax` double(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_pricings`
--

INSERT INTO `product_pricings` (`id`, `product_id`, `final_cost`, `avg_cost`, `last_grn_cost`, `markup`, `final_price`, `price_without_tax`, `created_at`, `updated_at`) VALUES
(1, 1, 2.00, 2.20, 2.50, 30.00, 2.73, 2.60, '2020-09-05 23:21:27', '2020-09-19 05:42:13'),
(2, 2, 1.50, 1.40, 1.60, 30.00, 2.05, 1.95, '2020-09-07 05:05:40', '2020-09-07 05:05:40'),
(3, 3, 10.00, 11.00, 12.00, 30.00, 13.65, 13.00, '2020-09-19 00:28:42', '2020-09-19 00:28:42'),
(5, 6, 20.00, 21.00, 23.00, 30.00, 27.30, 26.00, '2020-09-19 00:37:41', '2020-09-19 00:37:41'),
(6, 11, 20.00, 21.00, 23.00, 30.00, 27.30, 26.00, '2020-09-19 00:41:35', '2020-09-19 00:41:35'),
(7, 12, 20.00, 21.00, 23.00, 30.00, 27.30, 26.00, '2020-09-19 00:42:31', '2020-09-19 00:42:31'),
(8, 13, 20.00, 21.00, 23.00, 30.00, 27.30, 26.00, '2020-09-19 00:43:34', '2020-09-19 00:43:34'),
(9, 14, 21.00, 21.00, 23.00, 30.00, 28.66, 27.30, '2020-09-19 00:50:51', '2020-09-19 00:50:51'),
(10, 15, 10.00, 12.00, 13.00, 30.00, 13.65, 13.00, '2020-09-19 00:51:58', '2020-09-19 00:51:58'),
(11, 16, 15.00, 16.00, 17.00, 30.00, 20.48, 19.50, '2020-09-19 00:52:58', '2020-09-19 00:52:58'),
(12, 17, 20.00, 21.00, 24.00, 25.00, 26.25, 26.00, '2020-09-19 00:54:08', '2020-10-11 10:33:45'),
(13, 18, 20.00, 21.00, 22.00, 30.00, 27.30, 26.00, '2020-09-19 02:03:37', '2020-09-19 02:03:37'),
(14, 19, 16.00, 17.00, 19.00, 30.00, 21.84, 20.80, '2020-09-19 02:04:53', '2020-09-19 02:04:53'),
(15, 20, 22.00, 23.00, 24.00, 30.00, 30.03, 28.60, '2020-09-19 02:05:52', '2020-09-19 02:05:52'),
(16, 21, 20.00, 21.00, 23.00, 30.00, 27.30, 26.00, '2020-09-19 02:08:27', '2020-09-19 02:08:27'),
(17, 22, 20.00, 21.00, 23.00, 30.00, 27.30, 26.00, '2020-09-19 02:09:27', '2020-09-19 02:09:27'),
(18, 23, 15.00, 21.00, 23.00, 30.00, 20.48, 19.50, '2020-09-19 02:10:29', '2020-09-19 02:10:29'),
(19, 25, 20.00, 21.00, 23.00, 30.00, 27.30, 26.00, '2020-09-19 02:12:44', '2020-09-19 02:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_wise_vendors`
--

CREATE TABLE `product_wise_vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `vendor_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wise_vendors`
--

INSERT INTO `product_wise_vendors` (`id`, `product_id`, `vendor_id`, `vendor_price`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 2, '2020-09-07 05:05:40', '2020-09-07 05:05:40'),
(3, 3, 1, 11, '2020-09-19 00:28:42', '2020-09-19 00:28:42'),
(4, 5, 1, 25, '2020-09-19 00:35:09', '2020-09-19 00:35:09'),
(5, 6, 1, 25, '2020-09-19 00:37:41', '2020-09-19 00:37:41'),
(6, 11, 2, 25, '2020-09-19 00:41:35', '2020-09-19 00:41:35'),
(7, 12, 2, 25, '2020-09-19 00:42:31', '2020-09-19 00:42:31'),
(8, 13, 2, 25, '2020-09-19 00:43:34', '2020-09-19 00:43:34'),
(9, 14, 2, 25, '2020-09-19 00:50:51', '2020-09-19 00:50:51'),
(10, 15, 2, 16, '2020-09-19 00:51:58', '2020-09-19 00:51:58'),
(11, 16, 1, 25, '2020-09-19 00:52:58', '2020-09-19 00:52:58'),
(12, 17, 2, 29, '2020-09-19 00:54:08', '2020-09-19 00:54:08'),
(13, 18, 1, 25, '2020-09-19 02:03:37', '2020-09-19 02:03:37'),
(14, 19, 2, 25, '2020-09-19 02:04:53', '2020-09-19 02:04:53'),
(15, 20, 1, 25, '2020-09-19 02:05:52', '2020-09-19 02:05:52'),
(16, 21, 1, 25, '2020-09-19 02:08:27', '2020-09-19 02:08:27'),
(17, 22, 1, 25, '2020-09-19 02:09:27', '2020-09-19 02:09:27'),
(18, 23, 1, 25, '2020-09-19 02:10:29', '2020-09-19 02:10:29'),
(19, 25, 1, 25, '2020-09-19 02:12:44', '2020-09-19 02:12:44'),
(25, 1, 1, 1, '2020-09-19 05:42:13', '2020-09-19 05:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `promotional_products`
--

CREATE TABLE `promotional_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `promotion_start` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_end` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_price` double(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requisition_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_confirm_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = draft, 1= final',
  `document_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_foc` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_id` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `tax` double(8,2) DEFAULT 0.00,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `date`, `requisition_date`, `vendor_confirm_date`, `shipping_date`, `reference`, `location_id`, `status`, `document_file`, `is_foc`, `vendor_id`, `discount`, `tax`, `note`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2020/10/15 07:10:33', '2020/10/15 07:10:33', '2020/10/15 07:10:33', '2020/10/15 07:10:33', 'LPO0010001', 2, 1, '', 0, 1, 0.00, 0.00, NULL, 1, '2020-10-15 13:17:10', '2020-10-15 13:17:10'),
(2, '2020/10/16 05:10', '2020/10/16 05:10', '2020/10/16 05:10', '2020/10/16 05:10', 'LPO0010002', 1, 1, '', 0, 1, 0.00, 0.00, NULL, 1, '2020-10-16 11:50:56', '2020-10-16 11:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_wise_items`
--

CREATE TABLE `purchase_order_wise_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` float NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_wise_items`
--

INSERT INTO `purchase_order_wise_items` (`id`, `item_id`, `location_id`, `purchase_id`, `quantity`, `cost`, `discount`, `created_at`, `updated_at`) VALUES
(1, 17, 2, 1, 10, 20, 0.00, '2020-10-15 13:17:10', '2020-10-15 13:17:10'),
(2, 3, 1, 2, 10, 10, 0.00, '2020-10-16 11:50:56', '2020-10-16 11:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1 = draft, 2= sent',
  `document_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_items`
--

CREATE TABLE `purchase_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `purchase_return_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repackings`
--

CREATE TABLE `repackings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evalucation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generic_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `alert_quantity` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `additional_cost` double(8,2) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requisitions`
--

CREATE TABLE `requisitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1= sent',
  `requisition_from` int(11) NOT NULL,
  `requisition_to` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 = vegetable, 2= DC, 3 = DSD',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requisition_wise_items`
--

CREATE TABLE `requisition_wise_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `requisition_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_calculations`
--

CREATE TABLE `stock_calculations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `counted_stock` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_calculations`
--

INSERT INTO `stock_calculations` (`id`, `zone`, `item_id`, `store_id`, `stock`, `counted_stock`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '301', 17, 1, 0, 50, 1, 1, '2020-10-04 22:36:27', '2020-10-04 22:37:39'),
(2, '301', 3, 1, 0, 20, 1, 1, '2020-10-04 22:36:27', '2020-10-04 22:37:39');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `code`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Electra', '2101', '9999999999999', 'electra@gmail.com', 'Electra', '2020-09-05 23:02:57', '2020-09-05 23:02:57'),
(2, 'Muroor', '2102', '88888888888', 'muroor@gmail.com', 'Muroor', '2020-09-05 23:03:17', '2020-09-05 23:03:17'),
(3, 'Airport Road', '2104', '77777777777777', 'airport@gmail.com', 'Airport Road', '2020-09-05 23:03:39', '2020-09-05 23:03:39'),
(4, 'ASM M-09', '2105', '3356477568', 'asmm09@gmail.com', 'Musaafah-09, Abu Dhabi, UAE', '2020-10-02 03:14:20', '2020-10-02 03:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 5.00, '2020-09-05 23:10:15', '2020-09-05 23:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transfer_from` int(11) NOT NULL,
  `transfer_to` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1 = sent, 2= received',
  `document_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `date`, `reference`, `transfer_from`, `transfer_to`, `status`, `document_file`, `note`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2020/10/14 06:10:06', 'TRN0010001', 1, 2, 1, '', NULL, 1, '2020-10-14 12:28:29', '2020-10-14 12:28:29'),
(2, '2020/10/16 05:10:30', 'TRN0010002', 1, 2, 1, '', NULL, 1, '2020-10-16 11:20:14', '2020-10-16 11:20:14'),
(3, '2020/10/16 05:10:23', 'TRN0010003', 1, 2, 1, '', NULL, 1, '2020-10-16 11:52:10', '2020-10-16 11:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_items`
--

CREATE TABLE `transfer_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfer_items`
--

INSERT INTO `transfer_items` (`id`, `transfer_id`, `item_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 6, '2020-10-14 12:28:29', '2020-10-14 12:28:29'),
(2, 2, 17, 5, '2020-10-16 11:20:14', '2020-10-16 11:20:14'),
(3, 3, 17, 4, '2020-10-16 11:52:10', '2020-10-16 11:52:10'),
(4, 3, 3, 3, '2020-10-16 11:52:10', '2020-10-16 11:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_returns`
--

CREATE TABLE `transfer_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transfer_from` int(11) NOT NULL,
  `transfer_to` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1 = Draft, 2= Sent',
  `document_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_return_items`
--

CREATE TABLE `transfer_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_receives`
--

CREATE TABLE `trn_receives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transfer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_cost` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trn_receive_items`
--

CREATE TABLE `trn_receive_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trn_receive_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'PCS', '1', '2020-09-05 23:02:18', '2020-09-05 23:02:18'),
(2, 'KG', '1', '2020-09-05 23:02:25', '2020-09-05 23:02:25'),
(3, 'CTN/6', '6', '2020-09-06 02:26:14', '2020-09-06 02:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$ZtDkvhHdzt8lNDr5MQRQ/OOGLKcHsKwldtlBkaSnBpuQOBMXAuxWK', '32aujnljFt1zM4M9BMuITRD7V2hXvZWq7f8TUP9DVKdDFOaFHSqYjJVi8lT7', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_term` int(11) NOT NULL,
  `discount` double(8,2) DEFAULT 0.00,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `code`, `company`, `vat_no`, `email`, `name`, `city`, `phone`, `country`, `payment_term`, `discount`, `address`, `type`, `created_at`, `updated_at`) VALUES
(1, 'F001001', 'Fresh Food Company', '12456789', 'ffc@gmail.com', 'Fresh Food Company', 'Abu Dhabi', '987654321', 'UAE', 30, 5.00, 'Abu Dhabi', 'Principle vendor', '2020-09-05 23:11:56', '2020-09-05 23:11:56'),
(2, 'U001001', 'IFCO', '456123789', 'ifco@gmail.com', 'IFCO', 'Abu Dhabi', '123789456', 'UAE', 15, 3.00, 'Musaffah', 'Principle vendor', '2020-09-05 23:18:06', '2020-09-05 23:18:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_items`
--
ALTER TABLE `combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `damages`
--
ALTER TABLE `damages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_o_c_items`
--
ALTER TABLE `f_o_c_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lpo_receives`
--
ALTER TABLE `lpo_receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lpo_receive_items`
--
ALTER TABLE `lpo_receive_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offers_code_unique` (`code`),
  ADD UNIQUE KEY `offers_barcode_unique` (`barcode`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_update_histories`
--
ALTER TABLE `price_update_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_pricings`
--
ALTER TABLE `product_pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_wise_vendors`
--
ALTER TABLE `product_wise_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotional_products`
--
ALTER TABLE `promotional_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_wise_items`
--
ALTER TABLE `purchase_order_wise_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_items`
--
ALTER TABLE `purchase_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repackings`
--
ALTER TABLE `repackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisitions`
--
ALTER TABLE `requisitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requisition_wise_items`
--
ALTER TABLE `requisition_wise_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `stock_calculations`
--
ALTER TABLE `stock_calculations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_code_unique` (`code`),
  ADD UNIQUE KEY `stores_phone_unique` (`phone`),
  ADD UNIQUE KEY `stores_email_unique` (`email`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_items`
--
ALTER TABLE `transfer_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_returns`
--
ALTER TABLE `transfer_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_return_items`
--
ALTER TABLE `transfer_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_receives`
--
ALTER TABLE `trn_receives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trn_receive_items`
--
ALTER TABLE `trn_receive_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `combos`
--
ALTER TABLE `combos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `combo_items`
--
ALTER TABLE `combo_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `damages`
--
ALTER TABLE `damages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_o_c_items`
--
ALTER TABLE `f_o_c_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lpo_receives`
--
ALTER TABLE `lpo_receives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lpo_receive_items`
--
ALTER TABLE `lpo_receive_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_update_histories`
--
ALTER TABLE `price_update_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_pricings`
--
ALTER TABLE `product_pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_wise_vendors`
--
ALTER TABLE `product_wise_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `promotional_products`
--
ALTER TABLE `promotional_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_order_wise_items`
--
ALTER TABLE `purchase_order_wise_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_items`
--
ALTER TABLE `purchase_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repackings`
--
ALTER TABLE `repackings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requisitions`
--
ALTER TABLE `requisitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requisition_wise_items`
--
ALTER TABLE `requisition_wise_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_calculations`
--
ALTER TABLE `stock_calculations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transfer_items`
--
ALTER TABLE `transfer_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfer_returns`
--
ALTER TABLE `transfer_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_return_items`
--
ALTER TABLE `transfer_return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_receives`
--
ALTER TABLE `trn_receives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trn_receive_items`
--
ALTER TABLE `trn_receive_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
