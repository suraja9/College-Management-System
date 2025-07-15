-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 09, 2025 at 07:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `check_miniproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2b$10$6RemXDYYjpshcN0L3BsCseOgEFWTfNstB5msz9lvA9C0S77hrIOMS', '2025-03-09 18:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `pdf_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_records`
--

CREATE TABLE `attendance_records` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('Present','Absent','Late') NOT NULL,
  `recorded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_records`
--

INSERT INTO `attendance_records` (`id`, `student_id`, `subject_id`, `date`, `status`, `recorded_at`) VALUES
(78, 1010, 1, '2025-03-16', 'Absent', '2025-03-16 10:02:41'),
(79, 1011, 1, '2025-03-16', 'Present', '2025-03-16 10:02:41'),
(80, 1012, 1, '2025-03-16', 'Absent', '2025-03-16 10:02:41'),
(81, 1013, 1, '2025-03-16', 'Present', '2025-03-16 10:02:41'),
(82, 1014, 1, '2025-03-16', 'Present', '2025-03-16 10:02:41'),
(83, 1015, 1, '2025-03-16', 'Absent', '2025-03-16 10:02:41'),
(84, 1018, 1, '2025-03-16', 'Present', '2025-03-16 10:02:41'),
(85, 1020, 1, '2025-03-16', 'Present', '2025-03-16 10:02:41'),
(86, 1010, 3, '2025-03-16', 'Absent', '2025-03-16 10:02:51'),
(87, 1011, 3, '2025-03-16', 'Present', '2025-03-16 10:02:51'),
(88, 1012, 3, '2025-03-16', 'Absent', '2025-03-16 10:02:51'),
(89, 1013, 3, '2025-03-16', 'Present', '2025-03-16 10:02:51'),
(90, 1014, 3, '2025-03-16', 'Present', '2025-03-16 10:02:51'),
(91, 1015, 3, '2025-03-16', 'Absent', '2025-03-16 10:02:51'),
(92, 1018, 3, '2025-03-16', 'Present', '2025-03-16 10:02:51'),
(93, 1020, 3, '2025-03-16', 'Present', '2025-03-16 10:02:51'),
(94, 1010, 4, '2025-03-16', 'Absent', '2025-03-16 10:02:56'),
(95, 1011, 4, '2025-03-16', 'Present', '2025-03-16 10:02:56'),
(96, 1012, 4, '2025-03-16', 'Absent', '2025-03-16 10:02:56'),
(97, 1013, 4, '2025-03-16', 'Present', '2025-03-16 10:02:56'),
(98, 1014, 4, '2025-03-16', 'Present', '2025-03-16 10:02:56'),
(99, 1015, 4, '2025-03-16', 'Absent', '2025-03-16 10:02:56'),
(100, 1018, 4, '2025-03-16', 'Present', '2025-03-16 10:02:56'),
(101, 1020, 4, '2025-03-16', 'Present', '2025-03-16 10:02:56'),
(102, 1010, 5, '2025-03-16', 'Absent', '2025-03-16 10:03:00'),
(103, 1011, 5, '2025-03-16', 'Present', '2025-03-16 10:03:00'),
(104, 1012, 5, '2025-03-16', 'Absent', '2025-03-16 10:03:00'),
(105, 1013, 5, '2025-03-16', 'Present', '2025-03-16 10:03:00'),
(106, 1014, 5, '2025-03-16', 'Present', '2025-03-16 10:03:00'),
(107, 1015, 5, '2025-03-16', 'Absent', '2025-03-16 10:03:00'),
(108, 1018, 5, '2025-03-16', 'Present', '2025-03-16 10:03:00'),
(109, 1020, 5, '2025-03-16', 'Present', '2025-03-16 10:03:00'),
(110, 1010, 118, '2025-03-16', 'Absent', '2025-03-16 10:03:03'),
(111, 1011, 118, '2025-03-16', 'Present', '2025-03-16 10:03:03'),
(112, 1012, 118, '2025-03-16', 'Absent', '2025-03-16 10:03:03'),
(113, 1013, 118, '2025-03-16', 'Present', '2025-03-16 10:03:03'),
(114, 1014, 118, '2025-03-16', 'Present', '2025-03-16 10:03:03'),
(115, 1015, 118, '2025-03-16', 'Absent', '2025-03-16 10:03:03'),
(116, 1018, 118, '2025-03-16', 'Present', '2025-03-16 10:03:03'),
(117, 1020, 118, '2025-03-16', 'Present', '2025-03-16 10:03:03'),
(118, 1010, 118, '2025-03-17', 'Present', '2025-03-16 10:03:28'),
(119, 1011, 118, '2025-03-17', 'Absent', '2025-03-16 10:03:28'),
(120, 1012, 118, '2025-03-17', 'Absent', '2025-03-16 10:03:28'),
(121, 1013, 118, '2025-03-17', 'Absent', '2025-03-16 10:03:28'),
(122, 1014, 118, '2025-03-17', 'Present', '2025-03-16 10:03:28'),
(123, 1015, 118, '2025-03-17', 'Present', '2025-03-16 10:03:28'),
(124, 1018, 118, '2025-03-17', 'Present', '2025-03-16 10:03:28'),
(125, 1020, 118, '2025-03-17', 'Absent', '2025-03-16 10:03:28'),
(126, 1010, 5, '2025-03-17', 'Present', '2025-03-16 10:03:36'),
(127, 1011, 5, '2025-03-17', 'Absent', '2025-03-16 10:03:36'),
(128, 1012, 5, '2025-03-17', 'Absent', '2025-03-16 10:03:36'),
(129, 1013, 5, '2025-03-17', 'Absent', '2025-03-16 10:03:36'),
(130, 1014, 5, '2025-03-17', 'Present', '2025-03-16 10:03:36'),
(131, 1015, 5, '2025-03-17', 'Present', '2025-03-16 10:03:36'),
(132, 1018, 5, '2025-03-17', 'Present', '2025-03-16 10:03:36'),
(133, 1020, 5, '2025-03-17', 'Absent', '2025-03-16 10:03:36'),
(134, 1010, 4, '2025-03-17', 'Present', '2025-03-16 10:03:41'),
(135, 1011, 4, '2025-03-17', 'Absent', '2025-03-16 10:03:41'),
(136, 1012, 4, '2025-03-17', 'Absent', '2025-03-16 10:03:41'),
(137, 1013, 4, '2025-03-17', 'Absent', '2025-03-16 10:03:41'),
(138, 1014, 4, '2025-03-17', 'Present', '2025-03-16 10:03:41'),
(139, 1015, 4, '2025-03-17', 'Present', '2025-03-16 10:03:41'),
(140, 1018, 4, '2025-03-17', 'Present', '2025-03-16 10:03:41'),
(141, 1020, 4, '2025-03-17', 'Absent', '2025-03-16 10:03:41'),
(142, 1010, 3, '2025-03-17', 'Present', '2025-03-16 10:03:45'),
(143, 1011, 3, '2025-03-17', 'Absent', '2025-03-16 10:03:45'),
(144, 1012, 3, '2025-03-17', 'Absent', '2025-03-16 10:03:45'),
(145, 1013, 3, '2025-03-17', 'Absent', '2025-03-16 10:03:45'),
(146, 1014, 3, '2025-03-17', 'Present', '2025-03-16 10:03:45'),
(147, 1015, 3, '2025-03-17', 'Present', '2025-03-16 10:03:45'),
(148, 1018, 3, '2025-03-17', 'Present', '2025-03-16 10:03:45'),
(149, 1020, 3, '2025-03-17', 'Absent', '2025-03-16 10:03:45'),
(150, 1010, 1, '2025-03-17', 'Present', '2025-03-16 10:03:49'),
(151, 1011, 1, '2025-03-17', 'Absent', '2025-03-16 10:03:49'),
(152, 1012, 1, '2025-03-17', 'Absent', '2025-03-16 10:03:49'),
(153, 1013, 1, '2025-03-17', 'Absent', '2025-03-16 10:03:49'),
(154, 1014, 1, '2025-03-17', 'Present', '2025-03-16 10:03:49'),
(155, 1015, 1, '2025-03-17', 'Present', '2025-03-16 10:03:49'),
(156, 1018, 1, '2025-03-17', 'Present', '2025-03-16 10:03:49'),
(157, 1020, 1, '2025-03-17', 'Absent', '2025-03-16 10:03:49'),
(158, 1010, 1, '2025-03-18', 'Present', '2025-03-16 10:05:14'),
(159, 1011, 1, '2025-03-18', 'Present', '2025-03-16 10:05:14'),
(160, 1012, 1, '2025-03-18', 'Absent', '2025-03-16 10:05:14'),
(161, 1013, 1, '2025-03-18', 'Present', '2025-03-16 10:05:14'),
(162, 1014, 1, '2025-03-18', 'Absent', '2025-03-16 10:05:14'),
(163, 1015, 1, '2025-03-18', 'Present', '2025-03-16 10:05:14'),
(164, 1018, 1, '2025-03-18', 'Absent', '2025-03-16 10:05:14'),
(165, 1020, 1, '2025-03-18', 'Absent', '2025-03-16 10:05:14'),
(166, 1010, 3, '2025-03-18', 'Present', '2025-03-16 10:05:19'),
(167, 1011, 3, '2025-03-18', 'Present', '2025-03-16 10:05:19'),
(168, 1012, 3, '2025-03-18', 'Absent', '2025-03-16 10:05:19'),
(169, 1013, 3, '2025-03-18', 'Present', '2025-03-16 10:05:19'),
(170, 1014, 3, '2025-03-18', 'Absent', '2025-03-16 10:05:19'),
(171, 1015, 3, '2025-03-18', 'Present', '2025-03-16 10:05:19'),
(172, 1018, 3, '2025-03-18', 'Absent', '2025-03-16 10:05:19'),
(173, 1020, 3, '2025-03-18', 'Absent', '2025-03-16 10:05:19'),
(174, 1010, 4, '2025-03-18', 'Present', '2025-03-16 10:05:23'),
(175, 1011, 4, '2025-03-18', 'Present', '2025-03-16 10:05:23'),
(176, 1012, 4, '2025-03-18', 'Absent', '2025-03-16 10:05:23'),
(177, 1013, 4, '2025-03-18', 'Present', '2025-03-16 10:05:23'),
(178, 1014, 4, '2025-03-18', 'Absent', '2025-03-16 10:05:23'),
(179, 1015, 4, '2025-03-18', 'Present', '2025-03-16 10:05:23'),
(180, 1018, 4, '2025-03-18', 'Absent', '2025-03-16 10:05:23'),
(181, 1020, 4, '2025-03-18', 'Absent', '2025-03-16 10:05:23'),
(182, 1010, 5, '2025-03-18', 'Present', '2025-03-16 10:05:27'),
(183, 1011, 5, '2025-03-18', 'Present', '2025-03-16 10:05:27'),
(184, 1012, 5, '2025-03-18', 'Absent', '2025-03-16 10:05:27'),
(185, 1013, 5, '2025-03-18', 'Present', '2025-03-16 10:05:27'),
(186, 1014, 5, '2025-03-18', 'Absent', '2025-03-16 10:05:27'),
(187, 1015, 5, '2025-03-18', 'Present', '2025-03-16 10:05:27'),
(188, 1018, 5, '2025-03-18', 'Absent', '2025-03-16 10:05:27'),
(189, 1020, 5, '2025-03-18', 'Absent', '2025-03-16 10:05:27'),
(190, 1010, 118, '2025-03-18', 'Present', '2025-03-16 10:05:31'),
(191, 1011, 118, '2025-03-18', 'Present', '2025-03-16 10:05:31'),
(192, 1012, 118, '2025-03-18', 'Absent', '2025-03-16 10:05:31'),
(193, 1013, 118, '2025-03-18', 'Present', '2025-03-16 10:05:31'),
(194, 1014, 118, '2025-03-18', 'Absent', '2025-03-16 10:05:31'),
(195, 1015, 118, '2025-03-18', 'Present', '2025-03-16 10:05:31'),
(196, 1018, 118, '2025-03-18', 'Absent', '2025-03-16 10:05:31'),
(197, 1020, 118, '2025-03-18', 'Absent', '2025-03-16 10:05:31'),
(199, 1010, 1, '2025-03-17', 'Present', '2025-03-16 19:04:56'),
(201, 1010, 3, '2025-03-17', 'Present', '2025-03-16 19:05:01'),
(203, 1010, 4, '2025-03-17', 'Present', '2025-03-16 19:05:05'),
(205, 1010, 5, '2025-03-17', 'Present', '2025-03-16 19:05:09'),
(207, 1010, 118, '2025-03-17', 'Present', '2025-03-16 19:05:12'),
(214, 1021, 49, '2025-03-17', 'Present', '2025-03-16 19:15:24'),
(215, 1010, 1, '2025-04-30', 'Present', '2025-04-28 20:18:47'),
(216, 1011, 1, '2025-04-30', 'Present', '2025-04-28 20:18:47'),
(217, 1012, 1, '2025-04-30', 'Present', '2025-04-28 20:18:47'),
(218, 1013, 1, '2025-04-30', 'Present', '2025-04-28 20:18:47'),
(219, 1014, 1, '2025-04-30', 'Present', '2025-04-28 20:18:47'),
(220, 1015, 1, '2025-04-30', 'Present', '2025-04-28 20:18:47'),
(221, 1018, 1, '2025-04-30', 'Present', '2025-04-28 20:18:47'),
(222, 1020, 1, '2025-04-30', 'Present', '2025-04-28 20:18:47'),
(224, 1010, 1, '2025-05-31', 'Present', '2025-05-03 08:12:22'),
(225, 1011, 1, '2025-05-31', 'Present', '2025-05-03 08:12:22'),
(226, 1012, 1, '2025-05-31', 'Present', '2025-05-03 08:12:22'),
(227, 1013, 1, '2025-05-31', 'Present', '2025-05-03 08:12:22'),
(228, 1014, 1, '2025-05-31', 'Present', '2025-05-03 08:12:22'),
(229, 1015, 1, '2025-05-31', 'Present', '2025-05-03 08:12:22'),
(230, 1018, 1, '2025-05-31', 'Present', '2025-05-03 08:12:22'),
(231, 1020, 1, '2025-05-31', 'Present', '2025-05-03 08:12:22'),
(233, 1021, 51, '2025-05-05', 'Present', '2025-05-05 06:01:23'),
(234, 1021, 49, '2025-05-05', 'Absent', '2025-05-05 06:01:30'),
(235, 1021, 52, '2025-05-05', 'Present', '2025-05-05 06:01:35'),
(236, 1010, 1, '2025-05-08', 'Present', '2025-05-07 18:32:47'),
(237, 1011, 1, '2025-05-08', 'Present', '2025-05-07 18:32:47'),
(238, 1012, 1, '2025-05-08', 'Present', '2025-05-07 18:32:47'),
(239, 1013, 1, '2025-05-08', 'Present', '2025-05-07 18:32:47'),
(240, 1014, 1, '2025-05-08', 'Present', '2025-05-07 18:32:47'),
(241, 1015, 1, '2025-05-08', 'Present', '2025-05-07 18:32:47'),
(242, 1018, 1, '2025-05-08', 'Present', '2025-05-07 18:32:47'),
(243, 1020, 1, '2025-05-08', 'Present', '2025-05-07 18:32:47'),
(245, 1010, 3, '2025-05-08', 'Present', '2025-05-07 18:32:51'),
(246, 1011, 3, '2025-05-08', 'Present', '2025-05-07 18:32:51'),
(247, 1012, 3, '2025-05-08', 'Present', '2025-05-07 18:32:51'),
(248, 1013, 3, '2025-05-08', 'Present', '2025-05-07 18:32:51'),
(249, 1014, 3, '2025-05-08', 'Present', '2025-05-07 18:32:51'),
(250, 1015, 3, '2025-05-08', 'Present', '2025-05-07 18:32:51'),
(251, 1018, 3, '2025-05-08', 'Present', '2025-05-07 18:32:51'),
(252, 1020, 3, '2025-05-08', 'Present', '2025-05-07 18:32:51'),
(254, 1010, 4, '2025-05-08', 'Present', '2025-05-07 18:33:01'),
(255, 1011, 4, '2025-05-08', 'Present', '2025-05-07 18:33:01'),
(256, 1012, 4, '2025-05-08', 'Present', '2025-05-07 18:33:01'),
(257, 1013, 4, '2025-05-08', 'Present', '2025-05-07 18:33:01'),
(258, 1014, 4, '2025-05-08', 'Present', '2025-05-07 18:33:01'),
(259, 1015, 4, '2025-05-08', 'Present', '2025-05-07 18:33:01'),
(260, 1018, 4, '2025-05-08', 'Present', '2025-05-07 18:33:01'),
(261, 1020, 4, '2025-05-08', 'Present', '2025-05-07 18:33:01'),
(263, 1010, 5, '2025-05-08', 'Present', '2025-05-07 18:33:07'),
(264, 1011, 5, '2025-05-08', 'Present', '2025-05-07 18:33:07'),
(265, 1012, 5, '2025-05-08', 'Present', '2025-05-07 18:33:07'),
(266, 1013, 5, '2025-05-08', 'Present', '2025-05-07 18:33:07'),
(267, 1014, 5, '2025-05-08', 'Present', '2025-05-07 18:33:07'),
(268, 1015, 5, '2025-05-08', 'Present', '2025-05-07 18:33:07'),
(269, 1018, 5, '2025-05-08', 'Present', '2025-05-07 18:33:07'),
(270, 1020, 5, '2025-05-08', 'Present', '2025-05-07 18:33:07'),
(272, 1010, 118, '2025-05-08', 'Present', '2025-05-07 18:33:10'),
(273, 1011, 118, '2025-05-08', 'Present', '2025-05-07 18:33:10'),
(274, 1012, 118, '2025-05-08', 'Present', '2025-05-07 18:33:10'),
(275, 1013, 118, '2025-05-08', 'Present', '2025-05-07 18:33:10'),
(276, 1014, 118, '2025-05-08', 'Present', '2025-05-07 18:33:10'),
(277, 1015, 118, '2025-05-08', 'Present', '2025-05-07 18:33:10'),
(278, 1018, 118, '2025-05-08', 'Present', '2025-05-07 18:33:10'),
(279, 1020, 118, '2025-05-08', 'Present', '2025-05-07 18:33:10'),
(281, 1010, 1, '2025-05-30', 'Present', '2025-05-30 12:07:34'),
(282, 1011, 1, '2025-05-30', 'Present', '2025-05-30 12:07:34'),
(283, 1012, 1, '2025-05-30', 'Present', '2025-05-30 12:07:34'),
(284, 1013, 1, '2025-05-30', 'Present', '2025-05-30 12:07:34'),
(285, 1014, 1, '2025-05-30', 'Absent', '2025-05-30 12:07:34'),
(286, 1015, 1, '2025-05-30', 'Absent', '2025-05-30 12:07:34'),
(287, 1018, 1, '2025-05-30', 'Present', '2025-05-30 12:07:34'),
(288, 1020, 1, '2025-05-30', 'Present', '2025-05-30 12:07:34'),
(290, 1010, 5, '2025-08-14', 'Present', '2025-06-02 08:48:40'),
(291, 1011, 5, '2025-08-14', 'Present', '2025-06-02 08:48:40'),
(292, 1012, 5, '2025-08-14', 'Present', '2025-06-02 08:48:40'),
(293, 1013, 5, '2025-08-14', 'Present', '2025-06-02 08:48:40'),
(294, 1014, 5, '2025-08-14', 'Present', '2025-06-02 08:48:40'),
(295, 1015, 5, '2025-08-14', 'Absent', '2025-06-02 08:48:40'),
(296, 1018, 5, '2025-08-14', 'Present', '2025-06-02 08:48:40'),
(297, 1020, 5, '2025-08-14', 'Absent', '2025-06-02 08:48:40'),
(299, 1010, 1, '2025-06-04', 'Present', '2025-06-03 00:19:04'),
(300, 1011, 1, '2025-06-04', 'Present', '2025-06-03 00:19:04'),
(301, 1012, 1, '2025-06-04', 'Present', '2025-06-03 00:19:04'),
(302, 1013, 1, '2025-06-04', 'Present', '2025-06-03 00:19:04'),
(303, 1014, 1, '2025-06-04', 'Present', '2025-06-03 00:19:04'),
(304, 1015, 1, '2025-06-04', 'Present', '2025-06-03 00:19:04'),
(305, 1018, 1, '2025-06-04', 'Present', '2025-06-03 00:19:04'),
(306, 1020, 1, '2025-06-04', 'Present', '2025-06-03 00:19:04'),
(308, 1010, 1, '2025-06-03', 'Present', '2025-06-03 03:21:45'),
(309, 1011, 1, '2025-06-03', 'Absent', '2025-06-03 03:21:45'),
(310, 1012, 1, '2025-06-03', 'Present', '2025-06-03 03:21:45'),
(311, 1013, 1, '2025-06-03', 'Present', '2025-06-03 03:21:45'),
(312, 1014, 1, '2025-06-03', 'Absent', '2025-06-03 03:21:45'),
(313, 1015, 1, '2025-06-03', 'Present', '2025-06-03 03:21:45'),
(314, 1018, 1, '2025-06-03', 'Absent', '2025-06-03 03:21:45'),
(315, 1020, 1, '2025-06-03', 'Present', '2025-06-03 03:21:45'),
(317, 1010, 3, '2025-06-03', 'Present', '2025-06-03 03:21:51'),
(318, 1011, 3, '2025-06-03', 'Absent', '2025-06-03 03:21:51'),
(319, 1012, 3, '2025-06-03', 'Present', '2025-06-03 03:21:51'),
(320, 1013, 3, '2025-06-03', 'Present', '2025-06-03 03:21:51'),
(321, 1014, 3, '2025-06-03', 'Absent', '2025-06-03 03:21:51'),
(322, 1015, 3, '2025-06-03', 'Present', '2025-06-03 03:21:51'),
(323, 1018, 3, '2025-06-03', 'Absent', '2025-06-03 03:21:51'),
(324, 1020, 3, '2025-06-03', 'Present', '2025-06-03 03:21:51'),
(326, 1010, 4, '2025-06-03', 'Present', '2025-06-03 03:21:55'),
(327, 1011, 4, '2025-06-03', 'Absent', '2025-06-03 03:21:55'),
(328, 1012, 4, '2025-06-03', 'Present', '2025-06-03 03:21:55'),
(329, 1013, 4, '2025-06-03', 'Present', '2025-06-03 03:21:55'),
(330, 1014, 4, '2025-06-03', 'Absent', '2025-06-03 03:21:55'),
(331, 1015, 4, '2025-06-03', 'Present', '2025-06-03 03:21:55'),
(332, 1018, 4, '2025-06-03', 'Absent', '2025-06-03 03:21:55'),
(333, 1020, 4, '2025-06-03', 'Present', '2025-06-03 03:21:55'),
(335, 1010, 5, '2025-06-03', 'Present', '2025-06-03 03:22:00'),
(336, 1011, 5, '2025-06-03', 'Absent', '2025-06-03 03:22:00'),
(337, 1012, 5, '2025-06-03', 'Present', '2025-06-03 03:22:00'),
(338, 1013, 5, '2025-06-03', 'Present', '2025-06-03 03:22:00'),
(339, 1014, 5, '2025-06-03', 'Absent', '2025-06-03 03:22:00'),
(340, 1015, 5, '2025-06-03', 'Present', '2025-06-03 03:22:00'),
(341, 1018, 5, '2025-06-03', 'Absent', '2025-06-03 03:22:00'),
(342, 1020, 5, '2025-06-03', 'Present', '2025-06-03 03:22:00'),
(344, 1010, 118, '2025-06-03', 'Present', '2025-06-03 03:22:04'),
(345, 1011, 118, '2025-06-03', 'Absent', '2025-06-03 03:22:04'),
(346, 1012, 118, '2025-06-03', 'Present', '2025-06-03 03:22:04'),
(347, 1013, 118, '2025-06-03', 'Present', '2025-06-03 03:22:04'),
(348, 1014, 118, '2025-06-03', 'Absent', '2025-06-03 03:22:04'),
(349, 1015, 118, '2025-06-03', 'Present', '2025-06-03 03:22:04'),
(350, 1018, 118, '2025-06-03', 'Absent', '2025-06-03 03:22:04'),
(351, 1020, 118, '2025-06-03', 'Present', '2025-06-03 03:22:04'),
(353, 1010, 118, '2025-06-04', 'Present', '2025-06-03 03:22:17'),
(354, 1011, 118, '2025-06-04', 'Absent', '2025-06-03 03:22:17'),
(355, 1012, 118, '2025-06-04', 'Absent', '2025-06-03 03:22:17'),
(356, 1013, 118, '2025-06-04', 'Present', '2025-06-03 03:22:17'),
(357, 1014, 118, '2025-06-04', 'Absent', '2025-06-03 03:22:17'),
(358, 1015, 118, '2025-06-04', 'Present', '2025-06-03 03:22:17'),
(359, 1018, 118, '2025-06-04', 'Present', '2025-06-03 03:22:17'),
(360, 1020, 118, '2025-06-04', 'Absent', '2025-06-03 03:22:17'),
(362, 1010, 1, '2025-06-04', 'Present', '2025-06-03 03:22:22'),
(363, 1011, 1, '2025-06-04', 'Absent', '2025-06-03 03:22:22'),
(364, 1012, 1, '2025-06-04', 'Absent', '2025-06-03 03:22:22'),
(365, 1013, 1, '2025-06-04', 'Present', '2025-06-03 03:22:22'),
(366, 1014, 1, '2025-06-04', 'Absent', '2025-06-03 03:22:22'),
(367, 1015, 1, '2025-06-04', 'Present', '2025-06-03 03:22:22'),
(368, 1018, 1, '2025-06-04', 'Present', '2025-06-03 03:22:22'),
(369, 1020, 1, '2025-06-04', 'Absent', '2025-06-03 03:22:22'),
(371, 1010, 3, '2025-06-04', 'Present', '2025-06-03 03:22:26'),
(372, 1011, 3, '2025-06-04', 'Absent', '2025-06-03 03:22:26'),
(373, 1012, 3, '2025-06-04', 'Absent', '2025-06-03 03:22:26'),
(374, 1013, 3, '2025-06-04', 'Present', '2025-06-03 03:22:26'),
(375, 1014, 3, '2025-06-04', 'Absent', '2025-06-03 03:22:26'),
(376, 1015, 3, '2025-06-04', 'Present', '2025-06-03 03:22:26'),
(377, 1018, 3, '2025-06-04', 'Present', '2025-06-03 03:22:26'),
(378, 1020, 3, '2025-06-04', 'Absent', '2025-06-03 03:22:26'),
(380, 1010, 4, '2025-06-04', 'Present', '2025-06-03 03:22:30'),
(381, 1011, 4, '2025-06-04', 'Absent', '2025-06-03 03:22:30'),
(382, 1012, 4, '2025-06-04', 'Absent', '2025-06-03 03:22:30'),
(383, 1013, 4, '2025-06-04', 'Present', '2025-06-03 03:22:30'),
(384, 1014, 4, '2025-06-04', 'Absent', '2025-06-03 03:22:30'),
(385, 1015, 4, '2025-06-04', 'Present', '2025-06-03 03:22:30'),
(386, 1018, 4, '2025-06-04', 'Present', '2025-06-03 03:22:30'),
(387, 1020, 4, '2025-06-04', 'Absent', '2025-06-03 03:22:30'),
(389, 1010, 5, '2025-06-04', 'Present', '2025-06-03 03:22:35'),
(390, 1011, 5, '2025-06-04', 'Absent', '2025-06-03 03:22:35'),
(391, 1012, 5, '2025-06-04', 'Absent', '2025-06-03 03:22:35'),
(392, 1013, 5, '2025-06-04', 'Present', '2025-06-03 03:22:35'),
(393, 1014, 5, '2025-06-04', 'Absent', '2025-06-03 03:22:35'),
(394, 1015, 5, '2025-06-04', 'Present', '2025-06-03 03:22:35'),
(395, 1018, 5, '2025-06-04', 'Present', '2025-06-03 03:22:35'),
(396, 1020, 5, '2025-06-04', 'Absent', '2025-06-03 03:22:35'),
(398, 1022, 1, '2025-06-03', 'Present', '2025-06-03 04:21:25'),
(399, 1022, 3, '2025-06-03', 'Present', '2025-06-03 04:22:01'),
(400, 1022, 4, '2025-06-03', 'Absent', '2025-06-03 04:22:09'),
(401, 1022, 5, '2025-06-03', 'Absent', '2025-06-03 04:22:13'),
(402, 1022, 118, '2025-06-03', 'Present', '2025-06-03 04:22:19'),
(403, 1022, 118, '2025-06-04', 'Absent', '2025-06-03 04:22:26'),
(404, 1022, 5, '2025-06-04', 'Absent', '2025-06-03 04:22:33'),
(405, 1022, 4, '2025-06-04', 'Present', '2025-06-03 04:22:40'),
(406, 1022, 3, '2025-06-04', 'Present', '2025-06-03 04:22:44'),
(407, 1022, 1, '2025-06-04', 'Present', '2025-06-03 04:22:47'),
(408, 1022, 1, '2025-06-05', 'Present', '2025-06-03 04:23:25'),
(409, 1022, 3, '2025-06-05', 'Present', '2025-06-03 04:23:29'),
(410, 1022, 4, '2025-06-05', 'Present', '2025-06-03 04:23:33'),
(411, 1022, 5, '2025-06-05', 'Present', '2025-06-03 04:23:36'),
(412, 1022, 118, '2025-06-05', 'Present', '2025-06-03 04:23:40'),
(413, 1022, 118, '2025-06-06', 'Present', '2025-06-03 04:23:46'),
(414, 1022, 5, '2025-06-06', 'Present', '2025-06-03 04:23:50'),
(415, 1022, 4, '2025-06-06', 'Present', '2025-06-03 04:23:54'),
(416, 1022, 3, '2025-06-06', 'Present', '2025-06-03 04:24:02'),
(417, 1022, 1, '2025-06-06', 'Present', '2025-06-03 04:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `school_id`) VALUES
(1, 'Computer Science and Engineering', 1),
(2, 'Electrical Engineering', 1),
(3, 'Mechanical Engineering', 1),
(4, 'Civil Engineering', 1),
(5, 'Electronics & Communication Engineering', 1),
(6, 'Computer Applications', 1),
(7, 'Department of Bussiness Adminisration', 2),
(8, 'Department of Commerce', 2),
(9, 'Pharma', 3),
(10, 'Department of History', 4),
(11, 'Department of Psychology', 4),
(12, 'Department of Economics', 4),
(13, 'Department of Sociology & Social Work', 4),
(14, 'Department of Political Science', 4),
(15, 'Department of English & Foreign Languages', 4);

-- --------------------------------------------------------

--
-- Table structure for table `library_books`
--

CREATE TABLE `library_books` (
  `id` int(11) NOT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_books`
--

INSERT INTO `library_books` (`id`, `serial_number`, `title`, `author`, `publisher`) VALUES
(1, 'LB1001', 'Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press'),
(2, 'LB1002', 'Clean Code', 'Robert C. Martin', 'Prentice Hall'),
(3, 'LB1003', 'The Pragmatic Programmer', 'Andrew Hunt', 'Addison-Wesley'),
(4, 'LB1004', 'Design Patterns', 'Erich Gamma', 'Addison-Wesley'),
(5, 'LB1005', 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Pearson'),
(6, 'LB1006', 'Database System Concepts', 'Abraham Silberschatz', 'McGraw-Hill'),
(7, 'LB1007', 'Operating System Concepts', 'Abraham Silberschatz', 'Wiley'),
(8, 'LB1008', 'Computer Networks', 'Andrew S. Tanenbaum', 'Pearson'),
(9, 'LB1009', 'Software Engineering', 'Ian Sommerville', 'Pearson'),
(10, 'LB1010', 'Digital Logic and Computer Design', 'Morris Mano', 'Prentice Hall'),
(11, 'LB1011', 'Computer Organization and Design', 'David A. Patterson', 'Morgan Kaufmann'),
(12, 'LB1012', 'Java: The Complete Reference', 'Herbert Schildt', 'McGraw-Hill'),
(13, 'LB1013', 'Python Crash Course', 'Eric Matthes', 'No Starch Press'),
(14, 'LB1014', 'Data Structures and Algorithms in Java', 'Robert Lafore', 'Pearson'),
(15, 'LB1015', 'Learning Python', 'Mark Lutz', 'O\'Reilly Media'),
(16, 'LB1016', 'Modern Operating Systems', 'Andrew S. Tanenbaum', 'Pearson'),
(17, 'LB1017', 'Deep Learning', 'Ian Goodfellow', 'MIT Press'),
(18, 'LB1018', 'Computer Architecture', 'John L. Hennessy', 'Morgan Kaufmann'),
(19, 'LB1019', 'Web Development with Node and Express', 'Ethan Brown', 'O\'Reilly Media'),
(20, 'LB1020', 'Head First Design Patterns', 'Eric Freeman', 'O\'Reilly Media'),
(21, 'LB1021', 'Introduction to Machine Learning', 'Ethem Alpaydin', 'MIT Press'),
(22, 'LB1022', 'Cryptography and Network Security', 'William Stallings', 'Pearson'),
(23, 'LB1023', 'Programming in ANSI C', 'E. Balagurusamy', 'McGraw-Hill'),
(24, 'LB1024', 'C Programming Language', 'Brian W. Kernighan', 'Prentice Hall'),
(25, 'LB1025', 'Fundamentals of Database Systems', 'Ramez Elmasri', 'Pearson'),
(26, 'LB1026', 'Introduction to Automata Theory', 'John E. Hopcroft', 'Pearson'),
(27, 'LB1027', 'Compilers: Principles, Techniques, and Tools', 'Alfred V. Aho', 'Pearson'),
(28, 'LB1028', 'Agile Software Development', 'Alistair Cockburn', 'Addison-Wesley'),
(29, 'LB1029', 'Reinforcement Learning', 'Richard S. Sutton', 'MIT Press'),
(30, 'LB1030', 'Computer Security: Principles and Practice', 'William Stallings', 'Pearson'),
(31, 'LB1031', 'Cloud Computing: Concepts, Technology & Architecture', 'Thomas Erl', 'Prentice Hall'),
(32, 'LB1032', 'Full Stack React Projects', 'Shama Hoque', 'Packt Publishing'),
(33, 'LB1033', 'Kubernetes: Up and Running', 'Brendan Burns', 'O\'Reilly Media'),
(34, 'LB1034', 'Pro Git', 'Scott Chacon', 'Apress'),
(35, 'LB1035', 'Docker Deep Dive', 'Nigel Poulton', 'Leanpub'),
(36, 'LB1036', 'Introduction to Cybersecurity', 'Raef Meeuwisse', 'Cyber Simplicity Ltd'),
(37, 'LB1037', 'Penetration Testing', 'Georgia Weidman', 'No Starch Press'),
(38, 'LB1038', 'Effective Java', 'Joshua Bloch', 'Addison-Wesley'),
(39, 'LB1039', 'Linux Basics for Hackers', 'OccupyTheWeb', 'No Starch Press'),
(40, 'LB1040', 'Hands-On Machine Learning with Scikit-Learn and TensorFlow', 'Aurélien Géron', 'O\'Reilly Media'),
(41, 'LB1041', 'Programming in Scala', 'Martin Odersky', 'Artima Press'),
(42, 'LB1042', 'React - Up and Running', 'Stoyan Stefanov', 'O\'Reilly Media'),
(43, 'LB1043', 'You Don’t Know JS: Scope & Closures', 'Kyle Simpson', 'O\'Reilly Media'),
(44, 'LB1044', 'Professional JavaScript for Web Developers', 'Nicholas C. Zakas', 'Wrox'),
(45, 'LB1045', 'Building Microservices', 'Sam Newman', 'O\'Reilly Media'),
(46, 'LB1046', 'The Art of Computer Programming', 'Donald Knuth', 'Addison-Wesley'),
(47, 'LB1047', 'Code: The Hidden Language of Computer Hardware and Software', 'Charles Petzold', 'Microsoft Press'),
(48, 'LB1048', 'Introduction to Information Retrieval', 'Christopher D. Manning', 'Cambridge University Press'),
(49, 'LB1049', 'Artificial Intelligence with Python', 'Prateek Joshi', 'Packt Publishing'),
(50, 'LB1050', 'Computer Vision: Algorithms and Applications', 'Richard Szeliski', 'Springer'),
(51, 'LB1051', 'SQL for Data Scientists', 'Renee M. P. Teate', 'Wiley'),
(52, 'LB1052', 'The Data Warehouse Toolkit', 'Ralph Kimball', 'Wiley'),
(53, 'LB1053', 'Python for Data Analysis', 'Wes McKinney', 'O\'Reilly Media'),
(54, 'LB1054', 'Introduction to Embedded Systems', 'Edward A. Lee', 'Lee & Seshia'),
(55, 'LB1055', 'Introduction to Game Design, Prototyping, and Development', 'Jeremy Gibson Bond', 'Addison-Wesley'),
(56, 'LB1056', 'Hands-On Networking Fundamentals', 'Michael Palmer', 'Cengage Learning'),
(57, 'LB1057', 'Network Warrior', 'Gary A. Donahue', 'O\'Reilly Media'),
(58, 'LB1058', 'Computer Ethics', 'Deborah G. Johnson', 'Prentice Hall'),
(59, 'LB1059', 'Quantum Computing for Everyone', 'Chris Bernhardt', 'MIT Press'),
(60, 'LB1060', 'Practical Object-Oriented Design', 'Sandi Metz', 'Addison-Wesley');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `department_id`) VALUES
(1, 'B.Tech', 1),
(2, 'M.Tech', 1),
(3, 'PhD', 1),
(4, 'B.Tech', 2),
(5, 'M.Tech', 2),
(6, 'PhD', 2),
(7, 'B.Tech', 3),
(8, 'M.Tech', 3),
(9, 'PhD', 3),
(10, 'B.Tech', 4),
(11, 'M.Tech', 4),
(12, 'PhD', 4),
(13, 'B.Tech', 5),
(14, 'M.Tech', 5),
(15, 'PhD', 5),
(16, 'B.Tech', 6),
(17, 'M.Tech', 6),
(18, 'PhD', 6),
(19, 'BBA', 7),
(20, 'MBA', 7),
(21, 'BBA', 8),
(22, 'MBA', 8),
(23, 'B.Pharma', 9),
(24, 'M.Pharma', 9),
(25, 'PhD', 9),
(26, 'B.Pharma', 10),
(27, 'M.Pharma', 10),
(28, 'PhD', 10),
(29, 'B.Pharma', 11),
(30, 'M.Pharma', 11),
(31, 'PhD', 11),
(32, 'B.Pharma', 12),
(33, 'M.Pharma', 12),
(34, 'PhD', 12),
(35, 'B.Pharma', 13),
(36, 'M.Pharma', 13),
(37, 'PhD', 13),
(38, 'B.Pharma', 14),
(39, 'M.Pharma', 14),
(40, 'PhD', 14),
(41, 'B.Pharma', 15),
(42, 'M.Pharma', 15),
(43, 'PhD', 15);

-- --------------------------------------------------------

--
-- Table structure for table `saved_timetables`
--

CREATE TABLE `saved_timetables` (
  `id` int(11) NOT NULL,
  `session` varchar(50) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_timetables`
--

INSERT INTO `saved_timetables` (`id`, `session`, `school_id`, `department_id`, `program_id`, `semester_id`, `created_at`) VALUES
(70, 'Aug-Dec', 1, 1, 1, 1, '2025-06-01 18:16:16'),
(73, 'Aug-Dec', 1, 1, 1, 3, '2025-06-02 08:54:54'),
(74, 'Aug-Dec', 1, 1, 1, 2, '2025-06-02 11:56:11'),
(75, 'Aug-Dec', 1, 1, 1, 4, '2025-06-02 12:10:29'),
(76, 'Aug-Dec', 1, 1, 1, 7, '2025-06-02 12:12:20'),
(77, 'Aug-Dec', 1, 1, 1, 8, '2025-06-02 12:13:58'),
(78, 'Aug-Dec', 1, 1, 1, 1, '2025-06-02 23:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`) VALUES
(1, 'School of Engineering and Technology'),
(2, 'School of Management and Commerce'),
(3, 'School of Pharmaceutical Science'),
(4, 'School of Humanities & Social Science');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name`, `program_id`) VALUES
(1, '1st Semester', 1),
(2, '2nd Semester', 1),
(3, '3rd Semester', 1),
(4, '4th Semester', 1),
(5, '5th Semester', 1),
(6, '6th Semester', 1),
(7, '7th Semester', 1),
(8, '8th Semester', 1),
(9, '1st Semester', 2),
(10, '2nd Semester', 2),
(11, '1st Semester', 3),
(12, '1st Semester', 4),
(13, '2nd Semester', 4),
(14, '3rd Semester', 4),
(15, '1st Semester', 5),
(16, '2nd Semester', 5),
(17, '1st Semester', 6),
(18, '1st Semester', 7),
(19, '2nd Semester', 7),
(20, '3rd Semester', 7),
(21, '1st Semester', 8),
(22, '2nd Semester', 8),
(23, '1st Semester', 9),
(24, '1st Semester', 10),
(25, '2nd Semester', 10),
(26, '1st Semester', 11),
(27, '1st Semester', 12),
(28, '2nd Semester', 12),
(29, '1st Semester', 13),
(30, '2nd Semester', 13),
(31, '1st Semester', 14),
(32, '2nd Semester', 14);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `registration_number` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `program_id`, `semester_id`, `registration_number`, `password`) VALUES
(1010, 'suraj', 1, 1, '210310007054', 'student'),
(1011, 'rajat', 1, 1, '210310007044', NULL),
(1012, 'sudeep', 1, 1, '210310007053', NULL),
(1013, 'Priyangshu Kalita', 1, 1, '210310007039', NULL),
(1014, 'Pratim Das', 1, 1, '210310007024', NULL),
(1015, 'Anupama', 1, 1, '210310007004', NULL),
(1017, 'Pranab', 1, 2, '210310007036', NULL),
(1018, 'fahim', 1, 1, '210310007011', NULL),
(1020, 'Kaushik', 1, 1, '210310007013', NULL),
(1021, 'Suaurav', 1, 8, '210310007025', '$2b$10$bpm43cbm82k0E4KGNYTdcewMJd/O8BRZ0a3N869h1qwIbzJlOP6qe'),
(1022, 'Allen', 1, 1, '210310007001', '$2b$10$fj9tRZ2yosVm6wjQhgRV1upQN9u7JskmYjUrVz/FXNZgEptHt1tea'),
(1023, 'Krishno Moni Nath', 4, 12, '220310007001', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_assignments`
--

CREATE TABLE `student_assignments` (
  `id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `status` enum('Submitted','Graded') DEFAULT 'Submitted',
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `total_classes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `semester_id`, `total_classes`) VALUES
(1, 'Physics-101', 1, 15),
(3, 'Engineering Graphics and Design', 1, 13),
(4, 'Engineering Mechanics', 1, 13),
(5, 'Sociology', 1, 10),
(6, 'Chemistry-201', 2, 12),
(7, 'Mathematics-II', 2, 15),
(8, 'PSPC', 2, 11),
(9, 'BEE', 2, 9),
(10, 'CPS', 2, 8),
(11, 'Workshop', 2, 6),
(12, 'Chemistry Lab', 2, 6),
(13, 'BEE Lab', 2, 6),
(14, 'Mathematics-III', 3, 0),
(15, 'Object Oriented Programming', 3, 0),
(16, 'Digital System', 3, 0),
(17, 'Data Structure and Algorithm', 3, 0),
(18, 'Constitution of India', 3, 0),
(19, 'OOP Lab', 3, 0),
(20, 'DSA Lab', 3, 0),
(21, 'Discrete Mathematics', 4, 0),
(22, 'COA', 4, 0),
(23, 'OS', 4, 0),
(24, 'JAVA Programming', 4, 0),
(25, 'Graph Theory', 4, 0),
(26, 'EVS', 4, 0),
(27, 'OS Lab', 4, 0),
(28, 'IT Lab', 4, 0),
(29, 'DBMS', 5, 0),
(30, 'DAA', 5, 0),
(31, 'FLAT', 5, 0),
(32, 'Program Elective-1', 5, 0),
(33, 'Engineering Economics', 5, 0),
(34, 'DBMS Lab', 5, 0),
(35, 'Web Programming Lab', 5, 0),
(36, 'Compiler Design', 6, 0),
(37, 'Computer Networks', 6, 0),
(38, 'Program Elective-2', 6, 0),
(39, 'Program Elective-3', 6, 0),
(40, 'Open Elective-1', 6, 0),
(41, 'Accountancy', 6, 0),
(42, 'Compiler Design Lab', 6, 0),
(43, 'Computer Networks Lab', 6, 0),
(44, 'Program Elective 4', 7, 0),
(45, 'Open Elective 2', 7, 0),
(46, 'Open Elective 3', 7, 0),
(47, 'Principle of Management', 7, 0),
(48, 'Project-1', 7, 0),
(49, 'Program Elective-5', 8, 5),
(50, 'Program Elective-6', 8, 7),
(51, 'Open Elective-4', 8, 9),
(52, 'Open Elective-5', 8, 6),
(53, 'Project-2', 8, 5),
(54, 'Advanced Algorithms', 9, 0),
(55, 'Advanced Operating Systems', 9, 0),
(56, 'Machine Learning', 9, 0),
(57, 'Data Mining', 9, 0),
(58, 'Research Methodology', 9, 0),
(59, 'Lab 1', 9, 0),
(60, 'Lab 2', 9, 0),
(61, 'Network Security', 10, 0),
(62, 'Distributed Systems', 10, 0),
(63, 'Cloud Computing', 10, 0),
(64, 'Big Data Analytics', 10, 0),
(65, 'Seminar', 10, 0),
(66, 'Lab 1', 10, 0),
(67, 'Lab 2', 10, 0),
(68, 'Mathematics 1', 11, 0),
(69, 'Physics', 11, 0),
(70, 'Circuit Theory', 11, 0),
(71, 'Electromagnetics', 11, 0),
(72, 'Electronics', 11, 0),
(73, 'Lab 1', 11, 0),
(74, 'Lab 2', 11, 0),
(75, 'Mathematics 2', 12, 0),
(76, 'Signals and Systems', 12, 0),
(77, 'Digital Logic', 12, 0),
(78, 'Microprocessors', 12, 0),
(79, 'Electrical Machines', 12, 0),
(80, 'Lab 1', 12, 0),
(81, 'Lab 2', 12, 0),
(82, 'Mathematics 1', 13, 0),
(83, 'Physics', 13, 0),
(84, 'Engineering Mechanics', 13, 0),
(85, 'Thermodynamics', 13, 0),
(86, 'Manufacturing Processes', 13, 0),
(87, 'Lab 1', 13, 0),
(88, 'Lab 2', 13, 0),
(89, 'Principles of Management', 14, 0),
(90, 'Microeconomics', 14, 0),
(91, 'Financial Accounting', 14, 0),
(92, 'Marketing Fundamentals', 14, 0),
(93, 'Business Communication', 14, 0),
(94, 'Lab 1', 14, 0),
(95, 'Lab 2', 14, 0),
(96, 'Macroeconomics', 15, 0),
(97, 'Business Law', 15, 0),
(98, 'Consumer Behavior', 15, 0),
(99, 'Marketing Research', 15, 0),
(100, 'Statistics for Business', 15, 0),
(101, 'Lab 1', 15, 0),
(102, 'Lab 2', 15, 0),
(103, 'Principles of Management', 16, 0),
(104, 'Microeconomics', 16, 0),
(105, 'Financial Accounting', 16, 0),
(106, 'Finance Fundamentals', 16, 0),
(107, 'Business Communication', 16, 0),
(108, 'Lab 1', 16, 0),
(109, 'Lab 2', 16, 0),
(110, 'Macroeconomics', 17, 0),
(111, 'Business Law', 17, 0),
(112, 'Corporate Finance', 17, 0),
(113, 'Investment Analysis', 17, 0),
(114, 'Statistics for Business', 17, 0),
(115, 'Lab 1', 17, 0),
(116, 'Lab 2', 17, 0),
(118, 'Mathematics', 1, 18),
(120, 'Project -1', 7, 0),
(121, 'Project -2', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `school_id`, `department_id`, `program_id`, `semester_id`, `content`) VALUES
(1, 1, 1, 1, 1, 'Checking'),
(8, 1, 1, 1, 8, 'uploads/8th%20Semester.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `password`) VALUES
(10001, 'Prof. Minakshi Gogoi', '$2b$10$ydCXUxxMoaAF.I5YeNZ9.ekcoj/Pd0UemJt5LlZZj8m.lQyW63UC2'),
(10002, 'Dr.Th. Shanta Kumar', '$2b$10$9n7EZrYAIN0WyogbBaaUpelpHxxxEml.pMzvwbowlhjPyiL3Veoli'),
(10003, 'MRS. MANJULA KALITA', '$2b$10$szmErpyqT9N/GSru6jRCwef.DNGgdGEPKOghfWW.f8v91JfC8b9b.'),
(10004, 'Ms. Shrabani Medhi', '$2b$10$SHBE/ICVcEf7WS.lueNaDusE6iwbVSARMTBIVPIqsRSgLKltohLKy'),
(10005, 'MS. RITUSHREE DUTTA', '$2b$10$GNKG.faD6HlrLJ2FuN79Lu0w/a81Dq4uW9Hl4vsjQcbTZwVCcjlQC'),
(10006, 'Ms. Mala Ahmed', '$2b$10$rhbsBxuj/kUnO7nbbhw13e4Yc90mHxa3riqsQVJ8c2u1rbfFuAucO'),
(10007, 'Mr. Dipjyoti Deka', '$2b$10$oNQ4nwbYvxvIT/Q/4S7eH.nfYibEFg6X9ryaHHfo3NMXsVUQcfN7S'),
(10008, 'Ms. Dharitri Sarkar', '$2b$10$JPeLxfKKJRiaLx52V0qBWOz2B95UPTWrPHRM4..dBRCy2630cGOJm'),
(10009, 'Dr. Subungshri Basumatary', '$2b$10$D9rxDYS061yzxF2R2g5Th.v508MZmRyWl7ID1/eMCA62gaf2rnxnm'),
(10010, 'MS. RUBI KALITA', '$2b$10$b4VmYVzLIelQfuBtMr60iONYifDvVJdZc2qNcK1E/TLYLxB4SU71i'),
(10011, 'MS. MRIDUSMITA BARUAH', '$2b$10$Fv7mNBmInG3vrq1lLIhwdOQ6ETQn4EUIs8IkHHMd9b7.RcoI7.8i6');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `timetable` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetable_entries`
--

CREATE TABLE `timetable_entries` (
  `id` int(11) NOT NULL,
  `timetable_id` int(11) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `time_slot` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `semester_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetable_entries`
--

INSERT INTO `timetable_entries` (`id`, `timetable_id`, `day`, `time_slot`, `subject`, `teacher`, `semester_number`) VALUES
(2485, 70, 'Monday', '8:45-9:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2486, 70, 'Monday', '9:45-10:45', 'Sociology', 'Dr.Th. Shanta Kumar', '1'),
(2487, 70, 'Monday', '10:45-11:45', 'Engineering Mechanics', 'MS. RITUSHREE DUTTA', '1'),
(2488, 70, 'Monday', '12:45-1:45', 'Engineering Mechanics', 'MS. RITUSHREE DUTTA', '1'),
(2489, 70, 'Monday', '1:45-2:45', 'Engineering Graphics and Design', 'MRS. MANJULA KALITA', '1'),
(2490, 70, 'Monday', '2:45-3:45', 'Sociology', 'Dr.Th. Shanta Kumar', '1'),
(2491, 70, 'Tuesday', '8:45-9:45', 'Sociology', 'Dr.Th. Shanta Kumar', '1'),
(2492, 70, 'Tuesday', '9:45-10:45', 'Mathematics', 'Ms. Shrabani Medhi', '1'),
(2493, 70, 'Tuesday', '10:45-11:45', 'Engineering Graphics and Design', 'MRS. MANJULA KALITA', '1'),
(2494, 70, 'Tuesday', '12:45-1:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2495, 70, 'Tuesday', '1:45-2:45', 'Mathematics', 'Ms. Shrabani Medhi', '1'),
(2496, 70, 'Tuesday', '2:45-3:45', 'Engineering Mechanics', 'MS. RITUSHREE DUTTA', '1'),
(2497, 70, 'Wednesday', '8:45-9:45', 'Engineering Graphics and Design', 'MRS. MANJULA KALITA', '1'),
(2498, 70, 'Wednesday', '9:45-10:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2499, 70, 'Wednesday', '10:45-11:45', 'Mathematics', 'Ms. Shrabani Medhi', '1'),
(2500, 70, 'Wednesday', '12:45-1:45', 'Engineering Graphics and Design', 'MRS. MANJULA KALITA', '1'),
(2501, 70, 'Wednesday', '1:45-2:45', 'Sociology', 'Dr.Th. Shanta Kumar', '1'),
(2502, 70, 'Wednesday', '2:45-3:45', 'Mathematics', 'Ms. Shrabani Medhi', '1'),
(2503, 70, 'Thursday', '8:45-9:45', 'Mathematics', 'Ms. Shrabani Medhi', '1'),
(2504, 70, 'Thursday', '9:45-10:45', 'Sociology', 'Dr.Th. Shanta Kumar', '1'),
(2505, 70, 'Thursday', '10:45-11:45', 'Engineering Mechanics', 'MS. RITUSHREE DUTTA', '1'),
(2506, 70, 'Thursday', '12:45-1:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2507, 70, 'Thursday', '1:45-2:45', 'Engineering Graphics and Design', 'MRS. MANJULA KALITA', '1'),
(2508, 70, 'Thursday', '2:45-3:45', 'Engineering Mechanics', 'MS. RITUSHREE DUTTA', '1'),
(2509, 70, 'Friday', '8:45-9:45', 'Engineering Graphics and Design', 'MRS. MANJULA KALITA', '1'),
(2510, 70, 'Friday', '9:45-10:45', 'Engineering Mechanics', 'MS. RITUSHREE DUTTA', '1'),
(2511, 70, 'Friday', '10:45-11:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2512, 70, 'Friday', '12:45-1:45', 'Sociology', 'Dr.Th. Shanta Kumar', '1'),
(2513, 70, 'Friday', '1:45-2:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2514, 70, 'Friday', '2:45-3:45', 'Sociology', 'Dr.Th. Shanta Kumar', '1'),
(2515, 70, 'Saturday', '8:45-9:45', 'Mathematics', 'Ms. Shrabani Medhi', '1'),
(2516, 70, 'Saturday', '9:45-10:45', 'Engineering Graphics and Design', 'MRS. MANJULA KALITA', '1'),
(2517, 70, 'Saturday', '10:45-11:45', 'Mathematics', 'Ms. Shrabani Medhi', '1'),
(2518, 70, 'Saturday', '12:45-1:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2519, 70, 'Saturday', '1:45-2:45', 'Sociology', 'Dr.Th. Shanta Kumar', '1'),
(2520, 70, 'Saturday', '2:45-3:45', 'Engineering Mechanics', 'MS. RITUSHREE DUTTA', '1'),
(2593, 73, 'Monday', '8:45-9:45', 'DSA Lab', 'Ms. Mala Ahmed', '3'),
(2594, 73, 'Monday', '9:45-10:45', 'DSA Lab', 'Ms. Mala Ahmed', '3'),
(2595, 73, 'Monday', '10:45-11:45', 'Mathematics-III', 'Prof. Minakshi Gogoi', '3'),
(2596, 73, 'Monday', '12:45-1:45', 'Constitution of India', 'Mr. Dipjyoti Deka', '3'),
(2597, 73, 'Monday', '1:45-2:45', 'Digital System', 'MS. RUBI KALITA', '3'),
(2598, 73, 'Monday', '2:45-3:45', 'Mathematics-III', 'Prof. Minakshi Gogoi', '3'),
(2599, 73, 'Tuesday', '8:45-9:45', 'DSA Lab', 'Ms. Mala Ahmed', '3'),
(2600, 73, 'Tuesday', '9:45-10:45', 'DSA Lab', 'Ms. Mala Ahmed', '3'),
(2601, 73, 'Tuesday', '10:45-11:45', 'Object Oriented Programming', 'Dr. Subungshri Basumatary', '3'),
(2602, 73, 'Tuesday', '12:45-1:45', 'Data Structure and Algorithm', 'MS. RITUSHREE DUTTA', '3'),
(2603, 73, 'Tuesday', '1:45-2:45', 'Object Oriented Programming', 'Dr. Subungshri Basumatary', '3'),
(2604, 73, 'Tuesday', '2:45-3:45', 'Constitution of India', 'Mr. Dipjyoti Deka', '3'),
(2605, 73, 'Wednesday', '8:45-9:45', 'OOP Lab', 'MS. MRIDUSMITA BARUAH', '3'),
(2606, 73, 'Wednesday', '9:45-10:45', 'OOP Lab', 'MS. MRIDUSMITA BARUAH', '3'),
(2607, 73, 'Wednesday', '10:45-11:45', 'Mathematics-III', 'Prof. Minakshi Gogoi', '3'),
(2608, 73, 'Wednesday', '12:45-1:45', 'Digital System', 'MS. RUBI KALITA', '3'),
(2609, 73, 'Wednesday', '1:45-2:45', 'Data Structure and Algorithm', 'MS. RITUSHREE DUTTA', '3'),
(2610, 73, 'Wednesday', '2:45-3:45', 'Object Oriented Programming', 'Dr. Subungshri Basumatary', '3'),
(2611, 73, 'Thursday', '8:45-9:45', 'OOP Lab', 'MS. MRIDUSMITA BARUAH', '3'),
(2612, 73, 'Thursday', '9:45-10:45', 'OOP Lab', 'MS. MRIDUSMITA BARUAH', '3'),
(2613, 73, 'Thursday', '10:45-11:45', 'Digital System', 'MS. RUBI KALITA', '3'),
(2614, 73, 'Thursday', '12:45-1:45', 'Constitution of India', 'Mr. Dipjyoti Deka', '3'),
(2615, 73, 'Thursday', '1:45-2:45', 'Mathematics-III', 'Prof. Minakshi Gogoi', '3'),
(2616, 73, 'Thursday', '2:45-3:45', 'Digital System', 'MS. RUBI KALITA', '3'),
(2617, 73, 'Friday', '8:45-9:45', 'Data Structure and Algorithm', 'MS. RITUSHREE DUTTA', '3'),
(2618, 73, 'Friday', '9:45-10:45', 'Mathematics-III', 'Prof. Minakshi Gogoi', '3'),
(2619, 73, 'Friday', '10:45-11:45', 'Object Oriented Programming', 'Dr. Subungshri Basumatary', '3'),
(2620, 73, 'Friday', '12:45-1:45', 'Object Oriented Programming', 'Dr. Subungshri Basumatary', '3'),
(2621, 73, 'Friday', '1:45-2:45', 'Digital System', 'MS. RUBI KALITA', '3'),
(2622, 73, 'Friday', '2:45-3:45', 'Data Structure and Algorithm', 'MS. RITUSHREE DUTTA', '3'),
(2623, 73, 'Saturday', '8:45-9:45', 'Constitution of India', 'Mr. Dipjyoti Deka', '3'),
(2624, 73, 'Saturday', '9:45-10:45', 'Data Structure and Algorithm', 'MS. RITUSHREE DUTTA', '3'),
(2625, 73, 'Saturday', '10:45-11:45', 'Constitution of India', 'Mr. Dipjyoti Deka', '3'),
(2626, 73, 'Saturday', '12:45-1:45', 'Digital System', 'MS. RUBI KALITA', '3'),
(2627, 73, 'Saturday', '1:45-2:45', 'Object Oriented Programming', 'Dr. Subungshri Basumatary', '3'),
(2628, 73, 'Saturday', '2:45-3:45', 'Mathematics-III', 'Prof. Minakshi Gogoi', '3'),
(2629, 74, 'Monday', '8:45-9:45', 'Chemistry Lab', 'Ms. Mala Ahmed', '2'),
(2630, 74, 'Monday', '9:45-10:45', 'Chemistry Lab', 'Ms. Mala Ahmed', '2'),
(2631, 74, 'Monday', '10:45-11:45', 'CPS', 'Ms. Dharitri Sarkar', '2'),
(2632, 74, 'Monday', '12:45-1:45', 'Workshop', 'Dr. Subungshri Basumatary', '2'),
(2633, 74, 'Monday', '1:45-2:45', 'CPS', 'Ms. Dharitri Sarkar', '2'),
(2634, 74, 'Monday', '2:45-3:45', 'Mathematics-II', 'MS. MRIDUSMITA BARUAH', '2'),
(2635, 74, 'Tuesday', '8:45-9:45', 'Chemistry Lab', 'Ms. Mala Ahmed', '2'),
(2636, 74, 'Tuesday', '9:45-10:45', 'Chemistry Lab', 'Ms. Mala Ahmed', '2'),
(2637, 74, 'Tuesday', '10:45-11:45', 'Mathematics-II', 'MS. MRIDUSMITA BARUAH', '2'),
(2638, 74, 'Tuesday', '12:45-1:45', 'CPS', 'Ms. Dharitri Sarkar', '2'),
(2639, 74, 'Tuesday', '1:45-2:45', 'Chemistry-201', 'Prof. Minakshi Gogoi', '2'),
(2640, 74, 'Tuesday', '2:45-3:45', 'Workshop', 'Dr. Subungshri Basumatary', '2'),
(2641, 74, 'Wednesday', '8:45-9:45', 'BEE Lab', 'Mr. Dipjyoti Deka', '2'),
(2642, 74, 'Wednesday', '9:45-10:45', 'BEE Lab', 'Mr. Dipjyoti Deka', '2'),
(2643, 74, 'Wednesday', '10:45-11:45', 'Chemistry-201', 'Prof. Minakshi Gogoi', '2'),
(2644, 74, 'Wednesday', '12:45-1:45', 'PSPC', 'MS. RUBI KALITA', '2'),
(2645, 74, 'Wednesday', '1:45-2:45', 'BEE', 'Dr.Th. Shanta Kumar', '2'),
(2646, 74, 'Wednesday', '2:45-3:45', 'Mathematics-II', 'MS. MRIDUSMITA BARUAH', '2'),
(2647, 74, 'Thursday', '8:45-9:45', 'BEE Lab', 'Mr. Dipjyoti Deka', '2'),
(2648, 74, 'Thursday', '9:45-10:45', 'BEE Lab', 'Mr. Dipjyoti Deka', '2'),
(2649, 74, 'Thursday', '10:45-11:45', 'BEE', 'Dr.Th. Shanta Kumar', '2'),
(2650, 74, 'Thursday', '12:45-1:45', 'CPS', 'Ms. Dharitri Sarkar', '2'),
(2651, 74, 'Thursday', '1:45-2:45', 'Chemistry-201', 'Prof. Minakshi Gogoi', '2'),
(2652, 74, 'Thursday', '2:45-3:45', 'BEE', 'Dr.Th. Shanta Kumar', '2'),
(2653, 74, 'Friday', '8:45-9:45', 'PSPC', 'MS. RUBI KALITA', '2'),
(2654, 74, 'Friday', '9:45-10:45', 'Workshop', 'Dr. Subungshri Basumatary', '2'),
(2655, 74, 'Friday', '10:45-11:45', 'PSPC', 'MS. RUBI KALITA', '2'),
(2656, 74, 'Friday', '12:45-1:45', 'BEE', 'Dr.Th. Shanta Kumar', '2'),
(2657, 74, 'Friday', '1:45-2:45', 'Mathematics-II', 'MS. MRIDUSMITA BARUAH', '2'),
(2658, 74, 'Friday', '2:45-3:45', 'PSPC', 'MS. RUBI KALITA', '2'),
(2659, 74, 'Saturday', '8:45-9:45', 'CPS', 'Ms. Dharitri Sarkar', '2'),
(2660, 74, 'Saturday', '9:45-10:45', 'PSPC', 'MS. RUBI KALITA', '2'),
(2661, 74, 'Saturday', '10:45-11:45', 'Chemistry-201', 'Prof. Minakshi Gogoi', '2'),
(2662, 74, 'Saturday', '12:45-1:45', 'Mathematics-II', 'MS. MRIDUSMITA BARUAH', '2'),
(2663, 74, 'Saturday', '1:45-2:45', 'BEE', 'Dr.Th. Shanta Kumar', '2'),
(2664, 74, 'Saturday', '2:45-3:45', 'Chemistry-201', 'Prof. Minakshi Gogoi', '2'),
(2665, 75, 'Monday', '8:45-9:45', 'OS Lab', 'Dr.Th. Shanta Kumar', '4'),
(2666, 75, 'Monday', '9:45-10:45', 'OS Lab', 'Dr.Th. Shanta Kumar', '4'),
(2667, 75, 'Monday', '10:45-11:45', 'JAVA Programming', 'Prof. Minakshi Gogoi', '4'),
(2668, 75, 'Monday', '12:45-1:45', 'Graph Theory', 'Ms. Shrabani Medhi', '4'),
(2669, 75, 'Monday', '1:45-2:45', 'OS', 'Dr. Subungshri Basumatary', '4'),
(2670, 75, 'Monday', '2:45-3:45', 'JAVA Programming', 'Prof. Minakshi Gogoi', '4'),
(2671, 75, 'Tuesday', '8:45-9:45', 'OS Lab', 'Dr.Th. Shanta Kumar', '4'),
(2672, 75, 'Tuesday', '9:45-10:45', 'OS Lab', 'Dr.Th. Shanta Kumar', '4'),
(2673, 75, 'Tuesday', '10:45-11:45', 'COA', 'MS. RUBI KALITA', '4'),
(2674, 75, 'Tuesday', '12:45-1:45', 'COA', 'MS. RUBI KALITA', '4'),
(2675, 75, 'Tuesday', '1:45-2:45', 'EVS', 'Ms. Dharitri Sarkar', '4'),
(2676, 75, 'Tuesday', '2:45-3:45', 'COA', 'MS. RUBI KALITA', '4'),
(2677, 75, 'Wednesday', '8:45-9:45', 'IT Lab', 'MRS. MANJULA KALITA', '4'),
(2678, 75, 'Wednesday', '9:45-10:45', 'IT Lab', 'MRS. MANJULA KALITA', '4'),
(2679, 75, 'Wednesday', '10:45-11:45', 'OS', 'Dr. Subungshri Basumatary', '4'),
(2680, 75, 'Wednesday', '12:45-1:45', 'EVS', 'Ms. Dharitri Sarkar', '4'),
(2681, 75, 'Wednesday', '1:45-2:45', 'Discrete Mathematics', 'MS. MRIDUSMITA BARUAH', '4'),
(2682, 75, 'Wednesday', '2:45-3:45', 'EVS', 'Ms. Dharitri Sarkar', '4'),
(2683, 75, 'Thursday', '8:45-9:45', 'IT Lab', 'MRS. MANJULA KALITA', '4'),
(2684, 75, 'Thursday', '9:45-10:45', 'IT Lab', 'MRS. MANJULA KALITA', '4'),
(2685, 75, 'Thursday', '10:45-11:45', 'COA', 'MS. RUBI KALITA', '4'),
(2686, 75, 'Thursday', '12:45-1:45', 'JAVA Programming', 'Prof. Minakshi Gogoi', '4'),
(2687, 75, 'Thursday', '1:45-2:45', 'Discrete Mathematics', 'MS. MRIDUSMITA BARUAH', '4'),
(2688, 75, 'Thursday', '2:45-3:45', 'OS', 'Dr. Subungshri Basumatary', '4'),
(2689, 75, 'Friday', '8:45-9:45', 'JAVA Programming', 'Prof. Minakshi Gogoi', '4'),
(2690, 75, 'Friday', '9:45-10:45', 'Graph Theory', 'Ms. Shrabani Medhi', '4'),
(2691, 75, 'Friday', '10:45-11:45', 'JAVA Programming', 'Prof. Minakshi Gogoi', '4'),
(2692, 75, 'Friday', '12:45-1:45', 'Discrete Mathematics', 'MS. MRIDUSMITA BARUAH', '4'),
(2693, 75, 'Friday', '1:45-2:45', 'OS', 'Dr. Subungshri Basumatary', '4'),
(2694, 75, 'Friday', '2:45-3:45', 'Graph Theory', 'Ms. Shrabani Medhi', '4'),
(2695, 75, 'Saturday', '8:45-9:45', 'Discrete Mathematics', 'MS. MRIDUSMITA BARUAH', '4'),
(2696, 75, 'Saturday', '9:45-10:45', 'Discrete Mathematics', 'MS. MRIDUSMITA BARUAH', '4'),
(2697, 75, 'Saturday', '10:45-11:45', 'OS', 'Dr. Subungshri Basumatary', '4'),
(2698, 75, 'Saturday', '12:45-1:45', 'Graph Theory', 'Ms. Shrabani Medhi', '4'),
(2699, 75, 'Saturday', '1:45-2:45', 'COA', 'MS. RUBI KALITA', '4'),
(2700, 75, 'Saturday', '2:45-3:45', 'Graph Theory', 'Ms. Shrabani Medhi', '4'),
(2701, 76, 'Monday', '8:45-9:45', 'Project-1', 'MS. RITUSHREE DUTTA', '7'),
(2702, 76, 'Monday', '9:45-10:45', 'Principle of Management', 'MRS. MANJULA KALITA', '7'),
(2703, 76, 'Monday', '10:45-11:45', 'Open Elective 2', 'Ms. Shrabani Medhi', '7'),
(2704, 76, 'Monday', '12:45-1:45', 'Open Elective 2', 'Ms. Shrabani Medhi', '7'),
(2705, 76, 'Monday', '1:45-2:45', 'Project-1', 'MS. RITUSHREE DUTTA', '7'),
(2706, 76, 'Monday', '2:45-3:45', 'Principle of Management', 'MRS. MANJULA KALITA', '7'),
(2707, 76, 'Tuesday', '8:45-9:45', 'Open Elective 2', 'Ms. Shrabani Medhi', '7'),
(2708, 76, 'Tuesday', '9:45-10:45', 'Project-1', 'MS. RITUSHREE DUTTA', '7'),
(2709, 76, 'Tuesday', '10:45-11:45', 'Program Elective 4', 'Prof. Minakshi Gogoi', '7'),
(2710, 76, 'Tuesday', '12:45-1:45', 'Open Elective 2', 'Ms. Shrabani Medhi', '7'),
(2711, 76, 'Tuesday', '1:45-2:45', 'Project -1', 'Ms. Dharitri Sarkar', '7'),
(2712, 76, 'Tuesday', '2:45-3:45', 'Principle of Management', 'MRS. MANJULA KALITA', '7'),
(2713, 76, 'Wednesday', '8:45-9:45', 'Program Elective 4', 'Prof. Minakshi Gogoi', '7'),
(2714, 76, 'Wednesday', '9:45-10:45', 'Open Elective 3', 'Dr. Subungshri Basumatary', '7'),
(2715, 76, 'Wednesday', '10:45-11:45', 'Principle of Management', 'MRS. MANJULA KALITA', '7'),
(2716, 76, 'Wednesday', '12:45-1:45', 'Project -1', 'Ms. Dharitri Sarkar', '7'),
(2717, 76, 'Wednesday', '1:45-2:45', 'Open Elective 2', 'Ms. Shrabani Medhi', '7'),
(2718, 76, 'Wednesday', '2:45-3:45', 'Project -1', 'Ms. Dharitri Sarkar', '7'),
(2719, 76, 'Thursday', '8:45-9:45', 'Project -1', 'Ms. Dharitri Sarkar', '7'),
(2720, 76, 'Thursday', '9:45-10:45', 'Program Elective 4', 'Prof. Minakshi Gogoi', '7'),
(2721, 76, 'Thursday', '10:45-11:45', 'Open Elective 3', 'Dr. Subungshri Basumatary', '7'),
(2722, 76, 'Thursday', '12:45-1:45', 'Principle of Management', 'MRS. MANJULA KALITA', '7'),
(2723, 76, 'Thursday', '1:45-2:45', 'Open Elective 3', 'Dr. Subungshri Basumatary', '7'),
(2724, 76, 'Thursday', '2:45-3:45', 'Project-1', 'MS. RITUSHREE DUTTA', '7'),
(2725, 76, 'Friday', '8:45-9:45', 'Program Elective 4', 'Prof. Minakshi Gogoi', '7'),
(2726, 76, 'Friday', '9:45-10:45', 'Open Elective 2', 'Ms. Shrabani Medhi', '7'),
(2727, 76, 'Friday', '10:45-11:45', 'Project -1', 'Ms. Dharitri Sarkar', '7'),
(2728, 76, 'Friday', '12:45-1:45', 'Program Elective 4', 'Prof. Minakshi Gogoi', '7'),
(2729, 76, 'Friday', '1:45-2:45', 'Principle of Management', 'MRS. MANJULA KALITA', '7'),
(2730, 76, 'Friday', '2:45-3:45', 'Open Elective 3', 'Dr. Subungshri Basumatary', '7'),
(2731, 76, 'Saturday', '8:45-9:45', 'Open Elective 3', 'Dr. Subungshri Basumatary', '7'),
(2732, 76, 'Saturday', '9:45-10:45', 'Program Elective 4', 'Prof. Minakshi Gogoi', '7'),
(2733, 76, 'Saturday', '10:45-11:45', 'Project-1', 'MS. RITUSHREE DUTTA', '7'),
(2734, 76, 'Saturday', '12:45-1:45', 'Project-1', 'MS. RITUSHREE DUTTA', '7'),
(2735, 76, 'Saturday', '1:45-2:45', 'Project -1', 'Ms. Dharitri Sarkar', '7'),
(2736, 76, 'Saturday', '2:45-3:45', 'Open Elective 2', 'Ms. Shrabani Medhi', '7'),
(2737, 77, 'Monday', '8:45-9:45', 'Project-2', 'Ms. Shrabani Medhi', '8'),
(2738, 77, 'Monday', '9:45-10:45', 'Project -2', 'Dr. Subungshri Basumatary', '8'),
(2739, 77, 'Monday', '10:45-11:45', 'Program Elective-6', 'Ms. Mala Ahmed', '8'),
(2740, 77, 'Monday', '12:45-1:45', 'Program Elective-5', 'Ms. Dharitri Sarkar', '8'),
(2741, 77, 'Monday', '1:45-2:45', 'Open Elective-4', 'MS. MRIDUSMITA BARUAH', '8'),
(2742, 77, 'Monday', '2:45-3:45', 'Open Elective-5', 'Mr. Dipjyoti Deka', '8'),
(2743, 77, 'Tuesday', '8:45-9:45', 'Program Elective-5', 'Ms. Dharitri Sarkar', '8'),
(2744, 77, 'Tuesday', '9:45-10:45', 'Open Elective-4', 'MS. MRIDUSMITA BARUAH', '8'),
(2745, 77, 'Tuesday', '10:45-11:45', 'Program Elective-6', 'Ms. Mala Ahmed', '8'),
(2746, 77, 'Tuesday', '12:45-1:45', 'Project-2', 'Ms. Shrabani Medhi', '8'),
(2747, 77, 'Tuesday', '1:45-2:45', 'Program Elective-6', 'Ms. Mala Ahmed', '8'),
(2748, 77, 'Tuesday', '2:45-3:45', 'Open Elective-4', 'MS. MRIDUSMITA BARUAH', '8'),
(2749, 77, 'Wednesday', '8:45-9:45', 'Project -2', 'Dr. Subungshri Basumatary', '8'),
(2750, 77, 'Wednesday', '9:45-10:45', 'Project-2', 'Ms. Shrabani Medhi', '8'),
(2751, 77, 'Wednesday', '10:45-11:45', 'Program Elective-5', 'Ms. Dharitri Sarkar', '8'),
(2752, 77, 'Wednesday', '12:45-1:45', 'Project -2', 'Dr. Subungshri Basumatary', '8'),
(2753, 77, 'Wednesday', '1:45-2:45', 'Project -2', 'Dr. Subungshri Basumatary', '8'),
(2754, 77, 'Wednesday', '2:45-3:45', 'Open Elective-5', 'Mr. Dipjyoti Deka', '8'),
(2755, 77, 'Thursday', '8:45-9:45', 'Project-2', 'Ms. Shrabani Medhi', '8'),
(2756, 77, 'Thursday', '9:45-10:45', 'Open Elective-4', 'MS. MRIDUSMITA BARUAH', '8'),
(2757, 77, 'Thursday', '10:45-11:45', 'Program Elective-6', 'Ms. Mala Ahmed', '8'),
(2758, 77, 'Thursday', '12:45-1:45', 'Program Elective-6', 'Ms. Mala Ahmed', '8'),
(2759, 77, 'Thursday', '1:45-2:45', 'Open Elective-5', 'Mr. Dipjyoti Deka', '8'),
(2760, 77, 'Thursday', '2:45-3:45', 'Open Elective-4', 'MS. MRIDUSMITA BARUAH', '8'),
(2761, 77, 'Friday', '8:45-9:45', 'Project -2', 'Dr. Subungshri Basumatary', '8'),
(2762, 77, 'Friday', '9:45-10:45', 'Open Elective-5', 'Mr. Dipjyoti Deka', '8'),
(2763, 77, 'Friday', '10:45-11:45', 'Open Elective-4', 'MS. MRIDUSMITA BARUAH', '8'),
(2764, 77, 'Friday', '12:45-1:45', 'Program Elective-5', 'Ms. Dharitri Sarkar', '8'),
(2765, 77, 'Friday', '1:45-2:45', 'Project-2', 'Ms. Shrabani Medhi', '8'),
(2766, 77, 'Friday', '2:45-3:45', 'Project -2', 'Dr. Subungshri Basumatary', '8'),
(2767, 77, 'Saturday', '8:45-9:45', 'Project-2', 'Ms. Shrabani Medhi', '8'),
(2768, 77, 'Saturday', '9:45-10:45', 'Open Elective-5', 'Mr. Dipjyoti Deka', '8'),
(2769, 77, 'Saturday', '10:45-11:45', 'Program Elective-5', 'Ms. Dharitri Sarkar', '8'),
(2770, 77, 'Saturday', '12:45-1:45', 'Open Elective-5', 'Mr. Dipjyoti Deka', '8'),
(2771, 77, 'Saturday', '1:45-2:45', 'Open Elective-4', 'MS. MRIDUSMITA BARUAH', '8'),
(2772, 77, 'Saturday', '2:45-3:45', 'Program Elective-5', 'Ms. Dharitri Sarkar', '8'),
(2773, 78, 'Monday', '8:45-9:45', 'Sociology', 'MS. RUBI KALITA', '1'),
(2774, 78, 'Monday', '9:45-10:45', 'Engineering Graphics and Design', 'Dr.Th. Shanta Kumar', '1'),
(2775, 78, 'Monday', '10:45-11:45', 'Engineering Graphics and Design', 'Dr.Th. Shanta Kumar', '1'),
(2776, 78, 'Monday', '12:45-1:45', 'Mathematics', 'MS. MRIDUSMITA BARUAH', '1'),
(2777, 78, 'Monday', '1:45-2:45', 'Engineering Mechanics', 'Ms. Mala Ahmed', '1'),
(2778, 78, 'Monday', '2:45-3:45', 'Engineering Mechanics', 'Ms. Mala Ahmed', '1'),
(2779, 78, 'Tuesday', '8:45-9:45', 'Mathematics', 'MS. MRIDUSMITA BARUAH', '1'),
(2780, 78, 'Tuesday', '9:45-10:45', 'Mathematics', 'MS. MRIDUSMITA BARUAH', '1'),
(2781, 78, 'Tuesday', '10:45-11:45', 'Engineering Mechanics', 'Ms. Mala Ahmed', '1'),
(2782, 78, 'Tuesday', '12:45-1:45', 'Sociology', 'MS. RUBI KALITA', '1'),
(2783, 78, 'Tuesday', '1:45-2:45', 'Mathematics', 'MS. MRIDUSMITA BARUAH', '1'),
(2784, 78, 'Tuesday', '2:45-3:45', 'Engineering Graphics and Design', 'Dr.Th. Shanta Kumar', '1'),
(2785, 78, 'Wednesday', '8:45-9:45', 'Engineering Graphics and Design', 'Dr.Th. Shanta Kumar', '1'),
(2786, 78, 'Wednesday', '9:45-10:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2787, 78, 'Wednesday', '10:45-11:45', 'Engineering Graphics and Design', 'Dr.Th. Shanta Kumar', '1'),
(2788, 78, 'Wednesday', '12:45-1:45', 'Engineering Mechanics', 'Ms. Mala Ahmed', '1'),
(2789, 78, 'Wednesday', '1:45-2:45', 'Engineering Graphics and Design', 'Dr.Th. Shanta Kumar', '1'),
(2790, 78, 'Wednesday', '2:45-3:45', 'Engineering Mechanics', 'Ms. Mala Ahmed', '1'),
(2791, 78, 'Thursday', '8:45-9:45', 'Engineering Mechanics', 'Ms. Mala Ahmed', '1'),
(2792, 78, 'Thursday', '9:45-10:45', 'Engineering Mechanics', 'Ms. Mala Ahmed', '1'),
(2793, 78, 'Thursday', '10:45-11:45', 'Engineering Mechanics', 'Ms. Mala Ahmed', '1'),
(2794, 78, 'Thursday', '12:45-1:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2795, 78, 'Thursday', '1:45-2:45', 'Sociology', 'MS. RUBI KALITA', '1'),
(2796, 78, 'Thursday', '2:45-3:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2797, 78, 'Friday', '8:45-9:45', 'Sociology', 'MS. RUBI KALITA', '1'),
(2798, 78, 'Friday', '9:45-10:45', 'Sociology', 'MS. RUBI KALITA', '1'),
(2799, 78, 'Friday', '10:45-11:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2800, 78, 'Friday', '12:45-1:45', 'Mathematics', 'MS. MRIDUSMITA BARUAH', '1'),
(2801, 78, 'Friday', '1:45-2:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2802, 78, 'Friday', '2:45-3:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2803, 78, 'Saturday', '8:45-9:45', 'Physics-101', 'Prof. Minakshi Gogoi', '1'),
(2804, 78, 'Saturday', '9:45-10:45', 'Mathematics', 'MS. MRIDUSMITA BARUAH', '1'),
(2805, 78, 'Saturday', '10:45-11:45', 'Sociology', 'MS. RUBI KALITA', '1'),
(2806, 78, 'Saturday', '12:45-1:45', 'Engineering Graphics and Design', 'Dr.Th. Shanta Kumar', '1'),
(2807, 78, 'Saturday', '1:45-2:45', 'Mathematics', 'MS. MRIDUSMITA BARUAH', '1'),
(2808, 78, 'Saturday', '2:45-3:45', 'Mathematics', 'MS. MRIDUSMITA BARUAH', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `attendance_records`
--
ALTER TABLE `attendance_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `library_books`
--
ALTER TABLE `library_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `saved_timetables`
--
ALTER TABLE `saved_timetables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_number` (`registration_number`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `timetable_entries`
--
ALTER TABLE `timetable_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timetable_id` (`timetable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `attendance_records`
--
ALTER TABLE `attendance_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `library_books`
--
ALTER TABLE `library_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `saved_timetables`
--
ALTER TABLE `saved_timetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `student_assignments`
--
ALTER TABLE `student_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10012;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetable_entries`
--
ALTER TABLE `timetable_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2809;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `attendance_records`
--
ALTER TABLE `attendance_records`
  ADD CONSTRAINT `attendance_records_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `attendance_records_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `saved_timetables`
--
ALTER TABLE `saved_timetables`
  ADD CONSTRAINT `saved_timetables_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `saved_timetables_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `saved_timetables_ibfk_3` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `saved_timetables_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD CONSTRAINT `fk_assignment` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`),
  ADD CONSTRAINT `fk_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_assignments_ibfk_1` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`),
  ADD CONSTRAINT `student_assignments_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD CONSTRAINT `syllabus_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `syllabus_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `syllabus_ibfk_3` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `syllabus_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `timetables`
--
ALTER TABLE `timetables`
  ADD CONSTRAINT `timetables_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `timetables_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `timetables_ibfk_3` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`),
  ADD CONSTRAINT `timetables_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`);

--
-- Constraints for table `timetable_entries`
--
ALTER TABLE `timetable_entries`
  ADD CONSTRAINT `timetable_entries_ibfk_1` FOREIGN KEY (`timetable_id`) REFERENCES `saved_timetables` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
