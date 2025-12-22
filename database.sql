-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2025 at 05:29 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ittrainup_timefood`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

DROP TABLE IF EXISTS `addon_settings`;
CREATE TABLE IF NOT EXISTS `addon_settings` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_values` longtext COLLATE utf8mb4_unicode_ci,
  `test_values` longtext COLLATE utf8mb4_unicode_ci,
  `settings_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `payment_settings_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

INSERT INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:29', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"otp_template\":\"OTP1\"}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"otp_template\":\"OTP1\"}', 'sms_config', 'live', 0, NULL, '2025-05-11 07:50:11', NULL),
('0d8a9308-d6a5-11ed-962c-0c7a158e4469', 'mercadopago', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-27 11:57:11', '{\"gateway_title\":\"Mercadopago\",\"gateway_image\":null}'),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:31', '{\"gateway_title\":\"Liqpay\",\"gateway_image\":null}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:41:32', '{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:48', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:33', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-22 06:30:55', '{\"gateway_title\":\"Paytm\",\"gateway_image\":null}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:07', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('33a90207-7315-4bfe-a9af-d16049cc0b7c', 'cashfree', '\"{\\\"gateway\\\":\\\"cashfree\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"', '\"{\\\"gateway\\\":\\\"cashfree\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"', 'payment_config', 'test', 0, '2024-12-21 06:51:28', '2024-12-21 06:51:28', NULL),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:51', '{\"gateway_title\":\"Paytabs\",\"gateway_image\":null}'),
('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469', 'bkash', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:39:42', '{\"gateway_title\":\"Bkash\",\"gateway_image\":null}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:24', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:42:38', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:40', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:16:17', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:37:43', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:09', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:13', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:38', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('888e7b84-27b3-497d-a5ef-cd69d65a798e', 'instamojo', '\"{\\\"gateway\\\":\\\"instamojo\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":\\\"0\\\",\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"', '\"{\\\"gateway\\\":\\\"instamojo\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":\\\"0\\\",\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"', 'payment_config', 'test', 0, '2024-12-21 06:51:28', '2024-12-21 06:51:28', NULL),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', 'payment_config', 'test', 1, NULL, '2025-07-26 14:23:02', '{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:19:28', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:34', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('ad5af1c1-d6a2-11ed-962c-0c7a158e4469', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:00', '{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),
('ad5b02a0-d6a2-11ed-962c-0c7a158e4469', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', 'payment_config', 'test', 0, NULL, '2023-08-27 09:58:57', '{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),
('b043c880-874b-4ee7-b945-b19e3bb2cabc', 'phonepe', '\"{\\\"gateway\\\":\\\"phonepe\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"merchant_id\\\":\\\"\\\",\\\"salt_Key\\\":\\\"\\\",\\\"salt_index\\\":\\\"\\\"}\"', '\"{\\\"gateway\\\":\\\"phonepe\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"merchant_id\\\":\\\"\\\",\\\"salt_Key\\\":\\\"\\\",\\\"salt_index\\\":\\\"\\\"}\"', 'payment_config', 'test', 0, '2024-12-21 06:51:28', '2024-12-21 06:51:28', NULL),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b8992bd4-d6a0-11ed-962c-0c7a158e4469', 'paymob_accept', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\",\"supported_country\":\"\",\"public_key\":\"\",\"secret_key\":\"\"}', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\",\"supported_country\":\"\",\"public_key\":\"\",\"secret_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2025-05-11 07:50:11', '{\"gateway_title\":\"Paymob accept\",\"gateway_image\":null}'),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:49:15', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:41:03', '{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),
('d822f1a5-c864-11ed-ac7a-0c7a158e4469', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:45', '{\"gateway_title\":\"Paystack\",\"gateway_image\":null}'),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:46', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:26', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-09-10 01:14:01', NULL),
('ea346efe-cdda-11ed-affe-0c7a158e4469', 'ssl_commerz', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":1,\"store_id\":\"42505550\",\"store_password\":\"782090\"}', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":1,\"store_id\":\"42505550\",\"store_password\":\"782090\"}', 'payment_config', 'live', 1, NULL, '2023-08-30 03:43:49', '{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":\"2025-07-06-686a437e13bd8.png\"}'),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_fund_bonus_categories`
--

DROP TABLE IF EXISTS `add_fund_bonus_categories`;
CREATE TABLE IF NOT EXISTS `add_fund_bonus_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bonus_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus_amount` double(14,2) NOT NULL DEFAULT '0.00',
  `min_add_money_amount` double(14,2) NOT NULL DEFAULT '0.00',
  `max_bonus_amount` double(14,2) NOT NULL DEFAULT '0.00',
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_role_id` bigint NOT NULL DEFAULT '2',
  `image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `identify_image` text COLLATE utf8mb4_unicode_ci,
  `identify_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identify_number` int DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `admin_role_id`, `image`, `identify_image`, `identify_type`, `identify_number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Projukti Sheba', '+8801712377406', 1, 'def.png', NULL, NULL, NULL, 'support@projuktisheba.com', NULL, '$2y$10$SpXm3S8sE8AgqFWxGmTT2uFwY40Cn.KesmrAopI8auVqD0zwj6b5C', 'OlOMqK8cxNZmJdwXmWVtTuZbYiu65Ht4FtAjZt6sgJfRczbnzS7demDiEwAt', '2025-06-24 19:25:18', '2025-09-02 23:42:56', 1),
(2, 'Md Ajijul Islam', '+8801712377406', 7, '2025-09-02-68b72037b9faf.webp', '[]', NULL, NULL, 'demo@projuktisheba.com', NULL, '$2y$10$z57pLg9GbW1BfJnzqiRp1OBvJk764Y4VvR5vsLG/PcuzvoRl5uDF.', '5tPcVAiFoT9p3nvijCOhykgw1E8J5Sz8OYSwn0lWyq6PJytkV5ZBU8NrpvwB', '2025-09-02 23:49:59', '2025-09-02 23:49:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_access` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, NULL, NULL),
(7, 'demo', '[\"dashboard\",\"pos_management\",\"order_management\",\"product_management\",\"promotion_management\",\"support_section\",\"report\",\"blog_management\",\"user_section\"]', 1, '2025-09-02 23:46:08', '2025-09-03 17:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

DROP TABLE IF EXISTS `admin_wallets`;
CREATE TABLE IF NOT EXISTS `admin_wallets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `inhouse_earning` double NOT NULL DEFAULT '0',
  `withdrawn` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_earned` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT '0.00',
  `pending_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `total_tax_collected` double(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `admin_id`, `inhouse_earning`, `withdrawn`, `created_at`, `updated_at`, `commission_earned`, `delivery_charge_earned`, `pending_amount`, `total_tax_collected`) VALUES
(1, 1, 222099, 0, NULL, '2025-09-04 20:46:34', 0.00, 505.00, 0.00, 0.00),
(2, 1, 0, 0, '2025-06-24 19:25:18', '2025-06-24 19:25:18', 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet_histories`
--

DROP TABLE IF EXISTS `admin_wallet_histories`;
CREATE TABLE IF NOT EXISTS `admin_wallet_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `analytic_scripts`
--

DROP TABLE IF EXISTS `analytic_scripts`;
CREATE TABLE IF NOT EXISTS `analytic_scripts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script_id` text COLLATE utf8mb4_unicode_ci,
  `script` longtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
CREATE TABLE IF NOT EXISTS `attachments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `attachable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachable_id` bigint UNSIGNED NOT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `attachments_attachable_type_attachable_id_index` (`attachable_type`,`attachable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Color', '2025-09-06 21:34:35', '2025-09-06 21:34:46'),
(8, 'Size', '2025-09-06 21:35:00', '2025-09-06 21:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `published` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` bigint DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `banner_type`, `theme`, `published`, `created_at`, `updated_at`, `url`, `resource_type`, `resource_id`, `title`, `sub_title`, `button_text`, `background_color`) VALUES
(4, '2025-12-18-6943d722a3ca2.webp', 'Main Banner', 'default', 1, '2025-12-18 10:27:46', '2025-12-18 10:28:01', 'https://abc.com', 'product', 185, NULL, NULL, NULL, NULL),
(5, '2025-12-18-6943d9d28200a.webp', 'Bottom Banner', 'default', 1, '2025-12-18 10:39:14', '2025-12-18 10:39:26', 'https://notik.me', 'product', 185, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

DROP TABLE IF EXISTS `billing_addresses`;
CREATE TABLE IF NOT EXISTS `billing_addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `readable_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `writer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_storage_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `draft_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `draft_image_storage_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `publish_date` datetime NOT NULL DEFAULT '2025-02-13 14:40:55',
  `is_published` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_draft` tinyint NOT NULL DEFAULT '0',
  `draft_data` text COLLATE utf8mb4_unicode_ci,
  `click_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `click_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_categories_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_seos`
--

DROP TABLE IF EXISTS `blog_seos`;
CREATE TABLE IF NOT EXISTS `blog_seos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

DROP TABLE IF EXISTS `blog_translations`;
CREATE TABLE IF NOT EXISTS `blog_translations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `translation_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `is_draft` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `blog_translations_translation_id_index` (`translation_id`),
  KEY `blog_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `image_storage_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `image_alt_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `image_storage_type`, `image_alt_text`, `status`, `created_at`, `updated_at`) VALUES
(16, 'MSI', '2025-09-05-68bb209d6908d.webp', 'public', 'MSI', 1, '2025-09-06 03:40:45', '2025-09-06 03:40:45'),
(17, 'HP', '2025-09-05-68bb20ac5a110.webp', 'public', 'HP', 1, '2025-09-06 03:41:00', '2025-09-06 03:41:00'),
(18, 'ASUS', '2025-09-05-68bb21b1b5532.webp', 'public', 'ASUS', 1, '2025-09-06 03:45:21', '2025-09-06 03:45:21'),
(19, 'ACER', '2025-09-05-68bb21c1d6528.webp', 'public', 'ACER', 1, '2025-09-06 03:45:37', '2025-09-06 03:45:37'),
(20, 'DAHUA', '2025-09-05-68bb21d070114.webp', 'public', 'DAHUA', 1, '2025-09-06 03:45:52', '2025-09-06 03:45:52'),
(21, 'GIGABYTE', '2025-09-05-68bb21e048361.webp', 'public', 'GIGABYTE', 1, '2025-09-06 03:46:08', '2025-09-06 03:46:08'),
(22, 'HIKVISION', '2025-09-05-68bb21fb4856b.webp', 'public', 'HIKVISION', 1, '2025-09-06 03:46:35', '2025-09-06 03:46:35'),
(23, 'LENOVO', '2025-09-05-68bb2212c9e45.webp', 'public', 'LENOVO', 1, '2025-09-06 03:46:58', '2025-09-06 03:46:58'),
(24, 'INTEL', '2025-09-05-68bb2222e3ae1.webp', 'public', 'INTEL', 1, '2025-09-06 03:47:14', '2025-09-06 03:47:14'),
(25, 'BRAND', '2025-09-05-68bb22587af65.webp', 'public', 'BRAND', 1, '2025-09-06 03:48:08', '2025-09-06 03:48:08'),
(26, 'Non Brand', '2025-09-05-68bb226d106b2.webp', 'public', 'Non Brand', 1, '2025-09-06 03:48:29', '2025-09-06 03:48:29'),
(27, 'Product', '2025-09-05-68bb227b88953.webp', 'public', 'Product', 1, '2025-09-06 03:48:43', '2025-09-06 03:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `business_pages`
--

DROP TABLE IF EXISTS `business_pages`;
CREATE TABLE IF NOT EXISTS `business_pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_pages`
--

INSERT INTO `business_pages` (`id`, `title`, `slug`, `description`, `status`, `default_status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '<p>this is about us page. hello and hi from about page description..</p>', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(2, 'Terms And Conditions', 'terms-and-conditions', '<p>terms and conditions</p>', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(3, 'Privacy Policy', 'privacy-policy', '<p>my privacy policy</p>\r\n\r\n<p>&nbsp;</p>', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(4, 'Refund Policy', 'refund-policy', '', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(5, 'Return Policy', 'return-policy', '', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(6, 'Cancellation Policy', 'cancellation-policy', '', 1, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11'),
(7, 'Shipping Policy', 'shipping-policy', '', 0, 1, '2025-05-11 07:50:11', '2025-05-11 07:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

DROP TABLE IF EXISTS `business_settings`;
CREATE TABLE IF NOT EXISTS `business_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_default_currency', '2', '2020-10-11 07:43:44', '2025-09-03 22:18:27'),
(2, 'language', '[{\"id\":\"1\",\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true},{\"id\":2,\"name\":\"Bangla\",\"direction\":\"rtl\",\"code\":\"bd\",\"status\":0,\"default\":false}]', '2020-10-11 07:53:02', '2025-07-26 14:21:40'),
(3, 'mail_config', '{\"status\":\"1\",\"name\":\"EK Mart Valley\",\"host\":\"smtp.hostinger.com\",\"driver\":\"SMTP\",\"port\":\"465\",\"username\":\"no-reply@ekmartvalley.store\",\"email_id\":\"no-reply@ekmartvalley.store\",\"encryption\":\"SSL\",\"password\":\"EKmartvalley123@!?\"}', '2020-10-12 10:29:18', '2025-06-25 00:19:25'),
(4, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2025-09-03 22:18:27'),
(6, 'ssl_commerz_payment', '{\"status\":\"0\",\"environment\":\"sandbox\",\"store_id\":\"\",\"store_password\":\"\"}', '2020-11-09 08:36:51', '2023-01-10 05:51:56'),
(10, 'company_phone', '+8801712377406', NULL, '2025-09-03 22:18:26'),
(11, 'company_name', 'Lingerie Market', NULL, '2025-09-03 22:18:26'),
(12, 'company_web_logo', '{\"image_name\":\"2025-09-03-68b85d220f8c3.webp\",\"storage\":\"public\"}', NULL, '2025-09-04 01:22:10'),
(13, 'company_mobile_logo', '{\"image_name\":\"2025-06-25-685ae93e79eeb.webp\",\"storage\":\"public\"}', NULL, '2025-06-25 00:06:54'),
(16, 'sms_nexmo', '{\"status\":\"0\",\"nexmo_key\":\"custo5cc042f7abf4c\",\"nexmo_secret\":\"custo5cc042f7abf4c@ssl\"}', NULL, NULL),
(17, 'company_email', 'womensfashoin@gmail.com', NULL, '2025-09-03 22:18:26'),
(18, 'colors', '{\"primary\":\"#1976d2\",\"secondary\":\"#2e7d32\",\"panel-sidebar\":\"#000000\",\"primary_light\":null,\"app-primary\":null,\"app-secondary\":null}', '2020-10-11 13:53:02', '2025-12-18 11:29:41'),
(19, 'company_footer_logo', '{\"image_name\":\"2025-07-06-686a41b4d71dc.webp\",\"storage\":\"public\"}', NULL, '2025-07-06 15:28:20'),
(20, 'company_copyright_text', '© 2025 Projukti Sheba . All Rights Reserved.', NULL, '2025-09-03 22:18:27'),
(21, 'download_app_apple_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\"}', NULL, '2020-12-08 12:54:53'),
(22, 'download_app_google_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\"}', NULL, '2020-12-08 12:54:48'),
(23, 'company_fav_icon', '{\"image_name\":\"2025-07-06-686a4adce0aa8.webp\",\"storage\":\"public\"}', '2020-10-11 13:53:02', '2025-07-06 16:07:24'),
(24, 'fcm_topic', '', NULL, NULL),
(25, 'fcm_project_id', '', NULL, NULL),
(26, 'push_notification_key', 'Put your firebase server key here.', NULL, NULL),
(27, 'order_pending_message', '{\"status\":\"1\",\"message\":\"order pen message\"}', NULL, NULL),
(28, 'order_confirmation_msg', '{\"status\":\"1\",\"message\":\"Order con Message\"}', NULL, NULL),
(29, 'order_processing_message', '{\"status\":\"1\",\"message\":\"Order pro Message\"}', NULL, NULL),
(30, 'out_for_delivery_message', '{\"status\":\"1\",\"message\":\"Order ouut Message\"}', NULL, NULL),
(31, 'order_delivered_message', '{\"status\":\"1\",\"message\":\"Order del Message\"}', NULL, NULL),
(33, 'sales_commission', '0', NULL, '2025-09-03 22:18:27'),
(34, 'seller_registration', '1', NULL, '2025-06-25 00:08:21'),
(35, 'pnc_language', '[\"en\",\"bd\"]', NULL, '2025-06-25 00:11:28'),
(36, 'order_returned_message', '{\"status\":\"1\",\"message\":\"Order hh Message\"}', NULL, NULL),
(37, 'order_failed_message', '{\"status\":null,\"message\":\"Order fa Message\"}', NULL, NULL),
(40, 'delivery_boy_assign_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(41, 'delivery_boy_start_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(42, 'delivery_boy_delivered_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(43, 'terms_and_conditions', '', NULL, NULL),
(44, 'minimum_order_value', '1', NULL, NULL),
(48, 'currency_model', 'single_currency', NULL, NULL),
(49, 'social_login', '[{\"login_medium\":\"google\",\"client_id\":\"54515444vryhg65ht\",\"client_secret\":\"54515444vryhg65ht\",\"status\":1},{\"login_medium\":\"facebook\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":1}]', NULL, '2025-07-22 18:05:28'),
(50, 'digital_payment', '{\"status\":\"1\"}', NULL, '2025-09-03 22:18:27'),
(51, 'phone_verification', '0', NULL, NULL),
(52, 'email_verification', '0', NULL, NULL),
(53, 'order_verification', '0', NULL, '2025-07-29 17:53:35'),
(54, 'country_code', 'BD', NULL, '2025-09-03 22:18:26'),
(55, 'pagination_limit', '10', NULL, '2025-09-03 22:18:26'),
(56, 'shipping_method', 'inhouse_shipping', NULL, '2025-09-04 16:12:52'),
(59, 'forgot_password_verification', 'email', NULL, NULL),
(61, 'stock_limit', '10', NULL, NULL),
(64, 'announcement', '{\"status\":\"0\",\"color\":\"#000000\",\"text_color\":\"#ffffff\",\"announcement\":\"This is off day\"}', NULL, '2025-07-29 15:55:08'),
(65, 'fawry_pay', '{\"status\":0,\"merchant_code\":\"\",\"security_key\":\"\"}', NULL, '2022-01-18 09:46:30'),
(66, 'recaptcha', '{\"status\":0,\"site_key\":\"\",\"secret_key\":\"\"}', NULL, '2022-01-18 09:46:30'),
(67, 'seller_pos', '1', NULL, '2025-06-25 00:08:21'),
(70, 'refund_day_limit', '0', NULL, NULL),
(71, 'business_mode', 'single', NULL, '2025-09-03 22:18:27'),
(72, 'mail_config_sendgrid', '{\"status\":0,\"name\":\"\",\"host\":\"\",\"driver\":\"\",\"port\":\"\",\"username\":\"\",\"email_id\":\"\",\"encryption\":\"\",\"password\":\"\"}', NULL, '2025-06-25 00:19:25'),
(73, 'decimal_point_settings', '2', NULL, '2025-09-03 22:18:27'),
(74, 'shop_address', 'Projukti Sheba\r\nUCB Bank Building (4th Floor)\r\nTeribazar, Netrokona Sadar,\r\nNetrokona – Bangladesh', NULL, '2025-09-03 22:18:26'),
(75, 'billing_input_by_customer', '0', NULL, '2025-07-29 17:53:35'),
(76, 'wallet_status', '0', NULL, NULL),
(77, 'loyalty_point_status', '0', NULL, NULL),
(78, 'wallet_add_refund', '0', NULL, NULL),
(79, 'loyalty_point_exchange_rate', '0', NULL, NULL),
(80, 'loyalty_point_item_purchase_point', '0', NULL, NULL),
(81, 'loyalty_point_minimum_point', '0', NULL, NULL),
(82, 'minimum_order_limit', '1', NULL, NULL),
(83, 'product_brand', '1', NULL, NULL),
(84, 'digital_product', '1', NULL, NULL),
(85, 'delivery_boy_expected_delivery_date_message', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(86, 'order_canceled', '{\"status\":0,\"message\":\"\"}', NULL, NULL),
(90, 'offline_payment', '{\"status\":\"1\"}', NULL, '2025-09-03 22:18:27'),
(91, 'temporary_close', '{\"status\":0}', NULL, '2023-03-04 06:25:36'),
(92, 'vacation_add', '{\"status\":0,\"vacation_start_date\":null,\"vacation_end_date\":null,\"vacation_note\":null}', NULL, '2023-03-04 06:25:36'),
(93, 'cookie_setting', '{\"status\":\"1\",\"cookie_text\":\"We use cookies to improve your browsing experience, personalize content, and analyze our traffic. By\"}', NULL, '2025-09-03 22:18:27'),
(94, 'maximum_otp_hit', '0', NULL, '2023-06-13 13:04:49'),
(95, 'otp_resend_time', '0', NULL, '2023-06-13 13:04:49'),
(96, 'temporary_block_time', '0', NULL, '2023-06-13 13:04:49'),
(97, 'maximum_login_hit', '0', NULL, '2023-06-13 13:04:49'),
(98, 'temporary_login_block_time', '0', NULL, '2023-06-13 13:04:49'),
(104, 'apple_login', '[{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":1,\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\"}]', NULL, '2025-05-11 07:50:11'),
(105, 'ref_earning_status', '0', NULL, '2023-10-13 05:34:53'),
(106, 'ref_earning_exchange_rate', '0', NULL, '2023-10-13 05:34:53'),
(107, 'guest_checkout', '1', NULL, '2025-07-29 17:53:35'),
(108, 'minimum_order_amount', '0', NULL, '2023-10-13 11:34:53'),
(109, 'minimum_order_amount_by_seller', '0', NULL, '2025-06-25 00:08:21'),
(110, 'minimum_order_amount_status', '0', NULL, '2025-07-29 17:53:35'),
(111, 'admin_login_url', 'admin', NULL, '2025-09-02 23:36:24'),
(112, 'employee_login_url', 'demo', NULL, '2025-09-02 23:43:51'),
(113, 'free_delivery_status', '1', NULL, '2025-07-29 17:53:35'),
(114, 'free_delivery_responsibility', 'admin', NULL, '2025-07-29 17:53:35'),
(115, 'free_delivery_over_amount', '0', NULL, '2023-10-13 11:34:53'),
(116, 'free_delivery_over_amount_seller', '1', NULL, '2025-07-29 17:53:35'),
(117, 'add_funds_to_wallet', '0', NULL, '2023-10-13 11:34:53'),
(118, 'minimum_add_fund_amount', '0', NULL, '2023-10-13 11:34:53'),
(119, 'maximum_add_fund_amount', '0', NULL, '2023-10-13 11:34:53'),
(120, 'user_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(121, 'seller_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(122, 'delivery_man_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(123, 'whatsapp', '{\"status\":\"1\",\"phone\":\"+8800000000000\"}', NULL, '2025-07-29 17:29:23'),
(124, 'currency_symbol_position', 'right', NULL, '2025-09-03 22:18:26'),
(148, 'company_reliability', '[{\"item\":\"delivery_info\",\"title\":\"Fast Delivery all across the country\",\"image\":\"\",\"status\":1},{\"item\":\"safe_payment\",\"title\":\"Safe Payment\",\"image\":\"\",\"status\":1},{\"item\":\"return_policy\",\"title\":\"7 Days Return Policy\",\"image\":\"\",\"status\":1},{\"item\":\"authentic_product\",\"title\":\"100% Authentic Products\",\"image\":\"\",\"status\":1}]', NULL, NULL),
(149, 'react_setup', '{\"status\":0,\"react_license_code\":\"\",\"react_domain\":\"\",\"react_platform\":\"\"}', NULL, '2024-01-09 04:05:15'),
(150, 'app_activation', '{\"software_id\":\"\",\"is_active\":0}', NULL, '2024-01-09 04:05:15'),
(151, 'shop_banner', '{\"image_name\":\"2025-07-06-686a42907fda8.webp\",\"storage\":\"public\"}', NULL, '2025-07-06 15:32:00'),
(152, 'map_api_status', '0', NULL, '2025-07-28 16:34:57'),
(153, 'vendor_registration_header', '{\"title\":\"Vendor Registration\",\"sub_title\":\"Create your own store.Already have store?\",\"image\":\"\"}', NULL, NULL),
(154, 'vendor_registration_sell_with_us', '{\"title\":\"Why Sell With Us\",\"sub_title\":\"Boost your sales! Join us for a seamless, profitable experience with vast buyer reach and top-notch support. Sell smarter today!\",\"image\":\"\"}', NULL, NULL),
(155, 'download_vendor_app', '{\"title\":\"Download Free Vendor App\",\"sub_title\":\"Download our free seller app and start reaching millions of buyers on the go! Easy setup, manage listings, and boost sales anywhere.\",\"image\":null,\"download_google_app\":null,\"download_google_app_status\":0,\"download_apple_app\":null,\"download_apple_app_status\":0}', NULL, NULL),
(156, 'business_process_main_section', '{\"title\":\"3 Easy Steps To Start Selling\",\"sub_title\":\"Start selling quickly! Register, upload your products with detailed info and images, and reach millions of buyers instantly.\",\"image\":\"\"}', NULL, NULL),
(157, 'business_process_step', '[{\"title\":\"Get Registered\",\"description\":\"Sign up easily and create your seller account in just a few minutes. It fast and simple to get started.\",\"image\":\"\"},{\"title\":\"Upload Products\",\"description\":\"List your products with detailed descriptions and high-quality images to attract more buyers effortlessly.\",\"image\":\"\"},{\"title\":\"Start Selling\",\"description\":\"Go live and start reaching millions of potential buyers immediately. Watch your sales grow with our vast audience.\",\"image\":\"\"}]', NULL, NULL),
(158, 'brand_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(159, 'category_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(160, 'vendor_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(161, 'flash_deal_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(162, 'featured_product_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(163, 'feature_deal_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(164, 'new_arrival_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(165, 'top_vendor_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(166, 'category_wise_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(167, 'top_rated_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(168, 'best_selling_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(169, 'searched_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(170, 'vendor_product_list_priority', '', '2024-05-18 10:57:03', '2024-05-18 10:57:03'),
(171, 'storage_connection_type', 'public', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(172, 'google_search_console_code', '', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(173, 'bing_webmaster_code', '', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(174, 'baidu_webmaster_code', '', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(175, 'yandex_webmaster_code', '', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(176, 'firebase_otp_verification', '{\"status\":0,\"web_api_key\":\"\"}', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(177, 'maintenance_system_setup', '{\"user_app\":0,\"user_website\":0,\"vendor_app\":0,\"deliveryman_app\":0,\"vendor_panel\":0}', '2024-09-24 07:52:17', '2024-09-24 07:52:17'),
(178, 'maintenance_duration_setup', '{\"maintenance_duration\":\"until_change\",\"start_date\":null,\"end_date\":null}', NULL, NULL),
(179, 'maintenance_message_setup', '{\"business_number\":1,\"business_email\":1,\"maintenance_message\":\"We are Working On Something Special\",\"message_body\":\"We apologize for any inconvenience. For immediate assistance, please contact with our support team\"}', NULL, NULL),
(181, 'vendor_forgot_password_method', 'email', '2024-10-27 08:14:24', '2025-06-25 00:08:21'),
(182, 'deliveryman_forgot_password_method', 'phone', '2024-10-27 08:14:24', '2024-10-27 08:14:24'),
(183, 'stock_clearance_product_list_priority', '{\"custom_sorting_status\":0,\"sort_by\":\"latest_created\",\"out_of_stock_product\":\"hide\",\"temporary_close_sorting\":\"desc\"}', '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(184, 'stock_clearance_vendor_priority', '', '2025-02-13 08:41:39', '2025-02-13 08:41:39'),
(185, 'setup_guide_requirements_for_admin', '{\"general_setup\":true,\"shipping_method\":true,\"language_setup\":true,\"currency_setup\":true,\"customer_login\":true,\"google_map_apis\":true,\"notification_configuration\":true,\"digital_payment_setup\":true,\"offline_payment_setup\":true,\"category_setup\":true,\"brand_setup\":true,\"inhouse_shop_setup\":true,\"add_new_product\":true}', '2025-05-11 07:50:11', '2025-07-06 15:38:22'),
(186, 'refund-policy', '{\"status\":0,\"content\":\"\"}', '2025-06-24 19:25:18', '2025-06-24 19:25:18'),
(187, 'return-policy', '{\"status\":0,\"content\":\"\"}', '2025-06-24 19:25:18', '2025-06-24 19:25:18'),
(188, 'cancellation-policy', '{\"status\":0,\"content\":\"\"}', '2025-06-24 19:25:18', '2025-06-24 19:25:18'),
(189, 'download_app_apple_store', '{\"status\":0,\"link\":null}', NULL, '2025-12-18 11:29:41'),
(190, 'download_app_google_store', '{\"status\":0,\"link\":null}', NULL, '2025-12-18 11:29:41'),
(191, 'default_location', '{\"lat\":\"-33.8688\",\"lng\":\"151.2195\"}', NULL, '2025-09-03 22:18:26'),
(192, 'timezone', 'Asia/Dhaka', NULL, '2025-09-03 22:18:26'),
(193, 'loader_gif', '{\"image_name\":\"2025-12-18-6943ae3018e61.webp\",\"storage\":\"public\"}', NULL, '2025-12-18 07:33:04'),
(194, 'vendor_review_reply_status', '1', NULL, '2025-06-25 00:08:21'),
(195, 'company_web_logo_png', '{\"image_name\":\"2025-09-03-68b85d22211c2.png\",\"storage\":\"public\"}', NULL, '2025-09-04 01:22:10'),
(196, 'map_api_key', 'AIzaSyCf8ue0W4CSrZwgWPIyPAwEd_Uw9l9bqyw', NULL, '2025-07-28 16:34:56'),
(197, 'map_api_key_server', 'AIzaSyCf8ue0W4CSrZwgWPIyPAwEd_Uw9l9bqyw', NULL, '2025-07-28 16:34:56'),
(198, 'invoice_settings', '{\"business_identity_status\":0,\"invoice_logo_status\":0,\"invoice_logo_type\":\"default\",\"terms_and_condition\":null,\"business_identity\":null,\"business_identity_value\":null,\"image\":{\"image_name\":\"\",\"storage\":\"public\"}}', NULL, '2025-07-23 17:37:10'),
(200, 'shipping_method_status', '1', NULL, '2025-07-29 17:53:35'),
(201, 'delivery_country_restriction', '1', NULL, '2025-08-02 07:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `cart_group_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `digital_product_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choices` text COLLATE utf8mb4_unicode_ci,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `variant` text COLLATE utf8mb4_unicode_ci,
  `quantity` int NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '1',
  `tax` double NOT NULL DEFAULT '1',
  `discount` double NOT NULL DEFAULT '1',
  `tax_model` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'exclude',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `shipping_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `cart_group_id`, `product_id`, `product_type`, `digital_product_type`, `color`, `choices`, `variations`, `variant`, `quantity`, `price`, `tax`, `discount`, `tax_model`, `is_checked`, `slug`, `name`, `thumbnail`, `seller_id`, `seller_is`, `created_at`, `updated_at`, `shop_info`, `shipping_cost`, `shipping_type`, `is_guest`) VALUES
(77, 2138, 'guest-Vol5V-1757160954', 191, 'physical', NULL, NULL, '[]', '[]', '', 1, 15000, 0, 0, 'include', 1, 'ps61-standard-10500-h5HlKY', 'PS61 Standard- 10500', '2025-09-06-68bc253d4f16d.webp', 1, 'admin', '2025-09-06 22:15:54', '2025-09-06 22:15:54', 'Lingerie Market', 0.00, 'order_wise', 1),
(78, 2797, 'guest-S1REO-1757761670', 186, 'physical', NULL, NULL, '[]', '[]', '', 1, 10000, 0, 0, 'include', 1, 'ps150-standard-15250-5jrlpz', 'PS150 Standard- 15250', '2025-09-06-68bc22a90cdbc.webp', 1, 'admin', '2025-09-13 21:08:16', '2025-09-13 21:08:16', 'Lingerie Market', 0.00, 'order_wise', 1),
(81, 10, '10-yNse9-1766170887', 185, 'physical', NULL, NULL, '[]', '[]', '', 1, 12150, 0, 0, 'include', 0, 'ps-81-package-XUEXXW', 'PS 81 Package', '2025-09-06-68bc1d331f323.webp', 1, 'admin', '2025-12-19 19:03:05', '2025-12-19 19:21:10', 'Lingerie Market', 0.00, 'order_wise', 0),
(82, 10, '10-yNse9-1766170887', 192, 'physical', NULL, NULL, '[]', '[]', '', 1, 24000, 0, 0, 'include', 1, 'ps61-premium-11100-ojgPps', 'PS61 Premium- 11100', '2025-09-06-68bc259a42b5b.webp', 1, 'admin', '2025-12-19 19:21:10', '2025-12-19 19:21:10', 'Lingerie Market', 0.00, 'order_wise', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_shippings`
--

DROP TABLE IF EXISTS `cart_shippings`;
CREATE TABLE IF NOT EXISTS `cart_shippings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_group_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint DEFAULT '10',
  `shipping_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_shippings`
--

INSERT INTO `cart_shippings` (`id`, `cart_group_id`, `shipping_method_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(55, 'guest-lFhpZ-1756984471', 11, 100.00, '2025-09-04 21:14:34', '2025-09-04 21:14:34'),
(60, 'guest-On4AU-1757000718', 11, 100.00, '2025-09-05 01:48:09', '2025-09-05 01:48:09'),
(61, '9-8HioM-1757001962', 11, 100.00, '2025-09-05 02:06:03', '2025-09-05 02:06:03'),
(65, 'guest-S1REO-1757761670', 11, 100.00, '2025-09-13 21:08:16', '2025-09-13 21:08:16'),
(68, '10-yNse9-1766170887', 11, 100.00, '2025-12-19 19:11:18', '2025-12-19 19:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_storage_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `parent_id` int NOT NULL,
  `position` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `icon_storage_type`, `parent_id`, `position`, `created_at`, `updated_at`, `home_status`, `priority`) VALUES
(22, 'Desktop', 'desktop', '2025-09-05-68bb1a28c1fc6.webp', 'public', 0, 0, '2025-09-03 17:49:37', '2025-09-06 03:13:12', 1, 10),
(27, 'Laptop', 'laptop', '2025-09-05-68bb1a1be4dd6.webp', 'public', 0, 0, '2025-09-06 02:24:30', '2025-09-06 03:12:59', 1, 0),
(28, 'PC Accessories', 'pc-accessories', '2025-09-05-68bb1a0c5924a.webp', 'public', 0, 0, '2025-09-06 02:25:01', '2025-09-06 03:12:44', 1, 0),
(29, 'CC Camera', 'cc-camera', '2025-09-05-68bb1a00b5a71.webp', 'public', 0, 0, '2025-09-06 02:25:20', '2025-09-06 03:12:32', 1, 0),
(30, 'Mobile Accessories', 'mobile-accessories', '2025-09-05-68bb19f28a0aa.webp', 'public', 0, 0, '2025-09-06 02:26:02', '2025-09-06 03:12:18', 1, 0),
(31, 'Computer', 'computer', '2025-09-05-68bb1b42c2a27.webp', 'public', 0, 0, '2025-09-06 03:17:54', '2025-09-06 03:17:54', 1, NULL),
(32, 'Used Laptop', 'used-laptop', '2025-09-05-68bb1b64435b0.webp', 'public', 0, 0, '2025-09-06 03:18:28', '2025-09-06 03:18:28', 1, NULL),
(33, 'Mobile Accessories', 'mobile-accessories', '2025-09-05-68bb1b7ab9c5e.webp', 'public', 0, 0, '2025-09-06 03:18:50', '2025-09-06 03:18:50', 1, NULL),
(34, 'Laptop Accessories', 'laptop-accessories', '2025-09-05-68bb1b982acfa.webp', 'public', 0, 0, '2025-09-06 03:19:20', '2025-09-06 03:19:20', 1, NULL),
(35, 'CC Camera Accessories', 'cc-camera-accessories', '2025-09-05-68bb1bad5dba1.webp', 'public', 0, 0, '2025-09-06 03:19:41', '2025-09-06 03:19:41', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_shipping_costs`
--

DROP TABLE IF EXISTS `category_shipping_costs`;
CREATE TABLE IF NOT EXISTS `category_shipping_costs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_shipping_costs`
--

INSERT INTO `category_shipping_costs` (`id`, `seller_id`, `category_id`, `cost`, `multiply_qty`, `created_at`, `updated_at`) VALUES
(22, 0, 22, 0.00, 0, '2025-09-03 17:58:10', '2025-09-03 17:58:35'),
(23, 0, 23, 0.00, NULL, '2025-09-04 16:43:56', '2025-09-04 16:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `chattings`
--

DROP TABLE IF EXISTS `chattings`;
CREATE TABLE IF NOT EXISTS `chattings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sent_by_customer` tinyint(1) NOT NULL DEFAULT '0',
  `sent_by_seller` tinyint(1) NOT NULL DEFAULT '0',
  `sent_by_admin` tinyint(1) DEFAULT NULL,
  `sent_by_delivery_man` tinyint(1) DEFAULT NULL,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT '1',
  `seen_by_seller` tinyint(1) NOT NULL DEFAULT '1',
  `seen_by_admin` tinyint(1) DEFAULT NULL,
  `seen_by_delivery_man` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `notification_receiver` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin, seller, customer, deliveryman',
  `seen_notification` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_drafts`
--

DROP TABLE IF EXISTS `checkout_drafts`;
CREATE TABLE IF NOT EXISTS `checkout_drafts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `checkout_drafts`
--

INSERT INTO `checkout_drafts` (`id`, `session_id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(7, 'bMdfWX8xaUUn58Yg1L1fgCy6K7HpwY9sHCa6GOS8', 'Khalid Mahmud', 'dev.khalidmahmud01@gmail.com', '+88001704976505', 'cbgyuidsjguuyvchdbugyvb', 'canceled', '2025-09-03 19:58:24', '2025-09-03 19:58:41'),
(8, 'Btb4AMnEEMLf3C8MxYrDBllcUgj2RImvaPYhxh4h', 'Test', 'mamu@gmail.com', '+880156899728', 'Dhaka', 'ordered', '2025-09-04 06:04:08', '2025-09-04 06:09:27'),
(9, 'b6CvqljMTxeFmiIZIENe7RD6vzvXNa1phwmPP1xu', 'check', 'ajijul@gmail.com', '+8801742135093', 'sfsdfsfsadfsdf', 'draft', '2025-09-04 16:09:01', '2025-09-04 16:47:45'),
(10, 'OWecB7U4ZWYWX68Xp68ycVv6wULlpx8ZcoXStwX1', 'check', 'ajijulnet@gmail.com', '+880', 'netrakona', 'draft', '2025-09-04 16:52:17', '2025-09-04 16:52:43'),
(11, 'mfdHvjckceKAsoNa0I49yznMocPVIFeL3Vb9onVC', 'sdvsdsdv', NULL, '+8806736333434343373', 'sfsdfsdfsfdsf', 'draft', '2025-09-04 20:33:12', '2025-09-04 20:33:23'),
(13, 'GBnYm6zmeSDTcWNw8bHLhE8fUPKSXzAUGkN45h3N', 'sfgdsgsgs', NULL, '+88066', 'dfgdfgdfg', 'draft', '2025-09-05 01:39:31', '2025-09-05 01:39:34'),
(14, 'rtilcuaIEc1PDHKHZEwHlMUiJ2vUPnr1DrkRv5sL', 'sfsfsf', NULL, '+880566868686', 'fsrgfsgdgdfg', 'ordered', '2025-09-05 01:42:17', '2025-12-19 15:43:21'),
(15, 'Otx4w74606HeqjsEmtqc1okQQkh3wj2EV36Zvl0e', 'Eka', 'bikroysheba.info@gmail.com', '+8801712123456', 'Sadar netrakona', 'canceled', '2025-09-06 21:49:07', '2025-12-19 15:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `feedback` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile_number`, `subject`, `message`, `seen`, `feedback`, `created_at`, `updated_at`, `reply`) VALUES
(1, 'sdasdda', 'ssdfsdf@gmail.com', '+88045454', 'dbdfbd', 'dbdfbd', 0, '0', '2025-09-06 20:48:50', '2025-09-06 20:48:50', NULL),
(2, 'ccccc', 'ccc@gmail.com', '+8800145287527', 'gdfgdf', 'gdfgfdgdfgfdgdfgdfgdfgd', 0, '0', '2025-09-06 20:53:48', '2025-09-06 20:53:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `coupon_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_bearer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inhouse',
  `seller_id` bigint DEFAULT NULL COMMENT 'NULL=in-house, 0=all seller',
  `customer_id` bigint DEFAULT NULL COMMENT '0 = all customer',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `added_by`, `coupon_type`, `coupon_bearer`, `seller_id`, `customer_id`, `title`, `code`, `start_date`, `expire_date`, `min_purchase`, `max_discount`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`, `limit`) VALUES
(2, 'admin', 'discount_on_purchase', 'inhouse', NULL, 0, 'copun title', '29', '2025-09-04', '2025-09-06', 50.00, 10.00, 10.00, 'amount', 1, '2025-09-05 01:39:05', '2025-09-05 01:39:05', 10),
(3, 'admin', 'discount_on_purchase', 'seller', 0, 0, 'coupn title', '30', '2025-09-04', '2025-09-06', 50.00, 10.00, 10.00, 'amount', 1, '2025-09-05 01:41:33', '2025-09-05 01:41:33', 10);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `exchange_rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 'USD', '1', 1, NULL, '2021-06-27 13:39:37'),
(2, 'BDT', '৳', 'BDT', '84', 1, NULL, '2021-07-06 11:52:58'),
(3, 'Indian Rupi', '₹', 'INR', '60', 1, '2020-10-15 17:23:04', '2021-06-04 18:26:38'),
(4, 'Euro', '€', 'EUR', '100', 1, '2021-05-25 21:00:23', '2021-06-04 18:25:29'),
(5, 'YEN', '¥', 'JPY', '110', 1, '2021-06-10 22:08:31', '2021-06-26 14:21:10'),
(6, 'Ringgit', 'RM', 'MYR', '4.16', 1, '2021-07-03 11:08:33', '2021-07-03 11:10:37'),
(7, 'Rand', 'R', 'ZAR', '14.26', 1, '2021-07-03 11:12:38', '2021-07-03 11:12:42'),
(8, 'Dirham', '*', 'DIr', '1', 0, '2025-06-25 00:13:14', '2025-06-25 00:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallets`
--

DROP TABLE IF EXISTS `customer_wallets`;
CREATE TABLE IF NOT EXISTS `customer_wallets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `royality_points` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_histories`
--

DROP TABLE IF EXISTS `customer_wallet_histories`;
CREATE TABLE IF NOT EXISTS `customer_wallet_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `transaction_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `transaction_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_of_the_days`
--

DROP TABLE IF EXISTS `deal_of_the_days`;
CREATE TABLE IF NOT EXISTS `deal_of_the_days` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_notifications`
--

DROP TABLE IF EXISTS `deliveryman_notifications`;
CREATE TABLE IF NOT EXISTS `deliveryman_notifications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_wallets`
--

DROP TABLE IF EXISTS `deliveryman_wallets`;
CREATE TABLE IF NOT EXISTS `deliveryman_wallets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `current_balance` decimal(50,2) NOT NULL DEFAULT '0.00',
  `cash_in_hand` decimal(50,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` decimal(50,2) NOT NULL DEFAULT '0.00',
  `total_withdraw` decimal(50,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_country_codes`
--

DROP TABLE IF EXISTS `delivery_country_codes`;
CREATE TABLE IF NOT EXISTS `delivery_country_codes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_country_codes`
--

INSERT INTO `delivery_country_codes` (`id`, `country_code`, `created_at`, `updated_at`) VALUES
(2, 'BD', '2025-09-04 16:44:08', '2025-09-04 16:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

DROP TABLE IF EXISTS `delivery_histories`;
CREATE TABLE IF NOT EXISTS `delivery_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `deliveryman_id` bigint DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_transactions`
--

DROP TABLE IF EXISTS `delivery_man_transactions`;
CREATE TABLE IF NOT EXISTS `delivery_man_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` decimal(50,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(50,2) NOT NULL DEFAULT '0.00',
  `transaction_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

DROP TABLE IF EXISTS `delivery_men`;
CREATE TABLE IF NOT EXISTS `delivery_men` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_online` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zip_codes`
--

DROP TABLE IF EXISTS `delivery_zip_codes`;
CREATE TABLE IF NOT EXISTS `delivery_zip_codes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_authors`
--

DROP TABLE IF EXISTS `digital_product_authors`;
CREATE TABLE IF NOT EXISTS `digital_product_authors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_otp_verifications`
--

DROP TABLE IF EXISTS `digital_product_otp_verifications`;
CREATE TABLE IF NOT EXISTS `digital_product_otp_verifications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_details_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_publishing_houses`
--

DROP TABLE IF EXISTS `digital_product_publishing_houses`;
CREATE TABLE IF NOT EXISTS `digital_product_publishing_houses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `publishing_house_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_variations`
--

DROP TABLE IF EXISTS `digital_product_variations`;
CREATE TABLE IF NOT EXISTS `digital_product_variations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `variant_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(24,8) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `template_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_design_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `hide_field` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `button_content_status` tinyint NOT NULL DEFAULT '1',
  `product_information_status` tinyint NOT NULL DEFAULT '1',
  `order_information_status` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `template_name`, `user_type`, `template_design_name`, `title`, `body`, `banner_image`, `image`, `logo`, `button_name`, `button_url`, `footer_text`, `copyright_text`, `pages`, `social_media`, `hide_field`, `button_content_status`, `product_information_status`, `order_information_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'order-received', 'admin', 'order-received', 'New Order Received', '<p><b>Hi {adminName},</b></p><p>We have sent you this email to notify that you have a new order.You will be able to see your orders after login to your panel.</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"icon\",\"product_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(2, 'order-place', 'customer', 'order-place', 'Order # {orderId} Has Been Placed Successfully!', '<p><b>Hi {userName},</b></p><p>Your order from {shopName} has been placed to know the current status of your order click track order</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"icon\",\"product_information\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(3, 'registration-verification', 'customer', 'registration-verification', 'Registration Verification', '<p><b>Hi {userName},</b></p><p>Your verification code is</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(4, 'registration-from-pos', 'customer', 'registration-from-pos', 'Registration Complete', '<p><b>Hi {userName},</b></p><p>Thank you for joining  Shop.If you want to become a registered customer then reset your password below by using this email. Then you’ll be able to explore the website and app as a registered customer.</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_url\",\"button_content_status\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(5, 'account-block', 'customer', 'account-block', 'Account Blocked', '<div><b>Hi {userName},</b></div><div><b><br></b></div><div>Your account has been blocked due to suspicious activity by the admin .To resolve this issue please contact with admin or support center. We apologize for any inconvenience caused.</div><div><br></div><div>Meanwhile, click here to visit theshop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(6, 'account-unblock', 'customer', 'account-unblock', 'Account Unblocked', '<div><b>Hi {userName},</b></div><div><b><br></b></div><div>Your account has been successfully unblocked. We appreciate your cooperation in resolving this issue. Thank you for your understanding and patience. </div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(7, 'digital-product-download', 'customer', 'digital-product-download', 'Congratulations', '<p>Thank you for choosing  shop! Your digital product is ready for download. To download your product use your email <b>{emailId}</b> and order # {orderId} below.</b><br></p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(8, 'digital-product-otp', 'customer', 'digital-product-otp', 'Digital Product Download OTP Verification', '<p><b>Hi {userName},</b></p><p>Your verification code is</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(9, 'add-fund-to-wallet', 'customer', 'add-fund-to-wallet', 'Transaction Successful', '<div style=\"text-align: center; \">Amount successfully credited to your wallet .</div><div style=\"text-align: center; \"><br></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(10, 'registration', 'vendor', 'registration', 'Registration Complete', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Congratulation! Your registration request has been send to admin successfully! Please wait until admin reviewal. </div><div><br></div><div>meanwhile click here to visit the  Shop Website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(11, 'registration-approved', 'vendor', 'registration-approved', 'Registration Approved', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your registration request has been approved by admin. Now you can complete your store setting and start selling your product on  Shop. </div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(12, 'registration-denied', 'vendor', 'registration-denied', 'Registration Denied', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your registration request has been denied by admin. Please contact with admin or support center if you have any queries.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(13, 'account-suspended', 'vendor', 'account-suspended', 'Account Suspended', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your account access has been suspended by admin.From now you can access your app and panel again Please contact us for any queries we’re always happy to help.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(14, 'account-activation', 'vendor', 'account-activation', 'Account Activation', '<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your account suspension has been revoked by admin. From now you can access your app and panel again Please contact us for any queries we’re always happy to help.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(15, 'forgot-password', 'vendor', 'forgot-password', 'Change Password Request', '<p><b>Hi {vendorName},</b></p><p>Please click the link below to change your password.</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(16, 'order-received', 'vendor', 'order-received', 'New Order Received', '<p><b>Hi {vendorName},</b></p><p>We have sent you this email to notify that you have a new order.You will be able to see your orders after login to your panel.</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"icon\",\"product_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19'),
(17, 'reset-password-verification', 'delivery-man', 'reset-password-verification', 'OTP Verification For Password Reset', '<p><b>Hi {deliveryManName},</b></p><p>Your verification code is</p>', NULL, NULL, NULL, NULL, NULL, 'Please contact us for any queries, we are always happy to help.', 'Copyright 2025 . All right reserved.', NULL, NULL, '[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]', 1, 1, 1, 1, '2025-06-24 19:25:19', '2025-06-24 19:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

DROP TABLE IF EXISTS `emergency_contacts`;
CREATE TABLE IF NOT EXISTS `emergency_contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `error_logs`
--

DROP TABLE IF EXISTS `error_logs`;
CREATE TABLE IF NOT EXISTS `error_logs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_code` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_counts` int NOT NULL DEFAULT '0',
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1719 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `error_logs`
--

INSERT INTO `error_logs` (`id`, `status_code`, `url`, `hit_counts`, `redirect_url`, `redirect_status`, `created_at`, `updated_at`) VALUES
(654, 404, 'http://timefood.store/NEW', 8, NULL, NULL, '2025-09-04 02:00:41', '2025-09-13 05:36:45'),
(655, 404, 'http://timefood.store/wp-old', 1, NULL, NULL, '2025-09-04 02:02:13', '2025-09-04 02:02:13'),
(656, 404, 'http://timefood.store/2022', 1, NULL, NULL, '2025-09-04 02:05:06', '2025-09-04 02:05:06'),
(657, 404, 'http://timefood.store/2023', 1, NULL, NULL, '2025-09-04 02:06:04', '2025-09-04 02:06:04'),
(658, 404, 'http://127.0.0.1:8000/admin/login', 1, NULL, NULL, '2025-09-03 16:47:39', '2025-09-03 16:47:39'),
(659, 404, 'http://127.0.0.1:8000/.well-known/appspecific/com.chrome.devtools.json', 57, NULL, NULL, '2025-09-03 18:13:52', '2025-12-19 13:35:06'),
(660, 404, 'http://127.0.0.1:8000/assets/front-end/vendor/bootstrap/dist/js/bootstrap.bundle.min.js.map', 56, NULL, NULL, '2025-09-03 18:13:55', '2025-12-19 13:35:11'),
(661, 404, 'http://127.0.0.1:8000/assets/front-end/vendor/bs-custom-file-input/dist/bs-custom-file-input.min.js.map', 55, NULL, NULL, '2025-09-03 18:14:00', '2025-12-19 13:35:14'),
(662, 404, 'http://127.0.0.1:8000/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.js.map', 54, NULL, NULL, '2025-09-03 18:14:01', '2025-12-19 13:35:16'),
(663, 404, 'http://127.0.0.1:8000/js/lightbox.min.map', 54, NULL, NULL, '2025-09-03 18:14:03', '2025-12-19 13:35:18'),
(664, 404, 'http://127.0.0.1:8000/assets/front-end/vendor/drift-zoom/dist/Drift.min.js.map', 54, NULL, NULL, '2025-09-03 18:14:05', '2025-12-19 13:35:21'),
(665, 404, 'http://127.0.0.1:8000/assets/back-end/js/toastr.js.map', 88, NULL, NULL, '2025-09-03 18:14:07', '2025-12-19 13:28:52'),
(666, 404, 'http://127.0.0.1:8000/assets/front-end/vendor/firebase/firebase.js.map', 53, NULL, NULL, '2025-09-03 18:14:08', '2025-12-19 13:28:46'),
(667, 404, 'http://127.0.0.1:8000/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.css.map', 55, NULL, NULL, '2025-09-03 18:14:10', '2025-12-19 13:28:34'),
(668, 404, 'http://127.0.0.1:8000/assets/front-end/css/style.css.map', 49, NULL, NULL, '2025-09-03 18:14:12', '2025-12-19 13:28:29'),
(669, 404, 'http://127.0.0.1:8000/assets/front-end/css/theme.min.css.map', 50, NULL, NULL, '2025-09-03 18:14:13', '2025-12-19 13:28:32'),
(670, 404, 'http://timefood.store/gmo.php', 7, NULL, NULL, '2025-09-04 06:08:10', '2025-09-10 22:10:46'),
(671, 404, 'http://timefood.store/wp-', 5, NULL, NULL, '2025-09-04 06:08:10', '2025-09-09 13:23:40'),
(672, 404, 'http://timefood.store/as.php', 6, NULL, NULL, '2025-09-04 06:08:11', '2025-09-09 13:23:41'),
(673, 404, 'http://timefood.store/file2.php', 17, NULL, NULL, '2025-09-04 06:08:11', '2025-09-12 20:36:31'),
(674, 404, 'http://timefood.store/elp.php', 5, NULL, NULL, '2025-09-04 06:08:11', '2025-09-09 13:23:38'),
(675, 404, 'http://timefood.store/f35.php', 9, NULL, NULL, '2025-09-04 06:08:11', '2025-09-09 13:23:48'),
(676, 404, 'http://timefood.store/akc.php', 18, NULL, NULL, '2025-09-04 06:08:12', '2025-09-13 08:58:09'),
(677, 404, 'http://timefood.store/chosen.php', 19, NULL, NULL, '2025-09-04 06:08:12', '2025-09-12 20:36:30'),
(678, 404, 'http://timefood.store/classsmtps.php', 6, NULL, NULL, '2025-09-04 06:08:12', '2025-09-09 13:23:42'),
(679, 404, 'http://timefood.store/classwithtostring.php', 17, NULL, NULL, '2025-09-04 06:08:12', '2025-09-12 20:36:30'),
(680, 404, 'http://timefood.store/cong.php', 16, NULL, NULL, '2025-09-04 06:08:13', '2025-09-12 20:36:30'),
(681, 404, 'http://timefood.store/about.php', 19, NULL, NULL, '2025-09-04 06:08:13', '2025-09-12 20:36:27'),
(682, 404, 'http://timefood.store/admin.php', 20, NULL, NULL, '2025-09-04 06:08:13', '2025-09-12 20:36:27'),
(683, 404, 'http://timefood.store/file.php', 23, NULL, NULL, '2025-09-04 06:08:13', '2025-09-13 00:53:50'),
(684, 404, 'http://timefood.store/k.php', 6, NULL, NULL, '2025-09-04 06:08:14', '2025-09-09 13:23:39'),
(685, 404, 'http://timefood.store/browse.php', 5, NULL, NULL, '2025-09-04 06:08:14', '2025-09-09 13:23:43'),
(686, 404, 'http://timefood.store/wp-signup.php', 6, NULL, NULL, '2025-09-04 06:08:14', '2025-09-09 13:23:43'),
(687, 404, 'http://timefood.store/al.php', 5, NULL, NULL, '2025-09-04 06:08:14', '2025-09-09 13:23:40'),
(688, 404, 'http://timefood.store/assets/atomlib.php', 5, NULL, NULL, '2025-09-04 06:08:15', '2025-09-09 13:23:44'),
(689, 404, 'http://timefood.store/atomlib.php', 16, NULL, NULL, '2025-09-04 06:08:15', '2025-09-12 20:36:28'),
(690, 404, 'http://timefood.store/autoload_classmap.php', 20, NULL, NULL, '2025-09-04 06:08:15', '2025-09-12 20:36:29'),
(691, 404, 'http://timefood.store/autoload_classmap/function.php', 16, NULL, NULL, '2025-09-04 06:08:15', '2025-09-12 20:36:29'),
(692, 404, 'http://timefood.store/backup.php', 5, NULL, NULL, '2025-09-04 06:08:16', '2025-09-09 13:23:45'),
(693, 404, 'http://timefood.store/cache.php', 5, NULL, NULL, '2025-09-04 06:08:16', '2025-09-09 13:23:46'),
(694, 404, 'http://timefood.store/cc.php', 4, NULL, NULL, '2025-09-04 06:08:17', '2025-09-09 13:23:46'),
(695, 404, 'http://timefood.store/fw.php', 5, NULL, NULL, '2025-09-04 06:08:17', '2025-09-09 13:23:46'),
(696, 404, 'http://timefood.store/gebase.php', 4, NULL, NULL, '2025-09-04 06:08:17', '2025-09-09 13:23:46'),
(697, 404, 'http://timefood.store/makeasmtp.php', 16, NULL, NULL, '2025-09-04 06:08:17', '2025-09-12 20:36:34'),
(698, 404, 'http://timefood.store/doc.php', 4, NULL, NULL, '2025-09-04 06:08:18', '2025-09-09 13:23:47'),
(699, 404, 'http://timefood.store/e.php', 4, NULL, NULL, '2025-09-04 06:08:18', '2025-09-09 13:23:47'),
(700, 404, 'http://timefood.store/fi2.php', 4, NULL, NULL, '2025-09-04 06:08:19', '2025-09-09 13:23:48'),
(701, 404, 'http://timefood.store/filemanager.php', 4, NULL, NULL, '2025-09-04 06:08:19', '2025-09-09 13:23:48'),
(702, 404, 'http://timefood.store/go.php', 4, NULL, NULL, '2025-09-04 06:08:19', '2025-09-09 13:23:48'),
(703, 404, 'http://timefood.store/inputs.php', 9, NULL, NULL, '2025-09-04 06:08:19', '2025-09-09 16:30:06'),
(704, 404, 'http://timefood.store/alfa.php', 18, NULL, NULL, '2025-09-04 06:08:20', '2025-09-12 20:36:28'),
(705, 404, 'http://timefood.store/ioxi-o.php', 19, NULL, NULL, '2025-09-04 06:08:20', '2025-09-13 00:53:49'),
(706, 404, 'http://timefood.store/item.php', 4, NULL, NULL, '2025-09-04 06:08:20', '2025-09-09 13:23:50'),
(707, 404, 'http://timefood.store/jp.php', 4, NULL, NULL, '2025-09-04 06:08:20', '2025-09-09 13:23:50'),
(708, 404, 'http://timefood.store/load.php', 5, NULL, NULL, '2025-09-04 06:08:21', '2025-09-09 13:23:50'),
(709, 404, 'http://timefood.store/1.php', 8, NULL, NULL, '2025-09-04 06:08:21', '2025-09-09 16:30:07'),
(710, 404, 'http://timefood.store/13.php', 5, NULL, NULL, '2025-09-04 06:08:21', '2025-09-10 22:11:05'),
(711, 404, 'http://timefood.store/lv.php', 4, NULL, NULL, '2025-09-04 06:08:22', '2025-09-09 13:23:51'),
(712, 404, 'http://timefood.store/default.php', 5, NULL, NULL, '2025-09-04 06:08:22', '2025-09-09 13:23:51'),
(713, 404, 'http://timefood.store/manager.php', 5, NULL, NULL, '2025-09-04 06:08:22', '2025-09-09 13:23:52'),
(714, 404, 'http://timefood.store/mar.php', 5, NULL, NULL, '2025-09-04 06:08:22', '2025-09-09 13:23:52'),
(715, 404, 'http://timefood.store/moon.php', 5, NULL, NULL, '2025-09-04 06:08:23', '2025-09-09 13:23:52'),
(716, 404, 'http://timefood.store/new.php', 4, NULL, NULL, '2025-09-04 06:08:23', '2025-09-09 13:23:52'),
(717, 404, 'http://timefood.store/NewFile.php', 4, NULL, NULL, '2025-09-04 06:08:23', '2025-09-09 13:23:53'),
(718, 404, 'http://timefood.store/past.php', 4, NULL, NULL, '2025-09-04 06:08:24', '2025-09-09 13:23:53'),
(719, 404, 'http://timefood.store/randkeyword.PhP7', 4, NULL, NULL, '2025-09-04 06:08:24', '2025-09-09 13:23:53'),
(720, 404, 'http://timefood.store/shell.php', 5, NULL, NULL, '2025-09-04 06:08:24', '2025-09-09 13:23:53'),
(721, 404, 'http://timefood.store/simple.php', 5, NULL, NULL, '2025-09-04 06:08:24', '2025-09-09 13:23:54'),
(722, 404, 'http://timefood.store/wp-trackback.php', 5, NULL, NULL, '2025-09-04 06:08:34', '2025-09-09 13:24:04'),
(723, 404, 'http://timefood.store/updates.php', 7, NULL, NULL, '2025-09-04 06:08:34', '2025-09-09 13:24:04'),
(724, 404, 'http://timefood.store/403.php', 5, NULL, NULL, '2025-09-04 06:08:35', '2025-09-09 13:24:04'),
(725, 404, 'http://timefood.store/x.php', 4, NULL, NULL, '2025-09-04 06:08:35', '2025-09-09 13:24:04'),
(726, 404, 'http://timefood.store/y.php', 5, NULL, NULL, '2025-09-04 06:08:35', '2025-09-09 13:24:05'),
(727, 404, 'http://timefood.store/wp-content/autoload_classmap.php', 8, NULL, NULL, '2025-09-04 06:08:35', '2025-09-09 13:24:06'),
(728, 404, 'http://timefood.store/wp-includes/ID3/index.php', 5, NULL, NULL, '2025-09-04 06:08:36', '2025-09-09 16:29:35'),
(729, 404, 'http://timefood.store/wp-admin/function.php', 4, NULL, NULL, '2025-09-04 06:08:36', '2025-09-09 13:24:06'),
(730, 404, 'http://timefood.store/.well-known/acme-challenge/muse.php', 4, NULL, NULL, '2025-09-04 06:08:36', '2025-09-09 13:24:06'),
(731, 404, 'http://timefood.store/wp-file.php', 4, NULL, NULL, '2025-09-04 06:08:37', '2025-09-09 13:23:39'),
(732, 404, 'http://timefood.store/wp-content/index.php', 20, NULL, NULL, '2025-09-04 06:08:37', '2025-09-12 20:36:37'),
(733, 404, 'http://timefood.store/wp-content/themes/about.php', 11, NULL, NULL, '2025-09-04 06:08:38', '2025-09-09 16:30:33'),
(734, 404, 'http://timefood.store/wp-includes/Text/autoload_classmap.php', 4, NULL, NULL, '2025-09-04 06:08:38', '2025-09-09 13:24:07'),
(735, 404, 'http://timefood.store/templates/protostar/index.php', 4, NULL, NULL, '2025-09-04 06:08:38', '2025-09-09 13:24:08'),
(736, 404, 'http://timefood.store/wp-includes/pomo/wp-conflg.php', 4, NULL, NULL, '2025-09-04 06:08:38', '2025-09-09 13:24:08'),
(737, 404, 'http://timefood.store/wp-admin/autoload_classmap.php', 5, NULL, NULL, '2025-09-04 06:08:39', '2025-09-09 13:24:08'),
(738, 404, 'http://timefood.store/wp-includes/assets/autoload_classmap.php', 4, NULL, NULL, '2025-09-04 06:08:39', '2025-09-09 13:24:09'),
(739, 404, 'http://timefood.store/wp-includes/style-engine/about.php', 5, NULL, NULL, '2025-09-04 06:08:40', '2025-09-09 13:24:09'),
(740, 404, 'http://timefood.store/wp-includes/assets/index.php', 5, NULL, NULL, '2025-09-04 06:08:40', '2025-09-09 16:30:12'),
(741, 404, 'http://timefood.store/wp-includes/bk/index.php', 4, NULL, NULL, '2025-09-04 06:08:40', '2025-09-09 13:24:09'),
(742, 404, 'http://timefood.store/wp-includes/blocks/shortcode/index.php', 4, NULL, NULL, '2025-09-04 06:08:40', '2025-09-09 13:24:10'),
(743, 404, 'http://timefood.store/wp-includes/css/dist/widgets/about.php', 4, NULL, NULL, '2025-09-04 06:08:41', '2025-09-09 13:24:10'),
(744, 404, 'http://timefood.store/wp-includes/fonts/about.php', 4, NULL, NULL, '2025-09-04 06:08:41', '2025-09-09 13:24:10'),
(745, 404, 'http://timefood.store/wp-includes/sitemaps/autoload_classmap.php', 4, NULL, NULL, '2025-09-04 06:08:41', '2025-09-09 13:24:10'),
(746, 404, 'http://timefood.store/wp-admin/css/colors/blue/atomlib.php', 5, NULL, NULL, '2025-09-04 06:08:41', '2025-09-09 16:29:40'),
(747, 404, 'http://timefood.store/wp-admin/js/autoload_classmap.php', 4, NULL, NULL, '2025-09-04 06:08:42', '2025-09-09 13:24:11'),
(748, 404, 'http://timefood.store/wp-admin/includes/about.php', 5, NULL, NULL, '2025-09-04 06:08:42', '2025-09-09 13:24:11'),
(749, 404, 'http://timefood.store/wp-includes/js/jcrop/Jcrop.php', 4, NULL, NULL, '2025-09-04 06:08:42', '2025-09-09 13:24:12'),
(750, 404, 'http://timefood.store/wp-admin/js/index.php', 15, NULL, NULL, '2025-09-04 06:08:43', '2025-09-12 20:36:37'),
(751, 404, 'http://timefood.store/wp-admin/js/wp-login.php', 4, NULL, NULL, '2025-09-04 06:08:43', '2025-09-09 13:24:12'),
(752, 404, 'http://timefood.store/wp-admin/maint/index.php', 4, NULL, NULL, '2025-09-04 06:08:43', '2025-09-09 13:24:12'),
(753, 404, 'http://timefood.store/wp-content/plugins/WordPressCore/cong.php', 4, NULL, NULL, '2025-09-04 06:08:43', '2025-09-09 13:24:13'),
(754, 404, 'http://timefood.store/wp-content/admin.php', 5, NULL, NULL, '2025-09-04 06:08:44', '2025-09-09 16:30:11'),
(755, 404, 'http://timefood.store/wp-content/plugins/index.php', 5, NULL, NULL, '2025-09-04 06:08:44', '2025-09-09 13:24:13'),
(756, 404, 'http://timefood.store/wp-content/plugins/wp-conflg.php', 5, NULL, NULL, '2025-09-04 06:08:44', '2025-09-09 13:24:14'),
(757, 404, 'http://timefood.store/wp-content/themes/admin.php', 4, NULL, NULL, '2025-09-04 06:08:45', '2025-09-09 13:24:14'),
(758, 404, 'http://timefood.store/wp-content/themes/index.php', 4, NULL, NULL, '2025-09-04 06:08:45', '2025-09-09 13:24:15'),
(759, 404, 'http://timefood.store/wp-content/themes/themes.php', 4, NULL, NULL, '2025-09-04 06:08:46', '2025-09-09 13:24:15'),
(760, 404, 'http://timefood.store/wp-content/themes/twentytwentytwo/index.php', 4, NULL, NULL, '2025-09-04 06:08:46', '2025-09-09 13:24:15'),
(761, 404, 'http://timefood.store/wp-content/upgrade/index.php', 5, NULL, NULL, '2025-09-04 06:08:46', '2025-09-09 13:24:16'),
(762, 404, 'http://timefood.store/wp-content/uploads/de_fb_uploads/b.php', 4, NULL, NULL, '2025-09-04 06:08:46', '2025-09-09 13:24:16'),
(763, 404, 'http://timefood.store/wp-content/uploads/index.php', 4, NULL, NULL, '2025-09-04 06:08:47', '2025-09-09 13:24:16'),
(764, 404, 'http://timefood.store/wp-includes/SimplePie/autoload_classmap.php', 4, NULL, NULL, '2025-09-04 06:08:47', '2025-09-09 13:24:16'),
(765, 404, 'http://timefood.store/wp-includes/IXR/admin.php', 4, NULL, NULL, '2025-09-04 06:08:47', '2025-09-09 13:24:17'),
(766, 404, 'http://timefood.store/wp-includes/404.php', 4, NULL, NULL, '2025-09-04 06:08:48', '2025-09-09 13:24:17'),
(767, 404, 'http://timefood.store/admin/uploads', 5, NULL, NULL, '2025-09-04 06:08:48', '2025-09-09 16:29:44'),
(768, 404, 'http://timefood.store/.tmb', 4, NULL, NULL, '2025-09-04 06:08:48', '2025-09-09 13:24:18'),
(769, 404, 'http://timefood.store/shop', 4, NULL, NULL, '2025-09-04 06:08:49', '2025-09-09 13:24:19'),
(770, 404, 'http://timefood.store/wp-admin', 16, NULL, NULL, '2025-09-04 06:08:49', '2025-09-12 20:36:36'),
(771, 404, 'http://timefood.store/wp-admin/css', 5, NULL, NULL, '2025-09-04 06:08:50', '2025-09-09 16:29:42'),
(772, 404, 'http://timefood.store/wp-admin/css/colors/ectoplasm', 4, NULL, NULL, '2025-09-04 06:08:50', '2025-09-09 13:24:20'),
(773, 404, 'http://timefood.store/wp-admin/css/colors/midnight', 5, NULL, NULL, '2025-09-04 06:08:51', '2025-09-09 16:30:01'),
(774, 404, 'http://timefood.store/wp-admin/js', 5, NULL, NULL, '2025-09-04 06:08:51', '2025-09-09 16:30:28'),
(775, 404, 'http://timefood.store/wp-admin/js/widgets', 5, NULL, NULL, '2025-09-04 06:08:52', '2025-09-09 16:30:37'),
(776, 404, 'http://timefood.store/wp-admin/maint', 4, NULL, NULL, '2025-09-04 06:08:52', '2025-09-09 13:24:22'),
(777, 404, 'http://timefood.store/wp-content', 5, NULL, NULL, '2025-09-04 06:08:53', '2025-09-09 16:30:37'),
(778, 404, 'http://timefood.store/wp-content/mu-plugins-old', 4, NULL, NULL, '2025-09-04 06:08:53', '2025-09-09 13:24:23'),
(779, 404, 'http://timefood.store/wp-content/themes', 5, NULL, NULL, '2025-09-04 06:08:54', '2025-09-09 16:30:14'),
(780, 404, 'http://timefood.store/wp-content/uploads', 5, NULL, NULL, '2025-09-04 06:08:54', '2025-09-09 16:30:30'),
(781, 404, 'http://timefood.store/wp-includes', 5, NULL, NULL, '2025-09-04 06:08:54', '2025-09-09 16:29:52'),
(782, 404, 'http://timefood.store/wp-includes/ID3', 6, NULL, NULL, '2025-09-04 06:08:55', '2025-09-09 16:29:45'),
(783, 404, 'http://timefood.store/wp-includes/IXR', 4, NULL, NULL, '2025-09-04 06:08:55', '2025-09-09 13:24:25'),
(784, 404, 'http://timefood.store/wp-includes/PHPMailer', 4, NULL, NULL, '2025-09-04 06:08:56', '2025-09-09 13:24:25'),
(785, 404, 'http://timefood.store/wp-includes/Requests/Cookie', 4, NULL, NULL, '2025-09-04 06:08:56', '2025-09-09 13:24:26'),
(786, 404, 'http://timefood.store/wp-includes/Requests/Response', 4, NULL, NULL, '2025-09-04 06:08:57', '2025-09-09 13:24:26'),
(787, 404, 'http://timefood.store/wp-includes/SimplePie', 5, NULL, NULL, '2025-09-04 06:08:57', '2025-09-09 16:29:59'),
(788, 404, 'http://timefood.store/wp-includes/Text/Diff', 4, NULL, NULL, '2025-09-04 06:08:58', '2025-09-09 13:24:27'),
(789, 404, 'http://timefood.store/wp-includes/Text/Diff/Renderer', 4, NULL, NULL, '2025-09-04 06:08:58', '2025-09-09 13:24:28'),
(790, 404, 'http://timefood.store/wp-includes/assets', 4, NULL, NULL, '2025-09-04 06:08:59', '2025-09-09 13:24:28'),
(791, 404, 'http://timefood.store/wp-includes/block-bindings', 4, NULL, NULL, '2025-09-04 06:08:59', '2025-09-09 13:24:29'),
(792, 404, 'http://timefood.store/wp-includes/certificates', 5, NULL, NULL, '2025-09-04 06:09:00', '2025-09-09 16:30:04'),
(793, 404, 'http://timefood.store/wp-includes/css', 5, NULL, NULL, '2025-09-04 06:09:00', '2025-09-09 16:29:39'),
(794, 404, 'http://timefood.store/wp-includes/customize', 5, NULL, NULL, '2025-09-04 06:09:00', '2025-09-09 16:29:39'),
(795, 404, 'http://timefood.store/wp-includes/html-api', 5, NULL, NULL, '2025-09-04 06:09:01', '2025-09-09 16:30:34'),
(796, 404, 'http://timefood.store/wp-includes/images', 5, NULL, NULL, '2025-09-04 06:09:01', '2025-09-09 16:30:31'),
(797, 404, 'http://timefood.store/wp-includes/images/smilies', 4, NULL, NULL, '2025-09-04 06:09:02', '2025-09-09 13:24:31'),
(798, 404, 'http://timefood.store/wp-includes/rest-api', 4, NULL, NULL, '2025-09-04 06:09:02', '2025-09-09 13:24:32'),
(799, 404, 'http://timefood.store/wp-includes/rest-api/endpoints', 4, NULL, NULL, '2025-09-04 06:09:03', '2025-09-09 13:24:32'),
(800, 404, 'http://timefood.store/wp-includes/rest-api/fields', 4, NULL, NULL, '2025-09-04 06:09:03', '2025-09-09 13:24:33'),
(801, 404, 'http://timefood.store/wp-includes/rest-api/search', 4, NULL, NULL, '2025-09-04 06:09:04', '2025-09-09 13:24:33'),
(802, 404, 'http://timefood.store/wp-includes/sitemaps', 4, NULL, NULL, '2025-09-04 06:09:04', '2025-09-09 13:24:34'),
(803, 404, 'http://timefood.store/wp-includes/sitemaps/providers', 9, NULL, NULL, '2025-09-04 06:09:05', '2025-09-11 17:01:52'),
(804, 404, 'http://timefood.store/wp-includes/sodium_compat', 4, NULL, NULL, '2025-09-04 06:09:05', '2025-09-09 13:24:35'),
(805, 404, 'http://timefood.store/wp-includes/sodium_compat/src', 4, NULL, NULL, '2025-09-04 06:09:06', '2025-09-09 13:24:35'),
(806, 404, 'http://timefood.store/wp-includes/style-engine', 4, NULL, NULL, '2025-09-04 06:09:06', '2025-09-09 13:24:36'),
(807, 404, 'http://timefood.store/phpinfo.php', 1, NULL, NULL, '2025-09-04 07:37:35', '2025-09-04 07:37:35'),
(808, 404, 'http://timefood.store/test.php', 1, NULL, NULL, '2025-09-04 07:37:35', '2025-09-04 07:37:35'),
(809, 404, 'http://timefood.store/_profiler/phpinfo', 1, NULL, NULL, '2025-09-04 07:37:36', '2025-09-04 07:37:36'),
(810, 404, 'http://timefood.store/.aws/credentials', 1, NULL, NULL, '2025-09-04 07:37:39', '2025-09-04 07:37:39'),
(811, 404, 'http://timefood.store/wordpress', 7, NULL, NULL, '2025-09-04 10:17:58', '2025-09-13 05:36:46'),
(812, 404, 'http://timefood.store/wp', 7, NULL, NULL, '2025-09-04 10:17:59', '2025-09-13 05:36:46'),
(813, 404, 'http://timefood.store/bc', 7, NULL, NULL, '2025-09-04 10:17:59', '2025-09-13 05:36:47'),
(814, 404, 'http://timefood.store/bk', 7, NULL, NULL, '2025-09-04 10:17:59', '2025-09-13 05:36:45'),
(815, 404, 'http://timefood.store/backup', 7, NULL, NULL, '2025-09-04 10:18:00', '2025-09-13 05:36:44'),
(816, 404, 'http://timefood.store/old', 7, NULL, NULL, '2025-09-04 10:18:00', '2025-09-13 05:36:45'),
(817, 404, 'http://timefood.store/main', 7, NULL, NULL, '2025-09-04 10:18:01', '2025-09-13 05:36:44'),
(818, 404, 'http://timefood.store/home', 7, NULL, NULL, '2025-09-04 10:18:01', '2025-09-13 05:36:46'),
(819, 404, 'https://www.timefood.store/phpinfo.php', 2, NULL, NULL, '2025-09-04 11:33:02', '2025-09-07 23:48:08'),
(820, 404, 'https://www.timefood.store/phpinfo', 2, NULL, NULL, '2025-09-04 11:33:04', '2025-09-07 23:48:08'),
(821, 404, 'https://www.timefood.store/php_info.php', 2, NULL, NULL, '2025-09-04 11:33:04', '2025-09-07 23:48:09'),
(822, 404, 'https://www.timefood.store/_profiler/phpinfo', 2, NULL, NULL, '2025-09-04 11:33:05', '2025-09-07 23:48:10'),
(823, 404, 'https://www.timefood.store/info', 2, NULL, NULL, '2025-09-04 11:33:07', '2025-09-07 23:48:12'),
(824, 404, 'http://timefood.store/dropdown.php', 6, NULL, NULL, '2025-09-04 14:05:46', '2025-09-09 13:23:42'),
(825, 404, 'http://timefood.store/aa.php', 17, NULL, NULL, '2025-09-04 16:19:01', '2025-09-12 20:36:26'),
(826, 404, 'http://timefood.store/asasx.php', 11, NULL, NULL, '2025-09-04 16:19:02', '2025-09-12 20:36:28'),
(827, 404, 'http://timefood.store/buy.php', 11, NULL, NULL, '2025-09-04 16:19:03', '2025-09-12 20:36:30'),
(828, 404, 'http://timefood.store/edit.php', 15, NULL, NULL, '2025-09-04 16:19:04', '2025-09-12 20:36:31'),
(829, 404, 'http://timefood.store/flower.php', 15, NULL, NULL, '2025-09-04 16:19:05', '2025-09-12 20:36:32'),
(830, 404, 'http://timefood.store/gecko.php', 9, NULL, NULL, '2025-09-04 16:19:05', '2025-09-12 20:36:32'),
(831, 404, 'http://timefood.store/goat.php', 11, NULL, NULL, '2025-09-04 16:19:06', '2025-09-12 20:36:32'),
(832, 404, 'http://timefood.store/goods.php', 14, NULL, NULL, '2025-09-04 16:19:06', '2025-09-12 20:36:33'),
(833, 404, 'http://timefood.store/lock360.php', 13, NULL, NULL, '2025-09-04 16:19:06', '2025-09-12 20:36:33'),
(834, 404, 'http://timefood.store/mm.php', 11, NULL, NULL, '2025-09-04 16:19:07', '2025-09-12 20:36:34'),
(835, 404, 'http://timefood.store/nc4.php', 12, NULL, NULL, '2025-09-04 16:19:07', '2025-09-13 00:53:48'),
(836, 404, 'http://timefood.store/tinyfilemanager.php', 11, NULL, NULL, '2025-09-04 16:19:07', '2025-09-12 20:36:35'),
(837, 404, 'http://timefood.store/users.php', 11, NULL, NULL, '2025-09-04 16:19:08', '2025-09-12 20:36:35'),
(838, 404, 'http://timefood.store/w.php', 11, NULL, NULL, '2025-09-04 16:19:08', '2025-09-12 20:36:35'),
(839, 404, 'http://timefood.store/wp-admin/css/colors/blue/index.php', 12, NULL, NULL, '2025-09-04 16:19:09', '2025-09-12 20:36:36'),
(840, 404, 'http://timefood.store/wp-admin/images/moon.php', 11, NULL, NULL, '2025-09-04 16:19:09', '2025-09-12 20:36:36'),
(841, 404, 'http://timefood.store/wp-admin/setup-config.php', 12, NULL, NULL, '2025-09-04 16:19:09', '2025-09-12 20:36:37'),
(842, 404, 'http://timefood.store/wp-api.php', 11, NULL, NULL, '2025-09-04 16:19:10', '2025-09-12 20:36:37'),
(843, 404, 'http://timefood.store/wp-content/wp-conflg.php', 11, NULL, NULL, '2025-09-04 16:19:10', '2025-09-12 20:36:38'),
(844, 404, 'http://timefood.store/wp-includes/IXR/autoload_classmap.php', 11, NULL, NULL, '2025-09-04 16:19:10', '2025-09-12 20:36:38'),
(845, 404, 'http://timefood.store/wp-includes/fonts/admin.php', 11, NULL, NULL, '2025-09-04 16:19:11', '2025-09-12 20:36:38'),
(846, 404, 'http://timefood.store/wp-includes/fonts/index.php', 12, NULL, NULL, '2025-09-04 16:19:11', '2025-09-12 20:36:39'),
(847, 404, 'http://timefood.store/wp-setup.php', 11, NULL, NULL, '2025-09-04 16:19:11', '2025-09-12 20:36:39'),
(848, 404, 'http://timefood.store/wp.php', 13, NULL, NULL, '2025-09-04 16:19:11', '2025-09-12 20:36:39'),
(849, 404, 'http://timefood.store/wsa.php', 12, NULL, NULL, '2025-09-04 16:19:12', '2025-09-12 20:36:40'),
(850, 404, 'http://timefood.store/assets/new/back-end/img/location-blue.png', 32, NULL, NULL, '2025-09-04 16:51:29', '2025-09-06 21:52:32'),
(851, 404, 'http://timefood.store/public/assets/front-end/vendor/bootstrap/dist/js/bootstrap.bundle.min.js.map', 16, NULL, NULL, '2025-09-04 17:27:48', '2025-09-06 22:28:00'),
(852, 404, 'http://timefood.store/public/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.js.map', 17, NULL, NULL, '2025-09-04 17:27:48', '2025-09-10 21:22:01'),
(853, 404, 'http://timefood.store/public/assets/front-end/vendor/drift-zoom/dist/Drift.min.js.map', 17, NULL, NULL, '2025-09-04 17:27:48', '2025-09-10 21:22:23'),
(854, 404, 'http://timefood.store/public/js/lightbox.min.map', 17, NULL, NULL, '2025-09-04 17:27:48', '2025-09-10 21:20:57'),
(855, 404, 'http://timefood.store/public/assets/front-end/vendor/bs-custom-file-input/dist/bs-custom-file-input.min.js.map', 17, NULL, NULL, '2025-09-04 17:27:48', '2025-09-10 21:22:20'),
(856, 404, 'http://timefood.store/public/assets/back-end/js/toastr.js.map', 39, NULL, NULL, '2025-09-04 17:27:49', '2025-09-10 21:21:54'),
(857, 404, 'http://timefood.store/public/assets/front-end/vendor/firebase/firebase.js.map', 17, NULL, NULL, '2025-09-04 17:27:49', '2025-09-10 21:21:48'),
(858, 404, 'http://timefood.store/public/assets/front-end/css/style.css.map', 16, NULL, NULL, '2025-09-04 17:27:49', '2025-09-06 22:28:00'),
(859, 404, 'http://timefood.store/public/assets/front-end/css/theme.min.css.map', 16, NULL, NULL, '2025-09-04 17:27:49', '2025-09-06 22:28:00'),
(860, 404, 'http://timefood.store/public/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.css.map', 16, NULL, NULL, '2025-09-04 17:27:49', '2025-09-06 22:28:00'),
(861, 404, 'http://timefood.store/ads.txt', 2, NULL, NULL, '2025-09-04 19:00:46', '2025-09-04 19:10:34'),
(862, 404, 'http://timefood.store/admin/dashboard', 3, NULL, NULL, '2025-09-05 00:37:52', '2025-09-06 20:29:32'),
(863, 404, 'http://timefood.store/admin/category/view', 1, NULL, NULL, '2025-09-05 00:40:27', '2025-09-05 00:40:27'),
(864, 404, 'http://timefood.store/admin', 2, NULL, NULL, '2025-09-05 00:40:33', '2025-09-05 00:40:52'),
(865, 404, 'http://timefood.store/_debugbar/assets/javascript?v=1750807394', 1, NULL, NULL, '2025-09-05 00:49:10', '2025-09-05 00:49:10'),
(866, 404, 'http://timefood.store/admin/deal/flash', 1, NULL, NULL, '2025-09-05 01:42:55', '2025-09-05 01:42:55'),
(867, 404, 'http://timefood.store/admin/coupon/add', 1, NULL, NULL, '2025-09-05 01:43:03', '2025-09-05 01:43:03'),
(868, 404, 'http://timefood.store/public/assets/front-end/img/empty-msg.png', 2, NULL, NULL, '2025-09-05 02:05:34', '2025-09-05 02:05:46'),
(869, 404, 'http://timefood.store/wp-login.php', 2, NULL, NULL, '2025-09-05 03:07:19', '2025-09-05 18:27:29'),
(870, 404, 'http://timefood.store/media/system/js/core.js', 7, NULL, NULL, '2025-09-05 03:53:46', '2025-09-11 21:34:02'),
(871, 404, 'http://timefood.store/wp-includes/js/jquery/jquery.js', 7, NULL, NULL, '2025-09-05 03:53:47', '2025-09-11 21:34:02'),
(872, 404, 'https://timefood.store/.well-known/assetlinks.json', 1, NULL, NULL, '2025-09-05 05:04:51', '2025-09-05 05:04:51'),
(873, 404, 'http://timefood.store/firebase-cloud-messaging-push-scope', 1, NULL, NULL, '2025-09-05 06:44:21', '2025-09-05 06:44:21'),
(874, 404, 'http://mail.timefood.store/wp-content/plugins/hellopress/wp_filemanager.php', 1, NULL, NULL, '2025-09-05 09:09:20', '2025-09-05 09:09:20'),
(875, 404, 'http://mail.timefood.store/lock360.php', 1, NULL, NULL, '2025-09-05 09:09:20', '2025-09-05 09:09:20'),
(876, 404, 'http://mail.timefood.store/gmo.php', 1, NULL, NULL, '2025-09-05 09:09:21', '2025-09-05 09:09:21'),
(877, 404, 'http://mail.timefood.store/ar.php', 1, NULL, NULL, '2025-09-05 09:09:21', '2025-09-05 09:09:21'),
(878, 404, 'http://mail.timefood.store/we.php', 1, NULL, NULL, '2025-09-05 09:09:21', '2025-09-05 09:09:21'),
(879, 404, 'http://mail.timefood.store/abcd.php', 1, NULL, NULL, '2025-09-05 09:09:21', '2025-09-05 09:09:21'),
(880, 404, 'http://mail.timefood.store/modules/mod_simplefileuploadv1.3/elements/filemanager.php', 1, NULL, NULL, '2025-09-05 09:09:22', '2025-09-05 09:09:22'),
(881, 404, 'http://mail.timefood.store/pp.php', 2, NULL, NULL, '2025-09-05 09:09:22', '2025-09-05 09:09:24'),
(882, 404, 'http://mail.timefood.store/xc.php', 1, NULL, NULL, '2025-09-05 09:09:22', '2025-09-05 09:09:22'),
(883, 404, 'http://mail.timefood.store/wp.php', 1, NULL, NULL, '2025-09-05 09:09:22', '2025-09-05 09:09:22'),
(884, 404, 'http://mail.timefood.store/new.php', 1, NULL, NULL, '2025-09-05 09:09:23', '2025-09-05 09:09:23'),
(885, 404, 'http://mail.timefood.store/class20.php', 1, NULL, NULL, '2025-09-05 09:09:23', '2025-09-05 09:09:23'),
(886, 404, 'http://mail.timefood.store/ol.php', 1, NULL, NULL, '2025-09-05 09:09:23', '2025-09-05 09:09:23'),
(887, 404, 'http://mail.timefood.store/wp-gr.php', 1, NULL, NULL, '2025-09-05 09:09:24', '2025-09-05 09:09:24'),
(888, 404, 'http://mail.timefood.store/error.php', 1, NULL, NULL, '2025-09-05 09:09:24', '2025-09-05 09:09:24'),
(889, 404, 'http://mail.timefood.store/axx.php', 1, NULL, NULL, '2025-09-05 09:09:24', '2025-09-05 09:09:24'),
(890, 404, 'http://timefood.store/geju.php', 2, NULL, NULL, '2025-09-05 18:26:46', '2025-09-12 10:05:56'),
(891, 404, 'http://timefood.store/text.php', 4, NULL, NULL, '2025-09-05 18:26:47', '2025-09-07 15:18:49'),
(892, 404, 'http://timefood.store/ae.php', 2, NULL, NULL, '2025-09-05 18:26:47', '2025-09-05 18:27:26'),
(893, 404, 'http://timefood.store/radio.php', 9, NULL, NULL, '2025-09-05 18:26:47', '2025-09-11 17:01:44'),
(894, 404, 'http://timefood.store/ini.php', 6, NULL, NULL, '2025-09-05 18:26:48', '2025-09-11 17:01:52'),
(895, 404, 'http://timefood.store/readme.php', 1, NULL, NULL, '2025-09-05 18:26:49', '2025-09-05 18:26:49'),
(896, 404, 'http://timefood.store/info.php', 7, NULL, NULL, '2025-09-05 18:26:49', '2025-09-13 21:01:42'),
(897, 404, 'http://timefood.store/root.php', 3, NULL, NULL, '2025-09-05 18:26:49', '2025-09-06 07:05:28'),
(898, 404, 'http://timefood.store/wp-content/plugins/about.php', 2, NULL, NULL, '2025-09-05 18:26:50', '2025-09-12 10:05:56'),
(899, 404, 'http://timefood.store/hoot.php', 1, NULL, NULL, '2025-09-05 18:26:50', '2025-09-05 18:26:50'),
(900, 404, 'http://timefood.store/wp-content/plugins/admin.php', 1, NULL, NULL, '2025-09-05 18:26:50', '2025-09-05 18:26:50'),
(901, 404, 'http://timefood.store/wp-content/db-cache.php', 1, NULL, NULL, '2025-09-05 18:26:51', '2025-09-05 18:26:51'),
(902, 404, 'http://timefood.store/wp-content/themes/twentyeleven/functions.php', 1, NULL, NULL, '2025-09-05 18:26:51', '2025-09-05 18:26:51'),
(903, 404, 'http://timefood.store/wp-content/themes/oceanwp/functions.php', 1, NULL, NULL, '2025-09-05 18:26:51', '2025-09-05 18:26:51'),
(904, 404, 'http://timefood.store/wp-content/themes/twentythirteen/functions.php', 1, NULL, NULL, '2025-09-05 18:26:51', '2025-09-05 18:26:51'),
(905, 404, 'http://timefood.store/wp-content/themes/kadence/functions.php', 1, NULL, NULL, '2025-09-05 18:26:52', '2025-09-05 18:26:52'),
(906, 404, 'http://timefood.store/wp-content/themes/twentytwenty/functions.php', 1, NULL, NULL, '2025-09-05 18:26:52', '2025-09-05 18:26:52'),
(907, 404, 'http://timefood.store/content.php', 1, NULL, NULL, '2025-09-05 18:26:52', '2025-09-05 18:26:52'),
(908, 404, 'http://timefood.store/wp-content/plugins/not/includes/about.php', 1, NULL, NULL, '2025-09-05 18:26:52', '2025-09-05 18:26:52'),
(909, 404, 'http://timefood.store/wp-content/plugins/simple/simple.php', 1, NULL, NULL, '2025-09-05 18:26:53', '2025-09-05 18:26:53'),
(910, 404, 'http://timefood.store/wp-content/plugins/wp-theme-editor/include.php', 1, NULL, NULL, '2025-09-05 18:26:53', '2025-09-05 18:26:53'),
(911, 404, 'http://timefood.store/wp-content/themes/aahana/json.php', 1, NULL, NULL, '2025-09-05 18:26:53', '2025-09-05 18:26:53'),
(912, 404, 'http://timefood.store/wp-content/plugins/awesome-coming-soon/come.php', 1, NULL, NULL, '2025-09-05 18:26:54', '2025-09-05 18:26:54'),
(913, 404, 'http://timefood.store/berlin.php', 1, NULL, NULL, '2025-09-05 18:26:54', '2025-09-05 18:26:54'),
(914, 404, 'http://timefood.store/wp-includes/Requests/about.php', 1, NULL, NULL, '2025-09-05 18:26:54', '2025-09-05 18:26:54'),
(915, 404, 'http://timefood.store/wp-includes/rest-api/about.php', 1, NULL, NULL, '2025-09-05 18:26:55', '2025-09-05 18:26:55'),
(916, 404, 'http://timefood.store/wp-includes/SimplePie/about.php', 1, NULL, NULL, '2025-09-05 18:26:55', '2025-09-05 18:26:55'),
(917, 404, 'http://timefood.store/wp-content/banners/about.php', 1, NULL, NULL, '2025-09-05 18:26:55', '2025-09-05 18:26:55'),
(918, 404, 'http://timefood.store/wp-content/about.php', 3, NULL, NULL, '2025-09-05 18:26:56', '2025-09-09 16:30:06'),
(919, 404, 'http://timefood.store/.well-known/about.php', 1, NULL, NULL, '2025-09-05 18:26:56', '2025-09-05 18:26:56'),
(920, 404, 'http://timefood.store/wp-includes/Text/about.php', 1, NULL, NULL, '2025-09-05 18:26:56', '2025-09-05 18:26:56'),
(921, 404, 'http://timefood.store/wp-includes/ID3/about.php', 1, NULL, NULL, '2025-09-05 18:26:56', '2025-09-05 18:26:56'),
(922, 404, 'http://timefood.store/img/about.php', 1, NULL, NULL, '2025-09-05 18:26:57', '2025-09-05 18:26:57'),
(923, 404, 'http://timefood.store/wp-content/languages/about.php', 1, NULL, NULL, '2025-09-05 18:26:57', '2025-09-05 18:26:57'),
(924, 404, 'http://timefood.store/wp-includes/customize/about.php', 1, NULL, NULL, '2025-09-05 18:26:57', '2025-09-05 18:26:57'),
(925, 404, 'http://timefood.store/wp-includes.bak/html-api/about.php', 1, NULL, NULL, '2025-09-05 18:26:57', '2025-09-05 18:26:57'),
(926, 404, 'http://timefood.store/wp-includes/widgets/about.php', 1, NULL, NULL, '2025-09-05 18:26:58', '2025-09-05 18:26:58'),
(927, 404, 'http://timefood.store/wp-includes/IXR/about.php', 1, NULL, NULL, '2025-09-05 18:26:58', '2025-09-05 18:26:58'),
(928, 404, 'http://timefood.store/wp-admin/js/about.php', 2, NULL, NULL, '2025-09-05 18:26:58', '2025-09-09 16:29:37'),
(929, 404, 'http://timefood.store/wp-includes/pomo/about.php', 1, NULL, NULL, '2025-09-05 18:26:59', '2025-09-05 18:26:59'),
(930, 404, 'http://timefood.store/wp-includes/block-patterns/about.php', 1, NULL, NULL, '2025-09-05 18:26:59', '2025-09-05 18:26:59'),
(931, 404, 'http://timefood.store/wp-content/updraft/about.php', 1, NULL, NULL, '2025-09-05 18:26:59', '2025-09-05 18:26:59'),
(932, 404, 'http://timefood.store/wp-content/upgrade-temp-backup/about.php', 1, NULL, NULL, '2025-09-05 18:27:00', '2025-09-05 18:27:00'),
(933, 404, 'http://timefood.store/images/about.php', 1, NULL, NULL, '2025-09-05 18:27:00', '2025-09-05 18:27:00'),
(934, 404, 'http://timefood.store/wp-content/blogs.dir/about.php', 1, NULL, NULL, '2025-09-05 18:27:01', '2025-09-05 18:27:01'),
(935, 404, 'http://timefood.store/wp-includes/images/about.php', 1, NULL, NULL, '2025-09-05 18:27:01', '2025-09-05 18:27:01'),
(936, 404, 'http://timefood.store/wp-includes/about.php', 1, NULL, NULL, '2025-09-05 18:27:01', '2025-09-05 18:27:01'),
(937, 404, 'http://timefood.store/wp-content/gallery/about.php', 1, NULL, NULL, '2025-09-05 18:27:02', '2025-09-05 18:27:02'),
(938, 404, 'http://timefood.store/wp-includes/blocks/about.php', 1, NULL, NULL, '2025-09-05 18:27:02', '2025-09-05 18:27:02'),
(939, 404, 'http://timefood.store/wp-admin/css/about.php', 1, NULL, NULL, '2025-09-05 18:27:02', '2025-09-05 18:27:02'),
(940, 404, 'http://timefood.store/wp-admin/images/about.php', 1, NULL, NULL, '2025-09-05 18:27:02', '2025-09-05 18:27:02'),
(941, 404, 'http://timefood.store/.well-known/acme-challenge/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:03', '2025-09-05 18:27:03'),
(942, 404, 'http://timefood.store/wp-admin/network/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:03', '2025-09-05 18:27:03'),
(943, 404, 'http://timefood.store/cloud.php', 3, NULL, NULL, '2025-09-05 18:27:03', '2025-09-07 15:19:04'),
(944, 404, 'http://timefood.store/wp-content/updates.php', 1, NULL, NULL, '2025-09-05 18:27:04', '2025-09-05 18:27:04'),
(945, 404, 'http://timefood.store/css/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:04', '2025-09-05 18:27:04'),
(946, 404, 'http://timefood.store/wp-admin/user/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:04', '2025-09-05 18:27:04'),
(947, 404, 'http://timefood.store/img/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:05', '2025-09-05 18:27:05'),
(948, 404, 'http://timefood.store/wp-admin/css/colors/coffee/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:05', '2025-09-05 18:27:05'),
(949, 404, 'http://timefood.store/wp-admin/images/cloud.php', 2, NULL, NULL, '2025-09-05 18:27:05', '2025-09-09 16:30:10'),
(950, 404, 'http://timefood.store/avaa.php', 1, NULL, NULL, '2025-09-05 18:27:06', '2025-09-05 18:27:06'),
(951, 404, 'http://timefood.store/images/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:06', '2025-09-05 18:27:06'),
(952, 404, 'http://timefood.store/wp-admin/js/widgets/cloud.php', 2, NULL, NULL, '2025-09-05 18:27:06', '2025-09-09 16:30:06'),
(953, 404, 'http://timefood.store/wp-includes/Requests/Text/admin.php', 1, NULL, NULL, '2025-09-05 18:27:06', '2025-09-05 18:27:06'),
(954, 404, 'http://timefood.store/wp-admin/css/colors/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:07', '2025-09-05 18:27:07'),
(955, 404, 'http://timefood.store/wp-admin/includes/cloud.php', 2, NULL, NULL, '2025-09-05 18:27:07', '2025-09-09 16:30:36'),
(956, 404, 'http://timefood.store/wp-admin/css/colors/blue/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:07', '2025-09-05 18:27:07'),
(957, 404, 'http://timefood.store/wp-admin/cloud.php', 1, NULL, NULL, '2025-09-05 18:27:07', '2025-09-05 18:27:07'),
(958, 404, 'http://timefood.store/libraries/legacy/updates.php', 1, NULL, NULL, '2025-09-05 18:27:08', '2025-09-05 18:27:08'),
(959, 404, 'http://timefood.store/libraries/phpmailer/updates.php', 1, NULL, NULL, '2025-09-05 18:27:08', '2025-09-05 18:27:08'),
(960, 404, 'http://timefood.store/libraries/vendor/updates.php', 1, NULL, NULL, '2025-09-05 18:27:08', '2025-09-05 18:27:08'),
(961, 404, 'http://timefood.store/alfa-rex.php7', 3, NULL, NULL, '2025-09-05 18:27:09', '2025-09-07 15:18:50'),
(962, 404, 'http://timefood.store/alfanew.php', 1, NULL, NULL, '2025-09-05 18:27:09', '2025-09-05 18:27:09'),
(963, 404, 'http://timefood.store/wp-content/plugins/Cache/Cache.php', 1, NULL, NULL, '2025-09-05 18:27:09', '2025-09-05 18:27:09'),
(964, 404, 'http://timefood.store/wp-admin/js/widgets/about.php7', 1, NULL, NULL, '2025-09-05 18:27:09', '2025-09-05 18:27:09'),
(965, 404, 'http://timefood.store/wp-p.php7', 1, NULL, NULL, '2025-09-05 18:27:10', '2025-09-05 18:27:10'),
(966, 404, 'http://timefood.store/wp-admin/repeater.php', 1, NULL, NULL, '2025-09-05 18:27:10', '2025-09-05 18:27:10'),
(967, 404, 'http://timefood.store/wp-includes/repeater.php', 1, NULL, NULL, '2025-09-05 18:27:10', '2025-09-05 18:27:10'),
(968, 404, 'http://timefood.store/wp-content/repeater.php', 1, NULL, NULL, '2025-09-05 18:27:10', '2025-09-05 18:27:10'),
(969, 404, 'http://timefood.store/wsoyanz.php', 1, NULL, NULL, '2025-09-05 18:27:11', '2025-09-05 18:27:11'),
(970, 404, 'http://timefood.store/yanz.php', 6, NULL, NULL, '2025-09-05 18:27:11', '2025-09-11 17:01:40'),
(971, 404, 'http://timefood.store/wp-content/plugins/seoo/wsoyanz.php', 1, NULL, NULL, '2025-09-05 18:27:11', '2025-09-05 18:27:11'),
(972, 404, 'http://timefood.store/wp-content/plugins/seoo/wsoyanz1.php', 1, NULL, NULL, '2025-09-05 18:27:12', '2025-09-05 18:27:12'),
(973, 404, 'http://timefood.store/cache-compat.php', 1, NULL, NULL, '2025-09-05 18:27:12', '2025-09-05 18:27:12'),
(974, 404, 'http://timefood.store/ajax-actions.php', 1, NULL, NULL, '2025-09-05 18:27:12', '2025-09-05 18:27:12'),
(975, 404, 'http://timefood.store/wp-admin/ajax-actions.php', 1, NULL, NULL, '2025-09-05 18:27:12', '2025-09-05 18:27:12'),
(976, 404, 'http://timefood.store/wp-consar.php', 1, NULL, NULL, '2025-09-05 18:27:13', '2025-09-05 18:27:13'),
(977, 404, 'http://timefood.store/repeater.php', 1, NULL, NULL, '2025-09-05 18:27:13', '2025-09-05 18:27:13'),
(978, 404, 'http://timefood.store/admin-post.php', 1, NULL, NULL, '2025-09-05 18:27:13', '2025-09-05 18:27:13'),
(979, 404, 'http://timefood.store/wp-admin/maint/maint/ajax-actions.php', 1, NULL, NULL, '2025-09-05 18:27:13', '2025-09-05 18:27:13'),
(980, 404, 'http://timefood.store/wp-admin/dropdown.php', 1, NULL, NULL, '2025-09-05 18:27:14', '2025-09-05 18:27:14'),
(981, 404, 'http://timefood.store/wp-admin/css/index.php', 1, NULL, NULL, '2025-09-05 18:27:14', '2025-09-05 18:27:14'),
(982, 404, 'http://timefood.store/about.php7', 1, NULL, NULL, '2025-09-05 18:27:14', '2025-09-05 18:27:14'),
(983, 404, 'http://timefood.store/alfanew.php7', 3, NULL, NULL, '2025-09-05 18:27:15', '2025-09-07 15:18:57'),
(984, 404, 'http://timefood.store/adminfuns.php7', 5, NULL, NULL, '2025-09-05 18:27:15', '2025-09-11 17:01:52'),
(985, 404, 'http://timefood.store/ebs.php7', 1, NULL, NULL, '2025-09-05 18:27:15', '2025-09-05 18:27:15'),
(986, 404, 'http://timefood.store/ws.php7', 1, NULL, NULL, '2025-09-05 18:27:15', '2025-09-05 18:27:15'),
(987, 404, 'http://timefood.store/alfanew2.php7', 1, NULL, NULL, '2025-09-05 18:27:16', '2025-09-05 18:27:16'),
(988, 404, 'http://timefood.store/alfa-rex2.php7', 1, NULL, NULL, '2025-09-05 18:27:16', '2025-09-05 18:27:16'),
(989, 404, 'http://timefood.store/wp-admin/images/index.php', 2, NULL, NULL, '2025-09-05 18:27:16', '2025-09-09 16:30:08'),
(990, 404, 'http://timefood.store/wp-admin/css/colors/index.php', 2, NULL, NULL, '2025-09-05 18:27:17', '2025-09-09 16:30:04'),
(991, 404, 'http://timefood.store/wp-content/themes/pridmag/db.php?u=', 1, NULL, NULL, '2025-09-05 18:27:17', '2025-09-05 18:27:17'),
(992, 404, 'http://timefood.store/wp-content/themes/seotheme/mar.php', 1, NULL, NULL, '2025-09-05 18:27:17', '2025-09-05 18:27:17'),
(993, 404, 'http://timefood.store/wp-content/plugins/linkpreview/db.php?u=', 1, NULL, NULL, '2025-09-05 18:27:17', '2025-09-05 18:27:17'),
(994, 404, 'http://timefood.store/wp-content/themes/seotheme/db.php?u=', 1, NULL, NULL, '2025-09-05 18:27:18', '2025-09-05 18:27:18'),
(995, 404, 'http://timefood.store/wp-content/plugins/seoplugins/db.php?u=', 1, NULL, NULL, '2025-09-05 18:27:18', '2025-09-05 18:27:18'),
(996, 404, 'http://timefood.store/wp-content/plugins/seoplugins/mar.php', 1, NULL, NULL, '2025-09-05 18:27:18', '2025-09-05 18:27:18'),
(997, 404, 'http://timefood.store/.well-known/acme-challenge/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:19', '2025-09-05 18:27:19'),
(998, 404, 'http://timefood.store/wp-admin/network/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:19', '2025-09-05 18:27:19'),
(999, 404, 'http://timefood.store/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:19', '2025-09-05 18:27:19'),
(1000, 404, 'http://timefood.store/css/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:19', '2025-09-05 18:27:19'),
(1001, 404, 'http://timefood.store/wp-admin/user/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:20', '2025-09-05 18:27:20'),
(1002, 404, 'http://timefood.store/img/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:20', '2025-09-05 18:27:20'),
(1003, 404, 'http://timefood.store/wp-admin/css/colors/coffee/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:20', '2025-09-05 18:27:20'),
(1004, 404, 'http://timefood.store/wp-admin/images/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:20', '2025-09-05 18:27:20'),
(1005, 404, 'http://timefood.store/images/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:21', '2025-09-05 18:27:21'),
(1006, 404, 'http://timefood.store/wp-admin/js/widgets/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:21', '2025-09-05 18:27:21'),
(1007, 404, 'http://timefood.store/wp-admin/css/colors/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:21', '2025-09-05 18:27:21'),
(1008, 404, 'http://timefood.store/wp-admin/includes/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:22', '2025-09-05 18:27:22'),
(1009, 404, 'http://timefood.store/wp-admin/css/colors/blue/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:22', '2025-09-05 18:27:22'),
(1010, 404, 'http://timefood.store/wp-admin/xmrlpc.php?p=', 1, NULL, NULL, '2025-09-05 18:27:22', '2025-09-05 18:27:22'),
(1011, 404, 'http://timefood.store/css.php', 2, NULL, NULL, '2025-09-05 18:27:23', '2025-09-10 22:11:07'),
(1012, 404, 'http://timefood.store/log.php', 1, NULL, NULL, '2025-09-05 18:27:23', '2025-09-05 18:27:23'),
(1013, 404, 'http://timefood.store/mail.php', 1, NULL, NULL, '2025-09-05 18:27:24', '2025-09-05 18:27:24'),
(1014, 404, 'http://timefood.store/bak.php', 5, NULL, NULL, '2025-09-05 18:27:24', '2025-09-11 17:01:50'),
(1015, 404, 'http://timefood.store/upfile.php', 1, NULL, NULL, '2025-09-05 18:27:24', '2025-09-05 18:27:24'),
(1016, 404, 'http://timefood.store/wp-conflg.php', 2, NULL, NULL, '2025-09-05 18:27:24', '2025-09-07 15:18:57'),
(1017, 404, 'http://timefood.store/bypass.php', 1, NULL, NULL, '2025-09-05 18:27:25', '2025-09-05 18:27:25'),
(1018, 404, 'http://timefood.store/404.php', 1, NULL, NULL, '2025-09-05 18:27:25', '2025-09-05 18:27:25'),
(1019, 404, 'http://timefood.store/xmrlpc.php', 1, NULL, NULL, '2025-09-05 18:27:26', '2025-09-05 18:27:26'),
(1020, 404, 'http://timefood.store/blog.php', 1, NULL, NULL, '2025-09-05 18:27:26', '2025-09-05 18:27:26'),
(1021, 404, 'http://timefood.store/themes.php', 1, NULL, NULL, '2025-09-05 18:27:27', '2025-09-05 18:27:27'),
(1022, 404, 'http://timefood.store/ws.php', 2, NULL, NULL, '2025-09-05 18:27:28', '2025-09-07 15:18:49'),
(1023, 404, 'http://timefood.store/wp-sigunq.php', 1, NULL, NULL, '2025-09-05 18:27:28', '2025-09-05 18:27:28'),
(1024, 404, 'http://timefood.store/wso112233.php', 1, NULL, NULL, '2025-09-05 18:27:29', '2025-09-05 18:27:29'),
(1025, 404, 'http://timefood.store/install.php', 3, NULL, NULL, '2025-09-05 18:27:29', '2025-09-07 15:19:01'),
(1026, 404, 'http://timefood.store/wp-content/plugins/google-seo-rank/module.php', 1, NULL, NULL, '2025-09-05 18:27:30', '2025-09-05 18:27:30'),
(1027, 404, 'http://timefood.store/wp-blog-header.php', 1, NULL, NULL, '2025-09-05 18:27:31', '2025-09-05 18:27:31'),
(1028, 404, 'http://timefood.store/wp-comments-post.php', 1, NULL, NULL, '2025-09-05 18:27:31', '2025-09-05 18:27:31'),
(1029, 404, 'http://timefood.store/wp-cron.php', 1, NULL, NULL, '2025-09-05 18:27:32', '2025-09-05 18:27:32'),
(1030, 404, 'http://timefood.store/wp-load.php', 1, NULL, NULL, '2025-09-05 18:27:32', '2025-09-05 18:27:32'),
(1031, 404, 'http://timefood.store/wp-mail.php', 1, NULL, NULL, '2025-09-05 18:27:32', '2025-09-05 18:27:32'),
(1032, 404, 'http://timefood.store/wp-activate.php', 1, NULL, NULL, '2025-09-05 18:27:33', '2025-09-05 18:27:33'),
(1033, 404, 'http://timefood.store/plugins.php', 1, NULL, NULL, '2025-09-05 18:27:33', '2025-09-05 18:27:33'),
(1034, 404, 'http://timefood.store/post.php', 2, NULL, NULL, '2025-09-05 18:27:33', '2025-09-06 07:05:20'),
(1035, 404, 'http://timefood.store/wp-2019.php', 2, NULL, NULL, '2025-09-05 18:27:33', '2025-09-06 07:05:22'),
(1036, 404, 'http://timefood.store/meta.php', 3, NULL, NULL, '2025-09-05 18:27:35', '2025-09-07 15:18:41'),
(1037, 404, 'http://timefood.store/randkeyword.php', 3, NULL, NULL, '2025-09-05 18:27:35', '2025-09-07 15:18:42'),
(1038, 404, 'http://timefood.store/hehe.php', 3, NULL, NULL, '2025-09-05 18:27:36', '2025-09-07 15:18:42'),
(1039, 404, 'http://timefood.store/yindu.php', 2, NULL, NULL, '2025-09-05 18:27:36', '2025-09-06 07:05:22'),
(1040, 404, 'http://timefood.store/wp-admin/class-db.php', 1, NULL, NULL, '2025-09-05 18:27:36', '2025-09-05 18:27:36'),
(1041, 404, 'http://timefood.store/baxa1.phP8', 1, NULL, NULL, '2025-09-05 18:27:36', '2025-09-05 18:27:36'),
(1042, 404, 'http://timefood.store/baxa1.php', 1, NULL, NULL, '2025-09-05 18:27:37', '2025-09-05 18:27:37'),
(1043, 404, 'http://timefood.store/.well-known//index.php', 1, NULL, NULL, '2025-09-05 18:27:37', '2025-09-05 18:27:37'),
(1044, 404, 'http://timefood.store/libraries/phpmailer//index.php', 1, NULL, NULL, '2025-09-05 18:27:37', '2025-09-05 18:27:37'),
(1045, 404, 'http://timefood.store/wp-admin/css/colors/blue//1.php', 1, NULL, NULL, '2025-09-05 18:27:38', '2025-09-05 18:27:38'),
(1046, 404, 'http://timefood.store/wp-content/plugins//about.php', 1, NULL, NULL, '2025-09-05 18:27:38', '2025-09-05 18:27:38'),
(1047, 404, 'http://timefood.store/wp-content/plugins//index.php', 1, NULL, NULL, '2025-09-05 18:27:38', '2025-09-05 18:27:38'),
(1048, 404, 'http://timefood.store/wp-content/uploads/BbUMY/flower.php', 1, NULL, NULL, '2025-09-05 18:27:38', '2025-09-05 18:27:38'),
(1049, 404, 'http://timefood.store/wp-includes/ID3//file.php', 1, NULL, NULL, '2025-09-05 18:27:39', '2025-09-05 18:27:39'),
(1050, 404, 'http://timefood.store/wp-includes/Text/Diff/Engine//about.php', 1, NULL, NULL, '2025-09-05 18:27:39', '2025-09-05 18:27:39'),
(1051, 404, 'http://timefood.store/wp-includes/Text/Diff/Engine//index.php', 1, NULL, NULL, '2025-09-05 18:27:39', '2025-09-05 18:27:39'),
(1052, 404, 'http://timefood.store/wp-includes/css//index.php', 1, NULL, NULL, '2025-09-05 18:27:40', '2025-09-05 18:27:40'),
(1053, 404, 'http://timefood.store/wp-includes/images//about.php', 1, NULL, NULL, '2025-09-05 18:27:40', '2025-09-05 18:27:40'),
(1054, 404, 'http://timefood.store/wp-includes/images/crystal//index.php', 1, NULL, NULL, '2025-09-05 18:27:40', '2025-09-05 18:27:40'),
(1055, 404, 'http://timefood.store/wp//index.php', 1, NULL, NULL, '2025-09-05 18:27:40', '2025-09-05 18:27:40'),
(1056, 404, 'http://timefood.store/user.php', 3, NULL, NULL, '2025-09-05 18:27:41', '2025-09-07 15:18:42'),
(1057, 404, 'http://timefood.store/functions.php', 4, NULL, NULL, '2025-09-05 18:27:41', '2025-09-09 16:30:38'),
(1058, 404, 'http://timefood.store/cron.php', 3, NULL, NULL, '2025-09-05 18:27:41', '2025-09-07 15:18:44'),
(1059, 404, 'http://timefood.store/gecko-new.php', 3, NULL, NULL, '2025-09-05 18:27:41', '2025-09-07 15:18:44'),
(1060, 404, 'http://timefood.store/cookie.php', 3, NULL, NULL, '2025-09-05 18:27:42', '2025-09-07 15:18:45'),
(1061, 404, 'http://timefood.store/xleet.php', 3, NULL, NULL, '2025-09-05 18:27:42', '2025-09-07 15:18:45'),
(1062, 404, 'http://timefood.store/spip.php', 3, NULL, NULL, '2025-09-05 18:27:42', '2025-09-07 15:18:46'),
(1063, 404, 'http://timefood.store/22.php', 2, NULL, NULL, '2025-09-05 18:27:42', '2025-09-06 07:05:24'),
(1064, 404, 'http://timefood.store/room.php', 3, NULL, NULL, '2025-09-05 18:27:43', '2025-09-07 15:18:48'),
(1065, 404, 'http://timefood.store/disagreed.php', 3, NULL, NULL, '2025-09-05 18:27:43', '2025-09-07 15:18:48'),
(1066, 404, 'http://timefood.store/alfa-rex.php', 3, NULL, NULL, '2025-09-05 18:27:44', '2025-09-07 15:18:49'),
(1067, 404, 'http://timefood.store/feeds.php', 3, NULL, NULL, '2025-09-05 18:27:44', '2025-09-07 15:18:51'),
(1068, 404, 'http://timefood.store/defaults.php', 4, NULL, NULL, '2025-09-05 18:27:44', '2025-09-07 15:18:52'),
(1069, 404, 'http://timefood.store/system.php', 3, NULL, NULL, '2025-09-05 18:27:44', '2025-09-07 15:18:52'),
(1070, 404, 'http://timefood.store/xmlrpc.php', 3, NULL, NULL, '2025-09-05 18:27:45', '2025-09-07 15:18:53'),
(1071, 404, 'http://timefood.store/xmlrpc.php0', 3, NULL, NULL, '2025-09-05 18:27:45', '2025-09-07 15:18:54'),
(1072, 404, 'http://timefood.store/colors.php', 3, NULL, NULL, '2025-09-05 18:27:45', '2025-09-07 15:18:54'),
(1073, 404, 'http://timefood.store/alfa-rex1.php', 3, NULL, NULL, '2025-09-05 18:27:45', '2025-09-07 15:18:56'),
(1074, 404, 'http://timefood.store/wp-index.php', 3, NULL, NULL, '2025-09-05 18:27:46', '2025-09-07 15:18:56');
INSERT INTO `error_logs` (`id`, `status_code`, `url`, `hit_counts`, `redirect_url`, `redirect_status`, `created_at`, `updated_at`) VALUES
(1075, 404, 'http://timefood.store/wp-admin.php', 3, NULL, NULL, '2025-09-05 18:27:46', '2025-09-07 15:18:57'),
(1076, 404, 'http://timefood.store/locale.php', 3, NULL, NULL, '2025-09-05 18:27:46', '2025-09-07 15:18:58'),
(1077, 404, 'http://timefood.store/wxo.php', 3, NULL, NULL, '2025-09-05 18:27:47', '2025-09-07 15:18:59'),
(1078, 404, 'http://timefood.store/colour.php', 3, NULL, NULL, '2025-09-05 18:27:47', '2025-09-07 15:19:00'),
(1079, 404, 'http://timefood.store/files.php', 3, NULL, NULL, '2025-09-05 18:27:47', '2025-09-07 15:19:00'),
(1080, 404, 'http://timefood.store/wp-contentt.php', 3, NULL, NULL, '2025-09-05 18:27:48', '2025-09-07 15:19:01'),
(1081, 404, 'http://timefood.store/config.php7', 3, NULL, NULL, '2025-09-05 18:27:48', '2025-09-07 15:19:02'),
(1082, 404, 'http://timefood.store/config.php', 3, NULL, NULL, '2025-09-05 18:27:48', '2025-09-07 15:19:02'),
(1083, 404, 'http://timefood.store/theme.php', 3, NULL, NULL, '2025-09-05 18:27:48', '2025-09-07 15:19:02'),
(1084, 404, 'http://timefood.store/block-bindings.php', 3, NULL, NULL, '2025-09-05 18:27:49', '2025-09-07 15:19:03'),
(1085, 404, 'http://timefood.store/class_api.php', 3, NULL, NULL, '2025-09-05 18:27:49', '2025-09-07 15:19:03'),
(1086, 404, 'http://timefood.store/menu.php', 2, NULL, NULL, '2025-09-05 18:27:49', '2025-09-06 07:05:29'),
(1087, 404, 'http://timefood.store/plugin.php', 3, NULL, NULL, '2025-09-05 18:27:50', '2025-09-07 15:19:04'),
(1088, 404, 'http://timefood.store/configs.php', 3, NULL, NULL, '2025-09-05 18:27:50', '2025-09-07 15:19:05'),
(1089, 404, 'http://timefood.store/wp-configs.php', 3, NULL, NULL, '2025-09-05 18:27:50', '2025-09-07 15:19:05'),
(1090, 404, 'http://timefood.store/update.php', 3, NULL, NULL, '2025-09-05 18:27:50', '2025-09-07 15:19:05'),
(1091, 404, 'http://timefood.store/2.php', 3, NULL, NULL, '2025-09-05 18:27:51', '2025-09-07 15:19:06'),
(1092, 404, 'http://timefood.store/input.php', 3, NULL, NULL, '2025-09-05 18:27:51', '2025-09-07 15:19:06'),
(1093, 404, 'http://timefood.store/aaa.php', 5, NULL, NULL, '2025-09-05 18:27:51', '2025-09-10 22:10:49'),
(1094, 404, 'http://timefood.store/WSO.php', 2, NULL, NULL, '2025-09-06 07:05:18', '2025-09-09 16:29:39'),
(1095, 404, 'http://timefood.store/a.php', 1, NULL, NULL, '2025-09-06 07:05:18', '2025-09-06 07:05:18'),
(1096, 404, 'http://timefood.store/ab.php', 1, NULL, NULL, '2025-09-06 07:05:19', '2025-09-06 07:05:19'),
(1097, 404, 'http://timefood.store/anonse/lock360.php', 2, NULL, NULL, '2025-09-06 07:05:19', '2025-09-09 16:30:32'),
(1098, 404, 'http://timefood.store/file5.php', 3, NULL, NULL, '2025-09-06 07:05:19', '2025-09-10 22:10:59'),
(1099, 404, 'http://timefood.store/sitemaps.php', 1, NULL, NULL, '2025-09-06 07:05:19', '2025-09-06 07:05:19'),
(1100, 404, 'https://timefood.store/phpinfo.php', 1, NULL, NULL, '2025-09-06 15:05:59', '2025-09-06 15:05:59'),
(1101, 404, 'https://timefood.store/phpinfo', 1, NULL, NULL, '2025-09-06 15:06:00', '2025-09-06 15:06:00'),
(1102, 404, 'https://timefood.store/php_info.php', 1, NULL, NULL, '2025-09-06 15:06:01', '2025-09-06 15:06:01'),
(1103, 404, 'https://timefood.store/_profiler/phpinfo', 1, NULL, NULL, '2025-09-06 15:06:01', '2025-09-06 15:06:01'),
(1104, 404, 'https://timefood.store/info', 1, NULL, NULL, '2025-09-06 15:06:04', '2025-09-06 15:06:04'),
(1105, 404, 'http://timefood.store/.alf.php', 1, NULL, NULL, '2025-09-06 17:13:16', '2025-09-06 17:13:16'),
(1106, 404, 'http://timefood.store/.bod/.ll/ss.php', 1, NULL, NULL, '2025-09-06 17:13:17', '2025-09-06 17:13:17'),
(1107, 404, 'http://timefood.store/admin/logout', 1, NULL, NULL, '2025-09-06 21:15:25', '2025-09-06 21:15:25'),
(1108, 404, 'http://timefood.store/admin/customer/drafts', 1, NULL, NULL, '2025-09-06 21:21:34', '2025-09-06 21:21:34'),
(1109, 404, 'http://www.timefood.store/wp-content/plugins/hellopress/wp_filemanager.php', 3, NULL, NULL, '2025-09-07 02:15:32', '2025-09-12 07:19:20'),
(1110, 404, 'http://www.timefood.store/pm.php', 2, NULL, NULL, '2025-09-07 02:15:33', '2025-09-08 21:19:24'),
(1111, 404, 'http://www.timefood.store/bu10r7.php', 1, NULL, NULL, '2025-09-07 02:15:33', '2025-09-07 02:15:33'),
(1112, 404, 'http://www.timefood.store/huda.php', 1, NULL, NULL, '2025-09-07 02:15:36', '2025-09-07 02:15:36'),
(1113, 404, 'http://www.timefood.store/hkn.php', 1, NULL, NULL, '2025-09-07 02:15:36', '2025-09-07 02:15:36'),
(1114, 404, 'http://www.timefood.store/sdsd777.php', 1, NULL, NULL, '2025-09-07 02:15:37', '2025-09-07 02:15:37'),
(1115, 404, 'http://www.timefood.store/vxrl.php', 4, NULL, NULL, '2025-09-07 02:15:38', '2025-09-08 21:19:54'),
(1116, 404, 'http://www.timefood.store/shorw.php', 2, NULL, NULL, '2025-09-07 02:15:39', '2025-09-08 21:19:25'),
(1117, 404, 'http://www.timefood.store/gifclass.php', 2, NULL, NULL, '2025-09-07 02:15:39', '2025-09-08 21:19:25'),
(1118, 404, 'http://www.timefood.store/orm.php', 2, NULL, NULL, '2025-09-07 02:15:40', '2025-09-08 21:19:25'),
(1119, 404, 'http://www.timefood.store/gmo.php', 3, NULL, NULL, '2025-09-07 02:15:41', '2025-09-12 07:19:37'),
(1120, 404, 'http://www.timefood.store/ioxi2.php', 2, NULL, NULL, '2025-09-07 02:15:41', '2025-09-08 21:19:26'),
(1121, 404, 'http://www.timefood.store/MARIJUANA.php', 2, NULL, NULL, '2025-09-07 02:15:42', '2025-09-08 21:19:26'),
(1122, 404, 'http://www.timefood.store/file17.php', 3, NULL, NULL, '2025-09-07 02:15:43', '2025-09-12 07:19:33'),
(1123, 404, 'http://www.timefood.store/H.php', 2, NULL, NULL, '2025-09-07 02:15:44', '2025-09-08 21:19:27'),
(1124, 404, 'http://www.timefood.store/zcxb.php', 2, NULL, NULL, '2025-09-07 02:15:44', '2025-09-08 21:19:27'),
(1125, 404, 'http://www.timefood.store/wpls.php', 2, NULL, NULL, '2025-09-07 02:15:45', '2025-09-08 21:19:27'),
(1126, 404, 'http://www.timefood.store/testas.php', 2, NULL, NULL, '2025-09-07 02:15:45', '2025-09-08 21:19:27'),
(1127, 404, 'http://www.timefood.store/nope.php', 2, NULL, NULL, '2025-09-07 02:15:46', '2025-09-08 21:19:28'),
(1128, 404, 'http://www.timefood.store/reyna.php', 2, NULL, NULL, '2025-09-07 02:15:47', '2025-09-08 21:19:28'),
(1129, 404, 'http://www.timefood.store/ma1.php', 2, NULL, NULL, '2025-09-07 02:15:47', '2025-09-08 21:19:28'),
(1130, 404, 'http://www.timefood.store/bypltspd.php', 2, NULL, NULL, '2025-09-07 02:15:48', '2025-09-08 21:19:29'),
(1131, 404, 'http://www.timefood.store/aaa.php', 2, NULL, NULL, '2025-09-07 02:15:48', '2025-09-08 21:19:29'),
(1132, 404, 'http://www.timefood.store/wp-xx.php', 2, NULL, NULL, '2025-09-07 02:15:49', '2025-09-08 21:19:29'),
(1133, 404, 'http://www.timefood.store/wp-xm.php', 2, NULL, NULL, '2025-09-07 02:15:49', '2025-09-08 21:19:30'),
(1134, 404, 'http://www.timefood.store/zeal.php', 2, NULL, NULL, '2025-09-07 02:15:50', '2025-09-08 21:19:30'),
(1135, 404, 'http://www.timefood.store/h8h9.php', 2, NULL, NULL, '2025-09-07 02:15:50', '2025-09-08 21:19:30'),
(1136, 404, 'http://www.timefood.store/zasd.php', 2, NULL, NULL, '2025-09-07 02:15:51', '2025-09-08 21:19:30'),
(1137, 404, 'http://www.timefood.store/xzs.php', 2, NULL, NULL, '2025-09-07 02:15:52', '2025-09-08 21:19:32'),
(1138, 404, 'http://www.timefood.store/yep.php', 2, NULL, NULL, '2025-09-07 02:15:52', '2025-09-08 21:19:32'),
(1139, 404, 'http://www.timefood.store/des.php', 2, NULL, NULL, '2025-09-07 02:15:53', '2025-09-08 21:19:32'),
(1140, 404, 'http://www.timefood.store/xex.php', 2, NULL, NULL, '2025-09-07 02:15:53', '2025-09-08 21:19:32'),
(1141, 404, 'http://www.timefood.store/tox.php', 2, NULL, NULL, '2025-09-07 02:15:54', '2025-09-08 21:19:33'),
(1142, 404, 'http://www.timefood.store/racs3.php', 2, NULL, NULL, '2025-09-07 02:15:54', '2025-09-08 21:19:33'),
(1143, 404, 'http://www.timefood.store/wp-cliner.php', 2, NULL, NULL, '2025-09-07 02:15:55', '2025-09-08 21:19:33'),
(1144, 404, 'http://www.timefood.store/law.php', 2, NULL, NULL, '2025-09-07 02:15:55', '2025-09-08 21:19:34'),
(1145, 404, 'http://www.timefood.store/moo.php', 2, NULL, NULL, '2025-09-07 02:15:56', '2025-09-08 21:19:35'),
(1146, 404, 'http://www.timefood.store/89.php', 2, NULL, NULL, '2025-09-07 02:15:56', '2025-09-08 21:19:35'),
(1147, 404, 'http://www.timefood.store/noe.php', 2, NULL, NULL, '2025-09-07 02:15:57', '2025-09-08 21:19:35'),
(1148, 404, 'http://www.timefood.store/fe5.php', 3, NULL, NULL, '2025-09-07 02:15:58', '2025-09-12 07:19:40'),
(1149, 404, 'http://www.timefood.store/gg.php', 2, NULL, NULL, '2025-09-07 02:15:58', '2025-09-08 21:19:37'),
(1150, 404, 'http://www.timefood.store/fresh3.php', 2, NULL, NULL, '2025-09-07 02:15:59', '2025-09-08 21:19:37'),
(1151, 404, 'http://www.timefood.store/mo.php', 2, NULL, NULL, '2025-09-07 02:15:59', '2025-09-08 21:19:38'),
(1152, 404, 'http://www.timefood.store/6erg.php', 2, NULL, NULL, '2025-09-07 02:16:00', '2025-09-08 21:19:38'),
(1153, 404, 'http://www.timefood.store/rsnu.php', 2, NULL, NULL, '2025-09-07 02:16:00', '2025-09-08 21:19:38'),
(1154, 404, 'http://www.timefood.store/card.php', 2, NULL, NULL, '2025-09-07 02:16:01', '2025-09-08 21:19:38'),
(1155, 404, 'http://www.timefood.store/aa17.php', 2, NULL, NULL, '2025-09-07 02:16:02', '2025-09-08 21:19:39'),
(1156, 404, 'http://www.timefood.store/admi.php', 2, NULL, NULL, '2025-09-07 02:16:03', '2025-09-08 21:19:39'),
(1157, 404, 'http://www.timefood.store/note.php', 2, NULL, NULL, '2025-09-07 02:16:04', '2025-09-08 21:19:39'),
(1158, 404, 'http://www.timefood.store/png.php', 2, NULL, NULL, '2025-09-07 02:16:04', '2025-09-08 21:19:39'),
(1159, 404, 'http://www.timefood.store/ava.php', 2, NULL, NULL, '2025-09-07 02:16:05', '2025-09-08 21:19:40'),
(1160, 404, 'http://www.timefood.store/resp.php', 2, NULL, NULL, '2025-09-07 02:16:05', '2025-09-08 21:19:40'),
(1161, 404, 'http://www.timefood.store/algox.php', 2, NULL, NULL, '2025-09-07 02:16:06', '2025-09-08 21:19:40'),
(1162, 404, 'http://www.timefood.store/v2.php', 2, NULL, NULL, '2025-09-07 02:16:06', '2025-09-08 21:19:41'),
(1163, 404, 'http://www.timefood.store/hb02ugyh.php', 2, NULL, NULL, '2025-09-07 02:16:07', '2025-09-08 21:19:41'),
(1164, 404, 'http://www.timefood.store/sxb.php', 2, NULL, NULL, '2025-09-07 02:16:07', '2025-09-08 21:19:41'),
(1165, 404, 'http://www.timefood.store/gm.php', 2, NULL, NULL, '2025-09-07 02:16:08', '2025-09-08 21:19:41'),
(1166, 404, 'http://www.timefood.store/jga.php', 2, NULL, NULL, '2025-09-07 02:16:08', '2025-09-08 21:19:42'),
(1167, 404, 'http://www.timefood.store/file5.php', 3, NULL, NULL, '2025-09-07 02:16:09', '2025-09-12 07:19:30'),
(1168, 404, 'http://www.timefood.store/miansha.php', 2, NULL, NULL, '2025-09-07 02:16:09', '2025-09-08 21:19:42'),
(1169, 404, 'http://www.timefood.store/mjq.php', 2, NULL, NULL, '2025-09-07 02:16:10', '2025-09-08 21:19:43'),
(1170, 404, 'http://www.timefood.store/yasnu.php', 2, NULL, NULL, '2025-09-07 02:16:10', '2025-09-08 21:19:43'),
(1171, 404, 'http://www.timefood.store/yanki.php', 2, NULL, NULL, '2025-09-07 02:16:11', '2025-09-08 21:19:43'),
(1172, 404, 'http://www.timefood.store/elf.php', 2, NULL, NULL, '2025-09-07 02:16:11', '2025-09-08 21:19:43'),
(1173, 404, 'http://www.timefood.store/7wom.php', 2, NULL, NULL, '2025-09-07 02:16:12', '2025-09-08 21:19:44'),
(1174, 404, 'http://www.timefood.store/new4.php', 2, NULL, NULL, '2025-09-07 02:16:12', '2025-09-08 21:19:44'),
(1175, 404, 'http://www.timefood.store/pola.php', 2, NULL, NULL, '2025-09-07 02:16:13', '2025-09-08 21:19:44'),
(1176, 404, 'http://www.timefood.store/mbg.php', 2, NULL, NULL, '2025-09-07 02:16:13', '2025-09-08 21:19:44'),
(1177, 404, 'http://www.timefood.store/1a.php', 3, NULL, NULL, '2025-09-07 02:16:14', '2025-09-08 21:19:58'),
(1178, 404, 'http://www.timefood.store/karak.php', 2, NULL, NULL, '2025-09-07 02:16:15', '2025-09-08 21:19:45'),
(1179, 404, 'http://www.timefood.store/loli.php', 2, NULL, NULL, '2025-09-07 02:16:16', '2025-09-08 21:19:45'),
(1180, 404, 'http://www.timefood.store/667.php', 2, NULL, NULL, '2025-09-07 02:16:16', '2025-09-08 21:19:45'),
(1181, 404, 'http://www.timefood.store/a2.php', 2, NULL, NULL, '2025-09-07 02:16:17', '2025-09-08 21:19:46'),
(1182, 404, 'http://www.timefood.store/ertg.php', 2, NULL, NULL, '2025-09-07 02:16:17', '2025-09-08 21:19:46'),
(1183, 404, 'http://www.timefood.store/jlex3.php', 2, NULL, NULL, '2025-09-07 02:16:18', '2025-09-08 21:19:46'),
(1184, 404, 'http://www.timefood.store/cool.php', 2, NULL, NULL, '2025-09-07 02:16:18', '2025-09-08 21:19:46'),
(1185, 404, 'http://www.timefood.store/13.php', 2, NULL, NULL, '2025-09-07 02:16:20', '2025-09-08 21:19:47'),
(1186, 404, 'http://www.timefood.store/lol.php', 2, NULL, NULL, '2025-09-07 02:16:21', '2025-09-08 21:19:47'),
(1187, 404, 'http://www.timefood.store/iov.php', 2, NULL, NULL, '2025-09-07 02:16:21', '2025-09-08 21:19:47'),
(1188, 404, 'http://www.timefood.store/bolt.php', 2, NULL, NULL, '2025-09-07 02:16:22', '2025-09-08 21:19:48'),
(1189, 404, 'http://www.timefood.store/as4AaPasd.php', 2, NULL, NULL, '2025-09-07 02:16:22', '2025-09-08 21:19:48'),
(1190, 404, 'http://www.timefood.store/w3llstore.php', 2, NULL, NULL, '2025-09-07 02:16:23', '2025-09-08 21:19:48'),
(1191, 404, 'http://www.timefood.store/shell20250630.php', 2, NULL, NULL, '2025-09-07 02:16:24', '2025-09-08 21:19:48'),
(1192, 404, 'http://www.timefood.store/aaaa.php', 2, NULL, NULL, '2025-09-07 02:16:24', '2025-09-08 21:19:49'),
(1193, 404, 'http://www.timefood.store/css.php', 3, NULL, NULL, '2025-09-07 02:16:25', '2025-09-12 07:19:43'),
(1194, 404, 'http://www.timefood.store/.lajuju.php', 2, NULL, NULL, '2025-09-07 02:16:25', '2025-09-08 21:19:49'),
(1195, 404, 'http://www.timefood.store/wp-gr.php', 2, NULL, NULL, '2025-09-07 02:16:26', '2025-09-08 21:19:49'),
(1196, 404, 'http://www.timefood.store/ffile.php', 3, NULL, NULL, '2025-09-07 02:16:26', '2025-09-12 07:19:23'),
(1197, 404, 'http://www.timefood.store/trd.php', 2, NULL, NULL, '2025-09-07 02:16:27', '2025-09-08 21:19:50'),
(1198, 404, 'http://www.timefood.store/goh.php', 2, NULL, NULL, '2025-09-07 02:16:27', '2025-09-08 21:19:50'),
(1199, 404, 'http://www.timefood.store/class-t.api.php', 2, NULL, NULL, '2025-09-07 02:16:28', '2025-09-08 21:19:50'),
(1200, 404, 'http://www.timefood.store/tcp.php', 2, NULL, NULL, '2025-09-07 02:16:28', '2025-09-08 21:19:51'),
(1201, 404, 'http://www.timefood.store/ioxi.php', 2, NULL, NULL, '2025-09-07 02:16:30', '2025-09-08 21:19:51'),
(1202, 404, 'http://www.timefood.store/jmfi2.php', 3, NULL, NULL, '2025-09-07 02:16:30', '2025-09-12 07:19:42'),
(1203, 404, 'http://www.timefood.store/zwso.php', 2, NULL, NULL, '2025-09-07 02:16:31', '2025-09-08 21:19:51'),
(1204, 404, 'http://www.timefood.store/jjzsijpj.php', 1, NULL, NULL, '2025-09-07 02:16:31', '2025-09-07 02:16:31'),
(1205, 404, 'http://www.timefood.store/dex.php', 1, NULL, NULL, '2025-09-07 02:16:32', '2025-09-07 02:16:32'),
(1206, 404, 'http://www.timefood.store/520.php', 2, NULL, NULL, '2025-09-07 02:16:33', '2025-09-12 07:19:43'),
(1207, 404, 'http://www.timefood.store/lupo.php', 1, NULL, NULL, '2025-09-07 02:16:33', '2025-09-07 02:16:33'),
(1208, 404, 'http://www.timefood.store/wp-update.php', 2, NULL, NULL, '2025-09-07 02:16:34', '2025-09-12 07:19:43'),
(1209, 404, 'http://www.timefood.store/weo.php', 1, NULL, NULL, '2025-09-07 02:16:34', '2025-09-07 02:16:34'),
(1210, 404, 'http://www.timefood.store/krypton.php', 1, NULL, NULL, '2025-09-07 02:16:35', '2025-09-07 02:16:35'),
(1211, 404, 'http://www.timefood.store/aa.php', 1, NULL, NULL, '2025-09-07 02:16:35', '2025-09-07 02:16:35'),
(1212, 404, 'http://www.timefood.store/file.php', 1, NULL, NULL, '2025-09-07 02:16:36', '2025-09-07 02:16:36'),
(1213, 404, 'http://www.timefood.store/CLA.php', 2, NULL, NULL, '2025-09-07 02:16:36', '2025-09-12 07:19:37'),
(1214, 404, 'http://www.timefood.store/lock360.php', 2, NULL, NULL, '2025-09-07 02:16:37', '2025-09-12 07:19:44'),
(1215, 404, 'http://www.timefood.store/atomlib.php', 2, NULL, NULL, '2025-09-07 02:16:38', '2025-09-12 07:19:44'),
(1216, 404, 'http://www.timefood.store/php.php', 1, NULL, NULL, '2025-09-07 02:16:39', '2025-09-07 02:16:39'),
(1217, 404, 'http://www.timefood.store/goat.php', 1, NULL, NULL, '2025-09-07 02:16:39', '2025-09-07 02:16:39'),
(1218, 404, 'http://www.timefood.store/ez.php', 1, NULL, NULL, '2025-09-07 02:16:41', '2025-09-07 02:16:41'),
(1219, 404, 'http://www.timefood.store/temp.php', 1, NULL, NULL, '2025-09-07 02:16:41', '2025-09-07 02:16:41'),
(1220, 404, 'http://www.timefood.store/abcd.php', 2, NULL, NULL, '2025-09-07 02:16:42', '2025-09-12 07:19:35'),
(1221, 404, 'http://www.timefood.store/we.php', 2, NULL, NULL, '2025-09-07 02:16:43', '2025-09-12 07:19:43'),
(1222, 404, 'http://www.timefood.store/pp.php', 1, NULL, NULL, '2025-09-07 02:16:44', '2025-09-07 02:16:44'),
(1223, 404, 'http://www.timefood.store/co.php', 1, NULL, NULL, '2025-09-07 02:16:44', '2025-09-07 02:16:44'),
(1224, 404, 'http://www.timefood.store/system_log.php', 1, NULL, NULL, '2025-09-07 02:16:45', '2025-09-07 02:16:45'),
(1225, 404, 'http://www.timefood.store/in.php', 1, NULL, NULL, '2025-09-07 02:16:45', '2025-09-07 02:16:45'),
(1226, 404, 'http://www.timefood.store/inputs.php', 1, NULL, NULL, '2025-09-07 02:16:46', '2025-09-07 02:16:46'),
(1227, 404, 'http://www.timefood.store/new.php', 1, NULL, NULL, '2025-09-07 02:16:47', '2025-09-07 02:16:47'),
(1228, 404, 'http://www.timefood.store/num.php', 1, NULL, NULL, '2025-09-07 02:16:48', '2025-09-07 02:16:48'),
(1229, 404, 'http://www.timefood.store/lv.php', 1, NULL, NULL, '2025-09-07 02:16:48', '2025-09-07 02:16:48'),
(1230, 404, 'http://www.timefood.store/helper.php', 1, NULL, NULL, '2025-09-07 02:16:49', '2025-09-07 02:16:49'),
(1231, 404, 'http://www.timefood.store/file32.php', 2, NULL, NULL, '2025-09-07 02:16:49', '2025-09-12 07:19:44'),
(1232, 404, 'http://www.timefood.store/config.php', 1, NULL, NULL, '2025-09-07 02:16:50', '2025-09-07 02:16:50'),
(1233, 404, 'http://www.timefood.store/bless_250808022320.php', 1, NULL, NULL, '2025-09-07 02:16:50', '2025-09-07 02:16:50'),
(1234, 404, 'http://www.timefood.store/axx.php', 1, NULL, NULL, '2025-09-07 02:16:51', '2025-09-07 02:16:51'),
(1235, 404, 'http://www.timefood.store/zadad4dadad1.php', 1, NULL, NULL, '2025-09-07 02:16:51', '2025-09-07 02:16:51'),
(1236, 404, 'http://www.timefood.store/xLB2NXAP.php', 1, NULL, NULL, '2025-09-07 02:16:52', '2025-09-07 02:16:52'),
(1237, 404, 'http://www.timefood.store/file2.php', 2, NULL, NULL, '2025-09-07 02:16:52', '2025-09-12 07:19:29'),
(1238, 404, 'http://www.timefood.store/wsback.php', 1, NULL, NULL, '2025-09-07 02:16:53', '2025-09-07 02:16:53'),
(1239, 404, 'http://www.timefood.store/cfile.php', 2, NULL, NULL, '2025-09-07 02:16:54', '2025-09-12 07:19:22'),
(1240, 404, 'http://www.timefood.store/re.php', 1, NULL, NULL, '2025-09-07 02:16:54', '2025-09-07 02:16:54'),
(1241, 404, 'http://www.timefood.store/wp-trackback.php', 1, NULL, NULL, '2025-09-07 02:16:55', '2025-09-07 02:16:55'),
(1242, 404, 'http://www.timefood.store/Sanskrit.php', 1, NULL, NULL, '2025-09-07 02:16:56', '2025-09-07 02:16:56'),
(1243, 404, 'http://www.timefood.store/asasx.php', 1, NULL, NULL, '2025-09-07 02:16:56', '2025-09-07 02:16:56'),
(1244, 404, 'http://www.timefood.store/aucxcocoxo.php', 1, NULL, NULL, '2025-09-07 02:16:57', '2025-09-07 02:16:57'),
(1245, 404, 'http://www.timefood.store/aucxzso.php', 1, NULL, NULL, '2025-09-07 02:16:57', '2025-09-07 02:16:57'),
(1246, 404, 'http://www.timefood.store/autoload_classmap.php', 1, NULL, NULL, '2025-09-07 02:16:58', '2025-09-07 02:16:58'),
(1247, 404, 'http://www.timefood.store/berax.php', 1, NULL, NULL, '2025-09-07 02:16:58', '2025-09-07 02:16:58'),
(1248, 404, 'http://www.timefood.store/cbrfo.php', 1, NULL, NULL, '2025-09-07 02:16:59', '2025-09-07 02:16:59'),
(1249, 404, 'http://www.timefood.store/dfre.php', 1, NULL, NULL, '2025-09-07 02:17:00', '2025-09-07 02:17:00'),
(1250, 404, 'http://www.timefood.store/disagimons.php', 1, NULL, NULL, '2025-09-07 02:17:01', '2025-09-07 02:17:01'),
(1251, 404, 'http://www.timefood.store/disagreop.php', 1, NULL, NULL, '2025-09-07 02:17:02', '2025-09-07 02:17:02'),
(1252, 404, 'http://www.timefood.store/manager.php', 2, NULL, NULL, '2025-09-07 02:17:03', '2025-09-12 07:19:42'),
(1253, 404, 'http://www.timefood.store/uploan.php', 1, NULL, NULL, '2025-09-07 02:17:03', '2025-09-07 02:17:03'),
(1254, 404, 'http://www.timefood.store/live.php', 1, NULL, NULL, '2025-09-07 02:17:04', '2025-09-07 02:17:04'),
(1255, 404, 'http://www.timefood.store/Lux.php', 1, NULL, NULL, '2025-09-07 02:17:04', '2025-09-07 02:17:04'),
(1256, 404, 'http://www.timefood.store/ext.php', 1, NULL, NULL, '2025-09-07 02:17:05', '2025-09-07 02:17:05'),
(1257, 404, 'http://www.timefood.store/cbgd.php', 1, NULL, NULL, '2025-09-07 02:17:06', '2025-09-07 02:17:06'),
(1258, 404, 'https://mail.timefood.store/phpinfo.php', 1, NULL, NULL, '2025-09-07 10:21:52', '2025-09-07 10:21:52'),
(1259, 404, 'https://mail.timefood.store/phpinfo', 1, NULL, NULL, '2025-09-07 10:21:53', '2025-09-07 10:21:53'),
(1260, 404, 'https://mail.timefood.store/php_info.php', 1, NULL, NULL, '2025-09-07 10:21:54', '2025-09-07 10:21:54'),
(1261, 404, 'https://mail.timefood.store/_profiler/phpinfo', 1, NULL, NULL, '2025-09-07 10:21:54', '2025-09-07 10:21:54'),
(1262, 404, 'https://mail.timefood.store/info', 1, NULL, NULL, '2025-09-07 10:21:56', '2025-09-07 10:21:56'),
(1263, 404, 'http://timefood.store/wp-admin/js/widgets/index.php', 2, NULL, NULL, '2025-09-07 15:18:45', '2025-09-09 16:29:48'),
(1264, 404, 'http://timefood.store/0byte.php', 1, NULL, NULL, '2025-09-07 15:18:46', '2025-09-07 15:18:46'),
(1265, 404, 'http://timefood.store/wp-signin.php', 1, NULL, NULL, '2025-09-07 15:18:51', '2025-09-07 15:18:51'),
(1266, 404, 'http://timefood.store/wp-includes/block-supports/index.php', 1, NULL, NULL, '2025-09-07 15:18:51', '2025-09-07 15:18:51'),
(1267, 404, 'http://timefood.store/wp-admins.php', 1, NULL, NULL, '2025-09-07 15:18:52', '2025-09-07 15:18:52'),
(1268, 404, 'http://timefood.store/wp-includes/IXR/chosen.php', 1, NULL, NULL, '2025-09-07 15:18:54', '2025-09-07 15:18:54'),
(1269, 404, 'http://timefood.store/admin/controller/extension/extension', 1, NULL, NULL, '2025-09-07 15:18:56', '2025-09-07 15:18:56'),
(1270, 404, 'http://timefood.store/sh.php', 1, NULL, NULL, '2025-09-07 15:18:59', '2025-09-07 15:18:59'),
(1271, 404, 'http://timefood.store/wp-includes/Requests/library', 1, NULL, NULL, '2025-09-07 15:18:59', '2025-09-07 15:18:59'),
(1272, 404, 'http://timefood.store/wp-admin/maint/admin.php', 1, NULL, NULL, '2025-09-07 15:19:03', '2025-09-07 15:19:03'),
(1273, 404, 'http://timefood.store//contact', 1, NULL, NULL, '2025-09-07 16:29:55', '2025-09-07 16:29:55'),
(1274, 404, 'http://timefood.store/customer/auth/code/captcha', 1, NULL, NULL, '2025-09-08 05:18:42', '2025-09-08 05:18:42'),
(1275, 404, 'http://www.timefood.store/customer/auth/code/captcha', 2, NULL, NULL, '2025-09-08 07:11:34', '2025-09-13 08:08:16'),
(1276, 404, 'http://www.timefood.store/firebase-cloud-messaging-push-scope', 1, NULL, NULL, '2025-09-08 08:34:16', '2025-09-08 08:34:16'),
(1277, 404, 'https://timefood.store/tel:%20%2B8801712377406', 1, NULL, NULL, '2025-09-08 08:57:27', '2025-09-08 08:57:27'),
(1278, 404, 'https://timefood.store/tel:%2B8801712377406', 1, NULL, NULL, '2025-09-08 08:57:28', '2025-09-08 08:57:28'),
(1279, 404, 'http://timefood.store/wp-admin/setup-config.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:49', '2025-09-08 10:44:49'),
(1280, 404, 'http://timefood.store/wp-admin/install.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:50', '2025-09-08 10:44:50'),
(1281, 404, 'http://timefood.store/wordpress/wp-admin/setup-config.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:50', '2025-09-08 10:44:50'),
(1282, 404, 'http://timefood.store/wordpress/wp-admin/install.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:51', '2025-09-08 10:44:51'),
(1283, 404, 'http://timefood.store/wp/wp-admin/setup-config.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:51', '2025-09-08 10:44:51'),
(1284, 404, 'http://timefood.store/wp/wp-admin/install.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:51', '2025-09-08 10:44:51'),
(1285, 404, 'http://timefood.store/new/wp-admin/setup-config.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:52', '2025-09-08 10:44:52'),
(1286, 404, 'http://timefood.store/new/wp-admin/install.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:52', '2025-09-08 10:44:52'),
(1287, 404, 'http://timefood.store/old/wp-admin/setup-config.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:52', '2025-09-08 10:44:52'),
(1288, 404, 'http://timefood.store/old/wp-admin/install.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:53', '2025-09-08 10:44:53'),
(1289, 404, 'http://timefood.store/blog/wp-admin/setup-config.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:53', '2025-09-08 10:44:53'),
(1290, 404, 'http://timefood.store/blog/wp-admin/install.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:54', '2025-09-08 10:44:54'),
(1291, 404, 'http://timefood.store/test/wp-admin/setup-config.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:54', '2025-09-08 10:44:54'),
(1292, 404, 'http://timefood.store/test/wp-admin/install.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:54', '2025-09-08 10:44:54'),
(1293, 404, 'http://timefood.store/shop/wp-admin/setup-config.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:55', '2025-09-08 10:44:55'),
(1294, 404, 'http://timefood.store/shop/wp-admin/install.php?language=en_GB&step=1', 1, NULL, NULL, '2025-09-08 10:44:55', '2025-09-08 10:44:55'),
(1295, 404, 'http://timefood.store/infos.php', 1, NULL, NULL, '2025-09-08 16:09:28', '2025-09-08 16:09:28'),
(1296, 404, 'http://www.timefood.store/mr.php', 1, NULL, NULL, '2025-09-08 21:19:24', '2025-09-08 21:19:24'),
(1297, 404, 'http://www.timefood.store/wp-xrm.php', 1, NULL, NULL, '2025-09-08 21:19:52', '2025-09-08 21:19:52'),
(1298, 404, 'http://www.timefood.store/r4f_1.php', 1, NULL, NULL, '2025-09-08 21:19:52', '2025-09-08 21:19:52'),
(1299, 404, 'http://www.timefood.store/nbm.php', 1, NULL, NULL, '2025-09-08 21:19:52', '2025-09-08 21:19:52'),
(1300, 404, 'http://www.timefood.store/ff.php', 1, NULL, NULL, '2025-09-08 21:19:52', '2025-09-08 21:19:52'),
(1301, 404, 'http://www.timefood.store/mws.php', 1, NULL, NULL, '2025-09-08 21:19:53', '2025-09-08 21:19:53'),
(1302, 404, 'http://www.timefood.store/alf4.php', 1, NULL, NULL, '2025-09-08 21:19:53', '2025-09-08 21:19:53'),
(1303, 404, 'http://www.timefood.store/mtrje.php', 1, NULL, NULL, '2025-09-08 21:19:53', '2025-09-08 21:19:53'),
(1304, 404, 'http://www.timefood.store/shell1.php', 2, NULL, NULL, '2025-09-08 21:19:53', '2025-09-12 07:19:37'),
(1305, 404, 'http://www.timefood.store/chn.php', 1, NULL, NULL, '2025-09-08 21:19:54', '2025-09-08 21:19:54'),
(1306, 404, 'http://www.timefood.store/mnkalo.php', 1, NULL, NULL, '2025-09-08 21:19:54', '2025-09-08 21:19:54'),
(1307, 404, 'http://www.timefood.store/abt.php', 1, NULL, NULL, '2025-09-08 21:19:55', '2025-09-08 21:19:55'),
(1308, 404, 'http://www.timefood.store/awi.php', 1, NULL, NULL, '2025-09-08 21:19:55', '2025-09-08 21:19:55'),
(1309, 404, 'http://www.timefood.store/malo.php', 1, NULL, NULL, '2025-09-08 21:19:55', '2025-09-08 21:19:55'),
(1310, 404, 'http://www.timefood.store/upgrade.php', 1, NULL, NULL, '2025-09-08 21:19:55', '2025-09-08 21:19:55'),
(1311, 404, 'http://www.timefood.store/10266.php', 1, NULL, NULL, '2025-09-08 21:19:56', '2025-09-08 21:19:56'),
(1312, 404, 'http://www.timefood.store/xpass.php', 1, NULL, NULL, '2025-09-08 21:19:56', '2025-09-08 21:19:56'),
(1313, 404, 'http://www.timefood.store/hg.php', 1, NULL, NULL, '2025-09-08 21:19:56', '2025-09-08 21:19:56'),
(1314, 404, 'http://www.timefood.store/async.php', 1, NULL, NULL, '2025-09-08 21:19:57', '2025-09-08 21:19:57'),
(1315, 404, 'http://www.timefood.store/class.1.php', 2, NULL, NULL, '2025-09-08 21:19:57', '2025-09-12 07:19:38'),
(1316, 404, 'http://www.timefood.store/gfile1.php', 2, NULL, NULL, '2025-09-08 21:19:57', '2025-09-12 07:19:38'),
(1317, 404, 'http://www.timefood.store/whv.php', 1, NULL, NULL, '2025-09-08 21:19:57', '2025-09-08 21:19:57'),
(1318, 404, 'http://www.timefood.store/ioxi-o.php', 1, NULL, NULL, '2025-09-08 21:19:58', '2025-09-08 21:19:58'),
(1319, 404, 'http://www.timefood.store/volka.php', 1, NULL, NULL, '2025-09-08 21:19:58', '2025-09-08 21:19:58'),
(1320, 404, 'http://timefood.store/pages.php', 4, NULL, NULL, '2025-09-09 12:08:28', '2025-09-11 17:01:47'),
(1321, 404, 'http://timefood.store/WSOEnigma.php', 4, NULL, NULL, '2025-09-09 12:08:35', '2025-09-11 17:01:51'),
(1322, 404, 'http://timefood.store/me', 1, NULL, NULL, '2025-09-09 15:57:49', '2025-09-09 15:57:49'),
(1323, 404, 'http://timefood.store/wp-includes/fonts', 1, NULL, NULL, '2025-09-09 16:29:36', '2025-09-09 16:29:36'),
(1324, 404, 'http://timefood.store/wp/wp-admin/includes', 1, NULL, NULL, '2025-09-09 16:29:36', '2025-09-09 16:29:36'),
(1325, 404, 'http://timefood.store/wp-admin/admin-ajax.php', 1, NULL, NULL, '2025-09-09 16:29:37', '2025-09-09 16:29:37'),
(1326, 404, 'http://timefood.store/wp-admin/css/colors/modern', 1, NULL, NULL, '2025-09-09 16:29:37', '2025-09-09 16:29:37'),
(1327, 404, 'http://timefood.store/wp-admin/network', 1, NULL, NULL, '2025-09-09 16:29:38', '2025-09-09 16:29:38'),
(1328, 404, 'http://timefood.store/templates/beez3/error.php', 1, NULL, NULL, '2025-09-09 16:29:40', '2025-09-09 16:29:40'),
(1329, 404, 'http://timefood.store/wp-includes/ID3/autoload_classmap.php', 1, NULL, NULL, '2025-09-09 16:29:40', '2025-09-09 16:29:40'),
(1330, 404, 'http://timefood.store/wp-includes/css/dist', 1, NULL, NULL, '2025-09-09 16:29:41', '2025-09-09 16:29:41'),
(1331, 404, 'http://timefood.store/wp-includes/images/crystal', 1, NULL, NULL, '2025-09-09 16:29:42', '2025-09-09 16:29:42'),
(1332, 404, 'http://timefood.store/wp-admin/wp-conflg.php', 1, NULL, NULL, '2025-09-09 16:29:43', '2025-09-09 16:29:43'),
(1333, 404, 'http://timefood.store/wp-includes/ID3/file.php', 1, NULL, NULL, '2025-09-09 16:29:43', '2025-09-09 16:29:43'),
(1334, 404, 'http://timefood.store/wp-includes/autoload_classmap.php', 1, NULL, NULL, '2025-09-09 16:29:43', '2025-09-09 16:29:43'),
(1335, 404, 'http://timefood.store/wp-content/cong.php', 1, NULL, NULL, '2025-09-09 16:29:44', '2025-09-09 16:29:44'),
(1336, 404, 'http://timefood.store/wp-includes/images/media', 1, NULL, NULL, '2025-09-09 16:29:45', '2025-09-09 16:29:45'),
(1337, 404, 'http://timefood.store/wp-admin/admin.php', 1, NULL, NULL, '2025-09-09 16:29:46', '2025-09-09 16:29:46'),
(1338, 404, 'http://timefood.store/wp-content/languages/chosen.php', 1, NULL, NULL, '2025-09-09 16:29:46', '2025-09-09 16:29:46'),
(1339, 404, 'http://timefood.store/wp-content/plugins', 1, NULL, NULL, '2025-09-09 16:29:47', '2025-09-09 16:29:47'),
(1340, 404, 'http://timefood.store/wp-content/uploads/2024/index.php', 1, NULL, NULL, '2025-09-09 16:29:47', '2025-09-09 16:29:47'),
(1341, 404, 'http://timefood.store/plugins', 1, NULL, NULL, '2025-09-09 16:29:48', '2025-09-09 16:29:48'),
(1342, 404, 'http://timefood.store/wp-content/themes/wp-pridmag/init.php', 1, NULL, NULL, '2025-09-09 16:29:49', '2025-09-09 16:29:49'),
(1343, 404, 'http://timefood.store/wp-content/file.php', 1, NULL, NULL, '2025-09-09 16:29:49', '2025-09-09 16:29:49'),
(1344, 404, 'http://timefood.store/wp-includes/images/smilies/index.php', 1, NULL, NULL, '2025-09-09 16:29:51', '2025-09-09 16:29:51'),
(1345, 404, 'http://timefood.store/wp-includes/blocks', 1, NULL, NULL, '2025-09-09 16:29:53', '2025-09-09 16:29:53'),
(1346, 404, 'http://timefood.store/wp-content/plugins/seoplugins/index.php', 1, NULL, NULL, '2025-09-09 16:29:54', '2025-09-09 16:29:54'),
(1347, 404, 'http://timefood.store/modules/file.php', 1, NULL, NULL, '2025-09-09 16:29:54', '2025-09-09 16:29:54'),
(1348, 404, 'http://timefood.store/wp-admin/css/colors/coffee', 1, NULL, NULL, '2025-09-09 16:29:55', '2025-09-09 16:29:55'),
(1349, 404, 'http://timefood.store/wp-admin/css/colors/sunrise', 1, NULL, NULL, '2025-09-09 16:29:56', '2025-09-09 16:29:56'),
(1350, 404, 'http://timefood.store/wp-admin/network/index.php', 1, NULL, NULL, '2025-09-09 16:29:57', '2025-09-09 16:29:57'),
(1351, 404, 'http://timefood.store/wp-content/uploads/2022', 1, NULL, NULL, '2025-09-09 16:29:58', '2025-09-09 16:29:58'),
(1352, 404, 'http://timefood.store/wp-content/uploads/json.php', 1, NULL, NULL, '2025-09-09 16:29:58', '2025-09-09 16:29:58'),
(1353, 404, 'http://timefood.store/wp-includes/customize/chosen.php', 1, NULL, NULL, '2025-09-09 16:29:59', '2025-09-09 16:29:59'),
(1354, 404, 'http://timefood.store/wp-includes/shell20211028.php', 1, NULL, NULL, '2025-09-09 16:30:00', '2025-09-09 16:30:00'),
(1355, 404, 'http://timefood.store/index/function.php', 1, NULL, NULL, '2025-09-09 16:30:00', '2025-09-09 16:30:00'),
(1356, 404, 'http://timefood.store/wp-content/style-css.php', 1, NULL, NULL, '2025-09-09 16:30:01', '2025-09-09 16:30:01'),
(1357, 404, 'http://timefood.store/wp-includes/Requests', 1, NULL, NULL, '2025-09-09 16:30:02', '2025-09-09 16:30:02'),
(1358, 404, 'http://timefood.store/wp-includes/pomo', 1, NULL, NULL, '2025-09-09 16:30:02', '2025-09-09 16:30:02'),
(1359, 404, 'http://timefood.store/wp-admin/css/colors/light', 1, NULL, NULL, '2025-09-09 16:30:03', '2025-09-09 16:30:03'),
(1360, 404, 'http://timefood.store/wp-admin/css/colors/blue/about.php', 1, NULL, NULL, '2025-09-09 16:30:05', '2025-09-09 16:30:05'),
(1361, 404, 'http://timefood.store/wp-content/alfa.php', 1, NULL, NULL, '2025-09-09 16:30:05', '2025-09-09 16:30:05'),
(1362, 404, 'http://timefood.store/admin/controller/extension/extension/ultra.php', 1, NULL, NULL, '2025-09-09 16:30:07', '2025-09-09 16:30:07'),
(1363, 404, 'http://timefood.store/wp-includes/block-supports', 1, NULL, NULL, '2025-09-09 16:30:08', '2025-09-09 16:30:08'),
(1364, 404, 'http://timefood.store/wp-content/themes/twentytwenty/404.php', 1, NULL, NULL, '2025-09-09 16:30:09', '2025-09-09 16:30:09'),
(1365, 404, 'http://timefood.store/wp-content/upgrade', 1, NULL, NULL, '2025-09-09 16:30:09', '2025-09-09 16:30:09'),
(1366, 404, 'http://timefood.store/wp-admin/user', 1, NULL, NULL, '2025-09-09 16:30:10', '2025-09-09 16:30:10'),
(1367, 404, 'http://timefood.store/wp-admin/user/chosen.php', 1, NULL, NULL, '2025-09-09 16:30:11', '2025-09-09 16:30:11'),
(1368, 404, 'http://timefood.store/wp-includes/file.php', 1, NULL, NULL, '2025-09-09 16:30:11', '2025-09-09 16:30:11'),
(1369, 404, 'http://timefood.store/admin/admin.php', 1, NULL, NULL, '2025-09-09 16:30:12', '2025-09-09 16:30:12'),
(1370, 404, 'http://timefood.store/wp-includes/images/smilies/about.php', 1, NULL, NULL, '2025-09-09 16:30:13', '2025-09-09 16:30:13'),
(1371, 404, 'http://timefood.store/wp-includes/block-patterns', 1, NULL, NULL, '2025-09-09 16:30:14', '2025-09-09 16:30:14'),
(1372, 404, 'http://timefood.store/aspera/faspex', 1, NULL, NULL, '2025-09-09 16:30:15', '2025-09-09 16:30:15'),
(1373, 404, 'http://timefood.store/.well-known/gecko-litespeed.php', 1, NULL, NULL, '2025-09-09 16:30:29', '2025-09-09 16:30:29'),
(1374, 404, 'http://timefood.store/admin/function.php', 1, NULL, NULL, '2025-09-09 16:30:29', '2025-09-09 16:30:29'),
(1375, 404, 'http://timefood.store/wp-admin/network/chosen.php', 1, NULL, NULL, '2025-09-09 16:30:29', '2025-09-09 16:30:29'),
(1376, 404, 'http://timefood.store/wp-content/plugins/hellopress/wp_filemanager.php', 2, NULL, NULL, '2025-09-09 16:30:30', '2025-09-10 22:10:43'),
(1377, 404, 'http://timefood.store/wp-includes/assets/admin.php', 1, NULL, NULL, '2025-09-09 16:30:30', '2025-09-09 16:30:30'),
(1378, 404, 'http://timefood.store/.well-known/classwithtostring.php', 1, NULL, NULL, '2025-09-09 16:30:31', '2025-09-09 16:30:31'),
(1379, 404, 'http://timefood.store/wp-admin/css/colors/ectoplasm/wp-login.php', 1, NULL, NULL, '2025-09-09 16:30:32', '2025-09-09 16:30:32'),
(1380, 404, 'http://timefood.store/wp-content/uploads/2021', 1, NULL, NULL, '2025-09-09 16:30:33', '2025-09-09 16:30:33'),
(1381, 404, 'http://timefood.store/assets/images/doc.php', 1, NULL, NULL, '2025-09-09 16:30:34', '2025-09-09 16:30:34'),
(1382, 404, 'http://timefood.store/wp-admin/js/widgets/about.php', 1, NULL, NULL, '2025-09-09 16:30:35', '2025-09-09 16:30:35'),
(1383, 404, 'http://timefood.store/wp-admin/includes/index.php', 1, NULL, NULL, '2025-09-09 16:30:36', '2025-09-09 16:30:36'),
(1384, 404, 'http://timefood.store/modules', 1, NULL, NULL, '2025-09-09 16:30:38', '2025-09-09 16:30:38'),
(1385, 404, 'http://timefood.store/wp-admin/css/colors/ocean', 1, NULL, NULL, '2025-09-09 16:30:39', '2025-09-09 16:30:39'),
(1386, 404, 'http://timefood.store/admin/upload', 1, NULL, NULL, '2025-09-09 16:30:39', '2025-09-09 16:30:39'),
(1387, 404, 'http://timefood.store/ccx/index.php', 1, NULL, NULL, '2025-09-09 16:30:40', '2025-09-09 16:30:40'),
(1388, 404, 'http://timefood.store/archivarix.cms.php', 1, NULL, NULL, '2025-09-10 00:29:09', '2025-09-10 00:29:09'),
(1389, 404, 'http://timefood.store/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:43', '2025-09-12 06:07:53'),
(1390, 404, 'http://timefood.store/xmlrpc.php?rsd=', 2, NULL, NULL, '2025-09-10 04:24:43', '2025-09-12 06:07:53'),
(1391, 404, 'http://timefood.store/blog/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:44', '2025-09-12 06:07:54'),
(1392, 404, 'http://timefood.store/web/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:44', '2025-09-12 06:07:54'),
(1393, 404, 'http://timefood.store/wordpress/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:45', '2025-09-12 06:07:54'),
(1394, 404, 'http://timefood.store/website/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:45', '2025-09-12 06:07:54'),
(1395, 404, 'http://timefood.store/wp/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:45', '2025-09-12 06:07:54'),
(1396, 404, 'http://timefood.store/news/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:45', '2025-09-12 06:07:54'),
(1397, 404, 'http://timefood.store/2020/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:46', '2025-09-12 06:07:54'),
(1398, 404, 'http://timefood.store/2019/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:46', '2025-09-12 06:07:54'),
(1399, 404, 'http://timefood.store/shop/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:46', '2025-09-12 06:07:55'),
(1400, 404, 'http://timefood.store/wp1/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:47', '2025-09-12 06:07:55'),
(1401, 404, 'http://timefood.store/test/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:47', '2025-09-12 06:07:55'),
(1402, 404, 'http://timefood.store/wp2/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:47', '2025-09-12 06:07:55'),
(1403, 404, 'http://timefood.store/site/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:47', '2025-09-12 06:07:55'),
(1404, 404, 'http://timefood.store/cms/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:48', '2025-09-12 06:07:55'),
(1405, 404, 'http://timefood.store/sito/wp-includes/wlwmanifest.xml', 2, NULL, NULL, '2025-09-10 04:24:48', '2025-09-12 06:07:55'),
(1406, 404, 'https://mail.timefood.store/config.json', 1, NULL, NULL, '2025-09-10 12:00:21', '2025-09-10 12:00:21'),
(1407, 404, 'http://timefood.store/public/assets/front-end/js/\'%20+%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20n.src%20+%20%20%20%20', 1, NULL, NULL, '2025-09-10 21:21:50', '2025-09-10 21:21:50'),
(1408, 404, 'http://timefood.store/public/assets/front-end/vendor/lightgallery.js/dist/js/\'+a+\'', 1, NULL, NULL, '2025-09-10 21:22:18', '2025-09-10 21:22:18'),
(1409, 404, 'http://timefood.store/public/assets/front-end/vendor/lightgallery.js/dist/js/\'+d+\'', 1, NULL, NULL, '2025-09-10 21:22:19', '2025-09-10 21:22:19'),
(1410, 404, 'http://timefood.store/public/assets/front-end/fonts/fontawesome-webfont.woff?v=4.7.0', 1, NULL, NULL, '2025-09-10 21:22:52', '2025-09-10 21:22:52'),
(1411, 404, 'http://timefood.store/public/assets/front-end/css/owl.video.play.png', 1, NULL, NULL, '2025-09-10 21:23:44', '2025-09-10 21:23:44'),
(1412, 404, 'http://timefood.store/mr.php', 1, NULL, NULL, '2025-09-10 22:10:44', '2025-09-10 22:10:44'),
(1413, 404, 'http://timefood.store/pm.php', 1, NULL, NULL, '2025-09-10 22:10:44', '2025-09-10 22:10:44'),
(1414, 404, 'http://timefood.store/vxrl.php', 2, NULL, NULL, '2025-09-10 22:10:45', '2025-09-10 22:11:13'),
(1415, 404, 'http://timefood.store/shorw.php', 1, NULL, NULL, '2025-09-10 22:10:45', '2025-09-10 22:10:45'),
(1416, 404, 'http://timefood.store/gifclass.php', 1, NULL, NULL, '2025-09-10 22:10:45', '2025-09-10 22:10:45'),
(1417, 404, 'http://timefood.store/orm.php', 1, NULL, NULL, '2025-09-10 22:10:45', '2025-09-10 22:10:45'),
(1418, 404, 'http://timefood.store/ioxi2.php', 1, NULL, NULL, '2025-09-10 22:10:46', '2025-09-10 22:10:46'),
(1419, 404, 'http://timefood.store/MARIJUANA.php', 1, NULL, NULL, '2025-09-10 22:10:46', '2025-09-10 22:10:46'),
(1420, 404, 'http://timefood.store/file17.php', 1, NULL, NULL, '2025-09-10 22:10:47', '2025-09-10 22:10:47'),
(1421, 404, 'http://timefood.store/H.php', 1, NULL, NULL, '2025-09-10 22:10:47', '2025-09-10 22:10:47'),
(1422, 404, 'http://timefood.store/zcxb.php', 1, NULL, NULL, '2025-09-10 22:10:47', '2025-09-10 22:10:47'),
(1423, 404, 'http://timefood.store/wpls.php', 1, NULL, NULL, '2025-09-10 22:10:47', '2025-09-10 22:10:47'),
(1424, 404, 'http://timefood.store/testas.php', 1, NULL, NULL, '2025-09-10 22:10:48', '2025-09-10 22:10:48'),
(1425, 404, 'http://timefood.store/nope.php', 1, NULL, NULL, '2025-09-10 22:10:48', '2025-09-10 22:10:48'),
(1426, 404, 'http://timefood.store/reyna.php', 1, NULL, NULL, '2025-09-10 22:10:48', '2025-09-10 22:10:48'),
(1427, 404, 'http://timefood.store/ma1.php', 1, NULL, NULL, '2025-09-10 22:10:49', '2025-09-10 22:10:49'),
(1428, 404, 'http://timefood.store/bypltspd.php', 1, NULL, NULL, '2025-09-10 22:10:49', '2025-09-10 22:10:49'),
(1429, 404, 'http://timefood.store/wp-xx.php', 1, NULL, NULL, '2025-09-10 22:10:50', '2025-09-10 22:10:50'),
(1430, 404, 'http://timefood.store/wp-xm.php', 1, NULL, NULL, '2025-09-10 22:10:50', '2025-09-10 22:10:50'),
(1431, 404, 'http://timefood.store/zeal.php', 1, NULL, NULL, '2025-09-10 22:10:50', '2025-09-10 22:10:50'),
(1432, 404, 'http://timefood.store/h8h9.php', 1, NULL, NULL, '2025-09-10 22:10:50', '2025-09-10 22:10:50'),
(1433, 404, 'http://timefood.store/zasd.php', 1, NULL, NULL, '2025-09-10 22:10:51', '2025-09-10 22:10:51'),
(1434, 404, 'http://timefood.store/xzs.php', 1, NULL, NULL, '2025-09-10 22:10:51', '2025-09-10 22:10:51'),
(1435, 404, 'http://timefood.store/yep.php', 1, NULL, NULL, '2025-09-10 22:10:51', '2025-09-10 22:10:51'),
(1436, 404, 'http://timefood.store/des.php', 1, NULL, NULL, '2025-09-10 22:10:51', '2025-09-10 22:10:51'),
(1437, 404, 'http://timefood.store/xex.php', 1, NULL, NULL, '2025-09-10 22:10:52', '2025-09-10 22:10:52'),
(1438, 404, 'http://timefood.store/tox.php', 1, NULL, NULL, '2025-09-10 22:10:52', '2025-09-10 22:10:52'),
(1439, 404, 'http://timefood.store/racs3.php', 1, NULL, NULL, '2025-09-10 22:10:52', '2025-09-10 22:10:52'),
(1440, 404, 'http://timefood.store/wp-cliner.php', 1, NULL, NULL, '2025-09-10 22:10:53', '2025-09-10 22:10:53'),
(1441, 404, 'http://timefood.store/law.php', 1, NULL, NULL, '2025-09-10 22:10:53', '2025-09-10 22:10:53'),
(1442, 404, 'http://timefood.store/moo.php', 1, NULL, NULL, '2025-09-10 22:10:53', '2025-09-10 22:10:53'),
(1443, 404, 'http://timefood.store/89.php', 1, NULL, NULL, '2025-09-10 22:10:53', '2025-09-10 22:10:53'),
(1444, 404, 'http://timefood.store/noe.php', 1, NULL, NULL, '2025-09-10 22:10:54', '2025-09-10 22:10:54'),
(1445, 404, 'http://timefood.store/fe5.php', 1, NULL, NULL, '2025-09-10 22:10:54', '2025-09-10 22:10:54'),
(1446, 404, 'http://timefood.store/gg.php', 1, NULL, NULL, '2025-09-10 22:10:54', '2025-09-10 22:10:54'),
(1447, 404, 'http://timefood.store/fresh3.php', 1, NULL, NULL, '2025-09-10 22:10:55', '2025-09-10 22:10:55'),
(1448, 404, 'http://timefood.store/mo.php', 1, NULL, NULL, '2025-09-10 22:10:55', '2025-09-10 22:10:55'),
(1449, 404, 'http://timefood.store/6erg.php', 1, NULL, NULL, '2025-09-10 22:10:55', '2025-09-10 22:10:55'),
(1450, 404, 'http://timefood.store/rsnu.php', 1, NULL, NULL, '2025-09-10 22:10:55', '2025-09-10 22:10:55'),
(1451, 404, 'http://timefood.store/card.php', 1, NULL, NULL, '2025-09-10 22:10:56', '2025-09-10 22:10:56'),
(1452, 404, 'http://timefood.store/aa17.php', 1, NULL, NULL, '2025-09-10 22:10:56', '2025-09-10 22:10:56'),
(1453, 404, 'http://timefood.store/admi.php', 1, NULL, NULL, '2025-09-10 22:10:56', '2025-09-10 22:10:56'),
(1454, 404, 'http://timefood.store/note.php', 1, NULL, NULL, '2025-09-10 22:10:57', '2025-09-10 22:10:57'),
(1455, 404, 'http://timefood.store/png.php', 1, NULL, NULL, '2025-09-10 22:10:57', '2025-09-10 22:10:57'),
(1456, 404, 'http://timefood.store/ava.php', 1, NULL, NULL, '2025-09-10 22:10:57', '2025-09-10 22:10:57'),
(1457, 404, 'http://timefood.store/resp.php', 1, NULL, NULL, '2025-09-10 22:10:58', '2025-09-10 22:10:58'),
(1458, 404, 'http://timefood.store/algox.php', 1, NULL, NULL, '2025-09-10 22:10:58', '2025-09-10 22:10:58'),
(1459, 404, 'http://timefood.store/v2.php', 1, NULL, NULL, '2025-09-10 22:10:58', '2025-09-10 22:10:58'),
(1460, 404, 'http://timefood.store/hb02ugyh.php', 1, NULL, NULL, '2025-09-10 22:10:58', '2025-09-10 22:10:58'),
(1461, 404, 'http://timefood.store/sxb.php', 1, NULL, NULL, '2025-09-10 22:10:59', '2025-09-10 22:10:59'),
(1462, 404, 'http://timefood.store/gm.php', 1, NULL, NULL, '2025-09-10 22:10:59', '2025-09-10 22:10:59'),
(1463, 404, 'http://timefood.store/jga.php', 1, NULL, NULL, '2025-09-10 22:10:59', '2025-09-10 22:10:59'),
(1464, 404, 'http://timefood.store/miansha.php', 1, NULL, NULL, '2025-09-10 22:11:00', '2025-09-10 22:11:00'),
(1465, 404, 'http://timefood.store/mjq.php', 1, NULL, NULL, '2025-09-10 22:11:00', '2025-09-10 22:11:00'),
(1466, 404, 'http://timefood.store/yasnu.php', 1, NULL, NULL, '2025-09-10 22:11:00', '2025-09-10 22:11:00'),
(1467, 404, 'http://timefood.store/yanki.php', 1, NULL, NULL, '2025-09-10 22:11:01', '2025-09-10 22:11:01'),
(1468, 404, 'http://timefood.store/elf.php', 1, NULL, NULL, '2025-09-10 22:11:01', '2025-09-10 22:11:01'),
(1469, 404, 'http://timefood.store/7wom.php', 1, NULL, NULL, '2025-09-10 22:11:01', '2025-09-10 22:11:01'),
(1470, 404, 'http://timefood.store/new4.php', 1, NULL, NULL, '2025-09-10 22:11:01', '2025-09-10 22:11:01'),
(1471, 404, 'http://timefood.store/pola.php', 1, NULL, NULL, '2025-09-10 22:11:02', '2025-09-10 22:11:02'),
(1472, 404, 'http://timefood.store/mbg.php', 1, NULL, NULL, '2025-09-10 22:11:02', '2025-09-10 22:11:02'),
(1473, 404, 'http://timefood.store/1a.php', 2, NULL, NULL, '2025-09-10 22:11:02', '2025-09-10 22:11:17'),
(1474, 404, 'http://timefood.store/karak.php', 1, NULL, NULL, '2025-09-10 22:11:03', '2025-09-10 22:11:03'),
(1475, 404, 'http://timefood.store/loli.php', 1, NULL, NULL, '2025-09-10 22:11:03', '2025-09-10 22:11:03'),
(1476, 404, 'http://timefood.store/667.php', 1, NULL, NULL, '2025-09-10 22:11:03', '2025-09-10 22:11:03'),
(1477, 404, 'http://timefood.store/a2.php', 1, NULL, NULL, '2025-09-10 22:11:03', '2025-09-10 22:11:03'),
(1478, 404, 'http://timefood.store/ertg.php', 1, NULL, NULL, '2025-09-10 22:11:04', '2025-09-10 22:11:04'),
(1479, 404, 'http://timefood.store/jlex3.php', 1, NULL, NULL, '2025-09-10 22:11:04', '2025-09-10 22:11:04'),
(1480, 404, 'http://timefood.store/cool.php', 1, NULL, NULL, '2025-09-10 22:11:04', '2025-09-10 22:11:04'),
(1481, 404, 'http://timefood.store/lol.php', 1, NULL, NULL, '2025-09-10 22:11:05', '2025-09-10 22:11:05'),
(1482, 404, 'http://timefood.store/iov.php', 1, NULL, NULL, '2025-09-10 22:11:05', '2025-09-10 22:11:05'),
(1483, 404, 'http://timefood.store/bolt.php', 1, NULL, NULL, '2025-09-10 22:11:05', '2025-09-10 22:11:05'),
(1484, 404, 'http://timefood.store/as4AaPasd.php', 1, NULL, NULL, '2025-09-10 22:11:06', '2025-09-10 22:11:06'),
(1485, 404, 'http://timefood.store/w3llstore.php', 1, NULL, NULL, '2025-09-10 22:11:06', '2025-09-10 22:11:06'),
(1486, 404, 'http://timefood.store/shell20250630.php', 1, NULL, NULL, '2025-09-10 22:11:06', '2025-09-10 22:11:06'),
(1487, 404, 'http://timefood.store/aaaa.php', 1, NULL, NULL, '2025-09-10 22:11:07', '2025-09-10 22:11:07'),
(1488, 404, 'http://timefood.store/.lajuju.php', 1, NULL, NULL, '2025-09-10 22:11:07', '2025-09-10 22:11:07'),
(1489, 404, 'http://timefood.store/wp-gr.php', 1, NULL, NULL, '2025-09-10 22:11:08', '2025-09-10 22:11:08'),
(1490, 404, 'http://timefood.store/ffile.php', 1, NULL, NULL, '2025-09-10 22:11:08', '2025-09-10 22:11:08'),
(1491, 404, 'http://timefood.store/trd.php', 1, NULL, NULL, '2025-09-10 22:11:08', '2025-09-10 22:11:08'),
(1492, 404, 'http://timefood.store/goh.php', 1, NULL, NULL, '2025-09-10 22:11:08', '2025-09-10 22:11:08'),
(1493, 404, 'http://timefood.store/class-t.api.php', 1, NULL, NULL, '2025-09-10 22:11:09', '2025-09-10 22:11:09'),
(1494, 404, 'http://timefood.store/tcp.php', 1, NULL, NULL, '2025-09-10 22:11:09', '2025-09-10 22:11:09'),
(1495, 404, 'http://timefood.store/ioxi.php', 1, NULL, NULL, '2025-09-10 22:11:09', '2025-09-10 22:11:09'),
(1496, 404, 'http://timefood.store/jmfi2.php', 1, NULL, NULL, '2025-09-10 22:11:10', '2025-09-10 22:11:10'),
(1497, 404, 'http://timefood.store/zwso.php', 1, NULL, NULL, '2025-09-10 22:11:10', '2025-09-10 22:11:10'),
(1498, 404, 'http://timefood.store/wp-xrm.php', 1, NULL, NULL, '2025-09-10 22:11:10', '2025-09-10 22:11:10'),
(1499, 404, 'http://timefood.store/r4f_1.php', 1, NULL, NULL, '2025-09-10 22:11:11', '2025-09-10 22:11:11'),
(1500, 404, 'http://timefood.store/nbm.php', 1, NULL, NULL, '2025-09-10 22:11:11', '2025-09-10 22:11:11'),
(1501, 404, 'http://timefood.store/ff.php', 1, NULL, NULL, '2025-09-10 22:11:11', '2025-09-10 22:11:11'),
(1502, 404, 'http://timefood.store/mws.php', 1, NULL, NULL, '2025-09-10 22:11:12', '2025-09-10 22:11:12'),
(1503, 404, 'http://timefood.store/alf4.php', 1, NULL, NULL, '2025-09-10 22:11:12', '2025-09-10 22:11:12'),
(1504, 404, 'http://timefood.store/mtrje.php', 1, NULL, NULL, '2025-09-10 22:11:12', '2025-09-10 22:11:12'),
(1505, 404, 'http://timefood.store/shell1.php', 1, NULL, NULL, '2025-09-10 22:11:12', '2025-09-10 22:11:12'),
(1506, 404, 'http://timefood.store/chn.php', 1, NULL, NULL, '2025-09-10 22:11:13', '2025-09-10 22:11:13'),
(1507, 404, 'http://timefood.store/mnkalo.php', 1, NULL, NULL, '2025-09-10 22:11:13', '2025-09-10 22:11:13'),
(1508, 404, 'http://timefood.store/abt.php', 1, NULL, NULL, '2025-09-10 22:11:14', '2025-09-10 22:11:14');
INSERT INTO `error_logs` (`id`, `status_code`, `url`, `hit_counts`, `redirect_url`, `redirect_status`, `created_at`, `updated_at`) VALUES
(1509, 404, 'http://timefood.store/awi.php', 1, NULL, NULL, '2025-09-10 22:11:14', '2025-09-10 22:11:14'),
(1510, 404, 'http://timefood.store/malo.php', 1, NULL, NULL, '2025-09-10 22:11:14', '2025-09-10 22:11:14'),
(1511, 404, 'http://timefood.store/upgrade.php', 1, NULL, NULL, '2025-09-10 22:11:14', '2025-09-10 22:11:14'),
(1512, 404, 'http://timefood.store/10266.php', 1, NULL, NULL, '2025-09-10 22:11:15', '2025-09-10 22:11:15'),
(1513, 404, 'http://timefood.store/xpass.php', 1, NULL, NULL, '2025-09-10 22:11:15', '2025-09-10 22:11:15'),
(1514, 404, 'http://timefood.store/hg.php', 1, NULL, NULL, '2025-09-10 22:11:15', '2025-09-10 22:11:15'),
(1515, 404, 'http://timefood.store/async.php', 1, NULL, NULL, '2025-09-10 22:11:16', '2025-09-10 22:11:16'),
(1516, 404, 'http://timefood.store/class.1.php', 1, NULL, NULL, '2025-09-10 22:11:16', '2025-09-10 22:11:16'),
(1517, 404, 'http://timefood.store/gfile1.php', 1, NULL, NULL, '2025-09-10 22:11:16', '2025-09-10 22:11:16'),
(1518, 404, 'http://timefood.store/whv.php', 1, NULL, NULL, '2025-09-10 22:11:16', '2025-09-10 22:11:16'),
(1519, 404, 'http://timefood.store/volka.php', 1, NULL, NULL, '2025-09-10 22:11:17', '2025-09-10 22:11:17'),
(1520, 404, 'http://www.timefood.store/error.php', 1, NULL, NULL, '2025-09-12 07:19:21', '2025-09-12 07:19:21'),
(1521, 404, 'http://www.timefood.store/031.php', 1, NULL, NULL, '2025-09-12 07:19:21', '2025-09-12 07:19:21'),
(1522, 404, 'http://www.timefood.store/ilex.php', 2, NULL, NULL, '2025-09-12 07:19:21', '2025-09-12 07:19:45'),
(1523, 404, 'http://www.timefood.store/afile.php', 1, NULL, NULL, '2025-09-12 07:19:22', '2025-09-12 07:19:22'),
(1524, 404, 'http://www.timefood.store/bfile.php', 1, NULL, NULL, '2025-09-12 07:19:22', '2025-09-12 07:19:22'),
(1525, 404, 'http://www.timefood.store/dfile.php', 1, NULL, NULL, '2025-09-12 07:19:22', '2025-09-12 07:19:22'),
(1526, 404, 'http://www.timefood.store/efile.php', 1, NULL, NULL, '2025-09-12 07:19:23', '2025-09-12 07:19:23'),
(1527, 404, 'http://www.timefood.store/gfile.php', 1, NULL, NULL, '2025-09-12 07:19:23', '2025-09-12 07:19:23'),
(1528, 404, 'http://www.timefood.store/hfile.php', 1, NULL, NULL, '2025-09-12 07:19:24', '2025-09-12 07:19:24'),
(1529, 404, 'http://www.timefood.store/ifile.php', 1, NULL, NULL, '2025-09-12 07:19:24', '2025-09-12 07:19:24'),
(1530, 404, 'http://www.timefood.store/jfile.php', 1, NULL, NULL, '2025-09-12 07:19:24', '2025-09-12 07:19:24'),
(1531, 404, 'http://www.timefood.store/kfile.php', 1, NULL, NULL, '2025-09-12 07:19:24', '2025-09-12 07:19:24'),
(1532, 404, 'http://www.timefood.store/lfile.php', 1, NULL, NULL, '2025-09-12 07:19:25', '2025-09-12 07:19:25'),
(1533, 404, 'http://www.timefood.store/mfile.php', 1, NULL, NULL, '2025-09-12 07:19:25', '2025-09-12 07:19:25'),
(1534, 404, 'http://www.timefood.store/nfile.php', 1, NULL, NULL, '2025-09-12 07:19:25', '2025-09-12 07:19:25'),
(1535, 404, 'http://www.timefood.store/ofile.php', 1, NULL, NULL, '2025-09-12 07:19:25', '2025-09-12 07:19:25'),
(1536, 404, 'http://www.timefood.store/pfile.php', 1, NULL, NULL, '2025-09-12 07:19:26', '2025-09-12 07:19:26'),
(1537, 404, 'http://www.timefood.store/qfile.php', 1, NULL, NULL, '2025-09-12 07:19:26', '2025-09-12 07:19:26'),
(1538, 404, 'http://www.timefood.store/rfile.php', 1, NULL, NULL, '2025-09-12 07:19:26', '2025-09-12 07:19:26'),
(1539, 404, 'http://www.timefood.store/sfile.php', 1, NULL, NULL, '2025-09-12 07:19:26', '2025-09-12 07:19:26'),
(1540, 404, 'http://www.timefood.store/tfile.php', 1, NULL, NULL, '2025-09-12 07:19:27', '2025-09-12 07:19:27'),
(1541, 404, 'http://www.timefood.store/ufile.php', 1, NULL, NULL, '2025-09-12 07:19:27', '2025-09-12 07:19:27'),
(1542, 404, 'http://www.timefood.store/vfile.php', 1, NULL, NULL, '2025-09-12 07:19:27', '2025-09-12 07:19:27'),
(1543, 404, 'http://www.timefood.store/wfile.php', 1, NULL, NULL, '2025-09-12 07:19:27', '2025-09-12 07:19:27'),
(1544, 404, 'http://www.timefood.store/xfile.php', 1, NULL, NULL, '2025-09-12 07:19:28', '2025-09-12 07:19:28'),
(1545, 404, 'http://www.timefood.store/yfile.php', 1, NULL, NULL, '2025-09-12 07:19:28', '2025-09-12 07:19:28'),
(1546, 404, 'http://www.timefood.store/zfile.php', 1, NULL, NULL, '2025-09-12 07:19:28', '2025-09-12 07:19:28'),
(1547, 404, 'http://www.timefood.store/file0.php', 1, NULL, NULL, '2025-09-12 07:19:29', '2025-09-12 07:19:29'),
(1548, 404, 'http://www.timefood.store/file1.php', 1, NULL, NULL, '2025-09-12 07:19:29', '2025-09-12 07:19:29'),
(1549, 404, 'http://www.timefood.store/file3.php', 1, NULL, NULL, '2025-09-12 07:19:29', '2025-09-12 07:19:29'),
(1550, 404, 'http://www.timefood.store/file4.php', 1, NULL, NULL, '2025-09-12 07:19:30', '2025-09-12 07:19:30'),
(1551, 404, 'http://www.timefood.store/file6.php', 1, NULL, NULL, '2025-09-12 07:19:30', '2025-09-12 07:19:30'),
(1552, 404, 'http://www.timefood.store/file7.php', 1, NULL, NULL, '2025-09-12 07:19:30', '2025-09-12 07:19:30'),
(1553, 404, 'http://www.timefood.store/file8.php', 1, NULL, NULL, '2025-09-12 07:19:31', '2025-09-12 07:19:31'),
(1554, 404, 'http://www.timefood.store/file9.php', 1, NULL, NULL, '2025-09-12 07:19:31', '2025-09-12 07:19:31'),
(1555, 404, 'http://www.timefood.store/file10.php', 1, NULL, NULL, '2025-09-12 07:19:31', '2025-09-12 07:19:31'),
(1556, 404, 'http://www.timefood.store/file11.php', 1, NULL, NULL, '2025-09-12 07:19:31', '2025-09-12 07:19:31'),
(1557, 404, 'http://www.timefood.store/file12.php', 1, NULL, NULL, '2025-09-12 07:19:32', '2025-09-12 07:19:32'),
(1558, 404, 'http://www.timefood.store/file13.php', 1, NULL, NULL, '2025-09-12 07:19:32', '2025-09-12 07:19:32'),
(1559, 404, 'http://www.timefood.store/file14.php', 1, NULL, NULL, '2025-09-12 07:19:32', '2025-09-12 07:19:32'),
(1560, 404, 'http://www.timefood.store/file15.php', 1, NULL, NULL, '2025-09-12 07:19:33', '2025-09-12 07:19:33'),
(1561, 404, 'http://www.timefood.store/file16.php', 1, NULL, NULL, '2025-09-12 07:19:33', '2025-09-12 07:19:33'),
(1562, 404, 'http://www.timefood.store/file18.php', 1, NULL, NULL, '2025-09-12 07:19:33', '2025-09-12 07:19:33'),
(1563, 404, 'http://www.timefood.store/file19.php', 1, NULL, NULL, '2025-09-12 07:19:34', '2025-09-12 07:19:34'),
(1564, 404, 'http://www.timefood.store/file20.php', 1, NULL, NULL, '2025-09-12 07:19:34', '2025-09-12 07:19:34'),
(1565, 404, 'http://www.timefood.store/file403.php', 1, NULL, NULL, '2025-09-12 07:19:34', '2025-09-12 07:19:34'),
(1566, 404, 'http://www.timefood.store/file404.php', 1, NULL, NULL, '2025-09-12 07:19:34', '2025-09-12 07:19:34'),
(1567, 404, 'http://www.timefood.store/k.php', 1, NULL, NULL, '2025-09-12 07:19:35', '2025-09-12 07:19:35'),
(1568, 404, 'http://www.timefood.store/file88.php', 1, NULL, NULL, '2025-09-12 07:19:35', '2025-09-12 07:19:35'),
(1569, 404, 'http://www.timefood.store/--.php', 1, NULL, NULL, '2025-09-12 07:19:35', '2025-09-12 07:19:35'),
(1570, 404, 'http://www.timefood.store/jjlin.php', 1, NULL, NULL, '2025-09-12 07:19:36', '2025-09-12 07:19:36'),
(1571, 404, 'http://www.timefood.store/gifclass4.php', 1, NULL, NULL, '2025-09-12 07:19:36', '2025-09-12 07:19:36'),
(1572, 404, 'http://www.timefood.store/ilex2.php', 1, NULL, NULL, '2025-09-12 07:19:36', '2025-09-12 07:19:36'),
(1573, 404, 'http://www.timefood.store/ppsu.php', 1, NULL, NULL, '2025-09-12 07:19:36', '2025-09-12 07:19:36'),
(1574, 404, 'http://www.timefood.store/lala.php', 1, NULL, NULL, '2025-09-12 07:19:37', '2025-09-12 07:19:37'),
(1575, 404, 'http://www.timefood.store/fe.php', 1, NULL, NULL, '2025-09-12 07:19:38', '2025-09-12 07:19:38'),
(1576, 404, 'http://www.timefood.store/.well-known/acme-challenge/about.php', 1, NULL, NULL, '2025-09-12 07:19:39', '2025-09-12 07:19:39'),
(1577, 404, 'http://www.timefood.store/fe0.php', 1, NULL, NULL, '2025-09-12 07:19:39', '2025-09-12 07:19:39'),
(1578, 404, 'http://www.timefood.store/fe1.php', 1, NULL, NULL, '2025-09-12 07:19:39', '2025-09-12 07:19:39'),
(1579, 404, 'http://www.timefood.store/fe2.php', 1, NULL, NULL, '2025-09-12 07:19:39', '2025-09-12 07:19:39'),
(1580, 404, 'http://www.timefood.store/fe3.php', 1, NULL, NULL, '2025-09-12 07:19:40', '2025-09-12 07:19:40'),
(1581, 404, 'http://www.timefood.store/fe4.php', 1, NULL, NULL, '2025-09-12 07:19:40', '2025-09-12 07:19:40'),
(1582, 404, 'http://www.timefood.store/fe6.php', 1, NULL, NULL, '2025-09-12 07:19:40', '2025-09-12 07:19:40'),
(1583, 404, 'http://www.timefood.store/fe7.php', 1, NULL, NULL, '2025-09-12 07:19:41', '2025-09-12 07:19:41'),
(1584, 404, 'http://www.timefood.store/fe8.php', 1, NULL, NULL, '2025-09-12 07:19:41', '2025-09-12 07:19:41'),
(1585, 404, 'http://www.timefood.store/fe9.php', 1, NULL, NULL, '2025-09-12 07:19:41', '2025-09-12 07:19:41'),
(1586, 404, 'http://www.timefood.store/fe10.php', 1, NULL, NULL, '2025-09-12 07:19:41', '2025-09-12 07:19:41'),
(1587, 404, 'http://www.timefood.store/cccc.php', 1, NULL, NULL, '2025-09-12 07:19:42', '2025-09-12 07:19:42'),
(1588, 404, 'http://www.timefood.store/eauu.php', 1, NULL, NULL, '2025-09-12 07:19:42', '2025-09-12 07:19:42'),
(1589, 404, 'http://www.timefood.store/hexx.php', 1, NULL, NULL, '2025-09-12 07:19:44', '2025-09-12 07:19:44'),
(1590, 404, 'http://www.timefood.store/errorfile.php', 1, NULL, NULL, '2025-09-12 07:19:45', '2025-09-12 07:19:45'),
(1591, 404, 'http://www.timefood.store/claa.php', 1, NULL, NULL, '2025-09-12 07:19:45', '2025-09-12 07:19:45'),
(1592, 404, 'https://timefood.store//timefood.store/public/assets/front-end/js/slick.js', 7, NULL, NULL, '2025-09-12 21:34:59', '2025-09-12 21:38:43'),
(1593, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/simplebar/dist/simplebar.min.js', 7, NULL, NULL, '2025-09-12 21:34:59', '2025-09-12 21:38:43'),
(1594, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/bootstrap/dist/js/bootstrap.bundle.min.js', 7, NULL, NULL, '2025-09-12 21:34:59', '2025-09-12 21:38:46'),
(1595, 404, 'https://timefood.store//timefood.store/public/assets/front-end/js/sweet_alert.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:45'),
(1596, 404, 'https://timefood.store//www.gstatic.com/firebasejs/8.3.2/firebase-auth.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:43'),
(1597, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/bs-custom-file-input/dist/bs-custom-file-input.min.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:43'),
(1598, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/lg-video.js/dist/lg-video.min.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:45'),
(1599, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:43'),
(1600, 404, 'https://timefood.store//timefood.store/public/assets/front-end/js/theme.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:45'),
(1601, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/drift-zoom/dist/Drift.min.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:43'),
(1602, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/tiny-slider/dist/min/tiny-slider.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:43'),
(1603, 404, 'https://timefood.store//timefood.store/public/js/lightbox.min.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:46'),
(1604, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/lightgallery.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:43'),
(1605, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/lightgallery.js/dist/js/lightgallery.min.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:43'),
(1606, 404, 'https://timefood.store//www.gstatic.com/firebasejs/8.3.2/firebase-app.js', 7, NULL, NULL, '2025-09-12 21:35:00', '2025-09-12 21:38:46'),
(1607, 404, 'https://timefood.store//timefood.store/firebase-messaging-sw.js', 7, NULL, NULL, '2025-09-12 21:35:01', '2025-09-12 21:38:43'),
(1608, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/jquery/dist/jquery-2.2.4.min.js', 7, NULL, NULL, '2025-09-12 21:35:01', '2025-09-12 21:38:46'),
(1609, 404, 'https://timefood.store//www.gstatic.com/firebasejs/8.3.2/firebase-messaging.js', 7, NULL, NULL, '2025-09-12 21:35:01', '2025-09-12 21:38:43'),
(1610, 404, 'https://timefood.store//timefood.store/public/assets/front-end/js/owl.carousel.min.js', 7, NULL, NULL, '2025-09-12 21:35:01', '2025-09-12 21:38:43'),
(1611, 404, 'https://timefood.store//timefood.store/public/assets/front-end/js/home.js', 7, NULL, NULL, '2025-09-12 21:35:01', '2025-09-12 21:38:43'),
(1612, 404, 'https://timefood.store//timefood.store/public/assets/back-end/js/toastr.js', 7, NULL, NULL, '2025-09-12 21:35:01', '2025-09-12 21:38:45'),
(1613, 404, 'https://timefood.store//timefood.store/public/assets/front-end/vendor/firebase/firebase.min.js', 7, NULL, NULL, '2025-09-12 21:35:01', '2025-09-12 21:38:45'),
(1614, 404, 'https://timefood.store//timefood.store/public/assets/front-end/js/custom.js', 7, NULL, NULL, '2025-09-12 21:35:02', '2025-09-12 21:38:42'),
(1615, 404, 'https://timefood.store/config.json', 2, NULL, NULL, '2025-09-12 22:34:11', '2025-09-13 21:01:45'),
(1616, 404, 'http://timefood.store/contact/code/captcha', 1, NULL, NULL, '2025-09-13 04:59:38', '2025-09-13 04:59:38'),
(1617, 404, 'https://www.timefood.store/config.json', 2, NULL, NULL, '2025-09-13 14:44:56', '2025-09-13 21:01:46'),
(1618, 404, 'http://www.timefood.store/@vite/env', 1, NULL, NULL, '2025-09-13 21:01:32', '2025-09-13 21:01:32'),
(1619, 404, 'http://www.timefood.store/actuator/env', 1, NULL, NULL, '2025-09-13 21:01:32', '2025-09-13 21:01:32'),
(1620, 404, 'http://timefood.store/@vite/env', 1, NULL, NULL, '2025-09-13 21:01:33', '2025-09-13 21:01:33'),
(1621, 404, 'http://www.timefood.store/server', 1, NULL, NULL, '2025-09-13 21:01:33', '2025-09-13 21:01:33'),
(1622, 404, 'http://timefood.store/actuator/env', 1, NULL, NULL, '2025-09-13 21:01:33', '2025-09-13 21:01:33'),
(1623, 404, 'http://www.timefood.store/.vscode/sftp.json', 1, NULL, NULL, '2025-09-13 21:01:33', '2025-09-13 21:01:33'),
(1624, 404, 'http://timefood.store/server', 1, NULL, NULL, '2025-09-13 21:01:34', '2025-09-13 21:01:34'),
(1625, 404, 'http://www.timefood.store/about', 1, NULL, NULL, '2025-09-13 21:01:34', '2025-09-13 21:01:34'),
(1626, 404, 'http://timefood.store/.vscode/sftp.json', 1, NULL, NULL, '2025-09-13 21:01:34', '2025-09-13 21:01:34'),
(1627, 404, 'http://www.timefood.store/debug/default/view?panel=config', 1, NULL, NULL, '2025-09-13 21:01:34', '2025-09-13 21:01:34'),
(1628, 404, 'http://timefood.store/about', 1, NULL, NULL, '2025-09-13 21:01:35', '2025-09-13 21:01:35'),
(1629, 404, 'http://www.timefood.store/v2/_catalog', 1, NULL, NULL, '2025-09-13 21:01:35', '2025-09-13 21:01:35'),
(1630, 404, 'http://www.timefood.store/ecp/Current/exporttool/microsoft.exchange.ediscovery.exporttool.application', 1, NULL, NULL, '2025-09-13 21:01:35', '2025-09-13 21:01:35'),
(1631, 404, 'http://timefood.store/debug/default/view?panel=config', 1, NULL, NULL, '2025-09-13 21:01:35', '2025-09-13 21:01:35'),
(1632, 404, 'https://timefood.store/@vite/env', 1, NULL, NULL, '2025-09-13 21:01:36', '2025-09-13 21:01:36'),
(1633, 404, 'https://www.timefood.store/@vite/env', 1, NULL, NULL, '2025-09-13 21:01:36', '2025-09-13 21:01:36'),
(1634, 404, 'http://timefood.store/v2/_catalog', 1, NULL, NULL, '2025-09-13 21:01:36', '2025-09-13 21:01:36'),
(1635, 404, 'http://www.timefood.store/login.action', 1, NULL, NULL, '2025-09-13 21:01:36', '2025-09-13 21:01:36'),
(1636, 404, 'https://timefood.store/actuator/env', 1, NULL, NULL, '2025-09-13 21:01:36', '2025-09-13 21:01:36'),
(1637, 404, 'https://www.timefood.store/actuator/env', 1, NULL, NULL, '2025-09-13 21:01:37', '2025-09-13 21:01:37'),
(1638, 404, 'http://timefood.store/ecp/Current/exporttool/microsoft.exchange.ediscovery.exporttool.application', 1, NULL, NULL, '2025-09-13 21:01:37', '2025-09-13 21:01:37'),
(1639, 404, 'http://www.timefood.store/_all_dbs', 1, NULL, NULL, '2025-09-13 21:01:37', '2025-09-13 21:01:37'),
(1640, 404, 'https://timefood.store/server', 1, NULL, NULL, '2025-09-13 21:01:37', '2025-09-13 21:01:37'),
(1641, 404, 'http://www.timefood.store/.DS_Store', 1, NULL, NULL, '2025-09-13 21:01:37', '2025-09-13 21:01:37'),
(1642, 404, 'https://www.timefood.store/server', 1, NULL, NULL, '2025-09-13 21:01:37', '2025-09-13 21:01:37'),
(1643, 404, 'http://timefood.store/login.action', 1, NULL, NULL, '2025-09-13 21:01:38', '2025-09-13 21:01:38'),
(1644, 404, 'https://timefood.store/.vscode/sftp.json', 1, NULL, NULL, '2025-09-13 21:01:38', '2025-09-13 21:01:38'),
(1645, 404, 'https://www.timefood.store/.vscode/sftp.json', 1, NULL, NULL, '2025-09-13 21:01:38', '2025-09-13 21:01:38'),
(1646, 404, 'http://timefood.store/_all_dbs', 1, NULL, NULL, '2025-09-13 21:01:38', '2025-09-13 21:01:38'),
(1647, 404, 'https://timefood.store/about', 1, NULL, NULL, '2025-09-13 21:01:38', '2025-09-13 21:01:38'),
(1648, 404, 'http://www.timefood.store/s/0353e27363e24373e2930323/_/;/META-INF/maven/com.atlassian.jira/jira-webapp-dist/pom.properties', 1, NULL, NULL, '2025-09-13 21:01:38', '2025-09-13 21:01:38'),
(1649, 404, 'https://www.timefood.store/about', 1, NULL, NULL, '2025-09-13 21:01:39', '2025-09-13 21:01:39'),
(1650, 404, 'http://timefood.store/.DS_Store', 1, NULL, NULL, '2025-09-13 21:01:39', '2025-09-13 21:01:39'),
(1651, 404, 'http://www.timefood.store/config.json', 1, NULL, NULL, '2025-09-13 21:01:39', '2025-09-13 21:01:39'),
(1652, 404, 'https://timefood.store/debug/default/view?panel=config', 1, NULL, NULL, '2025-09-13 21:01:39', '2025-09-13 21:01:39'),
(1653, 404, 'http://www.timefood.store/telescope/requests', 1, NULL, NULL, '2025-09-13 21:01:39', '2025-09-13 21:01:39'),
(1654, 404, 'https://www.timefood.store/debug/default/view?panel=config', 1, NULL, NULL, '2025-09-13 21:01:39', '2025-09-13 21:01:39'),
(1655, 404, 'https://timefood.store/v2/_catalog', 1, NULL, NULL, '2025-09-13 21:01:39', '2025-09-13 21:01:39'),
(1656, 404, 'http://www.timefood.store/info.php', 1, NULL, NULL, '2025-09-13 21:01:40', '2025-09-13 21:01:40'),
(1657, 404, 'https://www.timefood.store/v2/_catalog', 1, NULL, NULL, '2025-09-13 21:01:40', '2025-09-13 21:01:40'),
(1658, 404, 'https://timefood.store/ecp/Current/exporttool/microsoft.exchange.ediscovery.exporttool.application', 1, NULL, NULL, '2025-09-13 21:01:40', '2025-09-13 21:01:40'),
(1659, 404, 'http://timefood.store/s/0353e27363e24373e2930323/_/;/META-INF/maven/com.atlassian.jira/jira-webapp-dist/pom.properties', 1, NULL, NULL, '2025-09-13 21:01:40', '2025-09-13 21:01:40'),
(1660, 404, 'https://www.timefood.store/ecp/Current/exporttool/microsoft.exchange.ediscovery.exporttool.application', 1, NULL, NULL, '2025-09-13 21:01:41', '2025-09-13 21:01:41'),
(1661, 404, 'http://timefood.store/config.json', 1, NULL, NULL, '2025-09-13 21:01:41', '2025-09-13 21:01:41'),
(1662, 404, 'https://timefood.store/login.action', 1, NULL, NULL, '2025-09-13 21:01:41', '2025-09-13 21:01:41'),
(1663, 404, 'http://timefood.store/telescope/requests', 1, NULL, NULL, '2025-09-13 21:01:41', '2025-09-13 21:01:41'),
(1664, 404, 'https://www.timefood.store/login.action', 1, NULL, NULL, '2025-09-13 21:01:42', '2025-09-13 21:01:42'),
(1665, 404, 'https://timefood.store/_all_dbs', 1, NULL, NULL, '2025-09-13 21:01:42', '2025-09-13 21:01:42'),
(1666, 404, 'https://www.timefood.store/_all_dbs', 1, NULL, NULL, '2025-09-13 21:01:42', '2025-09-13 21:01:42'),
(1667, 404, 'https://timefood.store/.DS_Store', 1, NULL, NULL, '2025-09-13 21:01:42', '2025-09-13 21:01:42'),
(1668, 404, 'https://www.timefood.store/.DS_Store', 1, NULL, NULL, '2025-09-13 21:01:43', '2025-09-13 21:01:43'),
(1669, 404, 'https://timefood.store/s/0353e27363e24373e2930323/_/;/META-INF/maven/com.atlassian.jira/jira-webapp-dist/pom.properties', 1, NULL, NULL, '2025-09-13 21:01:44', '2025-09-13 21:01:44'),
(1670, 404, 'https://www.timefood.store/s/0353e27363e24373e2930323/_/;/META-INF/maven/com.atlassian.jira/jira-webapp-dist/pom.properties', 1, NULL, NULL, '2025-09-13 21:01:45', '2025-09-13 21:01:45'),
(1671, 404, 'https://timefood.store/telescope/requests', 1, NULL, NULL, '2025-09-13 21:01:45', '2025-09-13 21:01:45'),
(1672, 404, 'https://timefood.store/info.php', 1, NULL, NULL, '2025-09-13 21:01:46', '2025-09-13 21:01:46'),
(1673, 404, 'https://www.timefood.store/telescope/requests', 1, NULL, NULL, '2025-09-13 21:01:46', '2025-09-13 21:01:46'),
(1674, 404, 'https://www.timefood.store/info.php', 1, NULL, NULL, '2025-09-13 21:01:47', '2025-09-13 21:01:47'),
(1675, 404, 'https://timefood.store/aa.php', 1, NULL, NULL, '2025-09-13 22:19:03', '2025-09-13 22:19:03'),
(1676, 404, 'https://timefood.store/about.php', 1, NULL, NULL, '2025-09-13 22:19:04', '2025-09-13 22:19:04'),
(1677, 404, 'https://timefood.store/admin.php', 1, NULL, NULL, '2025-09-13 22:19:04', '2025-09-13 22:19:04'),
(1678, 404, 'https://timefood.store/akc.php', 1, NULL, NULL, '2025-09-13 22:19:05', '2025-09-13 22:19:05'),
(1679, 404, 'https://timefood.store/alfa.php', 1, NULL, NULL, '2025-09-13 22:19:05', '2025-09-13 22:19:05'),
(1680, 404, 'https://timefood.store/asasx.php', 1, NULL, NULL, '2025-09-13 22:19:06', '2025-09-13 22:19:06'),
(1681, 404, 'https://timefood.store/atomlib.php', 1, NULL, NULL, '2025-09-13 22:19:06', '2025-09-13 22:19:06'),
(1682, 404, 'https://timefood.store/autoload_classmap.php', 1, NULL, NULL, '2025-09-13 22:19:07', '2025-09-13 22:19:07'),
(1683, 404, 'https://timefood.store/autoload_classmap/function.php', 1, NULL, NULL, '2025-09-13 22:19:07', '2025-09-13 22:19:07'),
(1684, 404, 'https://timefood.store/buy.php', 1, NULL, NULL, '2025-09-13 22:19:08', '2025-09-13 22:19:08'),
(1685, 404, 'https://timefood.store/chosen.php', 1, NULL, NULL, '2025-09-13 22:19:09', '2025-09-13 22:19:09'),
(1686, 404, 'https://timefood.store/classwithtostring.php', 1, NULL, NULL, '2025-09-13 22:19:09', '2025-09-13 22:19:09'),
(1687, 404, 'https://timefood.store/cong.php', 1, NULL, NULL, '2025-09-13 22:19:10', '2025-09-13 22:19:10'),
(1688, 404, 'https://timefood.store/edit.php', 1, NULL, NULL, '2025-09-13 22:19:10', '2025-09-13 22:19:10'),
(1689, 404, 'https://timefood.store/file.php', 1, NULL, NULL, '2025-09-13 22:19:11', '2025-09-13 22:19:11'),
(1690, 404, 'https://timefood.store/file2.php', 1, NULL, NULL, '2025-09-13 22:19:11', '2025-09-13 22:19:11'),
(1691, 404, 'https://timefood.store/flower.php', 1, NULL, NULL, '2025-09-13 22:19:12', '2025-09-13 22:19:12'),
(1692, 404, 'https://timefood.store/gecko.php', 1, NULL, NULL, '2025-09-13 22:19:13', '2025-09-13 22:19:13'),
(1693, 404, 'https://timefood.store/goat.php', 1, NULL, NULL, '2025-09-13 22:19:13', '2025-09-13 22:19:13'),
(1694, 404, 'https://timefood.store/goods.php', 1, NULL, NULL, '2025-09-13 22:19:14', '2025-09-13 22:19:14'),
(1695, 404, 'https://timefood.store/ioxi-o.php', 1, NULL, NULL, '2025-09-13 22:19:15', '2025-09-13 22:19:15'),
(1696, 404, 'https://timefood.store/lock360.php', 1, NULL, NULL, '2025-09-13 22:19:15', '2025-09-13 22:19:15'),
(1697, 404, 'https://timefood.store/makeasmtp.php', 1, NULL, NULL, '2025-09-13 22:19:16', '2025-09-13 22:19:16'),
(1698, 404, 'https://timefood.store/mm.php', 1, NULL, NULL, '2025-09-13 22:19:16', '2025-09-13 22:19:16'),
(1699, 404, 'https://timefood.store/nc4.php', 1, NULL, NULL, '2025-09-13 22:19:17', '2025-09-13 22:19:17'),
(1700, 404, 'https://timefood.store/tinyfilemanager.php', 1, NULL, NULL, '2025-09-13 22:19:17', '2025-09-13 22:19:17'),
(1701, 404, 'https://timefood.store/users.php', 1, NULL, NULL, '2025-09-13 22:19:18', '2025-09-13 22:19:18'),
(1702, 404, 'https://timefood.store/w.php', 1, NULL, NULL, '2025-09-13 22:19:19', '2025-09-13 22:19:19'),
(1703, 404, 'https://timefood.store/wp-admin', 1, NULL, NULL, '2025-09-13 22:19:19', '2025-09-13 22:19:19'),
(1704, 404, 'https://timefood.store/wp-admin/css/colors/blue/index.php', 1, NULL, NULL, '2025-09-13 22:19:20', '2025-09-13 22:19:20'),
(1705, 404, 'https://timefood.store/wp-admin/images/moon.php', 1, NULL, NULL, '2025-09-13 22:19:20', '2025-09-13 22:19:20'),
(1706, 404, 'https://timefood.store/wp-admin/js/index.php', 1, NULL, NULL, '2025-09-13 22:19:21', '2025-09-13 22:19:21'),
(1707, 404, 'https://timefood.store/wp-admin/setup-config.php', 1, NULL, NULL, '2025-09-13 22:19:21', '2025-09-13 22:19:21'),
(1708, 404, 'https://timefood.store/wp-api.php', 1, NULL, NULL, '2025-09-13 22:19:22', '2025-09-13 22:19:22'),
(1709, 404, 'https://timefood.store/wp-content/index.php', 1, NULL, NULL, '2025-09-13 22:19:22', '2025-09-13 22:19:22'),
(1710, 404, 'https://timefood.store/wp-content/wp-conflg.php', 1, NULL, NULL, '2025-09-13 22:19:23', '2025-09-13 22:19:23'),
(1711, 404, 'https://timefood.store/wp-includes/IXR/autoload_classmap.php', 1, NULL, NULL, '2025-09-13 22:19:23', '2025-09-13 22:19:23'),
(1712, 404, 'https://timefood.store/wp-includes/fonts/admin.php', 1, NULL, NULL, '2025-09-13 22:19:24', '2025-09-13 22:19:24'),
(1713, 404, 'https://timefood.store/wp-includes/fonts/index.php', 1, NULL, NULL, '2025-09-13 22:19:25', '2025-09-13 22:19:25'),
(1714, 404, 'https://timefood.store/wp-setup.php', 1, NULL, NULL, '2025-09-13 22:19:25', '2025-09-13 22:19:25'),
(1715, 404, 'https://timefood.store/wp.php', 1, NULL, NULL, '2025-09-13 22:19:26', '2025-09-13 22:19:26'),
(1716, 404, 'https://timefood.store/wsa.php', 1, NULL, NULL, '2025-09-13 22:19:26', '2025-09-13 22:19:26'),
(1717, 404, 'http://127.0.0.1:8000/login/superadmin', 2, NULL, NULL, '2025-12-18 06:36:15', '2025-12-18 06:36:26'),
(1718, 404, 'http://127.0.0.1:8000/%7B%7B%20getStorageImages(path:%20$product-%3Ethumbnail_full_url,%20type:%20\'product\')%20%7D%7D', 4, NULL, NULL, '2025-12-19 19:15:16', '2025-12-19 19:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_deals`
--

DROP TABLE IF EXISTS `feature_deals`;
CREATE TABLE IF NOT EXISTS `feature_deals` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

DROP TABLE IF EXISTS `flash_deals`;
CREATE TABLE IF NOT EXISTS `flash_deals` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `deal_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`, `product_id`, `deal_type`) VALUES
(1, 'titel deal', '2025-09-04', '2025-09-26', 1, 0, NULL, NULL, '2025-09-04-68b9b3c84aab7.webp', 'titel-deal', '2025-09-05 01:44:08', '2025-09-05 01:44:12', NULL, 'flash_deal');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

DROP TABLE IF EXISTS `flash_deal_products`;
CREATE TABLE IF NOT EXISTS `flash_deal_products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `flash_deal_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

DROP TABLE IF EXISTS `guest_users`;
CREATE TABLE IF NOT EXISTS `guest_users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2870 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1755, '103.147.163.56', NULL, '2025-09-04 01:59:49', '2025-09-04 01:59:49'),
(1756, '124.156.157.91', NULL, '2025-09-04 02:01:50', '2025-09-04 02:01:50'),
(1757, '51.89.129.180', NULL, '2025-09-04 02:02:19', '2025-09-04 02:02:19'),
(1758, '127.0.0.1', NULL, '2025-09-03 16:40:05', '2025-09-03 16:40:05'),
(1759, '127.0.0.1', NULL, '2025-09-03 16:40:39', '2025-09-03 16:40:39'),
(1760, '103.244.141.89', NULL, '2025-09-04 06:02:51', '2025-09-04 06:02:51'),
(1761, '66.249.70.171', NULL, '2025-09-04 06:35:35', '2025-09-04 06:35:35'),
(1762, '182.42.111.213', NULL, '2025-09-04 06:48:43', '2025-09-04 06:48:43'),
(1763, '198.244.183.124', NULL, '2025-09-04 07:01:40', '2025-09-04 07:01:40'),
(1764, '51.195.244.241', NULL, '2025-09-04 07:02:30', '2025-09-04 07:02:30'),
(1765, '165.227.66.12', NULL, '2025-09-04 07:37:23', '2025-09-04 07:37:23'),
(1766, '165.227.66.12', NULL, '2025-09-04 07:37:37', '2025-09-04 07:37:37'),
(1767, '165.227.66.12', NULL, '2025-09-04 07:37:38', '2025-09-04 07:37:38'),
(1768, '51.195.183.142', NULL, '2025-09-04 09:06:09', '2025-09-04 09:06:09'),
(1769, '43.153.87.54', NULL, '2025-09-04 09:36:33', '2025-09-04 09:36:33'),
(1770, '123.187.240.242', NULL, '2025-09-04 09:44:58', '2025-09-04 09:44:58'),
(1771, '124.156.179.141', NULL, '2025-09-04 09:56:07', '2025-09-04 09:56:07'),
(1772, '43.128.149.102', NULL, '2025-09-04 09:59:33', '2025-09-04 09:59:33'),
(1773, '54.39.89.136', NULL, '2025-09-04 09:59:41', '2025-09-04 09:59:41'),
(1774, '101.33.81.73', NULL, '2025-09-04 10:12:19', '2025-09-04 10:12:19'),
(1775, '35.232.228.235', NULL, '2025-09-04 10:17:58', '2025-09-04 10:17:58'),
(1776, '43.130.16.212', NULL, '2025-09-04 10:20:45', '2025-09-04 10:20:45'),
(1777, '43.130.16.212', NULL, '2025-09-04 10:20:50', '2025-09-04 10:20:50'),
(1778, '185.247.137.185', NULL, '2025-09-04 10:21:55', '2025-09-04 10:21:55'),
(1779, '34.141.215.20', NULL, '2025-09-04 10:24:57', '2025-09-04 10:24:57'),
(1780, '43.166.255.122', NULL, '2025-09-04 10:31:21', '2025-09-04 10:31:21'),
(1781, '162.62.213.187', NULL, '2025-09-04 10:39:31', '2025-09-04 10:39:31'),
(1782, '89.104.110.170', NULL, '2025-09-04 10:42:21', '2025-09-04 10:42:21'),
(1783, '148.113.128.160', NULL, '2025-09-04 10:52:13', '2025-09-04 10:52:13'),
(1784, '43.157.53.115', NULL, '2025-09-04 11:19:57', '2025-09-04 11:19:57'),
(1785, '170.106.72.178', NULL, '2025-09-04 11:24:07', '2025-09-04 11:24:07'),
(1786, '43.130.57.76', NULL, '2025-09-04 11:30:49', '2025-09-04 11:30:49'),
(1787, '43.135.145.117', NULL, '2025-09-04 11:41:06', '2025-09-04 11:41:06'),
(1788, '51.161.65.132', NULL, '2025-09-04 11:46:36', '2025-09-04 11:46:36'),
(1789, '167.114.139.242', NULL, '2025-09-04 12:07:32', '2025-09-04 12:07:32'),
(1790, '15.235.27.142', NULL, '2025-09-04 12:07:53', '2025-09-04 12:07:53'),
(1791, '43.166.136.24', NULL, '2025-09-04 12:11:03', '2025-09-04 12:11:03'),
(1792, '54.39.210.3', NULL, '2025-09-04 12:18:26', '2025-09-04 12:18:26'),
(1793, '142.44.225.91', NULL, '2025-09-04 12:19:00', '2025-09-04 12:19:00'),
(1794, '43.135.134.127', NULL, '2025-09-04 12:20:31', '2025-09-04 12:20:31'),
(1795, '51.161.65.80', NULL, '2025-09-04 12:24:17', '2025-09-04 12:24:17'),
(1796, '51.161.37.29', NULL, '2025-09-04 12:24:41', '2025-09-04 12:24:41'),
(1797, '51.222.95.135', NULL, '2025-09-04 12:30:12', '2025-09-04 12:30:12'),
(1798, '54.39.6.255', NULL, '2025-09-04 12:30:42', '2025-09-04 12:30:42'),
(1799, '142.44.228.48', NULL, '2025-09-04 12:35:21', '2025-09-04 12:35:21'),
(1800, '51.222.95.108', NULL, '2025-09-04 12:35:54', '2025-09-04 12:35:54'),
(1801, '43.130.26.3', NULL, '2025-09-04 12:41:14', '2025-09-04 12:41:14'),
(1802, '54.39.0.24', NULL, '2025-09-04 12:41:48', '2025-09-04 12:41:48'),
(1803, '54.39.0.42', NULL, '2025-09-04 12:47:24', '2025-09-04 12:47:24'),
(1804, '162.14.197.180', NULL, '2025-09-04 12:47:56', '2025-09-04 12:47:56'),
(1805, '54.39.0.176', NULL, '2025-09-04 12:52:40', '2025-09-04 12:52:40'),
(1806, '148.113.128.192', NULL, '2025-09-04 12:57:46', '2025-09-04 12:57:46'),
(1807, '54.39.6.232', NULL, '2025-09-04 13:08:36', '2025-09-04 13:08:36'),
(1808, '51.161.65.234', NULL, '2025-09-04 13:20:26', '2025-09-04 13:20:26'),
(1809, '54.39.0.80', NULL, '2025-09-04 13:35:20', '2025-09-04 13:35:20'),
(1810, '54.39.0.38', NULL, '2025-09-04 13:46:35', '2025-09-04 13:46:35'),
(1811, '51.222.168.201', NULL, '2025-09-04 13:47:07', '2025-09-04 13:47:07'),
(1812, '142.44.228.79', NULL, '2025-09-04 13:56:49', '2025-09-04 13:56:49'),
(1813, '54.39.0.132', NULL, '2025-09-04 14:07:55', '2025-09-04 14:07:55'),
(1814, '15.235.98.171', NULL, '2025-09-04 14:20:46', '2025-09-04 14:20:46'),
(1815, '142.44.220.84', NULL, '2025-09-04 14:32:10', '2025-09-04 14:32:10'),
(1816, '148.113.130.232', NULL, '2025-09-04 14:43:56', '2025-09-04 14:43:56'),
(1817, '167.114.139.177', NULL, '2025-09-04 14:55:27', '2025-09-04 14:55:27'),
(1818, '148.113.128.19', NULL, '2025-09-04 15:01:11', '2025-09-04 15:01:11'),
(1819, '148.113.128.232', NULL, '2025-09-04 15:07:14', '2025-09-04 15:07:14'),
(1820, '142.44.225.220', NULL, '2025-09-04 15:13:05', '2025-09-04 15:13:05'),
(1821, '51.222.95.161', NULL, '2025-09-04 15:18:58', '2025-09-04 15:18:58'),
(1822, '148.113.128.100', NULL, '2025-09-04 15:27:17', '2025-09-04 15:27:17'),
(1823, '142.44.220.16', NULL, '2025-09-04 15:34:12', '2025-09-04 15:34:12'),
(1824, '15.235.98.197', NULL, '2025-09-04 15:40:08', '2025-09-04 15:40:08'),
(1825, '54.39.0.137', NULL, '2025-09-04 15:46:51', '2025-09-04 15:46:51'),
(1826, '94.191.43.82', NULL, '2025-09-04 15:48:16', '2025-09-04 15:48:16'),
(1827, '142.44.220.138', NULL, '2025-09-04 15:52:29', '2025-09-04 15:52:29'),
(1828, '51.222.168.184', NULL, '2025-09-04 15:58:11', '2025-09-04 15:58:11'),
(1829, '103.147.163.56', NULL, '2025-09-04 16:03:32', '2025-09-04 16:03:32'),
(1830, '103.147.163.56', NULL, '2025-09-04 16:04:05', '2025-09-04 16:04:05'),
(1831, '103.147.163.56', NULL, '2025-09-04 16:04:23', '2025-09-04 16:04:23'),
(1832, '54.39.136.61', NULL, '2025-09-04 16:05:02', '2025-09-04 16:05:02'),
(1833, '209.38.167.71', NULL, '2025-09-04 16:10:05', '2025-09-04 16:10:05'),
(1834, '209.38.167.71', NULL, '2025-09-04 16:10:07', '2025-09-04 16:10:07'),
(1835, '142.44.233.118', NULL, '2025-09-04 16:11:02', '2025-09-04 16:11:02'),
(1836, '148.113.128.41', NULL, '2025-09-04 16:17:41', '2025-09-04 16:17:41'),
(1837, '43.135.186.135', NULL, '2025-09-04 16:17:52', '2025-09-04 16:17:52'),
(1838, '54.39.210.114', NULL, '2025-09-04 16:23:35', '2025-09-04 16:23:35'),
(1839, '54.39.0.251', NULL, '2025-09-04 16:29:01', '2025-09-04 16:29:01'),
(1840, '43.133.253.253', NULL, '2025-09-04 16:31:13', '2025-09-04 16:31:13'),
(1841, '148.113.128.153', NULL, '2025-09-04 16:35:02', '2025-09-04 16:35:02'),
(1842, '142.44.233.151', NULL, '2025-09-04 16:40:28', '2025-09-04 16:40:28'),
(1843, '89.104.100.0', NULL, '2025-09-04 16:44:42', '2025-09-04 16:44:42'),
(1844, '176.53.220.111', NULL, '2025-09-04 16:44:44', '2025-09-04 16:44:44'),
(1845, '15.235.27.206', NULL, '2025-09-04 16:46:11', '2025-09-04 16:46:11'),
(1846, '43.157.142.101', NULL, '2025-09-04 16:50:31', '2025-09-04 16:50:31'),
(1847, '148.113.128.2', NULL, '2025-09-04 16:52:40', '2025-09-04 16:52:40'),
(1848, '103.130.118.4', NULL, '2025-09-04 16:53:46', '2025-09-04 16:53:46'),
(1849, '142.44.228.86', NULL, '2025-09-04 16:58:30', '2025-09-04 16:58:30'),
(1850, '167.114.139.206', NULL, '2025-09-04 17:04:21', '2025-09-04 17:04:21'),
(1851, '142.44.233.239', NULL, '2025-09-04 17:09:25', '2025-09-04 17:09:25'),
(1852, '43.166.244.192', NULL, '2025-09-04 17:11:41', '2025-09-04 17:11:41'),
(1853, '142.44.220.73', NULL, '2025-09-04 17:15:20', '2025-09-04 17:15:20'),
(1854, '54.39.6.11', NULL, '2025-09-04 17:22:26', '2025-09-04 17:22:26'),
(1855, '182.252.78.16', NULL, '2025-09-04 17:26:32', '2025-09-04 17:26:32'),
(1856, '167.114.139.26', NULL, '2025-09-04 17:29:06', '2025-09-04 17:29:06'),
(1857, '43.165.189.206', NULL, '2025-09-04 17:34:37', '2025-09-04 17:34:37'),
(1858, '51.222.95.47', NULL, '2025-09-04 17:35:39', '2025-09-04 17:35:39'),
(1859, '43.159.145.153', NULL, '2025-09-04 17:41:16', '2025-09-04 17:41:16'),
(1860, '142.44.220.132', NULL, '2025-09-04 17:42:05', '2025-09-04 17:42:05'),
(1861, '43.165.189.206', NULL, '2025-09-04 17:45:31', '2025-09-04 17:45:31'),
(1862, '15.235.98.8', NULL, '2025-09-04 17:48:50', '2025-09-04 17:48:50'),
(1863, '43.166.245.120', NULL, '2025-09-04 17:51:52', '2025-09-04 17:51:52'),
(1864, '51.222.95.14', NULL, '2025-09-04 17:54:16', '2025-09-04 17:54:16'),
(1865, '34.74.75.101', NULL, '2025-09-04 17:59:14', '2025-09-04 17:59:14'),
(1866, '142.44.220.6', NULL, '2025-09-04 18:00:46', '2025-09-04 18:00:46'),
(1867, '49.51.141.76', NULL, '2025-09-04 18:02:47', '2025-09-04 18:02:47'),
(1868, '148.113.130.24', NULL, '2025-09-04 18:06:03', '2025-09-04 18:06:03'),
(1869, '167.114.139.11', NULL, '2025-09-04 18:10:43', '2025-09-04 18:10:43'),
(1870, '142.44.228.251', NULL, '2025-09-04 18:15:40', '2025-09-04 18:15:40'),
(1871, '43.163.206.70', NULL, '2025-09-04 18:20:55', '2025-09-04 18:20:55'),
(1872, '142.44.225.233', NULL, '2025-09-04 18:21:01', '2025-09-04 18:21:01'),
(1873, '142.44.233.139', NULL, '2025-09-04 18:25:56', '2025-09-04 18:25:56'),
(1874, '148.113.130.179', NULL, '2025-09-04 18:30:35', '2025-09-04 18:30:35'),
(1875, '142.44.225.202', NULL, '2025-09-04 18:35:03', '2025-09-04 18:35:03'),
(1876, '51.222.168.12', NULL, '2025-09-04 18:39:52', '2025-09-04 18:39:52'),
(1877, '66.249.70.161', NULL, '2025-09-04 18:43:31', '2025-09-04 18:43:31'),
(1878, '66.249.70.162', NULL, '2025-09-04 18:43:32', '2025-09-04 18:43:32'),
(1879, '43.153.192.98', NULL, '2025-09-04 18:43:41', '2025-09-04 18:43:41'),
(1880, '51.222.95.128', NULL, '2025-09-04 18:45:14', '2025-09-04 18:45:14'),
(1881, '148.113.128.237', NULL, '2025-09-04 18:50:26', '2025-09-04 18:50:26'),
(1882, '15.235.96.97', NULL, '2025-09-04 18:55:04', '2025-09-04 18:55:04'),
(1883, '139.155.139.22', NULL, '2025-09-04 18:59:03', '2025-09-04 18:59:03'),
(1884, '15.235.27.188', NULL, '2025-09-04 19:00:25', '2025-09-04 19:00:25'),
(1885, '35.209.202.171', NULL, '2025-09-04 19:00:36', '2025-09-04 19:00:36'),
(1886, '101.33.66.34', NULL, '2025-09-04 19:00:52', '2025-09-04 19:00:52'),
(1887, '142.44.225.164', NULL, '2025-09-04 19:05:46', '2025-09-04 19:05:46'),
(1888, '35.212.243.132', NULL, '2025-09-04 19:10:30', '2025-09-04 19:10:30'),
(1889, '142.44.228.153', NULL, '2025-09-04 19:10:59', '2025-09-04 19:10:59'),
(1890, '170.106.165.76', NULL, '2025-09-04 19:11:20', '2025-09-04 19:11:20'),
(1891, '51.161.65.9', NULL, '2025-09-04 19:15:13', '2025-09-04 19:15:13'),
(1892, '148.113.128.228', NULL, '2025-09-04 19:21:23', '2025-09-04 19:21:23'),
(1893, '54.39.0.235', NULL, '2025-09-04 19:27:44', '2025-09-04 19:27:44'),
(1894, '54.39.89.154', NULL, '2025-09-04 19:32:42', '2025-09-04 19:32:42'),
(1895, '54.39.136.47', NULL, '2025-09-04 19:37:49', '2025-09-04 19:37:49'),
(1896, '54.39.0.66', NULL, '2025-09-04 19:42:30', '2025-09-04 19:42:30'),
(1897, '15.235.27.167', NULL, '2025-09-04 19:48:33', '2025-09-04 19:48:33'),
(1898, '51.222.95.183', NULL, '2025-09-04 19:55:53', '2025-09-04 19:55:53'),
(1899, '54.152.129.245', NULL, '2025-09-04 19:58:01', '2025-09-04 19:58:01'),
(1900, '54.152.129.245', NULL, '2025-09-04 19:58:01', '2025-09-04 19:58:01'),
(1901, '15.235.98.86', NULL, '2025-09-04 20:02:22', '2025-09-04 20:02:22'),
(1902, '51.222.168.252', NULL, '2025-09-04 20:07:34', '2025-09-04 20:07:34'),
(1903, '54.39.6.8', NULL, '2025-09-04 20:12:13', '2025-09-04 20:12:13'),
(1904, '170.106.180.153', NULL, '2025-09-04 20:12:24', '2025-09-04 20:12:24'),
(1905, '34.222.87.30', NULL, '2025-09-04 20:13:31', '2025-09-04 20:13:31'),
(1906, '54.39.203.126', NULL, '2025-09-04 20:16:42', '2025-09-04 20:16:42'),
(1907, '142.44.228.183', NULL, '2025-09-04 20:21:44', '2025-09-04 20:21:44'),
(1908, '142.44.220.0', NULL, '2025-09-04 20:27:23', '2025-09-04 20:27:23'),
(1909, '103.147.163.56', NULL, '2025-09-04 20:30:33', '2025-09-04 20:30:33'),
(1910, '51.161.65.178', NULL, '2025-09-04 20:32:02', '2025-09-04 20:32:02'),
(1911, '103.147.163.56', NULL, '2025-09-04 20:34:00', '2025-09-04 20:34:00'),
(1912, '54.39.210.51', NULL, '2025-09-04 20:36:36', '2025-09-04 20:36:36'),
(1913, '54.39.6.113', NULL, '2025-09-04 20:46:10', '2025-09-04 20:46:10'),
(1914, '142.44.225.99', NULL, '2025-09-04 20:46:53', '2025-09-04 20:46:53'),
(1915, '15.235.27.69', NULL, '2025-09-04 20:51:03', '2025-09-04 20:51:03'),
(1916, '54.39.136.126', NULL, '2025-09-04 20:55:56', '2025-09-04 20:55:56'),
(1917, '148.113.128.31', NULL, '2025-09-04 21:00:32', '2025-09-04 21:00:32'),
(1918, '103.147.163.56', NULL, '2025-09-04 21:04:03', '2025-09-04 21:04:03'),
(1919, '15.235.27.54', NULL, '2025-09-04 21:05:29', '2025-09-04 21:05:29'),
(1920, '142.44.225.198', NULL, '2025-09-04 21:10:16', '2025-09-04 21:10:16'),
(1921, '17.241.75.30', NULL, '2025-09-04 21:29:41', '2025-09-04 21:29:41'),
(1922, '17.241.219.66', NULL, '2025-09-04 21:32:12', '2025-09-04 21:32:12'),
(1923, '72.13.62.25', NULL, '2025-09-04 21:45:36', '2025-09-04 21:45:36'),
(1924, '148.113.128.175', NULL, '2025-09-04 21:48:38', '2025-09-04 21:48:38'),
(1925, '51.222.168.89', NULL, '2025-09-04 21:54:35', '2025-09-04 21:54:35'),
(1926, '170.106.165.186', NULL, '2025-09-04 21:56:19', '2025-09-04 21:56:19'),
(1927, '148.113.130.2', NULL, '2025-09-04 21:59:37', '2025-09-04 21:59:37'),
(1928, '117.33.163.216', NULL, '2025-09-04 22:00:11', '2025-09-04 22:00:11'),
(1929, '15.235.96.184', NULL, '2025-09-04 22:05:08', '2025-09-04 22:05:08'),
(1930, '17.241.75.122', NULL, '2025-09-04 22:08:53', '2025-09-04 22:08:53'),
(1931, '17.241.227.48', NULL, '2025-09-04 22:08:54', '2025-09-04 22:08:54'),
(1932, '3.82.199.188', NULL, '2025-09-04 22:10:00', '2025-09-04 22:10:00'),
(1933, '3.84.141.231', NULL, '2025-09-04 22:10:05', '2025-09-04 22:10:05'),
(1934, '15.235.98.102', NULL, '2025-09-04 22:10:15', '2025-09-04 22:10:15'),
(1935, '170.106.143.6', NULL, '2025-09-04 22:10:18', '2025-09-04 22:10:18'),
(1936, '142.44.225.3', NULL, '2025-09-04 22:16:39', '2025-09-04 22:16:39'),
(1937, '142.44.233.4', NULL, '2025-09-04 22:22:42', '2025-09-04 22:22:42'),
(1938, '15.235.27.39', NULL, '2025-09-04 22:27:09', '2025-09-04 22:27:09'),
(1939, '34.222.128.110', NULL, '2025-09-04 22:31:10', '2025-09-04 22:31:10'),
(1940, '34.222.128.110', NULL, '2025-09-04 22:31:10', '2025-09-04 22:31:10'),
(1941, '34.218.59.135', NULL, '2025-09-04 22:31:34', '2025-09-04 22:31:34'),
(1942, '34.218.59.135', NULL, '2025-09-04 22:31:41', '2025-09-04 22:31:41'),
(1943, '54.39.203.117', NULL, '2025-09-04 22:37:01', '2025-09-04 22:37:01'),
(1944, '43.135.36.201', NULL, '2025-09-04 22:40:22', '2025-09-04 22:40:22'),
(1945, '54.39.0.131', NULL, '2025-09-04 22:49:23', '2025-09-04 22:49:23'),
(1946, '43.157.147.3', NULL, '2025-09-04 22:58:54', '2025-09-04 22:58:54'),
(1947, '54.39.6.128', NULL, '2025-09-04 23:00:37', '2025-09-04 23:00:37'),
(1948, '51.161.65.9', NULL, '2025-09-04 23:12:15', '2025-09-04 23:12:15'),
(1949, '43.135.133.241', NULL, '2025-09-04 23:15:25', '2025-09-04 23:15:25'),
(1950, '124.156.225.181', NULL, '2025-09-04 23:20:32', '2025-09-04 23:20:32'),
(1951, '142.44.228.90', NULL, '2025-09-04 23:25:34', '2025-09-04 23:25:34'),
(1952, '51.161.37.0', NULL, '2025-09-04 23:26:02', '2025-09-04 23:26:02'),
(1953, '119.28.89.249', NULL, '2025-09-04 23:30:39', '2025-09-04 23:30:39'),
(1954, '43.133.220.37', NULL, '2025-09-04 23:39:57', '2025-09-04 23:39:57'),
(1955, '103.244.141.89', NULL, '2025-09-04 23:59:37', '2025-09-04 23:59:37'),
(1956, '43.153.19.83', NULL, '2025-09-05 00:19:49', '2025-09-05 00:19:49'),
(1957, '103.147.163.56', NULL, '2025-09-05 00:36:35', '2025-09-05 00:36:35'),
(1958, '43.153.71.132', NULL, '2025-09-05 00:40:24', '2025-09-05 00:40:24'),
(1959, '103.244.141.89', NULL, '2025-09-05 00:43:02', '2025-09-05 00:43:02'),
(1960, '35.204.166.221', NULL, '2025-09-05 00:51:33', '2025-09-05 00:51:33'),
(1961, '34.147.88.45', NULL, '2025-09-05 00:52:53', '2025-09-05 00:52:53'),
(1962, '103.147.163.56', NULL, '2025-09-05 01:05:39', '2025-09-05 01:05:39'),
(1963, '36.111.67.189', NULL, '2025-09-05 01:19:22', '2025-09-05 01:19:22'),
(1964, '103.147.163.56', NULL, '2025-09-05 01:41:59', '2025-09-05 01:41:59'),
(1965, '103.147.163.56', NULL, '2025-09-05 01:54:45', '2025-09-05 01:54:45'),
(1966, '54.39.6.35', NULL, '2025-09-05 01:56:56', '2025-09-05 01:56:56'),
(1967, '15.235.96.214', NULL, '2025-09-05 02:10:17', '2025-09-05 02:10:17'),
(1968, '15.235.96.8', NULL, '2025-09-05 02:23:03', '2025-09-05 02:23:03'),
(1969, '148.113.128.191', NULL, '2025-09-05 02:33:46', '2025-09-05 02:33:46'),
(1970, '54.39.203.83', NULL, '2025-09-05 02:43:57', '2025-09-05 02:43:57'),
(1971, '54.39.0.43', NULL, '2025-09-05 02:44:17', '2025-09-05 02:44:17'),
(1972, '54.39.89.38', NULL, '2025-09-05 02:49:02', '2025-09-05 02:49:02'),
(1973, '51.222.168.68', NULL, '2025-09-05 02:54:10', '2025-09-05 02:54:10'),
(1974, '54.39.203.2', NULL, '2025-09-05 02:59:46', '2025-09-05 02:59:46'),
(1975, '51.222.95.65', NULL, '2025-09-05 03:05:04', '2025-09-05 03:05:04'),
(1976, '15.235.98.115', NULL, '2025-09-05 03:05:30', '2025-09-05 03:05:30'),
(1977, '142.44.233.7', NULL, '2025-09-05 03:19:31', '2025-09-05 03:19:31'),
(1978, '142.44.220.51', NULL, '2025-09-05 03:42:59', '2025-09-05 03:42:59'),
(1979, '43.130.15.147', NULL, '2025-09-05 04:03:57', '2025-09-05 04:03:57'),
(1980, '54.39.203.151', NULL, '2025-09-05 04:05:12', '2025-09-05 04:05:12'),
(1981, '203.33.203.148', NULL, '2025-09-05 04:24:37', '2025-09-05 04:24:37'),
(1982, '170.106.193.108', NULL, '2025-09-05 04:29:16', '2025-09-05 04:29:16'),
(1983, '15.235.27.204', NULL, '2025-09-05 04:29:30', '2025-09-05 04:29:30'),
(1984, '165.22.46.152', NULL, '2025-09-05 04:31:04', '2025-09-05 04:31:04'),
(1985, '165.22.46.152', NULL, '2025-09-05 04:31:07', '2025-09-05 04:31:07'),
(1986, '43.153.35.128', NULL, '2025-09-05 04:45:41', '2025-09-05 04:45:41'),
(1987, '142.44.233.149', NULL, '2025-09-05 04:53:22', '2025-09-05 04:53:22'),
(1988, '43.159.141.150', NULL, '2025-09-05 05:11:41', '2025-09-05 05:11:41'),
(1989, '43.159.141.150', NULL, '2025-09-05 05:11:44', '2025-09-05 05:11:44'),
(1990, '43.157.170.13', NULL, '2025-09-05 05:18:00', '2025-09-05 05:18:00'),
(1991, '54.39.0.200', NULL, '2025-09-05 05:19:23', '2025-09-05 05:19:23'),
(1992, '43.130.91.95', NULL, '2025-09-05 05:30:26', '2025-09-05 05:30:26'),
(1993, '54.39.136.66', NULL, '2025-09-05 05:38:26', '2025-09-05 05:38:26'),
(1994, '43.166.251.233', NULL, '2025-09-05 05:45:55', '2025-09-05 05:45:55'),
(1995, '15.235.96.30', NULL, '2025-09-05 05:52:38', '2025-09-05 05:52:38'),
(1996, '142.44.233.241', NULL, '2025-09-05 06:06:46', '2025-09-05 06:06:46'),
(1997, '43.166.131.228', NULL, '2025-09-05 06:07:06', '2025-09-05 06:07:06'),
(1998, '43.131.36.84', NULL, '2025-09-05 06:16:10', '2025-09-05 06:16:10'),
(1999, '54.39.0.87', NULL, '2025-09-05 06:20:20', '2025-09-05 06:20:20'),
(2000, '43.166.136.24', NULL, '2025-09-05 06:27:02', '2025-09-05 06:27:02'),
(2001, '54.39.203.170', NULL, '2025-09-05 06:34:29', '2025-09-05 06:34:29'),
(2002, '54.39.136.164', NULL, '2025-09-05 06:48:35', '2025-09-05 06:48:35'),
(2003, '43.152.72.247', NULL, '2025-09-05 06:53:49', '2025-09-05 06:53:49'),
(2004, '54.39.89.254', NULL, '2025-09-05 07:01:29', '2025-09-05 07:01:29'),
(2005, '49.51.141.76', NULL, '2025-09-05 07:13:43', '2025-09-05 07:13:43'),
(2006, '148.113.130.167', NULL, '2025-09-05 07:28:07', '2025-09-05 07:28:07'),
(2007, '114.117.233.112', NULL, '2025-09-05 07:28:45', '2025-09-05 07:28:45'),
(2008, '54.39.89.80', NULL, '2025-09-05 08:16:21', '2025-09-05 08:16:21'),
(2009, '176.53.220.131', NULL, '2025-09-05 08:43:41', '2025-09-05 08:43:41'),
(2010, '148.113.128.246', NULL, '2025-09-05 08:52:49', '2025-09-05 08:52:49'),
(2011, '66.249.79.226', NULL, '2025-09-05 09:11:30', '2025-09-05 09:11:30'),
(2012, '142.44.233.201', NULL, '2025-09-05 09:30:10', '2025-09-05 09:30:10'),
(2013, '148.113.128.82', NULL, '2025-09-05 10:18:38', '2025-09-05 10:18:38'),
(2014, '49.51.166.228', NULL, '2025-09-05 10:27:16', '2025-09-05 10:27:16'),
(2015, '118.195.165.218', NULL, '2025-09-05 10:28:28', '2025-09-05 10:28:28'),
(2016, '43.130.12.43', NULL, '2025-09-05 10:42:29', '2025-09-05 10:42:29'),
(2017, '43.131.243.61', NULL, '2025-09-05 10:51:34', '2025-09-05 10:51:34'),
(2018, '15.235.96.8', NULL, '2025-09-05 11:05:44', '2025-09-05 11:05:44'),
(2019, '43.130.67.6', NULL, '2025-09-05 11:27:24', '2025-09-05 11:27:24'),
(2020, '49.51.183.15', NULL, '2025-09-05 11:31:27', '2025-09-05 11:31:27'),
(2021, '43.134.186.61', NULL, '2025-09-05 11:43:01', '2025-09-05 11:43:01'),
(2022, '142.44.225.223', NULL, '2025-09-05 11:51:36', '2025-09-05 11:51:36'),
(2023, '43.157.174.69', NULL, '2025-09-05 12:06:22', '2025-09-05 12:06:22'),
(2024, '43.157.38.228', NULL, '2025-09-05 12:11:46', '2025-09-05 12:11:46'),
(2025, '49.51.132.100', NULL, '2025-09-05 12:22:49', '2025-09-05 12:22:49'),
(2026, '43.157.191.20', NULL, '2025-09-05 12:32:58', '2025-09-05 12:32:58'),
(2027, '49.51.204.74', NULL, '2025-09-05 12:50:59', '2025-09-05 12:50:59'),
(2028, '142.44.220.8', NULL, '2025-09-05 12:53:37', '2025-09-05 12:53:37'),
(2029, '43.128.156.124', NULL, '2025-09-05 13:01:38', '2025-09-05 13:01:38'),
(2030, '43.153.104.196', NULL, '2025-09-05 13:22:06', '2025-09-05 13:22:06'),
(2031, '43.155.27.244', NULL, '2025-09-05 13:31:29', '2025-09-05 13:31:29'),
(2032, '106.119.167.146', NULL, '2025-09-05 13:35:03', '2025-09-05 13:35:03'),
(2033, '103.147.163.56', NULL, '2025-09-05 15:02:10', '2025-09-05 15:02:10'),
(2034, '192.238.175.154', NULL, '2025-09-05 15:02:16', '2025-09-05 15:02:16'),
(2035, '103.147.163.56', NULL, '2025-09-05 15:43:02', '2025-09-05 15:43:02'),
(2036, '103.147.163.56', NULL, '2025-09-05 15:45:47', '2025-09-05 15:45:47'),
(2037, '103.147.163.56', NULL, '2025-09-05 16:12:37', '2025-09-05 16:12:37'),
(2038, '132.232.165.4', NULL, '2025-09-05 16:40:53', '2025-09-05 16:40:53'),
(2039, '49.51.39.209', NULL, '2025-09-05 17:08:53', '2025-09-05 17:08:53'),
(2040, '103.147.163.56', NULL, '2025-09-05 17:22:21', '2025-09-05 17:22:21'),
(2041, '40.85.143.63', NULL, '2025-09-05 18:26:48', '2025-09-05 18:26:48'),
(2042, '40.85.143.63', NULL, '2025-09-05 18:27:23', '2025-09-05 18:27:23'),
(2043, '43.130.102.223', NULL, '2025-09-05 18:56:37', '2025-09-05 18:56:37'),
(2044, '43.155.27.244', NULL, '2025-09-05 19:10:19', '2025-09-05 19:10:19'),
(2045, '15.235.96.152', NULL, '2025-09-05 19:19:47', '2025-09-05 19:19:47'),
(2046, '43.153.15.51', NULL, '2025-09-05 19:31:38', '2025-09-05 19:31:38'),
(2047, '101.91.148.219', NULL, '2025-09-05 19:49:55', '2025-09-05 19:49:55'),
(2048, '44.223.31.120', NULL, '2025-09-05 19:57:50', '2025-09-05 19:57:50'),
(2049, '44.223.31.120', NULL, '2025-09-05 19:57:50', '2025-09-05 19:57:50'),
(2050, '43.166.226.186', NULL, '2025-09-05 20:01:01', '2025-09-05 20:01:01'),
(2051, '66.249.78.6', NULL, '2025-09-05 20:01:02', '2025-09-05 20:01:02'),
(2052, '43.157.156.190', NULL, '2025-09-05 20:09:23', '2025-09-05 20:09:23'),
(2053, '66.249.79.225', NULL, '2025-09-05 20:27:39', '2025-09-05 20:27:39'),
(2054, '66.249.78.6', NULL, '2025-09-05 20:27:59', '2025-09-05 20:27:59'),
(2055, '66.249.79.226', NULL, '2025-09-05 20:34:51', '2025-09-05 20:34:51'),
(2056, '162.62.231.139', NULL, '2025-09-05 20:39:37', '2025-09-05 20:39:37'),
(2057, '66.249.79.224', NULL, '2025-09-05 20:42:03', '2025-09-05 20:42:03'),
(2058, '66.249.79.224', NULL, '2025-09-05 20:49:15', '2025-09-05 20:49:15'),
(2059, '43.156.228.27', NULL, '2025-09-05 20:59:44', '2025-09-05 20:59:44'),
(2060, '43.153.102.138', NULL, '2025-09-05 21:08:57', '2025-09-05 21:08:57'),
(2061, '170.106.180.139', NULL, '2025-09-05 21:20:18', '2025-09-05 21:20:18'),
(2062, '170.106.148.137', NULL, '2025-09-05 21:31:21', '2025-09-05 21:31:21'),
(2063, '66.249.78.7', NULL, '2025-09-05 21:40:43', '2025-09-05 21:40:43'),
(2064, '43.159.143.190', NULL, '2025-09-05 21:51:47', '2025-09-05 21:51:47'),
(2065, '45.90.61.227', NULL, '2025-09-05 21:52:43', '2025-09-05 21:52:43'),
(2066, '203.2.64.59', NULL, '2025-09-05 22:57:35', '2025-09-05 22:57:35'),
(2067, '46.101.80.192', NULL, '2025-09-05 23:07:00', '2025-09-05 23:07:00'),
(2068, '46.101.80.192', NULL, '2025-09-05 23:07:01', '2025-09-05 23:07:01'),
(2069, '46.101.80.192', NULL, '2025-09-05 23:07:02', '2025-09-05 23:07:02'),
(2070, '46.101.80.192', NULL, '2025-09-05 23:07:03', '2025-09-05 23:07:03'),
(2071, '46.101.80.192', NULL, '2025-09-05 23:07:04', '2025-09-05 23:07:04'),
(2072, '46.101.80.192', NULL, '2025-09-05 23:07:05', '2025-09-05 23:07:05'),
(2073, '170.106.167.214', NULL, '2025-09-05 23:29:44', '2025-09-05 23:29:44'),
(2074, '66.249.78.8', NULL, '2025-09-05 23:44:58', '2025-09-05 23:44:58'),
(2075, '93.158.91.250', NULL, '2025-09-05 23:55:06', '2025-09-05 23:55:06'),
(2076, '43.155.162.41', NULL, '2025-09-06 00:51:40', '2025-09-06 00:51:40'),
(2077, '43.166.237.57', NULL, '2025-09-06 01:06:13', '2025-09-06 01:06:13'),
(2078, '43.131.253.14', NULL, '2025-09-06 01:14:58', '2025-09-06 01:14:58'),
(2079, '43.167.241.46', NULL, '2025-09-06 01:24:46', '2025-09-06 01:24:46'),
(2080, '43.167.241.46', NULL, '2025-09-06 01:24:48', '2025-09-06 01:24:48'),
(2081, '43.130.116.87', NULL, '2025-09-06 02:07:56', '2025-09-06 02:07:56'),
(2082, '103.147.163.56', NULL, '2025-09-06 02:20:18', '2025-09-06 02:20:18'),
(2083, '49.51.183.84', NULL, '2025-09-06 02:25:33', '2025-09-06 02:25:33'),
(2084, '43.157.22.57', NULL, '2025-09-06 02:46:10', '2025-09-06 02:46:10'),
(2085, '43.157.98.187', NULL, '2025-09-06 03:17:26', '2025-09-06 03:17:26'),
(2086, '45.153.52.27', NULL, '2025-09-06 04:36:26', '2025-09-06 04:36:26'),
(2087, '52.231.88.142', NULL, '2025-09-06 07:05:21', '2025-09-06 07:05:21'),
(2088, '182.42.111.156', NULL, '2025-09-06 08:25:30', '2025-09-06 08:25:30'),
(2089, '66.249.79.226', NULL, '2025-09-06 08:36:38', '2025-09-06 08:36:38'),
(2090, '13.76.136.127', NULL, '2025-09-06 09:09:14', '2025-09-06 09:09:14'),
(2091, '43.165.69.68', NULL, '2025-09-06 09:59:09', '2025-09-06 09:59:09'),
(2092, '43.164.197.177', NULL, '2025-09-06 10:14:30', '2025-09-06 10:14:30'),
(2093, '43.135.144.126', NULL, '2025-09-06 10:23:16', '2025-09-06 10:23:16'),
(2094, '43.158.91.71', NULL, '2025-09-06 10:31:30', '2025-09-06 10:31:30'),
(2095, '43.166.237.57', NULL, '2025-09-06 10:42:35', '2025-09-06 10:42:35'),
(2096, '49.51.132.100', NULL, '2025-09-06 11:19:11', '2025-09-06 11:19:11'),
(2097, '43.157.170.13', NULL, '2025-09-06 11:21:28', '2025-09-06 11:21:28'),
(2098, '182.43.70.143', NULL, '2025-09-06 11:25:31', '2025-09-06 11:25:31'),
(2099, '43.166.128.187', NULL, '2025-09-06 11:43:53', '2025-09-06 11:43:53'),
(2100, '43.131.253.14', NULL, '2025-09-06 11:51:20', '2025-09-06 11:51:20'),
(2101, '43.166.226.57', NULL, '2025-09-06 12:00:06', '2025-09-06 12:00:06'),
(2102, '43.166.237.57', NULL, '2025-09-06 12:04:27', '2025-09-06 12:04:27'),
(2103, '43.166.244.251', NULL, '2025-09-06 12:25:01', '2025-09-06 12:25:01'),
(2104, '101.33.80.42', NULL, '2025-09-06 12:36:15', '2025-09-06 12:36:15'),
(2105, '54.67.45.195', NULL, '2025-09-06 12:42:10', '2025-09-06 12:42:10'),
(2106, '49.51.73.183', NULL, '2025-09-06 12:44:11', '2025-09-06 12:44:11'),
(2107, '43.159.139.164', NULL, '2025-09-06 12:53:43', '2025-09-06 12:53:43'),
(2108, '43.153.47.201', NULL, '2025-09-06 13:13:46', '2025-09-06 13:13:46'),
(2109, '43.167.232.38', NULL, '2025-09-06 13:23:05', '2025-09-06 13:23:05'),
(2110, '43.157.180.116', NULL, '2025-09-06 13:52:18', '2025-09-06 13:52:18'),
(2111, '43.131.23.154', NULL, '2025-09-06 14:03:06', '2025-09-06 14:03:06'),
(2112, '43.130.47.33', NULL, '2025-09-06 14:12:17', '2025-09-06 14:12:17'),
(2113, '43.157.147.3', NULL, '2025-09-06 14:22:15', '2025-09-06 14:22:15'),
(2114, '43.130.47.33', NULL, '2025-09-06 14:35:08', '2025-09-06 14:35:08'),
(2115, '43.135.182.43', NULL, '2025-09-06 14:43:31', '2025-09-06 14:43:31'),
(2116, '170.106.165.76', NULL, '2025-09-06 14:55:06', '2025-09-06 14:55:06'),
(2117, '43.130.111.40', NULL, '2025-09-06 17:21:22', '2025-09-06 17:21:22'),
(2118, '43.130.9.111', NULL, '2025-09-06 17:36:06', '2025-09-06 17:36:06'),
(2119, '117.62.235.53', NULL, '2025-09-06 17:40:14', '2025-09-06 17:40:14'),
(2120, '49.51.204.74', NULL, '2025-09-06 18:25:56', '2025-09-06 18:25:56'),
(2121, '43.130.110.130', NULL, '2025-09-06 18:36:28', '2025-09-06 18:36:28'),
(2122, '13.76.136.127', NULL, '2025-09-06 18:44:04', '2025-09-06 18:44:04'),
(2123, '170.106.72.93', NULL, '2025-09-06 18:54:50', '2025-09-06 18:54:50'),
(2124, '43.132.214.228', NULL, '2025-09-06 19:05:59', '2025-09-06 19:05:59'),
(2125, '43.153.54.138', NULL, '2025-09-06 19:06:51', '2025-09-06 19:06:51'),
(2126, '43.156.228.27', NULL, '2025-09-06 19:14:27', '2025-09-06 19:14:27'),
(2127, '43.130.102.7', NULL, '2025-09-06 19:45:01', '2025-09-06 19:45:01'),
(2128, '103.147.163.56', NULL, '2025-09-06 19:46:37', '2025-09-06 19:46:37'),
(2129, '43.250.82.232', NULL, '2025-09-06 19:46:42', '2025-09-06 19:46:42'),
(2130, '103.147.163.56', NULL, '2025-09-06 19:50:45', '2025-09-06 19:50:45'),
(2131, '43.155.27.244', NULL, '2025-09-06 19:55:34', '2025-09-06 19:55:34'),
(2132, '43.153.104.196', NULL, '2025-09-06 20:15:26', '2025-09-06 20:15:26'),
(2133, '3.231.33.29', NULL, '2025-09-06 20:18:19', '2025-09-06 20:18:19'),
(2134, '103.147.163.56', NULL, '2025-09-06 20:29:08', '2025-09-06 20:29:08'),
(2135, '103.147.163.56', NULL, '2025-09-06 20:30:24', '2025-09-06 20:30:24'),
(2136, '103.20.141.4', NULL, '2025-09-06 20:40:46', '2025-09-06 20:40:46'),
(2137, '43.143.248.236', NULL, '2025-09-06 20:52:08', '2025-09-06 20:52:08'),
(2138, '103.147.163.56', NULL, '2025-09-06 21:15:18', '2025-09-06 21:15:18'),
(2139, '43.245.232.68', NULL, '2025-09-06 21:51:52', '2025-09-06 21:51:52'),
(2140, '103.15.244.132', NULL, '2025-09-06 21:51:53', '2025-09-06 21:51:53'),
(2141, '103.147.163.56', NULL, '2025-09-06 22:15:35', '2025-09-06 22:15:35'),
(2142, '45.90.60.30', NULL, '2025-09-06 22:35:55', '2025-09-06 22:35:55'),
(2143, '43.157.174.69', NULL, '2025-09-06 23:24:57', '2025-09-06 23:24:57'),
(2144, '43.159.128.237', NULL, '2025-09-06 23:40:05', '2025-09-06 23:40:05'),
(2145, '43.153.54.14', NULL, '2025-09-06 23:59:57', '2025-09-06 23:59:57'),
(2146, '182.42.105.144', NULL, '2025-09-07 00:01:04', '2025-09-07 00:01:04'),
(2147, '43.166.134.114', NULL, '2025-09-07 00:19:33', '2025-09-07 00:19:33'),
(2148, '43.156.109.53', NULL, '2025-09-07 00:28:26', '2025-09-07 00:28:26'),
(2149, '103.147.163.56', NULL, '2025-09-07 00:36:18', '2025-09-07 00:36:18'),
(2150, '43.135.133.194', NULL, '2025-09-07 00:40:09', '2025-09-07 00:40:09'),
(2151, '43.166.129.247', NULL, '2025-09-07 00:47:26', '2025-09-07 00:47:26'),
(2152, '103.147.163.56', NULL, '2025-09-07 01:04:48', '2025-09-07 01:04:48'),
(2153, '43.156.204.134', NULL, '2025-09-07 01:27:42', '2025-09-07 01:27:42'),
(2154, '101.33.55.204', NULL, '2025-09-07 01:48:33', '2025-09-07 01:48:33'),
(2155, '49.51.50.147', NULL, '2025-09-07 02:09:06', '2025-09-07 02:09:06'),
(2156, '43.153.10.83', NULL, '2025-09-07 02:30:41', '2025-09-07 02:30:41'),
(2157, '170.106.65.93', NULL, '2025-09-07 02:40:03', '2025-09-07 02:40:03'),
(2158, '43.157.38.228', NULL, '2025-09-07 03:07:13', '2025-09-07 03:07:13'),
(2159, '43.166.224.244', NULL, '2025-09-07 03:21:24', '2025-09-07 03:21:24'),
(2160, '43.157.22.109', NULL, '2025-09-07 03:29:59', '2025-09-07 03:29:59'),
(2161, '49.51.132.100', NULL, '2025-09-07 03:42:03', '2025-09-07 03:42:03'),
(2162, '164.90.234.137', NULL, '2025-09-07 06:17:15', '2025-09-07 06:17:15'),
(2163, '164.90.234.137', NULL, '2025-09-07 06:17:17', '2025-09-07 06:17:17'),
(2164, '119.45.20.16', NULL, '2025-09-07 06:20:43', '2025-09-07 06:20:43'),
(2165, '199.244.88.232', NULL, '2025-09-07 06:58:48', '2025-09-07 06:58:48'),
(2166, '36.41.75.167', NULL, '2025-09-07 09:25:07', '2025-09-07 09:25:07'),
(2167, '43.159.143.139', NULL, '2025-09-07 09:28:28', '2025-09-07 09:28:28'),
(2168, '170.106.197.109', NULL, '2025-09-07 09:51:03', '2025-09-07 09:51:03'),
(2169, '43.157.174.69', NULL, '2025-09-07 10:02:34', '2025-09-07 10:02:34'),
(2170, '43.133.66.51', NULL, '2025-09-07 10:14:37', '2025-09-07 10:14:37'),
(2171, '43.153.49.151', NULL, '2025-09-07 10:43:09', '2025-09-07 10:43:09'),
(2172, '43.130.131.18', NULL, '2025-09-07 10:51:30', '2025-09-07 10:51:30'),
(2173, '170.106.148.137', NULL, '2025-09-07 10:52:16', '2025-09-07 10:52:16'),
(2174, '170.106.35.153', NULL, '2025-09-07 11:02:47', '2025-09-07 11:02:47'),
(2175, '49.51.180.2', NULL, '2025-09-07 11:13:03', '2025-09-07 11:13:03'),
(2176, '66.249.70.170', NULL, '2025-09-07 11:25:52', '2025-09-07 11:25:52'),
(2177, '43.159.152.187', NULL, '2025-09-07 11:43:27', '2025-09-07 11:43:27'),
(2178, '66.249.78.7', NULL, '2025-09-07 11:51:17', '2025-09-07 11:51:17'),
(2179, '43.130.72.40', NULL, '2025-09-07 12:05:10', '2025-09-07 12:05:10'),
(2180, '170.106.107.87', NULL, '2025-09-07 12:14:24', '2025-09-07 12:14:24'),
(2181, '162.14.210.15', NULL, '2025-09-07 12:26:32', '2025-09-07 12:26:32'),
(2182, '66.249.70.169', NULL, '2025-09-07 14:37:22', '2025-09-07 14:37:22'),
(2183, '43.157.156.190', NULL, '2025-09-07 15:31:22', '2025-09-07 15:31:22'),
(2184, '129.28.14.231', NULL, '2025-09-07 15:35:30', '2025-09-07 15:35:30'),
(2185, '43.130.102.223', NULL, '2025-09-07 16:04:41', '2025-09-07 16:04:41'),
(2186, '87.236.176.26', NULL, '2025-09-07 16:19:10', '2025-09-07 16:19:10'),
(2187, '192.159.99.94', NULL, '2025-09-07 16:29:53', '2025-09-07 16:29:53'),
(2188, '192.159.99.94', NULL, '2025-09-07 16:29:54', '2025-09-07 16:29:54'),
(2189, '43.131.26.226', NULL, '2025-09-07 17:01:31', '2025-09-07 17:01:31'),
(2190, '43.130.47.33', NULL, '2025-09-07 17:15:33', '2025-09-07 17:15:33'),
(2191, '101.33.66.34', NULL, '2025-09-07 17:24:53', '2025-09-07 17:24:53'),
(2192, '185.247.137.133', NULL, '2025-09-07 17:33:11', '2025-09-07 17:33:11'),
(2193, '43.159.140.236', NULL, '2025-09-07 17:34:38', '2025-09-07 17:34:38'),
(2194, '43.130.100.35', NULL, '2025-09-07 17:45:55', '2025-09-07 17:45:55'),
(2195, '43.130.101.151', NULL, '2025-09-07 17:55:58', '2025-09-07 17:55:58'),
(2196, '43.157.38.228', NULL, '2025-09-07 18:13:52', '2025-09-07 18:13:52'),
(2197, '119.28.177.175', NULL, '2025-09-07 18:24:55', '2025-09-07 18:24:55'),
(2198, '142.44.225.99', NULL, '2025-09-07 18:39:49', '2025-09-07 18:39:49'),
(2199, '129.211.215.233', NULL, '2025-09-07 18:44:45', '2025-09-07 18:44:45'),
(2200, '103.147.163.56', NULL, '2025-09-07 18:57:32', '2025-09-07 18:57:32'),
(2201, '43.133.91.48', NULL, '2025-09-07 19:04:30', '2025-09-07 19:04:30'),
(2202, '170.106.148.137', NULL, '2025-09-07 19:16:02', '2025-09-07 19:16:02'),
(2203, '43.130.16.212', NULL, '2025-09-07 19:24:45', '2025-09-07 19:24:45'),
(2204, '43.130.16.212', NULL, '2025-09-07 19:24:47', '2025-09-07 19:24:47'),
(2205, '34.229.88.152', NULL, '2025-09-07 19:28:48', '2025-09-07 19:28:48'),
(2206, '34.229.88.152', NULL, '2025-09-07 19:28:48', '2025-09-07 19:28:48'),
(2207, '43.155.162.41', NULL, '2025-09-07 21:27:08', '2025-09-07 21:27:08'),
(2208, '103.147.163.56', NULL, '2025-09-07 22:49:16', '2025-09-07 22:49:16'),
(2209, '170.106.163.84', NULL, '2025-09-07 22:52:57', '2025-09-07 22:52:57'),
(2210, '43.159.152.4', NULL, '2025-09-07 23:06:58', '2025-09-07 23:06:58'),
(2211, '54.39.136.240', NULL, '2025-09-07 23:10:13', '2025-09-07 23:10:13'),
(2212, '49.51.47.100', NULL, '2025-09-07 23:27:35', '2025-09-07 23:27:35'),
(2213, '49.51.166.228', NULL, '2025-09-07 23:36:35', '2025-09-07 23:36:35'),
(2214, '81.88.53.133', NULL, '2025-09-07 23:45:07', '2025-09-07 23:45:07'),
(2215, '101.32.15.141', NULL, '2025-09-07 23:46:41', '2025-09-07 23:46:41'),
(2216, '43.135.139.165', NULL, '2025-09-07 23:56:55', '2025-09-07 23:56:55'),
(2217, '43.130.72.177', NULL, '2025-09-08 00:16:37', '2025-09-08 00:16:37'),
(2218, '43.166.251.233', NULL, '2025-09-08 00:33:56', '2025-09-08 00:33:56'),
(2219, '101.33.66.34', NULL, '2025-09-08 00:56:28', '2025-09-08 00:56:28'),
(2220, '203.2.64.59', NULL, '2025-09-08 01:05:21', '2025-09-08 01:05:21'),
(2221, '43.166.131.228', NULL, '2025-09-08 01:07:39', '2025-09-08 01:07:39'),
(2222, '162.62.213.187', NULL, '2025-09-08 01:15:22', '2025-09-08 01:15:22'),
(2223, '43.167.241.46', NULL, '2025-09-08 01:26:12', '2025-09-08 01:26:12'),
(2224, '142.44.220.34', NULL, '2025-09-08 01:31:46', '2025-09-08 01:31:46'),
(2225, '43.165.65.180', NULL, '2025-09-08 03:01:30', '2025-09-08 03:01:30'),
(2226, '43.157.158.178', NULL, '2025-09-08 03:15:12', '2025-09-08 03:15:12'),
(2227, '43.130.57.46', NULL, '2025-09-08 03:30:50', '2025-09-08 03:30:50'),
(2228, '62.90.126.233', NULL, '2025-09-08 03:47:05', '2025-09-08 03:47:05'),
(2229, '43.134.186.61', NULL, '2025-09-08 04:13:33', '2025-09-08 04:13:33'),
(2230, '54.39.203.225', NULL, '2025-09-08 04:13:47', '2025-09-08 04:13:47'),
(2231, '43.134.141.244', NULL, '2025-09-08 04:15:56', '2025-09-08 04:15:56'),
(2232, '182.43.70.143', NULL, '2025-09-08 04:17:11', '2025-09-08 04:17:11'),
(2233, '43.131.23.154', NULL, '2025-09-08 04:29:45', '2025-09-08 04:29:45'),
(2234, '43.130.139.136', NULL, '2025-09-08 04:37:42', '2025-09-08 04:37:42'),
(2235, '43.130.139.136', NULL, '2025-09-08 04:37:46', '2025-09-08 04:37:46'),
(2236, '43.167.241.46', NULL, '2025-09-08 05:25:20', '2025-09-08 05:25:20'),
(2237, '43.167.236.228', NULL, '2025-09-08 05:26:51', '2025-09-08 05:26:51'),
(2238, '43.153.102.138', NULL, '2025-09-08 05:39:41', '2025-09-08 05:39:41'),
(2239, '43.153.27.244', NULL, '2025-09-08 05:54:45', '2025-09-08 05:54:45'),
(2240, '43.135.145.117', NULL, '2025-09-08 06:13:42', '2025-09-08 06:13:42'),
(2241, '43.165.135.242', NULL, '2025-09-08 06:44:11', '2025-09-08 06:44:11'),
(2242, '43.156.168.214', NULL, '2025-09-08 06:53:29', '2025-09-08 06:53:29'),
(2243, '51.161.37.161', NULL, '2025-09-08 06:59:58', '2025-09-08 06:59:58'),
(2244, '43.130.139.136', NULL, '2025-09-08 07:02:17', '2025-09-08 07:02:17'),
(2245, '122.51.104.231', NULL, '2025-09-08 07:17:01', '2025-09-08 07:17:01'),
(2246, '43.135.144.126', NULL, '2025-09-08 07:23:12', '2025-09-08 07:23:12'),
(2247, '51.195.183.10', NULL, '2025-09-08 07:41:25', '2025-09-08 07:41:25'),
(2248, '43.166.237.57', NULL, '2025-09-08 07:43:36', '2025-09-08 07:43:36'),
(2249, '51.195.244.27', NULL, '2025-09-08 07:45:48', '2025-09-08 07:45:48'),
(2250, '51.222.95.33', NULL, '2025-09-08 07:48:43', '2025-09-08 07:48:43'),
(2251, '142.44.225.185', NULL, '2025-09-08 07:48:46', '2025-09-08 07:48:46'),
(2252, '43.159.136.201', NULL, '2025-09-08 07:52:50', '2025-09-08 07:52:50'),
(2253, '51.222.168.90', NULL, '2025-09-08 07:56:00', '2025-09-08 07:56:00'),
(2254, '54.39.6.99', NULL, '2025-09-08 08:02:36', '2025-09-08 08:02:36'),
(2255, '142.44.225.94', NULL, '2025-09-08 08:09:25', '2025-09-08 08:09:25'),
(2256, '51.222.95.244', NULL, '2025-09-08 08:09:51', '2025-09-08 08:09:51'),
(2257, '43.135.172.89', NULL, '2025-09-08 08:10:45', '2025-09-08 08:10:45'),
(2258, '15.235.27.209', NULL, '2025-09-08 08:16:39', '2025-09-08 08:16:39'),
(2259, '54.39.210.28', NULL, '2025-09-08 08:22:49', '2025-09-08 08:22:49'),
(2260, '15.235.96.207', NULL, '2025-09-08 08:29:17', '2025-09-08 08:29:17'),
(2261, '54.39.89.23', NULL, '2025-09-08 08:29:57', '2025-09-08 08:29:57'),
(2262, '15.235.27.194', NULL, '2025-09-08 08:35:24', '2025-09-08 08:35:24'),
(2263, '142.44.225.18', NULL, '2025-09-08 08:41:27', '2025-09-08 08:41:27'),
(2264, '51.222.95.101', NULL, '2025-09-08 08:41:47', '2025-09-08 08:41:47'),
(2265, '54.39.0.164', NULL, '2025-09-08 08:47:18', '2025-09-08 08:47:18'),
(2266, '142.44.220.191', NULL, '2025-09-08 08:47:36', '2025-09-08 08:47:36'),
(2267, '23.146.184.190', NULL, '2025-09-08 08:57:25', '2025-09-08 08:57:25'),
(2268, '196.251.81.2', NULL, '2025-09-08 08:57:32', '2025-09-08 08:57:32'),
(2269, '192.210.150.196', NULL, '2025-09-08 08:57:33', '2025-09-08 08:57:33'),
(2270, '196.251.85.248', NULL, '2025-09-08 08:57:33', '2025-09-08 08:57:33'),
(2271, '196.251.81.2', NULL, '2025-09-08 08:57:34', '2025-09-08 08:57:34'),
(2272, '142.44.228.242', NULL, '2025-09-08 08:58:24', '2025-09-08 08:58:24'),
(2273, '142.44.228.152', NULL, '2025-09-08 09:04:30', '2025-09-08 09:04:30'),
(2274, '142.44.220.87', NULL, '2025-09-08 09:10:22', '2025-09-08 09:10:22'),
(2275, '51.161.65.141', NULL, '2025-09-08 09:16:47', '2025-09-08 09:16:47'),
(2276, '54.39.6.112', NULL, '2025-09-08 09:22:43', '2025-09-08 09:22:43'),
(2277, '54.39.6.156', NULL, '2025-09-08 09:30:43', '2025-09-08 09:30:43'),
(2278, '176.53.221.227', NULL, '2025-09-08 09:33:44', '2025-09-08 09:33:44'),
(2279, '54.39.136.223', NULL, '2025-09-08 09:38:56', '2025-09-08 09:38:56'),
(2280, '51.222.168.85', NULL, '2025-09-08 09:39:05', '2025-09-08 09:39:05'),
(2281, '142.44.228.205', NULL, '2025-09-08 09:45:28', '2025-09-08 09:45:28'),
(2282, '142.44.225.118', NULL, '2025-09-08 09:57:47', '2025-09-08 09:57:47'),
(2283, '15.235.27.237', NULL, '2025-09-08 10:03:57', '2025-09-08 10:03:57'),
(2284, '167.114.139.92', NULL, '2025-09-08 10:09:59', '2025-09-08 10:09:59'),
(2285, '15.235.27.165', NULL, '2025-09-08 10:10:40', '2025-09-08 10:10:40'),
(2286, '51.222.168.212', NULL, '2025-09-08 10:16:21', '2025-09-08 10:16:21'),
(2287, '54.39.210.255', NULL, '2025-09-08 10:22:11', '2025-09-08 10:22:11'),
(2288, '162.14.197.180', NULL, '2025-09-08 10:23:13', '2025-09-08 10:23:13'),
(2289, '167.114.139.243', NULL, '2025-09-08 10:28:12', '2025-09-08 10:28:12'),
(2290, '51.161.65.121', NULL, '2025-09-08 10:28:26', '2025-09-08 10:28:26'),
(2291, '148.113.130.253', NULL, '2025-09-08 10:34:01', '2025-09-08 10:34:01'),
(2292, '142.44.220.220', NULL, '2025-09-08 10:39:46', '2025-09-08 10:39:46'),
(2293, '128.90.128.9', NULL, '2025-09-08 10:44:48', '2025-09-08 10:44:48'),
(2294, '54.39.6.169', NULL, '2025-09-08 10:45:29', '2025-09-08 10:45:29'),
(2295, '142.44.220.64', NULL, '2025-09-08 10:45:54', '2025-09-08 10:45:54'),
(2296, '66.249.79.224', NULL, '2025-09-08 10:49:58', '2025-09-08 10:49:58'),
(2297, '142.44.233.164', NULL, '2025-09-08 10:50:41', '2025-09-08 10:50:41'),
(2298, '15.235.98.231', NULL, '2025-09-08 10:56:13', '2025-09-08 10:56:13'),
(2299, '51.89.129.182', NULL, '2025-09-08 11:02:09', '2025-09-08 11:02:09'),
(2300, '198.244.240.64', NULL, '2025-09-08 11:07:39', '2025-09-08 11:07:39'),
(2301, '51.195.183.248', NULL, '2025-09-08 11:13:21', '2025-09-08 11:13:21'),
(2302, '198.244.183.223', NULL, '2025-09-08 11:18:36', '2025-09-08 11:18:36'),
(2303, '198.244.183.19', NULL, '2025-09-08 11:23:40', '2025-09-08 11:23:40'),
(2304, '51.89.129.1', NULL, '2025-09-08 11:29:12', '2025-09-08 11:29:12'),
(2305, '198.244.226.182', NULL, '2025-09-08 11:29:43', '2025-09-08 11:29:43'),
(2306, '167.114.139.239', NULL, '2025-09-08 11:35:35', '2025-09-08 11:35:35'),
(2307, '148.113.130.187', NULL, '2025-09-08 11:42:23', '2025-09-08 11:42:23'),
(2308, '142.44.220.183', NULL, '2025-09-08 11:48:44', '2025-09-08 11:48:44'),
(2309, '142.44.225.173', NULL, '2025-09-08 11:48:55', '2025-09-08 11:48:55'),
(2310, '54.39.89.219', NULL, '2025-09-08 11:53:14', '2025-09-08 11:53:14'),
(2311, '142.44.228.163', NULL, '2025-09-08 11:58:11', '2025-09-08 11:58:11'),
(2312, '142.44.233.177', NULL, '2025-09-08 12:03:17', '2025-09-08 12:03:17'),
(2313, '54.39.210.51', NULL, '2025-09-08 12:03:41', '2025-09-08 12:03:41'),
(2314, '51.222.95.51', NULL, '2025-09-08 12:08:27', '2025-09-08 12:08:27'),
(2315, '15.235.96.48', NULL, '2025-09-08 12:13:23', '2025-09-08 12:13:23'),
(2316, '54.39.89.78', NULL, '2025-09-08 12:14:00', '2025-09-08 12:14:00'),
(2317, '51.161.65.44', NULL, '2025-09-08 12:18:26', '2025-09-08 12:18:26'),
(2318, '198.244.240.76', NULL, '2025-09-08 12:23:49', '2025-09-08 12:23:49'),
(2319, '198.244.240.25', NULL, '2025-09-08 12:24:15', '2025-09-08 12:24:15'),
(2320, '54.38.147.124', NULL, '2025-09-08 12:29:02', '2025-09-08 12:29:02'),
(2321, '198.244.183.16', NULL, '2025-09-08 12:34:09', '2025-09-08 12:34:09'),
(2322, '54.38.147.80', NULL, '2025-09-08 12:39:09', '2025-09-08 12:39:09'),
(2323, '51.195.244.169', NULL, '2025-09-08 12:39:44', '2025-09-08 12:39:44'),
(2324, '51.195.244.114', NULL, '2025-09-08 12:44:41', '2025-09-08 12:44:41'),
(2325, '198.244.168.246', NULL, '2025-09-08 12:45:10', '2025-09-08 12:45:10'),
(2326, '198.244.168.19', NULL, '2025-09-08 12:49:32', '2025-09-08 12:49:32'),
(2327, '51.89.129.244', NULL, '2025-09-08 12:49:48', '2025-09-08 12:49:48'),
(2328, '51.195.244.212', NULL, '2025-09-08 12:53:50', '2025-09-08 12:53:50'),
(2329, '51.195.183.212', NULL, '2025-09-08 12:54:16', '2025-09-08 12:54:16'),
(2330, '51.195.244.80', NULL, '2025-09-08 12:58:57', '2025-09-08 12:58:57'),
(2331, '51.89.129.34', NULL, '2025-09-08 13:04:09', '2025-09-08 13:04:09'),
(2332, '51.195.183.153', NULL, '2025-09-08 13:04:38', '2025-09-08 13:04:38'),
(2333, '51.195.215.88', NULL, '2025-09-08 13:09:11', '2025-09-08 13:09:11'),
(2334, '198.244.183.62', NULL, '2025-09-08 13:09:41', '2025-09-08 13:09:41'),
(2335, '51.195.244.159', NULL, '2025-09-08 13:15:12', '2025-09-08 13:15:12'),
(2336, '198.244.242.237', NULL, '2025-09-08 13:15:27', '2025-09-08 13:15:27'),
(2337, '51.89.129.56', NULL, '2025-09-08 13:21:00', '2025-09-08 13:21:00'),
(2338, '118.89.233.234', NULL, '2025-09-08 13:24:13', '2025-09-08 13:24:13'),
(2339, '198.244.168.55', NULL, '2025-09-08 13:41:11', '2025-09-08 13:41:11'),
(2340, '198.244.168.72', NULL, '2025-09-08 13:41:25', '2025-09-08 13:41:25'),
(2341, '51.195.244.189', NULL, '2025-09-08 13:47:25', '2025-09-08 13:47:25'),
(2342, '198.244.242.115', NULL, '2025-09-08 13:47:53', '2025-09-08 13:47:53'),
(2343, '51.195.215.168', NULL, '2025-09-08 13:52:53', '2025-09-08 13:52:53'),
(2344, '198.244.242.203', NULL, '2025-09-08 13:53:07', '2025-09-08 13:53:07'),
(2345, '51.195.183.183', NULL, '2025-09-08 13:58:12', '2025-09-08 13:58:12'),
(2346, '51.195.244.57', NULL, '2025-09-08 14:03:53', '2025-09-08 14:03:53'),
(2347, '198.244.168.243', NULL, '2025-09-08 14:04:21', '2025-09-08 14:04:21'),
(2348, '198.244.226.21', NULL, '2025-09-08 14:09:32', '2025-09-08 14:09:32'),
(2349, '51.195.215.149', NULL, '2025-09-08 14:14:36', '2025-09-08 14:14:36'),
(2350, '198.244.226.155', NULL, '2025-09-08 14:20:23', '2025-09-08 14:20:23'),
(2351, '198.244.168.177', NULL, '2025-09-08 14:20:37', '2025-09-08 14:20:37'),
(2352, '103.147.163.56', NULL, '2025-09-08 14:23:45', '2025-09-08 14:23:45'),
(2353, '198.244.240.135', NULL, '2025-09-08 14:26:07', '2025-09-08 14:26:07'),
(2354, '198.244.226.130', NULL, '2025-09-08 14:26:44', '2025-09-08 14:26:44'),
(2355, '51.89.129.184', NULL, '2025-09-08 14:32:08', '2025-09-08 14:32:08'),
(2356, '51.89.129.55', NULL, '2025-09-08 14:32:38', '2025-09-08 14:32:38'),
(2357, '51.195.244.112', NULL, '2025-09-08 14:37:21', '2025-09-08 14:37:21'),
(2358, '198.244.240.231', NULL, '2025-09-08 14:37:44', '2025-09-08 14:37:44'),
(2359, '198.244.183.78', NULL, '2025-09-08 14:43:19', '2025-09-08 14:43:19'),
(2360, '198.244.226.222', NULL, '2025-09-08 14:43:56', '2025-09-08 14:43:56'),
(2361, '43.130.74.193', NULL, '2025-09-08 14:46:06', '2025-09-08 14:46:06'),
(2362, '51.89.129.107', NULL, '2025-09-08 14:53:52', '2025-09-08 14:53:52'),
(2363, '54.38.147.251', NULL, '2025-09-08 14:54:43', '2025-09-08 14:54:43'),
(2364, '198.244.183.9', NULL, '2025-09-08 14:54:44', '2025-09-08 14:54:44'),
(2365, '198.244.168.57', NULL, '2025-09-08 15:05:37', '2025-09-08 15:05:37'),
(2366, '51.195.183.11', NULL, '2025-09-08 15:11:34', '2025-09-08 15:11:34'),
(2367, '198.244.226.70', NULL, '2025-09-08 15:16:57', '2025-09-08 15:16:57'),
(2368, '51.89.129.124', NULL, '2025-09-08 15:22:50', '2025-09-08 15:22:50'),
(2369, '54.38.147.248', NULL, '2025-09-08 15:28:16', '2025-09-08 15:28:16'),
(2370, '198.244.168.13', NULL, '2025-09-08 15:28:43', '2025-09-08 15:28:43'),
(2371, '198.244.240.237', NULL, '2025-09-08 15:35:50', '2025-09-08 15:35:50'),
(2372, '51.195.183.186', NULL, '2025-09-08 15:36:07', '2025-09-08 15:36:07'),
(2373, '51.75.236.139', NULL, '2025-09-08 15:43:37', '2025-09-08 15:43:37'),
(2374, '94.23.188.197', NULL, '2025-09-08 15:50:05', '2025-09-08 15:50:05'),
(2375, '92.222.108.120', NULL, '2025-09-08 15:50:40', '2025-09-08 15:50:40'),
(2376, '94.23.188.212', NULL, '2025-09-08 15:55:23', '2025-09-08 15:55:23'),
(2377, '5.39.1.224', NULL, '2025-09-08 16:00:45', '2025-09-08 16:00:45'),
(2378, '176.31.139.10', NULL, '2025-09-08 16:06:42', '2025-09-08 16:06:42'),
(2379, '37.59.204.151', NULL, '2025-09-08 16:07:46', '2025-09-08 16:07:46'),
(2380, '92.222.108.96', NULL, '2025-09-08 16:11:57', '2025-09-08 16:11:57'),
(2381, '37.59.204.151', NULL, '2025-09-08 16:17:18', '2025-09-08 16:17:18'),
(2382, '43.153.47.201', NULL, '2025-09-08 16:22:40', '2025-09-08 16:22:40'),
(2383, '37.59.204.150', NULL, '2025-09-08 16:22:56', '2025-09-08 16:22:56'),
(2384, '37.59.204.152', NULL, '2025-09-08 16:23:40', '2025-09-08 16:23:40'),
(2385, '223.244.35.77', NULL, '2025-09-08 16:34:52', '2025-09-08 16:34:52'),
(2386, '92.222.108.121', NULL, '2025-09-08 16:40:59', '2025-09-08 16:40:59'),
(2387, '5.39.109.191', NULL, '2025-09-08 16:41:27', '2025-09-08 16:41:27'),
(2388, '51.68.247.193', NULL, '2025-09-08 16:51:39', '2025-09-08 16:51:39'),
(2389, '51.75.236.159', NULL, '2025-09-08 16:52:03', '2025-09-08 16:52:03'),
(2390, '5.39.109.173', NULL, '2025-09-08 17:01:25', '2025-09-08 17:01:25'),
(2391, '51.75.236.151', NULL, '2025-09-08 17:21:45', '2025-09-08 17:21:45'),
(2392, '54.37.118.86', NULL, '2025-09-08 17:33:12', '2025-09-08 17:33:12'),
(2393, '92.222.104.209', NULL, '2025-09-08 17:43:15', '2025-09-08 17:43:15'),
(2394, '37.59.204.152', NULL, '2025-09-08 18:01:44', '2025-09-08 18:01:44'),
(2395, '54.39.89.43', NULL, '2025-09-08 18:39:52', '2025-09-08 18:39:52'),
(2396, '142.44.233.1', NULL, '2025-09-08 18:57:48', '2025-09-08 18:57:48'),
(2397, '54.39.136.150', NULL, '2025-09-08 18:58:14', '2025-09-08 18:58:14'),
(2398, '148.113.128.52', NULL, '2025-09-08 19:15:34', '2025-09-08 19:15:34'),
(2399, '182.43.70.143', NULL, '2025-09-08 19:40:38', '2025-09-08 19:40:38'),
(2400, '103.147.163.56', NULL, '2025-09-08 19:50:25', '2025-09-08 19:50:25'),
(2401, '167.114.139.79', NULL, '2025-09-08 19:57:53', '2025-09-08 19:57:53'),
(2402, '54.39.136.253', NULL, '2025-09-08 19:58:38', '2025-09-08 19:58:38'),
(2403, '51.161.37.200', NULL, '2025-09-08 20:15:20', '2025-09-08 20:15:20'),
(2404, '51.161.37.185', NULL, '2025-09-08 20:15:47', '2025-09-08 20:15:47'),
(2405, '142.44.220.239', NULL, '2025-09-08 20:36:39', '2025-09-08 20:36:39'),
(2406, '124.156.226.179', NULL, '2025-09-08 20:52:13', '2025-09-08 20:52:13'),
(2407, '103.147.163.56', NULL, '2025-09-08 20:56:36', '2025-09-08 20:56:36'),
(2408, '51.222.95.154', NULL, '2025-09-08 21:05:49', '2025-09-08 21:05:49'),
(2409, '103.147.163.56', NULL, '2025-09-08 21:17:11', '2025-09-08 21:17:11'),
(2410, '15.235.96.138', NULL, '2025-09-08 21:18:18', '2025-09-08 21:18:18'),
(2411, '142.44.225.94', NULL, '2025-09-08 21:32:35', '2025-09-08 21:32:35'),
(2412, '15.235.98.66', NULL, '2025-09-08 21:33:14', '2025-09-08 21:33:14'),
(2413, '51.161.65.80', NULL, '2025-09-08 21:33:18', '2025-09-08 21:33:18'),
(2414, '15.235.96.116', NULL, '2025-09-08 21:40:15', '2025-09-08 21:40:15'),
(2415, '51.161.65.221', NULL, '2025-09-08 21:46:58', '2025-09-08 21:46:58'),
(2416, '51.161.37.61', NULL, '2025-09-08 21:53:47', '2025-09-08 21:53:47'),
(2417, '54.39.203.194', NULL, '2025-09-08 22:07:43', '2025-09-08 22:07:43'),
(2418, '170.106.161.78', NULL, '2025-09-08 22:15:24', '2025-09-08 22:15:24');
INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(2419, '142.44.228.62', NULL, '2025-09-08 22:22:18', '2025-09-08 22:22:18'),
(2420, '66.249.79.233', NULL, '2025-09-08 22:28:16', '2025-09-08 22:28:16'),
(2421, '15.235.98.148', NULL, '2025-09-08 22:36:56', '2025-09-08 22:36:56'),
(2422, '154.220.164.145', NULL, '2025-09-08 22:45:09', '2025-09-08 22:45:09'),
(2423, '142.44.228.14', NULL, '2025-09-08 22:50:47', '2025-09-08 22:50:47'),
(2424, '142.44.233.211', NULL, '2025-09-08 23:04:45', '2025-09-08 23:04:45'),
(2425, '51.161.37.96', NULL, '2025-09-08 23:36:03', '2025-09-08 23:36:03'),
(2426, '51.161.65.9', NULL, '2025-09-09 01:08:10', '2025-09-09 01:08:10'),
(2427, '43.157.62.101', NULL, '2025-09-09 02:23:50', '2025-09-09 02:23:50'),
(2428, '43.130.102.7', NULL, '2025-09-09 02:37:41', '2025-09-09 02:37:41'),
(2429, '49.51.132.100', NULL, '2025-09-09 03:00:03', '2025-09-09 03:00:03'),
(2430, '66.249.70.171', NULL, '2025-09-09 03:30:51', '2025-09-09 03:30:51'),
(2431, '170.106.35.137', NULL, '2025-09-09 03:32:41', '2025-09-09 03:32:41'),
(2432, '49.51.141.76', NULL, '2025-09-09 03:40:50', '2025-09-09 03:40:50'),
(2433, '124.156.225.181', NULL, '2025-09-09 03:48:36', '2025-09-09 03:48:36'),
(2434, '43.153.96.233', NULL, '2025-09-09 03:58:56', '2025-09-09 03:58:56'),
(2435, '43.131.243.61', NULL, '2025-09-09 04:14:20', '2025-09-09 04:14:20'),
(2436, '43.166.244.66', NULL, '2025-09-09 04:15:29', '2025-09-09 04:15:29'),
(2437, '43.166.250.187', NULL, '2025-09-09 04:19:29', '2025-09-09 04:19:29'),
(2438, '43.166.251.233', NULL, '2025-09-09 04:25:01', '2025-09-09 04:25:01'),
(2439, '118.89.233.234', NULL, '2025-09-09 05:13:22', '2025-09-09 05:13:22'),
(2440, '43.130.139.177', NULL, '2025-09-09 05:13:30', '2025-09-09 05:13:30'),
(2441, '15.235.27.11', NULL, '2025-09-09 05:21:06', '2025-09-09 05:21:06'),
(2442, '43.159.132.207', NULL, '2025-09-09 05:46:42', '2025-09-09 05:46:42'),
(2443, '162.62.231.139', NULL, '2025-09-09 05:54:55', '2025-09-09 05:54:55'),
(2444, '209.38.239.230', NULL, '2025-09-09 06:00:07', '2025-09-09 06:00:07'),
(2445, '209.38.239.230', NULL, '2025-09-09 06:00:09', '2025-09-09 06:00:09'),
(2446, '49.51.36.179', NULL, '2025-09-09 06:06:42', '2025-09-09 06:06:42'),
(2447, '43.155.195.141', NULL, '2025-09-09 06:14:52', '2025-09-09 06:14:52'),
(2448, '43.159.128.155', NULL, '2025-09-09 06:45:56', '2025-09-09 06:45:56'),
(2449, '43.159.128.155', NULL, '2025-09-09 06:45:58', '2025-09-09 06:45:58'),
(2450, '43.156.156.96', NULL, '2025-09-09 06:53:07', '2025-09-09 06:53:07'),
(2451, '43.153.123.3', NULL, '2025-09-09 07:13:51', '2025-09-09 07:13:51'),
(2452, '170.106.180.153', NULL, '2025-09-09 07:24:07', '2025-09-09 07:24:07'),
(2453, '66.249.70.169', NULL, '2025-09-09 07:57:59', '2025-09-09 07:57:59'),
(2454, '66.249.70.170', NULL, '2025-09-09 07:58:07', '2025-09-09 07:58:07'),
(2455, '3.146.111.124', NULL, '2025-09-09 07:59:20', '2025-09-09 07:59:20'),
(2456, '66.249.70.170', NULL, '2025-09-09 07:59:31', '2025-09-09 07:59:31'),
(2457, '3.146.111.124', NULL, '2025-09-09 07:59:52', '2025-09-09 07:59:52'),
(2458, '66.249.70.170', NULL, '2025-09-09 08:01:05', '2025-09-09 08:01:05'),
(2459, '66.249.70.169', NULL, '2025-09-09 08:02:43', '2025-09-09 08:02:43'),
(2460, '66.249.70.171', NULL, '2025-09-09 08:04:13', '2025-09-09 08:04:13'),
(2461, '66.249.70.171', NULL, '2025-09-09 08:05:33', '2025-09-09 08:05:33'),
(2462, '66.249.70.171', NULL, '2025-09-09 08:06:57', '2025-09-09 08:06:57'),
(2463, '66.249.70.170', NULL, '2025-09-09 08:08:32', '2025-09-09 08:08:32'),
(2464, '118.195.153.213', NULL, '2025-09-09 08:13:25', '2025-09-09 08:13:25'),
(2465, '66.249.70.169', NULL, '2025-09-09 08:18:40', '2025-09-09 08:18:40'),
(2466, '66.249.70.170', NULL, '2025-09-09 08:28:19', '2025-09-09 08:28:19'),
(2467, '3.138.185.30', NULL, '2025-09-09 08:30:04', '2025-09-09 08:30:04'),
(2468, '3.138.185.30', NULL, '2025-09-09 08:30:26', '2025-09-09 08:30:26'),
(2469, '206.168.34.74', NULL, '2025-09-09 10:04:53', '2025-09-09 10:04:53'),
(2470, '206.168.34.74', NULL, '2025-09-09 10:05:21', '2025-09-09 10:05:21'),
(2471, '66.249.70.161', NULL, '2025-09-09 10:18:42', '2025-09-09 10:18:42'),
(2472, '15.235.27.241', NULL, '2025-09-09 10:19:25', '2025-09-09 10:19:25'),
(2473, '124.221.245.78', NULL, '2025-09-09 11:19:27', '2025-09-09 11:19:27'),
(2474, '206.168.34.115', NULL, '2025-09-09 12:31:13', '2025-09-09 12:31:13'),
(2475, '206.168.34.115', NULL, '2025-09-09 12:31:34', '2025-09-09 12:31:34'),
(2476, '117.33.163.216', NULL, '2025-09-09 14:23:05', '2025-09-09 14:23:05'),
(2477, '43.166.136.24', NULL, '2025-09-09 14:30:37', '2025-09-09 14:30:37'),
(2478, '162.62.231.139', NULL, '2025-09-09 14:54:41', '2025-09-09 14:54:41'),
(2479, '170.106.73.216', NULL, '2025-09-09 15:07:30', '2025-09-09 15:07:30'),
(2480, '43.157.170.13', NULL, '2025-09-09 15:16:50', '2025-09-09 15:16:50'),
(2481, '54.37.118.89', NULL, '2025-09-09 15:23:23', '2025-09-09 15:23:23'),
(2482, '43.153.135.208', NULL, '2025-09-09 15:27:31', '2025-09-09 15:27:31'),
(2483, '43.155.129.131', NULL, '2025-09-09 15:37:08', '2025-09-09 15:37:08'),
(2484, '43.135.185.59', NULL, '2025-09-09 16:11:06', '2025-09-09 16:11:06'),
(2485, '43.166.129.247', NULL, '2025-09-09 16:19:16', '2025-09-09 16:19:16'),
(2486, '13.67.148.119', NULL, '2025-09-09 16:29:56', '2025-09-09 16:29:56'),
(2487, '14.160.24.238', NULL, '2025-09-09 17:26:31', '2025-09-09 17:26:31'),
(2488, '110.166.71.39', NULL, '2025-09-09 17:37:58', '2025-09-09 17:37:58'),
(2489, '54.37.118.71', NULL, '2025-09-09 17:48:13', '2025-09-09 17:48:13'),
(2490, '89.169.54.137', NULL, '2025-09-09 18:19:55', '2025-09-09 18:19:55'),
(2491, '54.211.109.17', NULL, '2025-09-09 18:57:06', '2025-09-09 18:57:06'),
(2492, '54.211.109.17', NULL, '2025-09-09 18:57:06', '2025-09-09 18:57:06'),
(2493, '66.249.70.171', NULL, '2025-09-09 19:58:45', '2025-09-09 19:58:45'),
(2494, '43.157.98.187', NULL, '2025-09-09 20:21:29', '2025-09-09 20:21:29'),
(2495, '51.68.247.196', NULL, '2025-09-09 20:41:35', '2025-09-09 20:41:35'),
(2496, '175.6.217.4', NULL, '2025-09-09 20:44:38', '2025-09-09 20:44:38'),
(2497, '43.157.150.69', NULL, '2025-09-09 21:47:08', '2025-09-09 21:47:08'),
(2498, '176.31.139.31', NULL, '2025-09-09 21:59:04', '2025-09-09 21:59:04'),
(2499, '51.68.247.208', NULL, '2025-09-09 23:25:15', '2025-09-09 23:25:15'),
(2500, '176.53.219.20', NULL, '2025-09-09 23:26:55', '2025-09-09 23:26:55'),
(2501, '103.147.163.56', NULL, '2025-09-09 23:28:39', '2025-09-09 23:28:39'),
(2502, '36.41.75.167', NULL, '2025-09-09 23:59:02', '2025-09-09 23:59:02'),
(2503, '92.222.108.116', NULL, '2025-09-10 00:44:00', '2025-09-10 00:44:00'),
(2504, '43.157.179.227', NULL, '2025-09-10 01:43:51', '2025-09-10 01:43:51'),
(2505, '54.37.118.85', NULL, '2025-09-10 02:04:32', '2025-09-10 02:04:32'),
(2506, '176.31.139.23', NULL, '2025-09-10 02:53:32', '2025-09-10 02:53:32'),
(2507, '92.222.104.208', NULL, '2025-09-10 03:20:56', '2025-09-10 03:20:56'),
(2508, '170.106.11.6', NULL, '2025-09-10 03:42:37', '2025-09-10 03:42:37'),
(2509, '51.68.247.223', NULL, '2025-09-10 03:52:53', '2025-09-10 03:52:53'),
(2510, '43.157.22.109', NULL, '2025-09-10 04:17:30', '2025-09-10 04:17:30'),
(2511, '94.23.188.219', NULL, '2025-09-10 04:18:08', '2025-09-10 04:18:08'),
(2512, '196.251.69.135', NULL, '2025-09-10 04:24:41', '2025-09-10 04:24:41'),
(2513, '5.39.1.230', NULL, '2025-09-10 04:42:58', '2025-09-10 04:42:58'),
(2514, '170.106.107.87', NULL, '2025-09-10 04:51:53', '2025-09-10 04:51:53'),
(2515, '43.159.152.4', NULL, '2025-09-10 04:59:19', '2025-09-10 04:59:19'),
(2516, '92.222.108.112', NULL, '2025-09-10 05:05:10', '2025-09-10 05:05:10'),
(2517, '43.157.82.252', NULL, '2025-09-10 05:18:33', '2025-09-10 05:18:33'),
(2518, '43.166.242.189', NULL, '2025-09-10 05:19:54', '2025-09-10 05:19:54'),
(2519, '92.222.108.97', NULL, '2025-09-10 05:25:20', '2025-09-10 05:25:20'),
(2520, '43.157.67.70', NULL, '2025-09-10 05:30:58', '2025-09-10 05:30:58'),
(2521, '162.62.132.25', NULL, '2025-09-10 05:41:44', '2025-09-10 05:41:44'),
(2522, '51.75.236.144', NULL, '2025-09-10 05:51:15', '2025-09-10 05:51:15'),
(2523, '114.117.233.112', NULL, '2025-09-10 06:18:36', '2025-09-10 06:18:36'),
(2524, '5.39.109.167', NULL, '2025-09-10 06:23:13', '2025-09-10 06:23:13'),
(2525, '43.166.1.243', NULL, '2025-09-10 06:23:25', '2025-09-10 06:23:25'),
(2526, '51.75.236.147', NULL, '2025-09-10 06:43:25', '2025-09-10 06:43:25'),
(2527, '176.31.139.12', NULL, '2025-09-10 07:00:36', '2025-09-10 07:00:36'),
(2528, '176.31.139.18', NULL, '2025-09-10 07:17:37', '2025-09-10 07:17:37'),
(2529, '5.39.1.232', NULL, '2025-09-10 07:35:24', '2025-09-10 07:35:24'),
(2530, '142.93.238.174', NULL, '2025-09-10 08:02:58', '2025-09-10 08:02:58'),
(2531, '167.172.47.16', NULL, '2025-09-10 08:02:59', '2025-09-10 08:02:59'),
(2532, '92.222.104.204', NULL, '2025-09-10 08:18:43', '2025-09-10 08:18:43'),
(2533, '37.59.204.141', NULL, '2025-09-10 09:03:18', '2025-09-10 09:03:18'),
(2534, '110.40.186.63', NULL, '2025-09-10 09:18:05', '2025-09-10 09:18:05'),
(2535, '92.222.108.108', NULL, '2025-09-10 09:37:41', '2025-09-10 09:37:41'),
(2536, '94.23.188.202', NULL, '2025-09-10 10:21:01', '2025-09-10 10:21:01'),
(2537, '5.39.109.164', NULL, '2025-09-10 11:57:40', '2025-09-10 11:57:40'),
(2538, '66.249.70.161', NULL, '2025-09-10 11:58:14', '2025-09-10 11:58:14'),
(2539, '27.115.124.34', NULL, '2025-09-10 11:59:01', '2025-09-10 11:59:01'),
(2540, '5.39.1.253', NULL, '2025-09-10 13:58:11', '2025-09-10 13:58:11'),
(2541, '103.147.163.56', NULL, '2025-09-10 14:21:12', '2025-09-10 14:21:12'),
(2542, '5.39.109.181', NULL, '2025-09-10 14:45:45', '2025-09-10 14:45:45'),
(2543, '51.75.236.159', NULL, '2025-09-10 14:46:10', '2025-09-10 14:46:10'),
(2544, '65.130.14.108', NULL, '2025-09-10 14:50:58', '2025-09-10 14:50:58'),
(2545, '190.10.8.89', NULL, '2025-09-10 14:50:58', '2025-09-10 14:50:58'),
(2546, '45.84.107.17', NULL, '2025-09-10 14:50:59', '2025-09-10 14:50:59'),
(2547, '43.166.247.82', NULL, '2025-09-10 15:21:31', '2025-09-10 15:21:31'),
(2548, '43.143.248.236', NULL, '2025-09-10 15:27:46', '2025-09-10 15:27:46'),
(2549, '5.39.109.167', NULL, '2025-09-10 15:44:15', '2025-09-10 15:44:15'),
(2550, '51.75.236.140', NULL, '2025-09-10 15:45:03', '2025-09-10 15:45:03'),
(2551, '94.23.188.214', NULL, '2025-09-10 17:04:44', '2025-09-10 17:04:44'),
(2552, '43.167.236.228', NULL, '2025-09-10 17:09:11', '2025-09-10 17:09:11'),
(2553, '45.90.63.116', NULL, '2025-09-10 17:53:35', '2025-09-10 17:53:35'),
(2554, '129.28.14.231', NULL, '2025-09-10 18:40:13', '2025-09-10 18:40:13'),
(2555, '5.39.1.229', NULL, '2025-09-10 19:18:07', '2025-09-10 19:18:07'),
(2556, '66.249.70.169', NULL, '2025-09-10 19:59:52', '2025-09-10 19:59:52'),
(2557, '103.147.163.56', NULL, '2025-09-10 20:14:43', '2025-09-10 20:14:43'),
(2558, '5.133.192.128', NULL, '2025-09-10 21:18:04', '2025-09-10 21:18:04'),
(2559, '20.171.207.167', NULL, '2025-09-10 21:19:07', '2025-09-10 21:19:07'),
(2560, '119.45.20.16', NULL, '2025-09-10 21:45:56', '2025-09-10 21:45:56'),
(2561, '43.130.34.74', NULL, '2025-09-10 21:57:26', '2025-09-10 21:57:26'),
(2562, '103.147.163.56', NULL, '2025-09-10 21:58:30', '2025-09-10 21:58:30'),
(2563, '17.241.227.61', NULL, '2025-09-10 22:34:26', '2025-09-10 22:34:26'),
(2564, '17.241.227.61', NULL, '2025-09-10 22:34:27', '2025-09-10 22:34:27'),
(2565, '43.155.195.141', NULL, '2025-09-10 23:17:41', '2025-09-10 23:17:41'),
(2566, '109.61.85.39', NULL, '2025-09-10 23:39:47', '2025-09-10 23:39:47'),
(2567, '163.47.68.73', NULL, '2025-09-10 23:39:51', '2025-09-10 23:39:51'),
(2568, '91.98.27.203', NULL, '2025-09-10 23:39:52', '2025-09-10 23:39:52'),
(2569, '109.61.85.39', NULL, '2025-09-10 23:46:07', '2025-09-10 23:46:07'),
(2570, '213.139.9.169', NULL, '2025-09-10 23:49:50', '2025-09-10 23:49:50'),
(2571, '54.213.104.120', NULL, '2025-09-10 23:49:52', '2025-09-10 23:49:52'),
(2572, '65.130.14.108', NULL, '2025-09-10 23:49:52', '2025-09-10 23:49:52'),
(2573, '34.241.106.90', NULL, '2025-09-11 00:41:30', '2025-09-11 00:41:30'),
(2574, '122.51.104.231', NULL, '2025-09-11 01:07:07', '2025-09-11 01:07:07'),
(2575, '51.68.247.212', NULL, '2025-09-11 01:21:54', '2025-09-11 01:21:54'),
(2576, '35.88.36.31', NULL, '2025-09-11 01:28:14', '2025-09-11 01:28:14'),
(2577, '17.241.219.17', NULL, '2025-09-11 02:31:09', '2025-09-11 02:31:09'),
(2578, '124.156.225.181', NULL, '2025-09-11 03:32:28', '2025-09-11 03:32:28'),
(2579, '154.54.249.193', NULL, '2025-09-11 03:39:28', '2025-09-11 03:39:28'),
(2580, '43.153.47.201', NULL, '2025-09-11 03:47:29', '2025-09-11 03:47:29'),
(2581, '43.167.245.18', NULL, '2025-09-11 03:55:06', '2025-09-11 03:55:06'),
(2582, '170.106.11.6', NULL, '2025-09-11 04:10:37', '2025-09-11 04:10:37'),
(2583, '182.42.111.156', NULL, '2025-09-11 04:16:17', '2025-09-11 04:16:17'),
(2584, '31.215.69.5', NULL, '2025-09-11 04:16:27', '2025-09-11 04:16:27'),
(2585, '43.130.37.243', NULL, '2025-09-11 04:17:59', '2025-09-11 04:17:59'),
(2586, '101.32.49.171', NULL, '2025-09-11 04:38:34', '2025-09-11 04:38:34'),
(2587, '17.241.227.52', NULL, '2025-09-11 04:42:05', '2025-09-11 04:42:05'),
(2588, '170.106.165.76', NULL, '2025-09-11 04:49:34', '2025-09-11 04:49:34'),
(2589, '63.35.196.206', NULL, '2025-09-11 04:56:53', '2025-09-11 04:56:53'),
(2590, '170.106.167.214', NULL, '2025-09-11 04:58:21', '2025-09-11 04:58:21'),
(2591, '17.241.75.18', NULL, '2025-09-11 05:12:22', '2025-09-11 05:12:22'),
(2592, '43.135.145.73', NULL, '2025-09-11 05:16:20', '2025-09-11 05:16:20'),
(2593, '43.166.253.94', NULL, '2025-09-11 05:24:44', '2025-09-11 05:24:44'),
(2594, '17.241.219.161', NULL, '2025-09-11 05:35:15', '2025-09-11 05:35:15'),
(2595, '49.51.73.183', NULL, '2025-09-11 05:53:28', '2025-09-11 05:53:28'),
(2596, '165.232.159.27', NULL, '2025-09-11 06:00:37', '2025-09-11 06:00:37'),
(2597, '165.232.159.27', NULL, '2025-09-11 06:00:39', '2025-09-11 06:00:39'),
(2598, '170.106.35.187', NULL, '2025-09-11 06:05:30', '2025-09-11 06:05:30'),
(2599, '43.166.136.153', NULL, '2025-09-11 06:24:01', '2025-09-11 06:24:01'),
(2600, '43.135.145.77', NULL, '2025-09-11 06:34:58', '2025-09-11 06:34:58'),
(2601, '18.201.153.113', NULL, '2025-09-11 07:13:12', '2025-09-11 07:13:12'),
(2602, '17.241.227.51', NULL, '2025-09-11 07:16:08', '2025-09-11 07:16:08'),
(2603, '17.241.227.51', NULL, '2025-09-11 07:16:09', '2025-09-11 07:16:09'),
(2604, '43.143.248.236', NULL, '2025-09-11 07:22:21', '2025-09-11 07:22:21'),
(2605, '182.44.2.148', NULL, '2025-09-11 10:22:21', '2025-09-11 10:22:21'),
(2606, '43.166.255.102', NULL, '2025-09-11 10:23:29', '2025-09-11 10:23:29'),
(2607, '43.166.246.180', NULL, '2025-09-11 10:37:20', '2025-09-11 10:37:20'),
(2608, '34.75.139.167', NULL, '2025-09-11 10:42:10', '2025-09-11 10:42:10'),
(2609, '43.153.10.13', NULL, '2025-09-11 10:46:33', '2025-09-11 10:46:33'),
(2610, '43.153.54.138', NULL, '2025-09-11 10:57:03', '2025-09-11 10:57:03'),
(2611, '17.241.227.102', NULL, '2025-09-11 11:03:15', '2025-09-11 11:03:15'),
(2612, '17.241.227.102', NULL, '2025-09-11 11:03:15', '2025-09-11 11:03:15'),
(2613, '43.157.53.115', NULL, '2025-09-11 11:05:56', '2025-09-11 11:05:56'),
(2614, '49.51.203.164', NULL, '2025-09-11 11:27:40', '2025-09-11 11:27:40'),
(2615, '43.165.65.75', NULL, '2025-09-11 11:37:43', '2025-09-11 11:37:43'),
(2616, '17.241.227.8', NULL, '2025-09-11 11:49:26', '2025-09-11 11:49:26'),
(2617, '17.241.227.8', NULL, '2025-09-11 11:49:26', '2025-09-11 11:49:26'),
(2618, '17.241.75.62', NULL, '2025-09-11 11:55:06', '2025-09-11 11:55:06'),
(2619, '43.166.247.82', NULL, '2025-09-11 11:58:10', '2025-09-11 11:58:10'),
(2620, '43.130.102.7', NULL, '2025-09-11 12:09:09', '2025-09-11 12:09:09'),
(2621, '43.130.102.7', NULL, '2025-09-11 12:09:14', '2025-09-11 12:09:14'),
(2622, '43.159.136.201', NULL, '2025-09-11 12:28:09', '2025-09-11 12:28:09'),
(2623, '43.130.141.193', NULL, '2025-09-11 12:38:35', '2025-09-11 12:38:35'),
(2624, '43.157.148.38', NULL, '2025-09-11 12:46:21', '2025-09-11 12:46:21'),
(2625, '43.130.102.7', NULL, '2025-09-11 12:58:08', '2025-09-11 12:58:08'),
(2626, '106.227.49.113', NULL, '2025-09-11 13:31:16', '2025-09-11 13:31:16'),
(2627, '103.147.163.56', NULL, '2025-09-11 15:31:25', '2025-09-11 15:31:25'),
(2628, '170.106.11.6', NULL, '2025-09-11 15:33:19', '2025-09-11 15:33:19'),
(2629, '43.132.214.228', NULL, '2025-09-11 15:48:55', '2025-09-11 15:48:55'),
(2630, '43.130.15.147', NULL, '2025-09-11 15:57:21', '2025-09-11 15:57:21'),
(2631, '154.220.164.231', NULL, '2025-09-11 16:34:30', '2025-09-11 16:34:30'),
(2632, '43.157.175.122', NULL, '2025-09-11 16:38:05', '2025-09-11 16:38:05'),
(2633, '110.40.186.63', NULL, '2025-09-11 16:39:40', '2025-09-11 16:39:40'),
(2634, '103.147.163.56', NULL, '2025-09-11 17:00:38', '2025-09-11 17:00:38'),
(2635, '43.133.139.6', NULL, '2025-09-11 17:07:48', '2025-09-11 17:07:48'),
(2636, '43.130.60.195', NULL, '2025-09-11 17:08:03', '2025-09-11 17:08:03'),
(2637, '43.130.60.195', NULL, '2025-09-11 17:08:06', '2025-09-11 17:08:06'),
(2638, '43.153.123.4', NULL, '2025-09-11 17:17:41', '2025-09-11 17:17:41'),
(2639, '43.164.197.224', NULL, '2025-09-11 17:27:02', '2025-09-11 17:27:02'),
(2640, '43.159.148.221', NULL, '2025-09-11 17:37:49', '2025-09-11 17:37:49'),
(2641, '43.153.48.240', NULL, '2025-09-11 17:48:41', '2025-09-11 17:48:41'),
(2642, '101.32.52.164', NULL, '2025-09-11 18:18:02', '2025-09-11 18:18:02'),
(2643, '43.130.72.177', NULL, '2025-09-11 18:27:35', '2025-09-11 18:27:35'),
(2644, '43.153.96.79', NULL, '2025-09-11 18:35:25', '2025-09-11 18:35:25'),
(2645, '43.166.245.120', NULL, '2025-09-11 18:47:11', '2025-09-11 18:47:11'),
(2646, '3.208.16.251', NULL, '2025-09-11 18:47:29', '2025-09-11 18:47:29'),
(2647, '3.208.16.251', NULL, '2025-09-11 18:47:29', '2025-09-11 18:47:29'),
(2648, '43.130.174.37', NULL, '2025-09-11 19:01:28', '2025-09-11 19:01:28'),
(2649, '170.106.163.48', NULL, '2025-09-11 19:11:35', '2025-09-11 19:11:35'),
(2650, '43.130.3.120', NULL, '2025-09-11 19:21:48', '2025-09-11 19:21:48'),
(2651, '64.233.173.139', NULL, '2025-09-11 19:33:02', '2025-09-11 19:33:02'),
(2652, '64.233.173.138', NULL, '2025-09-11 19:33:02', '2025-09-11 19:33:02'),
(2653, '175.6.217.4', NULL, '2025-09-11 19:50:39', '2025-09-11 19:50:39'),
(2654, '43.132.214.228', NULL, '2025-09-11 19:51:38', '2025-09-11 19:51:38'),
(2655, '93.158.91.235', NULL, '2025-09-11 20:19:26', '2025-09-11 20:19:26'),
(2656, '47.128.32.201', NULL, '2025-09-11 21:04:21', '2025-09-11 21:04:21'),
(2657, '43.155.27.244', NULL, '2025-09-11 21:42:56', '2025-09-11 21:42:56'),
(2658, '43.132.214.228', NULL, '2025-09-11 21:58:25', '2025-09-11 21:58:25'),
(2659, '43.130.67.33', NULL, '2025-09-11 22:08:07', '2025-09-11 22:08:07'),
(2660, '43.157.82.252', NULL, '2025-09-11 22:52:48', '2025-09-11 22:52:48'),
(2661, '43.154.127.188', NULL, '2025-09-11 22:58:14', '2025-09-11 22:58:14'),
(2662, '49.232.151.112', NULL, '2025-09-11 22:59:44', '2025-09-11 22:59:44'),
(2663, '43.157.95.239', NULL, '2025-09-11 23:03:41', '2025-09-11 23:03:41'),
(2664, '43.167.157.80', NULL, '2025-09-11 23:07:31', '2025-09-11 23:07:31'),
(2665, '43.130.16.140', NULL, '2025-09-11 23:38:19', '2025-09-11 23:38:19'),
(2666, '43.158.91.71', NULL, '2025-09-11 23:56:45', '2025-09-11 23:56:45'),
(2667, '17.241.227.237', NULL, '2025-09-12 00:21:33', '2025-09-12 00:21:33'),
(2668, '43.133.187.11', NULL, '2025-09-12 00:37:16', '2025-09-12 00:37:16'),
(2669, '117.33.163.216', NULL, '2025-09-12 02:18:07', '2025-09-12 02:18:07'),
(2670, '5.39.109.183', NULL, '2025-09-12 03:09:23', '2025-09-12 03:09:23'),
(2671, '43.159.135.203', NULL, '2025-09-12 03:15:19', '2025-09-12 03:15:19'),
(2672, '5.39.109.181', NULL, '2025-09-12 03:44:05', '2025-09-12 03:44:05'),
(2673, '92.222.104.220', NULL, '2025-09-12 04:11:58', '2025-09-12 04:11:58'),
(2674, '37.111.213.241', NULL, '2025-09-12 04:37:48', '2025-09-12 04:37:48'),
(2675, '94.23.188.215', NULL, '2025-09-12 04:38:57', '2025-09-12 04:38:57'),
(2676, '94.23.188.206', NULL, '2025-09-12 04:39:55', '2025-09-12 04:39:55'),
(2677, '43.153.10.13', NULL, '2025-09-12 05:01:51', '2025-09-12 05:01:51'),
(2678, '92.222.104.205', NULL, '2025-09-12 05:09:52', '2025-09-12 05:09:52'),
(2679, '43.166.128.187', NULL, '2025-09-12 05:17:19', '2025-09-12 05:17:19'),
(2680, '119.45.20.16', NULL, '2025-09-12 05:20:44', '2025-09-12 05:20:44'),
(2681, '43.134.186.61', NULL, '2025-09-12 05:27:57', '2025-09-12 05:27:57'),
(2682, '43.130.40.120', NULL, '2025-09-12 05:38:06', '2025-09-12 05:38:06'),
(2683, '43.152.72.244', NULL, '2025-09-12 05:52:58', '2025-09-12 05:52:58'),
(2684, '92.222.104.215', NULL, '2025-09-12 06:02:13', '2025-09-12 06:02:13'),
(2685, '49.51.183.220', NULL, '2025-09-12 06:02:33', '2025-09-12 06:02:33'),
(2686, '174.138.29.251', NULL, '2025-09-12 06:07:53', '2025-09-12 06:07:53'),
(2687, '43.159.149.56', NULL, '2025-09-12 06:12:46', '2025-09-12 06:12:46'),
(2688, '43.135.185.59', NULL, '2025-09-12 06:34:54', '2025-09-12 06:34:54'),
(2689, '92.222.104.198', NULL, '2025-09-12 06:48:32', '2025-09-12 06:48:32'),
(2690, '43.130.139.136', NULL, '2025-09-12 07:11:35', '2025-09-12 07:11:35'),
(2691, '43.165.65.75', NULL, '2025-09-12 07:23:01', '2025-09-12 07:23:01'),
(2692, '35.196.216.174', NULL, '2025-09-12 07:42:18', '2025-09-12 07:42:18'),
(2693, '101.33.80.42', NULL, '2025-09-12 08:03:39', '2025-09-12 08:03:39'),
(2694, '170.106.161.78', NULL, '2025-09-12 08:15:24', '2025-09-12 08:15:24'),
(2695, '119.28.177.175', NULL, '2025-09-12 08:19:51', '2025-09-12 08:19:51'),
(2696, '122.51.104.231', NULL, '2025-09-12 08:25:30', '2025-09-12 08:25:30'),
(2697, '51.68.247.213', NULL, '2025-09-12 09:15:28', '2025-09-12 09:15:28'),
(2698, '58.49.233.126', NULL, '2025-09-12 11:25:29', '2025-09-12 11:25:29'),
(2699, '103.110.84.40', NULL, '2025-09-12 12:04:49', '2025-09-12 12:04:49'),
(2700, '151.255.1.236', NULL, '2025-09-12 13:19:55', '2025-09-12 13:19:55'),
(2701, '66.102.9.194', NULL, '2025-09-12 13:20:02', '2025-09-12 13:20:02'),
(2702, '66.102.9.192', NULL, '2025-09-12 13:20:02', '2025-09-12 13:20:02'),
(2703, '43.166.244.66', NULL, '2025-09-12 14:21:48', '2025-09-12 14:21:48'),
(2704, '170.106.110.146', NULL, '2025-09-12 14:34:05', '2025-09-12 14:34:05'),
(2705, '170.106.163.84', NULL, '2025-09-12 14:47:03', '2025-09-12 14:47:03'),
(2706, '43.130.26.3', NULL, '2025-09-12 14:57:05', '2025-09-12 14:57:05'),
(2707, '43.166.136.24', NULL, '2025-09-12 15:06:42', '2025-09-12 15:06:42'),
(2708, '43.173.1.57', NULL, '2025-09-12 15:15:53', '2025-09-12 15:15:53'),
(2709, '46.228.199.158', NULL, '2025-09-12 15:16:04', '2025-09-12 15:16:04'),
(2710, '170.106.180.246', NULL, '2025-09-12 15:27:23', '2025-09-12 15:27:23'),
(2711, '43.131.26.226', NULL, '2025-09-12 15:37:46', '2025-09-12 15:37:46'),
(2712, '43.155.157.239', NULL, '2025-09-12 15:54:47', '2025-09-12 15:54:47'),
(2713, '162.62.132.25', NULL, '2025-09-12 15:59:29', '2025-09-12 15:59:29'),
(2714, '43.135.134.127', NULL, '2025-09-12 16:25:49', '2025-09-12 16:25:49'),
(2715, '43.159.145.149', NULL, '2025-09-12 16:35:40', '2025-09-12 16:35:40'),
(2716, '170.106.179.68', NULL, '2025-09-12 16:45:56', '2025-09-12 16:45:56'),
(2717, '45.90.60.98', NULL, '2025-09-12 16:49:12', '2025-09-12 16:49:12'),
(2718, '43.166.128.86', NULL, '2025-09-12 16:57:28', '2025-09-12 16:57:28'),
(2719, '170.106.187.106', NULL, '2025-09-12 17:05:55', '2025-09-12 17:05:55'),
(2720, '43.128.149.102', NULL, '2025-09-12 17:26:46', '2025-09-12 17:26:46'),
(2721, '162.14.197.180', NULL, '2025-09-12 17:39:57', '2025-09-12 17:39:57'),
(2722, '43.157.149.188', NULL, '2025-09-12 20:22:31', '2025-09-12 20:22:31'),
(2723, '66.249.66.73', NULL, '2025-09-12 20:35:44', '2025-09-12 20:35:44'),
(2724, '54.37.118.79', NULL, '2025-09-12 21:05:52', '2025-09-12 21:05:52'),
(2725, '92.222.108.107', NULL, '2025-09-12 21:22:36', '2025-09-12 21:22:36'),
(2726, '101.42.117.179', NULL, '2025-09-12 21:23:33', '2025-09-12 21:23:33'),
(2727, '81.17.20.98', NULL, '2025-09-12 21:34:41', '2025-09-12 21:34:41'),
(2728, '176.31.139.13', NULL, '2025-09-12 21:39:58', '2025-09-12 21:39:58'),
(2729, '43.166.7.113', NULL, '2025-09-12 21:50:17', '2025-09-12 21:50:17'),
(2730, '5.39.109.185', NULL, '2025-09-12 21:58:20', '2025-09-12 21:58:20'),
(2731, '43.166.247.155', NULL, '2025-09-12 22:04:39', '2025-09-12 22:04:39'),
(2732, '94.23.188.192', NULL, '2025-09-12 22:17:19', '2025-09-12 22:17:19'),
(2733, '43.153.26.165', NULL, '2025-09-12 22:24:37', '2025-09-12 22:24:37'),
(2734, '101.91.110.14', NULL, '2025-09-12 22:33:22', '2025-09-12 22:33:22'),
(2735, '170.106.11.6', NULL, '2025-09-12 22:34:22', '2025-09-12 22:34:22'),
(2736, '92.222.108.127', NULL, '2025-09-12 22:35:06', '2025-09-12 22:35:06'),
(2737, '43.154.127.188', NULL, '2025-09-12 22:44:54', '2025-09-12 22:44:54'),
(2738, '43.153.54.14', NULL, '2025-09-12 22:55:29', '2025-09-12 22:55:29'),
(2739, '43.165.190.5', NULL, '2025-09-12 23:14:29', '2025-09-12 23:14:29'),
(2740, '43.166.237.57', NULL, '2025-09-12 23:23:32', '2025-09-12 23:23:32'),
(2741, '43.130.37.243', NULL, '2025-09-12 23:34:02', '2025-09-12 23:34:02'),
(2742, '43.130.37.243', NULL, '2025-09-12 23:34:07', '2025-09-12 23:34:07'),
(2743, '170.106.147.63', NULL, '2025-09-12 23:43:45', '2025-09-12 23:43:45'),
(2744, '176.31.139.27', NULL, '2025-09-12 23:49:11', '2025-09-12 23:49:11'),
(2745, '43.166.245.120', NULL, '2025-09-13 00:04:37', '2025-09-13 00:04:37'),
(2746, '43.133.139.6', NULL, '2025-09-13 00:33:55', '2025-09-13 00:33:55'),
(2747, '51.75.236.144', NULL, '2025-09-13 00:34:47', '2025-09-13 00:34:47'),
(2748, '162.14.210.15', NULL, '2025-09-13 01:21:10', '2025-09-13 01:21:10'),
(2749, '43.157.22.109', NULL, '2025-09-13 02:05:36', '2025-09-13 02:05:36'),
(2750, '37.59.204.140', NULL, '2025-09-13 02:20:44', '2025-09-13 02:20:44'),
(2751, '43.133.139.6', NULL, '2025-09-13 02:30:34', '2025-09-13 02:30:34'),
(2752, '150.109.230.210', NULL, '2025-09-13 02:40:51', '2025-09-13 02:40:51'),
(2753, '43.130.110.130', NULL, '2025-09-13 02:50:12', '2025-09-13 02:50:12'),
(2754, '176.31.139.13', NULL, '2025-09-13 03:19:49', '2025-09-13 03:19:49'),
(2755, '43.135.135.57', NULL, '2025-09-13 03:34:17', '2025-09-13 03:34:17'),
(2756, '205.210.31.181', NULL, '2025-09-13 03:40:15', '2025-09-13 03:40:15'),
(2757, '5.39.1.226', NULL, '2025-09-13 03:50:41', '2025-09-13 03:50:41'),
(2758, '51.75.236.158', NULL, '2025-09-13 03:51:11', '2025-09-13 03:51:11'),
(2759, '49.51.243.95', NULL, '2025-09-13 03:53:24', '2025-09-13 03:53:24'),
(2760, '43.159.149.216', NULL, '2025-09-13 04:02:49', '2025-09-13 04:02:49'),
(2761, '49.51.50.147', NULL, '2025-09-13 04:16:08', '2025-09-13 04:16:08'),
(2762, '37.59.204.131', NULL, '2025-09-13 04:18:28', '2025-09-13 04:18:28'),
(2763, '43.155.162.41', NULL, '2025-09-13 04:21:54', '2025-09-13 04:21:54'),
(2764, '43.155.162.41', NULL, '2025-09-13 04:21:56', '2025-09-13 04:21:56'),
(2765, '205.169.39.41', NULL, '2025-09-13 04:26:35', '2025-09-13 04:26:35'),
(2766, '43.159.152.184', NULL, '2025-09-13 04:31:59', '2025-09-13 04:31:59'),
(2767, '43.128.67.187', NULL, '2025-09-13 04:39:08', '2025-09-13 04:39:08'),
(2768, '5.39.109.163', NULL, '2025-09-13 04:44:37', '2025-09-13 04:44:37'),
(2769, '13.57.253.122', NULL, '2025-09-13 05:03:16', '2025-09-13 05:03:16'),
(2770, '118.89.233.234', NULL, '2025-09-13 05:06:09', '2025-09-13 05:06:09'),
(2771, '43.133.187.11', NULL, '2025-09-13 05:09:16', '2025-09-13 05:09:16'),
(2772, '54.37.118.69', NULL, '2025-09-13 05:15:49', '2025-09-13 05:15:49'),
(2773, '92.222.108.112', NULL, '2025-09-13 05:16:23', '2025-09-13 05:16:23'),
(2774, '170.106.160.90', NULL, '2025-09-13 05:22:22', '2025-09-13 05:22:22'),
(2775, '34.148.168.128', NULL, '2025-09-13 05:36:47', '2025-09-13 05:36:47'),
(2776, '5.39.109.174', NULL, '2025-09-13 05:45:21', '2025-09-13 05:45:21'),
(2777, '134.122.21.99', NULL, '2025-09-13 06:31:41', '2025-09-13 06:31:41'),
(2778, '134.122.21.99', NULL, '2025-09-13 06:31:43', '2025-09-13 06:31:43'),
(2779, '170.106.143.6', NULL, '2025-09-13 06:48:35', '2025-09-13 06:48:35'),
(2780, '43.130.71.237', NULL, '2025-09-13 07:08:51', '2025-09-13 07:08:51'),
(2781, '170.106.187.106', NULL, '2025-09-13 07:17:55', '2025-09-13 07:17:55'),
(2782, '43.165.69.68', NULL, '2025-09-13 07:29:50', '2025-09-13 07:29:50'),
(2783, '43.157.148.38', NULL, '2025-09-13 07:37:53', '2025-09-13 07:37:53'),
(2784, '170.106.148.137', NULL, '2025-09-13 08:29:11', '2025-09-13 08:29:11'),
(2785, '43.155.188.157', NULL, '2025-09-13 08:37:58', '2025-09-13 08:37:58'),
(2786, '170.106.180.153', NULL, '2025-09-13 08:48:41', '2025-09-13 08:48:41'),
(2787, '132.232.203.74', NULL, '2025-09-13 08:53:56', '2025-09-13 08:53:56'),
(2788, '170.106.192.3', NULL, '2025-09-13 08:58:04', '2025-09-13 08:58:04'),
(2789, '43.130.100.35', NULL, '2025-09-13 09:10:02', '2025-09-13 09:10:02'),
(2790, '17.241.75.217', NULL, '2025-09-13 09:38:51', '2025-09-13 09:38:51'),
(2791, '66.249.70.171', NULL, '2025-09-13 12:20:21', '2025-09-13 12:20:21'),
(2792, '162.14.210.15', NULL, '2025-09-13 12:31:51', '2025-09-13 12:31:51'),
(2793, '27.115.124.114', NULL, '2025-09-13 14:44:01', '2025-09-13 14:44:01'),
(2794, '43.159.152.4', NULL, '2025-09-13 14:49:06', '2025-09-13 14:49:06'),
(2795, '43.165.189.110', NULL, '2025-09-13 20:42:08', '2025-09-13 20:42:08'),
(2796, '103.147.163.56', NULL, '2025-09-13 20:44:57', '2025-09-13 20:44:57'),
(2797, '103.147.163.56', NULL, '2025-09-13 20:46:07', '2025-09-13 20:46:07'),
(2798, '50.18.204.14', NULL, '2025-09-13 20:53:21', '2025-09-13 20:53:21'),
(2799, '104.28.224.94', NULL, '2025-09-13 21:01:15', '2025-09-13 21:01:15'),
(2800, '104.28.224.94', NULL, '2025-09-13 21:01:15', '2025-09-13 21:01:15'),
(2801, '195.123.244.84', NULL, '2025-09-13 21:01:18', '2025-09-13 21:01:18'),
(2802, '195.123.244.84', NULL, '2025-09-13 21:01:18', '2025-09-13 21:01:18'),
(2803, '104.28.224.94', NULL, '2025-09-13 21:01:27', '2025-09-13 21:01:27'),
(2804, '188.166.108.93', NULL, '2025-09-13 21:01:30', '2025-09-13 21:01:30'),
(2805, '157.230.19.140', NULL, '2025-09-13 21:01:30', '2025-09-13 21:01:30'),
(2806, '206.189.19.19', NULL, '2025-09-13 21:01:31', '2025-09-13 21:01:31'),
(2807, '165.22.34.189', NULL, '2025-09-13 21:01:31', '2025-09-13 21:01:31'),
(2808, '206.189.19.19', NULL, '2025-09-13 21:01:31', '2025-09-13 21:01:31'),
(2809, '165.22.34.189', NULL, '2025-09-13 21:01:32', '2025-09-13 21:01:32'),
(2810, '157.230.19.140', NULL, '2025-09-13 21:01:35', '2025-09-13 21:01:35'),
(2811, '188.166.108.93', NULL, '2025-09-13 21:01:35', '2025-09-13 21:01:35'),
(2812, '206.189.19.19', NULL, '2025-09-13 21:01:40', '2025-09-13 21:01:40'),
(2813, '165.22.34.189', NULL, '2025-09-13 21:01:42', '2025-09-13 21:01:42'),
(2814, '157.230.19.140', NULL, '2025-09-13 21:01:47', '2025-09-13 21:01:47'),
(2815, '188.166.108.93', NULL, '2025-09-13 21:01:47', '2025-09-13 21:01:47'),
(2816, '104.28.224.94', NULL, '2025-09-13 21:02:09', '2025-09-13 21:02:09'),
(2817, '104.28.224.94', NULL, '2025-09-13 21:02:09', '2025-09-13 21:02:09'),
(2818, '128.192.12.124', NULL, '2025-09-13 21:02:32', '2025-09-13 21:02:32'),
(2819, '128.192.12.117', NULL, '2025-09-13 21:03:03', '2025-09-13 21:03:03'),
(2820, '50.18.204.14', NULL, '2025-09-13 21:23:59', '2025-09-13 21:23:59'),
(2821, '93.158.90.42', NULL, '2025-09-13 21:37:54', '2025-09-13 21:37:54'),
(2822, '192.36.109.214', NULL, '2025-09-13 21:42:34', '2025-09-13 21:42:34'),
(2823, '23.234.90.116', NULL, '2025-09-13 21:59:59', '2025-09-13 21:59:59'),
(2824, '43.156.168.214', NULL, '2025-09-13 22:00:21', '2025-09-13 22:00:21'),
(2825, '43.130.102.223', NULL, '2025-09-13 22:14:58', '2025-09-13 22:14:58'),
(2826, '170.106.165.186', NULL, '2025-09-13 22:24:28', '2025-09-13 22:24:28'),
(2827, '66.249.70.171', NULL, '2025-09-13 22:27:03', '2025-09-13 22:27:03'),
(2828, '104.28.224.94', NULL, '2025-09-13 22:32:52', '2025-09-13 22:32:52'),
(2829, '104.28.224.94', NULL, '2025-09-13 22:32:53', '2025-09-13 22:32:53'),
(2830, '104.28.224.94', NULL, '2025-09-13 22:32:53', '2025-09-13 22:32:53'),
(2831, '128.192.12.108', NULL, '2025-09-13 22:33:45', '2025-09-13 22:33:45'),
(2832, '104.28.224.94', NULL, '2025-09-13 22:34:00', '2025-09-13 22:34:00'),
(2833, '128.192.12.104', NULL, '2025-09-13 22:34:13', '2025-09-13 22:34:13'),
(2834, '43.157.22.109', NULL, '2025-09-13 22:34:25', '2025-09-13 22:34:25'),
(2835, '104.28.224.94', NULL, '2025-09-13 22:34:48', '2025-09-13 22:34:48'),
(2836, '104.28.224.94', NULL, '2025-09-13 22:34:49', '2025-09-13 22:34:49'),
(2837, '104.28.224.94', NULL, '2025-09-13 22:34:54', '2025-09-13 22:34:54'),
(2838, '104.28.224.94', NULL, '2025-09-13 22:35:23', '2025-09-13 22:35:23'),
(2839, '104.28.224.94', NULL, '2025-09-13 22:35:44', '2025-09-13 22:35:44'),
(2840, '146.70.185.32', NULL, '2025-09-13 22:35:49', '2025-09-13 22:35:49'),
(2841, '146.70.185.32', NULL, '2025-09-13 22:35:50', '2025-09-13 22:35:50'),
(2842, '45.84.107.172', NULL, '2025-09-13 22:36:56', '2025-09-13 22:36:56'),
(2843, '43.164.195.17', NULL, '2025-09-13 22:44:29', '2025-09-13 22:44:29'),
(2844, '18.231.22.225', NULL, '2025-09-13 22:48:45', '2025-09-13 22:48:45'),
(2845, '188.241.177.122', NULL, '2025-09-13 23:00:38', '2025-09-13 23:00:38'),
(2846, '129.226.93.214', NULL, '2025-09-13 23:03:33', '2025-09-13 23:03:33'),
(2847, '150.109.119.38', NULL, '2025-09-13 23:14:39', '2025-09-13 23:14:39'),
(2848, '43.130.16.140', NULL, '2025-09-13 23:26:19', '2025-09-13 23:26:19'),
(2849, '104.28.224.94', NULL, '2025-09-13 23:37:22', '2025-09-13 23:37:22'),
(2850, '43.130.228.73', NULL, '2025-09-13 23:43:30', '2025-09-13 23:43:30'),
(2851, '43.128.156.124', NULL, '2025-09-13 23:53:07', '2025-09-13 23:53:07'),
(2852, '170.106.148.137', NULL, '2025-09-14 00:03:57', '2025-09-14 00:03:57'),
(2853, '15.229.159.20', NULL, '2025-09-14 00:18:14', '2025-09-14 00:18:14'),
(2854, '43.153.26.165', NULL, '2025-09-14 00:54:59', '2025-09-14 00:54:59'),
(2855, '43.163.104.54', NULL, '2025-09-14 01:05:19', '2025-09-14 01:05:19'),
(2856, '43.153.119.119', NULL, '2025-09-14 02:05:00', '2025-09-14 02:05:00'),
(2857, '51.75.236.136', NULL, '2025-09-14 02:28:51', '2025-09-14 02:28:51'),
(2858, '43.130.139.136', NULL, '2025-09-14 02:50:36', '2025-09-14 02:50:36'),
(2859, '43.153.67.21', NULL, '2025-09-14 03:00:10', '2025-09-14 03:00:10'),
(2860, '101.33.66.34', NULL, '2025-09-14 03:29:03', '2025-09-14 03:29:03'),
(2861, '43.130.71.237', NULL, '2025-09-14 03:39:56', '2025-09-14 03:39:56'),
(2862, '43.159.152.184', NULL, '2025-09-14 03:47:57', '2025-09-14 03:47:57'),
(2863, '170.106.165.186', NULL, '2025-09-14 04:00:28', '2025-09-14 04:00:28'),
(2864, '37.111.206.38', NULL, '2025-09-14 04:09:05', '2025-09-14 04:09:05'),
(2865, '43.135.133.241', NULL, '2025-09-14 04:12:25', '2025-09-14 04:12:25'),
(2866, '127.0.0.1', NULL, '2025-12-17 13:20:28', '2025-12-17 13:20:28'),
(2867, '127.0.0.1', NULL, '2025-12-18 05:28:42', '2025-12-18 05:28:42'),
(2868, '127.0.0.1', NULL, '2025-12-18 10:41:09', '2025-12-18 10:41:09'),
(2869, '127.0.0.1', NULL, '2025-12-18 17:36:53', '2025-12-18 17:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `help_topics`
--

DROP TABLE IF EXISTS `help_topics`;
CREATE TABLE IF NOT EXISTS `help_topics` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `ranking` int NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_setups`
--

DROP TABLE IF EXISTS `login_setups`;
CREATE TABLE IF NOT EXISTS `login_setups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_setups`
--

INSERT INTO `login_setups` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'login_options', '{\"manual_login\":\"1\",\"otp_login\":0,\"social_login\":\"1\"}', '2024-09-24 07:52:17', '2025-07-24 19:58:08'),
(2, 'social_media_for_login', '{\"google\":\"1\",\"facebook\":0,\"apple\":0}', '2024-09-24 07:52:17', '2025-07-24 19:58:08'),
(3, 'email_verification', '0', '2024-09-24 07:52:17', '2025-07-24 19:58:08'),
(4, 'phone_verification', '0', '2024-09-24 07:52:17', '2025-07-24 19:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

DROP TABLE IF EXISTS `loyalty_point_transactions`;
CREATE TABLE IF NOT EXISTS `loyalty_point_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_08_105159_create_admins_table', 1),
(5, '2020_09_08_111837_create_admin_roles_table', 1),
(6, '2020_09_16_142451_create_categories_table', 2),
(7, '2020_09_16_181753_create_categories_table', 3),
(8, '2020_09_17_134238_create_brands_table', 4),
(9, '2020_09_17_203054_create_attributes_table', 5),
(10, '2020_09_19_112509_create_coupons_table', 6),
(11, '2020_09_19_161802_create_curriencies_table', 7),
(12, '2020_09_20_114509_create_sellers_table', 8),
(13, '2020_09_23_113454_create_shops_table', 9),
(14, '2020_09_23_115615_create_shops_table', 10),
(15, '2020_09_23_153822_create_shops_table', 11),
(16, '2020_09_21_122817_create_products_table', 12),
(17, '2020_09_22_140800_create_colors_table', 12),
(18, '2020_09_28_175020_create_products_table', 13),
(19, '2020_09_28_180311_create_products_table', 14),
(20, '2020_10_04_105041_create_search_functions_table', 15),
(21, '2020_10_05_150730_create_customers_table', 15),
(22, '2020_10_08_133548_create_wishlists_table', 16),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(26, '2016_06_01_000004_create_oauth_clients_table', 17),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(28, '2020_10_06_133710_create_product_stocks_table', 17),
(29, '2020_10_06_134636_create_flash_deals_table', 17),
(30, '2020_10_06_134719_create_flash_deal_products_table', 17),
(31, '2020_10_08_115439_create_orders_table', 17),
(32, '2020_10_08_115453_create_order_details_table', 17),
(33, '2020_10_08_121135_create_shipping_addresses_table', 17),
(34, '2020_10_10_171722_create_business_settings_table', 17),
(35, '2020_09_19_161802_create_currencies_table', 18),
(36, '2020_10_12_152350_create_reviews_table', 18),
(37, '2020_10_12_161834_create_reviews_table', 19),
(38, '2020_10_12_180510_create_support_tickets_table', 20),
(39, '2020_10_14_140130_create_transactions_table', 21),
(40, '2020_10_14_143553_create_customer_wallets_table', 21),
(41, '2020_10_14_143607_create_customer_wallet_histories_table', 21),
(42, '2020_10_22_142212_create_support_ticket_convs_table', 21),
(43, '2020_10_24_234813_create_banners_table', 22),
(44, '2020_10_27_111557_create_shipping_methods_table', 23),
(45, '2020_10_27_114154_add_url_to_banners_table', 24),
(46, '2020_10_28_170308_add_shipping_id_to_order_details', 25),
(47, '2020_11_02_140528_add_discount_to_order_table', 26),
(48, '2020_11_03_162723_add_column_to_order_details', 27),
(49, '2020_11_08_202351_add_url_to_banners_table', 28),
(50, '2020_11_10_112713_create_help_topic', 29),
(51, '2020_11_10_141513_create_contacts_table', 29),
(52, '2020_11_15_180036_add_address_column_user_table', 30),
(53, '2020_11_18_170209_add_status_column_to_product_table', 31),
(54, '2020_11_19_115453_add_featured_status_product', 32),
(55, '2020_11_21_133302_create_deal_of_the_days_table', 33),
(56, '2020_11_20_172332_add_product_id_to_products', 34),
(57, '2020_11_27_234439_add__state_to_shipping_addresses', 34),
(58, '2020_11_28_091929_create_chattings_table', 35),
(59, '2020_12_02_011815_add_bank_info_to_sellers', 36),
(60, '2020_12_08_193234_create_social_medias_table', 37),
(61, '2020_12_13_122649_shop_id_to_chattings', 37),
(62, '2020_12_14_145116_create_seller_wallet_histories_table', 38),
(63, '2020_12_14_145127_create_seller_wallets_table', 38),
(64, '2020_12_15_174804_create_admin_wallets_table', 39),
(65, '2020_12_15_174821_create_admin_wallet_histories_table', 39),
(66, '2020_12_15_214312_create_feature_deals_table', 40),
(67, '2020_12_17_205712_create_withdraw_requests_table', 41),
(68, '2021_02_22_161510_create_notifications_table', 42),
(69, '2021_02_24_154706_add_deal_type_to_flash_deals', 43),
(70, '2021_03_03_204349_add_cm_firebase_token_to_users', 44),
(71, '2021_04_17_134848_add_column_to_order_details_stock', 45),
(72, '2021_05_12_155401_add_auth_token_seller', 46),
(73, '2021_06_03_104531_ex_rate_update', 47),
(74, '2021_06_03_222413_amount_withdraw_req', 48),
(75, '2021_06_04_154501_seller_wallet_withdraw_bal', 49),
(76, '2021_06_04_195853_product_dis_tax', 50),
(77, '2021_05_27_103505_create_product_translations_table', 51),
(78, '2021_06_17_054551_create_soft_credentials_table', 51),
(79, '2021_06_29_212549_add_active_col_user_table', 52),
(80, '2021_06_30_212619_add_col_to_contact', 53),
(81, '2021_07_01_160828_add_col_daily_needs_products', 54),
(82, '2021_07_04_182331_add_col_seller_sales_commission', 55),
(83, '2021_08_07_190655_add_seo_columns_to_products', 56),
(84, '2021_08_07_205913_add_col_to_category_table', 56),
(85, '2021_08_07_210808_add_col_to_shops_table', 56),
(86, '2021_08_14_205216_change_product_price_col_type', 56),
(87, '2021_08_16_201505_change_order_price_col', 56),
(88, '2021_08_16_201552_change_order_details_price_col', 56),
(89, '2019_09_29_154000_create_payment_cards_table', 57),
(90, '2021_08_17_213934_change_col_type_seller_earning_history', 57),
(91, '2021_08_17_214109_change_col_type_admin_earning_history', 57),
(92, '2021_08_17_214232_change_col_type_admin_wallet', 57),
(93, '2021_08_17_214405_change_col_type_seller_wallet', 57),
(94, '2021_08_22_184834_add_publish_to_products_table', 57),
(95, '2021_09_08_211832_add_social_column_to_users_table', 57),
(96, '2021_09_13_165535_add_col_to_user', 57),
(97, '2021_09_19_061647_add_limit_to_coupons_table', 57),
(98, '2021_09_20_020716_add_coupon_code_to_orders_table', 57),
(99, '2021_09_23_003059_add_gst_to_sellers_table', 57),
(100, '2021_09_28_025411_create_order_transactions_table', 57),
(101, '2021_10_02_185124_create_carts_table', 57),
(102, '2021_10_02_190207_create_cart_shippings_table', 57),
(103, '2021_10_03_194334_add_col_order_table', 57),
(104, '2021_10_03_200536_add_shipping_cost', 57),
(105, '2021_10_04_153201_add_col_to_order_table', 57),
(106, '2021_10_07_172701_add_col_cart_shop_info', 57),
(107, '2021_10_07_184442_create_phone_or_email_verifications_table', 57),
(108, '2021_10_07_185416_add_user_table_email_verified', 57),
(109, '2021_10_11_192739_add_transaction_amount_table', 57),
(110, '2021_10_11_200850_add_order_verification_code', 57),
(111, '2021_10_12_083241_add_col_to_order_transaction', 57),
(112, '2021_10_12_084440_add_seller_id_to_order', 57),
(113, '2021_10_12_102853_change_col_type', 57),
(114, '2021_10_12_110434_add_col_to_admin_wallet', 57),
(115, '2021_10_12_110829_add_col_to_seller_wallet', 57),
(116, '2021_10_13_091801_add_col_to_admin_wallets', 57),
(117, '2021_10_13_092000_add_col_to_seller_wallets_tax', 57),
(118, '2021_10_13_165947_rename_and_remove_col_seller_wallet', 57),
(119, '2021_10_13_170258_rename_and_remove_col_admin_wallet', 57),
(120, '2021_10_14_061603_column_update_order_transaction', 57),
(121, '2021_10_15_103339_remove_col_from_seller_wallet', 57),
(122, '2021_10_15_104419_add_id_col_order_tran', 57),
(123, '2021_10_15_213454_update_string_limit', 57),
(124, '2021_10_16_234037_change_col_type_translation', 57),
(125, '2021_10_16_234329_change_col_type_translation_1', 57),
(126, '2021_10_27_091250_add_shipping_address_in_order', 58),
(127, '2021_01_24_205114_create_paytabs_invoices_table', 59),
(128, '2021_11_20_043814_change_pass_reset_email_col', 59),
(129, '2021_11_25_043109_create_delivery_men_table', 60),
(130, '2021_11_25_062242_add_auth_token_delivery_man', 60),
(131, '2021_11_27_043405_add_deliveryman_in_order_table', 60),
(132, '2021_11_27_051432_create_delivery_histories_table', 60),
(133, '2021_11_27_051512_add_fcm_col_for_delivery_man', 60),
(134, '2021_12_15_123216_add_columns_to_banner', 60),
(135, '2022_01_04_100543_add_order_note_to_orders_table', 60),
(136, '2022_01_10_034952_add_lat_long_to_shipping_addresses_table', 60),
(137, '2022_01_10_045517_create_billing_addresses_table', 60),
(138, '2022_01_11_040755_add_is_billing_to_shipping_addresses_table', 60),
(139, '2022_01_11_053404_add_billing_to_orders_table', 60),
(140, '2022_01_11_234310_add_firebase_toke_to_sellers_table', 60),
(141, '2022_01_16_121801_change_colu_type', 60),
(142, '2022_01_22_101601_change_cart_col_type', 61),
(143, '2022_01_23_031359_add_column_to_orders_table', 61),
(144, '2022_01_28_235054_add_status_to_admins_table', 61),
(145, '2022_02_01_214654_add_pos_status_to_sellers_table', 61),
(146, '2019_12_14_000001_create_personal_access_tokens_table', 62),
(147, '2022_02_11_225355_add_checked_to_orders_table', 62),
(148, '2022_02_14_114359_create_refund_requests_table', 62),
(149, '2022_02_14_115757_add_refund_request_to_order_details_table', 62),
(150, '2022_02_15_092604_add_order_details_id_to_transactions_table', 62),
(151, '2022_02_15_121410_create_refund_transactions_table', 62),
(152, '2022_02_24_091236_add_multiple_column_to_refund_requests_table', 62),
(153, '2022_02_24_103827_create_refund_statuses_table', 62),
(154, '2022_03_01_121420_add_refund_id_to_refund_transactions_table', 62),
(155, '2022_03_10_091943_add_priority_to_categories_table', 63),
(156, '2022_03_13_111914_create_shipping_types_table', 63),
(157, '2022_03_13_121514_create_category_shipping_costs_table', 63),
(158, '2022_03_14_074413_add_four_column_to_products_table', 63),
(159, '2022_03_15_105838_add_shipping_to_carts_table', 63),
(160, '2022_03_16_070327_add_shipping_type_to_orders_table', 63),
(161, '2022_03_17_070200_add_delivery_info_to_orders_table', 63),
(162, '2022_03_18_143339_add_shipping_type_to_carts_table', 63),
(163, '2022_04_06_020313_create_subscriptions_table', 64),
(164, '2022_04_12_233704_change_column_to_products_table', 64),
(165, '2022_04_19_095926_create_jobs_table', 64),
(166, '2022_05_12_104247_create_wallet_transactions_table', 65),
(167, '2022_05_12_104511_add_two_column_to_users_table', 65),
(168, '2022_05_14_063309_create_loyalty_point_transactions_table', 65),
(169, '2022_05_26_044016_add_user_type_to_password_resets_table', 65),
(170, '2022_04_15_235820_add_provider', 66),
(171, '2022_07_21_101659_add_code_to_products_table', 66),
(172, '2022_07_26_103744_add_notification_count_to_notifications_table', 66),
(173, '2022_07_31_031541_add_minimum_order_qty_to_products_table', 66),
(174, '2022_08_11_172839_add_product_type_and_digital_product_type_and_digital_file_ready_to_products', 67),
(175, '2022_08_11_173941_add_product_type_and_digital_product_type_and_digital_file_to_order_details', 67),
(176, '2022_08_20_094225_add_product_type_and_digital_product_type_and_digital_file_ready_to_carts_table', 67),
(177, '2022_10_04_160234_add_banking_columns_to_delivery_men_table', 68),
(178, '2022_10_04_161339_create_deliveryman_wallets_table', 68),
(179, '2022_10_04_184506_add_deliverymanid_column_to_withdraw_requests_table', 68),
(180, '2022_10_11_103011_add_deliverymans_columns_to_chattings_table', 68),
(181, '2022_10_11_144902_add_deliverman_id_cloumn_to_reviews_table', 68),
(182, '2022_10_17_114744_create_order_status_histories_table', 68),
(183, '2022_10_17_120840_create_order_expected_delivery_histories_table', 68),
(184, '2022_10_18_084245_add_deliveryman_charge_and_expected_delivery_date', 68),
(185, '2022_10_18_130938_create_delivery_zip_codes_table', 68),
(186, '2022_10_18_130956_create_delivery_country_codes_table', 68),
(187, '2022_10_20_164712_create_delivery_man_transactions_table', 68),
(188, '2022_10_27_145604_create_emergency_contacts_table', 68),
(189, '2022_10_29_182930_add_is_pause_cause_to_orders_table', 68),
(190, '2022_10_31_150604_add_address_phone_country_code_column_to_delivery_men_table', 68),
(191, '2022_11_05_185726_add_order_id_to_reviews_table', 68),
(192, '2022_11_07_190749_create_deliveryman_notifications_table', 68),
(193, '2022_11_08_132745_change_transaction_note_type_to_withdraw_requests_table', 68),
(194, '2022_11_10_193747_chenge_order_amount_seller_amount_admin_commission_delivery_charge_tax_toorder_transactions_table', 68),
(195, '2022_12_17_035723_few_field_add_to_coupons_table', 69),
(196, '2022_12_26_231606_add_coupon_discount_bearer_and_admin_commission_to_orders', 69),
(197, '2023_01_04_003034_alter_billing_addresses_change_zip', 69),
(198, '2023_01_05_121600_change_id_to_transactions_table', 69),
(199, '2023_02_02_113330_create_product_tag_table', 70),
(200, '2023_02_02_114518_create_tags_table', 70),
(201, '2023_02_02_152248_add_tax_model_to_products_table', 70),
(202, '2023_02_02_152718_add_tax_model_to_order_details_table', 70),
(203, '2023_02_02_171034_add_tax_type_to_carts', 70),
(204, '2023_02_06_124447_add_color_image_column_to_products_table', 70),
(205, '2023_02_07_120136_create_withdrawal_methods_table', 70),
(206, '2023_02_07_175939_add_withdrawal_method_id_and_withdrawal_method_fields_to_withdraw_requests_table', 70),
(207, '2023_02_08_143314_add_vacation_start_and_vacation_end_and_vacation_not_column_to_shops_table', 70),
(208, '2023_02_09_104656_add_payment_by_and_payment_not_to_orders_table', 70),
(209, '2023_03_27_150723_add_expires_at_to_phone_or_email_verifications', 71),
(210, '2023_04_17_095721_create_shop_followers_table', 71),
(211, '2023_04_17_111249_add_bottom_banner_to_shops_table', 71),
(212, '2023_04_20_125423_create_product_compares_table', 71),
(213, '2023_04_30_165642_add_category_sub_category_and_sub_sub_category_add_in_product_table', 71),
(214, '2023_05_16_131006_add_expires_at_to_password_resets', 71),
(215, '2023_05_17_044243_add_visit_count_to_tags_table', 71),
(216, '2023_05_18_000403_add_title_and_subtitle_and_background_color_and_button_text_to_banners_table', 71),
(217, '2023_05_21_111300_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_users_table', 71),
(218, '2023_05_21_111600_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_phone_or_email_verifications_table', 71),
(219, '2023_05_21_112215_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_password_resets_table', 71),
(220, '2023_06_04_210726_attachment_lenght_change_to_reviews_table', 71),
(221, '2023_06_05_115153_add_referral_code_and_referred_by_to_users_table', 72),
(222, '2023_06_21_002658_add_offer_banner_to_shops_table', 72),
(223, '2023_07_08_210747_create_most_demandeds_table', 72),
(224, '2023_07_31_111419_add_minimum_order_amount_to_sellers_table', 72),
(225, '2023_08_03_105256_create_offline_payment_methods_table', 72),
(226, '2023_08_07_131013_add_is_guest_column_to_carts_table', 72),
(227, '2023_08_07_170601_create_offline_payments_table', 72),
(228, '2023_08_12_102355_create_add_fund_bonus_categories_table', 72),
(229, '2023_08_12_215346_create_guest_users_table', 72),
(230, '2023_08_12_215659_add_is_guest_column_to_orders_table', 72),
(231, '2023_08_12_215933_add_is_guest_column_to_shipping_addresses_table', 72),
(232, '2023_08_15_000957_add_email_column_toshipping_address_table', 72),
(233, '2023_08_17_222330_add_identify_related_columns_to_admins_table', 72),
(234, '2023_08_20_230624_add_sent_by_and_send_to_in_notifications_table', 72),
(235, '2023_08_20_230911_create_notification_seens_table', 72),
(236, '2023_08_21_042331_add_theme_to_banners_table', 72),
(237, '2023_08_24_150009_add_free_delivery_over_amount_and_status_to_seller_table', 72),
(238, '2023_08_26_161214_add_is_shipping_free_to_orders_table', 72),
(239, '2023_08_26_173523_add_payment_method_column_to_wallet_transactions_table', 72),
(240, '2023_08_26_204653_add_verification_status_column_to_orders_table', 72),
(241, '2023_08_26_225113_create_order_delivery_verifications_table', 72),
(242, '2023_09_03_212200_add_free_delivery_responsibility_column_to_orders_table', 72),
(243, '2023_09_23_153314_add_shipping_responsibility_column_to_orders_table', 72),
(244, '2023_09_25_152733_create_digital_product_otp_verifications_table', 72),
(245, '2023_09_27_191638_add_attachment_column_to_support_ticket_convs_table', 73),
(246, '2023_10_01_205117_add_attachment_column_to_chattings_table', 73),
(247, '2023_10_07_182714_create_notification_messages_table', 73),
(248, '2023_10_21_113354_add_app_language_column_to_users_table', 73),
(249, '2023_10_21_123433_add_app_language_column_to_sellers_table', 73),
(250, '2023_10_21_124657_add_app_language_column_to_delivery_men_table', 73),
(251, '2023_10_22_130225_add_attachment_to_support_tickets_table', 73),
(252, '2023_10_25_113233_make_message_nullable_in_chattings_table', 73),
(253, '2023_10_30_152005_make_attachment_column_type_change_to_reviews_table', 73),
(254, '2024_01_14_192546_add_slug_to_shops_table', 74),
(255, '2024_01_25_175421_add_country_code_to_emergency_contacts_table', 75),
(256, '2024_02_01_200417_add_denied_count_and_approved_count_to_refund_requests_table', 75),
(257, '2024_03_11_130425_add_seen_notification_and_notification_receiver_to_chattings_table', 76),
(258, '2024_03_12_123322_update_images_column_in_refund_requests_table', 76),
(259, '2024_03_21_134659_change_denied_note_column_type_to_text', 76),
(260, '2024_04_03_093637_create_email_templates_table', 77),
(261, '2024_04_17_102137_add_is_checked_column_to_carts_table', 77),
(262, '2024_04_23_130436_create_vendor_registration_reasons_table', 77),
(263, '2024_04_24_093932_add_type_to_help_topics_table', 77),
(264, '2024_05_20_133216_create_review_replies_table', 78),
(265, '2024_05_20_163043_add_image_alt_text_to_brands_table', 78),
(266, '2024_05_26_152030_create_digital_product_variations_table', 78),
(267, '2024_05_26_152339_create_product_seos_table', 78),
(268, '2024_05_27_184401_add_digital_product_file_types_and_digital_product_extensions_to_products_table', 78),
(269, '2024_05_30_101603_create_storages_table', 78),
(270, '2024_06_10_174952_create_robots_meta_contents_table', 78),
(271, '2024_06_12_105137_create_error_logs_table', 78),
(272, '2024_07_03_130217_add_storage_type_columns_to_product_table', 78),
(273, '2024_07_03_153301_add_icon_storage_type_to_catogory_table', 78),
(274, '2024_07_03_171214_add_image_storage_type_to_brands_table', 78),
(275, '2024_07_03_185048_add_storage_type_columns_to_shop_table', 78),
(276, '2024_07_31_133306_create_login_setups_table', 79),
(277, '2024_08_04_123750_add_preview_file_to_products_table', 79),
(278, '2024_08_04_123805_create_authors_table', 79),
(279, '2024_08_04_123845_create_publishing_houses_table', 79),
(280, '2024_08_04_124023_create_digital_product_authors_table', 79),
(281, '2024_08_04_124046_create_digital_product_publishing_houses_table', 79),
(282, '2024_08_25_130313_modify_email_column_as_nullable_in_users_table', 79),
(283, '2024_08_26_130313_modify_token_column_as_text_in_phone_or_email_verifications_table', 79),
(284, '2024_10_01_130036_add_paid_amount_column_in_orders_table', 80),
(285, '2024_10_01_131352_create_restock_products_table', 80),
(286, '2024_10_01_132315_create_restock_product_customers_table', 80),
(287, '2024_11_02_075917_create_stock_clearance_setups_table', 81),
(288, '2024_11_02_075931_create_stock_clearance_products_table', 81),
(289, '2024_11_04_162929_create_analytic_scripts_table', 81),
(290, '2024_12_26_210457_create_blogs_table', 82),
(291, '2024_12_26_210615_create_blog_categories_table', 82),
(292, '2024_12_31_170955_bring_change_amount_column_in_orders_table', 82),
(293, '2025_01_02_180849_create_blog_translations_table', 82),
(294, '2025_01_12_104824_create_blog_seos_table', 82),
(295, '2025_02_10_165648_change_paid_amount_column_typein_orders_table', 82),
(296, '2025_03_08_201607_create_business_pages_table', 83),
(297, '2025_03_08_204555_create_attachments_table', 83),
(298, '2025_04_16_154104_modify_loyalty_point_column_in_users_table', 83),
(299, '2025_09_04_000548_create_checkout_drafts_table', 84);

-- --------------------------------------------------------

--
-- Table structure for table `most_demandeds`
--

DROP TABLE IF EXISTS `most_demandeds`;
CREATE TABLE IF NOT EXISTS `most_demandeds` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sent_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'system',
  `sent_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_count` int NOT NULL DEFAULT '0',
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_messages`
--

DROP TABLE IF EXISTS `notification_messages`;
CREATE TABLE IF NOT EXISTS `notification_messages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_messages`
--

INSERT INTO `notification_messages` (`id`, `user_type`, `key`, `message`, `status`, `created_at`, `updated_at`) VALUES
(41, 'customer', 'order_pending_message', 'customize your order pending message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(42, 'customer', 'order_confirmation_message', 'customize your order confirmation message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(43, 'customer', 'order_processing_message', 'customize your order processing message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(44, 'customer', 'out_for_delivery_message', 'customize your out for delivery message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(45, 'customer', 'order_delivered_message', 'customize your order delivered message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(46, 'customer', 'order_returned_message', 'customize your order returned message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(47, 'customer', 'order_failed_message', 'customize your order failed message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(48, 'customer', 'order_canceled', 'customize your order canceled message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(49, 'customer', 'order_refunded_message', 'customize your order refunded message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(50, 'customer', 'refund_request_canceled_message', 'customize your refund request canceled message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(51, 'customer', 'message_from_delivery_man', 'customize your message from delivery man message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(52, 'customer', 'message_from_admin', 'customize your message from admin message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(53, 'customer', 'message_from_seller', 'customize your message from seller message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(54, 'customer', 'fund_added_by_admin_message', 'customize your fund added by admin message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(55, 'seller', 'new_order_message', 'customize your new order message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(56, 'seller', 'refund_request_message', 'customize your refund request message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(57, 'seller', 'order_edit_message', 'customize your order edit message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(58, 'seller', 'withdraw_request_status_message', 'customize your withdraw request status message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(59, 'seller', 'message_from_customer', 'customize your message from customer message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(60, 'seller', 'message_from_delivery_man', 'customize your message from delivery man message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(61, 'seller', 'delivery_man_assign_by_admin_message', 'customize your delivery man assign by admin message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(62, 'seller', 'order_delivered_message', 'customize your order delivered message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(63, 'seller', 'order_canceled', 'customize your order canceled message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(64, 'seller', 'order_refunded_message', 'customize your order refunded message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(65, 'seller', 'refund_request_canceled_message', 'customize your refund request canceled message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(66, 'seller', 'refund_request_status_changed_by_admin', 'customize your refund request status changed by admin message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(67, 'seller', 'product_request_approved_message', 'customize your product request approved message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(68, 'seller', 'product_request_rejected_message', 'customize your product request rejected message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(69, 'delivery_man', 'new_order_assigned_message', 'customize your new order assigned message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(70, 'delivery_man', 'expected_delivery_date', 'customize your expected delivery date message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(71, 'delivery_man', 'delivery_man_charge', 'customize your delivery man charge message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(72, 'delivery_man', 'order_canceled', 'customize your order canceled message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(73, 'delivery_man', 'order_rescheduled_message', 'customize your order rescheduled message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(74, 'delivery_man', 'order_edit_message', 'customize your order edit message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(75, 'delivery_man', 'message_from_seller', 'customize your message from seller message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(76, 'delivery_man', 'message_from_admin', 'customize your message from admin message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(77, 'delivery_man', 'message_from_customer', 'customize your message from customer message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(78, 'delivery_man', 'cash_collect_by_admin_message', 'customize your cash collect by admin message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(79, 'delivery_man', 'cash_collect_by_seller_message', 'customize your cash collect by seller message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14'),
(80, 'delivery_man', 'withdraw_request_status_message', 'customize your withdraw request status message message', 1, '2025-09-05 01:48:14', '2025-09-05 01:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `notification_seens`
--

DROP TABLE IF EXISTS `notification_seens`;
CREATE TABLE IF NOT EXISTS `notification_seens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `notification_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('16a86421dc59e6cacb58b28d70826594299362c913c4ab109649022547a3e6897695ef8e8a33017c', 2, 1, 'LaravelAuthApp', '[]', 0, '2025-06-25 10:42:30', '2025-06-25 10:42:30', '2026-06-25 10:42:30'),
('6840b7d4ed685bf2e0dc593affa0bd3b968065f47cc226d39ab09f1422b5a1d9666601f3f60a79c1', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:25:41', '2021-07-05 09:25:41', '2022-07-05 15:25:41'),
('c42cdd5ae652b8b2cbac4f2f4b496e889e1a803b08672954c8bbe06722b54160e71dce3e02331544', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:24:36', '2021-07-05 09:24:36', '2022-07-05 15:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`, `provider`) VALUES
(1, NULL, '6amtech', 'GEUx5tqkviM6AAQcz4oi1dcm1KtRdJPgw41lj0eI', 'http://localhost', 1, 0, 0, '2020-10-21 18:27:22', '2020-10-21 18:27:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-21 18:27:23', '2020-10-21 18:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

DROP TABLE IF EXISTS `offline_payments`;
CREATE TABLE IF NOT EXISTS `offline_payments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

DROP TABLE IF EXISTS `offline_payment_methods`;
CREATE TABLE IF NOT EXISTS `offline_payment_methods` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_informations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  `customer_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_ref` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `order_amount` double NOT NULL DEFAULT '0',
  `paid_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `bring_change_amount` decimal(18,12) DEFAULT '0.000000000000',
  `bring_change_amount_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT '0.00',
  `is_pause` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cause` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT '0',
  `discount_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount_bearer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inhouse',
  `shipping_responsibility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint NOT NULL DEFAULT '0',
  `shipping_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `is_shipping_free` tinyint(1) NOT NULL DEFAULT '0',
  `order_group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def-order-group',
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verification_status` tinyint NOT NULL DEFAULT '0',
  `seller_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_data` text COLLATE utf8mb4_unicode_ci,
  `delivery_man_id` bigint DEFAULT NULL,
  `deliveryman_charge` double NOT NULL DEFAULT '0',
  `expected_delivery_date` date DEFAULT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci,
  `billing_address` bigint UNSIGNED DEFAULT NULL,
  `billing_address_data` text COLLATE utf8mb4_unicode_ci,
  `order_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_type',
  `extra_discount` double(8,2) NOT NULL DEFAULT '0.00',
  `extra_discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_delivery_bearer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_service_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_party_delivery_tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100021 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `is_guest`, `customer_type`, `payment_status`, `order_status`, `payment_method`, `transaction_ref`, `payment_by`, `payment_note`, `order_amount`, `paid_amount`, `bring_change_amount`, `bring_change_amount_currency`, `admin_commission`, `is_pause`, `cause`, `shipping_address`, `created_at`, `updated_at`, `discount_amount`, `discount_type`, `coupon_code`, `coupon_discount_bearer`, `shipping_responsibility`, `shipping_method_id`, `shipping_cost`, `is_shipping_free`, `order_group_id`, `verification_code`, `verification_status`, `seller_id`, `seller_is`, `shipping_address_data`, `delivery_man_id`, `deliveryman_charge`, `expected_delivery_date`, `order_note`, `billing_address`, `billing_address_data`, `order_type`, `extra_discount`, `extra_discount_type`, `free_delivery_bearer`, `checked`, `shipping_type`, `delivery_type`, `delivery_service_name`, `third_party_delivery_tracking_id`) VALUES
(100001, '1830', 1, 'customer', 'paid', 'delivered', 'cash_on_delivery', '', NULL, NULL, 4100, 0.000000000000, 0.000000000000, 'BDT', 0.00, '0', NULL, '31', '2025-09-04 16:47:52', '2025-09-04 16:55:29', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 11, 100.00, 0, '7794-bJ60T-1756968472', '890776', 0, 1, 'admin', '{\"id\":31,\"customer_id\":\"1830\",\"is_guest\":true,\"contact_person_name\":\"check\",\"email\":\"ajijul@gmail.com\",\"address_type\":\"permanent\",\"address\":\"sfsdfsfsadfsdf\",\"city\":\"netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', NULL, 0, NULL, NULL, 31, '{\"id\":31,\"customer_id\":\"1830\",\"is_guest\":true,\"contact_person_name\":\"check\",\"email\":\"ajijul@gmail.com\",\"address_type\":\"permanent\",\"address\":\"sfsdfsfsadfsdf\",\"city\":\"netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100002, '1829', 1, 'customer', 'paid', 'delivered', 'cash_on_delivery', '', NULL, NULL, 4100, 0.000000000000, 0.000000000000, 'BDT', 0.00, '0', NULL, '32', '2025-09-04 16:52:56', '2025-09-04 16:56:52', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 11, 100.00, 0, '5878-cKUpS-1756968776', '893068', 0, 1, 'admin', '{\"id\":32,\"customer_id\":\"1829\",\"is_guest\":true,\"contact_person_name\":\"check\",\"email\":\"ajijulnet@gmail.com\",\"address_type\":\"permanent\",\"address\":\"netrakona \",\"city\":\"netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', NULL, 0, NULL, NULL, 32, '{\"id\":32,\"customer_id\":\"1829\",\"is_guest\":true,\"contact_person_name\":\"check\",\"email\":\"ajijulnet@gmail.com\",\"address_type\":\"permanent\",\"address\":\"netrakona \",\"city\":\"netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100003, '1909', 1, 'customer', 'unpaid', 'pending', 'cash_on_delivery', '', NULL, NULL, 4100, 0.000000000000, 0.000000000000, 'BDT', 0.00, '0', NULL, '33', '2025-09-04 20:33:31', '2025-09-04 20:42:55', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 11, 100.00, 0, '1434-9IAvk-1756982011', '779966', 0, 1, 'admin', '{\"id\":33,\"customer_id\":\"1909\",\"is_guest\":true,\"contact_person_name\":\"sdvsdsdv\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"sfsdfsdfsfdsf\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+8806736333434343373\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', NULL, 0, NULL, NULL, 33, '{\"id\":33,\"customer_id\":\"1909\",\"is_guest\":true,\"contact_person_name\":\"sdvsdsdv\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"sfsdfsdfsfdsf\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+8806736333434343373\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100004, '0', 0, 'customer', 'paid', 'delivered', 'cash', NULL, NULL, NULL, 4000, 4000.000000000000, 0.000000000000, NULL, 0.00, '0', NULL, NULL, '2025-09-04 20:42:35', '2025-09-04 20:42:35', 0, NULL, NULL, 'inhouse', NULL, 0, 0.00, 0, 'def-order-group', '0', 0, 2, 'admin', NULL, NULL, 0, NULL, NULL, NULL, NULL, 'POS', 0.00, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(100005, '1911', 1, 'customer', 'paid', 'canceled', 'cash_on_delivery', '', NULL, NULL, 4100, 0.000000000000, 0.000000000000, 'BDT', 0.00, '0', NULL, '34', '2025-09-04 20:43:34', '2025-09-04 20:47:27', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 11, 100.00, 0, '6818-lPjH5-1756982614', '435588', 0, 1, 'admin', '{\"id\":34,\"customer_id\":\"1911\",\"is_guest\":true,\"contact_person_name\":\"sfsdffsdfsdf\",\"email\":\"ggdgdfgfdg\",\"address_type\":\"permanent\",\"address\":\"fsfgdfdsdsfdsfdsf\",\"city\":\"dfgdfgdfgf\",\"zip\":\"67676786\",\"phone\":\"+880667373\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', NULL, 0, NULL, NULL, 34, '{\"id\":34,\"customer_id\":\"1911\",\"is_guest\":true,\"contact_person_name\":\"sfsdffsdfsdf\",\"email\":\"ggdgdfgfdg\",\"address_type\":\"permanent\",\"address\":\"fsfgdfdsdsfdsfdsf\",\"city\":\"dfgdfgdfgf\",\"zip\":\"67676786\",\"phone\":\"+880667373\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100006, '1962', 1, 'customer', 'unpaid', 'pending', 'cash_on_delivery', '', NULL, NULL, 200, 0.000000000000, 0.000000000000, 'BDT', 0.00, '0', NULL, '35', '2025-09-05 01:39:49', '2025-09-06 21:16:18', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 11, 100.00, 0, '7727-kg9O1-1757000389', '573964', 0, 1, 'admin', '{\"id\":35,\"customer_id\":\"1962\",\"is_guest\":true,\"contact_person_name\":\"sfgdsgsgs\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"dfgdfgdfg\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+88066\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', NULL, 0, NULL, NULL, 35, '{\"id\":35,\"customer_id\":\"1962\",\"is_guest\":true,\"contact_person_name\":\"sfgdsgsgs\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"dfgdfgdfg\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+88066\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100007, '1964', 1, 'customer', 'unpaid', 'out_for_delivery', 'cash_on_delivery', '', NULL, NULL, 4100, 0.000000000000, 0.000000000000, 'BDT', 0.00, '0', NULL, '36', '2025-09-05 01:42:47', '2025-09-06 21:31:40', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 11, 100.00, 0, '6811-pNwrD-1757000567', '479646', 0, 1, 'admin', '{\"id\":36,\"customer_id\":\"1964\",\"is_guest\":true,\"contact_person_name\":\"sfsfsf\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"fsrgfsgdgdfg\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+880566868686\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', NULL, 0, NULL, NULL, 36, '{\"id\":36,\"customer_id\":\"1964\",\"is_guest\":true,\"contact_person_name\":\"sfsfsf\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"fsrgfsgdgdfg\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+880566868686\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100008, '2138', 1, 'customer', 'unpaid', 'processing', 'cash_on_delivery', '', NULL, NULL, 12250, 0.000000000000, 0.000000000000, 'BDT', 0.00, '0', NULL, '37', '2025-09-06 21:51:42', '2025-09-06 21:52:31', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 11, 100.00, 0, '2726-sfnPX-1757159502', '833112', 0, 1, 'admin', '{\"id\":37,\"customer_id\":\"2138\",\"is_guest\":true,\"contact_person_name\":\"Eka\",\"email\":\"bikroysheba.info@gmail.com\",\"address_type\":\"permanent\",\"address\":\"Sadar netrakona\",\"city\":\"netrakona\",\"zip\":\"2400\",\"phone\":\"+8801712123456\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', NULL, 0, NULL, NULL, 37, '{\"id\":37,\"customer_id\":\"2138\",\"is_guest\":true,\"contact_person_name\":\"Eka\",\"email\":\"bikroysheba.info@gmail.com\",\"address_type\":\"permanent\",\"address\":\"Sadar netrakona\",\"city\":\"netrakona\",\"zip\":\"2400\",\"phone\":\"+8801712123456\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_verifications`
--

DROP TABLE IF EXISTS `order_delivery_verifications`;
CREATE TABLE IF NOT EXISTS `order_delivery_verifications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `digital_file_after_sell` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci,
  `qty` int NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `tax_model` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'exclude',
  `delivery_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_method_id` bigint DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT '1',
  `refund_request` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `seller_id`, `digital_file_after_sell`, `product_details`, `qty`, `price`, `tax`, `discount`, `tax_model`, `delivery_status`, `payment_status`, `created_at`, `updated_at`, `shipping_method_id`, `variant`, `variation`, `discount_type`, `is_stock_decreased`, `refund_request`) VALUES
(21, 100001, 183, 1, NULL, '{\"id\":183,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"test Product\",\"slug\":\"test-cUDqem\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"23\\\",\\\"position\\\":1}]\",\"category_id\":23,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":13,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-09-03-68b880cc01292.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-09-04-68b93500c8178.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":4000,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":500,\"minimum_order_qty\":1,\"details\":\"<p>invirbvnbib<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-09-03T07:54:24.000000Z\",\"updated_at\":\"2025-09-04T06:43:12.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"test Product\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"MDD9JG\",\"thumbnail_full_url\":{\"key\":\"2025-09-04-68b93500c8178.webp\",\"path\":\"http:\\/\\/timefood.store\\/storage\\/app\\/public\\/product\\/thumbnail\\/2025-09-04-68b93500c8178.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}', 1, 4000, 0, 0, 'include', 'delivered', 'paid', '2025-09-04 16:47:52', '2025-09-04 16:55:29', NULL, '', '[]', 'discount_on_product', 1, 0),
(22, 100002, 183, 1, NULL, '{\"id\":183,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"test Product\",\"slug\":\"test-cUDqem\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"23\\\",\\\"position\\\":1}]\",\"category_id\":23,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":13,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-09-03-68b880cc01292.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-09-04-68b93500c8178.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":4000,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":499,\"minimum_order_qty\":1,\"details\":\"<p>invirbvnbib<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-09-03T07:54:24.000000Z\",\"updated_at\":\"2025-09-04T06:47:52.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"test Product\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"MDD9JG\",\"thumbnail_full_url\":{\"key\":\"2025-09-04-68b93500c8178.webp\",\"path\":\"http:\\/\\/timefood.store\\/storage\\/app\\/public\\/product\\/thumbnail\\/2025-09-04-68b93500c8178.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}', 1, 4000, 0, 0, 'include', 'delivered', 'paid', '2025-09-04 16:52:56', '2025-09-04 16:56:52', NULL, '', '[]', 'discount_on_product', 1, 0),
(23, 100003, 183, 1, NULL, '{\"id\":183,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"test Product\",\"slug\":\"test-cUDqem\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"23\\\",\\\"position\\\":1}]\",\"category_id\":23,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":13,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-09-03-68b880cc01292.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-09-04-68b93500c8178.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":4000,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":498,\"minimum_order_qty\":1,\"details\":\"<p>invirbvnbib<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-09-03T07:54:24.000000Z\",\"updated_at\":\"2025-09-04T06:52:56.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"test Product\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"MDD9JG\",\"thumbnail_full_url\":{\"key\":\"2025-09-04-68b93500c8178.webp\",\"path\":\"http:\\/\\/timefood.store\\/storage\\/app\\/public\\/product\\/thumbnail\\/2025-09-04-68b93500c8178.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}', 1, 4000, 0, 0, 'include', 'pending', 'unpaid', '2025-09-04 20:33:31', '2025-09-04 20:33:31', NULL, '', '[]', 'discount_on_product', 1, 0),
(24, 100004, 183, 1, NULL, '{\"id\":183,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"test Product\",\"slug\":\"test-cUDqem\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"23\\\",\\\"position\\\":1}]\",\"category_id\":23,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":13,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-09-03-68b880cc01292.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-09-04-68b93500c8178.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":4000,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":497,\"minimum_order_qty\":1,\"details\":\"<p>invirbvnbib<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-09-03T07:54:24.000000Z\",\"updated_at\":\"2025-09-04T10:33:31.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"test Product\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"MDD9JG\",\"is_shop_temporary_close\":0,\"thumbnail_full_url\":{\"key\":\"2025-09-04-68b93500c8178.webp\",\"path\":\"http:\\/\\/timefood.store\\/storage\\/app\\/public\\/product\\/thumbnail\\/2025-09-04-68b93500c8178.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[],\"meta_image_full_url\":{\"key\":null,\"path\":null,\"status\":404},\"images_full_url\":[{\"key\":\"2025-09-03-68b880cc01292.webp\",\"path\":null,\"status\":404}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"clearance_sale\":null,\"translations\":[],\"reviews\":[]}', 1, 4000, 0, 0, 'include', 'delivered', 'paid', '2025-09-04 20:42:35', '2025-09-04 20:42:35', NULL, '', '[]', 'discount_on_product', 1, 0),
(25, 100005, 183, 1, NULL, '{\"id\":183,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"test Product\",\"slug\":\"test-cUDqem\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"23\\\",\\\"position\\\":1}]\",\"category_id\":23,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":13,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-09-03-68b880cc01292.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-09-04-68b93500c8178.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":4000,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":496,\"minimum_order_qty\":1,\"details\":\"<p>invirbvnbib<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-09-03T07:54:24.000000Z\",\"updated_at\":\"2025-09-04T10:42:35.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"test Product\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"MDD9JG\",\"thumbnail_full_url\":{\"key\":\"2025-09-04-68b93500c8178.webp\",\"path\":\"http:\\/\\/timefood.store\\/storage\\/app\\/public\\/product\\/thumbnail\\/2025-09-04-68b93500c8178.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}', 1, 4000, 0, 0, 'include', 'returned', 'paid', '2025-09-04 20:43:34', '2025-09-04 20:46:46', NULL, '', '[]', 'discount_on_product', 0, 0),
(26, 100006, 184, 1, NULL, '{\"id\":184,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Check Product\",\"slug\":\"check-product-6LTpq8\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"23\\\",\\\"position\\\":1},{\\\"id\\\":\\\"25\\\",\\\"position\\\":2},{\\\"id\\\":\\\"26\\\",\\\"position\\\":3}]\",\"category_id\":23,\"sub_category_id\":25,\"sub_sub_category_id\":26,\"brand_id\":13,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-09-04-68b9aab5c61fe.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-09-04-68b9aab5cb4c7.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"[\\\"6\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_6\\\",\\\"title\\\":\\\"L\\\",\\\"options\\\":[\\\"\\\"]}]\",\"variation\":\"[]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":100,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":10,\"minimum_order_qty\":1,\"details\":\"<p>fsdfsfsfsfsdf<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-09-04T15:05:25.000000Z\",\"updated_at\":\"2025-09-04T15:05:33.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Check Product\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"654854\",\"thumbnail_full_url\":{\"key\":\"2025-09-04-68b9aab5cb4c7.webp\",\"path\":\"http:\\/\\/timefood.store\\/storage\\/app\\/public\\/product\\/thumbnail\\/2025-09-04-68b9aab5cb4c7.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}', 1, 100, 0, 0, 'include', 'pending', 'unpaid', '2025-09-05 01:39:49', '2025-09-05 01:39:49', NULL, '', '{\"L\":null}', 'discount_on_product', 1, 0),
(27, 100007, 183, 1, NULL, '{\"id\":183,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"test Product\",\"slug\":\"test-cUDqem\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"23\\\",\\\"position\\\":1}]\",\"category_id\":23,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":13,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-09-03-68b880cc01292.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-09-04-68b93500c8178.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":4000,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":496,\"minimum_order_qty\":1,\"details\":\"<p>invirbvnbib<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-09-03T07:54:24.000000Z\",\"updated_at\":\"2025-09-04T10:46:46.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"test Product\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"MDD9JG\",\"thumbnail_full_url\":{\"key\":\"2025-09-04-68b93500c8178.webp\",\"path\":\"http:\\/\\/timefood.store\\/storage\\/app\\/public\\/product\\/thumbnail\\/2025-09-04-68b93500c8178.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}', 1, 4000, 0, 0, 'include', 'pending', 'unpaid', '2025-09-05 01:42:47', '2025-09-05 01:42:47', NULL, '', '[]', 'discount_on_product', 1, 0),
(28, 100008, 185, 1, NULL, '{\"id\":185,\"added_by\":\"admin\",\"user_id\":2,\"name\":\"PS 81 Package\",\"slug\":\"ps-81-package-XUEXXW\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"22\\\",\\\"position\\\":1}]\",\"category_id\":22,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":27,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-09-06-68bc1d330e283.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-09-06-68bc1d3316c46.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-09-06-68bc1d331f323.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":1,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":\"0\",\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":12150,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":100,\"minimum_order_qty\":1,\"details\":null,\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-09-06T11:38:27.000000Z\",\"updated_at\":\"2025-09-06T11:39:13.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"PS 81 Package\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"PS81Package\",\"thumbnail_full_url\":{\"key\":\"2025-09-06-68bc1d331f323.webp\",\"path\":\"http:\\/\\/timefood.store\\/storage\\/app\\/public\\/product\\/thumbnail\\/2025-09-06-68bc1d331f323.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}', 1, 12150, 0, 0, 'include', 'pending', 'unpaid', '2025-09-06 21:51:42', '2025-09-06 21:51:42', NULL, '', '[]', 'discount_on_product', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_expected_delivery_histories`
--

DROP TABLE IF EXISTS `order_expected_delivery_histories`;
CREATE TABLE IF NOT EXISTS `order_expected_delivery_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected_delivery_date` date NOT NULL,
  `cause` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

DROP TABLE IF EXISTS `order_status_histories`;
CREATE TABLE IF NOT EXISTS `order_status_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cause` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `order_id`, `user_id`, `user_type`, `status`, `cause`, `created_at`, `updated_at`) VALUES
(29, 100001, 1830, 'customer', 'pending', NULL, '2025-09-04 16:47:52', '2025-09-04 16:47:52'),
(30, 100001, 0, 'admin', 'processing', NULL, '2025-09-04 16:51:48', '2025-09-04 16:51:48'),
(31, 100002, 1829, 'customer', 'pending', NULL, '2025-09-04 16:52:56', '2025-09-04 16:52:56'),
(32, 100001, 0, 'admin', 'delivered', NULL, '2025-09-04 16:55:29', '2025-09-04 16:55:29'),
(33, 100002, 0, 'admin', 'delivered', NULL, '2025-09-04 16:56:52', '2025-09-04 16:56:52'),
(34, 100003, 1909, 'customer', 'pending', NULL, '2025-09-04 20:33:31', '2025-09-04 20:33:31'),
(35, 100005, 1911, 'customer', 'pending', NULL, '2025-09-04 20:43:34', '2025-09-04 20:43:34'),
(36, 100005, 0, 'admin', 'confirmed', NULL, '2025-09-04 20:44:41', '2025-09-04 20:44:41'),
(37, 100005, 0, 'admin', 'processing', NULL, '2025-09-04 20:44:55', '2025-09-04 20:44:55'),
(38, 100005, 0, 'admin', 'out_for_delivery', NULL, '2025-09-04 20:45:28', '2025-09-04 20:45:28'),
(39, 100005, 0, 'admin', 'delivered', NULL, '2025-09-04 20:46:34', '2025-09-04 20:46:34'),
(40, 100005, 0, 'admin', 'returned', NULL, '2025-09-04 20:46:46', '2025-09-04 20:46:46'),
(41, 100005, 0, 'admin', 'failed', NULL, '2025-09-04 20:47:20', '2025-09-04 20:47:20'),
(42, 100005, 0, 'admin', 'canceled', NULL, '2025-09-04 20:47:27', '2025-09-04 20:47:27'),
(43, 100006, 1962, 'customer', 'pending', NULL, '2025-09-05 01:39:49', '2025-09-05 01:39:49'),
(44, 100007, 1964, 'customer', 'pending', NULL, '2025-09-05 01:42:47', '2025-09-05 01:42:47'),
(45, 100007, 0, 'admin', 'confirmed', NULL, '2025-09-06 21:30:43', '2025-09-06 21:30:43'),
(46, 100007, 0, 'admin', 'processing', NULL, '2025-09-06 21:31:13', '2025-09-06 21:31:13'),
(47, 100007, 0, 'admin', 'out_for_delivery', NULL, '2025-09-06 21:31:40', '2025-09-06 21:31:40'),
(48, 100008, 2138, 'customer', 'pending', NULL, '2025-09-06 21:51:42', '2025-09-06 21:51:42'),
(49, 100008, 0, 'admin', 'processing', NULL, '2025-09-06 21:52:31', '2025-09-06 21:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

DROP TABLE IF EXISTS `order_transactions`;
CREATE TABLE IF NOT EXISTS `order_transactions` (
  `seller_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `order_amount` decimal(50,2) NOT NULL DEFAULT '0.00',
  `seller_amount` decimal(50,2) NOT NULL DEFAULT '0.00',
  `admin_commission` decimal(50,2) NOT NULL DEFAULT '0.00',
  `received_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` decimal(50,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(50,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`seller_id`, `order_id`, `order_amount`, `seller_amount`, `admin_commission`, `received_by`, `status`, `delivery_charge`, `tax`, `created_at`, `updated_at`, `customer_id`, `seller_is`, `delivered_by`, `payment_method`, `transaction_id`, `id`) VALUES
(1, 100001, 4000.00, 4000.00, 0.00, 'admin', 'disburse', 100.00, 0.00, '2025-09-04 16:55:29', '2025-09-04 16:55:29', 1830, 'admin', 'admin', 'cash_on_delivery', '8560-CJs2W-1756968929', 3),
(1, 100002, 4000.00, 4000.00, 0.00, 'admin', 'disburse', 100.00, 0.00, '2025-09-04 16:56:52', '2025-09-04 16:56:52', 1829, 'admin', 'admin', 'cash_on_delivery', '1834-ir9R2-1756969012', 4),
(1, 100005, 4000.00, 4000.00, 0.00, 'admin', 'disburse', 100.00, 0.00, '2025-09-04 20:46:34', '2025-09-04 20:46:34', 1911, 'admin', 'admin', 'cash_on_delivery', '9922-aY1p3-1756982794', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `identity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

DROP TABLE IF EXISTS `payment_requests`;
CREATE TABLE IF NOT EXISTS `payment_requests` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `gateway_callback_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_hook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failure_hook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `external_redirect_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `attribute_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_platform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paytabs_invoices`
--

DROP TABLE IF EXISTS `paytabs_invoices`;
CREATE TABLE IF NOT EXISTS `paytabs_invoices` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint UNSIGNED NOT NULL,
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_code` int UNSIGNED NOT NULL,
  `pt_invoice_id` int UNSIGNED DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` int UNSIGNED DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_first_six_digits` int UNSIGNED DEFAULT NULL,
  `card_last_four_digits` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_or_email_verifications`
--

DROP TABLE IF EXISTS `phone_or_email_verifications`;
CREATE TABLE IF NOT EXISTS `phone_or_email_verifications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone_or_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_or_email_verifications`
--

INSERT INTO `phone_or_email_verifications` (`id`, `phone_or_email`, `token`, `otp_hit_count`, `is_temp_blocked`, `temp_block_time`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'moshiurbhau@gmail.com', '806776', 0, 1, '2025-07-22 19:00:11', NULL, '2025-07-22 18:57:56', '2025-07-22 19:00:11'),
(3, 'moshiurrahmankngc@gmail.com', '866850', 0, 0, NULL, NULL, '2025-07-23 11:48:23', '2025-07-23 11:48:23'),
(4, 'eksoftwares007@gmail.com', '219168', 0, 0, NULL, NULL, '2025-07-23 12:04:57', '2025-07-23 12:04:57'),
(5, 'ekcloud51@gmail.com', '489763', 0, 0, NULL, NULL, '2025-07-23 12:09:32', '2025-07-23 12:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `category_ids` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_sub_category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_qty` int NOT NULL DEFAULT '1',
  `refundable` tinyint(1) NOT NULL DEFAULT '1',
  `digital_product_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_file_ready` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_file_ready_storage_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `images` longtext COLLATE utf8mb4_unicode_ci,
  `color_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_storage_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `preview_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_file_storage_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flash_deal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_provider` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_product` tinyint(1) NOT NULL DEFAULT '0',
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text COLLATE utf8mb4_unicode_ci,
  `variation` text COLLATE utf8mb4_unicode_ci,
  `digital_product_file_types` longtext COLLATE utf8mb4_unicode_ci,
  `digital_product_extensions` longtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `purchase_price` double NOT NULL DEFAULT '0',
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `tax_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_model` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'exclude',
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `discount_type` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_stock` int DEFAULT NULL,
  `minimum_order_qty` int NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `featured_status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` tinyint(1) NOT NULL DEFAULT '0',
  `denied_note` text COLLATE utf8mb4_unicode_ci,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `temp_shipping_cost` double(8,2) DEFAULT NULL,
  `is_shipping_cost_updated` tinyint(1) DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `digital_file_ready_storage_type`, `images`, `color_image`, `thumbnail`, `thumbnail_storage_type`, `preview_file`, `preview_file_storage_type`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `digital_product_file_types`, `digital_product_extensions`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(185, 'admin', 2, 'PS 81 Package', 'ps-81-package-XUEXXW', 'physical', '[{\"id\":\"22\",\"position\":1}]', '22', NULL, NULL, 27, 'pc', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-09-06-68bc1d330e283.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc1d3316c46.webp\",\"storage\":\"public\"}]', '[]', '2025-09-06-68bc1d331f323.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 12150, 0, '0', 'percent', 'include', '0', 'flat', 99, 1, NULL, 0, NULL, '2025-09-06 21:38:27', '2025-09-06 21:51:42', 1, 1, 'PS 81 Package', NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, 'PS81Package'),
(186, 'admin', 2, 'PS150 Standard- 15250', 'ps150-standard-15250-5jrlpz', 'physical', '[{\"id\":\"22\",\"position\":1}]', '22', NULL, NULL, 25, 'pc', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-09-06-68bc22a8c3293.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc22a8cb7be.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc22a8d39eb.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc22a8e0dc0.webp\",\"storage\":\"public\"}]', '[]', '2025-09-06-68bc22a90cdbc.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 10000, 0, '0', 'percent', 'include', '0', 'flat', 100, 1, '<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>', 0, NULL, '2025-09-06 22:01:45', '2025-09-06 22:01:52', 1, 1, 'PS150 Standard- 15250', NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, 'PS150Standard15250'),
(187, 'admin', 2, 'PS150 Premium- 17450', 'ps150-premium-17450-7ygh9O', 'physical', '[{\"id\":\"22\",\"position\":1}]', '22', NULL, NULL, 26, 'pc', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-09-06-68bc235264ee5.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc23526e365.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc23527727c.webp\",\"storage\":\"public\"}]', '[]', '2025-09-06-68bc235281376.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 13000, 0, '0', 'percent', 'include', '0', 'flat', 100, 1, '<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>', 0, NULL, '2025-09-06 22:04:34', '2025-09-06 22:04:42', 1, 1, 'PS150 Premium- 17450', NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, 'PS81Package1'),
(188, 'admin', 2, 'PS150 Platinum- 21750', 'ps150-platinum-21750-qzpnxT', 'physical', '[{\"id\":\"22\",\"position\":1}]', '22', NULL, NULL, 26, 'pc', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-09-06-68bc23dd78ea7.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc23dd81c08.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc23dd89d28.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc23dd92764.webp\",\"storage\":\"public\"}]', '[]', '2025-09-06-68bc23dd9b7cc.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 20000, 0, '0', 'percent', 'include', '0', 'flat', 100, 1, '<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>', 0, NULL, '2025-09-06 22:06:53', '2025-09-06 22:06:57', 1, 1, 'PS150 Platinum- 21750', NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, 'PS81Package2'),
(189, 'admin', 2, 'PS81 Premium- 13150', 'ps81-premium-13150-4S1EGP', 'physical', '[{\"id\":\"22\",\"position\":1}]', '22', NULL, NULL, 26, 'pc', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-09-06-68bc247920be2.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc247929d8d.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc247932142.webp\",\"storage\":\"public\"}]', '[]', '2025-09-06-68bc247939fd6.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 25000, 0, '0', 'percent', 'include', '0', 'flat', 0, 1, '<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>', 0, NULL, '2025-09-06 22:09:29', '2025-09-06 22:09:32', 1, 1, 'PS81 Premium- 13150', NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, 'PS81Package4'),
(190, 'admin', 2, 'PS81 Platinum- 15750', 'ps81-platinum-15750-Nh0GBl', 'physical', '[{\"id\":\"22\",\"position\":1}]', '22', NULL, NULL, 25, 'pc', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-09-06-68bc24e5c6264.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc24e5ce90b.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc24e5d7128.webp\",\"storage\":\"public\"}]', '[]', '2025-09-06-68bc24e5dfefb.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 20000, 0, '0', 'percent', 'include', '0', 'flat', 100, 1, '<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>', 0, NULL, '2025-09-06 22:11:17', '2025-09-06 22:11:21', 1, 1, 'PS81 Platinum- 15750', NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, 'PS81Package5'),
(191, 'admin', 2, 'PS61 Standard- 10500', 'ps61-standard-10500-h5HlKY', 'physical', '[{\"id\":\"22\",\"position\":1}]', '22', NULL, NULL, 27, 'pc', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-09-06-68bc253d3510d.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc253d3d551.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc253d4687c.webp\",\"storage\":\"public\"}]', '[]', '2025-09-06-68bc253d4f16d.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 15000, 0, '0', 'percent', 'include', '0', 'flat', 100, 1, '<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>', 0, NULL, '2025-09-06 22:12:45', '2025-09-06 22:13:00', 1, 1, 'PS61 Standard- 10500', NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, '80dd42f6688c6'),
(192, 'admin', 2, 'PS61 Premium- 11100', 'ps61-premium-11100-ojgPps', 'physical', '[{\"id\":\"27\",\"position\":1}]', '27', NULL, NULL, 27, 'pc', 1, 1, NULL, '', NULL, '[{\"image_name\":\"2025-09-06-68bc259a22c46.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc259a2c694.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-09-06-68bc259a3a707.webp\",\"storage\":\"public\"}]', '[]', '2025-09-06-68bc259a42b5b.webp', 'public', '', 'public', '1', NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', '[]', '[]', 0, 24000, 0, '0', 'percent', 'include', '0', 'flat', 100, 1, '<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>', 0, NULL, '2025-09-06 22:14:18', '2025-12-18 07:27:41', 1, 1, 'PS61 Premium- 11100', NULL, NULL, 1, NULL, 0.00, 0, NULL, NULL, '80dd42f6688c8');

-- --------------------------------------------------------

--
-- Table structure for table `product_compares`
--

DROP TABLE IF EXISTS `product_compares`;
CREATE TABLE IF NOT EXISTS `product_compares` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL COMMENT 'customer_id',
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_seos`
--

DROP TABLE IF EXISTS `product_seos`;
CREATE TABLE IF NOT EXISTS `product_seos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_seos`
--

INSERT INTO `product_seos` (`id`, `product_id`, `title`, `description`, `index`, `no_follow`, `no_image_index`, `no_archive`, `no_snippet`, `max_snippet`, `max_snippet_value`, `max_video_preview`, `max_video_preview_value`, `max_image_preview`, `max_image_preview_value`, `image`, `created_at`, `updated_at`) VALUES
(183, 183, 'test Product', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-03-68b880d49ad4e.webp', '2025-09-03 17:54:28', '2025-09-04 16:43:12'),
(184, 184, 'Check Product', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-04-68b9aab5d3145.webp', '2025-09-05 01:05:25', '2025-09-05 01:05:25'),
(185, 185, 'PS 81 Package', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-06-68bc1d332c2d3.webp', '2025-09-06 21:38:27', '2025-09-06 21:38:27'),
(186, 186, 'PS150 Standard- 15250', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-06-68bc22a92edb4.webp', '2025-09-06 22:01:45', '2025-09-06 22:01:45'),
(187, 187, 'PS150 Premium- 17450', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-06-68bc23528d972.webp', '2025-09-06 22:04:34', '2025-09-06 22:04:34'),
(188, 188, 'PS150 Platinum- 21750', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-06-68bc23dda5097.webp', '2025-09-06 22:06:53', '2025-09-06 22:06:53'),
(189, 189, 'PS81 Premium- 13150', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-06-68bc247943fe2.webp', '2025-09-06 22:09:29', '2025-09-06 22:09:29'),
(190, 190, 'PS81 Platinum- 15750', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-06-68bc24e5e9e61.webp', '2025-09-06 22:11:17', '2025-09-06 22:11:17'),
(191, 191, 'PS61 Standard- 10500', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-06-68bc253d58503.webp', '2025-09-06 22:12:45', '2025-09-06 22:12:45'),
(192, 192, 'PS61 Premium- 11100', NULL, '', '', '', '', '0', '0', '-1', '0', '-1', '0', 'large', '2025-09-06-68bc259a4ee6e.webp', '2025-09-06 22:14:18', '2025-09-06 22:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

DROP TABLE IF EXISTS `product_stocks`;
CREATE TABLE IF NOT EXISTS `product_stocks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `qty` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
CREATE TABLE IF NOT EXISTS `product_tag` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(183, 184, 18, NULL, NULL),
(184, 185, 19, NULL, NULL),
(185, 185, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publishing_houses`
--

DROP TABLE IF EXISTS `publishing_houses`;
CREATE TABLE IF NOT EXISTS `publishing_houses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

DROP TABLE IF EXISTS `refund_requests`;
CREATE TABLE IF NOT EXISTS `refund_requests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_details_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_count` tinyint NOT NULL DEFAULT '0',
  `denied_count` tinyint NOT NULL DEFAULT '0',
  `amount` double(8,2) NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `refund_reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_note` longtext COLLATE utf8mb4_unicode_ci,
  `rejected_note` longtext COLLATE utf8mb4_unicode_ci,
  `payment_info` longtext COLLATE utf8mb4_unicode_ci,
  `change_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_statuses`
--

DROP TABLE IF EXISTS `refund_statuses`;
CREATE TABLE IF NOT EXISTS `refund_statuses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `refund_request_id` bigint UNSIGNED DEFAULT NULL,
  `change_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_by_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_transactions`
--

DROP TABLE IF EXISTS `refund_transactions`;
CREATE TABLE IF NOT EXISTS `refund_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `payment_for` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` bigint UNSIGNED DEFAULT NULL,
  `payment_receiver_id` bigint UNSIGNED DEFAULT NULL,
  `paid_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_details_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_id` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restock_products`
--

DROP TABLE IF EXISTS `restock_products`;
CREATE TABLE IF NOT EXISTS `restock_products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restock_products`
--

INSERT INTO `restock_products` (`id`, `product_id`, `variant`, `created_at`, `updated_at`) VALUES
(1, 1, 'Silver', '2025-07-26 12:47:22', '2025-07-26 12:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `restock_product_customers`
--

DROP TABLE IF EXISTS `restock_product_customers`;
CREATE TABLE IF NOT EXISTS `restock_product_customers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `restock_product_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `customer_id` bigint NOT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `is_saved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review_replies`
--

DROP TABLE IF EXISTS `review_replies`;
CREATE TABLE IF NOT EXISTS `review_replies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `review_id` int NOT NULL,
  `added_by_id` int DEFAULT NULL,
  `added_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'customer, seller, admin, deliveryman',
  `reply_text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `robots_meta_contents`
--

DROP TABLE IF EXISTS `robots_meta_contents`;
CREATE TABLE IF NOT EXISTS `robots_meta_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonicals_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `search_functions`
--

DROP TABLE IF EXISTS `search_functions`;
CREATE TABLE IF NOT EXISTS `search_functions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
CREATE TABLE IF NOT EXISTS `sellers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` text COLLATE utf8mb4_unicode_ci,
  `sales_commission_percentage` double(8,2) DEFAULT NULL,
  `gst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_status` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `free_delivery_status` int NOT NULL DEFAULT '0',
  `free_delivery_over_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `app_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sellers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallets`
--

DROP TABLE IF EXISTS `seller_wallets`;
CREATE TABLE IF NOT EXISTS `seller_wallets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `total_earning` double NOT NULL DEFAULT '0',
  `withdrawn` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_given` double(8,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT '0.00',
  `collected_cash` double(8,2) NOT NULL DEFAULT '0.00',
  `total_tax_collected` double(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_wallets`
--

INSERT INTO `seller_wallets` (`id`, `seller_id`, `total_earning`, `withdrawn`, `created_at`, `updated_at`, `commission_given`, `pending_withdraw`, `delivery_charge_earned`, `collected_cash`, `total_tax_collected`) VALUES
(3, 1, 0, 0, '2025-09-04 16:55:29', '2025-09-04 16:55:29', 0.00, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallet_histories`
--

DROP TABLE IF EXISTS `seller_wallet_histories`;
CREATE TABLE IF NOT EXISTS `seller_wallet_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
CREATE TABLE IF NOT EXISTS `shipping_addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  `contact_person_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_billing` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `customer_id`, `is_guest`, `contact_person_name`, `email`, `address_type`, `address`, `city`, `zip`, `phone`, `created_at`, `updated_at`, `state`, `country`, `latitude`, `longitude`, `is_billing`) VALUES
(31, '1830', 1, 'check', 'ajijul@gmail.com', 'permanent', 'sfsdfsfsadfsdf', 'netrakona', '', '+8801742135093', NULL, NULL, NULL, 'Bangladesh', '-33.8688', '151.2195', 0),
(32, '1829', 1, 'check', 'ajijulnet@gmail.com', 'permanent', 'netrakona ', 'netrakona', '', '+8801742135093', NULL, NULL, NULL, 'Bangladesh', '-33.8688', '151.2195', 0),
(33, '1909', 1, 'sdvsdsdv', '', 'permanent', 'sfsdfsdfsfdsf', '', '', '+8806736333434343373', NULL, NULL, NULL, 'Bangladesh', '-33.8688', '151.2195', 0),
(34, '1911', 1, 'sfsdffsdfsdf', 'ggdgdfgfdg', 'permanent', 'fsfgdfdsdsfdsfdsf', 'dfgdfgdfgf', '67676786', '+880667373', NULL, NULL, NULL, 'Bangladesh', '-33.8688', '151.2195', 0),
(35, '1962', 1, 'sfgdsgsgs', '', 'permanent', 'dfgdfgdfg', '', '', '+88066', NULL, NULL, NULL, 'Bangladesh', '-33.8688', '151.2195', 0),
(36, '1964', 1, 'sfsfsf', '', 'permanent', 'fsrgfsgdgdfg', '', '', '+880566868686', NULL, NULL, NULL, 'Bangladesh', '-33.8688', '151.2195', 0),
(37, '2138', 1, 'Eka', 'bikroysheba.info@gmail.com', 'permanent', 'Sadar netrakona', 'netrakona', '2400', '+8801712123456', NULL, NULL, NULL, 'Bangladesh', '-33.8688', '151.2195', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
CREATE TABLE IF NOT EXISTS `shipping_methods` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `creator_id` bigint DEFAULT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT '0.00',
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `creator_id`, `creator_type`, `title`, `cost`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(11, 1, 'admin', 'hello', 100.00, '1 our', 1, '2025-09-04 16:45:07', '2025-09-04 16:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_types`
--

DROP TABLE IF EXISTS `shipping_types`;
CREATE TABLE IF NOT EXISTS `shipping_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint UNSIGNED DEFAULT NULL,
  `shipping_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_types`
--

INSERT INTO `shipping_types` (`id`, `seller_id`, `shipping_type`, `created_at`, `updated_at`) VALUES
(2, 0, 'order_wise', '2025-09-03 17:58:28', '2025-09-04 16:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `image_storage_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `bottom_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_banner_storage_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `offer_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_banner_storage_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `vacation_start_date` date DEFAULT NULL,
  `vacation_end_date` date DEFAULT NULL,
  `vacation_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacation_status` tinyint NOT NULL DEFAULT '0',
  `temporary_close` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_storage_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_followers`
--

DROP TABLE IF EXISTS `shop_followers`;
CREATE TABLE IF NOT EXISTS `shop_followers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'Customer ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

DROP TABLE IF EXISTS `social_medias`;
CREATE TABLE IF NOT EXISTS `social_medias` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `name`, `link`, `icon`, `active_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'twitter', 'https://x.com', 'fa fa-twitter', 0, 1, '2020-12-31 21:18:03', '2025-07-26 12:03:54'),
(2, 'linkedin', 'https://linkedin.com/', 'fa fa-linkedin', 0, 1, '2021-02-27 16:23:01', '2025-07-26 12:03:49'),
(3, 'google-plus', 'https://g-plus.com/', 'fa fa-google-plus-square', 0, 1, '2021-02-27 16:23:30', '2025-07-26 12:03:45'),
(4, 'pinterest', 'https://pin.com/', 'fa fa-pinterest', 0, 1, '2021-02-27 16:24:14', '2025-07-26 12:03:39'),
(5, 'instagram', 'https://www.instagram.com/lingeriemarket974?igsh=MTl3dDk0MnA3Njdmeg==', 'fa fa-instagram', 1, 1, '2021-02-27 16:24:36', '2025-07-26 12:03:33'),
(6, 'facebook', 'https://www.facebook.com/share/1B2fWQ1t1R/', 'fa fa-facebook', 1, 1, '2021-02-27 19:19:42', '2025-07-26 12:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

DROP TABLE IF EXISTS `soft_credentials`;
CREATE TABLE IF NOT EXISTS `soft_credentials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_clearance_products`
--

DROP TABLE IF EXISTS `stock_clearance_products`;
CREATE TABLE IF NOT EXISTS `stock_clearance_products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `added_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int DEFAULT NULL,
  `setup_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `shop_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'percentage',
  `discount_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_clearance_setups`
--

DROP TABLE IF EXISTS `stock_clearance_setups`;
CREATE TABLE IF NOT EXISTS `stock_clearance_setups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `setup_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `shop_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'percentage',
  `discount_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `offer_active_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_active_range_start` time DEFAULT NULL,
  `offer_active_range_end` time DEFAULT NULL,
  `show_in_homepage` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_homepage_once` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_shop` tinyint(1) NOT NULL DEFAULT '1',
  `duration_start_date` timestamp NULL DEFAULT NULL,
  `duration_end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_clearance_setups`
--

INSERT INTO `stock_clearance_setups` (`id`, `setup_by`, `user_id`, `shop_id`, `is_active`, `discount_type`, `discount_amount`, `offer_active_time`, `offer_active_range_start`, `offer_active_range_end`, `show_in_homepage`, `show_in_homepage_once`, `show_in_shop`, `duration_start_date`, `duration_end_date`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 0, 0, 'flat', 10.000000000000, 'always', NULL, NULL, 1, 0, 1, '2025-09-04 04:00:00', '2025-09-05 03:59:59', '2025-09-05 01:47:57', '2025-09-05 01:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
CREATE TABLE IF NOT EXISTS `storages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `storages_data_id_index` (`data_id`),
  KEY `storages_value_index` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `data_type`, `data_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(191, 'App\\Models\\ProductSeo', '183', 'image', 'public', '2025-09-03 17:54:28', '2025-09-03 17:54:28'),
(192, 'App\\Models\\ProductSeo', '184', 'image', 'public', '2025-09-05 01:05:25', '2025-09-05 01:05:25'),
(193, 'App\\Models\\FlashDeal', '1', 'banner', 'public', '2025-09-05 01:44:08', '2025-09-05 01:44:08'),
(194, 'App\\Models\\ProductSeo', '185', 'image', 'public', '2025-09-06 21:38:27', '2025-09-06 21:38:27'),
(195, 'App\\Models\\Banner', '2', 'photo', 'public', '2025-09-06 21:43:06', '2025-09-06 21:43:06'),
(196, 'App\\Models\\Banner', '3', 'photo', 'public', '2025-09-07 01:15:58', '2025-09-07 01:15:58'),
(197, 'App\\Models\\ProductSeo', '186', 'image', 'public', '2025-09-06 22:01:45', '2025-09-06 22:01:45'),
(198, 'App\\Models\\ProductSeo', '187', 'image', 'public', '2025-09-06 22:04:34', '2025-09-06 22:04:34'),
(199, 'App\\Models\\ProductSeo', '188', 'image', 'public', '2025-09-06 22:06:53', '2025-09-06 22:06:53'),
(200, 'App\\Models\\ProductSeo', '189', 'image', 'public', '2025-09-06 22:09:29', '2025-09-06 22:09:29'),
(201, 'App\\Models\\ProductSeo', '190', 'image', 'public', '2025-09-06 22:11:17', '2025-09-06 22:11:17'),
(202, 'App\\Models\\ProductSeo', '191', 'image', 'public', '2025-09-06 22:12:45', '2025-09-06 22:12:45'),
(203, 'App\\Models\\ProductSeo', '192', 'image', 'public', '2025-09-06 22:14:18', '2025-09-06 22:14:18'),
(204, 'App\\Models\\Banner', '4', 'photo', 'public', '2025-12-18 10:27:46', '2025-12-18 10:27:46'),
(205, 'App\\Models\\Banner', '5', 'photo', 'public', '2025-12-18 10:39:14', '2025-12-18 10:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ajijulcu@gmail.com', '2025-09-06 21:55:27', '2025-09-06 21:55:27'),
(2, 'iuxhwrym@testform.xyz', '2025-09-08 08:57:33', '2025-09-08 08:57:33'),
(3, 'qnpyiekj@testform.xyz', '2025-09-08 08:57:34', '2025-09-08 08:57:34'),
(4, 'eumzqeiw@testform.xyz', '2025-09-08 08:57:34', '2025-09-08 08:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
CREATE TABLE IF NOT EXISTS `support_tickets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `subject` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'low',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `customer_id`, `subject`, `type`, `priority`, `description`, `attachment`, `reply`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 'subjet', 'Complaint', 'Urgent', 'fsfsdfsfdsfdsfdsfdsfsfdsf', '[]', NULL, 'open', '2025-09-05 01:58:50', '2025-09-05 02:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_convs`
--

DROP TABLE IF EXISTS `support_ticket_convs`;
CREATE TABLE IF NOT EXISTS `support_ticket_convs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `support_ticket_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `customer_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `admin_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support_ticket_convs`
--

INSERT INTO `support_ticket_convs` (`id`, `support_ticket_id`, `admin_id`, `customer_message`, `attachment`, `admin_message`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '[]', 'Solution', 0, '2025-09-05 01:59:21', '2025-09-05 01:59:21'),
(2, 1, NULL, 'hello', '[]', NULL, 0, '2025-09-05 02:02:54', '2025-09-05 02:02:54'),
(3, 1, 1, NULL, '[]', 'gggg', 0, '2025-09-05 02:05:14', '2025-09-05 02:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_count` bigint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `visit_count`, `created_at`, `updated_at`) VALUES
(18, 'jama', 0, '2025-09-05 01:05:25', '2025-09-05 01:05:25'),
(19, 'computer', 0, '2025-09-06 21:38:27', '2025-09-06 21:38:27'),
(20, 'pc', 0, '2025-09-06 21:38:27', '2025-09-06 21:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `payment_for` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` bigint DEFAULT NULL,
  `payment_receiver_id` bigint DEFAULT NULL,
  `paid_by` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_to` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_details_id` bigint UNSIGNED DEFAULT NULL,
  UNIQUE KEY `transactions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `translationable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `translations_translationable_id_index` (`translationable_id`),
  KEY `translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translationable_type`, `translationable_id`, `locale`, `key`, `value`, `id`) VALUES
('App\\Models\\Product', 192, 'bd', 'name', 'PS61 Premium- 11100', 19),
('App\\Models\\Product', 192, 'bd', 'description', '<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `payment_card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_card_fawry_token` text COLLATE utf8mb4_unicode_ci,
  `login_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT '0',
  `temporary_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `wallet_balance` double(8,2) DEFAULT NULL,
  `loyalty_point` decimal(18,4) DEFAULT '0.0000',
  `login_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `referral_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` int DEFAULT NULL,
  `app_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `f_name`, `l_name`, `phone`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `street_address`, `country`, `city`, `zip`, `house_no`, `apartment_no`, `cm_firebase_token`, `is_active`, `payment_card_last_four`, `payment_card_brand`, `payment_card_fawry_token`, `login_medium`, `social_id`, `is_phone_verified`, `temporary_token`, `is_email_verified`, `wallet_balance`, `loyalty_point`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `referral_code`, `referred_by`, `app_language`) VALUES
(0, 'walking customer', 'walking', 'customer', '000000000000', 'def.png', 'walking@customer.com', NULL, '', NULL, NULL, '2022-02-03 03:46:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 'en'),
(2, 'Khalid Mahmud', 'Khalid', 'Mahmud', '+8801704976505', 'def.png', 'dev.khalidmahmud01@gmail.com', NULL, '$2y$10$5qJYVap0Lo8gjqXW2qp5Uux6fzYZ9FaR6np1oRgP9Gk8Tmj.4RZy2', NULL, '2025-06-25 10:42:29', '2025-06-25 10:42:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 'z9vmE8xKSwrRZaHRNUnU2VmvN2WbYu6Rgw2Tbq0S', 0, NULL, 0.0000, 0, 0, NULL, 'GTXYYVHLJVHZRVNOLOBW', NULL, 'en'),
(3, 'Moshiur Rahat', 'Moshiur', 'Rahat', '+88001409063324', 'def.png', 'moshiurbhau@gmail.com', NULL, '$2y$10$CnPcPMy0rjhfenKTGSvLmOZFS55Ae2tOk.NtY6kZrw54v8d2A4yqq', NULL, '2025-07-22 18:55:25', '2025-07-22 18:55:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0.0000, 0, 0, NULL, 'HVXHA2LZ6Q2B99VZL9VS', NULL, 'en'),
(4, 'Moshiur Rahman', 'Moshiur', 'Rahman', '+8801409063324', 'def.png', 'moshiurrahmankngc@gmail.com', NULL, '$2y$10$ZzSENHHJ/EO5cDqNQJ8HWuFr2c3oclUE0d37Jrk.mc46LmKH4mTIK', '4CKLYsctqMRoielWZTMyBa14IAte5ZKQnTJRUJlYrhy3e1dxEKVdbh3UgsIJ', '2025-07-23 11:48:18', '2025-07-29 17:16:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0.0000, 0, 0, NULL, 'KJAFZCM9LNXQAYNJTENI', NULL, 'en'),
(6, 'Felix Kim', 'Felix', 'Kim', '+880016170333669', 'def.png', 'ekcloud51@gmail.com', NULL, '$2y$10$fcBcBHG7RG2ZEDtEmBZzKuoxmMON/hSDbSR89UKq3WKIbtVOv/5zS', 'a9gvKArWMAwW90bm0Tbewfr08VylLb8bZXi0nuZB4djri1hU66vGqjyVM5Tz', '2025-07-23 12:09:28', '2025-07-24 19:59:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0.0000, 0, 0, NULL, 'IOUVFKNZ3BLAYGEZ73G1', NULL, 'en'),
(7, 'Kabbo mahmud', 'Kabbo', 'mahmud', '+8801622299728', 'def.png', 'kabbomahmud@gmail.com', NULL, '$2y$10$MLzSXvoCW778TNBqlFObhO9zUN7zD06WYYoY6OkEoUhwEmJlI.83q', 'a4kZ4jdxQFdGRvCdMEdyDKEg8sviVe5y8H2ii9vRrGIz7v98N23OIQehAydY', '2025-07-24 19:59:56', '2025-07-24 20:00:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0.0000, 0, 0, NULL, 'UEAPA3KEYF9R8QLANH3S', NULL, 'en'),
(8, 'Sunney Hald', 'Sunney', 'Hald', '+974455298548754', 'def.png', 'sunney@gmail.com', NULL, '$2y$10$7xKkE.7JkTJEbzQfg.kgk.KQRG0jcGY88uLH5co8NCob.AZdczELK', 'ClyK4jwk1GoSvkLKQ9x21VscSpGybFWwlnSsLU2VwbFqlkV6uPi5mZTGgMmC', '2025-07-28 10:05:19', '2025-07-28 10:05:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0.0000, 0, 0, NULL, 'R9A0EDMSTUQVYJXY57GQ', NULL, 'en'),
(9, 'Jon Asar Jon Asar', 'Jon Asar', 'Jon Asar', '+8801742135093', 'def.png', 'ajijulnet@gmail.com', NULL, '$2y$10$O85TMOPpDtDzLwv5xCVOMOyZjazZlpneJTvRC8ZhahRSLkMLj.VI6', NULL, '2025-09-05 01:57:08', '2025-09-05 01:58:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0.0000, 0, 0, NULL, 'GMH4ZLCKAKNOVLX2IJRH', NULL, 'en'),
(10, 'Khalid Mahmud', 'Khalid', 'Mahmud', '+8801344496417', 'def.png', 'depv.khalidmahmud01@gmail.com', NULL, '$2y$10$OXsn9IyOzeskDYhnyPmoGOOG9MaZVN0ex0q8TC4KFbA5Fw6Jzu1O6', 'yH0d1re6PSjZscRw5713kxjDXlSsC5lqXwicwiDbj0QCBO84mXgmN3jE2oiC', '2025-12-18 06:08:18', '2025-12-18 06:08:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0.0000, 0, 0, NULL, '1MSJAIAXAWYJAGSOZOQ3', NULL, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_registration_reasons`
--

DROP TABLE IF EXISTS `vendor_registration_reasons`;
CREATE TABLE IF NOT EXISTS `vendor_registration_reasons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `priority` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
CREATE TABLE IF NOT EXISTS `wallet_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

DROP TABLE IF EXISTS `withdrawal_methods`;
CREATE TABLE IF NOT EXISTS `withdrawal_methods` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `method_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

DROP TABLE IF EXISTS `withdraw_requests`;
CREATE TABLE IF NOT EXISTS `withdraw_requests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `withdrawal_method_id` bigint UNSIGNED DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `transaction_note` text COLLATE utf8mb4_unicode_ci,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
