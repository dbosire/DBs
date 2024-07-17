-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2024 at 08:41 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_sdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulk_balance`
--

CREATE TABLE `bulk_balance` (
  `id` int(10) UNSIGNED NOT NULL,
  `sms_balance` int(11) NOT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_02_11_160113_Create_AppConfig_Table', 1),
(2, '2017_02_15_051702_Create_Admins_Table', 1),
(3, '2017_02_15_051715_Create_Clients_Table', 1),
(4, '2017_02_24_140141_Create_SMS_Gateways_Table', 1),
(5, '2017_02_24_145218_Create_Payment_Gateways_Table', 1),
(6, '2017_02_24_153927_Create_Email_Templates_Table', 1),
(7, '2017_02_26_060604_Create_Client_Groups_Table', 1),
(8, '2017_02_27_174402_Create_Ticket_Table', 1),
(9, '2017_02_27_174448_Create_Ticket_Replies_Table', 1),
(10, '2017_02_27_174529_Create_Support_Department_Table', 1),
(11, '2017_02_27_174612_Create_Ticket_Files_Table', 1),
(12, '2017_02_28_134400_Create_Administrator_Role_Table', 1),
(13, '2017_02_28_134742_Create_Administrator_Role_Permission_Table', 1),
(14, '2017_03_01_170716_Create_Invoices_Table', 1),
(15, '2017_03_01_170742_Create_Invoice_Items_Table', 1),
(16, '2017_03_08_160657_Create_SMS_Transaction_Table', 1),
(17, '2017_03_10_175534_Create_Int_Country_Codes', 1),
(18, '2017_03_11_164932_Create_SenderID_Management_table', 1),
(19, '2017_03_14_163320_Create_SMS_Plan_Feature', 1),
(20, '2017_03_14_163416_Create_SMS_Price_Plan_Table', 1),
(21, '2017_03_27_150018_create_jobs_table', 1),
(22, '2017_04_09_145036_Create_Custom_SMS_Gateways_Table', 1),
(23, '2017_04_11_163310_Create_SMS_History_Table', 1),
(24, '2017_04_12_052528_Create_SMS_Templates_Table', 1),
(25, '2017_04_14_140621_Create_Schedule_SMS_Table', 1),
(26, '2017_05_06_054309_Create_Language_Table', 1),
(27, '2017_05_06_054719_Create_Language_Data_Table', 1),
(28, '2017_06_30_142046_create_failed_jobs_table', 1),
(29, '2017_07_02_175729_Create_Import_Phone_Number_table', 1),
(30, '2017_07_16_171839_Create_SMS_Bundles_Table', 1),
(31, '2017_10_10_160541_Create_Contact_Table', 1),
(32, '2017_10_11_181347_Create_Blacklist_Table', 1),
(33, '2018_02_07_003858_Create_Spam_Word_Table', 1),
(34, '2018_02_07_003921_Create_Block_Message_Table', 1),
(35, '2018_02_11_123245_Create_Operator_Table', 1),
(36, '2018_02_19_142702_Create_Recurring_SMS_Table', 1),
(37, '2018_03_25_144845_Create_SMS_Gateway_Credential', 1),
(38, '2018_04_20_160454_Create_Recurring_SMS_Contacts_Table', 1),
(39, '2018_05_12_195442_Create_Two_Way_Communication_Table', 1),
(40, '2018_08_28_172727_Create_Keywords_Table', 1),
(41, '2018_09_02_171023_Create_Campaigns_Table', 1),
(42, '2018_09_02_171111_Create_campaign_subscription_list_Table', 1),
(43, '2018_11_08_191549_Create_SMS_Inbox_Table', 1),
(48, '2020_04_16_214303_create_subscription_lists_table', 2),
(49, '2020_04_16_214347_create_ondemand_lists_table', 2),
(50, '2020_05_01_233811_create_nonbulk_sms_histories_table', 2),
(51, '2020_05_02_002924_create_subscription_offerings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nonbulk_sms_histories`
--

CREATE TABLE `nonbulk_sms_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 1,
  `use_gateway` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `api_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `sms_type` enum('plain','unicode','voice','mms','arabic') COLLATE utf8_unicode_ci NOT NULL,
  `send_by` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `media_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ondemand_lists`
--

CREATE TABLE `ondemand_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `linkid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `offercode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `refernceid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `clienttransactionid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `channel` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `msisdn` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `reply` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_status` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_booking`
--

CREATE TABLE `service_booking` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `phone_no` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `booked_time` int(11) NOT NULL,
  `service_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_lists`
--

CREATE TABLE `subscription_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `offercode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `transactionid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `clienttransactionid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `subscriberlifecycle` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `subscriptionstatus` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `channel` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `nextbillingdate` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `offername` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `shortcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `msisdn` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `active` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `userid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_offerings`
--

CREATE TABLE `subscription_offerings` (
  `id` int(10) UNSIGNED NOT NULL,
  `offeringid` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `offering_description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('available','assigned','expired') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'available',
  `price` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `validity` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `validity_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_admins`
--

CREATE TABLE `sys_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` text COLLATE utf8_unicode_ci NOT NULL,
  `lname` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `roleid` int(11) NOT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `pwresetkey` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwresetexpiry` int(11) DEFAULT NULL,
  `emailnotify` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `online` int(11) NOT NULL DEFAULT 0,
  `menu_open` int(11) NOT NULL DEFAULT 0,
  `remember_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_admins`
--

INSERT INTO `sys_admins` (`id`, `fname`, `lname`, `username`, `password`, `status`, `email`, `image`, `roleid`, `lastlogin`, `pwresetkey`, `pwresetexpiry`, `emailnotify`, `online`, `menu_open`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dennis', 'Bosire', 'admin', '$2y$10$DoiLMCYMiAOi52gsz.Ew1OUu/yEQX4rfrueoZ5iimwMFQkFU1CKve', 'Active', 'denaggrey@gmail.com', 'avatar.jpg', 0, NULL, '3445845391194833', NULL, 'No', 0, 1, 'LLIupmeU5zaj6mdbW2RNDFIqEuTlGdKdNbVISt72nrqTtJVoLfKpXCX0OdzR', '2018-11-14 08:04:21', '2020-09-16 23:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `sys_admin_role`
--

CREATE TABLE `sys_admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_name` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_admin_role`
--

INSERT INTO `sys_admin_role` (`id`, `role_name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Management', 'Active', '2020-04-03 18:21:55', '2020-04-03 18:21:55'),
(3, 'Super User', 'Active', '2020-04-03 18:22:50', '2020-04-03 18:22:50'),
(4, 'Finance', 'Active', '2020-05-27 07:32:36', '2020-05-27 07:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `sys_admin_role_perm`
--

CREATE TABLE `sys_admin_role_perm` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_app_config`
--

CREATE TABLE `sys_app_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_app_config`
--

INSERT INTO `sys_app_config` (`id`, `setting`, `value`, `created_at`, `updated_at`) VALUES
(1, 'AppName', 'Source Code SMS', '2018-11-14 08:04:21', '2020-05-21 14:03:12'),
(2, 'AppUrl', 'ultimatesms.coderpixel.com', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(3, 'purchase_key', '43e27876-ff92-4f12-85fb-6471b4a3c475', '2018-11-14 08:04:21', '2019-04-19 10:55:50'),
(4, 'valid_domain', 'yes', '2018-11-14 08:04:21', '2019-04-19 10:55:50'),
(5, 'Email', 'denaggrey@gmail.com', '2018-11-14 08:04:21', '2020-05-21 14:03:12'),
(6, 'Address', '<div>Langata, Stall no 2<br></div><div>P.O Box 103722-00101<br></div><div>Nairobi, Kenya<br></div>', '2018-11-14 08:04:21', '2020-05-21 14:03:12'),
(7, 'SoftwareVersion', '2.7', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(8, 'AppTitle', 'Source Code SMS', '2018-11-14 08:04:21', '2020-05-21 14:03:12'),
(9, 'FooterTxt', 'Copyright © Dencom® - 2020', '2018-11-14 08:04:21', '2020-05-21 14:03:12'),
(10, 'AppLogo', 'assets/img/logo.png', '2018-11-14 08:04:21', '2020-05-21 13:50:44'),
(11, 'AppFav', 'assets/img/logo.png', '2018-11-14 08:04:21', '2020-03-30 16:40:38'),
(12, 'Country', 'Kenya', '2018-11-14 08:04:21', '2020-04-11 13:40:03'),
(13, 'Timezone', 'Africa/Nairobi', '2018-11-14 08:04:21', '2020-03-25 18:07:54'),
(14, 'Currency', 'KES', '2018-11-14 08:04:21', '2020-04-11 13:40:04'),
(15, 'CurrencyCode', 'Ksh', '2018-11-14 08:04:21', '2020-04-11 13:40:05'),
(16, 'Gateway', 'smtp', '2018-11-14 08:04:21', '2019-04-20 08:49:53'),
(17, 'SMTPHostName', 'smtp.gmail.com', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(18, 'SMTPUserName', 'user@example.com', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(19, 'SMTPPassword', 'testpassword', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(20, 'SMTPPort', '587', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(21, 'SMTPSecure', 'tls', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(22, 'AppStage', 'Live', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(23, 'DateFormat', 'jS M y', '2018-11-14 08:04:21', '2020-04-11 13:40:03'),
(24, 'Language', '1', '2018-11-14 08:04:21', '2020-04-11 13:40:04'),
(25, 'sms_api_permission', '1', '2018-11-14 08:04:21', '2020-05-28 18:29:51'),
(26, 'sms_api_gateway', '137', '2018-11-14 08:04:21', '2020-08-28 21:18:09'),
(27, 'api_url', 'http://54.69.38.253/sms', '2018-11-14 08:04:21', '2020-08-28 21:18:09'),
(28, 'api_key', 'YWRtaW46YWRtaW4ucGFzc3dvcmQ=', '2018-11-14 08:04:21', '2020-08-28 21:18:09'),
(29, 'client_registration', '1', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(30, 'registration_verification', '0', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(31, 'captcha_in_admin', '0', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(32, 'captcha_in_client', '0', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(33, 'captcha_in_client_registration', '0', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(34, 'captcha_site_key', '6LcVTCEUAAAAAF2VucYNRFbnfD12MO41LpcS71o9', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(35, 'captcha_secret_key', '6LcVTCEUAAAAAGBbxACgcO6sBFPNIrMOkXJGh-Yu', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(36, 'purchase_code_error_count', '0', '2018-11-14 08:04:21', '2019-04-19 10:55:50'),
(37, 'sender_id_verification', '1', '2018-11-14 08:04:21', '2020-05-28 18:29:51'),
(38, 'license_type', 'Regular License', '2018-11-14 08:04:21', '2019-04-19 10:55:50'),
(39, 'fraud_detection', '1', '2018-11-14 08:04:21', '2020-05-28 18:29:51'),
(40, 'dec_point', '.', '2018-11-14 08:04:21', '2020-04-11 13:40:05'),
(41, 'thousands_sep', ',', '2018-11-14 08:04:21', '2020-04-11 13:40:05'),
(42, 'currency_decimal_digits', '2', '2018-11-14 08:04:21', '2020-04-11 13:40:05'),
(43, 'currency_symbol_position', 'left', '2018-11-14 08:04:21', '2020-04-11 13:40:06'),
(44, 'registration_sms_gateway', '137', '2018-11-14 08:04:21', '2020-05-28 18:29:51'),
(45, 'send_sms_country_code', '254', '2018-11-14 08:04:21', '2020-04-11 13:40:05'),
(46, 'show_keyword_in_client', '1', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(47, 'opt_in_sms_keyword', 'Start,Subscribe,Unstop,Yes', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(48, 'opt_out_sms_keyword', 'Stop,Unsubscribe,Stop,No,Quit,Cancel', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(49, 'custom_gateway_response_status', 'OK,Success,Deliver,message_pending,accept,1701', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(50, 'unsubscribe_message', 'STOP *456*9*5#', '2018-11-14 08:04:21', '2020-05-28 18:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `sys_blacklist_contacts`
--

CREATE TABLE `sys_blacklist_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `numbers` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_block_message`
--

CREATE TABLE `sys_block_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `use_gateway` int(11) NOT NULL,
  `scheduled_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('plain','unicode','voice','mms','arabic') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  `status` enum('block','release') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'block',
  `campaign_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_campaigns`
--

CREATE TABLE `sys_campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_type` enum('plain','unicode','voice','mms','arabic') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  `camp_type` enum('regular','scheduled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'regular',
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `use_gateway` int(11) NOT NULL,
  `total_recipient` int(11) NOT NULL DEFAULT 0,
  `total_delivered` int(11) NOT NULL DEFAULT 0,
  `total_failed` int(11) NOT NULL DEFAULT 0,
  `media_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `run_at` timestamp NULL DEFAULT NULL,
  `delivery_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_campaign_subscription_list`
--

CREATE TABLE `sys_campaign_subscription_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 1,
  `status` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `offerid` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_batch` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `submitted_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_clients`
--

CREATE TABLE `sys_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL DEFAULT 0,
  `fname` text COLLATE utf8_unicode_ci NOT NULL,
  `lname` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `address1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `datecreated` date NOT NULL DEFAULT '2018-11-14',
  `sms_limit` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `api_access` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `api_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_gateway` int(11) DEFAULT NULL,
  `online` int(11) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive','Closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `reseller` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `sms_gateway` text COLLATE utf8_unicode_ci NOT NULL,
  `lastlogin` date DEFAULT NULL,
  `pwresetkey` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwresetexpiry` int(11) DEFAULT NULL,
  `emailnotify` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `menu_open` int(11) NOT NULL DEFAULT 0,
  `lan_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_client_groups`
--

CREATE TABLE `sys_client_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `status` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_contact_list`
--

CREATE TABLE `sys_contact_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_custom_sms_gateways`
--

CREATE TABLE `sys_custom_sms_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway_id` int(11) NOT NULL,
  `username_param` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username_value` text COLLATE utf8_unicode_ci NOT NULL,
  `password_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `action_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `source_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `destination_param` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message_param` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unicode_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unicode_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unicode_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `route_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `language_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `custom_one_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_one_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_one_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `custom_two_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_two_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_two_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `custom_three_param` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_three_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_three_status` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_custom_sms_gateways`
--

INSERT INTO `sys_custom_sms_gateways` (`id`, `gateway_id`, `username_param`, `username_value`, `password_param`, `password_value`, `password_status`, `action_param`, `action_value`, `action_status`, `source_param`, `source_value`, `source_status`, `destination_param`, `message_param`, `unicode_param`, `unicode_value`, `unicode_status`, `route_param`, `route_value`, `route_status`, `language_param`, `language_value`, `language_status`, `custom_one_param`, `custom_one_value`, `custom_one_status`, `custom_two_param`, `custom_two_value`, `custom_two_status`, `custom_three_param`, `custom_three_value`, `custom_three_status`, `created_at`, `updated_at`) VALUES
(1, 135, 'apikey', '5c82636fd8d7b', 'partnerID', '77', 'yes', NULL, NULL, 'no', 'shortcode', 'Celcom', 'yes', 'mobile', 'message', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', '2019-05-03 11:10:33', '2019-05-03 12:52:19'),
(2, 136, 'username', 'admin@terris', 'password', '!Media2019', 'yes', NULL, NULL, 'no', 'shortcode', '6089', 'yes', 'to', 'Sms', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', '2019-05-03 20:01:40', '2019-05-03 20:01:40'),
(3, 137, 'usernameApi', 'sourceCode_apiuser', 'passwordApi', 'Kenya$321', 'yes', 'ServiceType', 'bulk_sendsms', 'yes', 'SenderID', 'SourceCode', 'yes', 'to', 'to', NULL, NULL, 'no', NULL, NULL, 'no', '1', NULL, 'no', 'PackageID', '5227', 'yes', 'DeliveryReportURL', 'http://54.69.38.253/sms/sms/delivery-report-bulk-sms', 'yes', 'Portal_Username', 'SourceCode', 'yes', '2020-01-24 17:57:49', '2020-05-28 17:26:39'),
(4, 138, 'Username', 'dencom', 'Password', '#EDC4rfv', 'no', 'action', 'send-sms', 'yes', 'from', NULL, 'no', 'to', 'test', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', 'DeliveryReportURL', 'http://172.29.60.34:7776/dencom', 'yes', 'packageId', '4763', 'yes', NULL, NULL, 'no', '2020-03-23 15:42:57', '2020-03-23 15:42:57'),
(5, 139, 'usernameApi', 'sourceCode_apiuser', 'passwordApi', 'Kenya$321', 'yes', 'ServiceType', 'subscription_sendsms', 'yes', 'CPID', '190', 'yes', 'to', 'test', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'no', '2020-05-09 16:48:37', '2020-06-17 06:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_templates`
--

CREATE TABLE `sys_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tplname` text COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_email_templates`
--

INSERT INTO `sys_email_templates` (`id`, `tplname`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Client SignUp', 'Welcome to {{business_name}}', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <div width=\"125\" height=\"23\" style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\">{{business_name}}</div>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Welcome to {{business_name}}! This message is an automated reply to your User Access request. Login to your User panel by using the details below:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\"{{sys_url}}\">{{sys_url}}</a>.<br>\n                                    User Name: {{username}}<br>\n                                    Password: {{password}}\n            <br>\n            Regards,<br>\n            {{business_name}}<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(2, 'Client Registration Verification', 'Registration Verification From {{business_name}}', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <div width=\"125\" height=\"23\" style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\">{{business_name}}</div>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Welcome to {{business_name}}! This message is an automated reply to your account verification request. Click the following url to verify your account:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\"{{sys_url}}\">{{sys_url}}</a>\n            <br>\n            Regards,<br>\n            {{business_name}}<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(3, 'Ticket For Client', 'New Ticket From {{business_name}}', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <div width=\"125\" height=\"23\" style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\" >{{business_name}}</div>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Thank you for stay with us! This is a Support Ticket For Yours.. Login to your account to view  your support tickets details:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\"{{sys_url}}\">{{sys_url}}</a>.<br>\n                Ticket ID: {{ticket_id}}<br>\n                Ticket Subject: {{ticket_subject}}<br>\n                Message: {{message}}<br>\n                Created By: {{create_by}}\n            <br>\n            Regards,<br>\n            {{business_name}}<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">Â </td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\"> </td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright Â© {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n\n                ', '1', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(4, 'Admin Password Reset', '{{business_name}} New Password', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <p  style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\">{{business_name}}</p>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Password Reset Successfully!   This message is an automated reply to your password reset request. Login to your account to set up your all details by using the details below:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\" {{sys_url}}\"> {{sys_url}}</a>.<br>\n                                    User Name: {{username}}<br>\n                                    Password: {{password}}\n            <br>\n            {{business_name}},<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:21', '2018-11-14 08:04:21'),
(5, 'Forgot Admin Password', '{{business_name}} password change request', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <p  style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\" >{{business_name}}</p>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Password Reset Successfully!   This message is an automated reply to your password reset request. Click this link to reset your password:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\" {{forgotpw_link}} \"> {{forgotpw_link}} </a>.<br>\nNotes: Until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.\n\n            <br>\n            On behalf of the {{business_name}},<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:21', '2018-11-14 08:04:21');
INSERT INTO `sys_email_templates` (`id`, `tplname`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Ticket Reply', 'Reply to Ticket [TID-{{ticket_id}}]', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <div width=\"125\" height=\"23\" style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\"  {{business_name}} ></div>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Thank you for stay with us! This is a Support Ticket Reply. Login to your account to view  your support ticket reply details:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\"{{sys_url}}\">{{sys_url}}</a>.<br>\n                Ticket ID: {{ticket_id}}<br>\n                Ticket Subject: {{ticket_subject}}<br>\n                Message: {{message}}<br>\n                Replyed By: {{reply_by}} <br><br>\n                Should you have any questions in regards to this support ticket or any other tickets related issue, please feel free to contact the Support department by creating a new ticket from your Client/User Portal\n            <br><br>\n            Regards,<br>\n            {{business_name}}<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(7, 'Forgot Client Password', '{{business_name}} password change request', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <p  style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\">{{business_name}} </p>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Password Reset Successfully!   This message is an automated reply to your password reset request. Click this link to reset your password:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\" {{forgotpw_link}} \"> {{forgotpw_link}} </a>.<br>\nNotes: Until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.\n\n            <br>\n            {{business_name}}<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(8, 'Client Registrar Activation', '{{business_name}} Registration Code', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <p  style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\">{{business_name}} </p>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Registration Successfully!   This message is an automated reply to your active registration request. Click this link to active your account:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\" {{registration_link}} \"> {{registration_link}} </a>.<br>\n            <br>\n            {{business_name}}<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(9, 'Client Password Reset', '{{business_name}} New Password', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <p  style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\" >{{business_name}}</p>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>\n                 <br>\n                Password Reset Successfully!   This message is an automated reply to your password reset request. Login to your account to set up your all details by using the details below:\n            <br>\n                <a target=\"_blank\" style=\"color:#ff6600;font-weight:bold;font-family:helvetica,arial,sans-seif;text-decoration:none\" href=\" {{sys_url}}\"> {{sys_url}}</a>.<br>\n                                    User Name: {{username}}<br>\n                                    Password: {{password}}\n            <br>\n            {{business_name}}<br>\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(10, 'Ticket For Admin', 'New Ticket From {{business_name}} Client', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <div width=\"125\" height=\"23\" style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\" >{{business_name}}</div>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>{{department_name}},<br>\n                 <br>\n\n                Ticket ID: {{ticket_id}}<br>\n                Ticket Subject: {{ticket_subject}}<br>\n                Message: {{message}}<br>\n                Created By: {{create_by}} <br><br>\n                Waiting for your quick response.\n            <br><br>\n            Thank you.\n            <br>\n            Regards,<br>\n            {{name}}<br>\n{{business_name}} User.\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22');
INSERT INTO `sys_email_templates` (`id`, `tplname`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Client Ticket Reply', 'Reply to Ticket [TID-{{ticket_id}}]', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <div width=\"125\" height=\"23\" style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\">{{business_name}}</div>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi {{name}},<br>{{department_name}},<br>\n                 <br>\n                 This is a Support Ticket Reply From Client.\n            <br>\n                Ticket ID: {{ticket_id}}<br>\n                Ticket Subject: {{ticket_subject}}<br>\n                Message: {{message}}<br>\n                Replyed By: {{reply_by}}  <br><br>\n                Waiting for your quick response.\n            <br><br>\n            Thank you.\n            <br>\n            Regards,<br>\n            {{name}}<br>\n{{business_name}} User.\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(12, 'Spam Word Notification', 'Get spam word from {{business_name}}]', '<div style=\"margin:0;padding:0\">\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#439cc8\">\n  <tbody><tr>\n    <td align=\"center\">\n            <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n              <tbody><tr>\n                <td height=\"95\" bgcolor=\"#439cc8\" style=\"background:#439cc8;text-align:left\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                      <tbody><tr>\n                        <td width=\"672\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                      </tr>\n                      <tr>\n                        <td style=\"text-align:left\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\">\n                          <tbody><tr>\n                            <td width=\"37\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\">\n                            </td>\n                            <td width=\"523\" height=\"24\" style=\"text-align:left\">\n                            <div width=\"125\" height=\"23\" style=\"display:block;color:#ffffff;font-size:20px;font-family:Arial,Helvetica,sans-serif;max-width:557px;min-height:auto\">{{business_name}}</div>\n                            </td>\n                            <td width=\"44\" style=\"text-align:left\"></td>\n                            <td width=\"30\" style=\"text-align:left\"></td>\n                            <td width=\"38\" height=\"24\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n                          </tr>\n                        </tbody></table>\n                        </td>\n                      </tr>\n                      <tr><td width=\"672\" height=\"33\" style=\"font-size:33px;line-height:33px;height:33px;text-align:left\"></td></tr>\n                    </tbody></table>\n\n                </td>\n              </tr>\n            </tbody></table>\n     </td>\n    </tr>\n </tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#439cc8\"><tbody><tr><td height=\"5\" style=\"background:#439cc8;height:5px;font-size:5px;line-height:5px\"></td></tr></tbody></table>\n\n <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#e9eff0\">\n  <tbody><tr>\n    <td align=\"center\">\n      <table cellspacing=\"0\" cellpadding=\"0\" width=\"671\" border=\"0\" bgcolor=\"#e9eff0\" style=\"background:#e9eff0\">\n        <tbody><tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n          <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"596\" border=\"0\" bgcolor=\"#ffffff\">\n            <tbody><tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n              <td width=\"556\" style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\" style=\"font-family:helvetica,arial,sans-seif;color:#666666;font-size:16px;line-height:22px\">\n                <tbody><tr>\n                  <td style=\"text-align:left\"></td>\n                </tr>\n                <tr>\n                  <td style=\"text-align:left\"><table cellspacing=\"0\" cellpadding=\"0\" width=\"556\" border=\"0\">\n                    <tbody><tr><td style=\"font-family:helvetica,arial,sans-serif;font-size:30px;line-height:40px;font-weight:normal;color:#253c44;text-align:left\"></td></tr>\n                    <tr><td width=\"556\" height=\"20\" style=\"font-size:20px;line-height:20px;height:20px;text-align:left\"></td></tr>\n                    <tr>\n                      <td style=\"text-align:left\">\n                 Hi,<br>\n                 <br>\n                 Spam word detected. Here is the message and client details:\n            <br>\n                User name: <a href=\"{{profile_link}}\" target=\"_blank\">{{user_name}}</a><br>\n                Message: {{message}}<br><br>\n                Waiting for your quick response.\n            <br><br>\n            Thank you.\n            <br>\n            Regards,<br>\n            {{business_name}}\n            <br>\n          </td>\n                    </tr>\n                    <tr>\n                      <td width=\"556\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\">&nbsp;</td>\n                    </tr>\n                  </tbody></table></td>\n                </tr>\n              </tbody></table></td>\n              <td width=\"20\" height=\"26\" style=\"font-size:26px;line-height:26px;height:26px;text-align:left\"></td>\n            </tr>\n            <tr>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"556\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n              <td width=\"20\" height=\"2\" bgcolor=\"#d9dfe1\" style=\"background-color:#d9dfe1;font-size:2px;line-height:2px;height:2px;text-align:left\"></td>\n            </tr>\n          </tbody></table></td>\n          <td width=\"37\" height=\"40\" style=\"font-size:40px;line-height:40px;height:40px;text-align:left\"></td>\n        </tr>\n        <tr>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"596\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"37\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n        </tr>\n      </tbody></table>\n  </td></tr>\n</tbody>\n</table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#273f47\"><tbody><tr><td align=\"center\">&nbsp;</td></tr></tbody></table>\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" bgcolor=\"#364a51\">\n  <tbody><tr>\n    <td align=\"center\">\n       <table cellspacing=\"0\" cellpadding=\"0\" width=\"672\" border=\"0\" bgcolor=\"#364a51\">\n              <tbody><tr>\n              <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"569\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n          <td width=\"38\" height=\"30\" style=\"font-size:30px;line-height:30px;height:30px;text-align:left\"></td>\n              </tr>\n              <tr>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\">\n                </td>\n                <td valign=\"top\" style=\"font-family:helvetica,arial,sans-seif;font-size:12px;line-height:16px;color:#949fa3;text-align:left\">Copyright &copy; {{business_name}}, All rights reserved.<br><br><br></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n              <tr>\n              <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              <td width=\"569\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n                <td width=\"38\" height=\"40\" style=\"font-size:40px;line-height:40px;text-align:left\"></td>\n              </tr>\n            </tbody></table>\n     </td>\n  </tr>\n</tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n\n</div></div>\n', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `sys_import_phone_number`
--

CREATE TABLE `sys_import_phone_number` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_int_country_codes`
--

CREATE TABLE `sys_int_country_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plain_tariff` decimal(5,2) NOT NULL DEFAULT 1.00,
  `voice_tariff` decimal(5,2) NOT NULL DEFAULT 1.00,
  `mms_tariff` decimal(5,2) NOT NULL DEFAULT 1.00,
  `active` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_int_country_codes`
--

INSERT INTO `sys_int_country_codes` (`id`, `country_name`, `iso_code`, `country_code`, `plain_tariff`, `voice_tariff`, `mms_tariff`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF / AFG', '93', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(2, 'Albania', 'AL / ALB', '355', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(3, 'Algeria', 'DZ / DZA', '213', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(4, 'Andorra', 'AD / AND', '376', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(5, 'Angola', 'AO / AGO', '244', '1.00', '1.00', '1.00', '0', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(6, 'Antarctica', 'AQ / ATA', '672', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(7, 'Argentina', 'AR / ARG', '54', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(8, 'Armenia', 'AM / ARM', '374', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(9, 'Aruba', 'AW / ABW', '297', '1.00', '1.00', '1.00', '0', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(10, 'Australia', 'AU / AUS', '61', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(11, 'Austria', 'AT / AUT', '43', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(12, 'Azerbaijan', 'AZ / AZE', '994', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(13, 'Bahrain', 'BH / BHR', '973', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(14, 'Bangladesh', 'BD / BGD', '880', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(15, 'Belarus', 'BY / BLR', '375', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(16, 'Belgium', 'BE / BEL', '32', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(17, 'Belize', 'BZ / BLZ', '501', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(18, 'Benin', 'BJ / BEN', '229', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(19, 'Bhutan', 'BT / BTN', '975', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(20, 'Bolivia', 'BO / BOL', '591', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(21, 'Bosnia and Herzegovina', 'BA / BIH', '387', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(22, 'Botswana', 'BW / BWA', '267', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(23, 'Brazil', 'BR / BRA', '55', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(24, 'Brunei', 'BN / BRN', '673', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(25, 'Bulgaria', 'BG / BGR', '359', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(26, 'Burkina Faso', 'BF / BFA', '226', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(27, 'Burma (Myanmar)', 'MM / MMR', '95', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(28, 'Burundi', 'BI / BDI', '257', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(29, 'Cambodia', 'KH / KHM', '855', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(30, 'Cameroon', 'CM / CMR', '237', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(31, 'Canada', 'CA / CAN', '1', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(32, 'Cape Verde', 'CV / CPV', '238', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(33, 'Central African Republic', 'CF / CAF', '236', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(34, 'Chad', 'TD / TCD', '235', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(35, 'Chile', 'CL / CHL', '56', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(36, 'China', 'CN / CHN', '86', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(37, 'Christmas Island', 'CX / CXR', '61', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(38, 'Cocos (Keeling) Islands', 'CC / CCK', '61', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(39, 'Colombia', 'CO / COL', '57', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(40, 'Comoros', 'KM / COM', '269', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(41, 'Congo', 'CD / COD', '243', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(42, 'Cook Islands', 'CK / COK', '682', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(43, 'Costa Rica', 'CR / CRC', '506', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(44, 'Croatia', 'HR / HRV', '385', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(45, 'Cuba', 'CU / CUB', '53', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(46, 'Cyprus', 'CY / CYP', '357', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(47, 'Czech Republic', 'CZ / CZE', '420', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(48, 'Denmark', 'DK / DNK', '45', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(49, 'Djibouti', 'DJ / DJI', '253', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(50, 'Ecuador', 'EC / ECU', '593', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(51, 'Egypt', 'EG / EGY', '20', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(52, 'El Salvador', 'SV / SLV', '503', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(53, 'Equatorial Guinea', 'GQ / GNQ', '240', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(54, 'Eritrea', 'ER / ERI', '291', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(55, 'Estonia', 'EE / EST', '372', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(56, 'Ethiopia', 'ET / ETH', '251', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(57, 'Falkland Islands', 'FK / FLK', '500', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(58, 'Faroe Islands', 'FO / FRO', '298', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(59, 'Fiji', 'FJ / FJI', '679', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(60, 'Finland', 'FI / FIN', '358', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(61, 'France', 'FR / FRA', '33', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(62, 'French Polynesia', 'PF / PYF', '689', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(63, 'Gabon', 'GA / GAB', '241', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(64, 'Gambia', 'GM / GMB', '220', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(65, 'Gaza Strip', '/', '970', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(66, 'Georgia', 'GE / GEO', '995', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(67, 'Germany', 'DE / DEU', '49', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(68, 'Ghana', 'GH / GHA', '233', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(69, 'Gibraltar', 'GI / GIB', '350', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(70, 'Greece', 'GR / GRC', '30', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(71, 'Greenland', 'GL / GRL', '299', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(72, 'Guatemala', 'GT / GTM', '502', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(73, 'Guinea', 'GN / GIN', '224', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(74, 'Guinea-Bissau', 'GW / GNB', '245', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(75, 'Guyana', 'GY / GUY', '592', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(76, 'Haiti', 'HT / HTI', '509', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(77, 'Holy See (Vatican City)', 'VA / VAT', '39', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(78, 'Honduras', 'HN / HND', '504', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(79, 'Hong Kong', 'HK / HKG', '852', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(80, 'Hungary', 'HU / HUN', '36', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(81, 'Iceland', 'IS / IS', '354', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(82, 'India', 'IN / IND', '91', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(83, 'Indonesia', 'ID / IDN', '62', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(84, 'Iran', 'IR / IRN', '98', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(85, 'Iraq', 'IQ / IRQ', '964', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(86, 'Ireland', 'IE / IRL', '353', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(87, 'Isle of Man', 'IM / IMN', '44', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(88, 'Israel', 'IL / ISR', '972', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(89, 'Italy', 'IT / ITA', '39', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(90, 'Ivory Coast', 'CI / CIV', '225', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(91, 'Japan', 'JP / JPN', '81', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(92, 'Jordan', 'JO / JOR', '962', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(93, 'Kazakhstan', 'KZ / KAZ', '7', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(94, 'Kenya', 'KE / KEN', '254', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(95, 'Kiribati', 'KI / KIR', '686', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(96, 'Kosovo', '/', '381', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(97, 'Kuwait', 'KW / KWT', '965', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(98, 'Kyrgyzstan', 'KG / KGZ', '996', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(99, 'Laos', 'LA / LAO', '856', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(100, 'Latvia', 'LV / LVA', '371', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(101, 'Lebanon', 'LB / LBN', '961', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(102, 'Lesotho', 'LS / LSO', '266', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(103, 'Liberia', 'LR / LBR', '231', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(104, 'Libya', 'LY / LBY', '218', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(105, 'Liechtenstein', 'LI / LIE', '423', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(106, 'Lithuania', 'LT / LTU', '370', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(107, 'Luxembourg', 'LU / LUX', '352', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(108, 'Macau', 'MO / MAC', '853', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(109, 'Macedonia', 'MK / MKD', '389', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(110, 'Madagascar', 'MG / MDG', '261', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(111, 'Malawi', 'MW / MWI', '265', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(112, 'Malaysia', 'MY / MYS', '60', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(113, 'Maldives', 'MV / MDV', '960', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(114, 'Mali', 'ML / MLI', '223', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(115, 'Malta', 'MT / MLT', '356', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(116, 'Marshall Islands', 'MH / MHL', '692', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(117, 'Mauritania', 'MR / MRT', '222', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(118, 'Mauritius', 'MU / MUS', '230', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(119, 'Mayotte', 'YT / MYT', '262', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(120, 'Mexico', 'MX / MEX', '52', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(121, 'Micronesia', 'FM / FSM', '691', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(122, 'Moldova', 'MD / MDA', '373', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(123, 'Monaco', 'MC / MCO', '377', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(124, 'Mongolia', 'MN / MNG', '976', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(125, 'Montenegro', 'ME / MNE', '382', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(126, 'Morocco', 'MA / MAR', '212', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(127, 'Mozambique', 'MZ / MOZ', '258', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(128, 'Namibia', 'NA / NAM', '264', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(129, 'Nauru', 'NR / NRU', '674', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(130, 'Nepal', 'NP / NPL', '977', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(131, 'Netherlands', 'NL / NLD', '31', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(132, 'Netherlands Antilles', 'AN / ANT', '599', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(133, 'New Caledonia', 'NC / NCL', '687', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(134, 'New Zealand', 'NZ / NZL', '64', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(135, 'Nicaragua', 'NI / NIC', '505', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(136, 'Niger', 'NE / NER', '227', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(137, 'Nigeria', 'NG / NGA', '234', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(138, 'Niue', 'NU / NIU', '683', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(139, 'Norfolk Island', '/ NFK', '672', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(140, 'North Korea', 'KP / PRK', '850', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(141, 'Norway', 'NO / NOR', '47', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(142, 'Oman', 'OM / OMN', '968', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(143, 'Pakistan', 'PK / PAK', '92', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(144, 'Palau', 'PW / PLW', '680', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(145, 'Panama', 'PA / PAN', '507', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(146, 'Papua New Guinea', 'PG / PNG', '675', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(147, 'Paraguay', 'PY / PRY', '595', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(148, 'Peru', 'PE / PER', '51', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(149, 'Philippines', 'PH / PHL', '63', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(150, 'Pitcairn Islands', 'PN / PCN', '870', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(151, 'Poland', 'PL / POL', '48', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(152, 'Portugal', 'PT / PRT', '351', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(153, 'Puerto Rico', 'PR / PRI', '1', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(154, 'Qatar', 'QA / QAT', '974', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(155, 'Republic of the Congo', 'CG / COG', '242', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(156, 'Romania', 'RO / ROU', '40', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(157, 'Russia', 'RU / RUS', '7', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(158, 'Rwanda', 'RW / RWA', '250', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(159, 'Saint Barthelemy', 'BL / BLM', '590', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(160, 'Saint Helena', 'SH / SHN', '290', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(161, 'Saint Pierre and Miquelon', 'PM / SPM', '508', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(162, 'Samoa', 'WS / WSM', '685', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(163, 'San Marino', 'SM / SMR', '378', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(164, 'Sao Tome and Principe', 'ST / STP', '239', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(165, 'Saudi Arabia', 'SA / SAU', '966', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(166, 'Senegal', 'SN / SEN', '221', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(167, 'Serbia', 'RS / SRB', '381', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(168, 'Seychelles', 'SC / SYC', '248', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(169, 'Sierra Leone', 'SL / SLE', '232', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(170, 'Singapore', 'SG / SGP', '65', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(171, 'Slovakia', 'SK / SVK', '421', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(172, 'Slovenia', 'SI / SVN', '386', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(173, 'Solomon Islands', 'SB / SLB', '677', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(174, 'Somalia', 'SO / SOM', '252', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(175, 'South Africa', 'ZA / ZAF', '27', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(176, 'South Korea', 'KR / KOR', '82', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(177, 'Spain', 'ES / ESP', '34', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(178, 'Sri Lanka', 'LK / LKA', '94', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(179, 'Sudan', 'SD / SDN', '249', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(180, 'Suriname', 'SR / SUR', '597', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(181, 'Swaziland', 'SZ / SWZ', '268', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(182, 'Sweden', 'SE / SWE', '46', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(183, 'Switzerland', 'CH / CHE', '41', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(184, 'Syria', 'SY / SYR', '963', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(185, 'Taiwan', 'TW / TWN', '886', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(186, 'Tajikistan', 'TJ / TJK', '992', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(187, 'Tanzania', 'TZ / TZA', '255', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(188, 'Thailand', 'TH / THA', '66', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(189, 'Timor-Leste', 'TL / TLS', '670', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(190, 'Togo', 'TG / TGO', '228', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(191, 'Tokelau', 'TK / TKL', '690', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(192, 'Tonga', 'TO / TON', '676', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(193, 'Tunisia', 'TN / TUN', '216', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(194, 'Turkey', 'TR / TUR', '90', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(195, 'Turkmenistan', 'TM / TKM', '993', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(196, 'Tuvalu', 'TV / TUV', '688', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(197, 'Uganda', 'UG / UGA', '256', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(198, 'Ukraine', 'UA / UKR', '380', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(199, 'United Arab Emirates', 'AE / ARE', '971', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(200, 'United Kingdom', 'GB / GBR', '44', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(201, 'United States', 'US / USA', '1', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(202, 'Uruguay', 'UY / URY', '598', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(203, 'Uzbekistan', 'UZ / UZB', '998', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(204, 'Vanuatu', 'VU / VUT', '678', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(205, 'Venezuela', 'VE / VEN', '58', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(206, 'Vietnam', 'VN / VNM', '84', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(207, 'Wallis and Futuna', 'WF / WLF', '681', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(208, 'West Bank', '/', '970', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(209, 'Yemen', 'YE / YEM', '967', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(210, 'Zambia', 'ZM / ZMB', '260', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(211, 'Zimbabwe', 'ZW / ZWE', '263', '1.00', '1.00', '1.00', '1', '2018-11-14 08:04:22', '2018-11-14 08:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoices`
--

CREATE TABLE `sys_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `cl_id` int(11) NOT NULL,
  `client_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` date NOT NULL DEFAULT '2018-11-14',
  `duedate` date DEFAULT NULL,
  `datepaid` date DEFAULT NULL,
  `subtotal` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `total` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `status` enum('Unpaid','Paid','Partially Paid','Cancelled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `pmethod` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recurring` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bill_created` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoice_items`
--

CREATE TABLE `sys_invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `inv_id` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `item` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL DEFAULT 0,
  `subtotal` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `tax` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `discount` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `total` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_keywords`
--

CREATE TABLE `sys_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `keyword_name` text COLLATE utf8_unicode_ci NOT NULL,
  `reply_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_voice` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_mms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('available','assigned','expired') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'available',
  `price` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `validity` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `validity_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_language`
--

CREATE TABLE `sys_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `language` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `language_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
  `icon` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_language`
--

INSERT INTO `sys_language` (`id`, `language`, `status`, `language_code`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'English', 'Active', 'en', 'us.png', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(2, 'Swahili', 'Active', 'sw', 'kenya.png', '2020-03-25 15:11:59', '2020-03-25 15:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `sys_language_data`
--

CREATE TABLE `sys_language_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `lan_id` int(11) NOT NULL,
  `lan_data` text COLLATE utf8_unicode_ci NOT NULL,
  `lan_value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_language_data`
--

INSERT INTO `sys_language_data` (`id`, `lan_id`, `lan_data`, `lan_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'Admin', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(2, 1, 'Login', 'Login', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(3, 1, 'Forget Password', 'Forget Password', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(4, 1, 'Sign to your account', 'Sign to your account', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(5, 1, 'User Name', 'User Name', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(6, 1, 'Password', 'Password', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(7, 1, 'Remember Me', 'Remember Me', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(8, 1, 'Reset your password', 'Reset your password', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(9, 1, 'Email', 'Email', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(10, 1, 'Add New Client', 'Add New Client', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(11, 1, 'First Name', 'First Name', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(12, 1, 'Last Name', 'Last Name', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(13, 1, 'Company', 'Company', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(14, 1, 'Website', 'Website', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(15, 1, 'If you leave this, then you can not reset password or can not maintain email related function', 'If you leave this, then you can not reset password or can not maintain email related function', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(16, 1, 'Confirm Password', 'Confirm Password', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(17, 1, 'Phone', 'Phone', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(18, 1, 'Address', 'Address', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(19, 1, 'More Address', 'More Address', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(20, 1, 'State', 'State', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(21, 1, 'City', 'City', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(22, 1, 'Postcode', 'Postcode', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(23, 1, 'Country', 'Country', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(24, 1, 'Api Access', 'Api Access', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(25, 1, 'Yes', 'Yes', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(26, 1, 'No', 'No', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(27, 1, 'Client Group', 'Client Group', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(28, 1, 'None', 'None', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(29, 1, 'SMS Gateway', 'SMS Gateway', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(30, 1, 'SMS Limit', 'SMS Limit', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(31, 1, 'Avatar', 'Avatar', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(32, 1, 'Browse', 'Browse', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(33, 1, 'Notify Client with email', 'Notify Client with email', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(34, 1, 'Add', 'Add', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(35, 1, 'Add New Invoice', 'Add New Invoice', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(36, 1, 'Client', 'Client', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(37, 1, 'Invoice Type', 'Invoice Type', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(38, 1, 'One Time', 'One Time', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(39, 1, 'Recurring', 'Recurring', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(40, 1, 'Invoice Date', 'Invoice Date', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(41, 1, 'Due Date', 'Due Date', '2018-11-14 08:04:22', '2018-11-14 08:04:22'),
(42, 1, 'Paid Date', 'Paid Date', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(43, 1, 'Repeat Every', 'Repeat Every', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(44, 1, 'Week', 'Week', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(45, 1, '2 Weeks', '2 Weeks', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(46, 1, 'Month', 'Month', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(47, 1, '2 Months', '2 Months', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(48, 1, '3 Months', '3 Months', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(49, 1, '6 Months', '6 Months', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(50, 1, 'Year', 'Year', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(51, 1, '2 Years', '2 Years', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(52, 1, '3 Years', '3 Years', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(53, 1, 'Item Name', 'Item Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(54, 1, 'Price', 'Price', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(55, 1, 'Qty', 'Qty', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(56, 1, 'Quantity', 'Quantity', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(57, 1, 'Tax', 'Tax', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(58, 1, 'Discount', 'Discount', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(59, 1, 'Per Item Total', 'Per Item Total', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(60, 1, 'Add Item', 'Add Item', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(61, 1, 'Item', 'Item', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(62, 1, 'Delete', 'Delete', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(63, 1, 'Total', 'Total', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(64, 1, 'Invoice Note', 'Invoice Note', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(65, 1, 'Create Invoice', 'Create Invoice', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(66, 1, 'Add Plan Feature', 'Add Plan Feature', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(67, 1, 'Show In Client', 'Show In Client', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(68, 1, 'Feature Name', 'Feature Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(69, 1, 'Feature Value', 'Feature Value', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(70, 1, 'Action', 'Action', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(71, 1, 'Add More', 'Add More', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(72, 1, 'Save', 'Save', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(73, 1, 'Add SMS Price Plan', 'Add SMS Price Plan', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(74, 1, 'Plan Name', 'Plan Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(75, 1, 'Mark Popular', 'Mark Popular', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(76, 1, 'Popular', 'Popular', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(77, 1, 'Show', 'Show', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(78, 1, 'Hide', 'Hide', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(79, 1, 'Add Plan', 'Add Plan', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(80, 1, 'Add Sender ID', 'Add Sender ID', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(81, 1, 'All', 'All', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(82, 1, 'Status', 'Status', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(83, 1, 'Block', 'Block', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(84, 1, 'Unblock', 'Unblock', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(85, 1, 'Sender ID', 'Sender ID', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(86, 1, 'Add SMS Gateway', 'Add SMS Gateway', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(87, 1, 'Gateway Name', 'Gateway Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(88, 1, 'Gateway API Link', 'Gateway API Link', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(89, 1, 'Api link execute like', 'Api link execute like', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(90, 1, 'Active', 'Active', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(91, 1, 'Inactive', 'Inactive', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(92, 1, 'Parameter', 'Parameter', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(93, 1, 'Value', 'Value', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(94, 1, 'Add On URL', 'Add On URL', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(95, 1, 'Username_Key', 'Username/Key', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(96, 1, 'Set Blank', 'Set Blank', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(97, 1, 'Add on parameter', 'Add on parameter', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(98, 1, 'Source', 'Source', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(99, 1, 'Destination', 'Destination', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(100, 1, 'Message', 'Message', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(101, 1, 'Unicode', 'Unicode', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(102, 1, 'Type_Route', 'Type/Route', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(103, 1, 'Language', 'Language', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(104, 1, 'Custom Value 1', 'Custom Value 1', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(105, 1, 'Custom Value 2', 'Custom Value 2', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(106, 1, 'Custom Value 3', 'Custom Value 3', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(107, 1, 'Administrator Roles', 'Administrator Roles', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(108, 1, 'Add Administrator Role', 'Add Administrator Role', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(109, 1, 'Role Name', 'Role Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(110, 1, 'SL', 'SL', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(111, 1, 'Set Roles', 'Set Roles', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(112, 1, 'Administrators', 'Administrators', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(113, 1, 'Add New Administrator', 'Add New Administrator', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(114, 1, 'Role', 'Role', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(115, 1, 'Notify Administrator with email', 'Notify Administrator with email', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(116, 1, 'Name', 'Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(117, 1, 'All Clients', 'All Clients', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(118, 1, 'Clients', 'Clients', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(119, 1, 'Created', 'Created', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(120, 1, 'Created By', 'Created By', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(121, 1, 'Manage', 'Manage', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(122, 1, 'Closed', 'Closed', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(123, 1, 'All Invoices', 'All Invoices', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(124, 1, 'Client Name', 'Client Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(125, 1, 'Amount', 'Amount', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(126, 1, 'Type', 'Type', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(127, 1, 'Unpaid', 'Unpaid', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(128, 1, 'Paid', 'Paid', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(129, 1, 'Cancelled', 'Cancelled', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(130, 1, 'Partially Paid', 'Partially Paid', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(131, 1, 'Onetime', 'Onetime', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(132, 1, 'Recurring', 'Recurring', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(133, 1, 'Stop Recurring', 'Stop Recurring', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(134, 1, 'View', 'View', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(135, 1, 'Change Password', 'Change Password', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(136, 1, 'Current Password', 'Current Password', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(137, 1, 'New Password', 'New Password', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(138, 1, 'Update', 'Update', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(139, 1, 'Edit', 'Edit', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(140, 1, 'Clients Groups', 'Clients Groups', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(141, 1, 'Add New Group', 'Add New Group', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(142, 1, 'Group Name', 'Group Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(143, 1, 'Export Clients', 'Export Clients', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(144, 1, 'View Profile', 'View Profile', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(145, 1, 'Location', 'Location', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(146, 1, 'SMS Balance', 'SMS Balance', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(147, 1, 'Send SMS', 'Send SMS', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(148, 1, 'Update Limit', 'Update Limit', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(149, 1, 'Change Image', 'Change Image', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(150, 1, 'Edit Profile', 'Edit Profile', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(151, 1, 'Support Tickets', 'Support Tickets', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(152, 1, 'Change', 'Change', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(153, 1, 'Basic Info', 'Basic Info', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(154, 1, 'Invoices', 'Invoices', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(155, 1, 'SMS Transaction', 'SMS Transaction', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(156, 1, 'Leave blank if you do not change', 'Leave blank if you do not change', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(157, 1, 'Subject', 'Subject', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(158, 1, 'Date', 'Date', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(159, 1, 'Pending', 'Pending', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(160, 1, 'Answered', 'Answered', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(161, 1, 'Customer Reply', 'Customer Reply', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(162, 1, 'characters remaining', 'characters remaining', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(163, 1, 'Close', 'Close', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(164, 1, 'Send', 'Send', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(165, 1, 'Update with previous balance. Enter (-) amount for decrease limit', 'Update with previous balance. Enter (-) amount for decrease limit', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(166, 1, 'Update Image', 'Update Image', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(167, 1, 'Coverage', 'Coverage', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(168, 1, 'ISO Code', 'ISO Code', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(169, 1, 'Country Code', 'Country Code', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(170, 1, 'Tariff', 'Tariff', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(171, 1, 'Live', 'Live', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(172, 1, 'Offline', 'Offline', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(173, 1, 'Create New Ticket', 'Create New Ticket', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(174, 1, 'Ticket For Client', 'Ticket For Client', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(175, 1, 'Department', 'Department', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(176, 1, 'Create Ticket', 'Create Ticket', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(177, 1, 'Create SMS Template', 'Create SMS Template', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(178, 1, 'SMS Templates', 'SMS Templates', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(179, 1, 'Select Template', 'Select Template', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(180, 1, 'Template Name', 'Template Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(181, 1, 'From', 'From', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(182, 1, 'Insert Merge Filed', 'Insert Merge Filed', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(183, 1, 'Select Merge Field', 'Select Merge Field', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(184, 1, 'Phone Number', 'Phone Number', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(185, 1, 'Add New', 'Add New', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(186, 1, 'Tickets', 'Tickets', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(187, 1, 'Invoices History', 'Invoices History', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(188, 1, 'Tickets History', 'Tickets History', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(189, 1, 'SMS Success History', 'SMS Success History', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(190, 1, 'SMS History By Date', 'SMS History By Date', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(191, 1, 'Recent 5 Invoices', 'Recent 5 Invoices', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(192, 1, 'Recent 5 Support Tickets', 'Recent 5 Support Tickets', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(193, 1, 'Edit Invoice', 'Edit Invoice', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(194, 1, 'View Invoice', 'View Invoice', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(195, 1, 'Send Invoice', 'Send Invoice', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(196, 1, 'Access Role', 'Access Role', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(197, 1, 'Super Admin', 'Super Admin', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(198, 1, 'Personal Details', 'Personal Details', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(199, 1, 'Unique For every User', 'Unique For every User', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(200, 1, 'Email Templates', 'Email Templates', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(201, 1, 'Manage Email Template', 'Manage Email Template', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(202, 1, 'Export and Import Clients', 'Export and Import Clients', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(203, 1, 'Export Clients', 'Export Clients', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(204, 1, 'Export Clients as CSV', 'Export Clients as CSV', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(205, 1, 'Sample File', 'Sample File', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(206, 1, 'Download Sample File', 'Download Sample File', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(207, 1, 'Import Clients', 'Import Clients', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(208, 1, 'It will take few minutes. Please do not reload the page', 'It will take few minutes. Please do not reload the page', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(209, 1, 'Import', 'Import', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(210, 1, 'Reset My Password', 'Reset My Password', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(211, 1, 'Back To Sign in', 'Back To Sign in', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(212, 1, 'Invoice No', 'Invoice No', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(213, 1, 'Invoice', 'Invoice', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(214, 1, 'Invoice To', 'Invoice To', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(215, 1, 'Printable Version', 'Printable Version', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(216, 1, 'Invoice Status', 'Invoice Status', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(217, 1, 'Subtotal', 'Subtotal', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(218, 1, 'Grand Total', 'Grand Total', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(219, 1, 'Amount Due', 'Amount Due', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(220, 1, 'Add Language', 'Add Language', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(221, 1, 'Flag', 'Flag', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(222, 1, 'All Languages', 'All Languages', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(223, 1, 'Translate', 'Translate', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(224, 1, 'Language Manage', 'Language Manage', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(225, 1, 'Language Name', 'Language Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(226, 1, 'English To', 'English To', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(227, 1, 'English', 'English', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(228, 1, 'Localization', 'Localization', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(229, 1, 'Date Format', 'Date Format', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(230, 1, 'Timezone', 'Timezone', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(231, 1, 'Default Language', 'Default Language', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(232, 1, 'Currency Code', 'Currency Code', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(233, 1, 'Currency Symbol', 'Currency Symbol', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(234, 1, 'Default Country', 'Default Country', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(235, 1, 'Manage Administrator', 'Manage Administrator', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(236, 1, 'Manage Coverage', 'Manage Coverage', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(237, 1, 'Cost for per SMS', 'Cost for per SMS', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(238, 1, 'SMS Gateway Manage', 'SMS Gateway Manage', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(239, 1, 'Manage Plan Feature', 'Manage Plan Feature', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(240, 1, 'SMS Plan Features', 'SMS Plan Features', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(241, 1, 'Update Feature', 'Update Feature', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(242, 1, 'Manage SMS Price Plan', 'Manage SMS Price Plan', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(243, 1, 'SMS Price Plan', 'SMS Price Plan', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(244, 1, 'Update Plan', 'Update Plan', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(245, 1, 'Msisdn', 'Msisdn', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(246, 1, 'Account Sid', 'Account Sid', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(247, 1, 'SMS Api', 'SMS Api', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(248, 1, 'SMS Api User name', 'SMS Api User name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(249, 1, 'Auth ID', 'Auth ID', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(250, 1, 'Auth Token', 'Auth Token', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(251, 1, 'SMS Api key', 'SMS Api key', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(252, 1, 'SMS Api Password', 'SMS Api Password', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(253, 1, 'Extra Value', 'Extra Value', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(254, 1, 'Schedule SMS', 'Schedule SMS', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(255, 1, 'Manage SMS Template', 'Manage SMS Template', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(256, 1, 'Edit Administrator Role', 'Edit Administrator Role', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(257, 1, 'Manage Payment Gateway', 'Manage Payment Gateway', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(258, 1, 'Publishable Key', 'Publishable Key', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(259, 1, 'Bank Details', 'Bank Details', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(260, 1, 'Api Login ID', 'Api Login ID', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(261, 1, 'Secret_Key_Signature', 'Secret Key/Signature', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(262, 1, 'Transaction Key', 'Transaction Key', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(263, 1, 'Payment Gateways', 'Payment Gateways', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(264, 1, 'Send Bulk SMS', 'Send Bulk SMS', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(265, 1, 'Bulk SMS', 'Bulk SMS', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(266, 1, 'After click on Send button, do not refresh your browser', 'After click on Send button, do not refresh your browser', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(267, 1, 'Schedule Time', 'Schedule Time', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(268, 1, 'Import Numbers', 'Import Numbers', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(269, 1, 'Set Rules', 'Set Rules', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(270, 1, 'Check All', 'Check All', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(271, 1, 'Send SMS From File', 'Send SMS From File', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(272, 1, 'Schedule SMS From File', 'Schedule SMS From File', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(273, 1, 'SMS History', 'SMS History', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(274, 1, 'Add Price Plan', 'Add Price Plan', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(275, 1, 'Sender ID Management', 'Sender ID Management', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(276, 1, 'Support Department', 'Support Department', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(277, 1, 'Department Name', 'Department Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(278, 1, 'Department Email', 'Department Email', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(279, 1, 'System Settings', 'System Settings', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(280, 1, 'Language Settings', 'Language Settings', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(281, 1, 'SMS API Info', 'SMS API Info', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(282, 1, 'SMS API URL', 'SMS API URL', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(283, 1, 'Generate New', 'Generate New', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(284, 1, 'SMS API Details', 'SMS API Details', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(285, 1, 'Add Gateway', 'Add Gateway', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(286, 1, 'Two Way', 'Two Way', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(287, 1, 'Send By', 'Send By', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(288, 1, 'Sender', 'Sender', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(289, 1, 'Receiver', 'Receiver', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(290, 1, 'Inbox', 'Inbox', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(291, 1, 'Add Feature', 'Add Feature', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(292, 1, 'View Features', 'View Features', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(293, 1, 'Create Template', 'Create Template', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(294, 1, 'Application Name', 'Application Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(295, 1, 'Application Title', 'Application Title', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(296, 1, 'System Email', 'System Email', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(297, 1, 'Remember: All Email Going to the Receiver from this Email', 'Remember: All Email Going to the Receiver from this Email', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(298, 1, 'Footer Text', 'Footer Text', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(299, 1, 'Application Logo', 'Application Logo', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(300, 1, 'Application Favicon', 'Application Favicon', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(301, 1, 'API Permission', 'API Permission', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(302, 1, 'Allow Client Registration', 'Allow Client Registration', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(303, 1, 'Client Registration Verification', 'Client Registration Verification', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(304, 1, 'Email Gateway', 'Email Gateway', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(305, 1, 'Server Default', 'Server Default', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(306, 1, 'SMTP', 'SMTP', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(307, 1, 'Host Name', 'Host Name', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(308, 1, 'Port', 'Port', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(309, 1, 'Secure', 'Secure', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(310, 1, 'TLS', 'TLS', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(311, 1, 'SSL', 'SSL', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(312, 1, 'Mark As', 'Mark As', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(313, 1, 'Preview', 'Preview', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(314, 1, 'PDF', 'PDF', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(315, 1, 'Print', 'Print', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(316, 1, 'Ticket Management', 'Ticket Management', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(317, 1, 'Ticket Details', 'Ticket Details', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(318, 1, 'Ticket Discussion', 'Ticket Discussion', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(319, 1, 'Ticket Files', 'Ticket Files', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(320, 1, 'Created Date', 'Created Date', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(321, 1, 'Created By', 'Created By', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(322, 1, 'Department', 'Department', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(323, 1, 'Closed By', 'Closed By', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(324, 1, 'File Title', 'File Title', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(325, 1, 'Select File', 'Select File', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(326, 1, 'Files', 'Files', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(327, 1, 'Size', 'Size', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(328, 1, 'Upload By', 'Upload By', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(329, 1, 'Upload', 'Upload', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(330, 1, 'Dashboard', 'Dashboard', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(331, 1, 'Settings', 'Settings', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(332, 1, 'Logout', 'Logout', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(333, 1, 'Recent 5 Unpaid Invoices', 'Recent 5 Unpaid Invoices', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(334, 1, 'See All Invoices', 'See All Invoices', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(335, 1, 'Recent 5 Pending Tickets', 'Recent 5 Pending Tickets', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(336, 1, 'See All Tickets', 'See All Tickets', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(337, 1, 'Update Profile', 'Update Profile', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(338, 1, 'You do not have permission to view this page', 'You do not have permission to view this page', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(339, 1, 'This Option is Disable In Demo Mode', 'This Option is Disable In Demo Mode', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(340, 1, 'User name already exist', 'User name already exist', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(341, 1, 'Email already exist', 'Email already exist', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(342, 1, 'Both password does not match', 'Both password does not match', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(343, 1, 'Administrator added successfully', 'Administrator added successfully', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(344, 1, 'Administrator not found', 'Administrator not found', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(345, 1, 'Administrator updated successfully', 'Administrator updated successfully', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(346, 1, 'Administrator have support tickets. First delete support ticket', 'Administrator have support tickets. First delete support ticket', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(347, 1, 'Administrator have SMS Log. First delete all sms', 'Administrator have SMS Log. First delete all sms', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(348, 1, 'Administrator created invoice. First delete all invoice', 'Administrator created invoice. First delete all invoice', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(349, 1, 'Administrator delete successfully', 'Administrator delete successfully', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(350, 1, 'Administrator Role added successfully', 'Administrator Role added successfully', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(351, 1, 'Administrator Role already exist', 'Administrator Role already exist', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(352, 1, 'Administrator Role updated successfully', 'Administrator Role updated successfully', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(353, 1, 'Administrator Role info not found', 'Administrator Role info not found', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(354, 1, 'Permission not assigned', 'Permission not assigned', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(355, 1, 'Permission Updated', 'Permission Updated', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(356, 1, 'An Administrator contain this role', 'An Administrator contain this role', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(357, 1, 'Administrator role deleted successfully', 'Administrator role deleted successfully', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(358, 1, 'Invalid User name or Password', 'Invalid User name or Password', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(359, 1, 'Please Check your Email Settings', 'Please Check your Email Settings', '2018-11-14 08:04:23', '2018-11-14 08:04:23'),
(360, 1, 'Password Reset Successfully. Please check your email', 'Password Reset Successfully. Please check your email', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(361, 1, 'Your Password Already Reset. Please Check your email', 'Your Password Already Reset. Please Check your email', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(362, 1, 'Sorry There is no registered user with this email address', 'Sorry There is no registered user with this email address', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(363, 1, 'A New Password Generated. Please Check your email.', 'A New Password Generated. Please Check your email.', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(364, 1, 'Sorry Password reset Token expired or not exist, Please try again.', 'Sorry Password reset Token expired or not exist, Please try again.', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(365, 1, 'Client Added Successfully But Email Not Send', 'Client Added Successfully But Email Not Send', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(366, 1, 'Client Added Successfully', 'Client Added Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(367, 1, 'Client info not found', 'Client info not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(368, 1, 'Limit updated successfully', 'Limit updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(369, 1, 'Image updated successfully', 'Image updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(370, 1, 'Please try again', 'Please try again', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(371, 1, 'Client updated successfully', 'Client updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(372, 1, 'SMS gateway not active', 'SMS gateway not active', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(373, 1, 'Please check sms history', 'Please check sms history', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(374, 1, 'Insert Valid Excel or CSV file', 'Insert Valid Excel or CSV file', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(375, 1, 'Client imported successfully', 'Client imported successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(376, 1, 'Client Group added successfully', 'Client Group added successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(377, 1, 'Client Group updated successfully', 'Client Group updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(378, 1, 'Client Group not found', 'Client Group not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(379, 1, 'This Group exist in a client', 'This Group exist in a client', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(380, 1, 'Client group deleted successfully', 'Client group deleted successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(381, 1, 'Invoice not found', 'Invoice not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(382, 1, 'Logout Successfully', 'Logout Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(383, 1, 'Profile Updated Successfully', 'Profile Updated Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(384, 1, 'Upload an Image', 'Upload an Image', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(385, 1, 'Password Change Successfully', 'Password Change Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(386, 1, 'Current Password Does Not Match', 'Current Password Does Not Match', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(387, 1, 'Select a Customer', 'Select a Customer', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(388, 1, 'Invoice Created date is required', 'Invoice Created date is required', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(389, 1, 'Invoice Paid date is required', 'Invoice Paid date is required', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(390, 1, 'Date Parsing Error', 'Date Parsing Error', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(391, 1, 'Invoice Due date is required', 'Invoice Due date is required', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(392, 1, 'At least one item is required', 'At least one item is required', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(393, 1, 'Invoice Updated Successfully', 'Invoice Updated Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(394, 1, 'Invoice Marked as Paid', 'Invoice Marked as Paid', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(395, 1, 'Invoice Marked as Unpaid', 'Invoice Marked as Unpaid', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(396, 1, 'Invoice Marked as Partially Paid', 'Invoice Marked as Partially Paid', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(397, 1, 'Invoice Marked as Cancelled', 'Invoice Marked as Cancelled', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(398, 1, 'Invoice Send Successfully', 'Invoice Send Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(399, 1, 'Invoice deleted successfully', 'Invoice deleted successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(400, 1, 'Stop Recurring Invoice Successfully', 'Stop Recurring Invoice Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(401, 1, 'Invoice Created Successfully', 'Invoice Created Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(402, 1, 'Reseller Panel', 'Reseller Panel', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(403, 1, 'Captcha In Admin Login', 'Captcha In Admin Login', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(404, 1, 'Captcha In Client Login', 'Captcha In Client Login', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(405, 1, 'Captcha In Client Registration', 'Captcha In Client Registration', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(406, 1, 'reCAPTCHA Site Key', 'reCAPTCHA Site Key', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(407, 1, 'reCAPTCHA Secret Key', 'reCAPTCHA Secret Key', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(408, 1, 'Registration Successful', 'Registration Successful', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(409, 1, 'Payment gateway required', 'Payment gateway required', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(410, 1, 'Cancelled the Payment', 'Cancelled the Payment', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(411, 1, 'Invoice paid successfully', 'Invoice paid successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(412, 1, 'Purchase successfully.Wait for administrator response', 'Purchase successfully.Wait for administrator response', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(413, 1, 'SMS Not Found', 'SMS Not Found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(414, 1, 'SMS info deleted successfully', 'SMS info deleted successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(415, 1, 'Setting Update Successfully', 'Setting Update Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(416, 1, 'Email Template Not Found', 'Email Template Not Found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(417, 1, 'Email Template Update Successfully', 'Email Template Update Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(418, 1, 'Payment Gateway not found', 'Payment Gateway not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(419, 1, 'Payment Gateway update successfully', 'Payment Gateway update successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(420, 1, 'Language Already Exist', 'Language Already Exist', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(421, 1, 'Language Added Successfully', 'Language Added Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(422, 1, 'Language Translate Successfully', 'Language Translate Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(423, 1, 'Language not found', 'Language not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(424, 1, 'Language updated Successfully', 'Language updated Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(425, 1, 'Can not delete active language', 'Can not delete active language', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(426, 1, 'Language deleted successfully', 'Language deleted successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(427, 1, 'Information not found', 'Information not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(428, 1, 'Coverage updated successfully', 'Coverage updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(429, 1, 'Sender Id added successfully', 'Sender Id added successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(430, 1, 'Sender Id not found', 'Sender Id not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(431, 1, 'Sender id updated successfully', 'Sender id updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(432, 1, 'Sender id deleted successfully', 'Sender id deleted successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(433, 1, 'Plan already exist', 'Plan already exist', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(434, 1, 'Plan added successfully', 'Plan added successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(435, 1, 'Plan not found', 'Plan not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(436, 1, 'Plan updated successfully', 'Plan updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(437, 1, 'Plan features added successfully', 'Plan features added successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(438, 1, 'Plan feature not found', 'Plan feature not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(439, 1, 'Feature already exist', 'Feature already exist', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(440, 1, 'Feature updated successfully', 'Feature updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(441, 1, 'Plan feature deleted successfully', 'Plan feature deleted successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(442, 1, 'Price Plan deleted successfully', 'Price Plan deleted successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(443, 1, 'Gateway already exist', 'Gateway already exist', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(444, 1, 'Custom gateway added successfully', 'Custom gateway added successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(445, 1, 'Parameter or Value is empty', 'Parameter or Value is empty', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(446, 1, 'Gateway information not found', 'Gateway information not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(447, 1, 'Gateway name required', 'Gateway name required', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(448, 1, 'Custom gateway updated successfully', 'Custom gateway updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(449, 1, 'Client are registered with this gateway', 'Client are registered with this gateway', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(450, 1, 'Gateway deleted successfully', 'Gateway deleted successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(451, 1, 'Delete option disable for this gateway', 'Delete option disable for this gateway', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(452, 1, 'SMS added in queue and will deliver one by one', 'SMS added in queue and will deliver one by one', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(453, 1, 'Insert Valid Excel or CSV file', 'Insert Valid Excel or CSV file', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(454, 1, 'SMS are scheduled. Deliver in correct time', 'SMS are scheduled. Deliver in correct time', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(455, 1, 'Template already exist', 'Template already exist', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(456, 1, 'Sms template created successfully', 'Sms template created successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(457, 1, 'Sms template not found', 'Sms template not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(458, 1, 'Sms template updated successfully', 'Sms template updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(459, 1, 'Sms template delete successfully', 'Sms template delete successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(460, 1, 'API information updated successfully', 'API information updated successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(461, 1, 'Invalid Access', 'Invalid Access', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(462, 1, 'Invalid Captcha', 'Invalid Captcha', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(463, 1, 'Invalid Request', 'Invalid Request', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(464, 1, 'Verification code send successfully. Please check your email', 'Verification code send successfully. Please check your email', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(465, 1, 'Something wrong, Please contact with your provider', 'Something wrong, Please contact with your provider', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(466, 1, 'Verification code not found', 'Verification code not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(467, 1, 'Department Already exist', 'Department Already exist', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(468, 1, 'Department Added Successfully', 'Department Added Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(469, 1, 'Department Updated Successfully', 'Department Updated Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(470, 1, 'Support Ticket Created Successfully But Email Not Send', 'Support Ticket Created Successfully But Email Not Send', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(471, 1, 'Support Ticket Created Successfully', 'Support Ticket Created Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(472, 1, 'Basic Info Update Successfully', 'Basic Info Update Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(473, 1, 'Ticket Reply Successfully But Email Not Send', 'Ticket Reply Successfully But Email Not Send', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(474, 1, 'Ticket Reply Successfully', 'Ticket Reply Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(475, 1, 'File Uploaded Successfully', 'File Uploaded Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(476, 1, 'Please Upload a File', 'Please Upload a File', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(477, 1, 'File Deleted Successfully', 'File Deleted Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(478, 1, 'Ticket File not found', 'Ticket File not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(479, 1, 'Ticket Deleted Successfully', 'Ticket Deleted Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(480, 1, 'Ticket info not found', 'Ticket info not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(481, 1, 'Department Deleted Successfully', 'Department Deleted Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(482, 1, 'There Have no Department For Delete', 'There Have no Department For Delete', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(483, 1, 'You do not have enough sms balance', 'You do not have enough sms balance', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(484, 1, 'SMS gateway not active.Contact with Provider', 'SMS gateway not active.Contact with Provider', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(485, 1, 'Sender ID required', 'Sender ID required', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(486, 1, 'Request send successfully', 'Request send successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(487, 1, 'This Sender ID have Blocked By Administrator', 'This Sender ID have Blocked By Administrator', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(488, 1, 'Phone Number Coverage are not active', 'Phone Number Coverage are not active', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(489, 1, 'SMS plan not found', 'SMS plan not found', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(490, 1, 'Schedule feature not supported', 'Schedule feature not supported', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(491, 1, 'Need Account', 'Need Account', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(492, 1, 'Sign up', 'Sign up', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(493, 1, 'here', 'here', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(494, 1, 'User Registration', 'User Registration', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(495, 1, 'Already have an Account', 'Already have an Account', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(496, 1, 'Request New Sender ID', 'Request New Sender ID', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(497, 1, 'Purchase Now', 'Purchase Now', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(498, 1, 'Purchase SMS Plan', 'Purchase SMS Plan', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(499, 1, 'Select Payment Method', 'Select Payment Method', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(500, 1, 'Pay with Credit Card', 'Pay with Credit Card', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(501, 1, 'User Registration Verification', 'User Registration Verification', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(502, 1, 'Verify Your Account', 'Verify Your Account', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(503, 1, 'Send Verification Email', 'Send Verification Email', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(504, 1, 'Pay', 'Pay', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(505, 1, 'Pay Invoice', 'Pay Invoice', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(506, 1, 'Reply Ticket', 'Reply Ticket', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(507, 1, 'Whoops! Page Not Found, Go To', 'Whoops! Page Not Found, Go To', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(508, 1, 'Home Page', 'Home Page', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(509, 1, 'Error', 'Error', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(510, 1, 'Client contain in', 'Client contain in', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(511, 1, 'Client sms limit not empty', 'Client sms limit not empty', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(512, 1, 'This client have some customer', 'This client have some customer', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(513, 1, 'Client delete successfully', 'Client delete successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(514, 1, 'Client Group is empty', 'Client Group is empty', '2018-11-14 08:04:24', '2018-11-14 08:04:24');
INSERT INTO `sys_language_data` (`id`, `lan_id`, `lan_data`, `lan_value`, `created_at`, `updated_at`) VALUES
(515, 1, 'Country flag required', 'Country flag required', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(516, 1, 'Single', 'Single', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(517, 1, 'SMS', 'SMS', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(518, 1, 'Client ID', 'Client ID', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(519, 1, 'Client Secret', 'Client Secret', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(520, 1, 'Import Phone Number', 'Import Phone Number', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(521, 1, 'Sender ID Verification', 'Sender ID Verification', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(522, 1, 'Price Bundles', 'Price Bundles', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(523, 1, 'Unit From', 'Unit From', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(524, 1, 'Unit To', 'Unit To', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(525, 1, 'Transaction Fee', 'Transaction Fee', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(526, 1, 'Price Bundles Update Successfully', 'Price Bundles Update Successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(527, 1, 'Buy Unit', 'Buy Unit', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(528, 1, 'Recharge your account Online', 'Recharge your account Online', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(529, 1, 'Number of Units', 'Number of Units', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(530, 1, 'Unit Price', 'Unit Price', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(531, 1, 'Amount to Pay', 'Amount to Pay', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(532, 1, 'Price Per Unit', 'Price Per Unit', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(533, 1, 'Contacts', 'Contacts', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(534, 1, 'Phone Book', 'Phone Book', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(535, 1, 'Import Contacts', 'Import Contacts', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(536, 1, 'Blacklist Contacts', 'Blacklist Contacts', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(537, 1, 'Recharge', 'Recharge', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(538, 1, 'Reports', 'Reports', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(539, 1, 'Add New List', 'Add New List', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(540, 1, 'List name', 'List name', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(541, 1, 'View Contacts', 'View Contacts', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(542, 1, 'Add Contact', 'Add Contact', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(543, 1, 'Add New Contact', 'Add New Contact', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(544, 1, 'Edit List', 'Edit List', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(545, 1, 'Import Contact By File', 'Import Contact By File', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(546, 1, 'First Row As Header', 'First Row As Header', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(547, 1, 'Column', 'Column', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(548, 1, 'Import List into', 'Import List into', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(549, 1, 'Import By Numbers', 'Import By Numbers', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(550, 1, 'Paste Numbers', 'Paste Numbers', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(551, 1, 'Insert number with comma', 'Insert number with comma', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(552, 1, 'Numbers', 'Numbers', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(553, 1, 'Select Contact Type', 'Select Contact Type', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(554, 1, 'Contact List', 'Contact List', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(555, 1, 'Recipients', 'Recipients', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(556, 1, 'Send Later', 'Send Later', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(557, 1, 'Total Number Of Recipients', 'Total Number Of Recipients', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(558, 1, 'Direction', 'Direction', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(559, 1, 'To', 'To', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(560, 1, 'Segments', 'Segments', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(561, 1, 'Incoming', 'Incoming', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(562, 1, 'Outgoing', 'Outgoing', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(563, 1, 'Message Details', 'Message Details', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(564, 1, 'Sending User', 'Sending User', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(565, 1, 'Created At', 'Created At', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(566, 1, 'Background Jobs', 'Background Jobs', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(567, 1, 'Please specify the PHP executable path on your system', 'Please specify the PHP executable path on your system', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(568, 1, 'Edit Contact', 'Edit Contact', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(569, 1, 'Bulk Delete', 'Bulk Delete', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(570, 1, 'File Uploading.. Please wait', 'File Uploading.. Please wait', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(571, 1, 'Contact importing.. Please wait', 'Contact importing.. Please wait', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(572, 1, 'Send Quick SMS', 'Send Quick SMS', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(573, 1, 'Remove Duplicate', 'Remove Duplicate', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(574, 1, 'Message Type', 'Message Type', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(575, 1, 'Plain', 'Plain', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(576, 1, 'Unicode', 'Unicode', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(577, 1, 'Message adding in Queue.. Please wait', 'Message adding in Queue.. Please wait', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(578, 1, 'Purchase Code', 'Purchase Code', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(579, 1, 'Search Condition', 'Search Condition', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(580, 1, 'Receive SMS', 'Receive SMS', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(581, 1, 'API SMS', 'API SMS', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(582, 1, 'Search', 'Search', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(583, 1, 'Spam Words', 'Spam Words', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(584, 1, 'Block Message', 'Block Message', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(585, 1, 'Block', 'Block', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(586, 1, 'Release', 'Release', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(587, 1, 'SMS release successfully', 'SMS release successfully', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(588, 1, 'Add New Word', 'Add New Word', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(589, 1, 'Words', 'Words', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(590, 1, 'Word already exist', 'Word already exist', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(591, 1, 'Word added on Spam word list', 'Word added on Spam word list', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(592, 1, 'Word deleted from list', 'Word deleted from list', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(593, 1, 'Word not found on list', 'Word not found on list', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(594, 1, 'SMS Fraud Detection', 'SMS Fraud Detection', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(595, 1, 'Reply', 'Reply', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(596, 1, 'Successfully sent reply', 'Successfully sent reply', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(597, 1, 'Routing', 'Routing', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(598, 1, 'Add Operator', 'Add Operator', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(599, 1, 'View Operator', 'View Operator', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(600, 1, 'Operator Name', 'Operator Name', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(601, 1, 'Operator Code', 'Operator Code', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(602, 1, 'Area Code', 'Area Code', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(603, 1, 'Area Name', 'Area Name', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(604, 1, 'Sample Phone Number', 'Sample Phone Number', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(605, 1, 'Enter a real phone number like', 'Enter a real phone number like', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(606, 1, 'Exist on phone number', 'Exist on phone number', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(607, 1, 'Voice', 'Voice', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(608, 1, 'MMS', 'MMS', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(609, 1, 'Are you sure', 'Are you sure', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(610, 1, 'Default Price', 'Default Price', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(611, 1, 'Set as Global', 'Set as Global', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(612, 1, 'Remain country code at the beginning of the number', 'Remain country code at the beginning of the number', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(613, 1, 'Currency Symbol Position', 'Currency Symbol Position', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(614, 1, 'Right', 'Right', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(615, 1, 'Left', 'Left', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(616, 1, 'Currency Format', 'Currency Format', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(617, 1, 'Currency Decimal Digits', 'Currency Decimal Digits', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(618, 1, 'Basic Information', 'Basic Information', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(619, 1, 'Credential Setup', 'Credential Setup', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(620, 1, 'Credential Base Status', 'Credential Base Status', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(621, 1, 'You can only active one credential information', 'You can only active one credential information', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(622, 1, 'Current Media', 'Current Media', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(623, 1, 'Recurring SMS', 'Recurring SMS', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(624, 1, 'Period', 'Period', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(625, 1, 'Excel', 'Excel', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(626, 1, 'CSV', 'CSV', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(627, 1, 'Work only for Recipients number', 'Work only for Recipients number', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(628, 1, 'Recurring Period', 'Recurring Period', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(629, 1, 'Daily', 'Daily', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(630, 1, 'Weekly', 'Weekly', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(631, 1, 'Custom Date', 'Custom Date', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(632, 1, 'Recurring Time', 'Recurring Time', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(633, 1, 'Schedule Time Type', 'Schedule Time Type', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(634, 1, 'Schedule Time Using Date', 'Schedule Time Using Date', '2018-11-14 08:04:24', '2018-11-14 08:04:24'),
(635, 1, 'Schedule Time Using File', 'Schedule Time Using File', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(636, 1, 'Schedule Time must contain this format', 'Schedule Time must contain this format', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(637, 1, 'For Text/Plain SMS', 'For Text/Plain SMS', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(638, 1, 'For Unicode SMS', 'For Unicode SMS', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(639, 1, 'For Voice SMS', 'For Voice SMS', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(640, 1, 'For MMS SMS', 'For MMS SMS', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(641, 1, 'For Schedule SMS', 'For Schedule SMS', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(642, 1, 'Balance Check', 'Balance Check', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(643, 1, 'Reply Message', 'Reply Message', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(644, 1, 'Global', 'Global', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(645, 1, 'Update Period', 'Update Period', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(646, 1, 'Update Contact', 'Update Contact', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(647, 1, 'Update SMS data', 'Update SMS data', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(648, 1, 'Currency Symbol Position', 'Currency Symbol Position', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(649, 1, 'Recurring Note', 'Recurring Note', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(650, 1, 'The sms unit will be deducted when the recurring sms task starts. If you do not have enough sms unit then\n                            its automatically stop the recurring process and sms not send to users', 'The sms unit will be deducted when the recurring sms task starts. If you do not have enough sms unit then\n                            its automatically stop the recurring process and sms not send to users', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(651, 1, 'Send Recurring SMS File', 'Send Recurring SMS File', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(652, 1, 'Upload .png or .jpeg or .jpg or .gif file', 'Upload .png or .jpeg or .jpg or .gif file', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(653, 1, 'Your are inactive or blocked by system. Please contact with administrator', 'Your are inactive or blocked by system. Please contact with administrator', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(654, 1, 'At least select one sms gateway', 'At least select one sms gateway', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(655, 1, 'SMS Gateway credential not found', 'SMS Gateway credential not found', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(656, 1, 'Invalid message type', 'Invalid message type', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(657, 1, 'List name already exist', 'List name already exist', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(658, 1, 'List added successfully', 'List added successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(659, 1, 'Contact list not found', 'Contact list not found', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(660, 1, 'List updated successfully', 'List updated successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(661, 1, 'Invalid Phone book', 'Invalid Phone book', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(662, 1, 'Contact number already exist', 'Contact number already exist', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(663, 1, 'Contact added successfully', 'Contact added successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(664, 1, 'Contact updated successfully', 'Contact updated successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(665, 1, 'Contact info not found', 'Contact info not found', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(666, 1, 'Contact deleted successfully', 'Contact deleted successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(667, 1, 'Phone number imported successfully', 'Phone number imported successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(668, 1, 'Empty field', 'Empty field', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(669, 1, 'Amount required', 'Amount required', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(670, 1, 'Item quantity required', 'Item quantity required', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(671, 1, 'Insert valid tax amount', 'Insert valid tax amount', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(672, 1, 'Insert valid discount amount', 'Insert valid discount amount', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(673, 1, 'Invalid transaction URL, cannot continue', 'Invalid transaction URL, cannot continue', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(674, 1, 'Data not found', 'Data not found', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(675, 1, 'Invoice not paid. Please try again', 'Invoice not paid. Please try again', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(676, 1, 'Unauthorized payment', 'Unauthorized payment', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(677, 1, 'Payment gateway not active', 'Payment gateway not active', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(678, 1, 'MMS not supported in block message', 'MMS not supported in block message', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(679, 1, 'Insert your message', 'Insert your message', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(680, 1, 'MMS not supported in two way communication', 'MMS not supported in two way communication', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(681, 1, 'Purchase code information updated', 'Purchase code information updated', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(682, 1, 'Select Client', 'Select Client', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(683, 1, 'Insert Sender id', 'Insert Sender id', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(684, 1, 'Select one credential status as Active', 'Select one credential status as Active', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(685, 1, 'Gateway updated successfully', 'Gateway updated successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(686, 1, 'SMS Gateway not supported Voice feature', 'SMS Gateway not supported Voice feature', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(687, 1, 'SMS Gateway not supported MMS feature', 'SMS Gateway not supported MMS feature', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(688, 1, 'Upload .png or .jpeg or .jpg or .gif or .mp3 or .mp4 or .3gp or .mpg or .mpeg file', 'Upload .png or .jpeg or .jpg or .gif or .mp3 or .mp4 or .3gp or .mpg or .mpeg file', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(689, 1, 'MMS file required', 'MMS file required', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(690, 1, 'MMS is disable in demo mode', 'MMS is disable in demo mode', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(691, 1, 'Message required', 'Message required', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(692, 1, 'Recipient empty', 'Recipient empty', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(693, 1, 'Schedule time required', 'Schedule time required', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(694, 1, 'Invalid Recipients', 'Invalid Recipients', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(695, 1, 'Invalid time format', 'Invalid time format', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(696, 1, 'Phone number contain in blacklist', 'Phone number contain in blacklist', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(697, 1, 'Number added on blacklist', 'Number added on blacklist', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(698, 1, 'Number deleted from blacklist', 'Number deleted from blacklist', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(699, 1, 'Number not found on blacklist', 'Number not found on blacklist', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(700, 1, 'Please check sms history for status', 'Please check sms history for status', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(701, 1, 'You can not send more than 100 sms using quick sms option', 'You can not send more than 100 sms using quick sms option', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(702, 1, 'Operator already exist', 'Operator already exist', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(703, 1, 'Operator added successfully', 'Operator added successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(704, 1, 'Something went wrong please try again', 'Something went wrong please try again', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(705, 1, 'Operator updated successfully', 'Operator updated successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(706, 1, 'Operator delete successfully', 'Operator delete successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(707, 1, 'Start Recurring', 'Start Recurring', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(708, 1, 'Running', 'Running', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(709, 1, 'Recipients required', 'Recipients required', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(710, 1, 'Recurring SMS info not found', 'Recurring SMS info not found', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(711, 1, 'Message recurred successfully. Delivered in correct time', 'Message recurred successfully. Delivered in correct time', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(712, 1, 'Recurring SMS stop successfully', 'Recurring SMS stop successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(713, 1, 'Recurring information not found', 'Recurring information not found', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(714, 1, 'Recurring SMS running successfully', 'Recurring SMS running successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(715, 1, 'Recurring contact added successfully', 'Recurring contact added successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(716, 1, 'Recurring contact updated successfully', 'Recurring contact updated successfully', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(717, 1, 'Recurring SMS period changed', 'Recurring SMS period changed', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(718, 1, 'Your are sending fraud message', 'Your are sending fraud message', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(719, 1, 'Message contain spam word', 'Message contain spam word', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(720, 1, 'Update Application', 'Update Application', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(721, 1, 'Keywords', 'Keywords', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(722, 1, 'All Keywords', 'All Keywords', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(723, 1, 'Add New Keyword', 'Add New Keyword', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(724, 1, 'Keyword Settings', 'Keyword Settings', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(725, 1, 'Campaign Reports', 'Campaign Reports', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(726, 1, 'Keyword features only work with two way sms gateway provider', 'Keyword features only work with two way sms gateway provider', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(727, 1, 'Title', 'Title', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(728, 1, 'Keyword', 'Keyword', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(729, 1, 'Manage Keyword', 'Manage Keyword', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(730, 1, 'Keyword Name', 'Keyword Name', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(731, 1, 'Reply Text For Recipient', 'Reply Text For Recipient', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(732, 1, 'Reply Voice For Recipient', 'Reply Voice For Recipient', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(733, 1, 'MMS File', 'MMS File', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(734, 1, 'Reply MMS For Recipient', 'Reply MMS For Recipient', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(735, 1, 'Validity', 'Validity', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(736, 1, 'Unlimited', 'Unlimited', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(737, 1, 'Available', 'Available', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(738, 1, 'Assigned', 'Assigned', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(739, 1, 'Opt in SMS Keyword', 'Opt in SMS Keyword', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(740, 1, 'Insert keyword using comma', 'Insert keyword using comma', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(741, 1, 'Opt Out SMS Keyword', 'Opt Out SMS Keyword', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(742, 1, 'Custom Gateway Success Response Status', 'Custom Gateway Success Response Status', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(743, 1, 'Campaign Type', 'Campaign Type', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(744, 1, 'Regular', 'Regular', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(745, 1, 'Scheduled', 'Scheduled', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(746, 1, 'Campaign ID', 'Campaign ID', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(747, 1, 'Campaign Details', 'Campaign Details', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(748, 1, 'Update Campaign', 'Update Campaign', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(749, 1, 'Delivered', 'Delivered', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(750, 1, 'Failed', 'Failed', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(751, 1, 'Queued', 'Queued', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(752, 1, 'SMS Type', 'SMS Type', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(753, 1, 'Run At', 'Run At', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(754, 1, 'Delivered At', 'Delivered At', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(755, 1, 'Campaign Status', 'Campaign Status', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(756, 1, 'Campaign Keyword', 'Campaign Keyword', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(757, 1, 'Only work with two way sms gateway provider', 'Only work with two way sms gateway provider', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(758, 1, 'Existing MMS File', 'Existing MMS File', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(759, 1, 'Update MMS File', 'Update MMS File', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(760, 1, 'Stop', 'Stop', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(761, 1, 'Paused', 'Paused', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(762, 1, 'Number', 'Number', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(763, 1, 'Overview', 'Overview', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(764, 1, 'Choose delimiter', 'Choose delimiter', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(765, 1, 'Automatic', 'Automatic', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(766, 1, 'Tab', 'Tab', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(767, 1, 'New Line', 'New Line', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(768, 1, 'Purchase keyword', 'Purchase keyword', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(769, 1, 'Arabic', 'Arabic', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(770, 1, 'Original Name', 'Original Name', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(771, 1, 'Chat SMS', 'Chat SMS', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(772, 1, 'Load More', 'Load More', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(773, 1, 'Add To Blacklist', 'Add To Blacklist', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(774, 1, 'Remove History', 'Remove History', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(775, 1, 'Type your message', 'Type your message', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(776, 1, 'System Email', 'System Email', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(777, 1, 'SMS Settings', 'SMS Settings', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(778, 1, 'Authentication Settings', 'Authentication Settings', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(779, 1, 'Unsubscribe Message', 'Unsubscribe Message', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(780, 1, 'Generate unsubscribe message', 'Generate unsubscribe message', '2018-11-14 08:04:25', '2018-11-14 08:04:25'),
(781, 2, 'Admin', 'Admin', '2020-03-25 15:11:59', '2020-03-25 15:11:59'),
(782, 2, 'Login', 'Login', '2020-03-25 15:11:59', '2020-03-25 15:11:59'),
(783, 2, 'Forget Password', 'Forget Password', '2020-03-25 15:11:59', '2020-03-25 15:11:59'),
(784, 2, 'Sign to your account', 'Sign to your account', '2020-03-25 15:11:59', '2020-03-25 15:11:59'),
(785, 2, 'User Name', 'User Name', '2020-03-25 15:11:59', '2020-03-25 15:11:59'),
(786, 2, 'Password', 'Password', '2020-03-25 15:11:59', '2020-03-25 15:11:59'),
(787, 2, 'Remember Me', 'Remember Me', '2020-03-25 15:11:59', '2020-03-25 15:11:59'),
(788, 2, 'Reset your password', 'Reset your password', '2020-03-25 15:11:59', '2020-03-25 15:11:59'),
(789, 2, 'Email', 'Email', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(790, 2, 'Add New Client', 'Add New Client', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(791, 2, 'First Name', 'First Name', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(792, 2, 'Last Name', 'Last Name', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(793, 2, 'Company', 'Company', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(794, 2, 'Website', 'Website', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(795, 2, 'If you leave this, then you can not reset password or can not maintain email related function', 'If you leave this, then you can not reset password or can not maintain email related function', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(796, 2, 'Confirm Password', 'Confirm Password', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(797, 2, 'Phone', 'Phone', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(798, 2, 'Address', 'Address', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(799, 2, 'More Address', 'More Address', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(800, 2, 'State', 'State', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(801, 2, 'City', 'City', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(802, 2, 'Postcode', 'Postcode', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(803, 2, 'Country', 'Country', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(804, 2, 'Api Access', 'Api Access', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(805, 2, 'Yes', 'Yes', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(806, 2, 'No', 'No', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(807, 2, 'Client Group', 'Client Group', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(808, 2, 'None', 'None', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(809, 2, 'SMS Gateway', 'SMS Gateway', '2020-03-25 15:12:00', '2020-03-25 15:12:00'),
(810, 2, 'SMS Limit', 'SMS Limit', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(811, 2, 'Avatar', 'Avatar', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(812, 2, 'Browse', 'Browse', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(813, 2, 'Notify Client with email', 'Notify Client with email', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(814, 2, 'Add', 'Add', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(815, 2, 'Add New Invoice', 'Add New Invoice', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(816, 2, 'Client', 'Client', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(817, 2, 'Invoice Type', 'Invoice Type', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(818, 2, 'One Time', 'One Time', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(819, 2, 'Recurring', 'Recurring', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(820, 2, 'Invoice Date', 'Invoice Date', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(821, 2, 'Due Date', 'Due Date', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(822, 2, 'Paid Date', 'Paid Date', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(823, 2, 'Repeat Every', 'Repeat Every', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(824, 2, 'Week', 'Week', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(825, 2, '2 Weeks', '2 Weeks', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(826, 2, 'Month', 'Month', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(827, 2, '2 Months', '2 Months', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(828, 2, '3 Months', '3 Months', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(829, 2, '6 Months', '6 Months', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(830, 2, 'Year', 'Year', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(831, 2, '2 Years', '2 Years', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(832, 2, '3 Years', '3 Years', '2020-03-25 15:12:01', '2020-03-25 15:12:01'),
(833, 2, 'Item Name', 'Item Name', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(834, 2, 'Price', 'Price', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(835, 2, 'Qty', 'Qty', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(836, 2, 'Quantity', 'Quantity', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(837, 2, 'Tax', 'Tax', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(838, 2, 'Discount', 'Discount', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(839, 2, 'Per Item Total', 'Per Item Total', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(840, 2, 'Add Item', 'Add Item', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(841, 2, 'Item', 'Item', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(842, 2, 'Delete', 'Delete', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(843, 2, 'Total', 'Total', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(844, 2, 'Invoice Note', 'Invoice Note', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(845, 2, 'Create Invoice', 'Create Invoice', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(846, 2, 'Add Plan Feature', 'Add Plan Feature', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(847, 2, 'Show In Client', 'Show In Client', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(848, 2, 'Feature Name', 'Feature Name', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(849, 2, 'Feature Value', 'Feature Value', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(850, 2, 'Action', 'Action', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(851, 2, 'Add More', 'Add More', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(852, 2, 'Save', 'Save', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(853, 2, 'Add SMS Price Plan', 'Add SMS Price Plan', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(854, 2, 'Plan Name', 'Plan Name', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(855, 2, 'Mark Popular', 'Mark Popular', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(856, 2, 'Popular', 'Popular', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(857, 2, 'Show', 'Show', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(858, 2, 'Hide', 'Hide', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(859, 2, 'Add Plan', 'Add Plan', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(860, 2, 'Add Sender ID', 'Add Sender ID', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(861, 2, 'All', 'All', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(862, 2, 'Status', 'Status', '2020-03-25 15:12:02', '2020-03-25 15:12:02'),
(863, 2, 'Block', 'Block', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(864, 2, 'Unblock', 'Unblock', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(865, 2, 'Sender ID', 'Sender ID', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(866, 2, 'Add SMS Gateway', 'Add SMS Gateway', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(867, 2, 'Gateway Name', 'Gateway Name', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(868, 2, 'Gateway API Link', 'Gateway API Link', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(869, 2, 'Api link execute like', 'Api link execute like', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(870, 2, 'Active', 'Active', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(871, 2, 'Inactive', 'Inactive', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(872, 2, 'Parameter', 'Parameter', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(873, 2, 'Value', 'Value', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(874, 2, 'Add On URL', 'Add On URL', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(875, 2, 'Username_Key', 'Username/Key', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(876, 2, 'Set Blank', 'Set Blank', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(877, 2, 'Add on parameter', 'Add on parameter', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(878, 2, 'Source', 'Source', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(879, 2, 'Destination', 'Destination', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(880, 2, 'Message', 'Message', '2020-03-25 15:12:03', '2020-03-25 15:12:03'),
(881, 2, 'Unicode', 'Unicode', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(882, 2, 'Type_Route', 'Type/Route', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(883, 2, 'Language', 'Language', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(884, 2, 'Custom Value 1', 'Custom Value 1', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(885, 2, 'Custom Value 2', 'Custom Value 2', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(886, 2, 'Custom Value 3', 'Custom Value 3', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(887, 2, 'Administrator Roles', 'Administrator Roles', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(888, 2, 'Add Administrator Role', 'Add Administrator Role', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(889, 2, 'Role Name', 'Role Name', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(890, 2, 'SL', 'SL', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(891, 2, 'Set Roles', 'Set Roles', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(892, 2, 'Administrators', 'Administrators', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(893, 2, 'Add New Administrator', 'Add New Administrator', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(894, 2, 'Role', 'Role', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(895, 2, 'Notify Administrator with email', 'Notify Administrator with email', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(896, 2, 'Name', 'Name', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(897, 2, 'All Clients', 'All Clients', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(898, 2, 'Clients', 'Clients', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(899, 2, 'Created', 'Created', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(900, 2, 'Created By', 'Created By', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(901, 2, 'Manage', 'Manage', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(902, 2, 'Closed', 'Closed', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(903, 2, 'All Invoices', 'All Invoices', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(904, 2, 'Client Name', 'Client Name', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(905, 2, 'Amount', 'Amount', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(906, 2, 'Type', 'Type', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(907, 2, 'Unpaid', 'Unpaid', '2020-03-25 15:12:04', '2020-03-25 15:12:04'),
(908, 2, 'Paid', 'Paid', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(909, 2, 'Cancelled', 'Cancelled', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(910, 2, 'Partially Paid', 'Partially Paid', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(911, 2, 'Onetime', 'Onetime', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(912, 2, 'Recurring', 'Recurring', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(913, 2, 'Stop Recurring', 'Stop Recurring', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(914, 2, 'View', 'View', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(915, 2, 'Change Password', 'Change Password', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(916, 2, 'Current Password', 'Current Password', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(917, 2, 'New Password', 'New Password', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(918, 2, 'Update', 'Update', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(919, 2, 'Edit', 'Edit', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(920, 2, 'Clients Groups', 'Clients Groups', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(921, 2, 'Add New Group', 'Add New Group', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(922, 2, 'Group Name', 'Group Name', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(923, 2, 'Export Clients', 'Export Clients', '2020-03-25 15:12:05', '2020-03-25 15:12:05'),
(924, 2, 'View Profile', 'View Profile', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(925, 2, 'Location', 'Location', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(926, 2, 'SMS Balance', 'SMS Balance', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(927, 2, 'Send SMS', 'Send SMS', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(928, 2, 'Update Limit', 'Update Limit', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(929, 2, 'Change Image', 'Change Image', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(930, 2, 'Edit Profile', 'Edit Profile', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(931, 2, 'Support Tickets', 'Support Tickets', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(932, 2, 'Change', 'Change', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(933, 2, 'Basic Info', 'Basic Info', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(934, 2, 'Invoices', 'Invoices', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(935, 2, 'SMS Transaction', 'SMS Transaction', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(936, 2, 'Leave blank if you do not change', 'Leave blank if you do not change', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(937, 2, 'Subject', 'Subject', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(938, 2, 'Date', 'Date', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(939, 2, 'Pending', 'Pending', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(940, 2, 'Answered', 'Answered', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(941, 2, 'Customer Reply', 'Customer Reply', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(942, 2, 'characters remaining', 'characters remaining', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(943, 2, 'Close', 'Close', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(944, 2, 'Send', 'Send', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(945, 2, 'Update with previous balance. Enter (-) amount for decrease limit', 'Update with previous balance. Enter (-) amount for decrease limit', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(946, 2, 'Update Image', 'Update Image', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(947, 2, 'Coverage', 'Coverage', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(948, 2, 'ISO Code', 'ISO Code', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(949, 2, 'Country Code', 'Country Code', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(950, 2, 'Tariff', 'Tariff', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(951, 2, 'Live', 'Live', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(952, 2, 'Offline', 'Offline', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(953, 2, 'Create New Ticket', 'Create New Ticket', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(954, 2, 'Ticket For Client', 'Ticket For Client', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(955, 2, 'Department', 'Department', '2020-03-25 15:12:06', '2020-03-25 15:12:06'),
(956, 2, 'Create Ticket', 'Create Ticket', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(957, 2, 'Create SMS Template', 'Create SMS Template', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(958, 2, 'SMS Templates', 'SMS Templates', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(959, 2, 'Select Template', 'Select Template', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(960, 2, 'Template Name', 'Template Name', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(961, 2, 'From', 'From', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(962, 2, 'Insert Merge Filed', 'Insert Merge Filed', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(963, 2, 'Select Merge Field', 'Select Merge Field', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(964, 2, 'Phone Number', 'Phone Number', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(965, 2, 'Add New', 'Add New', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(966, 2, 'Tickets', 'Tickets', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(967, 2, 'Invoices History', 'Invoices History', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(968, 2, 'Tickets History', 'Tickets History', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(969, 2, 'SMS Success History', 'SMS Success History', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(970, 2, 'SMS History By Date', 'SMS History By Date', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(971, 2, 'Recent 5 Invoices', 'Recent 5 Invoices', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(972, 2, 'Recent 5 Support Tickets', 'Recent 5 Support Tickets', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(973, 2, 'Edit Invoice', 'Edit Invoice', '2020-03-25 15:12:07', '2020-03-25 15:12:07'),
(974, 2, 'View Invoice', 'View Invoice', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(975, 2, 'Send Invoice', 'Send Invoice', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(976, 2, 'Access Role', 'Access Role', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(977, 2, 'Super Admin', 'Super Admin', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(978, 2, 'Personal Details', 'Personal Details', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(979, 2, 'Unique For every User', 'Unique For every User', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(980, 2, 'Email Templates', 'Email Templates', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(981, 2, 'Manage Email Template', 'Manage Email Template', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(982, 2, 'Export and Import Clients', 'Export and Import Clients', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(983, 2, 'Export Clients', 'Export Clients', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(984, 2, 'Export Clients as CSV', 'Export Clients as CSV', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(985, 2, 'Sample File', 'Sample File', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(986, 2, 'Download Sample File', 'Download Sample File', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(987, 2, 'Import Clients', 'Import Clients', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(988, 2, 'It will take few minutes. Please do not reload the page', 'It will take few minutes. Please do not reload the page', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(989, 2, 'Import', 'Import', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(990, 2, 'Reset My Password', 'Reset My Password', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(991, 2, 'Back To Sign in', 'Back To Sign in', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(992, 2, 'Invoice No', 'Invoice No', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(993, 2, 'Invoice', 'Invoice', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(994, 2, 'Invoice To', 'Invoice To', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(995, 2, 'Printable Version', 'Printable Version', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(996, 2, 'Invoice Status', 'Invoice Status', '2020-03-25 15:12:08', '2020-03-25 15:12:08'),
(997, 2, 'Subtotal', 'Subtotal', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(998, 2, 'Grand Total', 'Grand Total', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(999, 2, 'Amount Due', 'Amount Due', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1000, 2, 'Add Language', 'Add Language', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1001, 2, 'Flag', 'Flag', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1002, 2, 'All Languages', 'All Languages', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1003, 2, 'Translate', 'Translate', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1004, 2, 'Language Manage', 'Language Manage', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1005, 2, 'Language Name', 'Language Name', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1006, 2, 'English To', 'English To', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1007, 2, 'English', 'English', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1008, 2, 'Localization', 'Localization', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1009, 2, 'Date Format', 'Date Format', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1010, 2, 'Timezone', 'Timezone', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1011, 2, 'Default Language', 'Default Language', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1012, 2, 'Currency Code', 'Currency Code', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1013, 2, 'Currency Symbol', 'Currency Symbol', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1014, 2, 'Default Country', 'Default Country', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1015, 2, 'Manage Administrator', 'Manage Administrator', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1016, 2, 'Manage Coverage', 'Manage Coverage', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1017, 2, 'Cost for per SMS', 'Cost for per SMS', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1018, 2, 'SMS Gateway Manage', 'SMS Gateway Manage', '2020-03-25 15:12:09', '2020-03-25 15:12:09'),
(1019, 2, 'Manage Plan Feature', 'Manage Plan Feature', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1020, 2, 'SMS Plan Features', 'SMS Plan Features', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1021, 2, 'Update Feature', 'Update Feature', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1022, 2, 'Manage SMS Price Plan', 'Manage SMS Price Plan', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1023, 2, 'SMS Price Plan', 'SMS Price Plan', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1024, 2, 'Update Plan', 'Update Plan', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1025, 2, 'Msisdn', 'Msisdn', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1026, 2, 'Account Sid', 'Account Sid', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1027, 2, 'SMS Api', 'SMS Api', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1028, 2, 'SMS Api User name', 'SMS Api User name', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1029, 2, 'Auth Token', 'Auth Token', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1030, 2, 'Auth ID', 'Auth ID', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1031, 2, 'SMS Api key', 'SMS Api key', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1032, 2, 'SMS Api Password', 'SMS Api Password', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1033, 2, 'Extra Value', 'Extra Value', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1034, 2, 'Schedule SMS', 'Schedule SMS', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1035, 2, 'Manage SMS Template', 'Manage SMS Template', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1036, 2, 'Edit Administrator Role', 'Edit Administrator Role', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1037, 2, 'Manage Payment Gateway', 'Manage Payment Gateway', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1038, 2, 'Publishable Key', 'Publishable Key', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1039, 2, 'Bank Details', 'Bank Details', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1040, 2, 'Api Login ID', 'Api Login ID', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1041, 2, 'Secret_Key_Signature', 'Secret Key/Signature', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1042, 2, 'Transaction Key', 'Transaction Key', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1043, 2, 'Payment Gateways', 'Payment Gateways', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1044, 2, 'Send Bulk SMS', 'Send Bulk SMS', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1045, 2, 'Bulk SMS', 'Bulk SMS', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1046, 2, 'After click on Send button, do not refresh your browser', 'After click on Send button, do not refresh your browser', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1047, 2, 'Schedule Time', 'Schedule Time', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1048, 2, 'Import Numbers', 'Import Numbers', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1049, 2, 'Set Rules', 'Set Rules', '2020-03-25 15:12:10', '2020-03-25 15:12:10'),
(1050, 2, 'Check All', 'Check All', '2020-03-25 15:12:11', '2020-03-25 15:12:11');
INSERT INTO `sys_language_data` (`id`, `lan_id`, `lan_data`, `lan_value`, `created_at`, `updated_at`) VALUES
(1051, 2, 'Send SMS From File', 'Send SMS From File', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1052, 2, 'Schedule SMS From File', 'Schedule SMS From File', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1053, 2, 'SMS History', 'SMS History', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1054, 2, 'Add Price Plan', 'Add Price Plan', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1055, 2, 'Sender ID Management', 'Sender ID Management', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1056, 2, 'Support Department', 'Support Department', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1057, 2, 'Department Name', 'Department Name', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1058, 2, 'Department Email', 'Department Email', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1059, 2, 'System Settings', 'System Settings', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1060, 2, 'Language Settings', 'Language Settings', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1061, 2, 'SMS API Info', 'SMS API Info', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1062, 2, 'SMS API URL', 'SMS API URL', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1063, 2, 'Generate New', 'Generate New', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1064, 2, 'SMS API Details', 'SMS API Details', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1065, 2, 'Add Gateway', 'Add Gateway', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1066, 2, 'Two Way', 'Two Way', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1067, 2, 'Send By', 'Send By', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1068, 2, 'Sender', 'Sender', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1069, 2, 'Receiver', 'Receiver', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1070, 2, 'Inbox', 'Inbox', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1071, 2, 'Add Feature', 'Add Feature', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1072, 2, 'View Features', 'View Features', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1073, 2, 'Create Template', 'Create Template', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1074, 2, 'Application Name', 'Application Name', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1075, 2, 'Application Title', 'Application Title', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1076, 2, 'System Email', 'System Email', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1077, 2, 'Remember: All Email Going to the Receiver from this Email', 'Remember: All Email Going to the Receiver from this Email', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1078, 2, 'Footer Text', 'Footer Text', '2020-03-25 15:12:11', '2020-03-25 15:12:11'),
(1079, 2, 'Application Logo', 'Application Logo', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1080, 2, 'Application Favicon', 'Application Favicon', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1081, 2, 'API Permission', 'API Permission', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1082, 2, 'Allow Client Registration', 'Allow Client Registration', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1083, 2, 'Client Registration Verification', 'Client Registration Verification', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1084, 2, 'Email Gateway', 'Email Gateway', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1085, 2, 'Server Default', 'Server Default', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1086, 2, 'SMTP', 'SMTP', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1087, 2, 'Host Name', 'Host Name', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1088, 2, 'Port', 'Port', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1089, 2, 'Secure', 'Secure', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1090, 2, 'TLS', 'TLS', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1091, 2, 'SSL', 'SSL', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1092, 2, 'Mark As', 'Mark As', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1093, 2, 'Preview', 'Preview', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1094, 2, 'PDF', 'PDF', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1095, 2, 'Print', 'Print', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1096, 2, 'Ticket Management', 'Ticket Management', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1097, 2, 'Ticket Details', 'Ticket Details', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1098, 2, 'Ticket Discussion', 'Ticket Discussion', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1099, 2, 'Ticket Files', 'Ticket Files', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1100, 2, 'Created Date', 'Created Date', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1101, 2, 'Created By', 'Created By', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1102, 2, 'Department', 'Department', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1103, 2, 'Closed By', 'Closed By', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1104, 2, 'File Title', 'File Title', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1105, 2, 'Select File', 'Select File', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1106, 2, 'Files', 'Files', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1107, 2, 'Size', 'Size', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1108, 2, 'Upload By', 'Upload By', '2020-03-25 15:12:12', '2020-03-25 15:12:12'),
(1109, 2, 'Upload', 'Upload', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1110, 2, 'Dashboard', 'Dashboard', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1111, 2, 'Settings', 'Settings', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1112, 2, 'Logout', 'Logout', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1113, 2, 'Recent 5 Unpaid Invoices', 'Recent 5 Unpaid Invoices', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1114, 2, 'See All Invoices', 'See All Invoices', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1115, 2, 'Recent 5 Pending Tickets', 'Recent 5 Pending Tickets', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1116, 2, 'See All Tickets', 'See All Tickets', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1117, 2, 'Update Profile', 'Update Profile', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1118, 2, 'You do not have permission to view this page', 'You do not have permission to view this page', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1119, 2, 'This Option is Disable In Demo Mode', 'This Option is Disable In Demo Mode', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1120, 2, 'User name already exist', 'User name already exist', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1121, 2, 'Email already exist', 'Email already exist', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1122, 2, 'Both password does not match', 'Both password does not match', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1123, 2, 'Administrator added successfully', 'Administrator added successfully', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1124, 2, 'Administrator not found', 'Administrator not found', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1125, 2, 'Administrator updated successfully', 'Administrator updated successfully', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1126, 2, 'Administrator have support tickets. First delete support ticket', 'Administrator have support tickets. First delete support ticket', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1127, 2, 'Administrator have SMS Log. First delete all sms', 'Administrator have SMS Log. First delete all sms', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1128, 2, 'Administrator created invoice. First delete all invoice', 'Administrator created invoice. First delete all invoice', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1129, 2, 'Administrator delete successfully', 'Administrator delete successfully', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1130, 2, 'Administrator Role added successfully', 'Administrator Role added successfully', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1131, 2, 'Administrator Role already exist', 'Administrator Role already exist', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1132, 2, 'Administrator Role updated successfully', 'Administrator Role updated successfully', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1133, 2, 'Administrator Role info not found', 'Administrator Role info not found', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1134, 2, 'Permission not assigned', 'Permission not assigned', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1135, 2, 'Permission Updated', 'Permission Updated', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1136, 2, 'An Administrator contain this role', 'An Administrator contain this role', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1137, 2, 'Administrator role deleted successfully', 'Administrator role deleted successfully', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1138, 2, 'Invalid User name or Password', 'Invalid User name or Password', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1139, 2, 'Please Check your Email Settings', 'Please Check your Email Settings', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1140, 2, 'Password Reset Successfully. Please check your email', 'Password Reset Successfully. Please check your email', '2020-03-25 15:12:13', '2020-03-25 15:12:13'),
(1141, 2, 'Your Password Already Reset. Please Check your email', 'Your Password Already Reset. Please Check your email', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1142, 2, 'Sorry There is no registered user with this email address', 'Sorry There is no registered user with this email address', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1143, 2, 'A New Password Generated. Please Check your email.', 'A New Password Generated. Please Check your email.', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1144, 2, 'Sorry Password reset Token expired or not exist, Please try again.', 'Sorry Password reset Token expired or not exist, Please try again.', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1145, 2, 'Client Added Successfully But Email Not Send', 'Client Added Successfully But Email Not Send', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1146, 2, 'Client Added Successfully', 'Client Added Successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1147, 2, 'Client info not found', 'Client info not found', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1148, 2, 'Limit updated successfully', 'Limit updated successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1149, 2, 'Image updated successfully', 'Image updated successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1150, 2, 'Please try again', 'Please try again', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1151, 2, 'Client updated successfully', 'Client updated successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1152, 2, 'SMS gateway not active', 'SMS gateway not active', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1153, 2, 'Please check sms history', 'Please check sms history', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1154, 2, 'Insert Valid Excel or CSV file', 'Insert Valid Excel or CSV file', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1155, 2, 'Client imported successfully', 'Client imported successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1156, 2, 'Client Group added successfully', 'Client Group added successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1157, 2, 'Client Group updated successfully', 'Client Group updated successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1158, 2, 'Client Group not found', 'Client Group not found', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1159, 2, 'This Group exist in a client', 'This Group exist in a client', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1160, 2, 'Client group deleted successfully', 'Client group deleted successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1161, 2, 'Invoice not found', 'Invoice not found', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1162, 2, 'Logout Successfully', 'Logout Successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1163, 2, 'Profile Updated Successfully', 'Profile Updated Successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1164, 2, 'Upload an Image', 'Upload an Image', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1165, 2, 'Password Change Successfully', 'Password Change Successfully', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1166, 2, 'Current Password Does Not Match', 'Current Password Does Not Match', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1167, 2, 'Select a Customer', 'Select a Customer', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1168, 2, 'Invoice Created date is required', 'Invoice Created date is required', '2020-03-25 15:12:14', '2020-03-25 15:12:14'),
(1169, 2, 'Invoice Paid date is required', 'Invoice Paid date is required', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1170, 2, 'Date Parsing Error', 'Date Parsing Error', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1171, 2, 'Invoice Due date is required', 'Invoice Due date is required', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1172, 2, 'At least one item is required', 'At least one item is required', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1173, 2, 'Invoice Updated Successfully', 'Invoice Updated Successfully', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1174, 2, 'Invoice Marked as Paid', 'Invoice Marked as Paid', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1175, 2, 'Invoice Marked as Unpaid', 'Invoice Marked as Unpaid', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1176, 2, 'Invoice Marked as Partially Paid', 'Invoice Marked as Partially Paid', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1177, 2, 'Invoice Marked as Cancelled', 'Invoice Marked as Cancelled', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1178, 2, 'Invoice Send Successfully', 'Invoice Send Successfully', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1179, 2, 'Invoice deleted successfully', 'Invoice deleted successfully', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1180, 2, 'Stop Recurring Invoice Successfully', 'Stop Recurring Invoice Successfully', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1181, 2, 'Invoice Created Successfully', 'Invoice Created Successfully', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1182, 2, 'Reseller Panel', 'Reseller Panel', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1183, 2, 'Captcha In Admin Login', 'Captcha In Admin Login', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1184, 2, 'Captcha In Client Login', 'Captcha In Client Login', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1185, 2, 'Captcha In Client Registration', 'Captcha In Client Registration', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1186, 2, 'reCAPTCHA Site Key', 'reCAPTCHA Site Key', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1187, 2, 'reCAPTCHA Secret Key', 'reCAPTCHA Secret Key', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1188, 2, 'Registration Successful', 'Registration Successful', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1189, 2, 'Payment gateway required', 'Payment gateway required', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1190, 2, 'Cancelled the Payment', 'Cancelled the Payment', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1191, 2, 'Invoice paid successfully', 'Invoice paid successfully', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1192, 2, 'Purchase successfully.Wait for administrator response', 'Purchase successfully.Wait for administrator response', '2020-03-25 15:12:15', '2020-03-25 15:12:15'),
(1193, 2, 'SMS Not Found', 'SMS Not Found', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1194, 2, 'SMS info deleted successfully', 'SMS info deleted successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1195, 2, 'Setting Update Successfully', 'Setting Update Successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1196, 2, 'Email Template Not Found', 'Email Template Not Found', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1197, 2, 'Email Template Update Successfully', 'Email Template Update Successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1198, 2, 'Payment Gateway not found', 'Payment Gateway not found', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1199, 2, 'Payment Gateway update successfully', 'Payment Gateway update successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1200, 2, 'Language Already Exist', 'Language Already Exist', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1201, 2, 'Language Added Successfully', 'Language Added Successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1202, 2, 'Language Translate Successfully', 'Language Translate Successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1203, 2, 'Language not found', 'Language not found', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1204, 2, 'Language updated Successfully', 'Language updated Successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1205, 2, 'Can not delete active language', 'Can not delete active language', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1206, 2, 'Language deleted successfully', 'Language deleted successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1207, 2, 'Information not found', 'Information not found', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1208, 2, 'Coverage updated successfully', 'Coverage updated successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1209, 2, 'Sender Id added successfully', 'Sender Id added successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1210, 2, 'Sender Id not found', 'Sender Id not found', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1211, 2, 'Sender id updated successfully', 'Sender id updated successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1212, 2, 'Sender id deleted successfully', 'Sender id deleted successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1213, 2, 'Plan already exist', 'Plan already exist', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1214, 2, 'Plan added successfully', 'Plan added successfully', '2020-03-25 15:12:16', '2020-03-25 15:12:16'),
(1215, 2, 'Plan not found', 'Plan not found', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1216, 2, 'Plan updated successfully', 'Plan updated successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1217, 2, 'Plan features added successfully', 'Plan features added successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1218, 2, 'Plan feature not found', 'Plan feature not found', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1219, 2, 'Feature already exist', 'Feature already exist', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1220, 2, 'Feature updated successfully', 'Feature updated successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1221, 2, 'Plan feature deleted successfully', 'Plan feature deleted successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1222, 2, 'Price Plan deleted successfully', 'Price Plan deleted successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1223, 2, 'Gateway already exist', 'Gateway already exist', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1224, 2, 'Custom gateway added successfully', 'Custom gateway added successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1225, 2, 'Parameter or Value is empty', 'Parameter or Value is empty', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1226, 2, 'Gateway information not found', 'Gateway information not found', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1227, 2, 'Gateway name required', 'Gateway name required', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1228, 2, 'Custom gateway updated successfully', 'Custom gateway updated successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1229, 2, 'Client are registered with this gateway', 'Client are registered with this gateway', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1230, 2, 'Gateway deleted successfully', 'Gateway deleted successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1231, 2, 'Delete option disable for this gateway', 'Delete option disable for this gateway', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1232, 2, 'SMS added in queue and will deliver one by one', 'SMS added in queue and will deliver one by one', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1233, 2, 'Insert Valid Excel or CSV file', 'Insert Valid Excel or CSV file', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1234, 2, 'SMS are scheduled. Deliver in correct time', 'SMS are scheduled. Deliver in correct time', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1235, 2, 'Template already exist', 'Template already exist', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1236, 2, 'Sms template created successfully', 'Sms template created successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1237, 2, 'Sms template not found', 'Sms template not found', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1238, 2, 'Sms template updated successfully', 'Sms template updated successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1239, 2, 'Sms template delete successfully', 'Sms template delete successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1240, 2, 'API information updated successfully', 'API information updated successfully', '2020-03-25 15:12:17', '2020-03-25 15:12:17'),
(1241, 2, 'Invalid Access', 'Invalid Access', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1242, 2, 'Invalid Captcha', 'Invalid Captcha', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1243, 2, 'Invalid Request', 'Invalid Request', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1244, 2, 'Verification code send successfully. Please check your email', 'Verification code send successfully. Please check your email', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1245, 2, 'Something wrong, Please contact with your provider', 'Something wrong, Please contact with your provider', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1246, 2, 'Verification code not found', 'Verification code not found', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1247, 2, 'Department Already exist', 'Department Already exist', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1248, 2, 'Department Added Successfully', 'Department Added Successfully', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1249, 2, 'Department Updated Successfully', 'Department Updated Successfully', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1250, 2, 'Support Ticket Created Successfully But Email Not Send', 'Support Ticket Created Successfully But Email Not Send', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1251, 2, 'Support Ticket Created Successfully', 'Support Ticket Created Successfully', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1252, 2, 'Basic Info Update Successfully', 'Basic Info Update Successfully', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1253, 2, 'Ticket Reply Successfully But Email Not Send', 'Ticket Reply Successfully But Email Not Send', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1254, 2, 'Ticket Reply Successfully', 'Ticket Reply Successfully', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1255, 2, 'File Uploaded Successfully', 'File Uploaded Successfully', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1256, 2, 'Please Upload a File', 'Please Upload a File', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1257, 2, 'File Deleted Successfully', 'File Deleted Successfully', '2020-03-25 15:12:18', '2020-03-25 15:12:18'),
(1258, 2, 'Ticket File not found', 'Ticket File not found', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1259, 2, 'Ticket Deleted Successfully', 'Ticket Deleted Successfully', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1260, 2, 'Ticket info not found', 'Ticket info not found', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1261, 2, 'Department Deleted Successfully', 'Department Deleted Successfully', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1262, 2, 'There Have no Department For Delete', 'There Have no Department For Delete', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1263, 2, 'You do not have enough sms balance', 'You do not have enough sms balance', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1264, 2, 'SMS gateway not active.Contact with Provider', 'SMS gateway not active.Contact with Provider', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1265, 2, 'Sender ID required', 'Sender ID required', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1266, 2, 'Request send successfully', 'Request send successfully', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1267, 2, 'This Sender ID have Blocked By Administrator', 'This Sender ID have Blocked By Administrator', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1268, 2, 'Phone Number Coverage are not active', 'Phone Number Coverage are not active', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1269, 2, 'SMS plan not found', 'SMS plan not found', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1270, 2, 'Schedule feature not supported', 'Schedule feature not supported', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1271, 2, 'Need Account', 'Need Account', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1272, 2, 'Sign up', 'Sign up', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1273, 2, 'here', 'here', '2020-03-25 15:12:19', '2020-03-25 15:12:19'),
(1274, 2, 'User Registration', 'User Registration', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1275, 2, 'Already have an Account', 'Already have an Account', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1276, 2, 'Request New Sender ID', 'Request New Sender ID', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1277, 2, 'Purchase Now', 'Purchase Now', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1278, 2, 'Purchase SMS Plan', 'Purchase SMS Plan', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1279, 2, 'Select Payment Method', 'Select Payment Method', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1280, 2, 'Pay with Credit Card', 'Pay with Credit Card', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1281, 2, 'User Registration Verification', 'User Registration Verification', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1282, 2, 'Verify Your Account', 'Verify Your Account', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1283, 2, 'Send Verification Email', 'Send Verification Email', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1284, 2, 'Pay', 'Pay', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1285, 2, 'Pay Invoice', 'Pay Invoice', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1286, 2, 'Reply Ticket', 'Reply Ticket', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1287, 2, 'Whoops! Page Not Found, Go To', 'Whoops! Page Not Found, Go To', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1288, 2, 'Home Page', 'Home Page', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1289, 2, 'Error', 'Error', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1290, 2, 'Client contain in', 'Client contain in', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1291, 2, 'Client sms limit not empty', 'Client sms limit not empty', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1292, 2, 'This client have some customer', 'This client have some customer', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1293, 2, 'Client delete successfully', 'Client delete successfully', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1294, 2, 'Client Group is empty', 'Client Group is empty', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1295, 2, 'Country flag required', 'Country flag required', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1296, 2, 'Single', 'Single', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1297, 2, 'SMS', 'SMS', '2020-03-25 15:12:20', '2020-03-25 15:12:20'),
(1298, 2, 'Client ID', 'Client ID', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1299, 2, 'Client Secret', 'Client Secret', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1300, 2, 'Import Phone Number', 'Import Phone Number', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1301, 2, 'Sender ID Verification', 'Sender ID Verification', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1302, 2, 'Price Bundles', 'Price Bundles', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1303, 2, 'Unit From', 'Unit From', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1304, 2, 'Unit To', 'Unit To', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1305, 2, 'Transaction Fee', 'Transaction Fee', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1306, 2, 'Price Bundles Update Successfully', 'Price Bundles Update Successfully', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1307, 2, 'Buy Unit', 'Buy Unit', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1308, 2, 'Recharge your account Online', 'Recharge your account Online', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1309, 2, 'Number of Units', 'Number of Units', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1310, 2, 'Unit Price', 'Unit Price', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1311, 2, 'Amount to Pay', 'Amount to Pay', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1312, 2, 'Price Per Unit', 'Price Per Unit', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1313, 2, 'Contacts', 'Contacts', '2020-03-25 15:12:21', '2020-03-25 15:12:21'),
(1314, 2, 'Phone Book', 'Phone Book', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1315, 2, 'Import Contacts', 'Import Contacts', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1316, 2, 'Blacklist Contacts', 'Blacklist Contacts', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1317, 2, 'Recharge', 'Recharge', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1318, 2, 'Reports', 'Reports', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1319, 2, 'Add New List', 'Add New List', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1320, 2, 'List name', 'List name', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1321, 2, 'View Contacts', 'View Contacts', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1322, 2, 'Add Contact', 'Add Contact', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1323, 2, 'Add New Contact', 'Add New Contact', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1324, 2, 'Edit List', 'Edit List', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1325, 2, 'Import Contact By File', 'Import Contact By File', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1326, 2, 'First Row As Header', 'First Row As Header', '2020-03-25 15:12:22', '2020-03-25 15:12:22'),
(1327, 2, 'Column', 'Column', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1328, 2, 'Import List into', 'Import List into', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1329, 2, 'Import By Numbers', 'Import By Numbers', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1330, 2, 'Paste Numbers', 'Paste Numbers', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1331, 2, 'Insert number with comma', 'Insert number with comma', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1332, 2, 'Numbers', 'Numbers', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1333, 2, 'Select Contact Type', 'Select Contact Type', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1334, 2, 'Contact List', 'Contact List', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1335, 2, 'Recipients', 'Recipients', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1336, 2, 'Send Later', 'Send Later', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1337, 2, 'Total Number Of Recipients', 'Total Number Of Recipients', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1338, 2, 'Direction', 'Direction', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1339, 2, 'To', 'To', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1340, 2, 'Segments', 'Segments', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1341, 2, 'Incoming', 'Incoming', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1342, 2, 'Outgoing', 'Outgoing', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1343, 2, 'Message Details', 'Message Details', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1344, 2, 'Sending User', 'Sending User', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1345, 2, 'Created At', 'Created At', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1346, 2, 'Background Jobs', 'Background Jobs', '2020-03-25 15:12:23', '2020-03-25 15:12:23'),
(1347, 2, 'Please specify the PHP executable path on your system', 'Please specify the PHP executable path on your system', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1348, 2, 'Edit Contact', 'Edit Contact', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1349, 2, 'Bulk Delete', 'Bulk Delete', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1350, 2, 'File Uploading.. Please wait', 'File Uploading.. Please wait', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1351, 2, 'Contact importing.. Please wait', 'Contact importing.. Please wait', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1352, 2, 'Send Quick SMS', 'Send Quick SMS', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1353, 2, 'Remove Duplicate', 'Remove Duplicate', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1354, 2, 'Message Type', 'Message Type', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1355, 2, 'Plain', 'Plain', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1356, 2, 'Unicode', 'Unicode', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1357, 2, 'Message adding in Queue.. Please wait', 'Message adding in Queue.. Please wait', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1358, 2, 'Purchase Code', 'Purchase Code', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1359, 2, 'Search Condition', 'Search Condition', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1360, 2, 'Receive SMS', 'Receive SMS', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1361, 2, 'API SMS', 'API SMS', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1362, 2, 'Search', 'Search', '2020-03-25 15:12:24', '2020-03-25 15:12:24'),
(1363, 2, 'Spam Words', 'Spam Words', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1364, 2, 'Block Message', 'Block Message', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1365, 2, 'Block', 'Block', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1366, 2, 'Release', 'Release', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1367, 2, 'SMS release successfully', 'SMS release successfully', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1368, 2, 'Add New Word', 'Add New Word', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1369, 2, 'Words', 'Words', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1370, 2, 'Word already exist', 'Word already exist', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1371, 2, 'Word added on Spam word list', 'Word added on Spam word list', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1372, 2, 'Word deleted from list', 'Word deleted from list', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1373, 2, 'Word not found on list', 'Word not found on list', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1374, 2, 'SMS Fraud Detection', 'SMS Fraud Detection', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1375, 2, 'Reply', 'Reply', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1376, 2, 'Successfully sent reply', 'Successfully sent reply', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1377, 2, 'Routing', 'Routing', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1378, 2, 'Add Operator', 'Add Operator', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1379, 2, 'View Operator', 'View Operator', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1380, 2, 'Operator Name', 'Operator Name', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1381, 2, 'Operator Code', 'Operator Code', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1382, 2, 'Area Code', 'Area Code', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1383, 2, 'Area Name', 'Area Name', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1384, 2, 'Sample Phone Number', 'Sample Phone Number', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1385, 2, 'Enter a real phone number like', 'Enter a real phone number like', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1386, 2, 'Exist on phone number', 'Exist on phone number', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1387, 2, 'Voice', 'Voice', '2020-03-25 15:12:25', '2020-03-25 15:12:25'),
(1388, 2, 'MMS', 'MMS', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1389, 2, 'Are you sure', 'Are you sure', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1390, 2, 'Default Price', 'Default Price', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1391, 2, 'Set as Global', 'Set as Global', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1392, 2, 'Remain country code at the beginning of the number', 'Remain country code at the beginning of the number', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1393, 2, 'Currency Symbol Position', 'Currency Symbol Position', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1394, 2, 'Left', 'Left', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1395, 2, 'Right', 'Right', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1396, 2, 'Currency Format', 'Currency Format', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1397, 2, 'Currency Decimal Digits', 'Currency Decimal Digits', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1398, 2, 'Basic Information', 'Basic Information', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1399, 2, 'Credential Setup', 'Credential Setup', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1400, 2, 'Credential Base Status', 'Credential Base Status', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1401, 2, 'You can only active one credential information', 'You can only active one credential information', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1402, 2, 'Current Media', 'Current Media', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1403, 2, 'Recurring SMS', 'Recurring SMS', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1404, 2, 'Period', 'Period', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1405, 2, 'Excel', 'Excel', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1406, 2, 'CSV', 'CSV', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1407, 2, 'Work only for Recipients number', 'Work only for Recipients number', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1408, 2, 'Recurring Period', 'Recurring Period', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1409, 2, 'Daily', 'Daily', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1410, 2, 'Weekly', 'Weekly', '2020-03-25 15:12:26', '2020-03-25 15:12:26'),
(1411, 2, 'Custom Date', 'Custom Date', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1412, 2, 'Recurring Time', 'Recurring Time', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1413, 2, 'Schedule Time Type', 'Schedule Time Type', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1414, 2, 'Schedule Time Using Date', 'Schedule Time Using Date', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1415, 2, 'Schedule Time Using File', 'Schedule Time Using File', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1416, 2, 'Schedule Time must contain this format', 'Schedule Time must contain this format', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1417, 2, 'For Text/Plain SMS', 'For Text/Plain SMS', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1418, 2, 'For Unicode SMS', 'For Unicode SMS', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1419, 2, 'For Voice SMS', 'For Voice SMS', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1420, 2, 'For MMS SMS', 'For MMS SMS', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1421, 2, 'For Schedule SMS', 'For Schedule SMS', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1422, 2, 'Balance Check', 'Balance Check', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1423, 2, 'Reply Message', 'Reply Message', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1424, 2, 'Global', 'Global', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1425, 2, 'Update Period', 'Update Period', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1426, 2, 'Update Contact', 'Update Contact', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1427, 2, 'Update SMS data', 'Update SMS data', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1428, 2, 'Recurring Note', 'Recurring Note', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1429, 2, 'The sms unit will be deducted when the recurring sms task starts. If you do not have enough sms unit then\n                            its automatically stop the recurring process and sms not send to users', 'The sms unit will be deducted when the recurring sms task starts. If you do not have enough sms unit then\n                            its automatically stop the recurring process and sms not send to users', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1430, 2, 'Send Recurring SMS File', 'Send Recurring SMS File', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1431, 2, 'Upload .png or .jpeg or .jpg or .gif file', 'Upload .png or .jpeg or .jpg or .gif file', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1432, 2, 'Your are inactive or blocked by system. Please contact with administrator', 'Your are inactive or blocked by system. Please contact with administrator', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1433, 2, 'At least select one sms gateway', 'At least select one sms gateway', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1434, 2, 'SMS Gateway credential not found', 'SMS Gateway credential not found', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1435, 2, 'Invalid message type', 'Invalid message type', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1436, 2, 'List name already exist', 'List name already exist', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1437, 2, 'List added successfully', 'List added successfully', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1438, 2, 'Contact list not found', 'Contact list not found', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1439, 2, 'List updated successfully', 'List updated successfully', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1440, 2, 'Invalid Phone book', 'Invalid Phone book', '2020-03-25 15:12:27', '2020-03-25 15:12:27'),
(1441, 2, 'Contact number already exist', 'Contact number already exist', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1442, 2, 'Contact added successfully', 'Contact added successfully', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1443, 2, 'Contact updated successfully', 'Contact updated successfully', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1444, 2, 'Contact info not found', 'Contact info not found', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1445, 2, 'Contact deleted successfully', 'Contact deleted successfully', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1446, 2, 'Invalid phone numbers', 'Invalid phone numbers', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1447, 2, 'Phone number imported successfully', 'Phone number imported successfully', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1448, 2, 'Empty field', 'Empty field', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1449, 2, 'Amount required', 'Amount required', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1450, 2, 'Item quantity required', 'Item quantity required', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1451, 2, 'Insert valid tax amount', 'Insert valid tax amount', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1452, 2, 'Insert valid discount amount', 'Insert valid discount amount', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1453, 2, 'Invalid transaction URL, cannot continue', 'Invalid transaction URL, cannot continue', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1454, 2, 'Data not found', 'Data not found', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1455, 2, 'Invoice not paid. Please try again', 'Invoice not paid. Please try again', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1456, 2, 'Unauthorized payment', 'Unauthorized payment', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1457, 2, 'Payment gateway not active', 'Payment gateway not active', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1458, 2, 'MMS not supported in block message', 'MMS not supported in block message', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1459, 2, 'Insert your message', 'Insert your message', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1460, 2, 'MMS not supported in two way communication', 'MMS not supported in two way communication', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1461, 2, 'Purchase code information updated', 'Purchase code information updated', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1462, 2, 'Select Client', 'Select Client', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1463, 2, 'Insert Sender id', 'Insert Sender id', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1464, 2, 'Select one credential status as Active', 'Select one credential status as Active', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1465, 2, 'Gateway updated successfully', 'Gateway updated successfully', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1466, 1, 'SMS History By Month', 'SMS History By Month', '2020-03-25 15:12:28', '2020-03-25 15:12:28'),
(1468, 1, 'Subscription', 'Subscription', '2020-04-30 21:00:00', '2020-04-30 21:00:00'),
(1469, 1, 'Non-Bulk', 'Non-Bulk', '2020-04-30 21:00:00', '2020-04-30 21:00:00'),
(1470, 1, 'Non-Bulk Dashboard', 'Non-Bulk Dashboard', '2020-04-30 21:00:00', '2020-04-30 21:00:00'),
(1471, 1, 'Ondemand', 'Ondemand', '2020-04-30 21:00:00', '2020-04-30 21:00:00'),
(1472, 1, 'Offering', 'Offering', '2020-04-30 21:00:00', '2020-04-30 21:00:00'),
(1473, 1, 'History', 'History', '2020-04-30 21:00:00', '2020-04-30 21:00:00'),
(1474, 1, 'Non-Bulk SMS', 'Non-Bulk SMS', '2020-04-30 21:00:00', '2020-04-30 21:00:00'),
(1475, 1, 'Create Offering', 'Create Offering', '2020-05-01 21:00:00', '2020-05-01 21:00:00'),
(1476, 1, 'Description', 'Description', '2020-05-01 21:00:00', '2020-05-01 21:00:00'),
(1477, 1, 'Add New Offering', 'Add New Offering', '2020-05-01 21:00:00', '2020-05-01 21:00:00'),
(1478, 1, 'Offering ID', 'Offering ID', '2020-05-01 21:00:00', '2020-05-01 21:00:00'),
(1479, 1, 'Manage Offering', 'Manage Offering', '2020-04-30 21:00:00', '2020-05-01 21:00:00'),
(1480, 1, 'Subscription List', 'Subscription List', '2020-05-02 21:00:00', '2020-05-02 21:00:00'),
(1481, 1, 'Schedule SendSMS', 'Schedule SendSMS', '2020-05-02 21:00:00', '2020-05-02 21:00:00'),
(1482, 1, 'Non-Bulk History', 'Non-Bulk History', '2020-05-02 21:00:00', '2020-05-02 21:00:00'),
(1483, 1, 'Send Subscription SMS', 'Send Subscription SMS', '2020-05-04 21:00:00', '2020-05-04 21:00:00'),
(1484, 1, 'Send Ondemand SMS', 'Send Ondemand SMS', '2020-05-04 21:00:00', '2020-05-04 21:00:00'),
(1485, 1, 'Ondemand List', 'Ondemand List', '2020-05-04 21:00:00', '2020-05-04 21:00:00'),
(1486, 1, 'Shortcode', 'Shortcode', '2020-05-05 21:00:00', '2020-05-05 21:00:00'),
(1487, 1, 'Offercode', 'Offercode', '2020-05-05 21:00:00', '2020-05-05 21:00:00'),
(1488, 1, 'Offername', 'Offername', '2020-05-05 21:00:00', '2020-05-05 21:00:00'),
(1489, 1, 'Send Subscription SMS', 'Send Subscription SMS', '2020-05-06 21:00:00', '2020-05-06 21:00:00'),
(1490, 1, 'Replied', 'Replied', '2020-05-14 21:00:00', '2020-05-14 21:00:00'),
(1491, 1, 'Not replied', 'Not replied', '2020-05-14 21:00:00', '2020-05-14 21:00:00'),
(1492, 1, 'Reply SMS', 'Reply SMS', '2020-05-15 21:00:00', '2020-05-15 21:00:00'),
(1493, 1, 'Type History', 'Type History', '2020-05-15 21:00:00', '2020-05-15 21:00:00'),
(1494, 1, 'Ondemand History', 'Ondemand History', '2020-05-15 21:00:00', '2020-05-15 21:00:00'),
(1495, 1, 'Subscription History', 'Subscription History', '2020-05-15 21:00:00', '2020-05-15 21:00:00'),
(1496, 1, 'Update Balance', 'Update Balance', '2020-05-28 13:49:23', '2020-05-28 13:49:23'),
(1497, 1, 'Insufficient Balance in the Main Limit', 'Insufficient Balance in the Main Limit', '2020-05-28 13:49:23', '2020-05-28 13:49:23'),
(1498, 1, 'Forgot Password', 'Forgot Password', '2020-05-28 16:56:26', '2020-05-28 16:56:26'),
(1499, 1, 'BOOKING DETAILS URL', 'BOOKING DETAILS URL', '2020-08-28 21:09:05', '2020-08-28 21:09:05'),
(1500, 1, 'ShortCode SMS', 'ShortCode SMS', '2020-09-28 20:49:17', '2020-09-28 20:49:17'),
(1501, 1, 'Outbox', 'Outbox', '2020-09-28 20:49:17', '2020-09-28 20:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `sys_operator`
--

CREATE TABLE `sys_operator` (
  `id` int(10) UNSIGNED NOT NULL,
  `coverage_id` int(11) NOT NULL,
  `operator_name` text COLLATE utf8_unicode_ci NOT NULL,
  `operator_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `operator_setting` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `plain_price` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `voice_price` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `mms_price` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_payment_gateways`
--

CREATE TABLE `sys_payment_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `extra_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_one` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_two` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_three` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_payment_gateways`
--

INSERT INTO `sys_payment_gateways` (`id`, `name`, `value`, `settings`, `extra_value`, `password`, `custom_one`, `custom_two`, `custom_three`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'AeZWHAmXKtPApDT7XqQ9AESgfLqgTj_mJmuOAwHNDfsQ5O2PgG22HEPEmsHdHqdNBflti2dVp_5ggdDQ', 'paypal', 'EFFYmvYvCqhHKTFOAUBcYeLfnDl_9pBCt7a1nFtpgST26kDfDaZytGLL6LW0B8kgwWfqBFzMKBrQ-a9X', NULL, NULL, NULL, NULL, 'Active', '2018-11-14 08:04:21', '2019-05-01 17:54:52'),
(2, 'Stripe', 'pk_test_ARblMczqDw61NusMMs7o1RVK', 'stripe', 'sk_test_BQokikJOvBiI2HlWgH4olfQ2', NULL, NULL, NULL, NULL, 'Active', '2018-11-14 08:04:21', '2019-06-26 13:23:55'),
(3, '2CheckOut', 'Client_ID', '2checkout', NULL, NULL, NULL, NULL, NULL, 'Inactive', '2018-11-14 08:04:21', '2019-04-19 12:42:18'),
(4, 'Paystack', 'pk_test_25bdb768e32586e8d125b8eb8ddd71754296b310', 'paystack', 'sk_test_46823d69fa1990c3b1bfcb4b75ead975472164bf', NULL, NULL, NULL, NULL, 'Active', '2018-11-14 08:04:21', '2020-04-11 00:14:00'),
(5, 'PayU', '300046', 'payu', 'c8d4b7ac61758704f38ed5564d8c0ae0', NULL, NULL, NULL, NULL, 'Active', '2018-11-14 08:04:21', '2020-04-10 23:50:02'),
(6, 'Slydepay', 'merchantEmail', 'slydepay', 'merchantSecretKey', NULL, NULL, NULL, NULL, 'Active', '2018-11-14 08:04:21', '2020-04-11 00:07:06'),
(7, 'Paynow', 'Integration_ID', 'paynow', 'Integration_Key', NULL, NULL, NULL, NULL, 'Inactive', '2018-11-14 08:04:21', '2019-04-19 12:42:46'),
(8, 'WebXPay', 'secret_key', 'webxpay', 'public_key', NULL, NULL, NULL, NULL, 'Active', '2018-11-14 08:04:21', '2020-04-10 23:49:09'),
(9, 'CoinPayments', 'merchant_id', 'coinpayments', NULL, NULL, NULL, NULL, NULL, 'Inactive', '2018-11-14 08:04:21', '2019-04-19 12:43:00'),
(10, 'Bank', 'Make a Payment to Our Bank Account <br>Bank Name: Bank Name <br>Account Name: Account Holder Name <br>Account Number: Account Number <br>', 'manualpayment', NULL, NULL, NULL, NULL, NULL, 'Active', '2018-11-14 08:04:21', '2020-04-10 23:43:34'),
(11, 'M-Pesa', 'pk_test_ARblMczqDw61NusMMs7o1RVK', 'mpesa', 'sk_test_BQokikJOvBiI2HlWgH4olfQ2', NULL, NULL, NULL, NULL, 'Active', '2018-11-14 08:04:21', '2019-04-19 12:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `sys_recurring_sms`
--

CREATE TABLE `sys_recurring_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_recipients` int(11) NOT NULL,
  `use_gateway` int(11) NOT NULL,
  `media_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `recurring` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `recurring_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('plain','unicode','voice','mms','arabic') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  `status` enum('running','stop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'running',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_recurring_sms_contacts`
--

CREATE TABLE `sys_recurring_sms_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `receiver` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedule_sms`
--

CREATE TABLE `sys_schedule_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `use_gateway` int(11) NOT NULL,
  `type` enum('plain','unicode','voice','mms','arabic') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'plain',
  `submit_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `media_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_sender_id_management`
--

CREATE TABLE `sys_sender_id_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cl_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('pending','block','unblock') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'block',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_bundles`
--

CREATE TABLE `sys_sms_bundles` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_from` int(11) DEFAULT NULL,
  `unit_to` int(11) DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trans_fee` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_sms_bundles`
--

INSERT INTO `sys_sms_bundles` (`id`, `unit_from`, `unit_to`, `price`, `trans_fee`, `created_at`, `updated_at`) VALUES
(1, 1, 124999, '1', '0', '2020-04-11 13:49:02', '2020-04-11 13:49:02'),
(2, 125000, 524999, '0.90', '0', '2020-04-11 13:49:02', '2020-04-11 13:49:02'),
(3, 525000, 1024999, '0.80', '0', '2020-04-11 13:49:02', '2020-04-11 13:49:02'),
(4, 1025000, 5024999, '0.60', '0', '2020-04-11 13:49:02', '2020-04-11 13:49:02'),
(5, 5025000, 10250000, '0.40', '0', '2020-04-11 13:49:02', '2020-04-11 13:49:02'),
(6, 10250001, NULL, '0.30', '0', '2020-04-11 13:49:02', '2020-04-11 13:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_gateways`
--

CREATE TABLE `sys_sms_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `settings` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `api_link` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule` enum('No','Yes') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `custom` enum('No','Yes') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `type` enum('http','smpp') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http',
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `two_way` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `mms` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `voice` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_sms_gateways`
--

INSERT INTO `sys_sms_gateways` (`id`, `name`, `settings`, `api_link`, `port`, `schedule`, `custom`, `type`, `status`, `two_way`, `mms`, `voice`, `created_at`, `updated_at`) VALUES
(137, 'SAF_SDP', 'SAF_SDP', 'https://dsvc.safaricom.com:9480/api/public/CMS/bulksms', NULL, 'Yes', 'Yes', 'http', 'Active', 'No', 'No', 'No', '2020-01-24 17:57:49', '2020-05-24 17:38:49'),
(139, 'SUB_SENDSMS', 'SUB_SENDSMS', 'https://dsvc.safaricom.com:9480/api/public/SDP/sendSMSRequest', NULL, 'Yes', 'Yes', 'http', 'Active', 'Yes', 'No', 'No', '2020-05-09 16:48:37', '2020-06-17 06:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_gateway_credential`
--

CREATE TABLE `sys_sms_gateway_credential` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway_id` int(11) NOT NULL,
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Inactive',
  `c1` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `c2` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `c3` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `c4` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `c5` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_sms_gateway_credential`
--

INSERT INTO `sys_sms_gateway_credential` (`id`, `gateway_id`, `username`, `password`, `extra`, `status`, `c1`, `c2`, `c3`, `c4`, `c5`, `created_at`, `updated_at`) VALUES
(3, 2, '9DUfLYWoRlqp8ORk94gHaA==', NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, '2020-05-10 21:38:11', '2020-05-10 21:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_history`
--

CREATE TABLE `sys_sms_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 1,
  `use_gateway` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `api_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8_unicode_ci NOT NULL,
  `sms_type` enum('plain','unicode','voice','mms','arabic') COLLATE utf8_unicode_ci NOT NULL,
  `send_by` enum('receiver','sender','api') COLLATE utf8_unicode_ci NOT NULL,
  `media_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_inbox`
--

CREATE TABLE `sys_sms_inbox` (
  `id` int(10) UNSIGNED NOT NULL,
  `msg_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `send_by` enum('sender','receiver') COLLATE utf8_unicode_ci NOT NULL,
  `mark_read` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_plan_feature`
--

CREATE TABLE `sys_sms_plan_feature` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(11) NOT NULL,
  `feature_name` text COLLATE utf8_unicode_ci NOT NULL,
  `feature_value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_price_plan`
--

CREATE TABLE `sys_sms_price_plan` (
  `id` int(10) UNSIGNED NOT NULL,
  `plan_name` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `popular` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_templates`
--

CREATE TABLE `sys_sms_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `cl_id` int(11) NOT NULL,
  `template_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `global` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_sms_transaction`
--

CREATE TABLE `sys_sms_transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `cl_id` int(11) NOT NULL,
  `amount` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_sms_transaction`
--

INSERT INTO `sys_sms_transaction` (`id`, `cl_id`, `amount`, `created_at`, `updated_at`) VALUES
(5, 9, '100', '2020-05-24 18:06:27', '2020-05-24 18:06:27'),
(6, 1, '34', '2020-05-28 17:59:50', '2020-05-28 17:59:50'),
(7, 11, '5000', '2020-06-26 07:28:54', '2020-06-26 07:28:54'),
(8, 12, '100', '2020-06-29 19:59:24', '2020-06-29 19:59:24'),
(9, 13, '1000', '2020-07-02 12:19:30', '2020-07-02 12:19:30'),
(10, 1, '1', '2020-08-12 08:12:49', '2020-08-12 08:12:49'),
(11, 13, '1', '2020-08-12 08:13:59', '2020-08-12 08:13:59'),
(12, 9, '4000', '2020-08-21 12:46:54', '2020-08-21 12:46:54'),
(13, 1, '-45', '2020-08-21 12:47:46', '2020-08-21 12:47:46'),
(14, 1, '63732', '2020-08-21 12:47:56', '2020-08-21 12:47:56'),
(15, 9, '4000', '2020-08-21 12:48:25', '2020-08-21 12:48:25'),
(16, 14, '0', '2020-08-21 13:02:26', '2020-08-21 13:02:26'),
(17, 1, '-59732', '2020-09-03 10:49:33', '2020-09-03 10:49:33'),
(18, 1, '56314', '2020-09-03 10:49:45', '2020-09-03 10:49:45'),
(19, 9, '2000', '2020-09-03 10:53:45', '2020-09-03 10:53:45'),
(20, 1, '-54314', '2020-09-20 12:26:02', '2020-09-20 12:26:02'),
(21, 1, '53876', '2020-09-20 12:26:19', '2020-09-20 12:26:19'),
(22, 1, '-53876', '2020-09-23 11:36:48', '2020-09-23 11:36:48'),
(23, 1, '78686', '2020-09-23 11:37:02', '2020-09-23 11:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `sys_spam_word`
--

CREATE TABLE `sys_spam_word` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_support_departments`
--

CREATE TABLE `sys_support_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `show` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_support_departments`
--

INSERT INTO `sys_support_departments` (`id`, `name`, `email`, `order`, `show`, `created_at`, `updated_at`) VALUES
(3, 'Support', 'support@sourcecode.co.ke', 1, 'Yes', '2020-05-24 17:50:57', '2020-05-24 17:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `sys_tickets`
--

CREATE TABLE `sys_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `did` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Pending','Answered','Customer Reply','Closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `admin` text COLLATE utf8_unicode_ci NOT NULL,
  `replyby` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `closed_by` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticket_files`
--

CREATE TABLE `sys_ticket_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_ticket_replies`
--

CREATE TABLE `sys_ticket_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `tid` int(11) NOT NULL,
  `cl_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `admin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sys_two_way_communication`
--

CREATE TABLE `sys_two_way_communication` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway_id` int(11) NOT NULL,
  `source_param` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `destination_param` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message_param` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bulk_balance`
--
ALTER TABLE `bulk_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonbulk_sms_histories`
--
ALTER TABLE `nonbulk_sms_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ondemand_lists`
--
ALTER TABLE `ondemand_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_booking`
--
ALTER TABLE `service_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_lists`
--
ALTER TABLE `subscription_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_offerings`
--
ALTER TABLE `subscription_offerings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_admins`
--
ALTER TABLE `sys_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_admin_role`
--
ALTER TABLE `sys_admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_admin_role_perm`
--
ALTER TABLE `sys_admin_role_perm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_app_config`
--
ALTER TABLE `sys_app_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_blacklist_contacts`
--
ALTER TABLE `sys_blacklist_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_block_message`
--
ALTER TABLE `sys_block_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_campaigns`
--
ALTER TABLE `sys_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_campaign_subscription_list`
--
ALTER TABLE `sys_campaign_subscription_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_clients`
--
ALTER TABLE `sys_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_client_groups`
--
ALTER TABLE `sys_client_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_contact_list`
--
ALTER TABLE `sys_contact_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_custom_sms_gateways`
--
ALTER TABLE `sys_custom_sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_import_phone_number`
--
ALTER TABLE `sys_import_phone_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_int_country_codes`
--
ALTER TABLE `sys_int_country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_invoice_items`
--
ALTER TABLE `sys_invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_keywords`
--
ALTER TABLE `sys_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_language`
--
ALTER TABLE `sys_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_language_data`
--
ALTER TABLE `sys_language_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_operator`
--
ALTER TABLE `sys_operator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_payment_gateways`
--
ALTER TABLE `sys_payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_recurring_sms`
--
ALTER TABLE `sys_recurring_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_recurring_sms_contacts`
--
ALTER TABLE `sys_recurring_sms_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedule_sms`
--
ALTER TABLE `sys_schedule_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sender_id_management`
--
ALTER TABLE `sys_sender_id_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_bundles`
--
ALTER TABLE `sys_sms_bundles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_gateways`
--
ALTER TABLE `sys_sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_gateway_credential`
--
ALTER TABLE `sys_sms_gateway_credential`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_history`
--
ALTER TABLE `sys_sms_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_inbox`
--
ALTER TABLE `sys_sms_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_plan_feature`
--
ALTER TABLE `sys_sms_plan_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_price_plan`
--
ALTER TABLE `sys_sms_price_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_templates`
--
ALTER TABLE `sys_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sms_transaction`
--
ALTER TABLE `sys_sms_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_spam_word`
--
ALTER TABLE `sys_spam_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_support_departments`
--
ALTER TABLE `sys_support_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tickets`
--
ALTER TABLE `sys_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticket_files`
--
ALTER TABLE `sys_ticket_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_ticket_replies`
--
ALTER TABLE `sys_ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_two_way_communication`
--
ALTER TABLE `sys_two_way_communication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulk_balance`
--
ALTER TABLE `bulk_balance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `nonbulk_sms_histories`
--
ALTER TABLE `nonbulk_sms_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ondemand_lists`
--
ALTER TABLE `ondemand_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_booking`
--
ALTER TABLE `service_booking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_lists`
--
ALTER TABLE `subscription_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_offerings`
--
ALTER TABLE `subscription_offerings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_admins`
--
ALTER TABLE `sys_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_admin_role`
--
ALTER TABLE `sys_admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_admin_role_perm`
--
ALTER TABLE `sys_admin_role_perm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_app_config`
--
ALTER TABLE `sys_app_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sys_blacklist_contacts`
--
ALTER TABLE `sys_blacklist_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_block_message`
--
ALTER TABLE `sys_block_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_campaigns`
--
ALTER TABLE `sys_campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_campaign_subscription_list`
--
ALTER TABLE `sys_campaign_subscription_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_clients`
--
ALTER TABLE `sys_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_client_groups`
--
ALTER TABLE `sys_client_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_contact_list`
--
ALTER TABLE `sys_contact_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_custom_sms_gateways`
--
ALTER TABLE `sys_custom_sms_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sys_import_phone_number`
--
ALTER TABLE `sys_import_phone_number`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_int_country_codes`
--
ALTER TABLE `sys_int_country_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_invoice_items`
--
ALTER TABLE `sys_invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_keywords`
--
ALTER TABLE `sys_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_language`
--
ALTER TABLE `sys_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_language_data`
--
ALTER TABLE `sys_language_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1502;

--
-- AUTO_INCREMENT for table `sys_operator`
--
ALTER TABLE `sys_operator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_payment_gateways`
--
ALTER TABLE `sys_payment_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sys_recurring_sms`
--
ALTER TABLE `sys_recurring_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_recurring_sms_contacts`
--
ALTER TABLE `sys_recurring_sms_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_schedule_sms`
--
ALTER TABLE `sys_schedule_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_sender_id_management`
--
ALTER TABLE `sys_sender_id_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_sms_bundles`
--
ALTER TABLE `sys_sms_bundles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sys_sms_gateways`
--
ALTER TABLE `sys_sms_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `sys_sms_gateway_credential`
--
ALTER TABLE `sys_sms_gateway_credential`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_sms_history`
--
ALTER TABLE `sys_sms_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_sms_inbox`
--
ALTER TABLE `sys_sms_inbox`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_sms_plan_feature`
--
ALTER TABLE `sys_sms_plan_feature`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_sms_price_plan`
--
ALTER TABLE `sys_sms_price_plan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_sms_templates`
--
ALTER TABLE `sys_sms_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_sms_transaction`
--
ALTER TABLE `sys_sms_transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sys_spam_word`
--
ALTER TABLE `sys_spam_word`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_support_departments`
--
ALTER TABLE `sys_support_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_tickets`
--
ALTER TABLE `sys_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_ticket_files`
--
ALTER TABLE `sys_ticket_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_ticket_replies`
--
ALTER TABLE `sys_ticket_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sys_two_way_communication`
--
ALTER TABLE `sys_two_way_communication`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
