-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2015 at 12:14 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mypoints`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `design_id` int(11) NOT NULL,
  `login_link` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cards_id_unique` (`id`),
  UNIQUE KEY `cards_design_id_unique` (`design_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cards`
--
 ----------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `balance` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `companies`
--
 
-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `iso` char(2) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `server` bigint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=247 ;

-- 
--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_06_103611_create_cards_table', 1),
('2015_08_09_084322_create_mycards_table', 2),
('2015_08_09_094504_create_companies_table', 3);

 
-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

INSERT INTO `cards` (`id`, `name`, `company`, `phone`, `design_id`, `login_link`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Optimum Card', 'QC PharmaPrix', '5145605187', 2, 'https://www.facebook.com/', '              das fasdfasd fasdfasdfdas  s dfgsdfgsdfg       asd    ', NULL, '2015-08-09 12:35:25', '2015-08-10 14:06:30');

INSERT INTO `companies` (`id`, `name`, `phone`, `city`, `country_id`, `country`, `address`, `balance`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Customer Plus Discount Card', '020 3624 5192', 'London', '61', 'DOMINICAN REPUBLIC', ' Customer Plus Discount Card\r\n15 Fordham Street, London, E1 1HS\r\nTelephone:  020 3624 5192\r\n ', 'http://www.customer-plus.com/contact/', 'info@customer-plus.com', '2015-08-09 19:54:17', '2015-08-10 14:05:40');

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'MyTestCards', 'ddd@ddd.com', '$2y$10$JymVPT/KF6E1bZA8LrV6u.odbSQYzElJUTIz0DIh60IGPGYM9WxWK', '4buobX8Q4wOnh4TLe7YBrsN00DMFR9eKAcEbtVSue3dorPuPFf8jePJCnLCX', '2015-08-09 12:29:23', '2015-08-09 12:29:57');


CREATE TABLE country (id smallint NOT NULL AUTO_INCREMENT, name varchar(80) NOT NULL, iso char(2) NOT NULL, iso3 char(3), currency varchar(10), server bigint(2) DEFAULT '1', PRIMARY KEY (id)) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (1, 'AFGHANISTAN', 'AF', 'AFG', 'AFN', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (2, 'ALBANIA', 'AL', 'ALB', 'ALL', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (3, 'ALGERIA', 'DZ', 'DZA', 'DZD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (4, 'AMERICAN SAMOA', 'AS', 'ASM', 'WST', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (5, 'ANDORRA', 'AD', 'AND', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (6, 'ANGOLA', 'AO', 'AGO', 'AOA', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (7, 'ANGUILLA', 'AI', 'AIA', 'XCD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (8, 'ANTARCTICA', 'AQ', null, '', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (9, 'ANTIGUA AND BARBUDA', 'AG', 'ATG', 'XCD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (10, 'ARGENTINA', 'AR', 'ARG', 'ARS', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (11, 'ARMENIA', 'AM', 'ARM', 'AMD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (12, 'ARUBA', 'AW', 'ABW', 'AWG', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (13, 'AUSTRALIA', 'AU', 'AUS', 'AUD', 3);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (14, 'AUSTRIA', 'AT', 'AUT', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (15, 'AZERBAIJAN', 'AZ', 'AZE', 'AZN', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (16, 'BAHAMAS', 'BS', 'BHS', 'BSD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (17, 'BAHRAIN', 'BH', 'BHR', 'BHD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (18, 'BANGLADESH', 'BD', 'BGD', 'BDT', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (19, 'BARBADOS', 'BB', 'BRB', 'BBD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (20, 'BELARUS', 'BY', 'BLR', 'BYR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (21, 'BELGIUM', 'BE', 'BEL', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (22, 'BELIZE', 'BZ', 'BLZ', 'BZD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (23, 'BENIN', 'BJ', 'BEN', 'XOF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (24, 'BERMUDA', 'BM', 'BMU', 'BMD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (25, 'BHUTAN', 'BT', 'BTN', 'INR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (26, 'BOLIVIA', 'BO', 'BOL', 'BOB', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (27, 'BOSNIA AND HERZEGOVINA', 'BA', 'BIH', 'BAM', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (28, 'BOTSWANA', 'BW', 'BWA', 'BWP', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (29, 'BOUVET ISLAND', 'BV', null, 'NOK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (30, 'BRAZIL', 'BR', 'BRA', 'BRL', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (31, 'BRITISH INDIAN OCEAN TERRITORY', 'IO', null, 'INR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (32, 'BRUNEI DARUSSALAM', 'BN', 'BRN', 'BND', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (33, 'BULGARIA', 'BG', 'BGR', 'BGN', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (34, 'BURKINA FASO', 'BF', 'BFA', 'XOF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (35, 'BURUNDI', 'BI', 'BDI', 'BIF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (36, 'CAMBODIA', 'KH', 'KHM', 'KHR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (37, 'CAMEROON', 'CM', 'CMR', 'XAF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (38, 'CANADA', 'CA', 'CAN', 'CAD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (39, 'CAPE VERDE', 'CV', 'CPV', 'CVE', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (40, 'CAYMAN ISLANDS', 'KY', 'CYM', 'KYD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (41, 'CENTRAL AFRICAN REPUBLIC', 'CF', 'CAF', 'XAF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (42, 'CHAD', 'TD', 'TCD', 'XAF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (43, 'CHILE', 'CL', 'CHL', 'CLP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (44, 'CHINA', 'CN', 'CHN', 'CNY', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (45, 'CHRISTMAS ISLAND', 'CX', null, 'AUD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (46, 'COCOS (KEELING) ISLANDS', 'CC', null, 'AUD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (47, 'COLOMBIA', 'CO', 'COL', 'COP', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (48, 'COMOROS', 'KM', 'COM', 'KMF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (49, 'CONGO', 'CG', 'COG', 'CDF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (50, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', 'COD', 'XAF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (51, 'COOK ISLANDS', 'CK', 'COK', 'NZD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (52, 'COSTA RICA', 'CR', 'CRI', 'CRC', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (53, 'COTE D''IVOIRE', 'CI', 'CIV', 'XOF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (54, 'CROATIA', 'HR', 'HRV', 'HRK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (55, 'CUBA', 'CU', 'CUB', 'CUP', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (56, 'CYPRUS', 'CY', 'CYP', 'CYP', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (57, 'CZECH REPUBLIC', 'CZ', 'CZE', 'CZK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (58, 'DENMARK', 'DK', 'DNK', 'DKK', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (59, 'DJIBOUTI', 'DJ', 'DJI', 'DJF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (60, 'DOMINICA', 'DM', 'DMA', 'XCD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (61, 'DOMINICAN REPUBLIC', 'DO', 'DOM', 'DOP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (62, 'ECUADOR', 'EC', 'ECU', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (63, 'EGYPT', 'EG', 'EGY', 'EGP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (64, 'EL SALVADOR', 'SV', 'SLV', 'USD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (65, 'EQUATORIAL GUINEA', 'GQ', 'GNQ', 'XOF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (66, 'ERITREA', 'ER', 'ERI', 'ERN', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (67, 'ESTONIA', 'EE', 'EST', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (68, 'ETHIOPIA', 'ET', 'ETH', 'ETB', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (69, 'FALKLAND ISLANDS (MALVINAS)', 'FK', 'FLK', 'FKP', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (70, 'FAROE ISLANDS', 'FO', 'FRO', 'DKK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (71, 'FIJI', 'FJ', 'FJI', 'FJD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (72, 'FINLAND', 'FI', 'FIN', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (73, 'FRANCE', 'FR', 'FRA', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (74, 'FRENCH GUIANA', 'GF', 'GUF', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (75, 'FRENCH POLYNESIA', 'PF', 'PYF', 'XPF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (76, 'FRENCH SOUTHERN TERRITORIES', 'TF', null, 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (77, 'GABON', 'GA', 'GAB', 'XAF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (78, 'GAMBIA', 'GM', 'GMB', 'GMD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (79, 'GEORGIA', 'GE', 'GEO', 'GEL', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (80, 'GERMANY', 'DE', 'DEU', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (81, 'GHANA', 'GH', 'GHA', 'GHS', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (82, 'GIBRALTAR', 'GI', 'GIB', 'GIP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (83, 'GREECE', 'GR', 'GRC', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (84, 'GREENLAND', 'GL', 'GRL', 'DKK', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (85, 'GRENADA', 'GD', 'GRD', 'XCD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (86, 'GUADELOUPE', 'GP', 'GLP', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (87, 'GUAM', 'GU', 'GUM', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (88, 'GUATEMALA', 'GT', 'GTM', 'GTQ', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (89, 'GUINEA', 'GN', 'GIN', 'XOF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (90, 'GUINEA-BISSAU', 'GW', 'GNB', 'XOF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (91, 'GUYANA', 'GY', 'GUY', 'GYD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (92, 'HAITI', 'HT', 'HTI', 'USD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (93, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HM', null, 'AUD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (94, 'HOLY SEE (VATICAN CITY STATE)', 'VA', 'VAT', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (95, 'HONDURAS', 'HN', 'HND', 'HNL', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (96, 'HONG KONG', 'HK', 'HKG', 'HKD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (97, 'HUNGARY', 'HU', 'HUN', 'HUF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (98, 'ICELAND', 'IS', 'ISL', 'ISK', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (99, 'INDIA', 'IN', 'IND', 'INR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (100, 'INDONESIA', 'ID', 'IDN', 'IDR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (101, 'IRAN, ISLAMIC REPUBLIC OF', 'IR', 'IRN', 'IRR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (102, 'IRAQ', 'IQ', 'IRQ', 'IQD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (103, 'IRELAND', 'IE', 'IRL', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (104, 'ISRAEL', 'IL', 'ISR', 'ILS', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (105, 'ITALY', 'IT', 'ITA', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (106, 'JAMAICA', 'JM', 'JAM', 'JMD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (107, 'JAPAN', 'JP', 'JPN', 'JPY', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (108, 'JORDAN', 'JO', 'JOR', 'JOD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (109, 'KAZAKHSTAN', 'KZ', 'KAZ', 'KZT', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (110, 'KENYA', 'KE', 'KEN', 'KES', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (111, 'KIRIBATI', 'KI', 'KIR', 'AUD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (112, 'KOREA, DEMOCRATIC PEOPLES REPUBLIC OF', 'KP', 'PRK', 'KWD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (113, 'KOREA, REPUBLIC OF', 'KR', 'KOR', 'KRW', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (114, 'KUWAIT', 'KW', 'KWT', 'KWD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (115, 'KYRGYZSTAN', 'KG', 'KGZ', 'KGS', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (116, 'LAO PEOPLES DEMOCRATIC REPUBLIC', 'LA', 'LAO', 'LAK', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (117, 'LATVIA', 'LV', 'LVA', 'LVL', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (118, 'LEBANON', 'LB', 'LBN', 'LBP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (119, 'LESOTHO', 'LS', 'LSO', 'ZAR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (120, 'LIBERIA', 'LR', 'LBR', 'LRD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (121, 'LIBYAN ARAB JAMAHIRIYA', 'LY', 'LBY', 'LYD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (122, 'LIECHTENSTEIN', 'LI', 'LIE', 'CHF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (123, 'LITHUANIA', 'LT', 'LTU', 'LTL', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (124, 'LUXEMBOURG', 'LU', 'LUX', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (125, 'MACAU', 'MO', 'MAC', 'MOP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (126, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', 'MKD', 'MKD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (127, 'MADAGASCAR', 'MG', 'MDG', 'MGA', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (128, 'MALAWI', 'MW', 'MWI', 'MWK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (129, 'MALAYSIA', 'MY', 'MYS', 'MYR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (130, 'MALDIVES', 'MV', 'MDV', 'MVR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (131, 'MALI', 'ML', 'MLI', 'XOF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (132, 'MALTA', 'MT', 'MLT', 'MTL', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (133, 'MARSHALL ISLANDS', 'MH', 'MHL', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (134, 'MARTINIQUE', 'MQ', 'MTQ', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (135, 'MAURITANIA', 'MR', 'MRT', 'MRO', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (136, 'MAURITIUS', 'MU', 'MUS', 'MUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (137, 'MAYOTTE', 'YT', null, 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (138, 'MEXICO', 'MX', 'MEX', 'MXN', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (139, 'MICRONESIA, FEDERATED STATES OF', 'FM', 'FSM', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (140, 'MOLDOVA, REPUBLIC OF', 'MD', 'MDA', 'MDL', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (141, 'MONACO', 'MC', 'MCO', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (142, 'MONGOLIA', 'MN', 'MNG', 'MNT', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (143, 'MONTSERRAT', 'MS', 'MSR', 'XCD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (144, 'MOROCCO', 'MA', 'MAR', 'MAD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (145, 'MOZAMBIQUE', 'MZ', 'MOZ', 'MZN', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (146, 'MYANMAR', 'MM', 'MMR', 'MMK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (147, 'NAMIBIA', 'NA', 'NAM', 'ZAR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (148, 'NAURU', 'NR', 'NRU', 'AUD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (149, 'NEPAL', 'NP', 'NPL', 'NPR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (150, 'NETHERLANDS', 'NL', 'NLD', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (151, 'NETHERLANDS ANTILLES', 'AN', 'ANT', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (152, 'NEW CALEDONIA', 'NC', 'NCL', 'XPF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (153, 'NEW ZEALAND', 'NZ', 'NZL', 'NZD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (154, 'NICARAGUA', 'NI', 'NIC', 'NIO', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (155, 'NIGER', 'NE', 'NER', 'XOF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (156, 'NIGERIA', 'NG', 'NGA', 'NGN', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (157, 'NIUE', 'NU', 'NIU', 'NZD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (158, 'NORFOLK ISLAND', 'NF', 'NFK', 'AUD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (159, 'NORTHERN MARIANA ISLANDS', 'MP', 'MNP', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (160, 'NORWAY', 'NO', 'NOR', 'NOK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (161, 'OMAN', 'OM', 'OMN', 'OMR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (162, 'PAKISTAN', 'PK', 'PAK', 'PKR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (163, 'PALAU', 'PW', 'PLW', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (164, 'PALESTINIAN TERRITORY, OCCUPIED', 'PS', null, '', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (165, 'PANAMA', 'PA', 'PAN', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (166, 'PAPUA NEW GUINEA', 'PG', 'PNG', 'PGK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (167, 'PARAGUAY', 'PY', 'PRY', 'PYG', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (168, 'PERU', 'PE', 'PER', 'PEN', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (169, 'PHILIPPINES', 'PH', 'PHL', 'PHP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (170, 'PITCAIRN', 'PN', 'PCN', 'NZD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (171, 'POLAND', 'PL', 'POL', 'PLN', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (172, 'PORTUGAL', 'PT', 'PRT', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (173, 'PUERTO RICO', 'PR', 'PRI', 'USD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (174, 'QATAR', 'QA', 'QAT', 'QAR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (175, 'REUNION', 'RE', 'REU', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (176, 'ROMANIA', 'RO', 'ROM', 'RON', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (177, 'RUSSIAN FEDERATION', 'RU', 'RUS', 'RUB', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (178, 'RWANDA', 'RW', 'RWA', 'RWF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (179, 'SAINT HELENA', 'SH', 'SHN', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (180, 'SAINT KITTS AND NEVIS', 'KN', 'KNA', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (181, 'SAINT LUCIA', 'LC', 'LCA', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (182, 'SAINT PIERRE AND MIQUELON', 'PM', 'SPM', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (183, 'SAINT VINCENT AND THE GRENADINES', 'VC', 'VCT', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (184, 'SAMOA', 'WS', 'WSM', 'WST', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (185, 'SAN MARINO', 'SM', 'SMR', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (186, 'SAO TOME AND PRINCIPE', 'ST', 'STP', 'STD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (187, 'SAUDI ARABIA', 'SA', 'SAU', 'SAR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (188, 'SENEGAL', 'SN', 'SEN', 'XOF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (189, 'SEYCHELLES', 'SC', 'SYC', 'SCR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (190, 'SIERRA LEONE', 'SL', 'SLE', 'SLL', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (191, 'SINGAPORE', 'SG', 'SGP', 'SGD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (192, 'SLOVAKIA', 'SK', 'SVK', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (193, 'SLOVENIA', 'SI', 'SVN', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (194, 'SOLOMON ISLANDS', 'SB', 'SLB', 'SBD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (195, 'SOMALIA', 'SO', 'SOM', 'SOS', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (196, 'SOUTH AFRICA', 'ZA', 'ZAF', 'ZAR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (197, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GS', null, 'GBP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (198, 'SPAIN', 'ES', 'ESP', 'EUR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (199, 'SRI LANKA', 'LK', 'LKA', 'LKR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (200, 'SUDAN', 'SD', 'SDN', 'SDG', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (201, 'SURINAME', 'SR', 'SUR', 'SRD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (202, 'SVALBARD AND JAN MAYEN', 'SJ', 'SJM', 'NOK', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (203, 'SWAZILAND', 'SZ', 'SWZ', 'SZL', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (204, 'SWEDEN', 'SE', 'SWE', 'SEK', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (205, 'SWITZERLAND', 'CH', 'CHE', 'CHF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (206, 'SYRIAN ARAB REPUBLIC', 'SY', 'SYR', 'SYP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (207, 'TAIWAN', 'TW', 'TWN', 'TWD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (208, 'TAJIKISTAN', 'TJ', 'TJK', 'TJS', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (209, 'TANZANIA, UNITED REPUBLIC OF', 'TZ', 'TZA', 'TZS', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (210, 'THAILAND', 'TH', 'THA', 'THB', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (211, 'TIMOR-LESTE', 'TL', null, 'IDR', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (212, 'TOGO', 'TG', 'TGO', 'XOF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (213, 'TOKELAU', 'TK', 'TKL', 'NZD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (214, 'TONGA', 'TO', 'TON', 'TOP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (215, 'TRINIDAD AND TOBAGO', 'TT', 'TTO', 'TTD', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (216, 'TUNISIA', 'TN', 'TUN', 'TND', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (217, 'TURKEY', 'TR', 'TUR', 'TRY', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (218, 'TURKMENISTAN', 'TM', 'TKM', 'TMM', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (219, 'TURKS AND CAICOS ISLANDS', 'TC', 'TCA', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (220, 'TUVALU', 'TV', 'TUV', 'TVD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (221, 'UGANDA', 'UG', 'UGA', 'UGX', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (222, 'UKRAINE', 'UA', 'UKR', 'UAH', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (223, 'UNITED ARAB EMIRATES', 'AE', 'ARE', 'AED', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (224, 'UNITED KINGDOM', 'GB', 'GBR', 'GBP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (225, 'UNITED STATES', 'US', 'USA', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (226, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM', null, 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (227, 'URUGUAY', 'UY', 'URY', 'UYU', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (228, 'UZBEKISTAN', 'UZ', 'UZB', 'UZS', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (229, 'VANUATU', 'VU', 'VUT', 'VUV', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (230, 'VENEZUELA', 'VE', 'VEN', 'VEF', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (231, 'VIET NAM', 'VN', 'VNM', 'VND', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (232, 'VIRGIN ISLANDS, BRITISH', 'VG', 'VGB', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (233, 'VIRGIN ISLANDS, U.S.', 'VI', 'VIR', 'USD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (234, 'WALLIS AND FUTUNA', 'WF', 'WLF', 'XPF', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (235, 'WESTERN SAHARA', 'EH', 'ESH', 'MAD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (236, 'YEMEN', 'YE', 'YEM', 'YER', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (237, 'YUGOSLAVIA', 'YU', 'YUG', '', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (238, 'ZAMBIA', 'ZM', 'ZMB', 'ZMK', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (239, 'ZIMBABWE', 'ZW', 'ZWE', 'ZWD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (240, 'SERBIA', 'RS', 'SRB', 'RSD', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (241, 'ZAIRE', 'ZR', null, '', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (242, 'MONTENEGRO, REPUBLIC OF', 'ME', 'MNE', 'EUR', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (244, 'ISLE OF MAN', '02', '02I', 'IMP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (243, 'JERSEY', '01', '01J', 'JEP', 2);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (245, 'GUERNSEY', '03', '03G', 'GGP', 1);
INSERT INTO country (id, name, iso, iso3, currency, server) VALUES (246, 'REPUBLIC OF KOSOVO', '04', '04K', null, 2);

