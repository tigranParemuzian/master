-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 31 2015 г., 01:17
-- Версия сервера: 5.5.41-cll-lve
-- Версия PHP: 5.4.36

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `tigo_bank`
--

-- --------------------------------------------------------

--
-- Структура таблицы `acl_classes`
--

CREATE TABLE IF NOT EXISTS `acl_classes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `acl_classes`
--

INSERT INTO `acl_classes` (`id`, `class_type`) VALUES
(4, 'Bank\\MainBundle\\Admin\\BranchAdmin'),
(5, 'Bank\\MainBundle\\Admin\\CurrencyAdmin'),
(6, 'Bank\\MainBundle\\Admin\\PriceAdmin'),
(10, 'Bank\\MainBundle\\Entity\\Branch'),
(11, 'Bank\\MainBundle\\Entity\\Currency'),
(12, 'Bank\\MainBundle\\Entity\\Price'),
(15, 'Bank\\MediaBundle\\Entity\\Gallery'),
(9, 'Bank\\MediaBundle\\Entity\\Media'),
(7, 'Bank\\UserBundle\\Admin\\Model\\UserAdmin'),
(14, 'Bank\\UserBundle\\Entity\\Group'),
(13, 'Bank\\UserBundle\\Entity\\User'),
(2, 'Sonata\\MediaBundle\\Admin\\GalleryAdmin'),
(3, 'Sonata\\MediaBundle\\Admin\\GalleryHasMediaAdmin'),
(1, 'Sonata\\MediaBundle\\Admin\\ORM\\MediaAdmin'),
(8, 'Sonata\\UserBundle\\Admin\\Entity\\GroupAdmin');

-- --------------------------------------------------------

--
-- Структура таблицы `acl_entries`
--

CREATE TABLE IF NOT EXISTS `acl_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int(10) unsigned NOT NULL,
  `object_identity_id` int(10) unsigned DEFAULT NULL,
  `security_identity_id` int(10) unsigned NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) unsigned NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  KEY `IDX_46C8B806EA000B10` (`class_id`),
  KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  KEY `IDX_46C8B806DF9183C9` (`security_identity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=321 ;

--
-- Дамп данных таблицы `acl_entries`
--

INSERT INTO `acl_entries` (`id`, `class_id`, `object_identity_id`, `security_identity_id`, `field_name`, `ace_order`, `mask`, `granting`, `granting_strategy`, `audit_success`, `audit_failure`) VALUES
(1, 1, NULL, 1, NULL, 5, 64, 1, 'all', 0, 0),
(2, 1, NULL, 2, NULL, 6, 8224, 1, 'all', 0, 0),
(3, 1, NULL, 3, NULL, 7, 4098, 1, 'all', 0, 0),
(4, 1, NULL, 4, NULL, 8, 4096, 1, 'all', 0, 0),
(5, 2, NULL, 5, NULL, 5, 64, 1, 'all', 0, 0),
(6, 2, NULL, 6, NULL, 6, 8224, 1, 'all', 0, 0),
(7, 2, NULL, 7, NULL, 7, 4098, 1, 'all', 0, 0),
(8, 2, NULL, 8, NULL, 8, 4096, 1, 'all', 0, 0),
(9, 3, NULL, 9, NULL, 5, 64, 1, 'all', 0, 0),
(10, 3, NULL, 10, NULL, 6, 8224, 1, 'all', 0, 0),
(11, 3, NULL, 11, NULL, 7, 4098, 1, 'all', 0, 0),
(12, 3, NULL, 12, NULL, 8, 4096, 1, 'all', 0, 0),
(13, 4, NULL, 13, NULL, 5, 64, 1, 'all', 0, 0),
(14, 4, NULL, 14, NULL, 6, 8224, 1, 'all', 0, 0),
(15, 4, NULL, 15, NULL, 7, 4098, 1, 'all', 0, 0),
(16, 4, NULL, 16, NULL, 8, 4096, 1, 'all', 0, 0),
(17, 5, NULL, 17, NULL, 5, 64, 1, 'all', 0, 0),
(18, 5, NULL, 18, NULL, 6, 8224, 1, 'all', 0, 0),
(19, 5, NULL, 19, NULL, 7, 4098, 1, 'all', 0, 0),
(20, 5, NULL, 20, NULL, 8, 4096, 1, 'all', 0, 0),
(21, 6, NULL, 21, NULL, 5, 64, 1, 'all', 0, 0),
(22, 6, NULL, 22, NULL, 6, 8224, 1, 'all', 0, 0),
(23, 6, NULL, 23, NULL, 7, 4098, 1, 'all', 0, 0),
(24, 6, NULL, 24, NULL, 8, 4096, 1, 'all', 0, 0),
(25, 7, NULL, 25, NULL, 5, 64, 1, 'all', 0, 0),
(26, 7, NULL, 26, NULL, 6, 8224, 1, 'all', 0, 0),
(27, 7, NULL, 27, NULL, 7, 4098, 1, 'all', 0, 0),
(28, 7, NULL, 28, NULL, 8, 4096, 1, 'all', 0, 0),
(29, 8, NULL, 29, NULL, 5, 64, 1, 'all', 0, 0),
(30, 8, NULL, 30, NULL, 6, 8224, 1, 'all', 0, 0),
(31, 8, NULL, 31, NULL, 7, 4098, 1, 'all', 0, 0),
(32, 8, NULL, 32, NULL, 8, 4096, 1, 'all', 0, 0),
(33, 9, NULL, 1, NULL, 6, 64, 1, 'all', 0, 0),
(34, 9, NULL, 2, NULL, 7, 32, 1, 'all', 0, 0),
(35, 9, NULL, 3, NULL, 8, 4, 1, 'all', 0, 0),
(36, 9, NULL, 4, NULL, 9, 1, 1, 'all', 0, 0),
(37, 10, NULL, 13, NULL, 6, 64, 1, 'all', 0, 0),
(38, 10, NULL, 14, NULL, 7, 32, 1, 'all', 0, 0),
(39, 10, NULL, 15, NULL, 8, 4, 1, 'all', 0, 0),
(40, 10, NULL, 16, NULL, 9, 1, 1, 'all', 0, 0),
(41, 11, NULL, 17, NULL, 6, 64, 1, 'all', 0, 0),
(42, 11, NULL, 18, NULL, 7, 32, 1, 'all', 0, 0),
(43, 11, NULL, 19, NULL, 8, 4, 1, 'all', 0, 0),
(44, 11, NULL, 20, NULL, 9, 1, 1, 'all', 0, 0),
(45, 12, NULL, 21, NULL, 6, 64, 1, 'all', 0, 0),
(46, 12, NULL, 22, NULL, 7, 32, 1, 'all', 0, 0),
(47, 12, NULL, 23, NULL, 8, 4, 1, 'all', 0, 0),
(48, 12, NULL, 24, NULL, 9, 1, 1, 'all', 0, 0),
(49, 13, NULL, 25, NULL, 6, 64, 1, 'all', 0, 0),
(50, 13, NULL, 26, NULL, 7, 32, 1, 'all', 0, 0),
(51, 13, NULL, 27, NULL, 8, 4, 1, 'all', 0, 0),
(52, 13, NULL, 28, NULL, 9, 1, 1, 'all', 0, 0),
(53, 10, 11, 33, NULL, 3, 5, 1, 'all', 0, 0),
(54, 10, 11, 34, NULL, 4, 0, 1, 'all', 0, 0),
(55, 1, NULL, 35, NULL, 0, 64, 1, 'all', 0, 0),
(56, 1, NULL, 36, NULL, 1, 32, 1, 'all', 0, 0),
(57, 1, NULL, 37, NULL, 2, 8, 1, 'all', 0, 0),
(58, 1, NULL, 38, NULL, 3, 2, 1, 'all', 0, 0),
(59, 1, NULL, 39, NULL, 4, 4096, 1, 'all', 0, 0),
(60, 2, NULL, 40, NULL, 0, 64, 1, 'all', 0, 0),
(61, 2, NULL, 41, NULL, 1, 32, 1, 'all', 0, 0),
(62, 2, NULL, 42, NULL, 2, 8, 1, 'all', 0, 0),
(63, 2, NULL, 43, NULL, 3, 2, 1, 'all', 0, 0),
(64, 2, NULL, 44, NULL, 4, 4096, 1, 'all', 0, 0),
(65, 3, NULL, 45, NULL, 0, 64, 1, 'all', 0, 0),
(66, 3, NULL, 46, NULL, 1, 32, 1, 'all', 0, 0),
(67, 3, NULL, 47, NULL, 2, 8, 1, 'all', 0, 0),
(68, 3, NULL, 48, NULL, 3, 2, 1, 'all', 0, 0),
(69, 3, NULL, 49, NULL, 4, 4096, 1, 'all', 0, 0),
(70, 4, NULL, 50, NULL, 0, 64, 1, 'all', 0, 0),
(71, 4, NULL, 51, NULL, 1, 32, 1, 'all', 0, 0),
(72, 4, NULL, 52, NULL, 2, 8, 1, 'all', 0, 0),
(73, 4, NULL, 53, NULL, 3, 2, 1, 'all', 0, 0),
(74, 4, NULL, 54, NULL, 4, 4096, 1, 'all', 0, 0),
(75, 5, NULL, 55, NULL, 0, 64, 1, 'all', 0, 0),
(76, 5, NULL, 56, NULL, 1, 32, 1, 'all', 0, 0),
(77, 5, NULL, 57, NULL, 2, 8, 1, 'all', 0, 0),
(78, 5, NULL, 58, NULL, 3, 2, 1, 'all', 0, 0),
(79, 5, NULL, 59, NULL, 4, 4096, 1, 'all', 0, 0),
(80, 6, NULL, 60, NULL, 0, 64, 1, 'all', 0, 0),
(81, 6, NULL, 61, NULL, 1, 32, 1, 'all', 0, 0),
(82, 6, NULL, 62, NULL, 2, 8, 1, 'all', 0, 0),
(83, 6, NULL, 63, NULL, 3, 2, 1, 'all', 0, 0),
(84, 6, NULL, 64, NULL, 4, 4096, 1, 'all', 0, 0),
(85, 7, NULL, 65, NULL, 0, 64, 1, 'all', 0, 0),
(86, 7, NULL, 66, NULL, 1, 32, 1, 'all', 0, 0),
(87, 7, NULL, 67, NULL, 2, 8, 1, 'all', 0, 0),
(88, 7, NULL, 68, NULL, 3, 2, 1, 'all', 0, 0),
(89, 7, NULL, 69, NULL, 4, 4096, 1, 'all', 0, 0),
(90, 8, NULL, 70, NULL, 0, 64, 1, 'all', 0, 0),
(91, 8, NULL, 71, NULL, 1, 32, 1, 'all', 0, 0),
(92, 8, NULL, 72, NULL, 2, 8, 1, 'all', 0, 0),
(93, 8, NULL, 73, NULL, 3, 2, 1, 'all', 0, 0),
(94, 8, NULL, 74, NULL, 4, 4096, 1, 'all', 0, 0),
(95, 14, NULL, 70, NULL, 1, 64, 1, 'all', 0, 0),
(96, 14, NULL, 71, NULL, 2, 32, 1, 'all', 0, 0),
(97, 14, NULL, 72, NULL, 3, 8, 1, 'all', 0, 0),
(98, 14, NULL, 75, NULL, 4, 1, 1, 'all', 0, 0),
(99, 14, NULL, 76, NULL, 5, 4, 1, 'all', 0, 0),
(100, 14, 26, 34, NULL, 0, 128, 1, 'all', 0, 0),
(103, 10, 12, 33, NULL, 3, 5, 1, 'all', 0, 0),
(104, 10, 12, 34, NULL, 4, 0, 1, 'all', 0, 0),
(111, 9, 9, 33, NULL, 2, 32, 1, 'all', 0, 0),
(112, 9, 9, 34, NULL, 3, 0, 1, 'all', 0, 0),
(113, 14, NULL, 73, NULL, 0, 2, 1, 'all', 0, 0),
(114, 14, 27, 34, NULL, 0, 128, 1, 'all', 0, 0),
(115, 13, NULL, 65, NULL, 0, 64, 1, 'all', 0, 0),
(116, 13, NULL, 66, NULL, 1, 32, 1, 'all', 0, 0),
(117, 13, NULL, 67, NULL, 2, 8, 1, 'all', 0, 0),
(118, 13, NULL, 77, NULL, 3, 1, 1, 'all', 0, 0),
(119, 13, NULL, 68, NULL, 4, 2, 1, 'all', 0, 0),
(120, 13, NULL, 78, NULL, 5, 4, 1, 'all', 0, 0),
(121, 13, 28, 34, NULL, 3, 128, 1, 'all', 0, 0),
(122, 10, 11, 79, NULL, 2, 4096, 1, 'all', 0, 0),
(123, 10, 12, 79, NULL, 2, 32, 1, 'all', 0, 0),
(125, 9, 10, 79, NULL, 1, 32, 1, 'all', 0, 0),
(126, 9, 10, 33, NULL, 2, 0, 1, 'all', 0, 0),
(127, 9, 10, 34, NULL, 3, 0, 1, 'all', 0, 0),
(128, 9, NULL, 35, NULL, 1, 64, 1, 'all', 0, 0),
(129, 9, NULL, 36, NULL, 2, 32, 1, 'all', 0, 0),
(130, 9, NULL, 37, NULL, 3, 8, 1, 'all', 0, 0),
(132, 9, NULL, 38, NULL, 4, 2, 1, 'all', 0, 0),
(133, 9, NULL, 81, NULL, 5, 4, 1, 'all', 0, 0),
(134, 9, 29, 34, NULL, 3, 128, 1, 'all', 0, 0),
(135, 9, 30, 34, NULL, 3, 128, 1, 'all', 0, 0),
(136, 9, 31, 34, NULL, 3, 128, 1, 'all', 0, 0),
(137, 9, 32, 34, NULL, 3, 128, 1, 'all', 0, 0),
(146, 11, 35, 79, NULL, 2, 0, 1, 'all', 0, 0),
(147, 11, 35, 33, NULL, 3, 32, 1, 'all', 0, 0),
(148, 11, 35, 34, NULL, 4, 0, 1, 'all', 0, 0),
(149, 14, 36, 34, NULL, 0, 128, 1, 'all', 0, 0),
(150, 13, 37, 34, NULL, 3, 128, 1, 'all', 0, 0),
(151, 14, 38, 34, NULL, 0, 128, 1, 'all', 0, 0),
(152, 9, 9, 82, NULL, 0, 32, 1, 'all', 0, 0),
(153, 9, 9, 79, NULL, 1, 0, 1, 'all', 0, 0),
(154, 9, 10, 82, NULL, 0, 32, 1, 'all', 0, 0),
(155, 9, 29, 82, NULL, 0, 32, 1, 'all', 0, 0),
(156, 9, 29, 79, NULL, 1, 0, 1, 'all', 0, 0),
(157, 9, 29, 33, NULL, 2, 0, 1, 'all', 0, 0),
(158, 9, 30, 82, NULL, 0, 32, 1, 'all', 0, 0),
(159, 9, 30, 79, NULL, 1, 0, 1, 'all', 0, 0),
(160, 9, 30, 33, NULL, 2, 32, 1, 'all', 0, 0),
(161, 9, 31, 82, NULL, 0, 32, 1, 'all', 0, 0),
(162, 9, 31, 79, NULL, 1, 0, 1, 'all', 0, 0),
(163, 9, 31, 33, NULL, 2, 32, 1, 'all', 0, 0),
(164, 9, 32, 82, NULL, 0, 32, 1, 'all', 0, 0),
(165, 9, 32, 79, NULL, 1, 0, 1, 'all', 0, 0),
(166, 9, 32, 33, NULL, 2, 32, 1, 'all', 0, 0),
(167, 10, 11, 82, NULL, 1, 32, 1, 'all', 0, 0),
(168, 10, 12, 82, NULL, 1, 4096, 1, 'all', 0, 0),
(170, 13, 25, 82, NULL, 0, 32, 1, 'all', 0, 0),
(171, 13, 25, 79, NULL, 1, 0, 1, 'all', 0, 0),
(172, 13, 25, 33, NULL, 2, 0, 1, 'all', 0, 0),
(173, 13, 25, 34, NULL, 3, 0, 1, 'all', 0, 0),
(174, 13, 28, 82, NULL, 0, 32, 1, 'all', 0, 0),
(175, 13, 28, 79, NULL, 1, 0, 1, 'all', 0, 0),
(176, 13, 28, 33, NULL, 2, 0, 1, 'all', 0, 0),
(177, 13, 37, 82, NULL, 0, 32, 1, 'all', 0, 0),
(178, 13, 37, 79, NULL, 1, 0, 1, 'all', 0, 0),
(179, 13, 37, 33, NULL, 2, 0, 1, 'all', 0, 0),
(180, 11, 35, 82, NULL, 0, 4096, 1, 'all', 0, 0),
(181, 11, 35, 83, NULL, 1, 32, 1, 'all', 0, 0),
(186, 15, NULL, 40, NULL, 0, 64, 1, 'all', 0, 0),
(187, 15, NULL, 41, NULL, 1, 32, 1, 'all', 0, 0),
(188, 15, NULL, 42, NULL, 2, 8, 1, 'all', 0, 0),
(189, 15, NULL, 84, NULL, 3, 1, 1, 'all', 0, 0),
(190, 15, NULL, 43, NULL, 4, 2, 1, 'all', 0, 0),
(191, 15, NULL, 85, NULL, 5, 4, 1, 'all', 0, 0),
(192, 15, 39, 79, NULL, 0, 128, 1, 'all', 0, 0),
(193, 11, NULL, 55, NULL, 1, 64, 1, 'all', 0, 0),
(194, 11, NULL, 56, NULL, 2, 32, 1, 'all', 0, 0),
(195, 11, NULL, 57, NULL, 3, 8, 1, 'all', 0, 0),
(197, 11, NULL, 58, NULL, 4, 2, 1, 'all', 0, 0),
(198, 11, NULL, 87, NULL, 5, 4, 1, 'all', 0, 0),
(200, 9, 41, 34, NULL, 0, 128, 1, 'all', 0, 0),
(205, 9, 43, 34, NULL, 0, 128, 1, 'all', 0, 0),
(207, 9, 45, 34, NULL, 0, 128, 1, 'all', 0, 0),
(209, 9, 47, 34, NULL, 0, 128, 1, 'all', 0, 0),
(211, 9, 49, 34, NULL, 0, 128, 1, 'all', 0, 0),
(225, 10, 11, 83, NULL, 0, 4, 1, 'all', 0, 0),
(226, 12, 17, 82, NULL, 0, 128, 1, 'all', 0, 0),
(227, 12, 17, 79, NULL, 1, 0, 1, 'all', 0, 0),
(228, 12, 17, 83, NULL, 2, 128, 1, 'all', 0, 0),
(229, 12, 17, 34, NULL, 3, 0, 1, 'all', 0, 0),
(230, 12, 18, 82, NULL, 0, 32, 1, 'all', 0, 0),
(231, 12, 18, 79, NULL, 1, 0, 1, 'all', 0, 0),
(232, 12, 18, 83, NULL, 2, 32, 1, 'all', 0, 0),
(233, 12, 18, 34, NULL, 3, 0, 1, 'all', 0, 0),
(234, 12, 20, 82, NULL, 0, 32, 1, 'all', 0, 0),
(235, 12, 20, 79, NULL, 1, 0, 1, 'all', 0, 0),
(236, 12, 20, 83, NULL, 2, 32, 1, 'all', 0, 0),
(237, 12, 20, 34, NULL, 3, 0, 1, 'all', 0, 0),
(238, 12, 21, 82, NULL, 0, 32, 1, 'all', 0, 0),
(239, 12, 21, 79, NULL, 1, 0, 1, 'all', 0, 0),
(240, 12, 21, 83, NULL, 2, 32, 1, 'all', 0, 0),
(241, 12, 21, 34, NULL, 3, 0, 1, 'all', 0, 0),
(242, 12, 22, 82, NULL, 0, 32, 1, 'all', 0, 0),
(243, 12, 22, 79, NULL, 1, 0, 1, 'all', 0, 0),
(244, 12, 22, 83, NULL, 2, 32, 1, 'all', 0, 0),
(245, 12, 22, 34, NULL, 3, 0, 1, 'all', 0, 0),
(246, 12, 23, 82, NULL, 0, 128, 1, 'all', 0, 0),
(247, 12, 23, 79, NULL, 1, 0, 1, 'all', 0, 0),
(248, 12, 23, 83, NULL, 2, 128, 1, 'all', 0, 0),
(249, 12, 23, 34, NULL, 3, 0, 1, 'all', 0, 0),
(250, 12, 51, 82, NULL, 0, 32, 1, 'all', 0, 0),
(251, 12, 51, 79, NULL, 1, 0, 1, 'all', 0, 0),
(252, 12, 51, 83, NULL, 2, 32, 1, 'all', 0, 0),
(253, 12, 51, 34, NULL, 3, 0, 1, 'all', 0, 0),
(254, 12, 52, 82, NULL, 0, 32, 1, 'all', 0, 0),
(255, 12, 52, 79, NULL, 1, 0, 1, 'all', 0, 0),
(256, 12, 52, 83, NULL, 2, 32, 1, 'all', 0, 0),
(257, 12, 52, 34, NULL, 3, 0, 1, 'all', 0, 0),
(258, 12, 53, 82, NULL, 0, 32, 1, 'all', 0, 0),
(259, 12, 53, 79, NULL, 1, 0, 1, 'all', 0, 0),
(260, 12, 53, 83, NULL, 2, 32, 1, 'all', 0, 0),
(261, 12, 53, 34, NULL, 3, 0, 1, 'all', 0, 0),
(262, 12, 54, 82, NULL, 0, 32, 1, 'all', 0, 0),
(263, 12, 54, 79, NULL, 1, 0, 1, 'all', 0, 0),
(264, 12, 54, 83, NULL, 2, 32, 1, 'all', 0, 0),
(265, 12, 54, 34, NULL, 3, 0, 1, 'all', 0, 0),
(266, 12, 55, 82, NULL, 0, 32, 1, 'all', 0, 0),
(267, 12, 55, 79, NULL, 1, 0, 1, 'all', 0, 0),
(268, 12, 55, 83, NULL, 2, 32, 1, 'all', 0, 0),
(269, 12, 55, 34, NULL, 3, 0, 1, 'all', 0, 0),
(270, 12, 56, 82, NULL, 0, 128, 1, 'all', 0, 0),
(271, 12, 56, 79, NULL, 1, 0, 1, 'all', 0, 0),
(272, 12, 56, 83, NULL, 2, 128, 1, 'all', 0, 0),
(273, 12, 56, 34, NULL, 3, 0, 1, 'all', 0, 0),
(274, 10, 12, 83, NULL, 0, 4, 1, 'all', 0, 0),
(276, 9, 57, 34, NULL, 0, 128, 1, 'all', 0, 0),
(277, 9, 58, 82, NULL, 0, 128, 1, 'all', 0, 0),
(278, 10, NULL, 50, NULL, 1, 64, 1, 'all', 0, 0),
(279, 10, NULL, 51, NULL, 2, 32, 1, 'all', 0, 0),
(280, 10, NULL, 52, NULL, 3, 8, 1, 'all', 0, 0),
(282, 10, NULL, 53, NULL, 4, 2, 1, 'all', 0, 0),
(283, 10, NULL, 89, NULL, 5, 4, 1, 'all', 0, 0),
(285, 12, NULL, 90, NULL, 0, 64, 1, 'all', 0, 0),
(286, 12, NULL, 91, NULL, 1, 32, 1, 'all', 0, 0),
(287, 12, NULL, 92, NULL, 2, 8, 1, 'all', 0, 0),
(288, 12, NULL, 93, NULL, 3, 1, 1, 'all', 0, 0),
(289, 12, NULL, 94, NULL, 4, 2, 1, 'all', 0, 0),
(290, 12, NULL, 95, NULL, 5, 4, 1, 'all', 0, 0),
(294, 11, NULL, 59, NULL, 0, 4096, 1, 'all', 0, 0),
(296, 10, NULL, 54, NULL, 0, 4096, 1, 'all', 0, 0),
(299, 9, NULL, 39, NULL, 0, 4096, 1, 'all', 0, 0),
(300, 9, 66, 34, NULL, 0, 128, 1, 'all', 0, 0),
(301, 10, 67, 82, NULL, 0, 4096, 1, 'all', 0, 0),
(302, 10, 67, 79, NULL, 1, 32, 1, 'all', 0, 0),
(303, 10, 67, 83, NULL, 2, 0, 1, 'all', 0, 0),
(304, 10, 67, 34, NULL, 3, 0, 1, 'all', 0, 0),
(305, 11, 68, 82, NULL, 0, 4096, 1, 'all', 0, 0),
(306, 11, 68, 79, NULL, 1, 0, 1, 'all', 0, 0),
(307, 11, 68, 83, NULL, 2, 32, 1, 'all', 0, 0),
(308, 11, 68, 34, NULL, 3, 0, 1, 'all', 0, 0),
(309, 11, 69, 82, NULL, 0, 4096, 1, 'all', 0, 0),
(310, 11, 69, 79, NULL, 1, 0, 1, 'all', 0, 0),
(311, 11, 69, 83, NULL, 2, 32, 1, 'all', 0, 0),
(312, 11, 69, 34, NULL, 3, 0, 1, 'all', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_object_identities`
--

CREATE TABLE IF NOT EXISTS `acl_object_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_object_identity_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=78 ;

--
-- Дамп данных таблицы `acl_object_identities`
--

INSERT INTO `acl_object_identities` (`id`, `parent_object_identity_id`, `class_id`, `object_identifier`, `entries_inheriting`) VALUES
(1, NULL, 1, 'sonata.media.admin.media', 1),
(2, NULL, 2, 'sonata.media.admin.gallery', 1),
(3, NULL, 3, 'sonata.media.admin.gallery_has_media', 1),
(4, NULL, 4, 'bank.main.admin.branch', 1),
(5, NULL, 5, 'bank.main.admin.currency', 1),
(6, NULL, 6, 'bank.main.admin.price', 1),
(7, NULL, 7, 'sonata.user.admin.user', 1),
(8, NULL, 8, 'sonata.user.admin.group', 1),
(9, NULL, 9, '1', 1),
(10, NULL, 9, '2', 1),
(11, NULL, 10, '4', 1),
(12, NULL, 10, '5', 1),
(17, NULL, 12, '1', 1),
(18, NULL, 12, '2', 1),
(19, NULL, 12, '3', 1),
(20, NULL, 12, '4', 1),
(21, NULL, 12, '5', 1),
(22, NULL, 12, '6', 1),
(23, NULL, 12, '7', 1),
(24, NULL, 13, '1', 1),
(25, NULL, 13, '2', 1),
(26, NULL, 14, '1', 1),
(27, NULL, 14, '2', 1),
(28, NULL, 13, '3', 1),
(29, NULL, 9, '3', 1),
(30, NULL, 9, '4', 1),
(31, NULL, 9, '5', 1),
(32, NULL, 9, '6', 1),
(35, NULL, 11, '1', 1),
(36, NULL, 14, '3', 1),
(37, NULL, 13, '4', 1),
(38, NULL, 14, '4', 1),
(39, NULL, 15, '1', 1),
(41, NULL, 9, '7', 1),
(43, NULL, 9, '8', 1),
(45, NULL, 9, '9', 1),
(47, NULL, 9, '10', 1),
(49, NULL, 9, '11', 1),
(51, NULL, 12, '10', 1),
(52, NULL, 12, '11', 1),
(53, NULL, 12, '13', 1),
(54, NULL, 12, '14', 1),
(55, NULL, 12, '15', 1),
(56, NULL, 12, '12', 1),
(57, NULL, 9, '12', 1),
(58, NULL, 9, '13', 1),
(66, NULL, 9, '14', 1),
(67, NULL, 10, '6', 1),
(68, NULL, 11, '2', 1),
(69, NULL, 11, '7', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_object_identity_ancestors`
--

CREATE TABLE IF NOT EXISTS `acl_object_identity_ancestors` (
  `object_identity_id` int(10) unsigned NOT NULL,
  `ancestor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  KEY `IDX_825DE299C671CEA1` (`ancestor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `acl_object_identity_ancestors`
--

INSERT INTO `acl_object_identity_ancestors` (`object_identity_id`, `ancestor_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(41, 41),
(43, 43),
(45, 45),
(47, 47),
(49, 49),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(66, 66),
(67, 67),
(68, 68),
(69, 69);

-- --------------------------------------------------------

--
-- Структура таблицы `acl_security_identities`
--

CREATE TABLE IF NOT EXISTS `acl_security_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=96 ;

--
-- Дамп данных таблицы `acl_security_identities`
--

INSERT INTO `acl_security_identities` (`id`, `identifier`, `username`) VALUES
(34, 'Bank\\UserBundle\\Entity\\User-admin', 1),
(82, 'Bank\\UserBundle\\Entity\\User-Administrator', 1),
(79, 'Bank\\UserBundle\\Entity\\User-Branch_editor', 1),
(83, 'Bank\\UserBundle\\Entity\\User-Currency_editor', 1),
(33, 'Bank\\UserBundle\\Entity\\User-user', 1),
(13, 'ROLE_BANK_MAIN_ADMIN_BRANCH_ADMIN', 0),
(53, 'ROLE_BANK_MAIN_ADMIN_BRANCH_CREATE', 0),
(52, 'ROLE_BANK_MAIN_ADMIN_BRANCH_DELETE', 0),
(89, 'ROLE_BANK_MAIN_ADMIN_BRANCH_EDIT', 0),
(14, 'ROLE_BANK_MAIN_ADMIN_BRANCH_EDITOR', 0),
(16, 'ROLE_BANK_MAIN_ADMIN_BRANCH_GUEST', 0),
(54, 'ROLE_BANK_MAIN_ADMIN_BRANCH_LIST', 0),
(50, 'ROLE_BANK_MAIN_ADMIN_BRANCH_MASTER', 0),
(51, 'ROLE_BANK_MAIN_ADMIN_BRANCH_OPERATOR', 0),
(15, 'ROLE_BANK_MAIN_ADMIN_BRANCH_STAFF', 0),
(88, 'ROLE_BANK_MAIN_ADMIN_BRANCH_VIEW', 0),
(17, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_ADMIN', 0),
(58, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_CREATE', 0),
(57, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_DELETE', 0),
(87, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_EDIT', 0),
(18, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_EDITOR', 0),
(20, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_GUEST', 0),
(59, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_LIST', 0),
(55, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_MASTER', 0),
(56, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_OPERATOR', 0),
(19, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_STAFF', 0),
(86, 'ROLE_BANK_MAIN_ADMIN_CURRENCY_VIEW', 0),
(94, 'ROLE_BANK_MAIN_ADMIN_HISTORY_CREATE', 0),
(92, 'ROLE_BANK_MAIN_ADMIN_HISTORY_DELETE', 0),
(95, 'ROLE_BANK_MAIN_ADMIN_HISTORY_EDIT', 0),
(90, 'ROLE_BANK_MAIN_ADMIN_HISTORY_MASTER', 0),
(91, 'ROLE_BANK_MAIN_ADMIN_HISTORY_OPERATOR', 0),
(93, 'ROLE_BANK_MAIN_ADMIN_HISTORY_VIEW', 0),
(21, 'ROLE_BANK_MAIN_ADMIN_PRICE_ADMIN', 0),
(63, 'ROLE_BANK_MAIN_ADMIN_PRICE_CREATE', 0),
(62, 'ROLE_BANK_MAIN_ADMIN_PRICE_DELETE', 0),
(22, 'ROLE_BANK_MAIN_ADMIN_PRICE_EDITOR', 0),
(24, 'ROLE_BANK_MAIN_ADMIN_PRICE_GUEST', 0),
(64, 'ROLE_BANK_MAIN_ADMIN_PRICE_LIST', 0),
(60, 'ROLE_BANK_MAIN_ADMIN_PRICE_MASTER', 0),
(61, 'ROLE_BANK_MAIN_ADMIN_PRICE_OPERATOR', 0),
(23, 'ROLE_BANK_MAIN_ADMIN_PRICE_STAFF', 0),
(5, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_ADMIN', 0),
(43, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_CREATE', 0),
(42, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_DELETE', 0),
(85, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_EDIT', 0),
(6, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_EDITOR', 0),
(8, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_GUEST', 0),
(9, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_ADMIN', 0),
(48, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_CREATE', 0),
(47, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_DELETE', 0),
(10, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_EDITOR', 0),
(12, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_GUEST', 0),
(49, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_LIST', 0),
(45, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_MASTER', 0),
(46, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_OPERATOR', 0),
(11, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_HAS_MEDIA_STAFF', 0),
(44, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_LIST', 0),
(40, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_MASTER', 0),
(41, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_OPERATOR', 0),
(7, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_STAFF', 0),
(84, 'ROLE_SONATA_MEDIA_ADMIN_GALLERY_VIEW', 0),
(1, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_ADMIN', 0),
(38, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_CREATE', 0),
(37, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_DELETE', 0),
(81, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_EDIT', 0),
(2, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_EDITOR', 0),
(4, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_GUEST', 0),
(39, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_LIST', 0),
(35, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_MASTER', 0),
(36, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_OPERATOR', 0),
(3, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_STAFF', 0),
(80, 'ROLE_SONATA_MEDIA_ADMIN_MEDIA_VIEW', 0),
(29, 'ROLE_SONATA_USER_ADMIN_GROUP_ADMIN', 0),
(73, 'ROLE_SONATA_USER_ADMIN_GROUP_CREATE', 0),
(72, 'ROLE_SONATA_USER_ADMIN_GROUP_DELETE', 0),
(76, 'ROLE_SONATA_USER_ADMIN_GROUP_EDIT', 0),
(30, 'ROLE_SONATA_USER_ADMIN_GROUP_EDITOR', 0),
(32, 'ROLE_SONATA_USER_ADMIN_GROUP_GUEST', 0),
(74, 'ROLE_SONATA_USER_ADMIN_GROUP_LIST', 0),
(70, 'ROLE_SONATA_USER_ADMIN_GROUP_MASTER', 0),
(71, 'ROLE_SONATA_USER_ADMIN_GROUP_OPERATOR', 0),
(31, 'ROLE_SONATA_USER_ADMIN_GROUP_STAFF', 0),
(75, 'ROLE_SONATA_USER_ADMIN_GROUP_VIEW', 0),
(25, 'ROLE_SONATA_USER_ADMIN_USER_ADMIN', 0),
(68, 'ROLE_SONATA_USER_ADMIN_USER_CREATE', 0),
(67, 'ROLE_SONATA_USER_ADMIN_USER_DELETE', 0),
(78, 'ROLE_SONATA_USER_ADMIN_USER_EDIT', 0),
(26, 'ROLE_SONATA_USER_ADMIN_USER_EDITOR', 0),
(28, 'ROLE_SONATA_USER_ADMIN_USER_GUEST', 0),
(69, 'ROLE_SONATA_USER_ADMIN_USER_LIST', 0),
(65, 'ROLE_SONATA_USER_ADMIN_USER_MASTER', 0),
(66, 'ROLE_SONATA_USER_ADMIN_USER_OPERATOR', 0),
(27, 'ROLE_SONATA_USER_ADMIN_USER_STAFF', 0),
(77, 'ROLE_SONATA_USER_ADMIN_USER_VIEW', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BB861B1FEA9FDD75` (`media_id`),
  KEY `IDX_BB861B1FA76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `branch`
--

INSERT INTO `branch` (`id`, `media_id`, `user_id`, `name`, `ip`, `phone`, `description`, `created`, `updated`, `state`) VALUES
(4, 12, 3, 'General', '127.0.0.1', '345433', 'Working hours of ARARATBANK''s branches. Working hours of branches: 08:45-17:30. Lunch break: 13:00-13:45. ARARATBANK OJSC operational day for transfers in the territory of Armenia is set between 08:45-16:15 and 08:45-17:00 for utility payments and international transfers. Mashtots and Kentron branches also operate in the evening from Monday to Friday between 17:00 and 20:00. Limited services are delivered to customers. Mashtots, Nor Nork, Khorenatsi, Byuzand, Yeritasardakan, Erebuni, Nor Aresh, Komitas, Jrvezh, Tsaghkadzor, Shirak and Kentron branches of ARARATBANK OJSC operate 6 days a week. Working day ends at 16:00.', '2015-07-25 14:53:58', '2015-08-30 21:49:30', 1),
(5, NULL, NULL, 'Vanadzor brunch', '127.0.0.2', NULL, 'Vanadzor brunch', '2015-07-25 14:54:44', '2015-08-30 15:39:37', 0),
(6, NULL, 1, 'Amiryan', '10.0.10.12', NULL, 'Amiryan brunch', '2015-07-25 14:55:29', '2015-07-25 15:15:50', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6956883F989D9B62` (`slug`),
  KEY `IDX_6956883FEA9FDD75` (`media_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `media_id`, `title`, `name`, `slug`, `created`, `updated`) VALUES
(1, 4, 'USA dollar', 'USD', 'usd', '2015-07-25 14:03:22', '2015-07-28 18:08:54'),
(2, 5, 'Europen euro', 'EUR', 'eur', '2015-07-25 14:57:23', '2015-07-28 18:09:15'),
(7, 10, 'AUD', 'AUD', 'aud', '2015-07-30 18:45:26', '2015-07-30 18:45:26');

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 'admin@admin.com', 1, '5j6gz1oi1ekg4k00gg8ogcs4ccgwo08', 'SLkbDKSxAa0XV8YW7E9QMQLPD2gzGnmeM4moH9BWt1LjVNbdHljprfg89JbGysA4v9cCTqjbSkfiIqd/QgHHJw==', '2015-08-31 00:31:10', 0, 0, NULL, NULL, NULL, 'a:2:{i:0;s:10:"ROLE_ADMIN";i:1;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, '2015-07-25 13:29:44', '2015-08-31 00:31:10', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(2, 'Currency_editor', 'currency_editor', 'user@user.com', 'user@user.com', 1, 'f92is7dtgrso4088gg8wwk04ccgos88', 'NHR0qQRzy8myL3oWliSEi1XN8V4W8MT43MOb5L69SsE3B3Dyi97Pz63HtK8I1IwzS+xy/UVhecO9h0GNj0HlBg==', '2015-08-30 22:22:55', 0, 0, NULL, NULL, NULL, 'a:2:{i:0;s:13:"ROLE_OPERATOR";i:1;s:10:"ROLE_ADMIN";}', 0, NULL, '2015-07-28 12:17:00', '2015-08-30 22:22:55', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(3, 'Branch_editor', 'branch_editor', 'Branch@editor.com', 'branch@editor.com', 1, 'a6ny08g842ogw4kk8k40c48wcgo04wo', 'MwQhl34QITUoHta9t+PvDYNzPVPIueu1zR/D31dUAXYJOxvD0ogKWPfSeug5PW1gizvNcsRlQkHq+WjF5WYpTA==', '2015-08-30 21:45:36', 0, 0, NULL, NULL, NULL, 'a:2:{i:0;s:13:"ROLE_OPERATOR";i:1;s:10:"ROLE_ADMIN";}', 0, NULL, '2015-07-28 18:06:48', '2015-08-30 21:45:36', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(4, 'Administrator', 'administrator', 'Administrator@admin.com', 'administrator@admin.com', 1, 'lgsuxp5y174808wgwgw8k40wgg4w08c', 'CABaR3/XBiL7lAcdFagGEZiEUcqHXiOopV81cj7q0L3U5KM5hDihelXkol5102so18odEI3ltdpOghEpxxSQwg==', '2015-08-30 16:57:47', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, '2015-07-29 11:13:57', '2015-08-30 16:57:47', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user_groups`
--

CREATE TABLE IF NOT EXISTS `fos_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DA37EFBF5E237E06` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `fos_user_groups`
--

INSERT INTO `fos_user_groups` (`id`, `name`, `roles`) VALUES
(1, 'CURRENCY EDIT', 'a:7:{i:0;s:38:"ROLE_BANK_MAIN_ADMIN_CURRENCY_OPERATOR";i:1;s:35:"ROLE_BANK_MAIN_ADMIN_PRICE_OPERATOR";i:2;s:32:"ROLE_BANK_MAIN_ADMIN_BRANCH_EDIT";i:3;s:32:"ROLE_BANK_MAIN_ADMIN_BRANCH_VIEW";i:4;s:35:"ROLE_BANK_MAIN_ADMIN_HISTORY_CREATE";i:5;s:35:"ROLE_BANK_MAIN_ADMIN_HISTORY_MASTER";i:6;s:38:"ROLE_SONATA_MEDIA_ADMIN_MEDIA_OPERATOR";}'),
(2, 'BRANCH CREATE EDIT', 'a:2:{i:0;s:38:"ROLE_SONATA_MEDIA_ADMIN_MEDIA_OPERATOR";i:1;s:36:"ROLE_BANK_MAIN_ADMIN_BRANCH_OPERATOR";}'),
(3, 'Administrator operator', 'a:7:{i:0;s:37:"ROLE_CUSTOM_NAME_ADMIN_MEDIA_OPERATOR";i:1;s:38:"ROLE_SONATA_MEDIA_ADMIN_MEDIA_OPERATOR";i:2;s:36:"ROLE_BANK_MAIN_ADMIN_BRANCH_OPERATOR";i:3;s:38:"ROLE_BANK_MAIN_ADMIN_CURRENCY_OPERATOR";i:4;s:35:"ROLE_BANK_MAIN_ADMIN_PRICE_OPERATOR";i:5;s:36:"ROLE_SONATA_USER_ADMIN_USER_OPERATOR";i:6;s:35:"ROLE_BANK_MAIN_ADMIN_HISTORY_MASTER";}'),
(4, 'ADMIN', 'a:1:{i:0;s:10:"ROLE_ADMIN";}');

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `fos_user_user_group`
--

INSERT INTO `fos_user_user_group` (`user_id`, `group_id`) VALUES
(2, 1),
(2, 4),
(3, 2),
(3, 4),
(4, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `media__gallery`
--

CREATE TABLE IF NOT EXISTS `media__gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `default_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Структура таблицы `media__gallery_media`
--

CREATE TABLE IF NOT EXISTS `media__gallery_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_80D4C5414E7AF8F` (`gallery_id`),
  KEY `IDX_80D4C541EA9FDD75` (`media_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Структура таблицы `media__media`
--

CREATE TABLE IF NOT EXISTS `media__media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_status` int(11) NOT NULL,
  `provider_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_metadata` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  `content_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_size` int(11) DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdn_is_flushable` tinyint(1) DEFAULT NULL,
  `cdn_flush_at` datetime DEFAULT NULL,
  `cdn_status` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `media__media`
--

INSERT INTO `media__media` (`id`, `name`, `description`, `enabled`, `provider_name`, `provider_status`, `provider_reference`, `provider_metadata`, `width`, `height`, `length`, `content_type`, `content_size`, `copyright`, `author_name`, `context`, `cdn_is_flushable`, `cdn_flush_at`, `cdn_status`, `updated_at`, `created_at`, `image`) VALUES
(4, 'usd.png', NULL, 0, 'sonata.media.provider.image', 1, 'a8f2010a6cc43cd03f369f955d9faf7000f44304.png', '{"filename":"usd.png"}', 474, 300, NULL, 'image/png', 63402, NULL, NULL, 'default', NULL, NULL, NULL, '2015-07-28 18:08:51', '2015-07-28 18:08:51', NULL),
(5, 'eur.png', NULL, 0, 'sonata.media.provider.image', 1, '6d697ef038d5be619f5db04a6e9319d472345d77.png', '{"filename":"eur.png"}', 443, 300, NULL, 'image/png', 23013, NULL, NULL, 'default', NULL, NULL, NULL, '2015-07-28 18:09:13', '2015-07-28 18:09:13', NULL),
(10, 'AUD.png', NULL, 1, 'sonata.media.provider.image', 1, '6beee467ebbf286804adc4345cbb2b1b7daf76ee.png', '{"filename":"AUD.png"}', 471, 300, NULL, 'image/png', 30077, NULL, NULL, 'default', NULL, NULL, NULL, '2015-08-30 22:41:38', '2015-07-30 18:45:07', NULL),
(12, 'ARARATBANK NEWS Մասնաճյուղային ցանց.mp4', NULL, 1, 'sonata.media.provider.file', 1, '382ccaabc4fb123318c8615613169a6699075865.mp4', '{"filename":"ARARATBANK NEWS \\u0544\\u0561\\u057d\\u0576\\u0561\\u0573\\u0575\\u0578\\u0582\\u0572\\u0561\\u0575\\u056b\\u0576 \\u0581\\u0561\\u0576\\u0581.mp4"}', NULL, NULL, NULL, 'video/mp4', 19128940, NULL, NULL, 'default', 0, NULL, NULL, '2015-08-30 00:13:32', '2015-08-29 20:41:51', NULL),
(14, 'Avicii - Wake Me Up (Official Video).mp4', NULL, 1, 'sonata.media.provider.file', 1, '12ff87ec58fb33b95102958add06c8fffa57ff12.mp4', '{"filename":"Avicii - Wake Me Up (Official Video).mp4"}', NULL, NULL, NULL, 'video/mp4', 20115748, NULL, NULL, 'default', NULL, NULL, NULL, '2015-08-30 22:41:33', '2015-08-30 15:40:41', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `price`
--

CREATE TABLE IF NOT EXISTS `price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) DEFAULT NULL,
  `sale` double NOT NULL,
  `buy` double NOT NULL,
  `brunch_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_unique_idx` (`currency_id`,`brunch_id`),
  KEY `IDX_CAC822D938248176` (`currency_id`),
  KEY `IDX_CAC822D94F477494` (`brunch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `price`
--

INSERT INTO `price` (`id`, `currency_id`, `sale`, `buy`, `brunch_id`, `created`, `updated`) VALUES
(1, NULL, 12321, 12312, 6, '0000-00-00 00:00:00', '2015-07-27 21:50:56'),
(2, 1, 480, 485, 4, '0000-00-00 00:00:00', '2015-08-30 00:51:32'),
(4, 2, 800, 800, 4, '0000-00-00 00:00:00', '2015-08-30 00:46:53'),
(5, 2, 400, 534, 5, '0000-00-00 00:00:00', '2015-08-30 00:46:53'),
(7, 1, 420, 456, 5, '2015-07-27 11:56:42', '2015-08-28 17:44:02'),
(19, 7, 520, 530, 4, '2015-08-30 16:56:22', '2015-08-30 16:56:22');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`);

--
-- Ограничения внешнего ключа таблицы `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `FK_BB861B1FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_BB861B1FEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`);

--
-- Ограничения внешнего ключа таблицы `currency`
--
ALTER TABLE `currency`
  ADD CONSTRAINT `FK_6956883FEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_groups` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `media__gallery_media`
--
ALTER TABLE `media__gallery_media`
  ADD CONSTRAINT `FK_80D4C5414E7AF8F` FOREIGN KEY (`gallery_id`) REFERENCES `media__gallery` (`id`),
  ADD CONSTRAINT `FK_80D4C541EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`);

--
-- Ограничения внешнего ключа таблицы `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `FK_CAC822D94F477494` FOREIGN KEY (`brunch_id`) REFERENCES `branch` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CAC822D938248176` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
