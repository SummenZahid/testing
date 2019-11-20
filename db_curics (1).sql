-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 14, 2019 at 07:13 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_curics`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Lahore', 'lahore', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(2, 'Rahim Yar Khan', 'rahim-yar-khan', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(3, 'Karachi', 'karachi', '2019-11-02 19:00:00', '2019-11-02 19:00:00'),
(4, 'Islamabad', 'islamabad', '2019-11-02 19:00:00', '2019-11-02 19:00:00'),
(5, 'Hyderabad', 'hyderabad', '2019-11-02 19:00:00', '2019-11-02 19:00:00'),
(6, 'Faisalabad', 'faisalabad', '2019-11-02 19:00:00', '2019-11-02 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

DROP TABLE IF EXISTS `clinics`;
CREATE TABLE IF NOT EXISTS `clinics` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `name`, `description`, `address`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Akram Medical Complex Hospital', 'First Clinic', 'Gulberg, Lahore', 'akram-medical-complex-hospital', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(2, 'Life Line Hospital', 'Johar Town, Lahore', 'Johar Town, Lahore', '', '2019-09-07 19:00:00', '2019-09-07 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

DROP TABLE IF EXISTS `diseases`;
CREATE TABLE IF NOT EXISTS `diseases` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_english` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name _urdu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name_english`, `name _urdu`, `created_at`, `updated_at`) VALUES
(1, 'Bawaseer', 'بواسیر', '2019-11-02 19:00:00', '2019-11-02 19:00:00'),
(2, 'Dengue Fever', 'ڈینگی', '2019-11-02 19:00:00', '2019-11-02 19:00:00'),
(3, 'Diabetes', 'شوگر کا مرض', '2019-11-02 19:00:00', '2019-11-02 19:00:00'),
(4, 'Hernia', 'ہرنیا', '2019-11-02 19:00:00', '2019-11-02 19:00:00'),
(5, 'Blood Pressure', 'بلڈ پریشر', '2019-11-02 19:00:00', '2019-11-02 19:00:00'),
(6, 'Heart Attack', 'ہارٹ اٹیک', '2019-11-02 19:00:00', '2019-11-02 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `experience_years` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `about`, `experience_years`, `doctor_address`, `designation`, `doctor_fee`, `user_id`, `city_id`, `alias`, `created_at`, `updated_at`, `gender`) VALUES
(1, 'Dr. Athar Mehmood', 'Dr. Athar Mehmood is a senior consultant Urologist practicing at Akram Medical Complex. He is competent in surgical procedure, men infertility, and prostate treatment. Prostate and kidney Stone are my core area of interest.', '15', 'Gulberg, Lahore', 'Assistant Professor', '2000', '2', '1', 'dr-athar-mehmood', '2019-09-07 19:00:00', '2019-09-07 19:00:00', 'male'),
(2, 'Dr. Zahid Hussain', 'Dr. Zahid Hussain is a highly qualified doctor and practices as a urologist at Hussain Kidney Hospital, Lahore. He practices between Monday to Saturday. Now you can easily get an online appointment with Dr. Zahid Hussain through Marham. You can call at 0311-1222398 to confirm his timings or book an appointment.', '28', 'New Garden Town, Lahore', 'Consultant', '1500', '1', '1', 'dr-zahid-hussain', '2019-09-07 19:00:00', '2019-09-07 19:00:00', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_specializations`
--

DROP TABLE IF EXISTS `doctors_specializations`;
CREATE TABLE IF NOT EXISTS `doctors_specializations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors_specializations`
--

INSERT INTO `doctors_specializations` (`id`, `doctor_id`, `specialization_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_achievements`
--

DROP TABLE IF EXISTS `doctor_achievements`;
CREATE TABLE IF NOT EXISTS `doctor_achievements` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_achievements`
--

INSERT INTO `doctor_achievements` (`id`, `description`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'Author of a comprehensive unique book \"The efficacy of ESWL in Urolithiasis\".', '2', '2019-09-07 19:00:00', '2019-11-10 01:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointments`
--

DROP TABLE IF EXISTS `doctor_appointments`;
CREATE TABLE IF NOT EXISTS `doctor_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_slot` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_appointments`
--

INSERT INTO `doctor_appointments` (`id`, `doctor_id`, `clinic_id`, `patient_id`, `patient_name`, `patient_number`, `appointment_date`, `time_slot`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '4', 'Muhammad Numair', '03322652270', '2019-09-09', '14:00:00', '2019-09-09 10:43:25', '2019-09-09 10:43:25'),
(2, '2', '1', '4', 'Hameed Khan', '03012265506', '2019-09-09', '14:45:00', '2019-09-09 11:58:13', '2019-09-09 11:58:13'),
(3, '2', '1', '4', 'Nouman Asghar', '0332-2652270', '2019-09-10', '15:15:00', '2019-09-09 17:43:53', '2019-09-09 17:43:53'),
(4, '2', '1', '4', 'NUmair', '03216702013', '2019-10-01', '15:00:00', '2019-10-01 00:25:34', '2019-10-01 00:25:34'),
(5, '2', '1', '4', 'mmmm', '03012265506', '2019-10-01', '15:30:00', '2019-10-01 00:26:41', '2019-10-01 00:26:41'),
(6, '2', '1', '4', 'Menahal Hassan', '03041401469', '2019-11-11', '14:00:00', '2019-11-09 14:01:52', '2019-11-09 14:01:52'),
(7, '2', '1', '4', 'Muhammad Numair', '03041401469', '2019-11-11', '15:00:00', '2019-11-10 14:03:58', '2019-11-09 14:03:58'),
(8, '2', '1', '4', 'Menahal Hassan', '03041401469', '2019-11-11', '04:00:00', '2019-11-11 01:23:39', '2019-11-11 01:23:39'),
(9, '2', '1', '4', 'Menahal Hassan', '03041401469', '2019-11-11', '05:00:00', '2019-11-11 02:04:49', '2019-11-11 02:04:49'),
(10, '2', '1', '4', 'Menahal Hassan', '03041401469', '2019-11-11', '04:30:00', '2019-11-11 03:24:28', '2019-11-11 03:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_clinics`
--

DROP TABLE IF EXISTS `doctor_clinics`;
CREATE TABLE IF NOT EXISTS `doctor_clinics` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_clinics`
--

INSERT INTO `doctor_clinics` (`id`, `doctor_id`, `clinic_id`, `doctor_fee`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '2000', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(2, '2', '2', '1500', '2019-09-07 19:00:00', '2019-09-07 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_diseases`
--

DROP TABLE IF EXISTS `doctor_diseases`;
CREATE TABLE IF NOT EXISTS `doctor_diseases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_diseases`
--

INSERT INTO `doctor_diseases` (`id`, `doctor_id`, `disease_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 1),
(6, 2, 2),
(7, 2, 3),
(8, 2, 4),
(9, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_experiences`
--

DROP TABLE IF EXISTS `doctor_experiences`;
CREATE TABLE IF NOT EXISTS `doctor_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_experiences`
--

INSERT INTO `doctor_experiences` (`id`, `field`, `institute`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'Consultant Surgeon & Urologist', 'Mayo Hospital, Lahore', '2', '2019-09-07 19:00:00', '2019-11-10 00:57:57'),
(2, 'Consultant Surgeon & Urologist', 'Services Hospital, Lahore', '2', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(3, 'Consultant Surgeon & Urologist', 'Jinnah Hospital, Lahore', '2', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(4, 'Consultant Surgeon & Urologist', 'Hussain Kidney & Gall Stones Hospital, Lahore', '2', '2019-09-07 19:00:00', '2019-09-07 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patients`
--

DROP TABLE IF EXISTS `doctor_patients`;
CREATE TABLE IF NOT EXISTS `doctor_patients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `clinic_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_qualifications`
--

DROP TABLE IF EXISTS `doctor_qualifications`;
CREATE TABLE IF NOT EXISTS `doctor_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_qualifications`
--

INSERT INTO `doctor_qualifications` (`id`, `degree`, `institute`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 'MBBS', 'King Edward Medical College, Lahore', '2', '2019-09-07 19:00:00', '2019-09-10 08:44:50'),
(2, 'FCPS', 'King Edward Medical College, Lahore', '2', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(3, 'FACS', 'The American College of Surgeons, USA', '2', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(4, 'ESWL Training', 'John Guttenberg University, Mines, Germany', '2', '2019-09-07 19:00:00', '2019-09-07 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_schedules`
--

DROP TABLE IF EXISTS `doctor_schedules`;
CREATE TABLE IF NOT EXISTS `doctor_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_clinic_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `per_patient_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_schedules`
--

INSERT INTO `doctor_schedules` (`id`, `doctor_id`, `doctor_clinic_id`, `day`, `date`, `start_time`, `end_time`, `open`, `per_patient_time`, `created_at`, `updated_at`) VALUES
(1, '2', '1', 'Sunday', NULL, '14:00:00', '15:00:00', 1, '20', '2019-09-07 19:00:00', '2019-11-09 17:46:02'),
(2, '2', '1', 'Tuesday', NULL, '15:00:00', '16:00:00', 1, '15', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(3, '2', '1', 'Wednesday', '2019-09-10', '13:00:00', '15:00:00', 1, '15', '2019-09-07 19:00:00', '2019-10-01 00:23:46'),
(4, '2', '1', 'Thursday', NULL, '14:00:00', '15:00:00', 1, '10', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(5, '2', '1', 'Friday', NULL, '14:00:00', '15:00:00', 1, '5', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(15, '2', '1', 'Monday', '2019-11-14', '04:00:00', '05:00:00', 0, '20', '2019-11-09 17:46:50', '2019-11-09 17:46:50'),
(14, '2', '2', 'Monday', NULL, '17:15:00', '18:15:00', 1, '10', '2019-09-10 07:05:15', '2019-09-10 07:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_services`
--

DROP TABLE IF EXISTS `doctor_services`;
CREATE TABLE IF NOT EXISTS `doctor_services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medical_service_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_services`
--

INSERT INTO `doctor_services` (`id`, `doctor_id`, `medical_service_id`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(2, '2', '2', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(3, '2', '3', '2019-09-07 19:00:00', '2019-09-07 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo_img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_services`
--

DROP TABLE IF EXISTS `medical_services`;
CREATE TABLE IF NOT EXISTS `medical_services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medical_services`
--

INSERT INTO `medical_services` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Andrologist', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(2, 'Stones Of Urinary Tract', '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(3, 'Bladder Cancer', '2019-09-07 19:00:00', '2019-09-07 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_08_104909_create_doctors_table', 1),
(5, '2019_09_08_114545_create_specializations_table', 2),
(6, '2019_09_08_165910_create_doctor_qualifications_table', 3),
(7, '2019_09_08_173235_create_doctor_experiences_table', 4),
(8, '2019_09_08_175208_create_doctor_achievements_table', 5),
(9, '2019_09_09_071221_create_clinics_table', 6),
(10, '2019_09_09_071249_create_doctor_clinics_table', 6),
(11, '2019_09_09_073127_create_doctor_schedules_table', 7),
(12, '2019_09_09_082158_create_medical_services_table', 8),
(13, '2019_09_09_082224_create_doctor_services_table', 8),
(14, '2019_09_09_085300_create_reviews_table', 9),
(15, '2019_09_09_085910_create_patients_table', 10),
(16, '2019_09_09_152401_create_doctor_appointments_table', 11),
(17, '2019_09_09_205451_create_countries_table', 12),
(18, '2019_09_09_205923_create_cities_table', 13),
(19, '2019_11_03_083604_create_diseases_table', 14),
(20, '2019_10_12_085648_doctor_patients', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `phone_number`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Alia Jafri', '03126162141', 3, '2019-09-07 19:00:00', '2019-09-07 19:00:00'),
(4, 'Menahal Hassan', '03041401469', 4, '2019-11-08 19:00:00', '2019-11-08 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `review`, `stars`, `doctor_id`, `patient_id`, `created_at`, `updated_at`) VALUES
(6, 'i am title', 'i am review', '3', '2', '4', '2019-10-03 23:10:05', '2019-10-03 23:10:05'),
(8, 'That was awesome', 'I Loved Your Service', '4', '2', '4', '2019-11-09 13:41:04', '2019-11-09 13:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

DROP TABLE IF EXISTS `specializations`;
CREATE TABLE IF NOT EXISTS `specializations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_english` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_urdu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name_english`, `name_urdu`, `description`, `created_at`, `updated_at`, `alias`) VALUES
(1, 'Urologist', 'نطام اخراج کا ڈاکٹر', 'A urologist is a specialist who deals with urinary tract diseases and malfunctions in both men and women. Also, they are the ones who diagnose, treat and manage conditions affecting reproductive health in men. They can sometime perform surgeries as well such as opening urinary tract obstructions. You will find them working in various settings that include hospitals, clinics, diabetic centers, and specialized urology clinics. You will be referred to a urologist if you are diagnosed with any condition affecting kidneys, ureter, urethra, bladder, and adrenal glands. Men might also need to consult a urologist if there is any disease or condition related to penis, prostate, and testicles. Most common diseases treated by a {{gender} }urologist include UTIs, sexually transmitted diseases, and infertility in men. Here is the list of best Urologists in Lahore. Find complete details, timings, patient reviews and contact information. Book appointment or take online video consultation with the listed doctors. Call at Marham helpline: 042-32591427 to schedule your appointment.', '2019-09-07 19:00:00', '2019-09-07 19:00:00', 'urologist'),
(2, 'Dermatologist', 'امراض جلد سپیشلسٹ ڈاکٹر', 'Best Dermatologists/Skin Specialists', '2019-11-02 19:00:00', '2019-11-02 19:00:00', 'dermatologist'),
(3, 'Psychiatrist', 'ماہر نفسیات', 'Best Psychiatrists', '2019-11-02 19:00:00', '2019-11-02 19:00:00', NULL),
(4, 'Gastroenterologist', 'معدےکے سپیشلسٹ ڈاکٹر', 'Best Gastroenterologists', '2019-11-02 19:00:00', '2019-11-02 19:00:00', NULL),
(5, 'Gynecologist', 'ماہر امراض نسواں', 'Best Gynecologists', '2019-11-02 19:00:00', '2019-11-02 19:00:00', NULL),
(6, 'Neurologist', 'دماغ کے سپیشلسٹ ڈاکٹر', 'Best Neurologists', '2019-11-02 19:00:00', '2019-11-02 19:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userrole` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `userrole`, `profile_picture`, `mobile`, `office_phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Athar Mehmood', 'athar@gmail.com', NULL, '$2y$10$jz5WjT2z7T/HWt.u3oJfu.P4mwFLUsWbYvhGZDRwDUUG39M9T5W2u', 'doctor', 'https://q4q4u7z4.stackpathcdn.com/assets/doctors/2243/dr-athar-mehmood-urologist-lahore_170X170.jpg', NULL, NULL, NULL, '2019-09-08 06:15:18', '2019-09-08 06:15:18'),
(2, 'Nouman Asghar', 'nouman@gmail.com', NULL, '$2y$10$0bz0poO4BNPMA/ZctquvN.lKVo/Hk/kkuAKVh6V1vCPHRcVHOahvW', 'doctor', NULL, '03013641841', '+92-3322652270', NULL, '2019-09-09 18:15:28', '2019-09-09 18:15:28'),
(3, 'alia', 'alia@curics.com', NULL, '$2y$10$Cva6yIquggnahevUxH.7uOLWoiJuOJlmiJGAB7miamDvXyyIaqHsS', 'patient', '', '03054464771', 'lahore', NULL, '2019-10-02 01:24:36', '2019-10-02 01:24:36'),
(4, 'Menahal Hassan', 'menahal@curics.com', NULL, '$2y$10$3L/zh1OIttRdxAWrQ9FF.unoCBgriE0OQiW90nsLT25.pw0vVZDsK', 'patient', NULL, '03041401469', '03041401469', NULL, '2019-11-08 19:00:00', '2019-11-08 19:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
