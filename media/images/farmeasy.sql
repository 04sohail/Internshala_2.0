-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2022 at 08:15 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `farmeasy`
--
CREATE DATABASE IF NOT EXISTS `farmeasy` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `farmeasy`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add sevamember model', 7, 'add_sevamembermodel'),
(26, 'Can change sevamember model', 7, 'change_sevamembermodel'),
(27, 'Can delete sevamember model', 7, 'delete_sevamembermodel'),
(28, 'Can view sevamember model', 7, 'view_sevamembermodel'),
(29, 'Can add farmer model', 8, 'add_farmermodel'),
(30, 'Can change farmer model', 8, 'change_farmermodel'),
(31, 'Can delete farmer model', 8, 'delete_farmermodel'),
(32, 'Can view farmer model', 8, 'view_farmermodel'),
(33, 'Can add farmer feedback model', 9, 'add_farmerfeedbackmodel'),
(34, 'Can change farmer feedback model', 9, 'change_farmerfeedbackmodel'),
(35, 'Can delete farmer feedback model', 9, 'delete_farmerfeedbackmodel'),
(36, 'Can view farmer feedback model', 9, 'view_farmerfeedbackmodel'),
(37, 'Can add farmer complaint model', 10, 'add_farmercomplaintmodel'),
(38, 'Can change farmer complaint model', 10, 'change_farmercomplaintmodel'),
(39, 'Can delete farmer complaint model', 10, 'delete_farmercomplaintmodel'),
(40, 'Can view farmer complaint model', 10, 'view_farmercomplaintmodel'),
(41, 'Can add farmer help model', 11, 'add_farmerhelpmodel'),
(42, 'Can change farmer help model', 11, 'change_farmerhelpmodel'),
(43, 'Can delete farmer help model', 11, 'delete_farmerhelpmodel'),
(44, 'Can view farmer help model', 11, 'view_farmerhelpmodel'),
(45, 'Can add seed dealer model', 12, 'add_seeddealermodel'),
(46, 'Can change seed dealer model', 12, 'change_seeddealermodel'),
(47, 'Can delete seed dealer model', 12, 'delete_seeddealermodel'),
(48, 'Can view seed dealer model', 12, 'view_seeddealermodel'),
(49, 'Can add seed varieties model', 13, 'add_seedvarietiesmodel'),
(50, 'Can change seed varieties model', 13, 'change_seedvarietiesmodel'),
(51, 'Can delete seed varieties model', 13, 'delete_seedvarietiesmodel'),
(52, 'Can view seed varieties model', 13, 'view_seedvarietiesmodel'),
(53, 'Can add fertilizer model', 14, 'add_fertilizermodel'),
(54, 'Can change fertilizer model', 14, 'change_fertilizermodel'),
(55, 'Can delete fertilizer model', 14, 'delete_fertilizermodel'),
(56, 'Can view fertilizer model', 14, 'view_fertilizermodel'),
(57, 'Can add add fertilizer model', 15, 'add_addfertilizermodel'),
(58, 'Can change add fertilizer model', 15, 'change_addfertilizermodel'),
(59, 'Can delete add fertilizer model', 15, 'delete_addfertilizermodel'),
(60, 'Can view add fertilizer model', 15, 'view_addfertilizermodel'),
(61, 'Can add machinery dealer model', 16, 'add_machinerydealermodel'),
(62, 'Can change machinery dealer model', 16, 'change_machinerydealermodel'),
(63, 'Can delete machinery dealer model', 16, 'delete_machinerydealermodel'),
(64, 'Can view machinery dealer model', 16, 'view_machinerydealermodel'),
(65, 'Can add add machinery model', 17, 'add_addmachinerymodel'),
(66, 'Can change add machinery model', 17, 'change_addmachinerymodel'),
(67, 'Can delete add machinery model', 17, 'delete_addmachinerymodel'),
(68, 'Can view add machinery model', 17, 'view_addmachinerymodel'),
(69, 'Can add pesticide dealer model', 18, 'add_pesticidedealermodel'),
(70, 'Can change pesticide dealer model', 18, 'change_pesticidedealermodel'),
(71, 'Can delete pesticide dealer model', 18, 'delete_pesticidedealermodel'),
(72, 'Can view pesticide dealer model', 18, 'view_pesticidedealermodel'),
(73, 'Can add add pesticide models', 19, 'add_addpesticidemodels'),
(74, 'Can change add pesticide models', 19, 'change_addpesticidemodels'),
(75, 'Can delete add pesticide models', 19, 'delete_addpesticidemodels'),
(76, 'Can view add pesticide models', 19, 'view_addpesticidemodels');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adminapp', 'sevamembermodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'farmerapp', 'farmercomplaintmodel'),
(9, 'farmerapp', 'farmerfeedbackmodel'),
(11, 'farmerapp', 'farmerhelpmodel'),
(8, 'farmerapp', 'farmermodel'),
(15, 'fertilizerapp', 'addfertilizermodel'),
(14, 'fertilizerapp', 'fertilizermodel'),
(17, 'machinerydealerapp', 'addmachinerymodel'),
(16, 'machinerydealerapp', 'machinerydealermodel'),
(19, 'pesticidedealerapp', 'addpesticidemodels'),
(18, 'pesticidedealerapp', 'pesticidedealermodel'),
(12, 'seeddealerapp', 'seeddealermodel'),
(13, 'seeddealerapp', 'seedvarietiesmodel'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-17 10:50:30.310517'),
(2, 'auth', '0001_initial', '2022-03-17 10:50:31.613144'),
(3, 'admin', '0001_initial', '2022-03-17 10:50:31.932877'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-17 10:50:31.953327'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-17 10:50:31.974093'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-17 10:50:32.169325'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-17 10:50:32.374524'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-17 10:50:32.506885'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-17 10:50:32.527880'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-17 10:50:32.615638'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-17 10:50:32.621705'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-17 10:50:32.633639'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-17 10:50:32.747446'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-17 10:50:32.855035'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-17 10:50:32.982985'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-17 10:50:33.010071'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-17 10:50:33.130218'),
(18, 'sessions', '0001_initial', '2022-03-17 10:50:33.241490'),
(19, 'adminapp', '0001_initial', '2022-03-17 10:51:51.571364'),
(20, 'farmerapp', '0001_initial', '2022-03-17 10:52:19.266502'),
(21, 'fertilizerapp', '0001_initial', '2022-03-17 10:52:39.214891'),
(22, 'seeddealerapp', '0001_initial', '2022-03-17 10:52:58.406517'),
(23, 'pesticidedealerapp', '0001_initial', '2022-03-17 10:53:28.500324'),
(24, 'machinerydealerapp', '0001_initial', '2022-03-17 10:54:00.603970'),
(25, 'fertilizerapp', '0002_alter_addfertilizermodel_benifits_and_more', '2022-03-18 09:06:53.432848'),
(26, 'pesticidedealerapp', '0002_alter_addpesticidemodels_benefits_and_more', '2022-03-18 09:06:53.620265'),
(27, 'seeddealerapp', '0002_alter_seedvarietiesmodel_quantity', '2022-03-18 09:06:53.715690'),
(28, 'fertilizerapp', '0003_addfertilizermodel_fertilizer_id', '2022-03-21 05:21:40.922810'),
(29, 'machinerydealerapp', '0002_addmachinerymodel_machinery_id', '2022-03-21 07:44:14.669717'),
(30, 'pesticidedealerapp', '0003_addpesticidemodels_pesticide_id', '2022-03-21 07:44:14.738854'),
(31, 'seeddealerapp', '0003_seedvarietiesmodel_seed_id', '2022-03-21 07:44:14.802211'),
(32, 'seeddealerapp', '0004_seedvarietiesmodel_sold_by_and_more', '2022-03-22 06:07:34.191551');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8s9jae3eurlq1lxaatcpy6ea79qxl972', '.eJyrVkpLLMpNLYrPTFGyMtRRKk4tSwSzjUDs1BSYeFpqUUlmTmYVQmVBanFJZnJmSipMeW5ickZmXmpRJUSgFgBv2B6B:1nWvsV:334eZP9-zFl9171tfyywREoB7wQcFsRFDQ1KWqgsd8U', '2022-04-06 07:57:59.792398'),
('esxd6q8rqj9uiym1k3tai5qac5z3wy71', '.eJyrVkpLLMpNLYrPTFGyMtRRSkstKsnMyaxCiBSnpqZA2LUAZ5kPQA:1nVG0X:fqdqs4t0LEtVFl6eGK9XW954dWicomYRnKPpfWJ3MFk', '2022-04-01 17:03:21.245915'),
('ii7b5iiztmewaah7pmzekylwvyavg6tn', '.eJyrVkpLLSrJzMmsSi2Kz0xRsjLUUUpLLMpF8IpTU1Ng7NzE5IzMvNSiSrCAkY5SQWpxSWZyZkoqTKA4tSwRwq4FAJRIHoE:1nWtcJ:vPyrgnzINojLNXG4Ti8AG0XFY5c5h6QwIMrOHOg75Rk', '2022-04-06 05:33:07.078483');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_complaint_details`
--

CREATE TABLE IF NOT EXISTS `farmer_complaint_details` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `complaint` longtext NOT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farmer_complaint_details`
--

INSERT INTO `farmer_complaint_details` (`complaint_id`, `name`, `email`, `city`, `complaint`) VALUES
(1, 'paul wesly', 'paul@gmail.com', 'Bangalore', 'service');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_details`
--

CREATE TABLE IF NOT EXISTS `farmer_details` (
  `farmer_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `aadhar` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farmer_details`
--

INSERT INTO `farmer_details` (`farmer_id`, `full_name`, `email`, `mobile`, `aadhar`, `password`) VALUES
(1, 'john paul', 'john@gmail.com', 9886543932, 7687545232863456, 'john');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_feedback_details`
--

CREATE TABLE IF NOT EXISTS `farmer_feedback_details` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `feedback` longtext NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `farmer_feedback_details`
--

INSERT INTO `farmer_feedback_details` (`feedback_id`, `name`, `email`, `city`, `category`, `feedback`) VALUES
(1, 'john paul', 'john@gmail.com', 'Hyderabad', 'Seed Dealer', 'good\r\n'),
(2, 'john paul', 'john@gmail.com', 'Hyderabad', 'Website Administrative', 'good'),
(3, 'john paul', 'john@gmail.com', 'Hyderabad', 'Pesticide Dealer', 'good\r\n'),
(4, 'john paul', 'john@gmail.com', 'Hyderabad', 'Fertilizer Dealer', 'good\r\n'),
(5, 'john paul', 'john@gmail.com', 'Hyderabad', 'Machinery Dealer', 'good\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_help_details`
--

CREATE TABLE IF NOT EXISTS `farmer_help_details` (
  `help_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `passbook_No` bigint(20) NOT NULL,
  `help` longtext NOT NULL,
  `reply` longtext NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`help_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `farmer_help_details`
--

INSERT INTO `farmer_help_details` (`help_id`, `name`, `email`, `mobile`, `city`, `category`, `passbook_No`, `help`, `reply`, `status`) VALUES
(1, 'john paul', 'nannapravalika566@gmail.com', 9886543932, 'Hyderabad', 'Ration Help', 9787667456487798, 'ration help needed', '', 'replied'),
(2, 'Nanna Pravalika', 'nannapravalika566@gmail.com', 916309526806, 'Hyderabad', 'Need Seeds', 9877543567890087, 'help\r\n', 'yesssss', 'replied');

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer_dealer_details`
--

CREATE TABLE IF NOT EXISTS `fertilizer_dealer_details` (
  `fertilizer_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `membership` varchar(100) NOT NULL,
  `licence_no` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`fertilizer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fertilizer_dealer_details`
--

INSERT INTO `fertilizer_dealer_details` (`fertilizer_id`, `full_name`, `email`, `mobile`, `address`, `membership`, `licence_no`, `password`, `status`) VALUES
(1, 'john paul', 'nannapravalika566@gmail.com', 9618407944, '10-5-413/35,secunderabad', 'dealer', '8675', 'john', 'accepted'),
(2, 'paul wesly', 'paul@gmail.com', 6309526806, '10-5-413/35/15; Wadder basthi; secunderabad', 'dealer', NULL, 'paul', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer_details`
--

CREATE TABLE IF NOT EXISTS `fertilizer_details` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `technical_name` varchar(100) NOT NULL,
  `type_of_fertilizer` varchar(100) NOT NULL,
  `product_quality` longtext NOT NULL,
  `benifits` longtext,
  `how_to_use` longtext NOT NULL,
  `area_of_orgin` varchar(100) NOT NULL,
  `sold_by` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `prize` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `fertilizer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `fertilizer_details`
--

INSERT INTO `fertilizer_details` (`product_id`, `product_name`, `company_name`, `technical_name`, `type_of_fertilizer`, `product_quality`, `benifits`, `how_to_use`, `area_of_orgin`, `sold_by`, `quantity`, `prize`, `image`, `fertilizer_id`) VALUES
(2, 'CALCIUM NITRATE', 'IFFCO', 'CALCIUM NITRATE (15.5% N & 18.5 %Ca)', 'CNF', 'Calcium is an important secondary nutrient for the growth of plants. Calcium Nitrate is an excellent source of calcium for crops.\r\nIn case of Calcium deficiency, and in acidic soils. It has a significant effect on crop growth, production as well as on quality.\r\nIt enhances the quality and prolonged shelf life of the produce in most of the crops.\r\nIt helps in the formation of new branches in plants, flowering, and fruit development, and helps to prevent fruit drop', 'Calcium Nitrate contains 15.5 % Nitrogen and 18.5 % Calcium.\r\nIt can be used as a basal application and as foliar spray also.\r\nUseful for all crops i.e. Cereals / Legumes / Vegetables / Fruits / Vegetables etc.\r\nIn addition to Calcium, it also increased the availability of Nitrogen to the crops.', ' Calcium Nitrate can be used as a foliar spray, soil application, or drip.\r\n\r\nSoil application- It can be used in the range of 20 to 50 kg per acre as a basal application at sowing or at first irrigation. It can also be used at the time of growth and flowering as per the production capacity of the crop.\r\nSpray- Calcium Nitrate can be sprayed in crops from pre-flowering to fruits formation. For spraying in a standing crop, use 5-10 grams of Calcium Nitrate per liter of water. It can be sprayed 2 or 3 times as per requirement at 10-15 days interval.\r\nNote: Information is suggestive only, please prefer crop-wise state recommendations as well soil test reports.', 'INDIA', 'IFFCO eBazar Ltd.', '10kg', 520, 'images/R_sEryydn.jpg', NULL),
(3, 'N. P. K.', 'IFFCO', 'N. P. K. (19-19-19)', 'Water Soluble Mixture', '100% Water Soluble Mixture of Fertiliser\r\nFor Foliar Spray and Fertigation (Drip irrigation)\r\nSuitable for all crops\r\nGives crop early boost\r\nIncreases vigor of the crop\r\nMakes the crop healthy\r\nSince pesticides and fungicides are very compatible with this product. All pesticides and fungicides can be mixed with it.\r\nProduct Specification:\r\n\r\nTotal Nitrogen percent by weight, minimum – 19.0\r\nNitrate Nitrogen percent by weight, maximum – 4.0\r\nAmmoniacal Nitrogen percent by weight, minimum - 4.5\r\nUrea Nitrogen percent by weight, maximum – 10.5\r\nWater Soluble Phosphate (as P2O5) percent by weight, minimum – 19.0\r\nWater Soluble Potash (as K2O) percent by weight, minimum – 19.0\r\nSodium as NaCl percent by weight on dry basis, maximum – 0.5\r\nMatter insoluble in water percent by weight, maximum – 0.5\r\nMoisture percent by weight, maximum – 0.5', 'Suitable for all crops\r\nGives crop early boost\r\nIncreases vigor of the crop\r\nMakes the crop healthy\r\nSince pesticides and fungicides are very compatible with this product. All pesticides and fungicides can be mixed with it.', 'Applications:\r\n\r\nFor the initial vegetative growth period, bud bursting, rejuvenation of vegetative growth\r\nDosage:\r\n\r\nDrip Irrigation- As per schedule\r\nFoliar spray- 1.0 to 1.5 % solution (10 to 15 gm per liter of water)\r\n2-3 sprays from 40-50 to 60-70 days after sowing at 10-15 days interval', 'INDIA', ' IFFCO eBAZAR Ltd', '5kg', 465, 'images/fertilizer-iffco.png', 1),
(4, 'N. P. K.', 'IFFCO', 'N. P. K. (19-19-19)', 'Water Soluble Mixture', 'mjgytghfvg', 'nbvghfghfgh', 'nmbhgfg', 'INDIA', 'IFFCO eBazar Ltd.', '10kg', 755, 'images/fertilizer-iffco_jMnCrrd.png', 2),
(5, 'CALCIUM NITRATE', 'Building Blocks Group', 'mnbghfv', 'CNF', ',m bhjghj', 'nmbjhghj', 'mbhh', 'india', 'bulidingbtr', '5kg', 465, 'images/R_AT52Dbh.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `machinery_dealer_details`
--

CREATE TABLE IF NOT EXISTS `machinery_dealer_details` (
  `machinery_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `membership` varchar(100) NOT NULL,
  `licence_no` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`machinery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `machinery_dealer_details`
--

INSERT INTO `machinery_dealer_details` (`machinery_id`, `full_name`, `email`, `mobile`, `address`, `membership`, `licence_no`, `password`, `status`) VALUES
(2, 'paul wesly', 'paul@gmail.com', 6309526806, '10-5-413/35/15; Wadder basthi; secunderabad', 'dealer', '866454', 'paul', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `machinery_details`
--

CREATE TABLE IF NOT EXISTS `machinery_details` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `machinery_type` varchar(100) NOT NULL,
  `specifications` longtext NOT NULL,
  `function` longtext NOT NULL,
  `sold_by` varchar(100) NOT NULL,
  `prize` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `desc` longtext NOT NULL,
  `machinery_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `machinery_details`
--

INSERT INTO `machinery_details` (`product_id`, `product_name`, `company_name`, `machinery_type`, `specifications`, `function`, `sold_by`, `prize`, `image`, `video`, `desc`, `machinery_id`) VALUES
(1, 'VISWAS 708 Plastic Sprayer (12 L)', 'Pasura', 'Agriculture Sprayer(Agriculture)', 'SPECIFICATIONS :\r\nPOWER SPRAYER\r\n\r\nVISWAS 708\r\n\r\nTANK CAPACITY\r\n\r\n20LTR\r\n\r\nGUN\r\n\r\nBRASS\r\n\r\nSTARTER\r\n\r\nRECOIL\r\n\r\nENGINE\r\n\r\nTU-26 (2-STROKE HIGHER END) \r\n\r\nPUMP\r\n\r\nHEAVY BRASS PUMP\r\n\r\nCARBURETTOR\r\n\r\nNon Adjustable Japan Made Walbro Carburetor\r\n\r\nNET WEIGHT\r\n\r\n8.5 KGS\r\n\r\nFUEL TANK CAPACITY\r\n\r\n1 Ltr\r\n\r\nWater Discharge\r\n\r\n5.5 Lts per minute\r\n\r\nHOSE PIPE\r\n\r\n1 Mtr\r\n\r\nDimensions\r\n\r\n36*18*46 cm', 'Built with nonreactive material such as plastic body\r\nConsists of a stainless steel spray gun\r\nOperates on the working pressure ranges from 2 to 3 Mpa\r\nThe fuel tank has a capacity of 1 Liter', 'IFFCO e-Bazar Ltd.', 9490, 'images/machinery-iffco.png', 'videos/machinery-iffco.png', 'Product description:\r\nBrand Name - PASURA CROP CARE PVT LTD\r\nProduct Name - VISWAS 708 Plastic Sprayer (12 L)\r\nCategory- Agriculture,\r\nSub Category - Agriculture Sprayer(Agriculture),\r\nBuilt with nonreactive material such as plastic body\r\nConsists of a stainless steel spray gun\r\nOperates on the working pressure ranges from 2 to 3 Mpa\r\nThe fuel tank has a capacity of 1 Liter', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesticide_dealer_details`
--

CREATE TABLE IF NOT EXISTS `pesticide_dealer_details` (
  `pesticide_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `membership` varchar(100) NOT NULL,
  `licence_no` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`pesticide_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pesticide_dealer_details`
--

INSERT INTO `pesticide_dealer_details` (`pesticide_id`, `full_name`, `email`, `mobile`, `address`, `membership`, `licence_no`, `password`, `status`) VALUES
(1, 'john paul', 'nannapravalika566@gmail.com', 9618407944, '10-5-413/35,secunderabad', 'dealer', NULL, 'john', 'accepted'),
(2, 'paul wesly', 'paul@gmail.com', 6309526806, '10-5-413/35/15; Wadder basthi; secunderabad', 'dealer', NULL, 'paul', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `pesticide_details`
--

CREATE TABLE IF NOT EXISTS `pesticide_details` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `technical_name` varchar(100) NOT NULL,
  `type_of_pesticide` varchar(100) NOT NULL,
  `crop` longtext NOT NULL,
  `diseases` longtext NOT NULL,
  `dosage_per_ace` varchar(100) NOT NULL,
  `dialution_period` varchar(100) NOT NULL,
  `waiting_period` varchar(100) NOT NULL,
  `area_of_orgin` varchar(100) NOT NULL,
  `sold_by` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `prize` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `benefits` longtext,
  `desc` longtext NOT NULL,
  `pesticide_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pesticide_details`
--

INSERT INTO `pesticide_details` (`product_id`, `product_name`, `company_name`, `technical_name`, `type_of_pesticide`, `crop`, `diseases`, `dosage_per_ace`, `dialution_period`, `waiting_period`, `area_of_orgin`, `sold_by`, `quantity`, `prize`, `image`, `benefits`, `desc`, `pesticide_id`) VALUES
(1, 'Komugi', 'IFFCO', 'PYRIPROXYFEN 10% EC', 'Insecticide', 'Cotton\r\nChillies', 'Whitefly\r\nWhitefly,Aphids', '200 - 400', '50days', '50days', 'India', 'IFFCO e-Bazar Ltd.', '1 Litre', 1200, 'images/pesticide-insecticide-iffco.png', 'KOMUGI is a highly selective insecticide and having low toxicity, it doesn’t kill beneficial and predatory insects.\nKOMUGI is and does not possess any threat to environmental pollution. \nKOMUGI is ideal for Integrated Pest Management.\nKOMUGI application should be done with a fine spray and should cover both inside and upside of the leaf as well as the lower, middle and upper portion of the plant.', 'Mode of Action: SYSTEMIC INSECT GROWTH REGULATOR A JUVENILE HARMONE ANALOGUE\r\n\r\nDescription:\r\n\r\nKOMUGI is IGR belongs to the Pyridine group of insecticide. \r\nKOMUGI is recommended for the control of sucking pests like White Fly, Aphids on Cotton and Chilli crops.  \r\nKOMUGI is a selective Insect growth regulator having Stomach, Contact and Translaminar action.\r\nKOMUGI acts on multipoint of the Insect life cycle, preventing Whitefly emergence from egg or interfere the Whitefly development and reproduction. It also makes female sterile. \r\nKOMUGI requires thorough coverage of foliage. It should be applied at the start of Whitefly incidence.\r\nKOMUGI is an effective tool in Integrated resistance management strategy.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `seed_dealer_details`
--

CREATE TABLE IF NOT EXISTS `seed_dealer_details` (
  `seed_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `membership` varchar(100) NOT NULL,
  `licence_no` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`seed_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `seed_dealer_details`
--

INSERT INTO `seed_dealer_details` (`seed_id`, `full_name`, `email`, `mobile`, `address`, `membership`, `licence_no`, `password`, `status`) VALUES
(1, 'john paul', 'john@gmail.com', 9886543932, '10-5-413/35/15; Wadder basthi; secunderabad', 'dealer', NULL, 'john', 'accepted'),
(2, 'paul wesly', 'nannapravalika566@gmail.com', 6309526806, '10-5-413/35/15; Wadder basthi; secunderabad', 'dealer', NULL, 'paul', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `seed_varieties`
--

CREATE TABLE IF NOT EXISTS `seed_varieties` (
  `variety_id` int(11) NOT NULL AUTO_INCREMENT,
  `variety_name` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `crop_type` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `prize` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `seed_yeid` varchar(100) NOT NULL,
  `plant_height` varchar(100) NOT NULL,
  `maturity` varchar(100) NOT NULL,
  `area` longtext NOT NULL,
  `seed_id` int(11) DEFAULT NULL,
  `sold_by` varchar(100) DEFAULT NULL,
  `technical_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`variety_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `seed_varieties`
--

INSERT INTO `seed_varieties` (`variety_id`, `variety_name`, `company_name`, `crop_type`, `quantity`, `prize`, `image`, `seed_yeid`, `plant_height`, `maturity`, `area`, `seed_id`, `sold_by`, `technical_name`) VALUES
(4, 'Paddy', 'Mahindra', 'Paddy', '10kg', 755, 'images/seed-mahindra-samridhi_Gs8Ax7q.png', 'Extra-long slender grains', '110 to 115 cm', '115 - 120 days', 'Lucknow', 1, 'Samriddhi limited Pvt Ltd', 'MPR 202');

-- --------------------------------------------------------

--
-- Table structure for table `sevamember_details`
--

CREATE TABLE IF NOT EXISTS `sevamember_details` (
  `sevamember_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`sevamember_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sevamember_details`
--

INSERT INTO `sevamember_details` (`sevamember_id`, `full_name`, `email`, `mobile`, `password`) VALUES
(1, 'john paul', 'nannapravalika566@gmail.com', 9886543932, 'john'),
(2, 'paul wesly', 'paul@gmail.com', 9618407944, 'paul');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
