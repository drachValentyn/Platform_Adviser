-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 29 2019 г., 15:44
-- Версия сервера: 8.0.13
-- Версия PHP: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `calculator`
--

-- --------------------------------------------------------

--
-- Структура таблицы `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, NULL, 2, 'favicon.jpeg', 'image', 16, 16, 699, NULL, NULL, NULL, '2019-06-13 12:45:53', '2019-06-13 12:45:53', '2019-06-13 12:45:53', '680caa36-c4ab-443c-94cd-0ab057790ebd'),
(38, 1, 3, 'acf-contact-form-7.zip', 'compressed', NULL, NULL, 111377, NULL, 0, 0, '2019-06-19 11:38:57', '2019-06-19 11:38:58', '2019-06-19 11:38:58', '49e1acc8-32ca-4551-8978-eb5afffd73c9'),
(39, 1, 3, 'CMS-Wordpress.jpg', 'image', 600, 300, 25519, NULL, NULL, NULL, '2019-06-19 11:50:38', '2019-06-19 11:50:38', '2019-06-19 11:50:38', 'a5a57d14-8e3b-40cb-9ea5-6aaa1a2c256c'),
(40, 2, 4, 'WordPress-logotype-wmark.png', 'image', 1000, 1000, 82948, NULL, NULL, NULL, '2019-06-19 11:50:57', '2019-06-19 11:50:57', '2019-06-19 11:50:57', '61a382f9-f427-408f-a3eb-b2eca21ee369'),
(41, 2, 4, 'craft-logo.jpg', 'image', 300, 300, 6393, NULL, NULL, NULL, '2019-06-19 11:50:58', '2019-06-19 11:50:58', '2019-06-19 11:50:58', '3c4b1701-ad90-4565-9616-2ad533f602e0'),
(50, 1, 3, 'craft-logo.jpg', 'image', 300, 300, 6393, NULL, NULL, NULL, '2019-06-19 11:55:54', '2019-06-19 11:55:54', '2019-06-19 11:55:54', 'b8234272-8fe3-43e4-9723-a76a7cf9cb39'),
(66, 1, 3, 'Drupal.jpg', 'image', 600, 230, 16170, NULL, NULL, NULL, '2019-06-25 08:40:39', '2019-06-25 08:40:39', '2019-06-25 08:40:39', 'bb673528-f197-4ff7-9536-aa0916b9c1e8'),
(67, 2, 4, 'dru8.png', 'image', 296, 335, 7834, NULL, NULL, NULL, '2019-06-25 08:40:51', '2019-06-25 08:40:51', '2019-06-25 08:40:51', 'ffd6fb9f-e7df-49d6-ba32-107d676ef687'),
(76, 1, 3, '1485527877166143412.png', 'image', 560, 210, 22555, NULL, NULL, NULL, '2019-06-25 09:44:32', '2019-06-25 09:44:32', '2019-06-25 09:44:32', 'dfcad409-41d0-47cc-97ed-a853c9faa0b3'),
(77, 2, 4, 'laravel_logo.png', 'image', 300, 300, 21900, NULL, NULL, NULL, '2019-06-25 09:44:40', '2019-06-25 09:44:40', '2019-06-25 09:44:40', '836b49a7-8a9e-4b57-85f4-3af84708c206'),
(118, 4, 14, 'stars.svg', 'image', 78, 13, 1420, NULL, NULL, NULL, '2019-07-04 13:32:42', '2019-07-04 13:32:42', '2019-07-04 13:32:42', '5af08801-c8b0-4ac0-b6f7-4f065f8ebc4a'),
(119, 3, 13, 'stars.svg', 'image', 78, 13, 1420, NULL, NULL, NULL, '2019-07-04 13:35:34', '2019-07-04 13:35:34', '2019-07-04 13:35:40', 'c2ef6bfc-4a81-445e-912c-8b188404ed14'),
(120, 1, 3, 'all-cms.svg', 'image', 645, 491, 6400, NULL, 0, 0, '2019-07-09 12:28:08', '2019-07-09 12:28:08', '2019-07-09 12:28:08', 'd7d50674-55c8-4a8d-9f6e-5ba764892186'),
(121, 1, 3, 'cms-all.svg', 'image', 645, 492, 6087, NULL, 0, 0, '2019-07-09 12:35:23', '2019-07-09 12:35:24', '2019-07-09 12:35:24', 'a81c56c0-9efc-4ae6-b9d9-36bb581cf870'),
(122, 1, 3, 'cms-all.png', 'image', 645, 492, 43917, NULL, NULL, NULL, '2019-07-09 12:37:31', '2019-07-09 12:37:31', '2019-07-09 12:37:31', '823ba26e-bdcc-422a-8990-ce0aa5eb5c3d'),
(123, 1, 3, 'image.png', 'image', 597, 491, 48834, NULL, NULL, NULL, '2019-07-09 14:22:24', '2019-07-09 14:22:24', '2019-07-09 14:22:24', '4a244632-b1a6-46b5-84ad-eaf69aecdc43'),
(124, 1, 3, 'wordpress-logo.svg', 'image', 218, 45, 1330, NULL, NULL, NULL, '2019-07-15 12:59:04', '2019-07-15 12:59:04', '2019-07-15 12:59:04', '0210fa9a-d831-40e9-882a-a752c77c4627'),
(125, 1, 3, 'wordpress-logo.png', 'image', 218, 45, 7540, NULL, NULL, NULL, '2019-07-15 13:03:19', '2019-07-15 13:03:19', '2019-07-15 13:03:19', '7dc211aa-8a2b-4696-ba09-2e206428700f'),
(126, 1, 3, 'craft-logo.png', 'image', 200, 58, 5703, NULL, NULL, NULL, '2019-07-15 13:10:48', '2019-07-15 13:10:48', '2019-07-15 13:10:48', '0c1141b6-f609-495c-91da-bf45ebf25a97'),
(127, 1, 3, 'drupal-logo.png', 'image', 260, 65, 6528, NULL, NULL, NULL, '2019-07-15 13:11:16', '2019-07-15 13:11:16', '2019-07-15 13:11:16', 'e53786b2-82a3-49dd-9333-cc4845aa04cc'),
(778, 1, 3, 'pg-logo.svg', 'image', 40, 51, 8963, NULL, NULL, NULL, '2019-07-29 13:18:26', '2019-07-29 13:18:26', '2019-07-29 13:18:26', '8c763378-1ce5-49a2-b885-f34cddba060b');

-- --------------------------------------------------------

--
-- Структура таблицы `assettransformindex`
--

CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `assettransforms`
--

CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categorygroups`
--

INSERT INTO `categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, NULL, 'Category rating', 'categoryRating', '2019-06-13 11:45:06', '2019-06-13 11:45:06', NULL, '3ad2ff7f-e2c0-407b-941b-4a408e2fff8b');

-- --------------------------------------------------------

--
-- Структура таблицы `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categorygroups_sites`
--

INSERT INTO `categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'category-rating/{slug}', '', '2019-06-13 11:45:06', '2019-06-13 11:45:06', '63afa649-64cc-4ecf-bf5c-9a1412f10882');

-- --------------------------------------------------------

--
-- Структура таблицы `conditions_conditionalsrecord`
--

CREATE TABLE `conditions_conditionalsrecord` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) NOT NULL,
  `expressions` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `siteId` int(11) NOT NULL DEFAULT '1',
  `some_field` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_mainTitle` text,
  `field_description` text,
  `field_caption` text,
  `field_button` text,
  `field_titlePage` text,
  `field_titleForm` text,
  `field_phoneNumber` text,
  `field_subtitle` text,
  `field_subtitleThanksPage` text,
  `field_shareText` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_mainTitle`, `field_description`, `field_caption`, `field_button`, `field_titlePage`, `field_titleForm`, `field_phoneNumber`, `field_subtitle`, `field_subtitleThanksPage`, `field_shareText`) VALUES
(1, 1, 1, NULL, '2019-06-11 15:11:27', '2019-06-11 15:11:27', 'b726074d-29d0-49f9-9dec-1975222af4e3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 'Homepage', '2019-06-12 08:09:35', '2019-07-10 15:00:43', '3c84f7ea-ed93-46ce-8402-c8f1b280261a', 'What is the best platform to create a website?', '<p>Sure, you can find some comparison lists online, that compare every tiny feature of all platforms existing on the Earth. We tried some. It will took years to choose the right website builder. We put together only most popular and modern platforms, CMS (content management systems) and online website builders to make this decision easer for you.</p>\n<p>Answer simple questions. We will explain our decision in simple words.</p>', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(3, 4, 1, 'Favicon', '2019-06-13 12:45:53', '2019-06-13 12:45:53', '598db5e7-911a-4af8-940e-61566a35f50a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 5, 1, 'Perfomance', '2019-06-13 12:47:07', '2019-06-14 11:15:23', '07778367-9161-4fc7-8c55-0de2d5605395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 7, 1, 'Wordpress', '2019-06-13 13:16:38', '2019-07-29 13:40:03', 'd2cf4bac-f9aa-4f25-96e7-1ba2611e8162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 11, 1, 'Craft', '2019-06-13 13:51:08', '2019-07-16 10:14:26', '9177bfba-ccbf-4927-b8c7-ff7796d925bb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 15, 1, 'Base questions', '2019-06-14 11:58:15', '2019-06-14 14:43:53', 'ba83fc33-a555-44f5-bb3c-85b4b7f6791d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 16, 1, 'What site type do you need?', '2019-06-14 11:59:26', '2019-06-25 09:50:36', '94c2352e-a6f0-47ab-819b-6991a5615257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 21, 1, 'How many visitors per day expected on site?', '2019-06-14 14:15:57', '2019-06-25 11:21:28', '9e56013e-78f9-4327-9b21-0a719cb56046', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 34, 1, 'Performance', '2019-06-18 15:22:12', '2019-07-01 09:54:12', 'e619c985-2713-4931-8db5-062920433eed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 35, 1, 'SEO friendly', '2019-06-18 15:22:24', '2019-07-01 09:54:12', 'e203df6b-7ca1-465a-aae6-218ef4abffa9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 36, 1, 'Customization', '2019-06-18 15:22:35', '2019-07-01 09:54:12', 'be973364-6761-402e-aa2b-89ff762ef361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 37, 1, 'Scalability', '2019-06-18 15:23:01', '2019-07-01 09:54:12', 'c6ac388e-fc7b-4e05-b0a0-5ad5095396cb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 38, 1, 'Acf contact form 7', '2019-06-19 11:38:58', '2019-06-19 11:38:58', '94a4db84-0df0-44f7-9301-ce1d094a1a8c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 39, 1, 'CMS Wordpress', '2019-06-19 11:50:38', '2019-06-19 11:50:38', '4b9cb777-da4e-4ef4-9334-f4ba09fe069c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 40, 1, 'Word Press logotype wmark', '2019-06-19 11:50:57', '2019-06-19 11:50:57', 'b46c5bdc-c8cc-494e-9f36-43661896cba3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 41, 1, 'Craft logo', '2019-06-19 11:50:58', '2019-06-19 11:50:58', 'a65c2ce6-f6dd-4c3c-8628-30cf4958a34e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 42, 1, 'Outgoing cost', '2019-06-19 11:54:18', '2019-07-01 09:55:12', '5bddeddf-94a4-4fe0-a24a-2d18c8441197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 50, 1, 'Craft logo', '2019-06-19 11:55:53', '2019-06-19 11:55:53', '81a666f9-8b0f-4cce-870d-277affa30bfb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 66, 1, 'Drupal', '2019-06-25 08:40:39', '2019-06-25 08:40:39', '108d56b6-7535-42d8-96bc-7c5999579588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 67, 1, 'Dru8', '2019-06-25 08:40:50', '2019-06-25 08:40:50', 'b5b2bdc7-6efa-47d2-875d-f4ef904ec227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 68, 1, 'Drupal', '2019-06-25 09:19:09', '2019-07-23 09:05:38', 'f99e9d00-aac8-4bbf-bb87-70d341790eb7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 76, 1, '1485527877166143412', '2019-06-25 09:44:32', '2019-06-25 09:44:32', '7bb9617f-49ff-49d4-a0ce-5d729db617ef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 77, 1, 'Laravel logo', '2019-06-25 09:44:40', '2019-06-25 09:44:40', '5a08458c-30bd-4baa-897f-3a2335b8a33d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 78, 1, 'Laravel', '2019-06-25 09:45:31', '2019-07-16 10:15:01', '8fab24b9-6046-4760-aed7-5f5ddd3b1682', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 102, 1, 'Results', '2019-06-25 14:00:05', '2019-07-29 13:40:33', '1cb7c313-f27b-4ce4-906a-ec2518c15e0d', NULL, NULL, NULL, NULL, 'Recommendation', 'Need more detailed advice or a project cost estimate?', '+1 234 123 1234', NULL, NULL, NULL),
(27, 111, 1, 'SEO properties', '2019-07-04 07:47:30', '2019-07-04 07:47:30', '216c597a-9f24-4736-aacf-d43c8096df37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 113, 1, 'Security', '2019-07-04 08:02:42', '2019-07-04 08:02:42', '573353ed-7da2-49fb-b13e-da0d503adabb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 118, 1, 'Stars', '2019-07-04 13:32:41', '2019-07-04 13:32:41', 'b000de7b-43a3-4ac9-9d62-135a78135585', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 119, 1, 'Stars', '2019-07-04 13:35:34', '2019-07-04 13:35:40', '6e6ac098-4bd4-436a-b7ec-78767aa523bc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 120, 1, 'All cms', '2019-07-09 12:28:08', '2019-07-09 12:28:08', 'ebea2e52-7282-4187-9c1e-0603c6e599ff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 121, 1, 'Cms all', '2019-07-09 12:35:23', '2019-07-09 12:35:23', '346674fc-7dab-49dc-940a-e0e8ff7f6527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 122, 1, 'Cms all', '2019-07-09 12:37:31', '2019-07-09 12:37:31', 'bb1639b8-4a09-413d-986f-978324ad3901', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 123, 1, 'Image', '2019-07-09 14:22:23', '2019-07-09 14:22:23', '45585bd0-5778-471d-9265-5ab526127485', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 124, 1, 'Wordpress logo', '2019-07-15 12:59:04', '2019-07-15 12:59:04', '2beb8d84-dc71-40f6-879a-61fb8d172ca8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 125, 1, 'Wordpress logo', '2019-07-15 13:03:19', '2019-07-15 13:03:19', '7014ae22-2db0-4cee-8135-4ff71f48a8e8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 126, 1, 'Craft logo', '2019-07-15 13:10:48', '2019-07-15 13:10:48', 'f384293b-036b-4f13-880c-7b1d0d81f5d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 127, 1, 'Drupal logo', '2019-07-15 13:11:16', '2019-07-15 13:11:16', '2e694cdd-759e-4819-8000-a2290bffcdba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 128, 1, 'Drupal', '2019-07-16 07:35:58', '2019-07-16 07:35:59', 'af95ac89-8659-48fb-94c7-9b60c42e0f09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 136, 1, 'Craft', '2019-07-16 07:35:59', '2019-07-16 07:36:00', 'd74ff7dd-ce9b-40da-9b27-987e940b786d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 144, 1, 'Wordpress', '2019-07-16 07:36:00', '2019-07-16 07:36:00', '94305d78-ff6a-4dd1-b41f-de83f9cf8a05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 152, 1, 'Wordpress', '2019-07-16 07:36:00', '2019-07-16 07:36:00', '2aa0b5e7-f620-49e3-93c4-149a3d5ec7ca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 160, 1, 'Homepage', '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'ea7169bd-3279-48a2-809a-1331fb37e8d3', 'What is the best platform to create a website?', '<p>Sure, you can find some comparison lists online, that compare every tiny feature of all platforms existing on the Earth. We tried some. It will took years to choose the right website builder. We put together only most popular and modern platforms, CMS (content management systems) and online website builders to make this decision easer for you.</p>\n<p>Answer simple questions. We will explain our decision in simple words.</p>', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(44, 161, 1, 'Homepage', '2019-07-16 07:36:00', '2019-07-16 07:36:00', '20288689-7d8d-4ab7-ab24-8bb4388d3695', 'What is the best platform to create a website?', '<p>Sure, you can find some comparison lists online, that compare every tiny feature of all platforms existing on the Earth. We tried some. It will took years to choose the right website builder. We put together only most popular and modern platforms, CMS (content management systems) and online website builders to make this decision easer for you.</p>\n<p>Answer simple questions. We will explain our decision in simple words.</p>', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', NULL, NULL),
(45, 162, 1, 'Homepage', '2019-07-16 07:36:00', '2019-07-16 07:36:01', '75091346-0ef9-4fd9-a4f5-969f6a31a914', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(46, 163, 1, 'Homepage', '2019-07-16 07:36:01', '2019-07-16 07:36:01', '999bcb01-c1ad-4b01-a430-de8549722c0f', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(47, 164, 1, 'Homepage', '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7ca0175e-a762-474a-af83-500f5435fb93', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(48, 165, 1, 'Homepage', '2019-07-16 07:36:01', '2019-07-16 07:36:01', '31749bd3-6aed-4a5a-b526-db02be22edbc', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(49, 166, 1, 'Homepage', '2019-07-16 07:36:01', '2019-07-16 07:36:01', '1b5c2172-4da6-4a7f-b76f-757492ed2af4', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(50, 167, 1, 'Homepage', '2019-07-16 07:36:01', '2019-07-16 07:36:01', '6fda5dc7-57ed-47aa-bd07-5393fa0f4617', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(51, 168, 1, 'Laravel', '2019-07-16 07:36:01', '2019-07-16 07:36:01', '6f7e4b6c-0796-43eb-9bcf-8be09901f57c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 176, 1, 'Laravel', '2019-07-16 07:36:01', '2019-07-16 07:36:01', '6ce96a82-7891-4feb-bd29-09432e7571a3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 184, 1, 'Laravel', '2019-07-16 07:36:01', '2019-07-16 07:36:02', '4ee75525-e3a4-4dba-812c-d18b553b7de0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 192, 1, 'Wordpress', '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'f61ea0f3-9829-484f-b5a7-f3114df638cd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 200, 1, 'Wordpress', '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'bfe030a6-bc12-46ff-b000-8119ed45f572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 208, 1, 'Wordpress', '2019-07-16 07:36:02', '2019-07-16 07:36:02', '577547d4-df63-422e-a280-d3663793607d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 216, 1, 'Laravel', '2019-07-16 07:36:02', '2019-07-16 07:36:03', 'c5c8e9d1-5079-4637-9878-df21e4bddc9c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 224, 1, 'Wordpress', '2019-07-16 07:36:03', '2019-07-16 07:36:03', '9553a659-a2ca-480c-b3f9-e6c1378f5501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 232, 1, 'Wordpress', '2019-07-16 07:36:03', '2019-07-16 07:36:03', '52daa6ed-b99b-4d58-8eda-eea9b3fb7e6d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 240, 1, 'Craft', '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'b221cc2d-cec8-4431-99a7-fd183e771916', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 248, 1, 'Drupal', '2019-07-16 07:36:04', '2019-07-16 07:36:04', '908e7297-a83d-4253-b436-7a834090ebad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 256, 1, 'Laravel', '2019-07-16 07:36:04', '2019-07-16 07:36:04', '89134b19-ddbf-4902-ad1a-d19b9ffc81f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 264, 1, 'Wordpress', '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'f2b12d71-ae7b-4cec-88fc-0f8cd2c32198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 272, 1, 'Outgoing cost', '2019-07-16 07:36:05', '2019-07-16 07:36:05', '8668dc31-c67e-410c-aab8-d9b67dab8e15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 282, 1, 'How many visitors per day expected on site?', '2019-07-16 07:36:05', '2019-07-16 07:36:06', '0f1e9b53-5370-4a95-8353-ad4ba016880f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 303, 1, 'How many visitors per day expected on site?', '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'fe46f077-ff61-4fed-a14d-cb982bbfe65e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 324, 1, 'What site type do you need?', '2019-07-16 07:36:06', '2019-07-16 07:36:07', '19c2373f-dd7b-4b42-8dbf-ad31d9571327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 345, 1, 'Laravel', '2019-07-16 07:36:07', '2019-07-16 07:36:07', '472dc2dc-54bf-497b-b44e-30f365aa6327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 353, 1, 'Drupal', '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c5c844be-954e-42c5-b81f-84411940e31f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 361, 1, 'Homepage', '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'd90cea1b-5ec3-4803-a0ca-bd8e7f8ae847', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(80, 362, 1, 'How many visitors per day expected on site?', '2019-07-16 07:36:08', '2019-07-16 07:36:08', '9ea7779d-3fae-4fed-a702-4e7c7cdc4e53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 383, 1, 'Wordpress', '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'dff3327e-c2cd-4ce5-95b9-3b753793532a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 391, 1, 'Craft', '2019-07-16 07:36:09', '2019-07-16 07:36:09', '5f71eee3-c442-4f70-8871-a76455f6ef91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 399, 1, 'Wordpress', '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'd5545316-71b8-4645-a1b5-171f5e968f8e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 407, 1, 'Outgoing cost', '2019-07-16 07:36:09', '2019-07-16 07:36:09', '75360dab-ec4c-4872-9a3f-89d6bf92eb0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 408, 1, 'Scalability', '2019-07-16 07:36:09', '2019-07-16 07:36:09', '84d0b9d7-f313-4937-879e-ffd48790ac04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 409, 1, 'Customization', '2019-07-16 07:36:09', '2019-07-16 07:36:09', '4721a337-bbcc-41d4-aa33-76f6afa83092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 410, 1, 'SEO friendly', '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'bad85d66-32ea-463e-aa42-ab16cbc5a927', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 411, 1, 'Performance', '2019-07-16 07:36:10', '2019-07-16 07:36:10', '0ab66a66-80f0-4aa4-87b5-83191371ef4c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 412, 1, 'What site type do you need?', '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'dffcf400-a67c-47bd-9d79-ddad080cced8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 433, 1, 'What site type do you need?', '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'debcd3ba-1efa-4e28-9df5-6ad053ea6314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 454, 1, 'What site type do you need?', '2019-07-16 07:36:10', '2019-07-16 07:36:11', '45ddadf0-ba6c-4099-b094-1afeeda32650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 475, 1, 'How many visitors per day expected on site?', '2019-07-16 07:36:11', '2019-07-16 07:36:11', '8c134927-30f7-4169-93f0-4efb7db7c68d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 496, 1, 'What site type do you need?', '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a2e78947-5942-49fb-8c79-fb156b3634de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 517, 1, 'What site type do you need?', '2019-07-16 07:36:12', '2019-07-16 07:36:12', '8a82c433-6ff8-4039-9e86-eecb0b5766f3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 538, 1, 'What site type do you need?', '2019-07-16 07:36:12', '2019-07-16 07:36:12', '669798a6-8b20-4102-8e7d-369474ef3887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 559, 1, 'What site type do you need?', '2019-07-16 07:36:12', '2019-07-16 07:36:12', '0a43cf8d-7a90-4021-a8e1-7976e239b9e0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 580, 1, 'What site type do you need?', '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'bf356f65-c841-4dc2-ab1f-5ffe0076e1a7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 601, 1, 'Wordpress', '2019-07-16 07:36:13', '2019-07-16 07:36:13', '0669d9a0-6ee0-45dd-a319-4ab40871feec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 609, 1, '33Wordpress', '2019-07-16 07:36:14', '2019-07-16 07:36:14', '3d396729-7a29-43bf-ae65-c63dccae3eeb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 617, 1, 'Craft', '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'd427d332-a87f-4cfc-bfb8-8b61e83407a8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 625, 1, 'Wordpress', '2019-07-16 07:36:14', '2019-07-16 07:36:15', '87e048ec-eb53-4775-bd79-4aa68d3d6e2b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 633, 1, 'Wordpress', '2019-07-16 07:36:15', '2019-07-16 07:36:15', '45cabb0e-5fbc-40fe-b1bf-690fe32986a5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 641, 1, 'Homepage', '2019-07-16 07:36:15', '2019-07-16 07:36:15', '213e4df4-2a45-49a5-920f-ce149a318ee3', 'What is the best platform to create a website?', '<p>Sure, you can find some comparison lists online, that compare every tiny feature of all platforms existing on the Earth. We tried some. It will took years to choose the right website builder. We put together only most popular and modern platforms, CMS (content management systems) and online website builders to make this decision easer for you.</p>\n<p>Answer simple questions. We will explain our decision in simple words.</p>', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(104, 642, 1, 'Homepage', '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'ba613d3d-ce4f-4068-90bf-9c74942f3820', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(105, 643, 1, 'Homepage', '2019-07-16 07:36:15', '2019-07-16 07:36:15', '4ed4dd02-ad8b-4bc9-8605-f1d59126eb46', 'What is the best platform to create a website?', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(106, 644, 1, 'Homepage', '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'c5267bb2-c565-4666-8bf8-e9951b2d1b2b', 'What is the best platform to create a website?', '<p>Sure, you can find some comparison lists online, that compare every tiny feature of all platforms existing on the Earth. We tried some. It will took years to choose the right website builder. We put together only most popular and modern platforms, CMS (content management systems) and online website builders to make this decision easer for you.</p>\n<p>Answer simple questions. We will explain our decision in simple words.</p>', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(107, 645, 1, 'Homepage', '2019-07-16 07:36:16', '2019-07-16 07:36:16', '94ac6a3c-83ef-4776-b897-611013cb5f35', 'What is the best platform to create a website?', '<p>Sure, you can find some comparison lists online, that compare every tiny feature of all platforms existing on the Earth. We tried some. It will took years to choose the right website builder. We put together only most popular and modern platforms, CMS (content management systems) and online website builders to make this decision easer for you.</p>\n<p>Answer simple questions. We will explain our decision in simple words.</p>', 'It will take under 3 minutes to complete. Are you ready?', 'Let\'s do it!', NULL, NULL, NULL, 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', NULL, NULL),
(109, 661, 1, 'Wordpress', '2019-07-16 10:14:08', '2019-07-16 10:14:08', '911c3a38-c236-4f44-ba44-4317a7ede684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 684, 1, 'Craft', '2019-07-16 10:14:27', '2019-07-16 10:14:27', '8529cbd5-093b-4e1a-8634-ed831a3b736f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 707, 1, 'Drupal', '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'ad92982e-f437-4628-b2e6-a743fb509267', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 730, 1, 'Laravel', '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'a40069b0-fe11-4efd-8f3c-2ef7e4f0b4ef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 738, 1, NULL, '2019-07-17 10:41:26', '2019-07-17 10:41:26', '5dff46da-4d76-4247-8688-b7316634ccdb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 739, 1, 'Thank you Page', '2019-07-17 10:42:19', '2019-07-17 13:10:28', 'be7ef56b-e9ea-4e40-90bd-a6a001f97ad8', 'Thank you for the request!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'ll get to you as soon as possible.', 'did you like the tool? share it with the world:'),
(122, 746, 1, 'Thank you Page', '2019-07-17 12:20:21', '2019-07-17 12:20:21', 'c4a06d7a-5d64-4562-b950-cb3e373b2af5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 748, 1, 'Thank you Page', '2019-07-17 12:20:22', '2019-07-17 12:20:22', '622b44ac-a9ac-4219-b371-f5d3af28e5bf', 'Thank you for the request!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'ll get to you as soon as possible.', 'did you like the tool? share it with the world:'),
(125, 752, 1, 'Thank you Page', '2019-07-17 12:20:26', '2019-07-17 12:20:26', '4cf0473c-9255-4677-b1e6-3addc1871b2c', 'Thank you for the request!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'ll get to you as soon as possible.', 'did you like the tool? share it with the world:'),
(127, 760, 1, 'Thank you Page', '2019-07-17 12:22:20', '2019-07-17 12:22:20', '5aa190dd-7f6b-4671-b98b-a2b62fe69c0a', 'Thank you for the request!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'ll get to you as soon as possible.', 'did you like the tool? share it with the world:'),
(129, 765, 1, 'Thank you Page', '2019-07-17 13:10:29', '2019-07-17 13:10:29', 'cdecdd15-8cb0-4b65-b5dc-bdf389cd381c', 'Thank you for the request!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'ll get to you as soon as possible.', 'did you like the tool? share it with the world:'),
(130, 767, 1, 'Drupal', '2019-07-23 09:05:39', '2019-07-23 09:05:39', '488e11e7-f9b4-49cf-88c0-d3e8cc7abbaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 775, 1, NULL, '2019-07-23 10:23:58', '2019-07-23 10:23:58', '0bd20c5a-377b-4648-9da5-624cbe58f3f3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 777, 1, 'Results', '2019-07-29 13:10:51', '2019-07-29 13:10:51', '5fbdf44d-5320-4f8e-a99c-1c6b74bb9ea6', NULL, NULL, NULL, NULL, 'Recommendation', 'Need more detailed advice or a project cost estimate?', '+1 234 123 1234', NULL, NULL, NULL),
(134, 778, 1, 'Pg logo', '2019-07-29 13:18:26', '2019-07-29 13:18:26', 'e39491d8-4212-4a04-9c96-98320f3174a9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 780, 1, 'Results', '2019-07-29 13:18:34', '2019-07-29 13:18:34', '361eecb9-a2f5-4b57-b529-92d24b179610', NULL, NULL, NULL, NULL, 'Recommendation', 'Need more detailed advice or a project cost estimate?', '+1 234 123 1234', NULL, NULL, NULL),
(138, 782, 1, 'Results', '2019-07-29 13:27:40', '2019-07-29 13:27:40', '8c9517e4-166b-4842-87a3-f602d1fb614e', NULL, NULL, NULL, NULL, 'Recommendation', 'Need more detailed advice or a project cost estimate?', '+1 234 123 1234', NULL, NULL, NULL),
(140, 798, 1, 'Wordpress', '2019-07-29 13:35:27', '2019-07-29 13:35:27', '68b5f496-b9c1-4842-b3e7-c9445868d0d2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 806, 1, 'Wordpress', '2019-07-29 13:35:48', '2019-07-29 13:35:53', '198f80d6-7275-414e-a7af-6039b148539b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 829, 1, 'Wordpress', '2019-07-29 13:36:31', '2019-07-29 13:36:31', '8b04eaa6-a070-4f33-90ad-c1f876e68c6a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 837, 1, 'Wordpress', '2019-07-29 13:38:49', '2019-07-29 13:38:50', '76dcac38-5f35-4fe5-9ad0-6f8d870135da', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 853, 1, 'Wordpress', '2019-07-29 13:39:28', '2019-07-29 13:39:35', '10f92c22-f5a6-4b92-a7c1-0536b76cfe46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 876, 1, 'Wordpress', '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'db91e9c9-f73d-4b5f-99d1-23f2f1a1097a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 885, 1, 'Results', '2019-07-29 13:40:34', '2019-07-29 13:40:34', '56daee1b-2280-4a0d-b01a-ac4b13720a12', NULL, NULL, NULL, NULL, 'Recommendation', 'Need more detailed advice or a project cost estimate?', '+1 234 123 1234', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `drafts`
--

INSERT INTO `drafts` (`id`, `sourceId`, `creatorId`, `name`, `notes`) VALUES
(5, NULL, 1, 'First draft', NULL),
(10, NULL, 1, 'First draft', NULL),
(14, 7, 1, 'Draft 1', ''),
(16, 7, 1, 'Draft 2', NULL),
(18, 7, 1, 'Draft 3', '');

-- --------------------------------------------------------

--
-- Структура таблицы `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `elements`
--

INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2019-06-11 15:11:27', '2019-06-11 15:11:27', NULL, '3c140efd-e4a1-4b2f-9bfc-a3b118f8534e'),
(2, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2019-06-12 08:09:35', '2019-07-10 15:00:42', NULL, '4b84a659-19f2-41f0-b15a-bf52225337af'),
(3, NULL, NULL, 2, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-12 12:03:19', '2019-06-12 12:03:19', NULL, '9e91375c-4018-4bfb-b888-a2f9ac0d9438'),
(4, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-13 12:45:53', '2019-06-13 12:45:53', NULL, '039a60c1-a255-4f94-85d1-514015057263'),
(5, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2019-06-13 12:47:06', '2019-06-14 11:15:23', '2019-06-14 14:02:34', '0073ba5d-8e4d-41d5-830d-878c7447f85c'),
(6, NULL, NULL, 5, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-13 12:47:07', '2019-06-14 11:15:24', '2019-06-14 13:51:17', '177a0967-8a94-404d-a266-e5f221e92bb6'),
(7, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-13 13:16:38', '2019-07-29 13:40:03', NULL, 'fc17140e-590c-4573-a897-67e509fa82fb'),
(8, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-13 13:30:30', '2019-06-14 10:04:57', '2019-06-14 13:52:36', '451b9cc7-a24c-459c-be1e-a1f405b49294'),
(9, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-13 13:30:30', '2019-06-14 10:04:58', '2019-06-14 13:52:37', '134097b0-a2b9-4158-a648-7b7b3cd7100c'),
(10, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-13 13:30:30', '2019-06-14 10:04:58', '2019-06-14 13:52:37', 'd74624c1-f26d-403b-b15b-879bb7e38579'),
(11, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-13 13:51:08', '2019-07-16 10:14:26', NULL, 'a63c6752-a123-4cc7-a609-1afb01ec9339'),
(12, NULL, NULL, 6, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-13 13:51:08', '2019-06-13 13:51:08', '2019-06-14 13:52:36', 'a79f9fea-8140-4fae-bff9-1a261bfb5d44'),
(13, NULL, NULL, 7, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-13 13:51:09', '2019-06-13 13:51:09', '2019-06-14 13:52:37', '037e8a88-14c8-4660-81b1-b6392c887061'),
(14, NULL, NULL, 8, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-13 13:51:09', '2019-06-13 13:51:09', '2019-06-14 13:52:37', '23949278-cd7f-44d4-a691-b365d5aa96d3'),
(15, NULL, NULL, NULL, 'craft\\elements\\Entry', 1, 0, '2019-06-14 11:58:15', '2019-06-14 14:43:53', '2019-06-18 09:54:12', '9dd3d4bd-a177-4113-8fd0-1a43e934c534'),
(16, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-14 11:59:26', '2019-06-25 09:50:36', NULL, '324ff9fd-81bd-41b8-b468-0eb6af71f8c4'),
(17, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:36', NULL, 'd8359758-d44c-4a1e-a3e8-94231e0c1eb9'),
(18, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '78d30745-4701-4bc9-9e31-242e040601a7'),
(19, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '4bf4cce3-d625-4215-b0b7-de0650a47641'),
(20, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '24f1a354-cee9-4a2a-9cd0-9374b250cf43'),
(21, NULL, NULL, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-14 14:15:57', '2019-06-25 11:21:28', NULL, '6cb122b1-b8a3-4d66-ab67-dfa2d81bdbae'),
(22, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:57', '2019-06-25 11:21:28', NULL, '283a6f03-06f4-4939-a040-be683c119045'),
(23, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-06-25 11:21:28', NULL, 'bc273765-d32b-4025-b70c-f3dc95a9f9c4'),
(24, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-06-25 11:21:29', NULL, '28233314-1785-4295-9599-e07340ae2fc7'),
(25, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-06-25 11:21:29', NULL, '09fa5aa3-344b-45d7-93ee-3ec5dce76af7'),
(26, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, 'c7ed58d4-1715-485c-a2ac-d65b6f7356fb'),
(27, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, '7c3741eb-4f1d-46fe-975f-0868a756abfb'),
(28, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '89378a95-70fb-4abf-ab54-4bdebe0bc88d'),
(29, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '87bb8512-9ecf-4a19-9068-7db484ec2143'),
(30, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '16f62b27-a958-4f3a-a49b-b8a15ea3cc1c'),
(31, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'a3c444b0-57c3-4a82-8db8-840070973bde'),
(32, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '299d1bd6-8001-4278-8d84-5d0f3144b57e'),
(33, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'c9822527-0fd2-48f4-9c4d-81cd70bf50b8'),
(34, NULL, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-18 15:22:12', '2019-07-01 09:54:12', NULL, '060df4b6-e5bf-4306-a5c4-5b92e1ff1e7c'),
(35, NULL, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-18 15:22:24', '2019-07-01 09:54:12', NULL, '1f01666c-6d51-4428-9434-eb2d894d7a9e'),
(36, NULL, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-18 15:22:35', '2019-07-01 09:54:12', NULL, '59c05a2c-c7e6-449b-a24f-29f90386faae'),
(37, NULL, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-18 15:23:01', '2019-07-01 09:54:12', NULL, 'eeb00cbc-40a8-430d-a0cb-d6cacd5c0d02'),
(38, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-19 11:38:58', '2019-06-19 11:38:58', '2019-06-19 11:39:04', '3618cef7-4188-4902-a392-d8cdd8fd4632'),
(39, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-19 11:50:38', '2019-06-19 11:50:38', NULL, 'a0234d13-e7db-49ae-8f5d-1883dbeb67d2'),
(40, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-19 11:50:57', '2019-06-19 11:50:57', NULL, 'd8e1f0da-2b4a-4f97-af11-35194a4caf15'),
(41, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-19 11:50:58', '2019-06-19 11:50:58', NULL, '116987ff-8b24-4737-9d79-8f4cff0fe48e'),
(42, NULL, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-19 11:54:18', '2019-07-01 09:55:12', NULL, '07c169f3-4fcc-4df4-90eb-f81bcae39a21'),
(43, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-15 13:03:24', '2019-07-16 10:14:08', '9e6f9295-8863-4ae4-aea0-b272dac0c3a5'),
(44, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-15 13:03:25', '2019-07-16 10:14:08', 'bf4548e5-0208-481a-aa65-91f5671c1fef'),
(45, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '2019-07-16 10:14:08', '29ccfb05-0b41-4e56-a156-2a07dc084413'),
(46, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '2019-07-16 10:14:08', 'ddd12e74-35e0-4d15-bbc6-2289c4e7d525'),
(47, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '2019-07-16 10:14:08', '78cba886-cf43-4c9c-bf3c-ce6684b98613'),
(48, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '2019-07-16 10:14:08', '4e399d49-4888-4a65-a6e0-4ec6a7c8bf04'),
(49, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '2019-07-16 10:14:08', 'f9af24ce-64c6-4a48-ae19-220731860a1b'),
(50, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-19 11:55:53', '2019-06-19 11:55:53', NULL, 'ee97a6f4-9855-4c73-8387-13c926b690de'),
(51, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '2019-07-16 10:14:27', '547c4e0d-7b8c-432c-821b-4645301a6559'),
(52, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '2019-07-16 10:14:27', 'a6dda699-ae9b-4aff-ab0a-05821b95d11e'),
(53, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '2019-07-16 10:14:27', '19954cb9-1305-42ea-ad96-c4f053c019f5'),
(54, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '2019-07-16 10:14:27', '4a4a2278-3924-4fc1-9678-f2dd650989c3'),
(55, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '2019-07-16 10:14:27', 'c3de7df2-0ad4-4e15-a40c-8ca43d403ca1'),
(56, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '2019-07-16 10:14:27', 'e4c1fbaa-4119-4506-ac20-fbd2e0cab771'),
(57, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '2019-07-16 10:14:27', '7a209477-b361-4107-8a11-0cf8dd47cda3'),
(58, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:17', '2019-06-25 11:21:28', NULL, '34986514-978e-4a77-af52-ef868a0568b4'),
(59, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:28', NULL, '53bed586-3503-415c-bd74-0d8275ccfbcf'),
(60, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:28', NULL, 'c4057779-68ab-4062-b20a-1cb8ce5e1361'),
(61, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:28', NULL, '10fb4176-36f2-44c7-846c-03bc6204f82b'),
(62, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:29', NULL, '3d0370d1-16c7-4a89-b97a-a0bbf2a1f8a5'),
(63, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:29', NULL, 'd3382168-c2c3-4092-8c16-44104e62707b'),
(64, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:29', NULL, '5526569b-9fb2-4f1d-9526-787246941968'),
(65, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:29', NULL, '1c72603e-19b8-4e7b-b67c-eabbb4ed3cbf'),
(66, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-25 08:40:39', '2019-06-25 08:40:39', NULL, 'e13d618f-a903-42fa-845c-865b0abb1e8f'),
(67, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-25 08:40:50', '2019-06-25 08:40:50', NULL, '22cae76b-827a-4aee-bc6c-f0beac40ba98'),
(68, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-25 09:19:09', '2019-07-23 09:05:38', NULL, 'b2abdeed-6d04-4474-a5a3-8965a070dde4'),
(69, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '2019-07-16 10:14:45', '45e271f7-e5b7-4fa1-bfbf-609ccf2f6dba'),
(70, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '2019-07-16 10:14:45', '0be6e7dd-21cb-4a64-b53d-150348285601'),
(71, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '2019-07-16 10:14:45', '9048d575-60d0-454d-bdf0-d32fe2d8876c'),
(72, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '2019-07-16 10:14:45', '6b83e9d3-2397-424d-a548-23337814bbda'),
(73, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '2019-07-16 10:14:45', '7beac758-8947-4642-b894-d0520c408cf9'),
(74, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '2019-07-16 10:14:45', 'fb4d092b-3741-4e73-b2fc-66c579b8c46e'),
(75, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '2019-07-16 10:14:45', 'd70d5c9d-1937-4ddc-8153-f3293330a108'),
(76, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-25 09:44:32', '2019-06-25 09:44:32', NULL, 'df9f4412-144f-49eb-811d-5fd58554fa0f'),
(77, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-06-25 09:44:40', '2019-06-25 09:44:40', NULL, '800e2cf3-f29e-43c4-8620-39a349d8b7c1'),
(78, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-25 09:45:31', '2019-07-16 10:15:01', NULL, '550a2877-0faf-4bfc-af6c-e58ea0065e46'),
(79, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-04 14:25:46', '2019-07-16 10:15:01', '6173a75c-abd0-476e-b376-5c883d74a8db'),
(80, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-04 14:25:46', '2019-07-16 10:15:01', 'fa9fe219-e24f-4a1e-83dc-72d74821b998'),
(81, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '2019-07-16 10:15:01', '5742a80f-8c56-430d-9b0b-3cd498020001'),
(82, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '2019-07-16 10:15:01', '73282167-615d-4e45-b9d6-e55a0563bf55'),
(83, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '2019-07-16 10:15:01', '68bc05da-5ac3-4bdc-b407-b855b92cfacd'),
(84, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '2019-07-16 10:15:01', '83836480-fdaf-420d-bd98-216af4c29e9b'),
(85, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '2019-07-16 10:15:01', '9607b957-969e-4cbc-b583-55b3e8c55fe0'),
(86, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '0343e283-cba5-4a93-805a-efcdac7e0868'),
(87, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'c1116268-567f-4642-9d41-2b73961abfd2'),
(88, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'ba655d95-af5e-433c-b5eb-dc45bca3b018'),
(89, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '3d406812-d7a8-460e-a7f1-0404a623a5ab'),
(90, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '0a819cce-e020-4037-afb0-07ffa416e35e'),
(91, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '148b1b2f-5c81-44f7-9103-2665946c4c37'),
(92, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '05678f6f-ba4d-4c6c-bb79-e858dbc2fd5d'),
(93, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '299866d3-0283-482a-92bc-d8a11e39a379'),
(94, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:28', NULL, '37c09699-2708-4fbd-8abb-06703843f3fe'),
(95, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:28', NULL, 'cf8f874b-4e46-49e5-8b9f-fda6099cfd93'),
(96, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:28', NULL, 'e2faeb64-9bb2-4339-9608-e92a52d50ee8'),
(97, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:28', NULL, '8cba7130-4fe8-4619-8e97-5a879853c858'),
(98, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:29', NULL, '34a636ee-b66c-4754-bda3-604e6969995f'),
(99, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:29', NULL, 'b73ec5f3-7d0f-45c5-a75d-4f31d6190d9e'),
(100, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:29', NULL, '27909c4f-0a9f-4ac4-99fe-3b34cb3e410e'),
(101, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:29', NULL, 'e57e80b6-7170-4723-b008-8a80e8d64653'),
(102, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2019-06-25 14:00:05', '2019-07-29 13:40:33', NULL, 'e7e3fc41-304f-4454-8a54-fcb9f0f263b0'),
(103, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-26 13:02:37', '2019-06-26 13:31:03', NULL, '9327e890-5a29-40ff-a04a-e7dd06b2317e'),
(104, NULL, NULL, 20, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-01 09:55:13', '2019-07-01 09:55:13', '2019-07-01 14:22:52', 'cd57133b-9810-4af2-ae78-63411a6465ba'),
(105, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-01 09:55:13', '2019-07-01 09:55:13', '2019-07-01 14:22:52', '4922af83-6077-46d9-95ef-511a5d240c5f'),
(106, NULL, NULL, 20, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-01 13:02:46', '2019-07-01 13:02:46', '2019-07-01 14:22:52', '2f8ac449-54c1-412c-a266-5e90183225a5'),
(107, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-01 13:02:46', '2019-07-01 13:02:46', '2019-07-01 14:22:52', '392d623e-3e21-40a8-90d3-06db6fbe4268'),
(108, NULL, NULL, 25, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-01 15:30:12', '2019-07-01 15:42:13', '2019-07-02 13:06:34', 'd981618e-9508-4629-ba30-c2ede9ab6d08'),
(109, NULL, NULL, 24, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-01 15:30:12', '2019-07-01 15:42:13', '2019-07-02 13:06:34', 'a9a30a90-cf1f-49ea-8f50-6b8eef53931c'),
(110, NULL, NULL, 24, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-01 15:30:12', '2019-07-01 15:42:13', '2019-07-02 13:06:34', '044f7c94-ec89-4439-8d47-dbbdbd8aef93'),
(111, NULL, NULL, 41, 'craft\\elements\\Entry', 1, 0, '2019-07-04 07:47:30', '2019-07-04 07:47:30', '2019-07-04 12:54:27', '11f787a8-e5d9-48dc-a4a5-af6ed9ba9f44'),
(112, NULL, NULL, 35, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-04 07:47:31', '2019-07-04 07:47:31', '2019-07-04 12:52:50', '76e84a23-4276-46e8-8ac9-2673b32479f7'),
(113, NULL, NULL, 41, 'craft\\elements\\Entry', 1, 0, '2019-07-04 08:02:41', '2019-07-04 08:02:41', '2019-07-04 12:54:27', 'ee1a32c4-890d-4db9-8d55-b2d393d8e929'),
(114, NULL, NULL, 35, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-04 08:02:42', '2019-07-04 08:02:42', '2019-07-04 12:52:50', 'bf0bf174-ddf5-4e44-8b2f-f08e4c0554f1'),
(115, NULL, NULL, 35, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-04 08:02:42', '2019-07-04 08:02:42', '2019-07-04 12:52:50', 'a08cae2c-5edb-4eaf-a2fa-11689726dd13'),
(116, NULL, NULL, 35, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-04 08:02:42', '2019-07-04 08:02:42', '2019-07-04 12:52:50', 'e3a64a77-1814-4a62-a375-97dcc5c0020c'),
(117, NULL, NULL, 35, 'craft\\elements\\MatrixBlock', 1, 0, '2019-07-04 08:02:42', '2019-07-04 08:02:42', '2019-07-04 12:52:50', '8f7bb65e-7b37-467d-af81-421bf833946e'),
(118, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-04 13:32:41', '2019-07-04 13:32:41', NULL, '8fe21d43-cc39-4b8d-9379-553be14721ce'),
(119, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-04 13:35:34', '2019-07-04 13:35:40', NULL, 'c6376ced-b33a-4c0d-895c-4b54fbc7e188'),
(120, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-09 12:28:08', '2019-07-09 12:28:08', '2019-07-09 12:37:56', '1aa99ce5-99fb-4f25-b81d-4f0d831857ef'),
(121, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-09 12:35:23', '2019-07-09 12:35:23', '2019-07-09 12:37:56', 'b7b581ff-9d81-44fc-9e14-36f14a052d0d'),
(122, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-09 12:37:31', '2019-07-09 12:37:31', NULL, '84bc8c95-be2f-4685-9a7e-956e6b303363'),
(123, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-09 14:22:23', '2019-07-09 14:22:23', NULL, 'b3de31c1-9aa4-4545-88c9-41de8256f448'),
(124, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-15 12:59:04', '2019-07-15 12:59:04', NULL, 'd637602a-cfa0-4c99-967c-fd682ae8cc21'),
(125, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-15 13:03:19', '2019-07-15 13:03:19', NULL, '87d48d09-4a5c-4602-ae73-985d3cd90826'),
(126, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-15 13:10:48', '2019-07-15 13:10:48', NULL, 'c5e42429-2656-4ce4-9b86-b7d1cbfd0de9'),
(127, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-15 13:11:16', '2019-07-15 13:11:16', NULL, '63399273-8761-455e-9768-1a4370eec2ca'),
(128, NULL, 1, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-15 13:11:22', '2019-07-16 07:35:59', NULL, 'c1a6c33c-5faf-4c11-a835-d63367d7ca00'),
(129, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:35:59', NULL, 'b21a0d55-e2b4-4e1f-9b6b-6e70eb1b5c30'),
(130, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:35:59', NULL, '609c4415-de02-4e02-a7df-05d71d38a129'),
(131, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:35:59', NULL, 'ad1e4fcd-677c-47ef-aad2-892494f1de48'),
(132, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:35:59', NULL, '4f9f45eb-694e-4e67-9789-a425d04e0555'),
(133, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:35:59', NULL, '79b6147b-1268-47bc-acd5-73b0e5232303'),
(134, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:35:59', NULL, 'aed76e35-9f6e-40fb-b523-3247b165b543'),
(135, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:35:59', NULL, 'b132950e-a028-44a2-8e18-b5a266d8aaf1'),
(136, NULL, 2, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-15 13:10:55', '2019-07-16 07:36:00', NULL, '16958307-1f54-415f-9d04-35950de0a46f'),
(137, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:00', NULL, '8810d8e0-119c-4dbf-8f6a-b5da9a58a2a1'),
(138, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:00', NULL, 'f260ad6f-4ce0-4ad1-aed8-75a8fa7fe89c'),
(139, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:00', NULL, '22af1579-1491-4306-a4f8-dd73a9e3a406'),
(140, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:00', NULL, '774021e3-28b2-4988-aca8-75c3e34f9b0a'),
(141, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:00', NULL, 'a4ad7961-b485-4112-af17-a6bb094a3ea3'),
(142, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:00', NULL, 'ed5badd9-75f4-45e7-9a60-5a46ba4d2665'),
(143, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:00', NULL, '064d4714-07a7-434a-9240-58b4d5ab2f3f'),
(144, NULL, 3, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-15 13:03:25', '2019-07-16 07:36:00', NULL, '50b42058-9b4a-4256-9e14-2ab0eb61921f'),
(145, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:00', NULL, '352a8ec4-9a6b-4ff0-bfc4-60df72317491'),
(146, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:00', NULL, '8349c22a-e188-44e6-b239-4a1e1b4e4a83'),
(147, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '346e7206-5826-414c-abb9-ff7fa3c847e3'),
(148, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '2e2ab5e1-8252-4425-b6a2-526f77c8dde3'),
(149, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '8f80b4b6-9620-4956-8d22-ef37d3ba85c3'),
(150, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '003217b0-3f16-4d7d-a8b9-ddb6ae242de3'),
(151, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '03b0d1a2-4727-4043-9c02-fec56717a83c'),
(152, NULL, 4, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-15 12:59:17', '2019-07-16 07:36:00', NULL, '6b915b57-92a8-46bf-8e76-d27ba4e05ac0'),
(153, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:00', NULL, 'c89e4065-c0e0-485d-92a2-a1126f50516f'),
(154, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:00', NULL, '678869b4-f435-47fc-bb74-49f7e0b7490a'),
(155, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '766dfdd3-0ef9-4cf1-865c-98f8dff706e3'),
(156, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '34823306-cb6e-4e7e-9423-07e859d72c59'),
(157, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '531b2579-12f8-4cb3-956b-967d59db5ca7'),
(158, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '2997e8c8-a587-4fe1-af56-e67fca56d884'),
(159, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:00', NULL, '4a41cf99-3652-4dc2-b83e-0fd0c2b15183'),
(160, NULL, 5, 1, 'craft\\elements\\Entry', 1, 0, '2019-07-10 15:00:43', '2019-07-16 07:36:00', NULL, '8c223de7-2471-4f86-a523-71bf1ca3071b'),
(161, NULL, 6, 1, 'craft\\elements\\Entry', 1, 0, '2019-07-09 15:29:04', '2019-07-16 07:36:00', NULL, '0f6848e6-d5a5-4f05-a9cc-8e90225c2666'),
(162, NULL, 7, 1, 'craft\\elements\\Entry', 1, 0, '2019-07-09 15:24:45', '2019-07-16 07:36:01', NULL, '90de0c01-dbab-49f5-8865-b288c8d16807'),
(163, NULL, 8, 1, 'craft\\elements\\Entry', 1, 0, '2019-07-09 14:22:29', '2019-07-16 07:36:01', NULL, '510ac520-3121-458e-9534-7a8c06528a72'),
(164, NULL, 9, 1, 'craft\\elements\\Entry', 1, 0, '2019-07-09 12:37:36', '2019-07-16 07:36:01', NULL, '35413839-ddc3-4e90-9c03-b071a666c213'),
(165, NULL, 10, 1, 'craft\\elements\\Entry', 1, 0, '2019-07-09 12:35:32', '2019-07-16 07:36:01', NULL, '6e559447-03d0-4542-b8d0-be3a0bc4f3b0'),
(166, NULL, 11, 1, 'craft\\elements\\Entry', 1, 0, '2019-07-09 12:28:16', '2019-07-16 07:36:01', NULL, '575c55b5-0352-4c70-99e7-d816667e3012'),
(167, NULL, 12, 1, 'craft\\elements\\Entry', 1, 0, '2019-07-09 12:26:05', '2019-07-16 07:36:01', NULL, '8d2f4d19-91bb-4159-b085-0fedf1caf518'),
(168, NULL, 13, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-04 14:25:47', '2019-07-16 07:36:01', NULL, 'd0fe3887-21cd-4ff5-9570-6e5e04c628b7'),
(169, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-16 07:36:01', NULL, '361c00cc-99ab-426d-8f3e-3cfeb7b5992a'),
(170, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, 'ad1ff1c4-9e44-43a6-adcf-52a6061d7765'),
(171, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, '1d5bb3b8-720c-46f7-aace-cc7d96ab68e6'),
(172, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, '487c4d7e-9f3b-49d1-9934-3ffd966ec880'),
(173, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, 'f18c6e3c-cd10-47bd-a633-29bf4ce5288c'),
(174, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, '971d324f-84e4-4d8c-a5e7-f17c9b121afa'),
(175, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, 'a6c5cfea-d29a-47ca-b46d-ee4d6f8b86eb'),
(176, NULL, 14, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-04 13:48:37', '2019-07-16 07:36:01', NULL, 'e3a41028-4f6f-4884-b750-d39223b89455'),
(177, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-16 07:36:01', NULL, '87fa274c-5ce4-4832-b6c2-74e5d5fda4c9'),
(178, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, '5006618c-d5fa-4583-aca6-f1fd926660c3'),
(179, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, 'c5d3869e-b131-4a41-9f79-69a5b4e28bcd'),
(180, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, '44fcfb21-318d-4cf9-ade4-c53973b301a9'),
(181, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, '9b754950-e790-4c79-a029-5ac1b9f0958d'),
(182, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, '88fd12b6-1fd9-4d32-ad06-36dcc5125a65'),
(183, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:01', NULL, '4200c346-13e9-49d4-9a8d-fbeb31b5d848'),
(184, NULL, 15, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-04 13:35:52', '2019-07-16 07:36:02', NULL, '8e543f6c-94cc-4ed8-8507-cb60d4146e63'),
(185, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-16 07:36:02', NULL, '88885103-51f2-401c-b9a9-87fd07a84212'),
(186, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:02', NULL, 'bdff0706-951a-4c2c-b4c6-1e265f3cb183'),
(187, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:02', NULL, '62c7e877-a783-460a-bbe0-52230715e397'),
(188, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:02', NULL, '643c34f2-9ab5-4295-9410-1aa762c4b914'),
(189, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:02', NULL, 'b5972b97-5a57-4e42-8dac-41eb7088a8e0'),
(190, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:02', NULL, '8b39cfb7-4eb1-4a8d-ae68-80b52db0d692'),
(191, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:02', NULL, 'fc0297f7-a8bd-4b8b-9604-ef6cb1b01647'),
(192, NULL, 16, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-04 13:33:42', '2019-07-16 07:36:02', NULL, 'ca536a98-f28a-4580-83a9-18ea4335de49'),
(193, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:02', NULL, '2a5a4dac-5048-44f2-82b9-b2d1f125571b'),
(194, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:02', NULL, '64515d17-bce0-4500-88fa-1a162a05f04c'),
(195, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '148a83fa-c298-48e8-a292-aafc40555c69'),
(196, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, 'd82a2912-0482-4a56-a1ae-a46cf95efa45'),
(197, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, 'b5573927-9cb5-4516-8007-a56da2918d33'),
(198, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '8eadcf14-1096-44b4-acb6-5541892192be'),
(199, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, 'cf306fdf-cbbf-453e-a254-a3865f7f547a'),
(200, NULL, 17, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-04 13:21:35', '2019-07-16 07:36:02', NULL, '9658948d-a150-4213-8170-80629fc3b806'),
(201, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:02', NULL, 'f0a9197b-2045-4006-81cd-d165072d9b58'),
(202, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:02', NULL, '458b5eec-061d-4e40-9f1a-607b2ba33ed8'),
(203, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '0d267369-a8ea-4763-89b5-a63c28202eb5'),
(204, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '8e5e7172-9fd5-4ec3-989b-2cf805fc5de0'),
(205, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '0f3da05d-62e3-4175-a4df-da558643b3a9'),
(206, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '36b149fe-4cc6-4f82-b8c1-b9b6e49395de'),
(207, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, 'a105e59e-c33f-47f8-b810-9ca95c1c14f1'),
(208, NULL, 18, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-02 13:27:29', '2019-07-16 07:36:02', NULL, '8ccbe9e0-68cf-49e5-a2fa-323318fee3c2'),
(209, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:02', NULL, '69f7ce36-b6c0-4a85-a4a2-bc039dcd8f51'),
(210, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:02', NULL, 'c4af8a86-19bb-4e01-ba3d-4fb7bd53836e'),
(211, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '80176b4a-10b2-42f9-a845-961e33de81dc'),
(212, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '67c4aa95-61ba-4540-88d0-5850b4524ed4'),
(213, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '204e6ce2-36c2-4274-8684-a412ea8e259c'),
(214, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '8d10baab-58a9-4005-9470-af0025c4fe00'),
(215, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:02', NULL, '86e6d02a-aa12-4749-8118-f6db02497d44'),
(216, NULL, 19, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-02 08:09:22', '2019-07-16 07:36:03', NULL, '47657ee9-9ffb-4cb1-b9dd-64ed0daeee6e'),
(217, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-16 07:36:03', NULL, '27ea1c42-1098-488a-bed1-44387ab5a1b5'),
(218, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:03', NULL, '0a04f588-1343-48fe-a512-81e5dc8dbed0'),
(219, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:03', NULL, 'e3701c97-54a3-4191-b733-2c9d4466ab31'),
(220, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:03', NULL, '2d884af7-e41d-42b1-87d9-62b086dd267f'),
(221, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:03', NULL, '1a4fec2c-7e28-42c4-9b9d-2aab4af65dad'),
(222, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:03', NULL, '2c847ef8-d030-435c-a476-3092e0ba7702'),
(223, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:03', NULL, 'ca0b9613-cc19-4090-bce0-00cf1d96dd12'),
(224, NULL, 20, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-01 15:42:14', '2019-07-16 07:36:03', NULL, '71bb43c2-8b68-47fb-8d7e-a94ce626f73c'),
(225, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:03', NULL, 'd271dc0d-1dad-49ec-9cf6-b527adc74863'),
(226, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:03', NULL, 'b0cf3c4e-3f2d-4c40-9bf2-fc0847d81cb9'),
(227, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, '7a12bd2b-f19f-458d-856b-5cdac9798168'),
(228, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, '07387f8e-20b0-4e68-9417-896ed6cceffe'),
(229, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, '0d3b7227-be07-4093-8806-ba681e860789'),
(230, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, '0a5faa2c-31c8-463b-ae27-ac9e8a4e854d'),
(231, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, '0ecd04c0-b3d6-4ded-ba6c-9ac0033524c2'),
(232, NULL, 21, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-01 15:30:12', '2019-07-16 07:36:03', NULL, 'a583b27a-a10e-4b91-88db-a8cfe864d3e7'),
(233, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:03', NULL, 'eb0df06f-c745-4092-af5e-d54fbd9f5752'),
(234, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:03', NULL, 'a6cd6b98-f60f-41b5-9c30-05faa9ebe56b'),
(235, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, '202cbfa7-30fb-4ca7-8701-bb4190b80466'),
(236, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, '0e3c9de3-de79-4b9a-afd4-2e3a384af29f'),
(237, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, '957c06e5-5222-40d5-b342-38786832bda4'),
(238, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, 'f1700627-9280-4726-94f8-2e8d17eeb007'),
(239, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:03', NULL, 'd77b5478-c262-4272-9792-ae0af7fab804'),
(240, NULL, 22, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-01 13:03:54', '2019-07-16 07:36:03', NULL, '3a7e1ae5-a76b-4202-a39f-6e97f28e847b'),
(241, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:03', NULL, 'da830f11-0e9c-4bd5-b42a-540582cc7d9a'),
(242, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:03', NULL, '2d07c6f8-82f0-47df-b4be-fe8b654b6859'),
(243, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:03', NULL, '2a6a9b22-e73e-48b1-a50f-250cdb48e61e'),
(244, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:03', NULL, '33427ae4-3d6a-4ff2-873e-be70131d29a7'),
(245, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:04', NULL, 'aaf2e928-7c26-40c3-890d-8ecf28edfaf8'),
(246, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:04', NULL, 'ddc2a87c-5555-470e-8194-cf67c563087e'),
(247, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:04', NULL, '6669fec0-9e2b-43df-95a1-b75f9d7f2a05'),
(248, NULL, 23, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-01 13:03:31', '2019-07-16 07:36:04', NULL, 'c1e6f7de-1177-4539-b43e-5add39a7bc11'),
(249, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:04', NULL, 'f0f72d05-c772-45f5-bcf4-f3555a91412a'),
(250, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:04', NULL, '31476bc1-2db7-4a63-913c-d6594305df44'),
(251, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:04', NULL, 'd14100d1-bda9-4155-bb58-bc223960d840'),
(252, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:04', NULL, '4b968151-c96a-44b6-afca-123ef4d0ecb5'),
(253, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:04', NULL, 'a47a5cdc-a104-4de4-a37f-6fceb2a00ae8'),
(254, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:04', NULL, '05a3eba9-6191-4a7f-a8d4-ed44f4c9c607'),
(255, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:04', NULL, '6fc8929c-ecd8-4357-b61c-7814a86956cd'),
(256, NULL, 24, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-01 13:02:46', '2019-07-16 07:36:04', NULL, '35dd5a84-8bfc-44fb-884c-fd10bdd0e2ed'),
(257, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-16 07:36:04', NULL, '3839fb80-bc7b-44f2-ba49-b5437529fa9f'),
(258, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:04', NULL, '4afb8aa0-c818-436c-be0c-c7bb46244504'),
(259, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:04', NULL, 'd170ad44-623c-47c3-b618-d2538a90fdf3'),
(260, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:04', NULL, '8da5cb08-e226-43f2-bce0-c179436ba960'),
(261, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:04', NULL, '23da7716-b114-4dd6-8f97-42fb8c4f01e1'),
(262, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:04', NULL, '2469e71e-8e67-475d-b4ee-458af993403a'),
(263, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:04', NULL, '6e039ae1-7cc9-4836-b24f-27483f2636fe'),
(264, NULL, 25, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-01 09:58:07', '2019-07-16 07:36:04', NULL, '0a329bf7-4aea-4923-a2ce-0c6859be3d28'),
(265, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:04', NULL, '09283834-0984-4b4b-bcdb-07ae82708d00'),
(266, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:04', NULL, '50452f1b-19c5-458b-a365-d232a9bfeda8'),
(267, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:04', NULL, '5f96d0e6-4601-4866-90ac-2bce17d7616b'),
(268, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:04', NULL, '2260d9ea-c49b-492f-a996-af86939ff9d9'),
(269, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:04', NULL, 'b2b3d89f-1ad9-4f2b-8df5-a2cde806c92c'),
(270, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:04', NULL, '2950f82a-5a0a-4116-a77f-ac560daf5b07'),
(271, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:04', NULL, '7fab6e58-cf1c-4075-9b68-c8323efb9d0e'),
(272, NULL, 26, 22, 'craft\\elements\\Entry', 1, 0, '2019-07-01 09:55:13', '2019-07-16 07:36:05', NULL, '44e71918-5ce3-4a4f-a32b-12bd5fb9414e'),
(282, NULL, 36, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-25 11:21:29', '2019-07-16 07:36:06', NULL, '5e141406-ae77-49d9-8d84-15bf2b2fb988'),
(283, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:57', '2019-07-16 07:36:06', NULL, '7bbda7d4-ee49-4fce-b019-eeb6d46422ec'),
(284, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:17', '2019-07-16 07:36:06', NULL, 'bdec8724-f6c3-4c3a-8a63-3a9c59b2c21d'),
(285, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '09d04289-670d-4312-ab40-d3422542d4f4'),
(286, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '077b8772-1348-475f-b949-de5d6234f281'),
(287, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '0b67658c-727b-49d1-86b9-acf1504c21de'),
(288, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:06', NULL, '27945757-370e-48c9-9222-04ce84247982'),
(289, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '8bea5b8b-eaea-4252-8fe8-14806bcb2598'),
(290, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '76502eb9-c064-4f22-ab13-0bf99261c379'),
(291, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '990d71d0-551b-4191-8e7d-67d2925b3a2c'),
(292, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '05fc76b3-1294-4058-a2c6-6081b23e477b'),
(293, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:06', NULL, '5a24f9b4-0aeb-4c58-93dd-70a1f519b0bc'),
(294, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '2305b8ee-623c-472b-9c3a-6ca4788d934a'),
(295, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, 'd994db5a-1912-4b7b-a114-e5b27d944eef'),
(296, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '5e5f7b46-6c2a-4df9-9d41-95fc6b41ed08'),
(297, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '3e5e31f4-80a0-4401-8413-620f5916134f'),
(298, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:06', NULL, '68e7980a-f262-4c11-90f0-1f46ce57f095'),
(299, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '0a084560-fa38-431f-b8d2-d41e21c0a2b1'),
(300, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, 'ab3e7f92-984e-49d6-9be7-8089c0cca992'),
(301, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '85d25363-c1cd-4b11-aae8-b5bf9f7ce8cc'),
(302, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, 'a088eea4-fd04-476c-b127-185e6a1b980b'),
(303, NULL, 37, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-25 09:55:03', '2019-07-16 07:36:06', NULL, 'c0d1ecc0-4cd2-49b1-8a23-ccc6ffbaef26'),
(304, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:57', '2019-07-16 07:36:06', NULL, '50f66a59-7a20-4aff-9819-c2c117769636'),
(305, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:17', '2019-07-16 07:36:06', NULL, '63506dbb-f6b6-45f8-a244-d41f959f5f0d'),
(306, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '67ec8c0f-0a60-4835-b99e-4409e336cd58'),
(307, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, 'da434ee8-be58-4455-9136-9b514ec8b0c0'),
(308, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '0f71612d-ccfd-4b38-a5f4-d504ce195395');
INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(309, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:06', NULL, '77bdbd0a-3d2b-485b-b7d1-5665a26dce23'),
(310, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '792f6e74-3433-497a-8342-71f1ecd98db8'),
(311, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, 'f912c599-f35d-4fd0-80be-cc8abc66d884'),
(312, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '6b038f00-f9b1-4758-96fc-8e4804f36548'),
(313, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '8336f5cc-6b3c-4229-b46b-b51709657be6'),
(314, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:06', NULL, 'fc237a48-726b-4107-9374-05ee9bf9ef7d'),
(315, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, 'e4c5e25f-6ad3-4def-ae23-dce126cdb44a'),
(316, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '45198ee3-eff2-4541-973f-2fddf7d8e379'),
(317, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '09cfdfbc-19d4-45c7-9649-14a7a8e968d5'),
(318, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '68fd34ea-8f28-45a6-a0ad-5f0294761e0f'),
(319, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:06', NULL, '9ebc91e0-9b38-4396-be40-6db42043e60f'),
(320, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '48142636-a685-4961-b19b-b173206f519e'),
(321, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:06', NULL, '5a32a986-d212-4fa2-9ba9-62452857417a'),
(322, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '6d8126fc-ce09-422b-83d3-2cf24d05442e'),
(323, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:06', NULL, '7a8f08ad-ac9a-4f95-9fd5-d5d7940d06e1'),
(324, NULL, 38, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, 'bb84e5a9-2a63-4e44-bdc2-7944fd2b0340'),
(325, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:07', NULL, '6bab8b8a-414a-4894-ab7e-83baf8a8ce4a'),
(326, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-07-16 07:36:07', NULL, 'b4b0066c-e3c7-4bd5-8bf4-eada5bb4c6e1'),
(327, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-07-16 07:36:07', NULL, 'a0c754ca-2ebd-4d6c-b9f7-1d791a803c1b'),
(328, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, 'e2b43a70-3388-4eaf-9e7e-8fcb2db32336'),
(329, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, 'f72fa1ee-9b5a-4a1d-9f5f-51f0bfddb93e'),
(330, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:07', NULL, 'ff4b4dec-a7cc-4f41-b5d5-94793f84c4bf'),
(331, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:07', NULL, '051fa389-a968-4d0d-9146-d062c7327c54'),
(332, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:07', NULL, 'bf10af2b-0891-496f-acca-d85223682bf7'),
(333, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, '80d858a0-f92e-47e4-869d-685ee148b8bb'),
(334, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, '36484c10-027c-4d6a-813b-7eddd997c674'),
(335, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:07', NULL, 'f7a1f550-f6e9-4897-bd70-a035d41daf1d'),
(336, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:07', NULL, 'ffcd626c-7116-4567-bddb-2ff63ee2c6f8'),
(337, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:07', NULL, '529fa4cd-2b37-44e3-b9be-b5a99ed16972'),
(338, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, '29786f62-6940-4404-a2b7-ceaefa7b0774'),
(339, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, 'afb8cb51-f3f4-4562-840f-a3e17cc12131'),
(340, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:07', NULL, '9571d302-f5d8-4b92-ac5c-68d4751d4c32'),
(341, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:07', NULL, 'd1c1fe4f-506c-4459-b9a8-a060e895708d'),
(342, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:07', NULL, '5a909d53-db63-40c7-9168-48976f0407b0'),
(343, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, '2c69edea-2216-4f4a-be00-dbd4ccaee6c4'),
(344, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:07', NULL, 'd9183605-5157-4375-b2f6-0096d8feca15'),
(345, NULL, 39, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:07', NULL, 'a4762cd0-dd25-48dd-8d38-9f94eaa4ddd6'),
(346, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-16 07:36:07', NULL, '786e2167-868b-4cb8-bf96-6b251812d37e'),
(347, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:07', NULL, '19a3b64c-cfd4-40b9-b02b-c611fc0ee9b1'),
(348, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:07', NULL, '988811a8-6929-4050-a177-8efa0f46662e'),
(349, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:07', NULL, '10eb98e7-423a-4b47-9fb4-8dc32f1452bb'),
(350, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:07', NULL, '998d060a-0ebc-4270-8667-894e6b268f3b'),
(351, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:07', NULL, '0c8df504-dd4d-4ae1-97cc-259737e6dc50'),
(352, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 07:36:08', NULL, '48384ab2-68e0-414d-bb67-dd0b397378b1'),
(353, NULL, 40, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:08', NULL, '0e249718-8691-43cc-8ba4-11c51a9ce959'),
(354, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:08', NULL, '5bf23c9a-fdd8-4512-8df9-09af201b72d5'),
(355, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:08', NULL, '3a98797c-a1ac-46dd-aa25-028377827845'),
(356, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:08', NULL, '10fafe46-545b-4ab0-8d1c-54236ff09137'),
(357, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:08', NULL, '626c5d29-8dcd-46c3-a1a5-4b01293349c1'),
(358, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:08', NULL, '424398c2-f02b-43ef-aa66-949539707f98'),
(359, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:08', NULL, 'f81ab65b-5dd5-42b1-b1b7-35c6d74f27eb'),
(360, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 07:36:08', NULL, 'f1d5ebd6-a248-4dcc-adb5-acd250b9b1bf'),
(361, NULL, 41, 1, 'craft\\elements\\Entry', 1, 0, '2019-06-20 13:04:54', '2019-07-16 07:36:08', NULL, 'b2ca0239-81bc-4e36-9e02-af220ec51406'),
(362, NULL, 42, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:08', NULL, '244d7fcf-6f22-409d-9053-96935baf0333'),
(363, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:57', '2019-07-16 07:36:08', NULL, 'f27ab2dd-3cab-4b06-87bc-038a2413a72a'),
(364, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:17', '2019-07-16 07:36:08', NULL, 'a2b546a5-b9d5-4ff4-9851-affe1ea3526c'),
(365, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:08', NULL, '4b99469a-c4f1-4ca8-a6ac-82c194f770e7'),
(366, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:08', NULL, '7c3c8ce7-ab9f-4990-8f5c-dfb5ee10faba'),
(367, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:08', NULL, 'c1614335-3199-441c-971a-878f22c28b5a'),
(368, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:08', NULL, 'e442bf7e-3191-427c-ba3d-f0dc7d346770'),
(369, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:08', NULL, '7c4b49db-b922-4e26-a1e2-1676a01fec15'),
(370, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:08', NULL, 'fe98abe6-9dd7-4c46-a6a2-1c76abdc9d2a'),
(371, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:08', NULL, '704d0545-04d5-4a6e-a85c-a5aa31106cc2'),
(372, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:08', NULL, 'c994c150-21c9-4e48-b237-585654a95451'),
(373, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:08', NULL, 'c5bb6b22-8f4c-41e4-bfc4-6e497b9c8a37'),
(374, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:08', NULL, '8f7b0561-a6d2-4eeb-bb78-d37ad4a072d7'),
(375, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:08', NULL, 'b33763dc-9e0b-413e-b24c-c2de83285c4c'),
(376, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:08', NULL, '20205a17-524e-4729-9661-7bf06c04ee47'),
(377, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:08', NULL, '91c386ec-403e-458a-863f-10175f744c8b'),
(378, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:08', NULL, '563ff219-b9ab-4ec0-b1b6-b8d935991cae'),
(379, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:08', NULL, 'b374846b-e59e-437d-92f1-7a537637b409'),
(380, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-07-16 07:36:08', NULL, '6cbfdf3a-d4ab-4bb3-af13-d69bcfed6c93'),
(381, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:08', NULL, '30203eb3-dd7d-44fb-8f42-b7149304f1dd'),
(382, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-07-16 07:36:08', NULL, '7364b0e1-a2c7-4c51-b59e-864238c399c7'),
(383, NULL, 43, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-19 11:58:22', '2019-07-16 07:36:09', NULL, '7aa3f897-a48e-40d0-9493-d1b332e68763'),
(384, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:09', NULL, '591b79b9-b7d3-44ee-a77e-5d9f2f6398c9'),
(385, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:09', NULL, 'f2cc35ce-b227-4334-baf9-f433c5bf86bf'),
(386, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, 'db040c68-96bf-41ac-ac30-3197ff4f72d3'),
(387, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, '3113cdcb-eeb8-4fda-a036-11c54e0c75a9'),
(388, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, '27eb9e04-7de8-4f0a-a687-399ea8196f00'),
(389, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, '86b422da-d9e7-4c5d-b6e2-93311f3f30d6'),
(390, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, '230ebf32-343b-4982-8533-a054703471a9'),
(391, NULL, 44, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-19 11:57:19', '2019-07-16 07:36:09', NULL, 'bde35058-7b3a-4217-b9cc-5a9e162a34eb'),
(392, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:09', NULL, '1e52d280-0fc8-429f-9d59-f0e2c064ca0e'),
(393, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:09', NULL, '66cfd4bd-bf1d-4214-87d3-0efb254b38d5'),
(394, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:09', NULL, '85e6903c-6c86-450d-8678-066d3cbe417d'),
(395, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:09', NULL, '6853ef12-8ff2-4c6e-87ab-a682fe3c6bc0'),
(396, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:09', NULL, '2a96020e-6bb6-436f-b959-0c8dee6bfb42'),
(397, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:09', NULL, 'a002e455-792c-4943-be81-2edef86802a0'),
(398, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:09', NULL, 'c6a01f13-b786-45a3-b05b-a3700c90a7cf'),
(399, NULL, 45, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, 'bf40f183-322a-4fb2-8fcd-b7e319f44a41'),
(400, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:09', NULL, '7df80ad2-1edb-437e-92ae-3c911aedda89'),
(401, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:09', NULL, '2a14fd4c-0ba3-463e-8b30-9bca5bd47f2b'),
(402, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, 'aa8ffbaa-d398-4536-b662-ff36d221c040'),
(403, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, 'ba308e43-c353-469c-83da-cb88016f5717'),
(404, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, 'f1a116fb-fb2b-4f03-8e60-ebbef377b35f'),
(405, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, 'd0cb2015-1cf7-4bb0-8ad2-79b39c678291'),
(406, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:09', NULL, 'debe5f2a-815c-47af-bf76-b2bca4aa2083'),
(407, NULL, 46, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-19 11:54:18', '2019-07-16 07:36:09', NULL, '8622a773-d910-42bd-895e-c54a8db3df0f'),
(408, NULL, 47, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-18 15:23:01', '2019-07-16 07:36:09', NULL, 'fa76d035-854d-442d-add3-ec8a9ca0dc3b'),
(409, NULL, 48, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-18 15:22:35', '2019-07-16 07:36:09', NULL, '10e9db52-a10f-4505-aa85-b1899417d3fb'),
(410, NULL, 49, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-18 15:22:24', '2019-07-16 07:36:09', NULL, '58b98983-dc93-47c2-b7d0-9906f0d44c5e'),
(411, NULL, 50, 22, 'craft\\elements\\Entry', 1, 0, '2019-06-18 15:22:13', '2019-07-16 07:36:10', NULL, 'be00b75b-efad-4ef1-b972-c41f61ed27b5'),
(412, NULL, 51, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:10', NULL, 'f88f4b3e-8d26-4288-abb7-e5e8084db3f1'),
(413, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:10', NULL, 'bc594cb4-fd03-4bd2-9a4f-37eb2e7579e6'),
(414, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-07-16 07:36:10', NULL, '3bd4ab61-c0eb-4b9d-a821-829b71b01ef8'),
(415, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-07-16 07:36:10', NULL, 'dda8fd28-ab5d-417b-bfc8-f58b67ceca19'),
(416, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:10', NULL, 'dd43c280-db8b-4c3f-87ab-2628cfe350e1'),
(417, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:10', NULL, 'b2b78309-6ca4-4702-8db7-a1ec24dc1b16'),
(418, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:10', NULL, '8e920d8e-4f08-4376-88ab-4895f528da0d'),
(419, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:10', NULL, '162dbda1-b5c2-414d-809e-9c335c6b15f8'),
(420, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:10', NULL, '439f2f50-f08f-4b8e-8f2b-514fb0d4605c'),
(421, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:10', NULL, 'f236602d-7a3a-406e-ace6-82bebec86746'),
(422, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:10', NULL, 'f9feaab0-74e9-4228-b5b4-5ffcbac57d12'),
(423, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:10', NULL, '0d918e2e-fc52-4dd5-84be-0d95f33eb15d'),
(424, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:10', NULL, 'acd0debe-0ea9-4596-a336-79020f58a888'),
(425, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:10', NULL, '897ff826-7064-447f-bd58-6ade3a5f713b'),
(426, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:10', NULL, 'bace45a2-7a79-4164-995e-d76b2f1535b2'),
(427, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:10', NULL, '5390dba4-3677-4e44-81f5-a77f98cde97b'),
(428, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:10', NULL, 'a7e0d3b4-a495-4efd-9333-5be277bf2c80'),
(429, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:10', NULL, 'a862a165-7919-47fd-9f23-752af1f91bc8'),
(430, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:10', NULL, '53757418-5607-49ba-9cb7-88d7dc5790f5'),
(431, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:10', NULL, 'fa101387-1f95-4411-a97e-ac06d25b12f2'),
(432, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:10', NULL, '13fccd9d-2d14-4773-b85a-76de1e37d89c'),
(433, NULL, 52, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-18 13:12:04', '2019-07-16 07:36:10', NULL, '8709b9ba-98d1-405b-a63f-fe19a34d6dc8'),
(434, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:36', '2019-07-16 07:36:10', 'a31d886e-9489-4dc4-b781-3d24a0b55aab'),
(435, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '359cc939-04ec-4117-b737-71e152c0a883'),
(436, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'cca18021-f6cf-4f9b-baa6-794d1b20e887'),
(437, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'c3860cc8-9933-40c9-8c37-f0a3ded655b9'),
(438, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '55235586-2761-4c03-a0a4-468a8571cf3c'),
(439, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'd4304526-b0e8-4a09-8453-062e8fa7304c'),
(440, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '0c28f459-99bb-4452-a5ef-c316b56c1fd0'),
(441, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'af4434f8-ea97-4f4a-b73d-00a7d2cb47e3'),
(442, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'a4dd0374-ba70-4694-9881-d3ed2ee59a29'),
(443, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'aab44802-61f7-41b5-95ca-d4568bef0f04'),
(444, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '17f7c266-db51-49f0-b517-5b4e0a57bfb6'),
(445, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'a7b4a38f-8771-4823-8994-14e4087c3036'),
(446, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '2694d959-9c97-4890-8272-1c6e35ad0c66'),
(447, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '8bc8d1fd-69f2-43bd-8568-2a91f1bb2420'),
(448, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'ac9cd151-9616-4163-b755-a846cfc84c88'),
(449, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '2019-07-16 07:36:10', 'c1748298-9058-4bd4-bd65-7c69c88fa208'),
(450, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '8d51d24c-bd97-4df6-a2a7-fa74f83ad684'),
(451, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '2b5063ad-6f33-4c36-a712-929d9fc7af94'),
(452, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '333d3c20-6458-4bd9-aed0-f0e4519f4ec4'),
(453, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:10', '051a833e-6a5c-4918-9d08-3c09bb0d1f44'),
(454, NULL, 53, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-18 12:50:42', '2019-07-16 07:36:11', NULL, '07cb9952-6243-4cc6-990a-af96dac284d7'),
(455, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:36', '2019-07-16 07:36:11', 'b45889bb-3a93-4de8-8881-7714e41d12c7'),
(456, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '2019-07-16 07:36:11', 'df634f76-9853-41b1-b90b-126d149f7545'),
(457, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '2019-07-16 07:36:11', 'b2f4806f-9f33-4745-9921-557222c3f247'),
(458, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '3d0538fe-c46c-422f-9848-358fb6357be9'),
(459, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '9164bec2-f0f5-4699-a187-7733fcdf57d9'),
(460, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '2bbd3043-29cb-4bc8-8b84-543b5d44206a'),
(461, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '3f815c5d-ae9b-4f41-afb1-5912f32c8849'),
(462, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '17f617fd-cc91-4811-891f-dd1e9be7765e'),
(463, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '5fdd5dae-d51c-4330-add4-e7c8d6282ccf'),
(464, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '87786857-5ace-49b5-a2ec-d2de64a66c6e'),
(465, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '505b4a6b-4ecf-4275-8f4d-1e8590176a92'),
(466, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '52c2ca56-214f-417d-8546-480eb3891e2d'),
(467, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '691fb366-da20-43ce-ae8f-76f2d16a3fa1'),
(468, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '9ada5e79-e23a-4e31-955c-832932b46463'),
(469, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '6820d5f5-dcfb-478c-863f-02067e9bb57e'),
(470, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '2019-07-16 07:36:11', 'd18dbb90-bf58-4246-8c7f-b264a2794ded'),
(471, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:11', '60ca0fc6-adea-4ed5-857d-e939cdf9b60c'),
(472, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2019-07-16 07:36:11', 'aa2f688c-2fa2-45f9-b74e-b6c18c8997db'),
(473, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:11', 'c47bface-067b-4fc3-bd9a-a0f93771e30f'),
(474, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2019-07-16 07:36:11', 'af34d0f6-1ad5-4cc3-a2f6-67f5c2cb4f30'),
(475, NULL, 54, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-14 14:15:58', '2019-07-16 07:36:11', NULL, 'ec79b987-09d1-4903-b4da-b0cf0b62bec9'),
(476, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:57', '2019-06-25 11:21:28', '2019-07-16 07:36:11', '53d68b83-5477-40ac-806b-d009a8675d4d'),
(477, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:17', '2019-06-25 11:21:28', '2019-07-16 07:36:11', 'da1f66ac-3bb8-4011-931e-c6ce63d42bb9'),
(478, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '2019-07-16 07:36:11', '3478ae71-c821-4c06-bc19-bf31310b46b6'),
(479, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '2019-07-16 07:36:11', '30f32946-889f-4e77-a4a4-d4c73099ef87'),
(480, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '2019-07-16 07:36:11', 'ad49f9ab-5f74-41b1-86ce-ac634ba0c6ba'),
(481, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-06-25 11:21:28', '2019-07-16 07:36:11', '9d4a9b26-9950-4ac2-ab8e-cd644220266f'),
(482, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '2019-07-16 07:36:11', 'c9290c93-fa86-4b75-a5d7-fc28ae63a928'),
(483, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '2019-07-16 07:36:11', '5c91b521-ccc3-4d47-b322-24fcfcb7a1b1'),
(484, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '2019-07-16 07:36:11', 'd44ea8c1-2ffc-4b3f-b4ab-8b663e3cb5e8'),
(485, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '2019-07-16 07:36:11', 'c4caf283-be2c-4d1f-a86b-7071227dac1a'),
(486, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-06-25 11:21:29', '2019-07-16 07:36:11', 'fed92ba3-c67e-4cde-b726-bc20b0e94a4c'),
(487, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '2019-07-16 07:36:11', '848d9c6d-eec8-41a1-941d-aae4f3aaa867'),
(488, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '2019-07-16 07:36:11', '531a2fb6-8a7b-4386-b640-04fc9e818950'),
(489, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '2019-07-16 07:36:11', '543ae8c0-a00d-4448-8f96-15d0299335d7'),
(490, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '2019-07-16 07:36:11', 'e49b2baa-8d70-41f5-9d02-1946e557cdda'),
(491, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 14:15:58', '2019-06-25 11:21:29', '2019-07-16 07:36:11', '4fb1da86-eff0-4fd7-890a-cfb2152ee865'),
(492, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '2019-07-16 07:36:11', '5266b479-c573-4e30-a00d-05fa4e17c5ba'),
(493, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '2019-07-16 07:36:11', '8656225e-ed8c-45a6-ba28-261d2a303d47'),
(494, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '2019-07-16 07:36:11', '63adc66b-c8cf-4fa2-a892-0d4ac5f924a9'),
(495, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '2019-07-16 07:36:11', '07572a1b-84c1-4da1-b697-b0237bdc0e43'),
(496, NULL, 55, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-14 13:49:45', '2019-06-25 09:50:36', NULL, '2cfd9312-a77d-4266-92fd-449db5e14383'),
(497, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:36', NULL, '19814be2-0607-4b3f-aab6-f8fa0e949f79'),
(498, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, '95444db6-a099-4506-8b9f-8abf540c53f0'),
(499, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, 'f9d4a09d-6412-4751-8381-b692bdf34122'),
(500, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'b75d21e9-3ade-485d-8015-6f303d5bd16d'),
(501, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '172998d5-a2f9-4df1-a89e-241d8512503d'),
(502, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '10de2a0d-1df4-4470-99fb-464ddc7ce08e'),
(503, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '60c2402c-a65e-421e-bb7e-b3b17a70a4d2'),
(504, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'a0991644-8cf4-4a54-8ff8-ffe4efac8533'),
(505, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '42257318-8785-4e50-afcd-a7b0325faae2'),
(506, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'b31fc4a1-8c0d-4467-864d-5996fe1ec65d'),
(507, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '79df2bac-4b84-4298-b2e8-2a0d15458d63'),
(508, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'd2971b3c-f9e7-4219-96d2-1fd2a4f22202'),
(509, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'eb7fd67d-b02f-4b8f-8e91-1e0b869a5a58'),
(510, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'c5ee84e7-ebe2-4ce7-9b94-16d1cb44f87b'),
(511, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '97fd9f68-a845-4a70-83b8-fd7075ebd48b'),
(512, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, 'de9d7a18-8005-4dfe-bcb7-6c689e92dff9'),
(513, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'aeedfaf4-ee4d-4dec-ad49-ee6c045033dc'),
(514, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '7a95dcce-c496-4137-8799-72f536758d52'),
(515, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '369304cc-8856-4573-8160-608e3543b9e4'),
(516, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'f3471ba5-8ad8-4fb5-87d7-abaca1799aa2'),
(517, NULL, 56, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-14 13:48:41', '2019-06-25 09:50:36', NULL, '965756b8-ae27-4061-a622-7aecf1abf625'),
(518, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:36', NULL, '4a189a86-2b87-412e-a642-560a67fe7e64'),
(519, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, '790742d8-6c72-4729-a136-8d4acdca9590'),
(520, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, '4c9de4f5-01e3-49d9-946f-e6c241e2f6c9'),
(521, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '29b8a028-0b46-4f12-bfe4-c06af9bdcab8'),
(522, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'ad78b6f7-5b85-4dd0-99ac-b068a90825fe'),
(523, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, 'e917fa35-c838-4492-ae38-b3cdb551046d'),
(524, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '488486ef-ceb8-4f68-aae8-f4a8055de1d7'),
(525, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'e9d420dc-7d16-4cec-b9ce-22e430006d69'),
(526, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'ce8265ab-db63-4f36-9ba6-4270b468746a'),
(527, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '34fea70b-9bf3-41d9-99e0-af87881a5f29'),
(528, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '727f7c55-a0d1-4ba7-a77d-80c3ef39b212'),
(529, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '9b8b75d2-7c59-4f60-98db-e56f9463e49b'),
(530, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'cb6abfab-5323-410b-ac72-9de40812b001'),
(531, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '0128cdc1-d228-408a-a290-9d0d5098bde4'),
(532, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '4e98e407-191b-4fc5-a336-c5876455a084'),
(533, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, 'c46b0447-ff59-4b29-a617-c9e26d2291c7'),
(534, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '54adfd25-5b28-4f46-96dd-6d7a1b1fd481'),
(535, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '78fcbf71-947b-4038-a65e-b5914c509fc7'),
(536, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'cde879a9-9dcf-47a4-b013-1441b6f494f8'),
(537, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '1d809202-3cea-4dbf-af34-fd6efa0b3d31'),
(538, NULL, 57, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-14 13:09:18', '2019-06-25 09:50:36', NULL, 'd601122c-21da-445a-856c-8812f4895b2d'),
(539, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:36', NULL, '261ed8af-62e8-43df-b787-e5fb69c626b0'),
(540, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, '2da32ae3-c3c5-4962-992f-fac0f8db49ea'),
(541, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, 'd27335bc-938f-4113-bd5c-185c8b434215'),
(542, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '27e74941-4481-48e6-82f0-fbc727671c59'),
(543, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '677aa99e-4af3-4da3-9771-d296114c548d'),
(544, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, 'f80a3072-4db3-4a8e-a156-fd70eee2a9c7'),
(545, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '196aa869-3734-4e1d-bff4-7e2140d73073'),
(546, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '7e4eb25a-fff7-4ba1-aa20-689a97b7070a'),
(547, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'a56cbc1a-eba7-4c0c-b08f-25652c355d53'),
(548, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '0df16eb7-58f1-437f-991c-7158716349a5'),
(549, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '2ae0185f-7f41-430a-bf3a-115e75e3db3b'),
(550, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'de3eb88c-7e0c-4137-a4df-232265b4090d'),
(551, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '8fa95ec3-477b-40e0-9c3b-5a968629dfc0'),
(552, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '85250250-9d6f-4daf-a7ae-9e7d7cd55fe5'),
(553, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '7bb2085d-a26d-40f5-8ce3-ee477679785c'),
(554, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '159efcb6-056b-44a3-acd6-c426097985c3'),
(555, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '382cc03f-c57c-402f-a4b3-264080b8f218'),
(556, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'db97ee1c-8f3c-4771-9491-5432ed96f392'),
(557, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '8318860b-83da-49e5-95a4-47bc9160646d'),
(558, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, 'cf66433d-c6c3-4ba5-87d7-aa67681ae5ad'),
(559, NULL, 58, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-14 12:38:39', '2019-06-25 09:50:36', NULL, 'b1fe15b7-157c-41d8-822e-a3b24352dbe7'),
(560, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:36', NULL, '0c177cb7-4803-4aae-9c64-26af5cf08da6'),
(561, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, '56410ab1-be45-49fd-9d4f-78aed979704c'),
(562, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-06-25 09:50:37', NULL, 'fa9d4774-6690-49ee-94c5-3b5c99d3ecd7'),
(563, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '02707e73-06d7-4a11-befe-9bc5cf5c9317'),
(564, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '55c8bb82-021c-4c70-907d-12c63beea2c7'),
(565, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '5f8e38ee-cabc-4178-b52d-0f6ed45075d4'),
(566, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '64cf3c1e-b2bc-4659-88bd-8287695c9586'),
(567, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'c0cfa7f4-846b-4c76-8bdf-aff04c015d47'),
(568, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '171da9e0-600a-4882-841b-9a048f1922c6'),
(569, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '13bc272e-cd9e-4063-aad9-20f95001034e'),
(570, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, 'fae89e08-dd6f-4461-aa33-b1e5504f62b1'),
(571, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '7f375c80-0ead-483d-bde7-b3534e45952f'),
(572, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, '9d395a56-fe1c-4b64-9261-aace5c52417f'),
(573, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '1c734719-ed6a-4c0f-80f8-1c84886afec8'),
(574, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '1fd2f2d9-784b-4bca-98c1-256523b14808'),
(575, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-06-25 09:50:37', NULL, '36f4fc0d-6f6a-4da5-8d07-c39a312460b7'),
(576, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'fa9c4f40-8afa-4eeb-9170-8c660d90675d'),
(577, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-06-25 09:50:37', NULL, 'd99a4537-dc45-44a9-b8ab-6e31d13673e6'),
(578, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '533731f8-4614-4b49-98e3-800289e09762'),
(579, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-06-25 09:50:37', NULL, '1fa2ea11-56d5-4ee6-9207-673ab412cbf7'),
(580, NULL, 59, 12, 'craft\\elements\\Entry', 1, 0, '2019-06-14 11:59:26', '2019-07-16 07:36:13', NULL, '5b013b86-5f4a-445a-91b3-6a3fbbacb373'),
(581, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:13', NULL, '87338643-804c-4cf5-a1e0-aad523ccd2b1'),
(582, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-07-16 07:36:13', NULL, '9b0ff980-e9de-40d9-8608-fa4fac4abd57'),
(583, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:12:03', '2019-07-16 07:36:13', NULL, '34beb6fc-329b-47d3-b664-d403b8d0b45e'),
(584, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:13', NULL, 'e5c7da6a-fb1b-4dce-81bb-74edbb1ba5c9'),
(585, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:13', NULL, 'a40e37d5-447c-4345-aad6-f7d7e94d1b1d'),
(586, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:13', NULL, 'cfd26ea6-8f9e-4476-aa73-d5fc25d15d1c'),
(587, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:13', NULL, '08013c7f-2633-462a-ba54-6fe9ac633d5a'),
(588, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:13', NULL, '8368cdb5-de89-4524-893e-fcb482f0a52c'),
(589, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:13', NULL, '571d7935-ceff-408c-8659-2d526eea3e16'),
(590, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:13', NULL, 'efbcfe94-c5c7-4587-92d2-729f85b74882'),
(591, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:13', NULL, '537f1761-9ef5-4a4e-8f43-3affac90f49c'),
(592, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:13', NULL, '1f3c1ccf-3eef-4347-ac77-14d4465ba10b'),
(593, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:13', NULL, '47d7ffae-191e-4bb3-a3a1-9091f8683f38'),
(594, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:13', NULL, '442d3d9c-8cb4-4722-9e13-35eac45da12e'),
(595, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:13', NULL, '05929abd-5b94-4782-9395-e8c6afc0af8a'),
(596, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-14 12:38:38', '2019-07-16 07:36:13', NULL, '2da7c09f-dd8a-4b5c-9a08-54bfa1244eea'),
(597, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:13', NULL, 'df90a317-eb50-40fe-91af-2504dcef51ea'),
(598, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-18 13:24:24', '2019-07-16 07:36:13', NULL, 'f5dde2fe-6936-4963-a02e-dc5d2faab21f'),
(599, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:13', NULL, 'e70043fd-0e15-4361-9483-4837c830242c');
INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(600, NULL, NULL, 13, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:50:37', '2019-07-16 07:36:13', NULL, '66ad20aa-3158-4156-8a2f-2bec13547225'),
(601, NULL, 60, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-14 10:04:58', '2019-07-16 07:36:13', NULL, 'a4d69522-58fe-4ce9-90d2-265ea4ea3436'),
(602, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:13', NULL, '90cd5dd7-6e2d-4006-a653-721feb9f936e'),
(603, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:13', NULL, '72e69843-5c80-4de3-ae01-64eb83779745'),
(604, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, 'cc48cc15-72fd-4674-a2c1-a59ee687e2d0'),
(605, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, 'a2580b78-5172-4796-a55f-6af405d07ec9'),
(606, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, '3e81702c-f77a-49fd-a9d3-aba0639b78ab'),
(607, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, '95f51a42-d747-42a0-85a2-031a568abc47'),
(608, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, '33b62a64-e904-42d1-9bbc-034f32dfe7b9'),
(609, NULL, 61, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-14 10:02:56', '2019-07-16 07:36:14', NULL, 'e971bba0-21ec-4718-9d8e-9a7dabfe123a'),
(610, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:14', NULL, '2e1663a9-5be8-4c2e-8d30-92d0c16aaa67'),
(611, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:14', NULL, '72c18920-c8ed-4236-93f4-3048e0a02ac3'),
(612, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, 'd9b2ffc3-77c4-4128-b551-3362ebbc8745'),
(613, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, '81052e26-9a61-4d6a-a4cd-7429a92ac9ac'),
(614, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, '49e09152-0359-4da1-907c-26dd3593298c'),
(615, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, 'b3b7570d-edfd-47de-8388-72be3ee8b644'),
(616, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:14', NULL, '1d57c543-3c4a-4d6e-91ac-ff1306b89716'),
(617, NULL, 62, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-13 13:51:09', '2019-07-16 07:36:14', NULL, '310c3e5d-6c77-4a75-8b73-ba092e370e7b'),
(618, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:14', NULL, '1994060a-7564-4a34-923a-674234b3cedc'),
(619, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:14', NULL, '245a9cc4-24ee-4598-9b6b-fb93eb117157'),
(620, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:14', NULL, '9864ca17-65bd-43dc-8805-1e8be9149487'),
(621, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:14', NULL, '7bb2b66a-ccb6-4b13-a15e-83f0bba5fd38'),
(622, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:14', NULL, '649b0c45-265f-451c-ba78-62dadbfb20b4'),
(623, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:14', NULL, 'fb062cd6-68d0-4ab7-ae28-20041408b782'),
(624, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 07:36:14', NULL, '2f8aac7d-cb5a-4740-a788-9771c62093d6'),
(625, NULL, 63, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-13 13:30:30', '2019-07-16 07:36:15', NULL, '8a1348a2-ab2c-4658-ae0d-aee1330ebcb6'),
(626, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:15', NULL, 'c2e9ca2d-21e0-43a6-af1d-8adff28e91b5'),
(627, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:15', NULL, '9cce8fdc-ff9b-4efb-b8be-cacd00284aff'),
(628, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, '40b7161e-a22c-4113-8474-212b90310389'),
(629, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, '54f91c1f-12a2-4993-9644-b5536eeaf2fc'),
(630, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, '880c923b-ef3b-4510-b5d8-726820f4eb45'),
(631, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, '86b441da-a6dd-4ae4-90f3-ccba44dcc67e'),
(632, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, 'bebbdfbf-f0f3-4caa-9336-59c4a2ce82aa'),
(633, NULL, 64, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-13 13:16:38', '2019-07-16 07:36:15', NULL, 'ae6e9e5b-2b6b-44d7-8be9-c8397ce69c2b'),
(634, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:15', NULL, 'a3d44a5d-0cac-46fa-b308-72699eea9732'),
(635, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 07:36:15', NULL, 'eff76870-b27f-44d0-bec6-299995192302'),
(636, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, '7567d61b-53a8-4ffe-b155-e8e5a2ac13d3'),
(637, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, '0c08bc8f-d4a3-427b-a3b2-040da2af02c7'),
(638, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, '70e84ba1-eecc-4715-a9f2-f44bdf2f8056'),
(639, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, '00d34215-128a-48e8-9779-f27027287f99'),
(640, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 07:36:15', NULL, 'f68edbb1-b0db-4ee0-8f87-097eca42afd5'),
(641, NULL, 65, 1, 'craft\\elements\\Entry', 1, 0, '2019-06-12 12:03:19', '2019-07-10 15:00:42', NULL, 'a3508dc6-9cd3-45f1-ba52-ad924a18cc80'),
(642, NULL, 66, 1, 'craft\\elements\\Entry', 1, 0, '2019-06-12 12:01:42', '2019-07-16 07:36:15', NULL, '1ce8d4ae-b123-4779-831b-a5a12022e2a5'),
(643, NULL, 67, 1, 'craft\\elements\\Entry', 1, 0, '2019-06-12 09:21:56', '2019-07-16 07:36:15', NULL, 'b688908a-296b-4bb8-b693-5471a042e45a'),
(644, NULL, 68, 1, 'craft\\elements\\Entry', 1, 0, '2019-06-12 08:09:36', '2019-07-16 07:36:15', NULL, '0a424d63-c2f6-45a7-a0f3-188ca015d37f'),
(645, NULL, 69, 1, 'craft\\elements\\Entry', 1, 0, '2019-06-12 08:09:35', '2019-07-16 07:36:16', NULL, 'd546f8a7-c94f-4a49-b477-cd5b24e04835'),
(654, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 10:14:07', '2019-07-29 13:35:27', 'bd63a1e7-e653-4b22-9211-d816f6118859'),
(655, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 10:14:07', '2019-07-29 13:35:27', '938832b8-ebb7-4838-8054-8f3c71a9881c'),
(656, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', '2019-07-29 13:35:27', '48650a93-da9e-4b3f-8624-8bf1b1fd983d'),
(657, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', '2019-07-29 13:35:27', '938bb62e-5e3b-4ee7-9ef5-9f6317ac99ac'),
(658, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', '2019-07-29 13:35:27', '014a333c-10b5-402a-a3b6-2110ef2f550e'),
(659, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', '2019-07-29 13:35:27', '8155da1b-4d34-4a9a-a235-6832982e60d0'),
(660, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', '2019-07-29 13:35:27', 'ca31beee-fdf6-4a9f-8fdf-7c6534ea6b1d'),
(661, NULL, 70, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-16 10:14:08', '2019-07-16 10:14:08', NULL, '6155f18c-f796-42d0-96bc-702111536afe'),
(662, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-16 10:14:07', NULL, '6f581caf-d43d-40cd-a6c8-7bbcfb4027df'),
(663, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-16 10:14:07', NULL, '0d213719-bb83-46ab-8557-d1ad40a3cdd3'),
(664, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', NULL, '905558f8-7921-4780-9514-f4db2dda2f4b'),
(665, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', NULL, '53b5e9a8-b8aa-499f-9fdc-70ac9973e31a'),
(666, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', NULL, '98d29a53-c88a-494d-a018-f46eac179629'),
(667, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', NULL, 'b454e643-9745-403c-957b-edb180110caf'),
(668, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-16 10:14:07', NULL, '9ff8ebbf-654f-4317-a863-4b2ed3e8738e'),
(677, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:25', NULL, 'c1c758fc-d431-4929-9a0a-26cd2b548d1b'),
(678, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, 'a53ff908-2260-4b3e-a3d2-f686ecd2e5bf'),
(679, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, '3c013f6c-34df-4a66-b6c5-edc9c8f1703d'),
(680, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, '4ad9b8cc-b993-4085-b5ae-609d049fccc7'),
(681, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, '7c0aeb79-1095-4501-baf8-102e8adfac78'),
(682, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, '3bd7fbfd-e815-453b-8770-f21430797b85'),
(683, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, '8ef6f748-6d4e-402c-834b-e096a01ee9ff'),
(684, NULL, 71, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-16 10:14:26', '2019-07-16 10:14:26', NULL, 'b2031f06-ca1a-4459-891c-ef5c09eeb289'),
(685, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:25', NULL, '95eafe04-a0b5-4c57-b6b9-3e2f2ba766a5'),
(686, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, '3030355e-e0e4-485b-b792-8fd41d09624d'),
(687, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, 'd6d445c0-8c7e-4a74-820a-a4b6f2d8f0b3'),
(688, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, 'f5c44e55-d65c-4749-a3db-b0c6a4a5b48e'),
(689, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, 'da0ff676-acd0-44c7-879d-3a800ca592fb'),
(690, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, '3a01f0b3-03fb-443c-9f75-0579aca8a692'),
(691, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:57:18', '2019-07-16 10:14:26', NULL, 'c11e9513-81c7-44dd-a55f-3644c4f7091d'),
(700, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, '5ef51d6c-f868-4057-a60b-2366b59e770e'),
(701, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, '6d86281d-ff94-40fc-a0fd-0743cddf14eb'),
(702, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, '6f7c4bc7-85ef-47d9-89bd-e0733f965d40'),
(703, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, 'c65603fb-cf80-487c-b60e-6f97c8ea2283'),
(704, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, 'c49d1b84-c3ac-43f8-a7a7-3a0987bb0d74'),
(705, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, '4d1f79e9-97c7-4ddb-a56b-e365b15f6f0c'),
(706, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, 'abecf72d-1587-4c88-aca1-ef2500b49453'),
(707, NULL, 72, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-16 10:14:44', '2019-07-16 10:14:44', NULL, 'f0635b4a-de1d-424a-bc27-06b39b1eae57'),
(708, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 10:14:44', NULL, '7f14ca6e-5ec7-4b15-9f5e-8bbfd07cc579'),
(709, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:19:10', '2019-07-16 10:14:44', NULL, 'f92ef1e0-4bb9-48aa-83dd-088200cf23be'),
(710, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 10:14:44', NULL, 'c049fc3d-0bd6-420a-ba82-5cd89593cbae'),
(711, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 10:14:44', NULL, 'a83f7cd1-7416-4c3c-9c70-e9a05402956f'),
(712, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 10:14:44', NULL, '202f888c-6dd4-40b6-8537-48791501ae42'),
(713, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 10:14:44', NULL, '6b18ae59-6c40-492f-a7f0-5ee09f0161ef'),
(714, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-16 10:14:44', NULL, 'e88870d0-9b60-40df-b90c-00e7f47fc466'),
(723, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-16 10:15:00', NULL, '23d12e44-3690-436e-aefd-ee66c81f7202'),
(724, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:00', NULL, '2ce2e274-35e5-4374-9080-6ddb66d69cea'),
(725, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, '0004ecf6-ae9e-4d46-ad13-7ea24bd32f86'),
(726, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, '573576a4-30e0-42f6-b0bf-07ef4bfd71ac'),
(727, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, '3b14fa9f-55e7-4714-98a6-200d5ffa40d7'),
(728, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, '11df5a87-a1f9-4a61-aad2-c0c07115f4e3'),
(729, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, '029e763c-dede-4ff4-9a3f-d9e930eda4ab'),
(730, NULL, 73, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-16 10:15:01', '2019-07-16 10:15:01', NULL, 'aa891d14-af55-427b-aa93-53973d25e807'),
(731, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:31', '2019-07-16 10:15:00', NULL, 'f9b136c9-1f57-42c6-ba9d-23fa7eb98060'),
(732, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:00', NULL, '27037852-a15c-4c89-857e-226afc4974ce'),
(733, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, 'e2562393-6299-4f79-892f-feb5c1868f4d'),
(734, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, '4600ad01-8f40-40e4-b4f3-9d3df1870257'),
(735, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, '908ec443-1f9f-45b7-a11d-f000ecd6d955'),
(736, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, 'e47f4f89-fa1b-47cb-bf41-f42da06feb05'),
(737, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:45:32', '2019-07-16 10:15:01', NULL, 'da158cc3-68ad-40f0-ae64-b3f160905341'),
(738, 5, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-17 10:41:26', '2019-07-17 10:41:26', NULL, 'fa917a44-d7cf-48b4-9b8e-ac662a4c89a3'),
(739, NULL, NULL, 44, 'craft\\elements\\Entry', 1, 0, '2019-07-17 10:42:19', '2019-07-17 13:10:28', NULL, 'e6d3b242-517f-4f25-b4b8-559a4c538631'),
(744, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:20:16', '2019-07-17 12:20:16', '2019-07-17 12:20:21', '49b78776-a5af-42af-be3f-11fb5e042788'),
(746, NULL, 77, 44, 'craft\\elements\\Entry', 1, 0, '2019-07-17 12:19:28', '2019-07-17 12:19:28', NULL, '17bd4b69-4e36-4570-80fd-e6f8f41dd488'),
(747, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:20:21', '2019-07-17 12:20:21', '2019-07-17 12:20:26', 'f60b79e9-e5a5-47c8-a067-5fafc4aca74d'),
(748, NULL, 78, 44, 'craft\\elements\\Entry', 1, 0, '2019-07-17 12:20:21', '2019-07-17 12:20:21', NULL, '430fab84-aebb-4adb-8749-ea96568f7dfe'),
(749, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:20:21', '2019-07-17 12:20:21', NULL, '7465101b-0177-41c1-92a8-19602b207d08'),
(751, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:20:21', '2019-07-17 12:20:21', '2019-07-17 12:20:25', '716ff565-4443-4553-94e0-43d0b659557c'),
(752, NULL, 79, 44, 'craft\\elements\\Entry', 1, 0, '2019-07-17 12:20:26', '2019-07-17 12:20:26', NULL, 'e7f9b4ff-8fcc-4db7-8b5a-02dd98a0a40d'),
(754, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:21:22', '2019-07-17 12:21:22', '2019-07-17 12:21:39', 'abd46be1-fd0a-4e94-83f2-cd302d1988e2'),
(755, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:21:39', '2019-07-17 12:21:39', '2019-07-17 12:21:42', '91bbecd1-f46d-4168-a28d-a7e3834bf6f7'),
(756, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:21:41', '2019-07-17 12:21:41', '2019-07-17 12:21:48', 'a978274d-1ebb-4082-b38e-0b1c6d68804f'),
(757, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:21:48', '2019-07-17 12:21:48', '2019-07-17 12:22:20', 'ddfe8887-3a79-4ab0-8056-23de0763b173'),
(759, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:22:19', '2019-07-17 12:22:19', '2019-07-17 13:10:28', 'a35ef9d0-2c7e-46e7-9193-62d10b9a21ee'),
(760, NULL, 80, 44, 'craft\\elements\\Entry', 1, 0, '2019-07-17 12:22:20', '2019-07-17 12:22:20', NULL, 'ac47cd2a-8601-4cb9-aebd-8c3d08f61697'),
(761, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:22:19', '2019-07-17 12:22:19', NULL, '309d1432-0447-4a83-b1de-7713549aac08'),
(764, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:22:19', '2019-07-17 13:10:28', NULL, '8c56622a-fe73-4673-88ea-717eda75fc82'),
(765, NULL, 81, 44, 'craft\\elements\\Entry', 1, 0, '2019-07-17 13:10:28', '2019-07-17 13:10:28', NULL, '8e5ba957-599e-4d8b-bac0-8e2b3d2e7eba'),
(766, NULL, NULL, 43, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-07-17 12:22:19', '2019-07-17 13:10:28', NULL, '388a180d-e1d6-40f1-b975-603723e07891'),
(767, NULL, 82, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-23 09:05:38', '2019-07-23 09:05:38', NULL, '0fe14b5a-532e-4975-94d1-889ec5aa4e8d'),
(768, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, '36d8d19d-e478-43af-8b7f-27aa74559f5e'),
(769, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, '9df8dcae-177a-406a-b6c9-0b3b34a47613'),
(770, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, '676c0ac9-960b-4bee-b154-88f0dd1d8b18'),
(771, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, 'eec426f9-ec2f-4904-9ae6-5ff621162065'),
(772, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, 'fb4ec7e2-638e-47c5-9876-e7b695a5526a'),
(773, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, '6082ed9c-299b-4950-ae39-fc15811fe30f'),
(774, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-25 09:19:10', '2019-07-23 09:05:39', NULL, 'eaac4997-ba25-46b0-ab52-80509884596f'),
(775, 10, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2019-07-23 10:23:58', '2019-07-23 10:23:58', NULL, '9d1da0a6-d4c6-4239-a15b-e7c110550ba7'),
(777, NULL, 84, 18, 'craft\\elements\\Entry', 1, 0, '2019-07-29 13:10:51', '2019-07-29 13:10:51', NULL, 'c1553009-4dd6-4184-9419-e1a8627bae78'),
(778, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-07-29 13:18:26', '2019-07-29 13:18:26', NULL, 'ee5943a1-c618-435d-809e-bb48be3d8ccf'),
(780, NULL, 85, 18, 'craft\\elements\\Entry', 1, 0, '2019-07-29 13:18:33', '2019-07-29 13:18:33', NULL, 'a494bcb8-3195-4bae-a6ed-b0e250332d5a'),
(782, NULL, 86, 18, 'craft\\elements\\Entry', 1, 0, '2019-07-29 13:27:40', '2019-07-29 13:27:40', NULL, 'a7ba59a5-106b-415e-9f45-ae9a308a6336'),
(791, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:35:26', '2019-07-29 13:36:31', 'a0723ae2-b1e8-4a68-8e26-b0b4ae293afb'),
(792, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:35:26', '2019-07-29 13:36:31', '4182fba8-51c2-4371-bc84-95ba70667adb'),
(793, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', '2019-07-29 13:36:31', '6e1f2ea0-26ff-488b-a9d8-d3340915ecfb'),
(794, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', '2019-07-29 13:36:31', '6743e65f-5057-4085-a700-daf033c95f65'),
(795, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', '2019-07-29 13:36:31', '8a5eaf73-9a05-415e-b390-3dd5aaa8944d'),
(796, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', '2019-07-29 13:36:31', '25773dde-169b-4f99-b3c5-9445b47db1e9'),
(797, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', '2019-07-29 13:36:31', '25463f34-67d1-4c78-8485-9f5132ec80b3'),
(798, NULL, 87, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-29 13:35:27', '2019-07-29 13:35:27', NULL, 'cb70592f-8a0e-4cc3-b973-12553a9f552c'),
(799, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:35:26', NULL, '55054da6-d876-43c6-b3f3-65c19f8a470c'),
(800, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:35:26', NULL, 'd37cecc9-e5e0-4016-a899-7a24219bf0c7'),
(801, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', NULL, '70d9e605-c5cf-4255-ac7f-c89d1bff5acb'),
(802, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', NULL, '8a5d5919-fd13-4ef2-801b-4dfa5b8b80d7'),
(803, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', NULL, '4bbe3e21-1128-480f-a509-4d9e77c516ae'),
(804, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', NULL, '56ce0d4f-f34a-4c40-98ad-bda6d7c3c0d7'),
(805, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:26', NULL, '419531ed-eeef-4df9-adb1-b03258f7173e'),
(806, 14, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-13 13:16:38', '2019-07-29 13:35:53', NULL, '83cb85dd-ad92-4924-ada3-53292633cf88'),
(807, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:35:53', NULL, '432a21c5-9cb4-4002-ba8f-f25adfcce592'),
(808, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:35:54', NULL, 'a95b38ba-543b-424c-a85b-32d5b24e63c4'),
(809, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:54', NULL, '36ce9373-a205-4dc8-8782-816826a1fde4'),
(810, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:54', NULL, 'c5efbe0b-7b71-4d20-93e6-bff8ecad0f41'),
(811, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:54', NULL, 'b3b636b4-55e8-48d2-a9dc-47a8c1b688f4'),
(812, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:54', NULL, '45c56ecb-9460-410d-b102-f2dc0dad8e74'),
(813, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:35:54', NULL, '68b7272a-05cd-4951-b441-772c7619805c'),
(822, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:36:30', '2019-07-29 13:40:03', 'a42005b3-2a7b-4d59-985a-9a32a262afdb'),
(823, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:36:30', '2019-07-29 13:40:03', '2b037663-9c81-4c7e-9e32-ea3a0f92b833'),
(824, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:30', '2019-07-29 13:40:03', '5f8ef71c-9a2e-4113-a0b8-19a244538a79'),
(825, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:31', '2019-07-29 13:40:03', '8b50c79b-e505-471d-b44a-ab313947a1b7'),
(826, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:31', '2019-07-29 13:40:03', 'e2abc8ef-87cb-4e72-931b-264a4a6bec1e'),
(827, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:31', '2019-07-29 13:40:03', 'c2e04153-336b-49f5-8a75-dcd9deeb5c85'),
(828, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:31', '2019-07-29 13:40:03', 'b55fd461-8f59-4948-afc5-9bb70e51d05b'),
(829, NULL, 88, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-29 13:36:31', '2019-07-29 13:36:31', NULL, 'ab5c3cc4-8bf3-4f68-88af-02fbc6d89a71'),
(830, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:36:30', NULL, '033f805f-e979-49af-a97f-f878587bd9d9'),
(831, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:36:30', NULL, '1692a72f-6d00-49ab-afb6-6a3cb79c2bc6'),
(832, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:30', NULL, 'aa0df793-6b6a-45c4-94ed-dbd6922d1936'),
(833, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:31', NULL, '322e42c4-b246-44a5-bb88-e7ae2f90b956'),
(834, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:31', NULL, 'e0d1895a-728d-4e76-9251-8048e6130c2d'),
(835, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:31', NULL, '19f8aff1-d52d-437b-8745-f33a520328d5'),
(836, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:36:31', NULL, 'e71d9a07-1edc-41ce-a1d7-5dd370e154de'),
(837, 16, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-13 13:16:38', '2019-07-29 13:38:50', NULL, '25b84d3c-966d-4749-a5b6-573e348001a9'),
(838, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:38:50', NULL, 'd7fcab0a-0137-46f7-997d-135e8361f696'),
(839, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:38:50', NULL, '9c9bb733-c439-43c0-a65a-1a0864be7e42'),
(840, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:38:50', NULL, '73349486-9f05-4d4b-a21e-ad9121aaf2fa'),
(841, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:38:50', NULL, '924a50a0-3d66-487f-bfe2-f3c04440dd29'),
(842, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:38:50', NULL, '3f88fd7d-1d0a-42db-8c58-5b7b95b60ac0'),
(843, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:38:50', NULL, 'f77e358e-49d4-45b7-9e89-9b3599463dd4'),
(844, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:38:50', NULL, 'ba4049e9-16ca-4713-9846-efd6c224b5cb'),
(853, 18, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2019-06-13 13:16:38', '2019-07-29 13:39:34', NULL, 'b695beb0-f625-49c0-8381-cc1e175001eb'),
(854, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:39:35', NULL, 'a126c257-5d44-4879-bf76-084dbedc9eaf'),
(855, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:39:35', NULL, '86053341-a94c-4310-a481-e3e9fff0b155'),
(856, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:39:36', NULL, 'c1227079-3c5d-484a-8a81-376ee194db6b'),
(857, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:39:36', NULL, '9b26462d-cfb1-473f-ba8c-f8671a273696'),
(858, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:39:36', NULL, '4d9c5c4d-5f6c-4678-ab50-b530c36da8bc'),
(859, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:39:36', NULL, 'a175bcf3-33dc-4fb5-885c-b5c00ec91440'),
(860, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:39:36', NULL, 'dbd2a76b-bd28-4517-8151-d11ff094dcb0'),
(869, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:40:02', NULL, 'b693663e-bea8-4279-b53f-663f7b409647'),
(870, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:40:02', NULL, '3754d7c2-8aee-4051-8097-ab6dc76592bf'),
(871, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, '6d5100e9-b44f-46f6-be82-1acee771489e'),
(872, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, '96abdcd2-2074-49c9-91c0-3d0fa3cba5c8'),
(873, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, 'b97accbb-6781-425c-a2bb-deca1302809f'),
(874, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, 'e5c180f8-93c4-466d-82de-525c888b61a3'),
(875, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, 'c282d409-d4d5-46bb-9f37-f844cd5601e2'),
(876, NULL, 89, 9, 'craft\\elements\\Entry', 1, 0, '2019-07-29 13:40:03', '2019-07-29 13:40:03', NULL, 'ebf08a06-84b1-46b4-b8e6-8b8a817f18f4'),
(877, NULL, NULL, 14, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:40:02', NULL, 'e09e378c-c9bd-4158-9962-865894e84864'),
(878, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2019-06-19 11:54:31', '2019-07-29 13:40:02', NULL, 'f1e333a1-193a-453b-b28b-cb3a4145dcf7'),
(879, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, '96fc8550-f046-4124-8ec8-fc04236f9795'),
(880, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, 'd70feee2-0d0b-4c66-bf08-0fd772d5baa2'),
(881, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, 'bc5117b0-3a99-4201-aed4-511d070c3664'),
(882, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, 'bfbec233-b3ff-46e3-8cae-1baf24501b83'),
(883, NULL, NULL, 16, 'verbb\\supertable\\elements\\SuperTableBlockElement', 1, 0, '2019-06-19 11:54:32', '2019-07-29 13:40:02', NULL, 'd4116d3e-b8d3-4b56-9ac6-b21906ed55fe'),
(885, NULL, 90, 18, 'craft\\elements\\Entry', 1, 0, '2019-07-29 13:40:33', '2019-07-29 13:40:33', NULL, 'e738210f-08b4-4270-aa8d-8b4839dec1bf');

-- --------------------------------------------------------

--
-- Структура таблицы `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2019-06-11 15:11:27', '2019-06-11 15:11:27', '603c5d54-8341-42c8-9372-c63eb5241dd4'),
(2, 2, 1, 'homepage', NULL, 1, '2019-06-12 08:09:35', '2019-07-10 15:00:43', 'e03b35c7-57e6-4253-9009-f28ee59075aa'),
(3, 3, 1, NULL, NULL, 1, '2019-06-12 12:03:19', '2019-06-12 12:03:19', 'e76623e4-7733-4326-824f-c85aafb6f33d'),
(4, 4, 1, NULL, NULL, 1, '2019-06-13 12:45:53', '2019-06-13 12:45:53', '1898eeff-8dfb-4da8-8743-5817c15570d6'),
(5, 5, 1, 'perfomance', 'comparison/perfomance', 1, '2019-06-13 12:47:07', '2019-06-14 11:15:23', '25fca60d-423b-478d-bc3d-7426e066ece2'),
(6, 6, 1, NULL, NULL, 1, '2019-06-13 12:47:07', '2019-06-14 11:15:24', '15dab200-363f-433a-b7e2-cfaa391c9e5c'),
(7, 7, 1, 'wordpress', 'platforms/wordpress', 1, '2019-06-13 13:16:38', '2019-07-15 13:03:24', 'dedcc4c0-436f-4b20-b765-5b5e64d25c9d'),
(8, 8, 1, NULL, NULL, 1, '2019-06-13 13:30:30', '2019-06-14 10:04:57', '7330f6b6-2f4c-4d4b-a8e3-d025a63d33d0'),
(9, 9, 1, NULL, NULL, 1, '2019-06-13 13:30:30', '2019-06-14 10:04:58', '0e363aa6-df8b-4d75-9a7a-0c9dc43fa5fb'),
(10, 10, 1, NULL, NULL, 1, '2019-06-13 13:30:30', '2019-06-14 10:04:58', '86124941-2f43-411c-829e-0a1149901fd2'),
(11, 11, 1, 'craft', 'platforms/craft', 1, '2019-06-13 13:51:08', '2019-07-15 13:10:54', 'fdb84046-0407-49fd-80e0-d2ce73e2895c'),
(12, 12, 1, NULL, NULL, 1, '2019-06-13 13:51:08', '2019-06-13 13:51:08', '33eb3fa8-b911-4979-9b4b-659c19249bd5'),
(13, 13, 1, NULL, NULL, 1, '2019-06-13 13:51:09', '2019-06-13 13:51:09', '0fea8b3c-bf23-4499-87d1-19a406d7787a'),
(14, 14, 1, NULL, NULL, 1, '2019-06-13 13:51:09', '2019-06-13 13:51:09', 'd50f18c4-7f5f-464a-ba2e-dad4fce42205'),
(15, 15, 1, 'base-questions', 'questions/base-questions', 1, '2019-06-14 11:58:15', '2019-06-14 14:43:53', '074c8a40-42cd-4dfd-a078-d238158df31e'),
(16, 16, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-06-14 11:59:26', '2019-06-25 09:50:36', 'e14f8760-bc3c-4b96-9975-22bacf9ff364'),
(17, 17, 1, NULL, NULL, 1, '2019-06-14 12:38:38', '2019-06-25 09:50:36', '2aa211ae-dc88-4788-9b64-6d46aa8f8272'),
(18, 18, 1, NULL, NULL, 1, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '9ffd5cdf-1a44-4b7f-807c-83482d57db7d'),
(19, 19, 1, NULL, NULL, 1, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '55dc26cd-2dc2-4d3e-8b3d-29d972b270bc'),
(20, 20, 1, NULL, NULL, 1, '2019-06-14 12:38:38', '2019-06-25 09:50:37', 'b9f74391-8f9c-4040-9860-7aaf8534886f'),
(21, 21, 1, 'how-many-visitors-per-day-expected-on-site', 'questions/how-many-visitors-per-day-expected-on-site', 1, '2019-06-14 14:15:57', '2019-06-25 11:21:28', '289ddc98-8dd4-40e3-8a56-810336599e78'),
(22, 22, 1, NULL, NULL, 1, '2019-06-14 14:15:57', '2019-06-25 11:21:28', '4dbe9836-7c6a-4fb9-ac76-0ac958b56dd4'),
(23, 23, 1, NULL, NULL, 1, '2019-06-14 14:15:58', '2019-06-25 11:21:28', '5dd2e172-a939-41c5-8afd-420d6b9d4397'),
(24, 24, 1, NULL, NULL, 1, '2019-06-14 14:15:58', '2019-06-25 11:21:29', 'fd9a1f77-2c14-4ed1-aded-9f632145d32e'),
(25, 25, 1, NULL, NULL, 1, '2019-06-14 14:15:58', '2019-06-25 11:21:29', '8b36b6f8-7a7f-4b0f-a937-7ed9b3e6c48e'),
(26, 26, 1, NULL, NULL, 1, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '18d0db06-191b-4291-b0b7-d9011a76ad2c'),
(27, 27, 1, NULL, NULL, 1, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '9b87522a-b35c-4268-a860-3a5e06d904a4'),
(28, 28, 1, NULL, NULL, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '2c7adcfb-40a9-4fd1-9082-88ab5bcd9b09'),
(29, 29, 1, NULL, NULL, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '8629c4fb-055e-46a5-b908-d3aabddab3f4'),
(30, 30, 1, NULL, NULL, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '39246622-a75b-40dd-94b5-a90424b5e845'),
(31, 31, 1, NULL, NULL, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', 'f2d0bf7c-c49e-48eb-842e-b5d60f8b2ac1'),
(32, 32, 1, NULL, NULL, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '083780ae-0b08-4707-be98-ac6a67812151'),
(33, 33, 1, NULL, NULL, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '04643dbe-4579-495a-8987-839628ac83d3'),
(34, 34, 1, 'performance', 'comparison-item/performance', 1, '2019-06-18 15:22:12', '2019-07-01 09:54:12', '634023b9-b1a5-48b2-8286-d99853ca2625'),
(35, 35, 1, 'seo-friendly', 'comparison-item/seo-friendly', 1, '2019-06-18 15:22:24', '2019-07-01 09:54:12', '91ca3937-7ff0-4e99-b0a4-c2890e3c9f96'),
(36, 36, 1, 'customization', 'comparison-item/customization', 1, '2019-06-18 15:22:35', '2019-07-01 09:54:12', '5a139768-42f5-47f0-b2e0-c2e66b1026c1'),
(37, 37, 1, 'scalability', 'comparison-item/scalability', 1, '2019-06-18 15:23:01', '2019-07-01 09:54:12', '1d0ae8fd-7619-4227-9920-af371871567f'),
(38, 38, 1, NULL, NULL, 1, '2019-06-19 11:38:58', '2019-06-19 11:38:58', '6b6455c7-7031-42d1-b242-63d53128d064'),
(39, 39, 1, NULL, NULL, 1, '2019-06-19 11:50:38', '2019-06-19 11:50:38', '25a2ff38-9edb-4077-a681-e43e2589af61'),
(40, 40, 1, NULL, NULL, 1, '2019-06-19 11:50:57', '2019-06-19 11:50:57', 'ef76050c-e683-464b-b6c4-b497c71cdfac'),
(41, 41, 1, NULL, NULL, 1, '2019-06-19 11:50:58', '2019-06-19 11:50:58', '6bbd8555-b282-4455-9a8b-9a6289e68421'),
(42, 42, 1, 'outgoing-cost', 'comparison-item/outgoing-cost', 1, '2019-06-19 11:54:18', '2019-07-01 09:55:12', '41d660bb-ccb3-4464-baa5-cdaf8dcdc874'),
(43, 43, 1, NULL, NULL, 1, '2019-06-19 11:54:31', '2019-07-15 13:03:24', 'd7422a96-354b-4764-961a-7055045d79c8'),
(44, 44, 1, NULL, NULL, 1, '2019-06-19 11:54:31', '2019-07-15 13:03:25', '72aca199-5cad-446a-a894-aedf46985826'),
(45, 45, 1, NULL, NULL, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '9fff2c3d-eb2c-48ec-8317-c736cfda0b6a'),
(46, 46, 1, NULL, NULL, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '74d3a818-6d7f-40a9-bd8f-09a27e364aea'),
(47, 47, 1, NULL, NULL, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '467be98e-1104-4ee0-b5c2-9e7751e12d7e'),
(48, 48, 1, NULL, NULL, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '6fb01a3d-8880-4ae7-9eb3-8eafff3d1e30'),
(49, 49, 1, NULL, NULL, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '32df4a12-5248-4a40-bc6f-36b811faa09a'),
(50, 50, 1, NULL, NULL, 1, '2019-06-19 11:55:53', '2019-06-19 11:55:53', '91ab44c2-55ee-44d0-a82d-eb9ab8855586'),
(51, 51, 1, NULL, NULL, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '0f360471-13b0-4320-8dee-308656cef2a9'),
(52, 52, 1, NULL, NULL, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', 'b24f5ec3-2cc0-45de-9fbe-7a9c42427ea0'),
(53, 53, 1, NULL, NULL, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '268f7a4f-34f6-4896-af89-9e27630508a0'),
(54, 54, 1, NULL, NULL, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '032a5aba-fa95-4f29-bd63-bb75e78290b0'),
(55, 55, 1, NULL, NULL, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '24c3a5df-4658-42d0-9321-a1c7fa5a5419'),
(56, 56, 1, NULL, NULL, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '054361c4-a291-48ee-ba53-c8c12b966744'),
(57, 57, 1, NULL, NULL, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '86c108ee-b048-4b69-a486-82f8bff9e497'),
(58, 58, 1, NULL, NULL, 1, '2019-06-19 12:07:17', '2019-06-25 11:21:28', 'f7d675c4-8bc9-44f3-a3da-dcf2b3563093'),
(59, 59, 1, NULL, NULL, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:28', 'e453f6f6-7c38-45eb-946f-6648f492bc17'),
(60, 60, 1, NULL, NULL, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '0483fc6b-d3f7-4492-be1f-d9045be42384'),
(61, 61, 1, NULL, NULL, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '9cd34293-3d19-4c47-89f1-20a15ce64442'),
(62, 62, 1, NULL, NULL, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:29', 'a96a2c34-23cc-4923-97a0-5daa29b7abea'),
(63, 63, 1, NULL, NULL, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '430a9596-beea-4145-8d84-b621946299ab'),
(64, 64, 1, NULL, NULL, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:29', 'a59bea5a-28b2-425b-a085-316a3d5dbbbd'),
(65, 65, 1, NULL, NULL, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '0e44ecf9-08d2-4f06-92ad-5f86926237b6'),
(66, 66, 1, NULL, NULL, 1, '2019-06-25 08:40:39', '2019-06-25 08:40:39', 'a0eecb94-d252-4353-9a1c-876ce4b62f32'),
(67, 67, 1, NULL, NULL, 1, '2019-06-25 08:40:50', '2019-06-25 08:40:50', '0eb800c7-8ba6-4e4f-bb4f-f73cd60c0826'),
(68, 68, 1, 'drupal', 'platforms/drupal', 1, '2019-06-25 09:19:09', '2019-07-15 13:11:20', '3c875eac-d8a0-4e66-916e-8a877b17e13d'),
(69, 69, 1, NULL, NULL, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '3f4cc649-ce8a-46bc-a22a-9754fd592e5a'),
(70, 70, 1, NULL, NULL, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '3e427859-a603-4420-96eb-1f4418567ada'),
(71, 71, 1, NULL, NULL, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '54639048-0ac9-493a-9b01-f5b5e19460fa'),
(72, 72, 1, NULL, NULL, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '2dd1cdc3-54cd-41b6-abc2-8091cbc6a1d5'),
(73, 73, 1, NULL, NULL, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', 'e88d494b-6e21-4d7b-b369-057149d9fb10'),
(74, 74, 1, NULL, NULL, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '5b1b27cb-e398-4599-a216-00836a171c70'),
(75, 75, 1, NULL, NULL, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', 'd33ee3c5-b753-46d8-8c94-62c8809fe93f'),
(76, 76, 1, NULL, NULL, 1, '2019-06-25 09:44:32', '2019-06-25 09:44:32', '0c619728-c450-46af-a077-49f524d87c3b'),
(77, 77, 1, NULL, NULL, 1, '2019-06-25 09:44:40', '2019-06-25 09:44:40', '1fde8b95-e75b-4837-bee7-418fcd4889b7'),
(78, 78, 1, 'laravel', 'platforms/laravel', 1, '2019-06-25 09:45:31', '2019-07-04 14:25:45', '93568937-660d-423c-8c29-0a42b0a3ac88'),
(79, 79, 1, NULL, NULL, 1, '2019-06-25 09:45:31', '2019-07-04 14:25:46', '0c564eff-04ec-4c74-ba78-86a33ac4337f'),
(80, 80, 1, NULL, NULL, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:46', 'dc65915c-dfc2-429d-8e7f-461718256eb4'),
(81, 81, 1, NULL, NULL, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', 'db131369-a619-448e-92fc-cfe7964c72ee'),
(82, 82, 1, NULL, NULL, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '90661edc-52dc-4a8e-8e3b-76f2797c8ddd'),
(83, 83, 1, NULL, NULL, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', 'c279a0f1-ceba-4234-9279-201c2ee8c9d6'),
(84, 84, 1, NULL, NULL, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '88ca7d5e-6ffc-4d53-90ea-2fb36b99af68'),
(85, 85, 1, NULL, NULL, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '77523865-3b5c-4982-8772-f9594d07e36e'),
(86, 86, 1, NULL, NULL, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'c10764dc-96c4-4c1e-a89d-a4afcfdc35e6'),
(87, 87, 1, NULL, NULL, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2a94a5b5-535a-46b4-9600-baf8d2f317f2'),
(88, 88, 1, NULL, NULL, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '0c083df6-d71b-4da1-8830-c6bc41c7b711'),
(89, 89, 1, NULL, NULL, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '153a82e5-baef-4ccc-ba8a-8af7e3f9b09e'),
(90, 90, 1, NULL, NULL, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'f9e3af8f-3c2c-4569-9ed4-5836d22e99ac'),
(91, 91, 1, NULL, NULL, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'ba594601-e1d3-45e1-b5d8-8993ad2f5c6f'),
(92, 92, 1, NULL, NULL, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '61379b3f-b9ac-4e86-8656-8a7d1077d0b8'),
(93, 93, 1, NULL, NULL, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '0b8219ee-cd02-4b59-9f05-8b85a5b4bae1'),
(94, 94, 1, NULL, NULL, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '8a5b3bfb-30d3-4fe3-bf5f-807cb66731e1'),
(95, 95, 1, NULL, NULL, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '0d322444-127d-4227-890a-185d8f2992c8'),
(96, 96, 1, NULL, NULL, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '18724c0c-102e-4805-a729-e1456a3e04ed'),
(97, 97, 1, NULL, NULL, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '57848605-3935-4fbd-aff3-941cce81136f'),
(98, 98, 1, NULL, NULL, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '93472b48-c18c-48dd-a124-c7b403c8650b'),
(99, 99, 1, NULL, NULL, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '2e37bb38-5c0b-4fa8-a4ec-5634143a0919'),
(100, 100, 1, NULL, NULL, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '3f92b036-4640-42c6-8913-eba8a023b294'),
(101, 101, 1, NULL, NULL, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:29', 'e092527b-f78a-4d63-85d5-d29d9576668f'),
(102, 102, 1, 'results', 'results', 1, '2019-06-25 14:00:05', '2019-06-26 13:31:03', 'ef290cc3-8bdc-468c-94be-7d827324f66e'),
(103, 103, 1, NULL, NULL, 1, '2019-06-26 13:02:37', '2019-06-26 13:31:03', 'e53bbd20-824e-4428-81cc-f1b65931e559'),
(104, 104, 1, NULL, NULL, 1, '2019-07-01 09:55:13', '2019-07-01 09:55:13', 'dae032cd-8fe1-4c77-83e3-566c56770584'),
(105, 105, 1, NULL, NULL, 1, '2019-07-01 09:55:13', '2019-07-01 09:55:13', '661f2e04-dbe4-4208-ad91-518127fda108'),
(106, 106, 1, NULL, NULL, 1, '2019-07-01 13:02:46', '2019-07-01 13:02:46', '4850038b-fe00-49d2-bb76-a192e6f69c28'),
(107, 107, 1, NULL, NULL, 1, '2019-07-01 13:02:46', '2019-07-01 13:02:46', '4525226a-6020-4a0b-90fb-7d391d064eca'),
(108, 108, 1, NULL, NULL, 1, '2019-07-01 15:30:12', '2019-07-01 15:42:13', '7ca39e32-5ba0-44d3-bd9d-06f0a549b879'),
(109, 109, 1, NULL, NULL, 1, '2019-07-01 15:30:12', '2019-07-01 15:42:13', '9f3f9734-bd78-4164-b100-dbe216a6c810'),
(110, 110, 1, NULL, NULL, 1, '2019-07-01 15:30:12', '2019-07-01 15:42:13', '9a972cf5-5efc-4fb8-84c0-77721c322652'),
(111, 111, 1, 'seo-properties', 'comparission-properties/seo-properties', 1, '2019-07-04 07:47:30', '2019-07-04 07:47:33', 'b558ca8c-f477-40e0-a419-d8c4c057c1ce'),
(112, 112, 1, NULL, NULL, 1, '2019-07-04 07:47:31', '2019-07-04 07:47:31', '21c805dd-e58c-4a5a-9a5f-d30093a2ac56'),
(113, 113, 1, 'security', 'comparission-properties/security', 1, '2019-07-04 08:02:42', '2019-07-04 08:02:44', '9cdff574-e11a-4580-a1dd-240ff9252045'),
(114, 114, 1, NULL, NULL, 1, '2019-07-04 08:02:42', '2019-07-04 08:02:42', '2e7772b8-f45c-4665-a19a-f9c072dee38c'),
(115, 115, 1, NULL, NULL, 1, '2019-07-04 08:02:42', '2019-07-04 08:02:42', 'a1ccba01-6271-45e7-91b2-bbeffe86dd01'),
(116, 116, 1, NULL, NULL, 1, '2019-07-04 08:02:42', '2019-07-04 08:02:42', '9b24e700-c41c-4656-a267-1d7f21e2133d'),
(117, 117, 1, NULL, NULL, 1, '2019-07-04 08:02:42', '2019-07-04 08:02:42', '51a7b47c-cf93-4ec3-bed2-97da2b2f681d'),
(118, 118, 1, NULL, NULL, 1, '2019-07-04 13:32:41', '2019-07-04 13:32:41', '8ce97688-3340-4e9f-a1cf-336c2b1cfca6'),
(119, 119, 1, NULL, NULL, 1, '2019-07-04 13:35:34', '2019-07-04 13:35:40', 'b64657f4-adac-4adb-b41d-349ec5ae88d9'),
(120, 120, 1, NULL, NULL, 1, '2019-07-09 12:28:08', '2019-07-09 12:28:08', '395017f6-c23e-40e0-8635-511e9d77e150'),
(121, 121, 1, NULL, NULL, 1, '2019-07-09 12:35:23', '2019-07-09 12:35:23', '75574cf7-86e0-4854-b87e-9e26b6ce4641'),
(122, 122, 1, NULL, NULL, 1, '2019-07-09 12:37:31', '2019-07-09 12:37:31', '72e37681-604b-44f6-b173-6dd49ae8c923'),
(123, 123, 1, NULL, NULL, 1, '2019-07-09 14:22:23', '2019-07-09 14:22:23', '614c7904-168a-47a7-880d-b77dbf4c84eb'),
(124, 124, 1, NULL, NULL, 1, '2019-07-15 12:59:04', '2019-07-15 12:59:04', '78f60cfe-90e2-4d6a-a258-441fcd30eb82'),
(125, 125, 1, NULL, NULL, 1, '2019-07-15 13:03:19', '2019-07-15 13:03:19', 'f2bf6c48-3c83-4bb7-bcbe-95e40985c750'),
(126, 126, 1, NULL, NULL, 1, '2019-07-15 13:10:48', '2019-07-15 13:10:48', '7fe008e6-4555-4b40-99dc-5324d3ba798f'),
(127, 127, 1, NULL, NULL, 1, '2019-07-15 13:11:16', '2019-07-15 13:11:16', 'e30d5d65-c437-4080-b398-a314ec4abe07'),
(128, 128, 1, 'drupal', 'platforms/drupal', 1, '2019-07-16 07:35:58', '2019-07-16 07:35:58', '5406a725-43f5-4542-9aca-926a23e14938'),
(129, 129, 1, NULL, NULL, 1, '2019-07-16 07:35:58', '2019-07-16 07:35:58', 'f0aa9f0a-cdf0-479a-a63d-d61f2179b0d7'),
(130, 130, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'e7b092ce-86d6-4efb-a3ce-3057b10e5352'),
(131, 131, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '0540c152-9c62-4dd0-9804-230a148e03b6'),
(132, 132, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'f00a3332-8860-461f-8d06-19fa1b323265'),
(133, 133, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'a09512cb-5d3a-4384-8b4e-c285341696d6'),
(134, 134, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '8d749536-d95c-4d95-b2fb-df9c6d9691e9'),
(135, 135, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '33bc758e-0316-42b2-a58d-12cbfdec1295'),
(136, 136, 1, 'craft', 'platforms/craft', 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'e59a9994-3005-4e8c-ad95-ddb73cea0314'),
(137, 137, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'c46f8967-a94a-456f-8dcd-47d50d14cebb'),
(138, 138, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '19245c00-492a-4b34-92c7-b8c52c269825'),
(139, 139, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '862472bf-d434-4532-a5fb-9638e45d5245'),
(140, 140, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'a1d30313-4343-4fc8-a082-6eda2dfcd26e'),
(141, 141, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '901ad101-7c68-4d4a-b340-a589e8fb6df9'),
(142, 142, 1, NULL, NULL, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '9d9a4839-f80b-4206-8bfa-d2d118621c1e'),
(143, 143, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '6ca0da22-f6c0-4e4a-aff5-59601e00a80c'),
(144, 144, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'c9edb8f3-ce4e-4b88-94f8-7ecaa98fd23d'),
(145, 145, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '770a5406-4cc9-431e-bcd9-e4d108eed544'),
(146, 146, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'e286f63a-c309-4ea3-a4eb-ad42e83ddf2c'),
(147, 147, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '081c8b01-25f9-49af-80ee-5df3bf363d51'),
(148, 148, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '0bdba829-c216-47fe-b417-3ee240bab211'),
(149, 149, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'e5dcaba7-bf99-41ad-8bbd-c074d4f38315'),
(150, 150, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'fb9f6e28-427f-491a-b6a1-e396f5f5a372'),
(151, 151, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'ac25f613-d8be-4b52-889d-a26dd450e871'),
(152, 152, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'd48621bd-fe0f-4dba-ba9b-42a6e51b5b82'),
(153, 153, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'f1391289-3083-4d68-9f40-ce53394b7a22'),
(154, 154, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'da5421e0-c201-4ec7-bde3-35ae0b7b29b5'),
(155, 155, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '26da0a31-4b44-4149-ace0-80a4aab1d814'),
(156, 156, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '73886a05-9332-446e-ab7f-71566e7036c6'),
(157, 157, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '2082bcd9-d3a2-43ab-af15-4132c86e3744'),
(158, 158, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '5807f2fa-b26a-4d48-9f1e-fe3195cbd724'),
(159, 159, 1, NULL, NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '2766d3a7-8ebf-4f5a-a5da-f508c807092f'),
(160, 160, 1, 'homepage', NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'af1824d3-9340-46a7-82d2-307b04e5668c'),
(161, 161, 1, 'homepage', NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '679f90a9-9617-45d1-9494-c09460db3d96'),
(162, 162, 1, 'homepage', NULL, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '8a204208-1da7-45e9-9ac6-cfc2f99e25e7'),
(163, 163, 1, 'homepage', NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '0963a774-ec33-4f45-8ea3-2de8b3a74f9c'),
(164, 164, 1, 'homepage', NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'faa7ad4f-fad8-4a12-bad0-5a7f88a07bce'),
(165, 165, 1, 'homepage', NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'e6450ad6-bbbf-4ee3-9ab7-48a49f8b7bc9'),
(166, 166, 1, 'homepage', NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '32f229e4-54e9-481f-afc0-db38067b9cb1'),
(167, 167, 1, 'homepage', NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7e6ab18a-c9ca-46c2-b21b-c1ea5d324286'),
(168, 168, 1, 'laravel', 'platforms/laravel', 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '5be2d3d9-cefb-4922-bcb5-b24053ef0ee3'),
(169, 169, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '5267ce9d-132b-4d5f-b8a2-3e2ccf12ba01'),
(170, 170, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7cf97984-8791-480d-ab41-56746201ab95'),
(171, 171, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '0093bb1e-1665-48da-8003-0a01e0983045'),
(172, 172, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '09bf2837-29dd-48c4-9a29-a77b9be3fc55'),
(173, 173, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '6aa3bc91-478f-4592-858a-418d4faf1567'),
(174, 174, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '64ebc468-78da-44ec-a669-b0f16d3dac63'),
(175, 175, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '980b1775-a9cb-4eed-9b1c-4a36d359f521'),
(176, 176, 1, 'laravel', 'platforms/laravel', 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '66195b81-5e95-4a0d-8e49-98420722dedd'),
(177, 177, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'f0db7cde-ba7b-4c64-8943-50fdd69b85c7'),
(178, 178, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '52a321ed-56fd-4db8-b85a-7949d41faf6c'),
(179, 179, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'b28deaf4-3f3d-4830-8dcd-8ab381337bab'),
(180, 180, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '10c3cf95-465e-473f-87b2-a8ffbc57bd6c'),
(181, 181, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '4a4ef117-c924-4b40-b7af-a7271a81e30d'),
(182, 182, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'e5724da5-ef0e-446a-a4c5-0cab3b486332'),
(183, 183, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '86c0ac8b-ac69-486c-bc35-01b8d4f62e2a'),
(184, 184, 1, 'laravel', 'platforms/laravel', 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '37b045f4-b321-4628-9d30-f78d2d90c23b'),
(185, 185, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '6617ca8c-c317-4dc1-b8d0-635ab6998204'),
(186, 186, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '87d637e9-5bf2-41b2-98e4-553549775186'),
(187, 187, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '21010404-ee71-46a2-9e34-fbf3aba7d9be'),
(188, 188, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'b46dcc4e-6e6c-409c-8407-5a8cd2125617'),
(189, 189, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '25688ab9-c71b-4293-9c1f-d3b22fe049aa'),
(190, 190, 1, NULL, NULL, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7aa2f9b4-628c-461c-8212-a2a9b4cf371a'),
(191, 191, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '789f33ca-4b8b-4778-841d-3e9f5a355357'),
(192, 192, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'ab5a4002-fce9-4397-bc1c-9678170d5713'),
(193, 193, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'e6f2f9a4-4902-4ab4-ae76-4077fe08f972'),
(194, 194, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'eedec0cf-5d44-438b-8eb2-d8533429ec54'),
(195, 195, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'b49d1d7f-6983-4788-a558-707b71b6501c'),
(196, 196, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '23285bc8-767d-420c-84d7-a06d8edcb5a8'),
(197, 197, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'e442f061-c2df-447b-b417-63ce7abf5683'),
(198, 198, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'fee8ced5-bc1e-4b1e-a6be-ab6c4c97080f'),
(199, 199, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '69f550c8-8bdb-4f20-9b2a-26bcb581ef69'),
(200, 200, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '50f1358d-c146-49aa-b20c-fb866fc56169'),
(201, 201, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'b232d7e0-88f7-4d5e-9c13-da11fe346321'),
(202, 202, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '46f74e70-6232-46dd-a9f4-bc2ae77b7838'),
(203, 203, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '0bf0ad7a-7934-4794-8c1b-85ad380d35a1'),
(204, 204, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '3b318f27-0268-4272-9bdc-bee09d9a0269'),
(205, 205, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'ecfa7625-607c-4c0a-91cc-77540244cf37'),
(206, 206, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '3417bbe9-e0ad-43a6-95c8-ae53655a5e84'),
(207, 207, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'ba049ac4-89bb-42ac-b1ba-73e05d6b1048'),
(208, 208, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '957eda0b-bb43-4cf9-9420-4935ed265745'),
(209, 209, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '66b5493a-f48e-4fb0-bbd7-e68b0613cb72'),
(210, 210, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '88930c78-16dc-4ce3-b857-66c3d6bf46aa'),
(211, 211, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'b9612a7e-f9ae-43df-bbc3-5047e4d66a31'),
(212, 212, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'd67e7313-5496-4ab2-aaca-8545e4fe6e95'),
(213, 213, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '29082520-c4ca-4fe1-abac-c65be25aeb82'),
(214, 214, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'd359eb6c-c393-41f7-95d1-04bb05d0df99'),
(215, 215, 1, NULL, NULL, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '2d5811ad-5375-496a-9270-e6589af9c147'),
(216, 216, 1, 'laravel', 'platforms/laravel', 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '22d637f1-224a-4f63-b9fa-0c1b237719df'),
(217, 217, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '73430013-6af5-4dcf-84fe-dddb445740a1'),
(218, 218, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '3716a7c7-cbce-4659-8a78-220f1c800be1'),
(219, 219, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '4311caf6-299a-437f-9f5e-a59710d0bf90'),
(220, 220, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '96c4a2cc-4d11-466c-aea6-58a13dfe0c34'),
(221, 221, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '9de643f3-9664-488d-a6d2-b2e8784d249c'),
(222, 222, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '48606e7f-a2ef-499c-b723-6e1f7f016aa7'),
(223, 223, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'eb90929c-d93d-474e-91ff-b4d30434abe8'),
(224, 224, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '62de14bf-fb3a-410b-bff7-34b6d38c04fb'),
(225, 225, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '3181ea4d-55e1-4734-8c15-2a12234721b2'),
(226, 226, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '886cb29a-7f9a-4060-a981-075574176e3c'),
(227, 227, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'fa46f881-12c5-4483-9a9b-384b3acc7cb7'),
(228, 228, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '46de1430-2cf9-499b-856b-d3615a70bea4'),
(229, 229, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'f9fcd316-2153-4cd0-b8ea-935358b1ba51'),
(230, 230, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'a927a41c-df8e-4c40-89ad-0d2730ca95bd'),
(231, 231, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '2dc4f7db-2c0c-4c36-b4d0-33a95c49821e'),
(232, 232, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '267aef15-a2cc-4fd8-a09f-6667ea0d5407'),
(233, 233, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '474c3f3c-096d-45b7-9b66-f42ff0d1139e'),
(234, 234, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '609508da-a287-4ee1-ba69-ed563545cd25'),
(235, 235, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'ea8021f5-15c8-42b9-93d7-45a7b437a4d7'),
(236, 236, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '29ae8027-1104-4643-979c-198432ccac11'),
(237, 237, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '453c0bd2-a012-44b0-8846-91e364ae7934'),
(238, 238, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'fc8c98b0-78a0-4b17-bda8-32e16ba74414'),
(239, 239, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '65ab5f45-6f97-4282-8b24-d12f0192a1b9'),
(240, 240, 1, 'craft', 'platforms/craft', 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '1f3d64f9-2797-4cf6-8b3e-b9200652a477'),
(241, 241, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '5e92d6b1-c8d9-4c05-abfc-ef9e84df32a9'),
(242, 242, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '0f3d6a50-000b-42a4-9432-ad2f5582477a'),
(243, 243, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'e562d6f6-8a42-40ef-82f7-f57333940095'),
(244, 244, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '12eedede-8271-4caf-85e7-33f0b7e2f748'),
(245, 245, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '1bc3c62d-781b-48bf-87be-b67276c37d0a'),
(246, 246, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '7143bc10-90b5-4afd-bcdf-9d4ad2f531e9'),
(247, 247, 1, NULL, NULL, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '2c7175b9-5038-43b7-aa53-e2fe6326fb8e'),
(248, 248, 1, 'drupal', 'platforms/drupal', 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'bc8337a8-3f96-4790-b7a0-8d16c5bc7fa6'),
(249, 249, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '472f9f20-2ef8-4e29-a34f-44c939bc245f'),
(250, 250, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'ad929d0b-70d8-4336-828a-e16a65d838b7'),
(251, 251, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '271b4230-67e7-4b4f-9f77-734cd75b3a8c'),
(252, 252, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'd70d0811-7d5f-49ec-8700-de2adf5d1e28'),
(253, 253, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'c772a848-9073-4dab-b24e-d92b4feff085'),
(254, 254, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '1a7c7205-4c8b-4269-8bed-6da64a150e8c'),
(255, 255, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '14f8ce9e-87eb-45a1-93fa-c83f700c2ba4'),
(256, 256, 1, 'laravel', 'platforms/laravel', 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '4732afa9-d3f1-43ab-afa6-1ead54298591'),
(257, 257, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '7aa4c257-f9af-4a1a-946c-9e6566bc2550'),
(258, 258, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '67699396-cae6-4b6d-bb8e-1c6a2465d2f8'),
(259, 259, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'b311629c-b9ae-4bab-b36e-d20227c86b71'),
(260, 260, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '1ba49e1a-d505-4aa8-95bc-be28f2817279'),
(261, 261, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'a5323168-401d-40f0-8149-3a78e3ac2edb'),
(262, 262, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '5d7f63e2-37ce-42f9-b9e8-8d47e33277b2'),
(263, 263, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'b7780625-e94b-482f-824b-e330396126d4'),
(264, 264, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'fa588b86-d455-4f47-8cb1-1981f02c8c1a'),
(265, 265, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '7c492314-8fb3-4d25-8fc5-4a04ec5b2284'),
(266, 266, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '9dc245a3-9fb3-4e04-a477-2e147da8f89c'),
(267, 267, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'ed7822d1-8d85-48c1-94a9-97a2881ae71b'),
(268, 268, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '944dbe21-5654-4826-81a4-28f9f0212f74'),
(269, 269, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '059a984a-981d-42cf-9a46-198db62eff0d'),
(270, 270, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '14a36e07-57a4-4507-864d-3f9aa0ec3cb9'),
(271, 271, 1, NULL, NULL, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '313feefd-193a-4aad-9723-e8ff80297f3f'),
(272, 272, 1, 'outgoing-cost', 'comparison-item/outgoing-cost', 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', 'acce4692-69d1-49fa-9808-3c5370ad05ab'),
(282, 282, 1, 'how-many-visitors-per-day-expected-on-site', 'questions/how-many-visitors-per-day-expected-on-site', 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '894a3b4f-2cf7-48b3-b9af-ed8000af2e7e'),
(283, 283, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '39d83d7d-246b-44af-b9a6-a2435b59cf43'),
(284, 284, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '43dee7f7-0a53-4d97-b154-1257d721f95d'),
(285, 285, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '5627dbb4-166b-4bd9-ace8-e9884b6b829c'),
(286, 286, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', 'd03c985b-8a51-4d5e-9868-fba341515bfd'),
(287, 287, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '8dce4449-f82f-48f9-bac2-d81ea7c4fba5'),
(288, 288, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '74ba6b2d-3e7b-4dff-86c2-dc61c7cc988d'),
(289, 289, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', 'd7ae7178-bb89-4d25-9bcf-d945c1fef5eb'),
(290, 290, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '52c2d48f-58b2-4fa6-abde-dc438bcc3d23'),
(291, 291, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', 'f43a6339-eef7-4f82-bf8b-3affce34476d'),
(292, 292, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '3785c4f5-f0bd-4f9c-9c81-abf72e38b805'),
(293, 293, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '2fc52dcd-1cf7-4c81-8f60-87f4d79929c4'),
(294, 294, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '30a56611-4afa-4fa8-9cd0-765b0883c8e8'),
(295, 295, 1, NULL, NULL, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '6e7c5ef5-a81b-466b-b111-b3b0384a2f03'),
(296, 296, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'a895d6c6-16c8-4b57-b1b5-c752e0f5b3cd'),
(297, 297, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '48d10b88-d18f-4b2a-9e24-4fefb34386ff'),
(298, 298, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '624f5663-32ed-45c3-bae1-5a1139c560d5'),
(299, 299, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '5ebfb2e1-ef9b-4caf-87d6-fe761fc14875'),
(300, 300, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'c364d8d2-d25b-425b-8f3d-037b3eac1ccd'),
(301, 301, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '321e1a96-3167-4e18-9a82-5a184df13396'),
(302, 302, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'cab9167d-0032-4385-896a-90ef31117200'),
(303, 303, 1, 'how-many-visitors-per-day-expected-on-site', 'questions/how-many-visitors-per-day-expected-on-site', 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'fbe2e4b7-ccb1-45bf-8253-80b67d9a43e9'),
(304, 304, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'fa3e8562-8d1f-4229-9928-635c69d835d9'),
(305, 305, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ea06d1ab-e174-48fe-92e9-d1d6b0c22e18'),
(306, 306, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '4fce54dd-0f69-469f-a2fb-5178202e4b71'),
(307, 307, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '34035c06-f981-40df-97fb-fe60c38fcf7a'),
(308, 308, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '49af68fb-5197-4823-a164-f9d941ae6a5b'),
(309, 309, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '1e847c9c-0ab5-4446-a9a9-0b905a7851e8'),
(310, 310, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'd34fb7e2-b1d3-46db-9977-dd56f9a1f1fe'),
(311, 311, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'dd4c804f-c47b-4b3f-a85d-c5a15d2c479e'),
(312, 312, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '8f9f169b-e641-4697-9795-a24b7a039359'),
(313, 313, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '18670bee-6ba5-4288-b26e-ee2830fe9312'),
(314, 314, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '85e2c624-ac8d-4eff-8848-9b99be960b27'),
(315, 315, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'b8c8446e-d23e-44c1-95d8-03cd0ae033a5'),
(316, 316, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'cde7153c-190b-4e60-8c81-ac02f98461fe'),
(317, 317, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '8dc04088-e4d5-4d3d-bfdf-01c497ab883f'),
(318, 318, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '6af161a4-5555-4e6e-b000-3023fded6205'),
(319, 319, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'd0032c52-17fc-45ec-85b1-c200181c5cec'),
(320, 320, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '9812854f-052f-465c-b53e-0aa105a52013'),
(321, 321, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '560045f8-29b9-43a5-9bcf-24c94d34683f'),
(322, 322, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'c6186d1c-89b2-41f4-b738-b925546ca872'),
(323, 323, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ab081fa5-41ea-4584-9320-c90a78770467'),
(324, 324, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '00cd22aa-5b4f-4a4c-819d-c9d0b7148bea'),
(325, 325, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'd4e48432-8ca9-4b1f-885a-11049abfb6c7'),
(326, 326, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '32d30554-64a5-4175-bcd0-4b249b076062'),
(327, 327, 1, NULL, NULL, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '9a7743a9-ff8b-4525-b17c-3be57dc3a57e'),
(328, 328, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd5208364-503f-49ad-9102-b735f1cd66a3'),
(329, 329, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'cebd4789-461b-4ce8-aa8b-f843c4f2b403'),
(330, 330, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '8586f188-0bfb-451f-b0bf-413965d57f54'),
(331, 331, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'b47b3f7a-e129-44af-8eb8-08ec2a563e25'),
(332, 332, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '4eaaf76d-ff00-4480-92be-4acb92c777eb'),
(333, 333, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'bf8035fa-5384-4679-b6fe-6a52eba673e7'),
(334, 334, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '6f2dee89-d06d-4f76-a72b-2b6bd1dcb4bf'),
(335, 335, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '2395db59-0f4a-40f8-9cce-691dca6e3bc8'),
(336, 336, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'e2b04d71-2a6f-42bb-87d4-048973804f5d'),
(337, 337, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'f62f38b1-7088-45f9-a456-301dc969c1e9'),
(338, 338, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd04ecdf6-f940-4558-810a-0e0abda6a123'),
(339, 339, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '03d3f565-5b1a-44d7-ac1f-4ab560c90a80'),
(340, 340, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'cb4dbe8d-b2fe-4e40-9aae-2b837468605c'),
(341, 341, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '48822557-2b66-4d04-a5cb-533e77f6c8e7'),
(342, 342, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '2cf96461-563f-4a74-9d47-d8e012a0e256'),
(343, 343, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'cb22e668-7c17-41e7-befe-e530e52f0508'),
(344, 344, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'b602d968-875c-467a-bf8f-8877662610ed'),
(345, 345, 1, 'laravel', 'platforms/laravel', 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'b153471e-7074-4aa3-b401-c077489520d4'),
(346, 346, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'f5f51a72-c2fe-4228-be22-01df1a4b76ab'),
(347, 347, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '8e3f42aa-9f04-46fb-8bfc-339609a5c5e7'),
(348, 348, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd0ec5349-78e2-43b2-8007-e84975f6502c'),
(349, 349, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '2fdc4092-c7f3-47de-a58d-6962955cf2ff'),
(350, 350, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'b7872719-9ea5-4f93-8b79-dbc0105f7f69'),
(351, 351, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'e2bf543b-3205-43b5-a207-94742c507422'),
(352, 352, 1, NULL, NULL, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd9c52698-83bf-4513-a378-a9beb1e3735b'),
(353, 353, 1, 'drupal', 'platforms/drupal', 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '177159be-7d5a-4825-aecd-de0eb66fb703'),
(354, 354, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'a6d5727a-540b-4bda-87ea-a092f55c03a3'),
(355, 355, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'cc554230-ce17-46c5-8d54-1075a9459e90'),
(356, 356, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '2f6571bb-b889-4057-8f0c-b0d6ebc96139'),
(357, 357, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c5ed7e02-6f0a-4730-bf2d-b2d7f2b879c0'),
(358, 358, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '6455b1bb-4a2d-423f-8d32-0e01f1b9bf43'),
(359, 359, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '0ca26cbc-1a11-40e0-b299-eee1cc31459e'),
(360, 360, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '8ee16dac-6bce-475a-add8-c7293758e8d5'),
(361, 361, 1, 'homepage', NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '289f48c4-646f-473d-9a05-b7af975b8cee'),
(362, 362, 1, 'how-many-visitors-per-day-expected-on-site', 'questions/how-many-visitors-per-day-expected-on-site', 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'f4f30452-ad27-452e-a3e3-61a8e1e006fe'),
(363, 363, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'a83a0bea-6c57-4e23-ab6c-3a22a3ef03e5'),
(364, 364, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '2ddd9bf6-bf69-4bf4-9d48-7a82da3dcf87'),
(365, 365, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'b0f2dad1-beb8-41fa-9160-5300770f8969'),
(366, 366, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '54950d66-98f2-468a-b55e-a94e44c925c6'),
(367, 367, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'd34e097d-bb3a-4cc9-8a02-790970a4e052'),
(368, 368, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '04ae7719-8e77-4fff-b596-6695a7634936'),
(369, 369, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '2e5e3586-3d37-4953-9072-23beee2f338c'),
(370, 370, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '4b50c5b3-0856-4d40-8cc1-9929ce22f6f7'),
(371, 371, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '1ece8f46-d537-4860-8d4b-1deaec9e21ab'),
(372, 372, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c01020f0-20c7-4889-aae0-3575a1620924'),
(373, 373, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '7e6842d0-0b62-4011-afdc-cfc14be0d3f4'),
(374, 374, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'd91e6bbf-594a-4e04-84d9-a40a520b607b'),
(375, 375, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '15debfc6-238f-450d-9ad2-57fc428900e4'),
(376, 376, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'd4ab9959-9f19-4bb8-8b0c-db69369c7b0f'),
(377, 377, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '4cbf4dee-5518-47cd-b8b0-28ab02d1458b'),
(378, 378, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '34830793-08b7-429f-8a41-0b1034c1cd54'),
(379, 379, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '35bbda93-9c4f-453e-b524-61a0859d3cf3'),
(380, 380, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '968d223f-c425-4ce4-952d-0e943c2853d2'),
(381, 381, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '2d81299a-0b96-4fe8-be17-d0c0c47ff15b'),
(382, 382, 1, NULL, NULL, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '5b8a1cdf-d3b8-493c-8885-e9da93a9f465'),
(383, 383, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'a4e4c05f-9e44-4004-aee0-d4a2e4cf5c0b'),
(384, 384, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'd74e530a-cee1-4a66-a488-00af2b6e911f'),
(385, 385, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '18ff6a96-f181-4e56-afd5-48a24d603b8c'),
(386, 386, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'e8764963-8687-403c-94f9-85b2f8e47aed'),
(387, 387, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '9e273a46-280e-4c65-9985-9bed3a4be92f'),
(388, 388, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'd9fc1e2f-eedd-474a-8e9c-7dad59010dda'),
(389, 389, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'db786c60-9621-41e5-a937-28b107c687d8'),
(390, 390, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '7b946887-7f63-43f1-a390-8c1f3f457b38'),
(391, 391, 1, 'craft', 'platforms/craft', 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'fa448cdb-4075-4c7c-9f04-b6fc97b07f10'),
(392, 392, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '358f6c0d-dfc5-49af-ac46-35eb5c395904'),
(393, 393, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'ad202622-4d68-439f-a0c4-dbefaa4fb576'),
(394, 394, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '7c7f6c7d-46d2-45a6-9faa-81abcfe42b69'),
(395, 395, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '36dae8e2-8237-4051-b411-0cac74f85bb7'),
(396, 396, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'c7f4e9c2-da4a-47d4-bb17-8e783b266b60'),
(397, 397, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '190aba3d-9082-4ca1-b86d-a3e52e0a6203'),
(398, 398, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'e7f505a9-eb20-4494-84e0-85cffcfc6574'),
(399, 399, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'e9097963-7c42-4f3b-bebe-f4419a66e978'),
(400, 400, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '82a59c15-75dc-4011-99ff-780c95c5ce9b'),
(401, 401, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '8f61a391-0d13-4718-ba16-98ed44d380fb'),
(402, 402, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '3896cc20-bf8e-4218-97f4-37259c147c8c'),
(403, 403, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'a603d101-6923-48d8-a4f7-219b9908b7fd'),
(404, 404, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '45012b8b-82d7-4476-ad3c-2583f92afaf3'),
(405, 405, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'ce5034dd-cd1b-4095-bfac-dfaf18e59c97'),
(406, 406, 1, NULL, NULL, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '955ab632-8a54-4b43-b61f-e451ba0946ff'),
(407, 407, 1, 'outgoing-cost', 'comparison-item/outgoing-cost', 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '6509573c-fbed-478f-838a-28837ed07d10'),
(408, 408, 1, 'scalability', 'comparison-item/scalability', 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'e64c47bd-05db-4ca7-b770-5806e1aed6f2'),
(409, 409, 1, 'customization', 'comparison-item/customization', 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'ae6841c4-5b76-4ab8-ac3f-e8626e1adaed'),
(410, 410, 1, 'seo-friendly', 'comparison-item/seo-friendly', 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'a6cc8f18-26fd-4203-9510-c79e544270df'),
(411, 411, 1, 'performance', 'comparison-item/performance', 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '5cfcaad4-d143-4d5d-9616-71da4a1c32b7'),
(412, 412, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '31b0c490-b277-47c8-bbf2-2fe64625e7d8'),
(413, 413, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'c3bc923d-081e-4b6a-80c2-20aa3973fc07'),
(414, 414, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ecb02d13-874a-46b9-a3c3-877a6a129e5e'),
(415, 415, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '31063cf1-7138-4df6-89c6-59aa43bfb858'),
(416, 416, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '28ae7d45-11ec-467a-bc61-61791e49d55b'),
(417, 417, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'd96e75ee-a9ed-4031-a6f3-bd75a19340fd'),
(418, 418, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'd3549e5c-878f-4ab5-86a6-007853cc7d75'),
(419, 419, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '94c7bfa1-540a-4a27-839c-0de22c0591ed'),
(420, 420, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e7ee5578-38ee-4e31-969c-f435844a23f4'),
(421, 421, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'd9b214c7-9e9b-4697-b499-30159c7c8687'),
(422, 422, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'a0fc84c0-efce-4440-bca1-78ae34ae18e2'),
(423, 423, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '67de8799-b5d5-4464-8bf5-cfe2dc944c58'),
(424, 424, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'd9f769bf-c2bc-4418-a970-5e32a013428f'),
(425, 425, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '064ce903-0942-44f6-968f-677b0a27510d'),
(426, 426, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'f95ab40c-3574-4757-b99f-ce63b2e3b841'),
(427, 427, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '4796237e-280f-4a04-b63b-035614202735'),
(428, 428, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ae4a4227-4b72-4fa9-aa97-8298127144f8'),
(429, 429, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'a6d4616f-997a-40d6-8809-2004837cbad3'),
(430, 430, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '76a6d1b2-fb1f-4167-8a3c-4e3edda260e5'),
(431, 431, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '14c391a4-a00b-45e7-a5b6-77a89f11562f'),
(432, 432, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '79aaaed7-7659-4d3b-aff4-368d0f5d1f16'),
(433, 433, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'b1aec56f-b984-4381-8489-ce3edb564e60');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(434, 434, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ca67840a-3bc4-4099-83b6-3590fda44303'),
(435, 435, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '07b9f65b-6f5c-47b9-b481-77713c98d0f0'),
(436, 436, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '8ae8455e-688a-41ae-8b87-6ccce3062286'),
(437, 437, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '5f0315b5-1964-43b6-b567-7112881b7150'),
(438, 438, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '87e620d9-e13f-44c9-9aca-405adb366d4f'),
(439, 439, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '4f4b3bc5-1168-4517-a05d-51fc49527280'),
(440, 440, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '3a2c7b4a-6f13-47c4-acea-316620303a2e'),
(441, 441, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '948ddf51-9d82-4eea-951c-743aa78e70b0'),
(442, 442, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '729526a5-0b2e-4d8e-a5d1-10a5bf235551'),
(443, 443, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'cf88c558-9bd9-435a-99a5-86f756a6d9c4'),
(444, 444, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '07458955-023f-4c08-95f4-f3ef2193ff4b'),
(445, 445, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e8b09574-a512-4d07-a821-a68b5e569de7'),
(446, 446, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '7ad89951-8bbe-4471-a9ad-30e0e3bdb7f7'),
(447, 447, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'f6fc1386-9cc3-48e7-88da-c1df2e6fa066'),
(448, 448, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '924930ef-2698-461b-90c9-a45979bb9c25'),
(449, 449, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '55e405b6-750c-491e-bebf-cfd2434d5b1f'),
(450, 450, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'f218d36b-86a8-40cd-a18b-3cb6d003f2de'),
(451, 451, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '40982bbd-d2ce-4bb6-81a1-ef1e13e57da6'),
(452, 452, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '4275af6c-a2e9-4359-88d0-a91162c656dd'),
(453, 453, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '67dac262-1c39-4b05-906e-8dce794fd2ab'),
(454, 454, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'f300f954-e16f-4d6c-9f36-95a12c49bccd'),
(455, 455, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e8605923-c81c-4297-990c-105a5ea1fea4'),
(456, 456, 1, NULL, NULL, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '96bbd190-a282-442b-851d-ebfc05fe9e7f'),
(457, 457, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '5aced5d7-77cb-4296-8f10-ab2b562ee856'),
(458, 458, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '16c8f084-a0a4-4ed5-9051-1caa0ee59907'),
(459, 459, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '84ec9491-c64f-4ea5-8243-47e30116a764'),
(460, 460, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '87b1745c-1152-4667-9263-e33022587651'),
(461, 461, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'bcd5cf16-28f0-4737-bca3-a824023120c2'),
(462, 462, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'b669e134-3655-4fb3-bcab-9f5a48951279'),
(463, 463, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'fbd9c664-7915-4f18-8017-c6f813c78278'),
(464, 464, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'b36ddb82-adb3-4f25-9ff3-2795ac467e25'),
(465, 465, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '5744d630-31f4-4130-b801-1420b9ce33a8'),
(466, 466, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '60d3e12e-32eb-4ca3-9bcd-3e2b09cf9529'),
(467, 467, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '59ec0cf7-e3a0-4d66-a0f9-686a83f3c24c'),
(468, 468, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '8ceda683-d8a2-41fc-ac8c-ee13c331ed27'),
(469, 469, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '2749ecf5-6fc6-4040-84f6-7af6cb4f20eb'),
(470, 470, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'eebc8d63-4143-4644-8272-f62c69b119e4'),
(471, 471, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '4c58ac77-1a9f-49d8-8169-e032bb1b956d'),
(472, 472, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e36eca45-6823-4706-9259-e340c5d9fab0'),
(473, 473, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '9895cfb6-ca5b-44e0-b226-f69dceb94186'),
(474, 474, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'd4f606a0-aa02-42c7-927b-e799ff6579a7'),
(475, 475, 1, 'how-many-visitors-per-day-expected-on-site', 'questions/how-many-visitors-per-day-expected-on-site', 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'ab1ea45d-b8d4-41f7-a1ad-1f1f3df12603'),
(476, 476, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'd2b91e8f-4379-4d93-ba6e-5a81ab804400'),
(477, 477, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '4867afcf-fa66-476b-9085-ae22b61d91f6'),
(478, 478, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '39e1e999-30fa-4500-ab8b-92b3a1fb5d88'),
(479, 479, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '0977fbd9-94ac-4281-92b6-a5d7cf70df9a'),
(480, 480, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f2bbdeba-678c-4247-bea1-f68f1659fa0d'),
(481, 481, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '555aa9de-38d7-47be-a425-24926f65d9a1'),
(482, 482, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '10793eb3-a2dd-4285-b306-41a0d3efde52'),
(483, 483, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '34a99fae-4a1b-49db-89f7-f06bb4347ab9'),
(484, 484, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '3df8bf35-78a0-4fba-9ae6-635dc531b43b'),
(485, 485, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '1d6e1d06-c39e-4697-a7b1-539e7c4319f8'),
(486, 486, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'ac163d73-b26c-4af7-af71-a053786dda4a'),
(487, 487, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'd6acdc00-791f-4dd1-b86b-99b4c0c76290'),
(488, 488, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'faa248f0-cf3f-4c60-b0bc-e5c8938f9299'),
(489, 489, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '29233a80-206b-4a10-968a-807e31426882'),
(490, 490, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'cdfb230b-8a89-41c9-abee-98cfd479309c'),
(491, 491, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '336a148d-cf82-46a4-b34c-f7fbda5f4f15'),
(492, 492, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '5f084157-247c-4cd6-8573-7a003d692118'),
(493, 493, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '88700a93-c59b-4712-8a93-8e6baec23884'),
(494, 494, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '9d2ac0bc-c3db-4e26-8377-db8978159fb5'),
(495, 495, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '6524edf3-7c20-4875-9c06-ccf82d058218'),
(496, 496, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '061246a3-5d18-49f3-9b52-8a20a4185d2b'),
(497, 497, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '89ff2702-0298-47a8-a28c-165ef9b19a2e'),
(498, 498, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '1e2b6d1f-a5bd-4f79-abf6-31853dff10b8'),
(499, 499, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '9f6db9ca-6909-42b7-a7c4-f2aedf850153'),
(500, 500, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '3c94e540-9403-477d-a3ed-008284ae9208'),
(501, 501, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'ec299bab-34a9-4f95-9a86-c33ffda2e446'),
(502, 502, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '76abaa89-d8ff-43ed-a51d-cc26d069dfcd'),
(503, 503, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '2abdc141-9a81-4da4-8d6a-cc54b6703225'),
(504, 504, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'befe1be8-51df-4f6b-bae8-c6b9457ab307'),
(505, 505, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '5af4e1ad-79db-4bb9-a58b-9b00460daaeb'),
(506, 506, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '14270b1c-d8c3-4a3a-820d-8f824a7d4c3c'),
(507, 507, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '5325b3f1-877e-417c-b88b-ac7698da4efc'),
(508, 508, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '7714e782-8740-4be2-b8c1-21ec9c2f4c87'),
(509, 509, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '44dfd912-3831-4f64-9bd8-d98d4e319f32'),
(510, 510, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '0bda11b4-d128-49bd-86c4-b37b8b3bb9d0'),
(511, 511, 1, NULL, NULL, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '1bad5e07-d975-416e-a0dc-bcfa463f3f65'),
(512, 512, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '626d3191-f296-468d-b3ab-0756f1b7f6ca'),
(513, 513, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '0885cd49-328e-4196-908e-ddc3b6b24bf5'),
(514, 514, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b4d44c42-42c8-44eb-8c81-186417e6468d'),
(515, 515, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'aa24c78e-ce64-4b50-aa6e-b05729f22149'),
(516, 516, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '22dca1ec-ebc0-46cf-85b2-cb982f711426'),
(517, 517, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'dd5bc4d7-26a7-4a7f-ab0d-4d8977251483'),
(518, 518, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'fc87db5f-a34a-45bc-a0db-76fec5cac54e'),
(519, 519, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'bd1f3f82-18d0-4ee2-b983-a971b5726845'),
(520, 520, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'fdfddd5d-895c-49e7-acf9-ee9a4eaf3070'),
(521, 521, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '9613f3fe-d1da-4b1b-b10f-50cd793d7d22'),
(522, 522, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '28602c6f-42f9-470d-b55a-0224547bd801'),
(523, 523, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '08b64471-09c8-4a86-abcb-2e00f753469a'),
(524, 524, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'aa588df2-fc27-4049-b781-74182b4d80e6'),
(525, 525, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '5cd19c1e-a1e4-4f3a-aebd-f8179597fde8'),
(526, 526, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '2d7f533e-17d4-47b7-a849-4c65237ff94c'),
(527, 527, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '97e4226f-1d9a-4b43-a729-9ba657fd897e'),
(528, 528, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'd2454c7f-530c-4ea1-b869-0a70dad0dd2e'),
(529, 529, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b16555ec-6ebd-467e-9694-d4bbb23882b4'),
(530, 530, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'fef12ec6-8f83-4e95-bbcc-9ea94d174a5d'),
(531, 531, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '92b95809-91a0-470a-a887-504a4a68a114'),
(532, 532, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '8c5811f8-62b9-45a3-901d-b6fe106dc3b3'),
(533, 533, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'cefe27ac-b530-42d9-9089-a3def25b8950'),
(534, 534, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '5d8c55a7-b615-4218-9c36-d9d5c09fc25b'),
(535, 535, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'eb76bc01-be53-4359-a632-3e35f108d8ea'),
(536, 536, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b5048d2e-4fe9-43d1-bfee-a04b4344cbd1'),
(537, 537, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7178bdee-38d1-44ed-9eed-9250e9ddea78'),
(538, 538, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '1da000da-e436-4a8a-8b35-1ec571c93a38'),
(539, 539, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '9310d454-b278-488e-a679-1d959abe0570'),
(540, 540, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '73a54cc9-47b6-410f-ad92-ed3e85a0828a'),
(541, 541, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'e18d11fe-bf79-493e-8657-cdf25664c42f'),
(542, 542, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '2fc60793-618b-47dc-90fd-7b1a280817ea'),
(543, 543, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'd917a874-1748-42e7-be52-610a1da0a753'),
(544, 544, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'bcddca20-bfc2-4e29-b57c-08f0ba45dcc1'),
(545, 545, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '2098afed-4937-454c-afa7-169fb322068e'),
(546, 546, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'd0bda419-9985-4a0d-850d-cb5efee92d27'),
(547, 547, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b20e6c24-db44-4112-a93b-ab8a1a1a17dd'),
(548, 548, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '959ec366-450f-448b-8d1d-9547f3319a3d'),
(549, 549, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7aa52b2a-974a-4c79-9a86-a4fd6f3bed94'),
(550, 550, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7e82ef5d-26ac-4ab9-8e36-8ee35aa76e4c'),
(551, 551, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '9f13e65a-0b08-45b4-a9bf-97905e411950'),
(552, 552, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7cedc54d-8bc0-4599-bd38-5649e78ba2bb'),
(553, 553, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'fe46335d-21d6-4c2c-bb7a-5546aeab3621'),
(554, 554, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'edd04be6-16d1-4939-9983-2f594877aca2'),
(555, 555, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '4e183c23-edf5-44b0-bcdb-e217a2d5c132'),
(556, 556, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'c8934598-fca7-4aec-8c8b-853d212ca9e7'),
(557, 557, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '8f01c19b-2713-4e1d-95aa-61503244ff79'),
(558, 558, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '4f39679f-815e-46cf-9f63-b2c5a210660f'),
(559, 559, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b44e2d4e-44f5-4bf0-88b5-90d903994c57'),
(560, 560, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '3efc63aa-373f-41e2-9869-679576ca717a'),
(561, 561, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '356f8341-b560-4c3b-935a-e17ccdd4efbe'),
(562, 562, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b042948b-958c-4392-a171-eb01a678f70b'),
(563, 563, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '93c1a469-8d3b-4d76-a461-3389bdf8eb20'),
(564, 564, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'df7fce64-a03c-4111-8bdc-3c9e69892487'),
(565, 565, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '67d64f63-717e-4295-83b5-5bc7fd037223'),
(566, 566, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '969ef654-86de-4e56-9450-0b37746f0a79'),
(567, 567, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '9268f345-0deb-4b34-a0ee-737e2b9c5766'),
(568, 568, 1, NULL, NULL, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '50d68c76-7d27-4151-b692-9147e3097f69'),
(569, 569, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'aefb685a-bbcd-4ba9-994b-1869a2f6abd7'),
(570, 570, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '02bbbc4d-3d37-4db7-9ce1-0c5eadac5803'),
(571, 571, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '2bba2a77-f4c0-4322-88a9-54d8ac427e12'),
(572, 572, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'ccfff1b3-75bb-4d5e-bd99-48ec5e1e2d3a'),
(573, 573, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'c650e567-0e8a-4296-b83c-6722c17ab030'),
(574, 574, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '3ea2c3eb-de9b-42cc-8c27-6a61e5aa2eef'),
(575, 575, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '49b992fa-61ab-4071-b467-7f2bf27fad0a'),
(576, 576, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '3ae31950-3cb7-495e-aee2-1afd9190272f'),
(577, 577, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '91fccb8f-ff52-44ab-8a81-950c663b9156'),
(578, 578, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '3445d676-a1ca-4f53-976c-ac2a50ebeb64'),
(579, 579, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'fc645119-5fbb-491c-92ff-80862e112f9a'),
(580, 580, 1, 'what-site-type-do-you-need', 'questions/what-site-type-do-you-need', 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '91fd68aa-e4e5-4c6f-9e67-4e4978c12dbd'),
(581, 581, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '7a509cea-9fc0-458e-b7e6-e5370a9830f6'),
(582, 582, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '4ba02eb1-36b1-4f63-b5d8-1149f420e2d1'),
(583, 583, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '6b1b8f49-c339-4eb1-a12f-59880d4f5efb'),
(584, 584, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '27310900-c70b-4a1f-8acf-70c255d9080d'),
(585, 585, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '568d0d09-7ca3-4a5b-b145-06d7760f8b4f'),
(586, 586, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '52117cd9-a08b-4e94-abe6-7cde93211155'),
(587, 587, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'b9257661-c617-4df1-8641-7506d8147a31'),
(588, 588, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '1c604362-823d-47e1-8b29-b5115dcb5de0'),
(589, 589, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '91909978-4816-49bb-aaca-a33885770eec'),
(590, 590, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '05aaef62-c4f6-401a-897f-1f6bfb4e0ba9'),
(591, 591, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '8adb5354-fdff-413e-b96f-9962b7d0b099'),
(592, 592, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '3a18ce6f-0aea-4ddf-af81-cb52eb8e7751'),
(593, 593, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '3fd06673-a8f2-49cc-906b-6e8ba5c37bd1'),
(594, 594, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'fc8b2060-d72e-42bb-9d31-a7df25a69e65'),
(595, 595, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'afecdd89-87cf-4761-a4be-0d78f828b344'),
(596, 596, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'b8fde42e-1afd-45e7-8f41-5dac2bed6d8e'),
(597, 597, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '61f806b0-e0bc-4f3e-bee9-740f99e85fb2'),
(598, 598, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '1f463212-cfbd-49f9-97c7-d5a400b7dd7a'),
(599, 599, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'd3d73be4-eedc-4dc1-b79e-4fc55ebde379'),
(600, 600, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'c127b976-2ae7-4f47-9c0f-42e59d6234be'),
(601, 601, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'e058f941-140a-49df-b15e-b3a4abc56a4a'),
(602, 602, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '5827da31-7cc8-41a0-8c13-a871afe53569'),
(603, 603, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '01bf979b-816f-4357-a519-d255caa428e2'),
(604, 604, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'e030b89c-4386-4e25-a479-a83dd99f0c1e'),
(605, 605, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '4d36953d-5a06-40cf-a425-bdb7ff792e09'),
(606, 606, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '9868ca5e-24cf-4cdf-bda5-b17a7a559202'),
(607, 607, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '37cb1780-72e3-4d31-a607-8bbf257ebf39'),
(608, 608, 1, NULL, NULL, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '0e13e515-4c46-4da1-82be-eb9752805ae0'),
(609, 609, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '191a1735-2024-4722-9399-f9eadcb65a06'),
(610, 610, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '5e6da5cc-d055-4c84-899d-9f249891fca7'),
(611, 611, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'd159a3e3-4523-426f-980b-75b510310825'),
(612, 612, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'fa3a50e0-568c-4000-af55-8b4a9d74f323'),
(613, 613, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'fd0ed7d1-900a-4c3e-ace4-6b65eb29dd6d'),
(614, 614, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '3aa96911-d2ad-4ce8-a123-09ef871c6bb4'),
(615, 615, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '7af972cf-c088-4cf8-bc25-d7f982238e4b'),
(616, 616, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '6526af42-232f-4f31-926c-81a6fa33d09a'),
(617, 617, 1, 'craft', 'platforms/craft', 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'ad47e110-ebe6-456d-a889-d3531870e654'),
(618, 618, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'bead9e82-a4c5-4ddf-a1f9-b0ea0f4cbafc'),
(619, 619, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '9abf2e96-474b-47ca-9f1b-9006254addf2'),
(620, 620, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'dc54d72d-e9e2-43ab-bad4-845bc67a10b5'),
(621, 621, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'a471162c-7aea-4f97-994e-ee755fe4c430'),
(622, 622, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '9153d243-4a24-45b6-86f4-0bd6b6fc0ac4'),
(623, 623, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'b59b5f3b-6d1e-4462-8df8-9269826d77ec'),
(624, 624, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '34585803-a244-4774-bbba-d47ef15899bb'),
(625, 625, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '0568b4b7-2ba1-4c91-bed0-45e407f75232'),
(626, 626, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '8143ea8c-6092-4e12-a4f1-72ac0a5b8f62'),
(627, 627, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '5e4ab17a-d202-4644-8941-31da07fedea0'),
(628, 628, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '7ef6d8e0-185c-467a-86b7-506bd1c48602'),
(629, 629, 1, NULL, NULL, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '306bddda-e250-40e5-a09c-d7949b5cdc82'),
(630, 630, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '8700b8b8-f8d6-401f-a2a5-e2b0058220f1'),
(631, 631, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '88b5a0de-cc01-4ceb-8a2c-d57ba6dc94be'),
(632, 632, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '01fa1ef6-cc07-45ae-b4d0-8147a66107bd'),
(633, 633, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '132631ac-2af1-41ea-a368-cfb61526116d'),
(634, 634, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '24b1f415-09d7-477a-8cf8-fd50153e7bf7'),
(635, 635, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'b6b447cf-ac23-4d46-90fb-72e174dec9b3'),
(636, 636, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '2ec07197-d4b2-4d3e-8d4a-6e9124194bc4'),
(637, 637, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '099a7829-59f0-4046-a528-7e54c57440bd'),
(638, 638, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '0991f5cd-9065-4d77-92cf-7f9643e8d2f3'),
(639, 639, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'd2f381a0-3fce-4875-bf4e-d349e535fa7f'),
(640, 640, 1, NULL, NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '8969bbe2-4e50-43a8-8de7-88931d63010b'),
(641, 641, 1, 'homepage', NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '711cda0b-08e3-44f6-9166-9bf7ca6e86fd'),
(642, 642, 1, 'homepage', NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '8d1f137b-88a5-41e7-a69a-a6dd5f188d29'),
(643, 643, 1, 'homepage', NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'bcbc60ee-98ee-4da4-9748-4609d423ae21'),
(644, 644, 1, 'homepage', NULL, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'ace7303c-6453-4bae-8bcf-c93b21e74409'),
(645, 645, 1, 'homepage', NULL, 1, '2019-07-16 07:36:16', '2019-07-16 07:36:16', '6fb5fd0e-8993-4643-b507-503eb9f0973f'),
(654, 654, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '8df614ad-dc4a-4408-b1d3-47941a619d7e'),
(655, 655, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '7a8447c1-fdfb-4bc2-8e24-00b5749a6aa1'),
(656, 656, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'a66819a8-5134-4c30-8540-ef6dedeb1a04'),
(657, 657, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '377a7b6f-9197-4fc7-9498-57ce47eb84a6'),
(658, 658, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'dcc2d03c-6a82-4849-a5b6-2b539ab60ced'),
(659, 659, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'd0769385-6041-4fe4-b6d2-a01ac7c6f194'),
(660, 660, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'c1b3be48-e5a4-47d7-b2e8-b1a9fc062c73'),
(661, 661, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '2f759eef-6ad1-42e6-91d0-1985acf0ac11'),
(662, 662, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'e78352d5-31db-4549-8ec5-b17fc77a7254'),
(663, 663, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'f263fc35-029b-4cbf-881d-2ba93dc16d99'),
(664, 664, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'ee9e8f87-6b29-40f2-b013-9c5f714ab96b'),
(665, 665, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '087783fa-ec50-43e1-99c3-6ba677dfcd05'),
(666, 666, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '29ec8dfd-a06c-4672-9383-9fa3b93adec7'),
(667, 667, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'f5c70fe0-ed32-4b6e-b749-859df0d41173'),
(668, 668, 1, NULL, NULL, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'a71acaa6-8533-43ec-bf5d-75182ff993ce'),
(677, 677, 1, NULL, NULL, 1, '2019-07-16 10:14:26', '2019-07-16 10:14:26', '3280108c-e27f-4fd1-95ed-79c07dfa7c3c'),
(678, 678, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'b8a43cfd-cc20-4620-a1d0-154971173b3a'),
(679, 679, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'c41eac0a-a05c-4e0a-9492-3e708a1face5'),
(680, 680, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '0fbb90a8-ba25-4222-a5f3-3392e54aba82'),
(681, 681, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '5daa893f-8a99-4a15-a126-5bef6c3168e7'),
(682, 682, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '57152570-9a23-4088-9236-4913abe4be46'),
(683, 683, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '1a00f1c0-2833-4492-a2d2-9f7c27b5178d'),
(684, 684, 1, 'craft', 'platforms/craft', 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'dd806d4a-10d7-4fee-86e8-f1c4256567b5'),
(685, 685, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '1ce623aa-9e9f-4fd3-90e1-d913d856ebbf'),
(686, 686, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'e0aa36de-59b7-450f-a4b0-b47e8ef4e27c'),
(687, 687, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '21ee1366-45c5-4a71-a8f6-8dec513e82d8'),
(688, 688, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '6af8ce51-e012-46c6-a44b-44d50b502928'),
(689, 689, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'c0c14b3b-57d7-45d4-832c-682cb56943af'),
(690, 690, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '7e76ff8d-f1ad-4335-9eb4-90d48460b5ef'),
(691, 691, 1, NULL, NULL, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '2a1f761b-e7c3-4202-916c-e5dadf47c4ef'),
(700, 700, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'e67e64f8-75d8-4dce-a1c7-d8ff69225e43'),
(701, 701, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '637b4c3c-540e-41b0-89a5-185a9405ce8c'),
(702, 702, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '82c7c18f-7af5-4fe0-94b2-0803c6283ea7'),
(703, 703, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '774297dd-e610-493e-b0d6-7ee4e1a2f6ba'),
(704, 704, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'e9d35b4c-2ea5-44df-b085-e8600d0aa0c9'),
(705, 705, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'cf283b3e-698c-4bb3-a7af-d3faab798dd0'),
(706, 706, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '7869127c-26a2-495a-8b68-2af8699ade28'),
(707, 707, 1, 'drupal', 'platforms/drupal', 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'e81b4c43-6b50-4721-96f5-72a128e3f3d7'),
(708, 708, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'b2d6c4de-076d-4389-9ba2-50accc8ccec1'),
(709, 709, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '0ac8540c-a955-49cc-b893-609e3e1303ba'),
(710, 710, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '77b1078b-00f5-4970-aefc-a36391e35f54'),
(711, 711, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '732ec775-d552-4a31-b9e3-a8aab0d2a29d'),
(712, 712, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'eb2b5ac6-c0ed-4806-95ae-a1c0bb6df64f'),
(713, 713, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '18458b4e-33c6-495d-8d97-14539f15b3bc'),
(714, 714, 1, NULL, NULL, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'a3e803f8-9be4-44ce-91fc-43ed259d5f83'),
(723, 723, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '074409d7-3263-428e-8a7f-4ce5220ec8d0'),
(724, 724, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '1fbacd3e-ec7e-4cca-a0a3-db1447619cba'),
(725, 725, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'c5408ed1-7501-45fc-829a-77e53435be5f'),
(726, 726, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'c521f8e2-016a-4a4c-a25d-8a2782830bc4'),
(727, 727, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '8081d2de-9b58-4d71-b4c9-39cbdbc86927'),
(728, 728, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'e04868df-5ee0-471f-9cc9-6243422314a0'),
(729, 729, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'ce40f441-1e68-4fde-b559-619b96a4d007'),
(730, 730, 1, 'laravel', 'platforms/laravel', 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '92a69db4-bf54-4030-84eb-68280dd7d65f'),
(731, 731, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'd3bb591c-57c2-469a-af80-2d09e92deef6'),
(732, 732, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '06eca0f7-8f13-4d24-9743-df735cf03eb4'),
(733, 733, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '9e8a4715-748c-4089-bfec-a8aa0959aedc'),
(734, 734, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '03927d5a-1cf4-4f28-a933-7f2f692e0a34'),
(735, 735, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '2c8889e0-a5be-4203-b43b-c7b3f31e2c68'),
(736, 736, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '54ae8bb3-5dee-47e2-a297-c21b11708aa2'),
(737, 737, 1, NULL, NULL, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '71ca2ed6-c832-415b-b8ce-1f9e22b28c32'),
(738, 738, 1, '__temp_RDIxpfjYPPQqjSgM6on7mw2cpv8nHCRym6Zd', 'platforms/__temp_RDIxpfjYPPQqjSgM6on7mw2cpv8nHCRym6Zd', 1, '2019-07-17 10:41:26', '2019-07-17 10:41:26', '01cbd45e-6cef-48fe-8186-44a39bc31767'),
(739, 739, 1, 'thank-you-page', 'thank-you-page', 1, '2019-07-17 10:42:19', '2019-07-17 10:42:19', '3e8408c8-dd5f-41b0-8136-8470adefcb25'),
(744, 744, 1, NULL, NULL, 1, '2019-07-17 12:20:16', '2019-07-17 12:20:16', '42c66c07-9558-4782-8b9e-86818eaf162b'),
(746, 746, 1, 'thank-you-page', 'thank-you-page', 1, '2019-07-17 12:20:21', '2019-07-17 12:20:21', 'd524d151-069e-4a8e-913c-86ae722ffc11'),
(747, 747, 1, NULL, NULL, 1, '2019-07-17 12:20:22', '2019-07-17 12:20:22', 'c153c78a-8dfe-4704-a873-a382126cb2a9'),
(748, 748, 1, 'thank-you-page', 'thank-you-page', 1, '2019-07-17 12:20:22', '2019-07-17 12:20:22', '1a864abc-d65c-4c51-a078-1b0fff0bf2b4'),
(749, 749, 1, NULL, NULL, 1, '2019-07-17 12:20:22', '2019-07-17 12:20:22', '66713fd4-c94f-4339-afe0-d5d63e170d3a'),
(751, 751, 1, NULL, NULL, 1, '2019-07-17 12:20:25', '2019-07-17 12:20:25', '7f3d16e4-6a76-4e13-b349-7acb53dc6a24'),
(752, 752, 1, 'thank-you-page', 'thank-you-page', 1, '2019-07-17 12:20:26', '2019-07-17 12:20:26', 'ea75d525-dbdb-428d-8af0-c1c295f451ab'),
(754, 754, 1, NULL, NULL, 1, '2019-07-17 12:21:22', '2019-07-17 12:21:22', 'ef8e9735-0bce-4bba-b206-a3368decbadc'),
(755, 755, 1, NULL, NULL, 1, '2019-07-17 12:21:39', '2019-07-17 12:21:39', 'e942fcd0-19e8-4831-8efa-242175966678'),
(756, 756, 1, NULL, NULL, 1, '2019-07-17 12:21:41', '2019-07-17 12:21:41', '87694971-92a0-4745-a0ca-1989da0c40e7'),
(757, 757, 1, NULL, NULL, 1, '2019-07-17 12:21:48', '2019-07-17 12:21:48', '4bc175a4-aef9-463b-95e7-85145f61f1da'),
(759, 759, 1, NULL, NULL, 1, '2019-07-17 12:22:20', '2019-07-17 12:22:20', '7de1de25-b217-4ff4-9121-346d011d12cf'),
(760, 760, 1, 'thank-you-page', 'thank-you-page', 1, '2019-07-17 12:22:20', '2019-07-17 12:22:20', 'a403fc33-c08a-4c6c-bb74-63d477149346'),
(761, 761, 1, NULL, NULL, 1, '2019-07-17 12:22:20', '2019-07-17 12:22:20', '15c52c47-5c86-41db-b866-5d366a5e6348'),
(764, 764, 1, NULL, NULL, 1, '2019-07-17 13:10:28', '2019-07-17 13:10:28', '2fe1d7cb-2b29-4b24-9ebb-7783fc98cf5f'),
(765, 765, 1, 'thank-you-page', 'thank-you-page', 1, '2019-07-17 13:10:29', '2019-07-17 13:10:29', '9653ee35-98a6-4b8e-87bb-27928570cea4'),
(766, 766, 1, NULL, NULL, 1, '2019-07-17 13:10:29', '2019-07-17 13:10:29', '2c437e3a-284b-4ba1-ad78-e34c4adecf15'),
(767, 767, 1, 'drupal', 'platforms/drupal', 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '9debb9e7-d2cb-4bd0-b8a2-46b222808235'),
(768, 768, 1, NULL, NULL, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '0385de74-34d0-4a46-aec6-b5fef1df04dc'),
(769, 769, 1, NULL, NULL, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'cc81afa9-10f8-450f-bbdb-fee1b792f3d3'),
(770, 770, 1, NULL, NULL, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'eba7912c-293c-4f28-a1b8-f4dd8cc8b9c7'),
(771, 771, 1, NULL, NULL, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '4de1f848-b7ca-460e-accf-4413ffe86307'),
(772, 772, 1, NULL, NULL, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '48229030-8ee1-4e9e-967c-cfde442b8282'),
(773, 773, 1, NULL, NULL, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '2e70ef73-dd76-42b2-a333-dc2df59fdcda'),
(774, 774, 1, NULL, NULL, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '87a3c081-65c7-4914-ab2c-4b98aa914c79'),
(775, 775, 1, '__temp_CO3RNYXJgA0OWVTMGikBMwUIflPAdBPSjGJC', 'comparison-item/__temp_CO3RNYXJgA0OWVTMGikBMwUIflPAdBPSjGJC', 1, '2019-07-23 10:23:58', '2019-07-23 10:23:58', '2b9ea7f2-3fe1-4444-b4d4-13f867bf49e6'),
(777, 777, 1, 'results', 'results', 1, '2019-07-29 13:10:51', '2019-07-29 13:10:51', 'a07d08c2-f681-42f2-a0e2-b69cd9c7cabb'),
(778, 778, 1, NULL, NULL, 1, '2019-07-29 13:18:26', '2019-07-29 13:18:26', 'c8e583f1-92c4-4af5-a971-2a37dd9f8c28'),
(780, 780, 1, 'results', 'results', 1, '2019-07-29 13:18:34', '2019-07-29 13:18:34', 'f87891cd-f6e6-4b6c-9699-d542000c0258'),
(782, 782, 1, 'results', 'results', 1, '2019-07-29 13:27:40', '2019-07-29 13:27:40', '2d7f715a-f20f-4151-8879-451cecfb5da0'),
(791, 791, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '48e636fd-71cb-40a2-bdd4-2c08fa899cce'),
(792, 792, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '4036ec00-70ec-41a0-a3d0-81539650299d'),
(793, 793, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'e7df1436-dcfb-42cf-afe3-89587cdd025e'),
(794, 794, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '933c1a9d-d92e-485a-a204-d946a5eb607f'),
(795, 795, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'c390a3ba-f048-4d13-badc-34c7fd01c6f2'),
(796, 796, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '4600a06a-157b-47e7-b9d2-b698ee09a51c'),
(797, 797, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'c599dfe0-e52e-4bd3-aa92-5578c623d281'),
(798, 798, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '38478f13-f88e-45a7-8da0-1e6773348f38'),
(799, 799, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '9c4ac78d-2711-41df-955a-60dd42ddc80f'),
(800, 800, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '275351d5-5dcf-4396-9457-1254b7a1f8bc'),
(801, 801, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '2ae802c6-6a6d-4c30-9b7d-54512df16c23'),
(802, 802, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'ba70270a-b92b-4d63-8064-313aac1b2aeb'),
(803, 803, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '307512c9-7806-4af2-abe9-c7938ec3ae55'),
(804, 804, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '35a1c073-adc6-4301-a041-32008827bb78'),
(805, 805, 1, NULL, NULL, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '741bcb04-9c69-4d90-8e88-5694db064f67'),
(806, 806, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-29 13:35:48', '2019-07-29 13:35:48', 'ac297bc1-06c4-4cf4-a246-ec8c02376615'),
(807, 807, 1, NULL, NULL, 1, '2019-07-29 13:35:49', '2019-07-29 13:35:49', '1001438b-3614-4f90-81a8-b0fd93e83600'),
(808, 808, 1, NULL, NULL, 1, '2019-07-29 13:35:49', '2019-07-29 13:35:49', '377358f8-93b4-4754-ad27-e919e86db8c6'),
(809, 809, 1, NULL, NULL, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:50', '4ec32f94-1aca-4a2a-b834-a5c1be4bf4da'),
(810, 810, 1, NULL, NULL, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:50', '41d6855b-70d6-4a23-bc81-640b4d467e42'),
(811, 811, 1, NULL, NULL, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:50', 'e4422177-3fd8-40c5-80a3-928d08463f3c'),
(812, 812, 1, NULL, NULL, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:50', '0ced2a39-a3e9-473e-b469-d5ed752f1749'),
(813, 813, 1, NULL, NULL, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:50', '57d78c31-7b87-411c-8f34-c19f41238ebb'),
(822, 822, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'b1125bb5-4bfb-4673-8537-53b24c79584c'),
(823, 823, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '915e47a8-b265-474e-9831-5b24c9a30b07'),
(824, 824, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'c4cae92c-6572-480d-9cf5-aa8bf58a7427'),
(825, 825, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '2d6605c5-cfb6-4a44-8493-483d6582e3e2'),
(826, 826, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '94b4093a-40e5-4fcf-b483-c48c5eca86e8'),
(827, 827, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '3a9abe3b-00e6-4e90-8e39-3ecd1989877f'),
(828, 828, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '811dc1cb-2b48-4e35-ba30-cf32d7e2347e'),
(829, 829, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'c473937d-6392-42b8-94e0-41260eaf8fd5'),
(830, 830, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '80eb305c-ece9-4dab-957e-08d979355a48'),
(831, 831, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'c03c2440-707a-4157-be28-c2042d30bc10'),
(832, 832, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '74eaa989-3bf3-49c1-a22d-063bd05899a5'),
(833, 833, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'a290786f-00e7-4a8f-8091-0d6858d0246b'),
(834, 834, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '8c5bb935-0d29-4fe9-8827-0f4f79c0cbb4'),
(835, 835, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'fe8a931f-bf1a-4977-92c6-0a8a8e5b757e'),
(836, 836, 1, NULL, NULL, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '2cec4b9b-cc06-4490-abdf-118a8910e62b'),
(837, 837, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-29 13:38:49', '2019-07-29 13:38:49', '408a7f3a-5010-419d-a088-65338c6e5ac4'),
(838, 838, 1, NULL, NULL, 1, '2019-07-29 13:38:49', '2019-07-29 13:38:49', '508341bf-d24a-45da-8cc9-f4da0c0a1f3f'),
(839, 839, 1, NULL, NULL, 1, '2019-07-29 13:38:49', '2019-07-29 13:38:49', 'c4daa7f1-e2ec-4569-915e-0a7830b20b2d'),
(840, 840, 1, NULL, NULL, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'b49a7924-a332-4be0-9068-8546a0b47b8c'),
(841, 841, 1, NULL, NULL, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '859afb48-b69b-4cd1-9a0d-a8ac7eb5dd3c'),
(842, 842, 1, NULL, NULL, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '87cc7501-6f3c-40a2-b199-da0736a4e47d'),
(843, 843, 1, NULL, NULL, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '82a938e3-b896-4b90-8dfa-ea78260fb169'),
(844, 844, 1, NULL, NULL, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'd1246b5b-3d9b-4b98-bc8c-3e8d3a1a1a97'),
(853, 853, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-29 13:39:28', '2019-07-29 13:39:28', 'af69de98-3e1d-4091-a5ea-c02e06568978'),
(854, 854, 1, NULL, NULL, 1, '2019-07-29 13:39:28', '2019-07-29 13:39:28', 'e12ffb09-80cf-4590-9884-532d7e9d6bdb'),
(855, 855, 1, NULL, NULL, 1, '2019-07-29 13:39:28', '2019-07-29 13:39:28', 'a7fca492-a479-4c8f-b37e-382221223bc8'),
(856, 856, 1, NULL, NULL, 1, '2019-07-29 13:39:28', '2019-07-29 13:39:28', '9ea3e70f-d1be-4e16-a804-825614d79620'),
(857, 857, 1, NULL, NULL, 1, '2019-07-29 13:39:29', '2019-07-29 13:39:29', 'c86f6fc5-eb1d-4b7c-a0a1-22d1444f7667'),
(858, 858, 1, NULL, NULL, 1, '2019-07-29 13:39:29', '2019-07-29 13:39:29', 'cf803761-c529-4fd9-8819-08b35d3b99a7'),
(859, 859, 1, NULL, NULL, 1, '2019-07-29 13:39:29', '2019-07-29 13:39:29', '9d229388-8f62-4e00-aa5c-59a85a786ab7'),
(860, 860, 1, NULL, NULL, 1, '2019-07-29 13:39:29', '2019-07-29 13:39:29', 'adb16f4d-6a1c-4323-bd4e-c26f3c4952cd'),
(869, 869, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'f87a3412-6fa0-4493-9608-a866ec912812'),
(870, 870, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '6c50d1e9-146d-40c0-9f2f-581b5cccd850'),
(871, 871, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '3228aa00-010d-4f44-86f8-646fc160ca54'),
(872, 872, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '59385581-c3c3-4db2-8b39-8e853a3fc55b'),
(873, 873, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'ef071843-4b98-4ce0-a7a6-34f237174be6'),
(874, 874, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '92e44511-11ef-404d-b8fc-412f21b01343'),
(875, 875, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'a32580f2-d6db-4880-82e2-164afb8962f7'),
(876, 876, 1, 'wordpress', 'platforms/wordpress', 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'a5acd0df-fb22-473f-bd0e-b568d2494e83'),
(877, 877, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '5f2c806b-3eb4-49a9-acdd-3447a4a6cc2b'),
(878, 878, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'c094e8af-2d81-4498-a843-53fe7451ef36'),
(879, 879, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '8e594672-aa00-4dd9-a5b3-21b3ecd64713'),
(880, 880, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'ea06eb75-e0b6-4d93-bd33-26645d8e0dae'),
(881, 881, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'c19993e3-ed64-4713-b400-2d694ca9cf06'),
(882, 882, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '5c89a9d4-190d-4c16-82f2-b6bf5d098629'),
(883, 883, 1, NULL, NULL, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '844b08a0-8162-4c35-8729-0fd77e9c039d'),
(885, 885, 1, 'results', 'results', 1, '2019-07-29 13:40:34', '2019-07-29 13:40:34', 'd412ae99-8553-48ae-ada2-1201b7ac2124');

-- --------------------------------------------------------

--
-- Структура таблицы `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-06-12 08:09:35', '2019-07-10 15:00:43', '193e2213-7210-475c-9b33-1bd16aab28f4'),
(5, 2, NULL, 2, 1, '2019-06-13 12:46:00', NULL, 1, '2019-06-13 12:47:07', '2019-06-14 11:15:24', 'af533903-b87e-4035-a06f-7dfe29ee9b28'),
(7, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-06-13 13:16:38', '2019-07-15 13:03:24', '0195a007-0234-44fd-b165-f94c8854d116'),
(11, 3, NULL, 3, 1, '2019-06-13 13:51:00', NULL, NULL, '2019-06-13 13:51:08', '2019-07-15 13:10:54', 'eb64d9ae-f5ed-45e2-8ec8-8104a9e40387'),
(15, 4, NULL, 5, 1, '2019-06-14 11:58:00', NULL, 0, '2019-06-14 11:58:15', '2019-06-14 14:43:53', '206c9302-59a8-465c-8da4-829ee309075d'),
(16, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-06-14 11:59:26', '2019-06-25 09:50:36', 'f20f014a-e3d0-4d51-b257-e4a9ae517e16'),
(21, 4, NULL, 4, 1, '2019-06-14 14:15:00', NULL, NULL, '2019-06-14 14:15:57', '2019-06-25 11:21:28', 'a672de89-58ce-48dd-b453-654bc4b6d054'),
(34, 5, NULL, 6, 1, '2019-06-18 15:22:00', NULL, NULL, '2019-06-18 15:22:13', '2019-07-01 09:54:12', '28735acb-65e6-4b5f-bd86-04cc6b464100'),
(35, 5, NULL, 6, 1, '2019-06-18 15:22:00', NULL, NULL, '2019-06-18 15:22:24', '2019-07-01 09:54:12', 'acd82adb-a759-406f-a4aa-f3dc9ccd5e78'),
(36, 5, NULL, 6, 1, '2019-06-18 15:22:00', NULL, NULL, '2019-06-18 15:22:35', '2019-07-01 09:54:12', '76034b3a-aa23-47a2-8a96-bacf5795cce0'),
(37, 5, NULL, 6, 1, '2019-06-18 15:23:00', NULL, NULL, '2019-06-18 15:23:01', '2019-07-01 09:54:12', '251e00fe-a14e-4528-81cf-bbdda377f683'),
(42, 5, NULL, 6, 1, '2019-06-19 11:54:00', NULL, NULL, '2019-06-19 11:54:18', '2019-07-01 09:55:13', '71fb1338-6b46-419b-a143-6cca4a1c1d50'),
(68, 3, NULL, 3, 1, '2019-06-25 09:19:00', NULL, NULL, '2019-06-25 09:19:10', '2019-07-15 13:11:21', 'b6ea926b-4dd2-4683-8285-3476b999586f'),
(78, 3, NULL, 3, 1, '2019-06-25 09:45:00', NULL, NULL, '2019-06-25 09:45:31', '2019-07-04 14:25:46', '1101a527-ad6a-480f-a9c5-a28e5ead84b0'),
(102, 6, NULL, 7, NULL, '2019-06-25 14:00:00', NULL, NULL, '2019-06-25 14:00:05', '2019-06-26 13:31:03', 'e2998f4e-aa41-495f-b106-80af09060cfe'),
(111, 7, NULL, 12, 1, '2019-07-04 07:47:00', NULL, 1, '2019-07-04 07:47:30', '2019-07-04 07:47:30', 'c87ad011-f57b-47ae-9ece-eb5923ec1a9a'),
(113, 7, NULL, 12, 1, '2019-07-04 08:02:00', NULL, 1, '2019-07-04 08:02:42', '2019-07-04 08:02:42', '3af2f640-a61e-4485-8903-2af40ba04267'),
(128, 3, NULL, 3, 1, '2019-06-25 09:19:00', NULL, NULL, '2019-07-16 07:35:58', '2019-07-16 07:35:58', 'bf67974d-64cf-4fb2-af4d-5a386796a16c'),
(136, 3, NULL, 3, 1, '2019-06-13 13:51:00', NULL, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '2186f023-765f-4088-a731-0a25e2b5e6fb'),
(144, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'f3d6e0b8-1df3-4137-a163-702ba312e9f7'),
(152, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '9095786e-7589-4577-8460-d7ffd4f0c2e7'),
(160, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '4e0321cb-4c1e-40f5-80e1-616a45489795'),
(161, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'b622ffb6-fa73-42b6-91f3-ab7a1ec3c2d7'),
(162, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '5bf8a0cb-56cb-44da-86a8-7c9e24d3375d'),
(163, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '5d50239e-2c84-41f7-9917-473f3ab1784d'),
(164, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '49fbebef-a9ad-4d0d-a724-ae0d3557275f'),
(165, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'df82412b-8325-40e1-bedd-09844a89c584'),
(166, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '0b5a975d-0381-4bdc-9754-d92a63d062a8'),
(167, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '606c9d07-6dd9-4b74-a240-20f8012a8766'),
(168, 3, NULL, 3, 1, '2019-06-25 09:45:00', NULL, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '61b3f696-b5ec-44e3-93c3-f43524973104'),
(176, 3, NULL, 3, 1, '2019-06-25 09:45:00', NULL, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '34fe8f80-8a07-4016-9fb2-fe2f5112c128'),
(184, 3, NULL, 3, 1, '2019-06-25 09:45:00', NULL, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'e2d4d9fc-4be0-4f79-bd8b-2d7a9d2c173d'),
(192, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '65cdae7b-dfbd-474f-83b1-8c3bc780db82'),
(200, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '5b77fcc3-703d-443d-ab13-bd2472328500'),
(208, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'c0967e92-266e-4351-8ebe-ecd7bfb4b7b5'),
(216, 3, NULL, 3, 1, '2019-06-25 09:45:00', NULL, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'ec96ab82-7506-43c2-b909-c336e62a6541'),
(224, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '96c0371b-a1f8-4fdb-95d8-525548b03cb0'),
(232, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'f0401feb-d65f-4ea9-86db-59f3294e21fa'),
(240, 3, NULL, 3, 1, '2019-06-13 13:51:00', NULL, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '1e6692e0-ec57-4595-b34c-b05e72374c6d'),
(248, 3, NULL, 3, 1, '2019-06-25 09:19:00', NULL, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '531100d0-bdbf-478a-b7e6-808decd5f6ac'),
(256, 3, NULL, 3, 1, '2019-06-25 09:45:00', NULL, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'b33554a2-40b9-4636-9fdd-2e12974c87ba'),
(264, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'ea76f4b0-2684-4ac8-b326-12b0af3b446f'),
(272, 5, NULL, 6, 1, '2019-06-19 11:54:00', NULL, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '2704f902-af68-40c7-8cfb-91b757ce2a16'),
(282, 4, NULL, 4, 1, '2019-06-14 14:15:00', NULL, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:05', 'bc07e00b-c786-4f18-a382-9f3927b0ffd8'),
(303, 4, NULL, 4, 1, '2019-06-14 14:15:00', NULL, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'e9af6b5b-87bd-42c0-b431-914031e1a80c'),
(324, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'e37a208e-7134-4194-a47b-5e7bfa443415'),
(345, 3, NULL, 3, 1, '2019-06-25 09:45:00', NULL, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '985fe987-1294-4727-8129-4dbd5cc37b12'),
(353, 3, NULL, 3, 1, '2019-06-25 09:19:00', NULL, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'caefdd30-81f4-4b38-a2c2-a7dd2bbd31c7'),
(361, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'e4a8f305-bf40-441f-ab18-ef9d148d3b82'),
(362, 4, NULL, 4, 1, '2019-06-14 14:15:00', NULL, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'f177c7b3-103b-496e-b631-71150c0f160b'),
(383, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'ca663ead-4cbe-4127-873a-9508ff1fe04a'),
(391, 3, NULL, 3, 1, '2019-06-13 13:51:00', NULL, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '26bfeb21-7829-40b8-9165-03d611cbce5e'),
(399, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'ac0af454-6740-43f7-b234-7c9da2aeba95'),
(407, 5, NULL, 6, 1, '2019-06-19 11:54:00', NULL, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '780bb8d3-4f1c-4698-8c31-f127113763ec'),
(408, 5, NULL, 6, 1, '2019-06-18 15:23:00', NULL, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '1f181304-5ec3-4c52-b4a9-f561b62c57b2'),
(409, 5, NULL, 6, 1, '2019-06-18 15:22:00', NULL, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'c60ff0ef-9220-4f93-ab0d-c39f84f4ea4d'),
(410, 5, NULL, 6, 1, '2019-06-18 15:22:00', NULL, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '569c8942-35ac-4073-bb28-395239145d8d'),
(411, 5, NULL, 6, 1, '2019-06-18 15:22:00', NULL, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '2ebd338c-48b3-4aea-bac4-6230d51be2f3'),
(412, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '6d6d7d14-bb1c-4db5-a9e9-9dc836e7853c'),
(433, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'aa74398c-8d33-4411-896f-4282d5a97f21'),
(454, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '46463dac-c9c1-42cc-88f4-288491ca5bc3'),
(475, 4, NULL, 4, 1, '2019-06-14 14:15:00', NULL, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'cceac281-e2a0-4c81-9de0-666809859d2f'),
(496, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a1863137-1488-48d7-bef0-ec44f881a41a'),
(517, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'c905675b-9fea-42de-922e-7406e220d55b'),
(538, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'fe396f42-db3e-4194-8ab4-612427e84d6d'),
(559, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '1783d45a-467b-458a-a46f-ba832050405a'),
(580, 4, NULL, 4, 1, '2019-06-14 11:59:00', NULL, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'ca1dfd9a-d413-4735-8a6d-34d32320d456'),
(601, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'e6cf9f53-efa6-4ddd-befb-73a91a202cd1'),
(609, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '8e674550-8872-43e4-aaea-1ee4ab85374f'),
(617, 3, NULL, 3, 1, '2019-06-13 13:51:00', NULL, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'c20c43ec-bc83-4d81-8444-ad4f1eeacd16'),
(625, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '79adcaf9-e8c3-4690-b787-5f4841e24ebd'),
(633, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '63313599-2eea-484f-809f-281229280692'),
(641, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '384b2592-d80c-4e11-b1d0-8a59322c95cc'),
(642, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '7cfd452b-b63e-40a9-9b03-849a80616509'),
(643, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '90f56678-bf9f-43da-9abb-b4fc3d77c447'),
(644, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'fca08582-bb8d-4849-a9ee-85ceccf798bc'),
(645, 1, NULL, 1, NULL, '2019-06-12 08:09:00', NULL, NULL, '2019-07-16 07:36:16', '2019-07-16 07:36:16', '273f0934-6c1b-467e-880c-dde4dd872810'),
(661, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'bc9de0ab-3ab3-4080-81fd-a59daf3573fd'),
(684, 3, NULL, 3, 1, '2019-06-13 13:51:00', NULL, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '50bb7535-9488-4ed3-a161-240ec558f297'),
(707, 3, NULL, 3, 1, '2019-06-25 09:19:00', NULL, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '1bf8d988-1173-415e-bef5-3d3cbe97dc99'),
(730, 3, NULL, 3, 1, '2019-06-25 09:45:00', NULL, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '65441438-7c71-4a05-8ec3-cc18c8498586'),
(738, 3, NULL, 3, 1, '2019-07-17 10:41:00', NULL, NULL, '2019-07-17 10:41:27', '2019-07-17 10:41:27', '2bd3650f-2779-4add-8e57-da4979006776'),
(739, 8, NULL, 14, NULL, '2019-07-17 10:42:00', NULL, NULL, '2019-07-17 10:42:19', '2019-07-17 10:42:19', '50649350-36b8-4b1a-b413-b9ac64546c72'),
(746, 8, NULL, 14, NULL, '2019-07-17 10:42:00', NULL, NULL, '2019-07-17 12:20:21', '2019-07-17 12:20:21', '5b8a811a-6c0d-4918-8e23-08fba00a1f24'),
(748, 8, NULL, 14, NULL, '2019-07-17 10:42:00', NULL, NULL, '2019-07-17 12:20:22', '2019-07-17 12:20:22', 'ea1abf1c-e9e3-428a-8270-8463375dc22a'),
(752, 8, NULL, 14, NULL, '2019-07-17 10:42:00', NULL, NULL, '2019-07-17 12:20:26', '2019-07-17 12:20:26', '9045add4-cfde-496e-8ae1-6715bac3e2d7'),
(760, 8, NULL, 14, NULL, '2019-07-17 10:42:00', NULL, NULL, '2019-07-17 12:22:20', '2019-07-17 12:22:20', '14dec27c-3496-4de2-88cb-81fb7911f0fe'),
(765, 8, NULL, 14, NULL, '2019-07-17 10:42:00', NULL, NULL, '2019-07-17 13:10:29', '2019-07-17 13:10:29', 'a44d20d4-019d-4d02-ae04-d27cdb8f512b'),
(767, 3, NULL, 3, 1, '2019-06-25 09:19:00', NULL, NULL, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '4f393a31-caa1-40f1-8996-e15490424e6c'),
(775, 5, NULL, 6, 1, '2019-07-23 10:23:00', NULL, NULL, '2019-07-23 10:23:58', '2019-07-23 10:23:58', 'bd62c05f-9374-433b-92b9-cd96b66fda01'),
(777, 6, NULL, 7, NULL, '2019-06-25 14:00:00', NULL, NULL, '2019-07-29 13:10:51', '2019-07-29 13:10:51', 'b416ed7f-33b1-47c8-8302-1f7f252eb03a'),
(780, 6, NULL, 7, NULL, '2019-06-25 14:00:00', NULL, NULL, '2019-07-29 13:18:34', '2019-07-29 13:18:34', '79502985-0907-45b1-a32c-566117ecd2db'),
(782, 6, NULL, 7, NULL, '2019-06-25 14:00:00', NULL, NULL, '2019-07-29 13:27:40', '2019-07-29 13:27:40', '29099621-04e2-4de2-90cd-0dc20e2bb539'),
(798, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'b536dd20-f8d9-4196-9f09-06e3ef1776a2'),
(806, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-29 13:35:49', '2019-07-29 13:35:49', 'c433f7fc-282d-423d-9d57-c722084f8552'),
(829, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '82f251fb-6833-4449-8a68-d113eeb63830'),
(837, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-29 13:38:49', '2019-07-29 13:38:49', 'fb3f9ad7-ffb1-4efa-9a9a-e6fd8d50148d'),
(853, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-29 13:39:28', '2019-07-29 13:39:28', 'b9b590f5-c59c-4f59-be15-0457a544be4d'),
(876, 3, NULL, 3, 1, '2019-06-13 13:16:00', NULL, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '802e4b65-d5d5-4da0-84d8-2a94d9a0a536'),
(885, 6, NULL, 7, NULL, '2019-06-25 14:00:00', NULL, NULL, '2019-07-29 13:40:34', '2019-07-29 13:40:34', 'f2e59b2c-7049-4298-a9d3-109bd9cf42d4');

-- --------------------------------------------------------

--
-- Структура таблицы `entrydrafterrors`
--

CREATE TABLE `entrydrafterrors` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `entrydrafts`
--

CREATE TABLE `entrydrafts` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  `data` mediumtext NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) DEFAULT 'Title',
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Homepage', 'homepage', 0, '', '{section.name|raw}', 1, '2019-06-12 08:09:35', '2019-07-09 15:24:45', NULL, '697ebde5-7460-4d76-b672-540aeb5481e7'),
(2, 2, 3, 'Comparison', 'comparison', 1, 'Title', '', 1, '2019-06-13 11:38:45', '2019-06-14 11:14:26', '2019-06-14 14:02:34', 'ba93ab4d-7d0d-4c00-b0cd-8df8a147fe85'),
(3, 3, 9, 'Platforms', 'platforms', 1, 'Title', '', 1, '2019-06-13 13:16:19', '2019-07-03 14:19:26', NULL, '01075fcb-208d-42ce-b938-8acf8822a41d'),
(4, 4, 12, 'Questions list', 'questionsList', 1, 'Title', '', 1, '2019-06-14 11:57:03', '2019-06-14 14:51:34', NULL, '7fdf0d09-603e-4b5a-8420-d0d4c42e8a3f'),
(5, 4, NULL, 'Block questions', 'blockQuestions', 1, 'Title', '', 2, '2019-06-14 14:43:32', '2019-06-14 14:43:32', NULL, '481bcc91-e56c-4517-a1d0-c44d7ace53a6'),
(6, 5, 22, 'Comparison Item', 'comparisonItem', 1, 'Title', '', 1, '2019-06-18 14:51:59', '2019-07-04 07:40:56', NULL, '6a0d049e-4d62-4da2-b0cd-fb34a64334f7'),
(7, 6, 18, 'Results', 'results', 0, '', '{section.name|raw}', 1, '2019-06-25 14:00:05', '2019-07-29 13:10:51', NULL, 'e99ec07b-d645-46a3-8bbd-0c796e606740'),
(8, 3, 37, 'Platform dollar', 'platformDollar', 1, 'Title', '', 2, '2019-07-04 07:33:33', '2019-07-04 07:33:33', '2019-07-04 07:34:44', '443d896c-ca76-4f33-8c11-c538de7aebfb'),
(9, 3, 38, 'Platform text', 'platformText', 1, 'Title', '', 3, '2019-07-04 07:33:55', '2019-07-04 07:33:55', '2019-07-04 07:34:48', '5f1872cc-62e5-464b-b735-9bf668626dc8'),
(10, 5, 39, 'Comparassion dollar', 'comparassionDollar', 1, 'Title', '', 2, '2019-07-04 07:35:22', '2019-07-04 07:35:22', '2019-07-04 12:54:39', '3d546d32-72d4-4708-b94e-db24cdfe09ee'),
(11, 5, 40, 'Comparassion text', 'comparassionText', 1, 'Title', '', 3, '2019-07-04 07:35:46', '2019-07-04 07:35:46', '2019-07-04 12:54:44', '9e73467e-4457-4fad-bdb4-992736e2e330'),
(12, 7, 41, 'Comparission properties dollar', 'comparissionPropertiesDollar', 1, 'Title', '', 1, '2019-07-04 07:44:37', '2019-07-04 11:47:54', '2019-07-04 12:54:27', '1e987724-6605-4623-b612-31a0f79d857c'),
(13, 7, 42, 'Comparission properties text', 'comparissionPropertiesText', 1, 'Title', '', 2, '2019-07-04 07:46:15', '2019-07-04 07:46:15', '2019-07-04 12:54:27', '4ac65952-9155-4c0c-95b9-6b1c41dacab1'),
(14, 8, 44, 'Thank you Page', 'thankYouPage', 0, '', '{section.name|raw}', 1, '2019-07-17 10:42:19', '2019-07-17 12:19:28', NULL, '3e1f4f77-7b63-4dbd-84c1-36598bd03d4e');

-- --------------------------------------------------------

--
-- Структура таблицы `entryversionerrors`
--

CREATE TABLE `entryversionerrors` (
  `id` int(11) NOT NULL,
  `versionId` int(11) DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `entryversionerrors`
--

INSERT INTO `entryversionerrors` (`id`, `versionId`, `error`) VALUES
(1, 19, 'Invalid entry ID: 15'),
(2, 18, 'Invalid entry ID: 15'),
(3, 17, 'Invalid entry ID: 15'),
(4, 16, 'Invalid entry ID: 15'),
(5, 5, 'Array to string conversion');

-- --------------------------------------------------------

--
-- Структура таблицы `entryversions`
--

CREATE TABLE `entryversions` (
  `id` int(11) NOT NULL,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `siteId` int(11) NOT NULL,
  `num` smallint(6) UNSIGNED NOT NULL,
  `notes` text,
  `data` mediumtext NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `entryversions`
--

INSERT INTO `entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `siteId`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 2, 1, 1, 1, 5, '', '{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1560326940,\"expiryDate\":null,\"enabled\":true,\"newParentId\":null,\"fields\":{\"4\":{\"3\":{\"type\":\"buttonGroup\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"buttonName\":\"Let\'s do it!\",\"buttonLink\":\"#\"}}},\"3\":\"It will take under 3 minutes to complete. Are you ready?\",\"2\":\"This handy tool will help you to make a decision on what could be a right solution for your future website goals. We put together only most popular and modern platforms, CMS and online website builders. Answer simple questions. We will explain our decision in simple words.\",\"1\":\"What is the best platform to create a website?\"}}', '2019-06-12 12:03:19', '2019-06-12 12:03:19', 'd2d8398c-8a01-45fb-b7bf-ef60c08e10e4'),
(16, 16, 4, 1, 1, 2, '', '{\"typeId\":\"4\",\"authorId\":\"1\",\"title\":\"What site type do you need?\",\"slug\":\"what-site-type-do-you-need\",\"postDate\":1560513540,\"expiryDate\":null,\"enabled\":true,\"newParentId\":\"15\",\"fields\":{\"20\":{\"17\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"anwerItem\":\"One page website\",\"answerScore\":\"4\"}},\"18\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"anwerItem\":\"3-5\",\"answerScore\":\"3\"}},\"19\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"anwerItem\":\"10-20\",\"answerScore\":\"5\"}},\"20\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"anwerItem\":\"20+\",\"answerScore\":\"1\"}}}}}', '2019-06-14 12:38:39', '2019-06-14 12:38:39', '5e3dfce8-8dbe-461a-a825-069f6396f6af'),
(17, 16, 4, 1, 1, 3, '', '{\"typeId\":\"4\",\"authorId\":\"1\",\"title\":\"What site type do you need?\",\"slug\":\"what-site-type-do-you-need\",\"postDate\":1560513540,\"expiryDate\":null,\"enabled\":true,\"newParentId\":\"15\",\"fields\":{\"20\":{\"17\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"anwerItem\":[\"7\"],\"answerScore\":\"4\"}},\"18\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"anwerItem\":[\"11\"],\"answerScore\":\"3\"}},\"19\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"anwerItem\":[],\"answerScore\":\"5\"}},\"20\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"anwerItem\":[],\"answerScore\":\"1\"}}}}}', '2019-06-14 13:09:18', '2019-06-14 13:09:18', 'c2f3c12e-129d-4eaa-b7f7-7ad01bb44068'),
(18, 16, 4, 1, 1, 4, '', '{\"typeId\":\"4\",\"authorId\":\"1\",\"title\":\"What site type do you need?\",\"slug\":\"what-site-type-do-you-need\",\"postDate\":1560513540,\"expiryDate\":null,\"enabled\":true,\"newParentId\":\"15\",\"fields\":{\"20\":{\"17\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"answerItem\":\"One page website\",\"craftCms\":null,\"wpCms\":null,\"drupalCms\":null}},\"18\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"answerItem\":\"3-5\",\"craftCms\":null,\"wpCms\":null,\"drupalCms\":null}},\"19\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"answerItem\":\"10-20\",\"craftCms\":null,\"wpCms\":null,\"drupalCms\":null}},\"20\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"answerItem\":\"20+\",\"craftCms\":null,\"wpCms\":null,\"drupalCms\":null}}}}}', '2019-06-14 13:48:41', '2019-06-14 13:48:41', '9df9a01d-0062-4418-ab74-c3df6fa87db9'),
(19, 16, 4, 1, 1, 5, '', '{\"typeId\":\"4\",\"authorId\":\"1\",\"title\":\"What site type do you need?\",\"slug\":\"what-site-type-do-you-need\",\"postDate\":1560513540,\"expiryDate\":null,\"enabled\":true,\"newParentId\":\"15\",\"fields\":{\"20\":{\"17\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"answerItem\":\"One page website\",\"craftCms\":\"10\",\"wpCms\":\"5\",\"drupalCms\":\"2\"}},\"18\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"answerItem\":\"3-5\",\"craftCms\":\"8\",\"wpCms\":\"6\",\"drupalCms\":\"3\"}},\"19\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"answerItem\":\"10-20\",\"craftCms\":\"5\",\"wpCms\":\"10\",\"drupalCms\":\"4\"}},\"20\":{\"type\":\"answerBlock\",\"enabled\":true,\"collapsed\":false,\"fields\":{\"answerItem\":\"20+\",\"craftCms\":\"15\",\"wpCms\":\"25\",\"drupalCms\":\"5\"}}}}}', '2019-06-14 13:49:45', '2019-06-14 13:49:45', '4ac21fc0-7ec7-4f77-9421-80a0c076fa87');

-- --------------------------------------------------------

--
-- Структура таблицы `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Homepage', '2019-06-11 15:11:26', '2019-06-25 14:03:01', '334be807-b781-4534-aa52-1e077e7d9771'),
(3, 'Platforms', '2019-06-13 13:16:56', '2019-06-13 13:16:56', '14aaf7e5-d485-4df7-9d85-45392f480b3e'),
(4, 'Questions', '2019-06-14 12:33:06', '2019-06-14 12:33:06', '6895d0dd-53e6-4cb1-be80-08a1a197a8b6'),
(5, 'Result Page', '2019-06-25 14:02:30', '2019-06-25 14:02:30', 'ae661801-9669-470b-a805-aa6f8d2ddba5'),
(6, 'Thank You', '2019-07-17 10:43:00', '2019-07-17 10:43:00', '8c729460-a249-480a-985a-0bff8e2c3ee5');

-- --------------------------------------------------------

--
-- Структура таблицы `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(4, 2, 2, 5, 0, 1, '2019-06-12 11:59:29', '2019-06-12 11:59:29', 'fbd51f5c-a9b3-4957-b91c-c3f583d84259'),
(5, 2, 2, 6, 0, 2, '2019-06-12 11:59:29', '2019-06-12 11:59:29', 'e2681c7d-dfa7-4647-a1e8-a3d3bb2a5cd0'),
(81, 12, 40, 20, 0, 1, '2019-06-14 14:51:34', '2019-06-14 14:51:34', '9dccaff1-53bf-4abc-a1ab-a7715d03411b'),
(140, 15, 57, 39, 0, 1, '2019-06-18 14:55:45', '2019-06-18 14:55:45', '69300bc1-1d74-4b64-a217-66b1b551756a'),
(141, 15, 57, 40, 0, 2, '2019-06-18 14:55:45', '2019-06-18 14:55:45', '97e25ffe-2ac5-48fa-9da1-4756e393102e'),
(142, 15, 57, 41, 0, 3, '2019-06-18 14:55:45', '2019-06-18 14:55:45', '291ed998-edff-4e96-9982-c956298d8a56'),
(143, 15, 57, 42, 0, 4, '2019-06-18 14:55:45', '2019-06-18 14:55:45', '92ad3ac8-e926-43e7-9948-2edd3edefac1'),
(178, 13, 69, 31, 1, 1, '2019-06-19 12:14:39', '2019-06-19 12:14:39', '9ac73235-5444-4fdf-9481-5ca27eb8dbf6'),
(179, 13, 69, 32, 1, 2, '2019-06-19 12:14:39', '2019-06-19 12:14:39', '4b475143-b80c-4dcd-9f23-c611d6d27a8d'),
(180, 11, 70, 27, 0, 1, '2019-06-19 12:14:39', '2019-06-19 12:14:39', 'ad5f1256-e750-4f2c-96f0-6b2f551d7ca7'),
(181, 11, 70, 30, 0, 2, '2019-06-19 12:14:39', '2019-06-19 12:14:39', '9f426a5a-61ef-4a52-be5e-4e9a6616fb9f'),
(309, 9, 122, 17, 0, 1, '2019-07-03 14:19:26', '2019-07-03 14:19:26', '14aedf9b-2be0-45e6-a2ad-174dadf9b54b'),
(310, 9, 122, 38, 0, 2, '2019-07-03 14:19:26', '2019-07-03 14:19:26', '4a4e105c-c4e1-403f-a0a9-c5eefe41cdca'),
(316, 29, 124, 74, 0, 1, '2019-07-03 14:54:41', '2019-07-03 14:54:41', 'e96f5436-3ab4-4b6f-aed7-badd7d2b452b'),
(317, 29, 124, 75, 0, 2, '2019-07-03 14:54:41', '2019-07-03 14:54:41', 'cbc963b3-fd10-43d0-a470-e19570aace0b'),
(318, 29, 124, 76, 0, 3, '2019-07-03 14:54:41', '2019-07-03 14:54:41', 'f9642ff2-317c-4572-9e61-fcc828aab538'),
(319, 29, 124, 77, 0, 4, '2019-07-03 14:54:41', '2019-07-03 14:54:41', 'cf5dd7e2-6f87-426b-8dbb-e5e6f9203752'),
(320, 29, 124, 78, 0, 5, '2019-07-03 14:54:41', '2019-07-03 14:54:41', '9fc779f3-107b-4764-867f-caed4e3365e8'),
(321, 29, 124, 79, 0, 6, '2019-07-03 14:54:41', '2019-07-03 14:54:41', '320c96dc-293d-4c1a-86fd-fb91245d514a'),
(322, 29, 124, 80, 0, 7, '2019-07-03 14:54:41', '2019-07-03 14:54:41', 'bbcc8415-bad7-44b1-97a9-b2ec9d2e56c9'),
(323, 29, 124, 81, 0, 8, '2019-07-03 14:54:41', '2019-07-03 14:54:41', '32024277-e401-4eb3-8bd5-130214740704'),
(324, 29, 124, 82, 0, 9, '2019-07-03 14:54:41', '2019-07-03 14:54:41', 'd4224618-9d80-4f59-afbb-4d70d071a4b2'),
(325, 29, 124, 83, 0, 10, '2019-07-03 14:54:41', '2019-07-03 14:54:41', 'f1006e4b-8de2-48a5-a8a3-022f45d79a6d'),
(326, 29, 124, 84, 0, 11, '2019-07-03 14:54:41', '2019-07-03 14:54:41', '0669992a-e37b-461f-ae48-296109a0ae65'),
(327, 29, 124, 85, 0, 12, '2019-07-03 14:54:41', '2019-07-03 14:54:41', '386c7d87-1fe4-461c-a9d1-7422f370e1af'),
(328, 29, 124, 86, 0, 13, '2019-07-03 14:54:41', '2019-07-03 14:54:41', '6611a1cf-955c-40c4-9b70-f4d5fefdba6c'),
(329, 29, 124, 87, 0, 14, '2019-07-03 14:54:41', '2019-07-03 14:54:41', '6698fa3f-3581-4be5-a0d7-a47359f1568a'),
(382, 16, 153, 45, 0, 1, '2019-07-04 13:55:26', '2019-07-04 13:55:26', 'fabc75f7-37bb-4e02-8f9e-ba1717a90fac'),
(383, 16, 153, 47, 0, 2, '2019-07-04 13:55:26', '2019-07-04 13:55:26', '5584aac4-b934-42bd-8451-8c2d7800616c'),
(384, 16, 153, 48, 0, 3, '2019-07-04 13:55:26', '2019-07-04 13:55:26', 'ab34beb6-3f4f-4d55-bb75-a8d45d396cc7'),
(385, 16, 153, 49, 0, 4, '2019-07-04 13:55:26', '2019-07-04 13:55:26', 'e15d56dd-d0dc-45f2-b976-e497ab68cad2'),
(386, 17, 154, 44, 0, 1, '2019-07-04 13:55:26', '2019-07-04 13:55:26', 'e51b6457-ccf2-4fac-b41c-20a665bfcc28'),
(392, 1, 156, 103, 0, 1, '2019-07-09 15:24:45', '2019-07-09 15:24:45', 'fdbe5e03-06a1-495c-a728-eb0639edd991'),
(393, 1, 156, 1, 0, 2, '2019-07-09 15:24:45', '2019-07-09 15:24:45', '2e4e794d-208f-4a0a-9d2d-ee0460e16fdb'),
(394, 1, 156, 104, 0, 3, '2019-07-09 15:24:45', '2019-07-09 15:24:45', 'abf082e9-97b1-4676-ba90-63149ce99dee'),
(395, 1, 156, 2, 0, 4, '2019-07-09 15:24:45', '2019-07-09 15:24:45', '1d39f99b-95c9-4f19-ba29-1ceabb7b1dd2'),
(396, 1, 156, 3, 0, 5, '2019-07-09 15:24:45', '2019-07-09 15:24:45', '67a1d2be-9955-4fae-8ce2-2f3970866598'),
(397, 1, 156, 4, 0, 6, '2019-07-09 15:24:45', '2019-07-09 15:24:45', '7abb2d76-0ed7-4fd8-bac8-7450d99b1102'),
(408, 14, 159, 36, 0, 4, '2019-07-16 10:26:13', '2019-07-16 10:26:13', '9b8adfc7-c57d-4cdf-ba95-8b0e02849975'),
(409, 14, 159, 43, 0, 5, '2019-07-16 10:26:13', '2019-07-16 10:26:13', 'dee8e052-7bb5-4564-905f-8cfc9cf1c8f9'),
(410, 14, 159, 105, 0, 1, '2019-07-16 10:26:13', '2019-07-16 10:26:13', 'f46af89c-f983-445a-8ea4-1074263b283b'),
(411, 14, 159, 34, 0, 2, '2019-07-16 10:26:13', '2019-07-16 10:26:13', '5003af30-5655-4972-b365-b439f85e5358'),
(412, 14, 159, 35, 0, 3, '2019-07-16 10:26:13', '2019-07-16 10:26:13', 'dfd96dc8-64a9-4686-8503-e02e29bf4851'),
(416, 44, 161, 1, 0, 1, '2019-07-17 12:19:28', '2019-07-17 12:19:28', 'be96f227-b5d5-49b0-9088-e059d9c91418'),
(417, 44, 161, 109, 0, 4, '2019-07-17 12:19:28', '2019-07-17 12:19:28', 'a919a436-feee-499f-93bd-a835b6389442'),
(418, 44, 161, 108, 0, 3, '2019-07-17 12:19:28', '2019-07-17 12:19:28', '4511365d-f47a-4966-bceb-e524a97b3e09'),
(419, 44, 161, 107, 0, 2, '2019-07-17 12:19:28', '2019-07-17 12:19:28', 'b92eb5e5-8a9b-45bb-9c59-c55fdb3dd19f'),
(420, 43, 162, 110, 0, 1, '2019-07-17 12:21:13', '2019-07-17 12:21:13', '5b1ab104-0a92-4db6-a847-48d0ea787462'),
(421, 43, 162, 111, 0, 3, '2019-07-17 12:21:13', '2019-07-17 12:21:13', 'd51c92ee-e00b-4913-b574-033e802e10f5'),
(422, 43, 162, 112, 0, 2, '2019-07-17 12:21:13', '2019-07-17 12:21:13', '2a3ac048-11e8-451b-9180-927760902642'),
(423, 18, 163, 54, 0, 5, '2019-07-29 13:10:51', '2019-07-29 13:10:51', '87bfd670-9541-417d-80a2-fce374c0eab3'),
(424, 18, 163, 52, 0, 2, '2019-07-29 13:10:51', '2019-07-29 13:10:51', '346792a2-7042-48be-b056-445cc0276857'),
(425, 18, 163, 51, 0, 1, '2019-07-29 13:10:51', '2019-07-29 13:10:51', '91ddcecb-12cb-4ea0-88cf-3ac3742b12a8'),
(426, 18, 163, 103, 0, 3, '2019-07-29 13:10:51', '2019-07-29 13:10:51', '70902b64-abcf-4e99-97fa-6f2efdb3b566'),
(427, 18, 163, 53, 0, 4, '2019-07-29 13:10:51', '2019-07-29 13:10:51', '595d6a74-9d1b-4be2-8b8e-57289ea1923f');

-- --------------------------------------------------------

--
-- Структура таблицы `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '2019-06-12 09:21:09', '2019-07-09 15:24:45', NULL, 'd6af5fa0-3f55-49bf-9189-340bca1aa3bc'),
(2, 'craft\\elements\\MatrixBlock', '2019-06-12 11:59:28', '2019-06-12 11:59:28', NULL, '9fd8693b-6cf1-4320-ba05-7b0737f4cdb2'),
(3, 'craft\\elements\\Entry', '2019-06-13 11:58:53', '2019-06-14 11:14:25', '2019-06-14 14:02:34', '0e800d4f-6a9d-40c3-84bb-fff515fb5b82'),
(4, 'craft\\elements\\MatrixBlock', '2019-06-13 12:41:26', '2019-06-13 12:41:26', '2019-06-13 12:44:44', '8bbb4a10-6e13-4deb-bef9-003f256bb0e7'),
(5, 'craft\\elements\\MatrixBlock', '2019-06-13 12:44:46', '2019-06-14 09:30:24', '2019-06-14 13:51:18', 'bce12df5-282a-45fe-b541-eddfa352308b'),
(6, 'craft\\elements\\MatrixBlock', '2019-06-13 13:25:32', '2019-06-14 10:02:30', '2019-06-14 13:52:37', 'f3908244-5f80-4761-aa3f-0d8e9f74f02b'),
(7, 'craft\\elements\\MatrixBlock', '2019-06-13 13:25:33', '2019-06-14 10:02:31', '2019-06-14 13:52:37', '8ffb4f05-9a2f-4794-9b24-10687e8ccaa6'),
(8, 'craft\\elements\\MatrixBlock', '2019-06-13 13:25:34', '2019-06-14 10:02:32', '2019-06-14 13:52:37', '1dbf5ba0-fce6-46b6-b516-65d5ae4f5f20'),
(9, 'craft\\elements\\Entry', '2019-06-13 13:28:40', '2019-07-03 14:19:25', NULL, 'b1d013f7-25a6-43d5-92d2-0a496d813920'),
(10, 'craft\\elements\\MatrixBlock', '2019-06-13 14:16:41', '2019-06-14 10:01:23', '2019-06-14 10:02:30', 'cd5c9aa6-a45d-4dca-a20a-8e21a7323e3b'),
(11, 'craft\\elements\\MatrixBlock', '2019-06-14 12:36:21', '2019-06-19 12:14:39', NULL, '97dc27c3-b472-4d02-8b47-6855abe3370b'),
(12, 'craft\\elements\\Entry', '2019-06-14 12:37:18', '2019-06-14 14:51:34', NULL, '01b12cd3-8ce4-4987-8f77-66a8d70d7a0f'),
(13, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-06-18 13:11:23', '2019-06-19 12:14:38', NULL, 'f806c347-7894-49df-ab38-fad65600e21d'),
(14, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-06-18 14:34:13', '2019-06-27 12:42:28', NULL, 'eb971949-88c6-4fd2-88bb-f30a33ad0022'),
(15, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-06-18 14:55:45', '2019-06-18 14:55:45', NULL, '29c3f0b2-94fb-42b8-a2e7-7c19d28ef209'),
(16, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-06-19 09:42:40', '2019-07-04 13:55:25', NULL, '8790def4-81fe-4cf2-8805-de4ec359d128'),
(17, 'craft\\elements\\MatrixBlock', '2019-06-19 09:42:40', '2019-07-04 13:55:26', NULL, '367c694a-e42b-443c-9798-095e77b20939'),
(18, 'craft\\elements\\Entry', '2019-06-25 14:10:24', '2019-06-26 13:31:03', NULL, 'e54764a7-5741-4aab-a1f1-a029be53795b'),
(19, 'craft\\elements\\MatrixBlock', '2019-06-27 15:25:41', '2019-06-27 15:25:41', '2019-07-01 09:34:50', 'aa137322-c4ae-4a2d-9d94-166f463ce97c'),
(20, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-06-27 15:25:42', '2019-07-01 09:41:08', '2019-07-01 14:22:53', '952847ca-fea6-45f5-9caa-58df417f13fe'),
(21, 'craft\\elements\\MatrixBlock', '2019-07-01 09:34:52', '2019-07-01 09:41:08', '2019-07-01 14:22:53', 'f39f7002-72ad-41d2-b62f-f7c50c2145f1'),
(22, 'craft\\elements\\Entry', '2019-07-01 09:54:10', '2019-07-04 07:40:55', NULL, 'a2f787a3-90e7-4980-9f26-3cbc136484ff'),
(23, 'craft\\elements\\MatrixBlock', '2019-07-01 14:53:57', '2019-07-01 14:55:53', '2019-07-01 14:58:46', '1e6d603c-da2f-4c26-b4a8-bdef20dae7a0'),
(24, 'craft\\elements\\MatrixBlock', '2019-07-01 15:27:01', '2019-07-01 15:29:07', '2019-07-02 13:06:36', 'a4f586b4-5fee-4c0a-86aa-8085a76a75a1'),
(25, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-07-01 15:27:02', '2019-07-01 15:29:08', '2019-07-02 13:06:36', '7c8dc169-d1fb-4d0c-802f-c500b870799c'),
(26, 'craft\\elements\\MatrixBlock', '2019-07-03 14:14:22', '2019-07-03 14:14:22', '2019-07-04 12:52:13', 'f07ea054-3bbd-44a4-a20d-7f41792cd236'),
(27, 'craft\\elements\\MatrixBlock', '2019-07-03 14:14:23', '2019-07-03 14:14:23', '2019-07-04 12:52:14', '96cc930a-d4f5-4955-b3ab-7f20279aeee3'),
(28, 'craft\\elements\\MatrixBlock', '2019-07-03 14:14:24', '2019-07-03 14:14:24', '2019-07-04 12:52:14', 'ead0e85e-b6cd-4210-8ec9-196f277eb7cb'),
(29, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-07-03 14:18:59', '2019-07-03 14:54:40', NULL, 'c6f7be74-15c6-4c81-805a-45d916c052e8'),
(30, 'craft\\elements\\MatrixBlock', '2019-07-03 15:04:35', '2019-07-03 15:04:35', '2019-07-04 12:52:20', '7265077f-c71d-45bd-bbd0-598871cca133'),
(31, 'craft\\elements\\MatrixBlock', '2019-07-03 15:04:36', '2019-07-03 15:04:36', '2019-07-04 12:52:20', '85602e33-d811-437c-949d-ccb6d014174a'),
(32, 'craft\\elements\\MatrixBlock', '2019-07-03 15:04:37', '2019-07-03 15:04:37', '2019-07-04 12:52:20', 'bce7e773-08a5-4280-b9dc-4f2fb633d397'),
(33, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-07-03 15:04:37', '2019-07-03 15:04:37', '2019-07-04 12:52:20', '5d589035-7c65-4731-8679-6e8d122a5e44'),
(34, 'craft\\elements\\MatrixBlock', '2019-07-03 15:04:38', '2019-07-03 15:04:38', '2019-07-04 12:52:21', 'c4f0fc06-3f82-4ae8-a4e6-1f52fd004afe'),
(35, 'craft\\elements\\MatrixBlock', '2019-07-04 07:28:33', '2019-07-04 11:23:22', '2019-07-04 12:52:51', '7e20c954-7d8e-411a-acf9-2a4fde5e2190'),
(36, 'craft\\elements\\MatrixBlock', '2019-07-04 07:32:03', '2019-07-04 07:36:53', '2019-07-04 12:52:38', '4a27f3cc-c3fd-43fa-bc80-beef5007b7a8'),
(37, 'craft\\elements\\Entry', '2019-07-04 07:33:33', '2019-07-04 07:33:33', '2019-07-04 07:34:44', '5f2087a8-8a26-4476-8472-e2825b3cb15a'),
(38, 'craft\\elements\\Entry', '2019-07-04 07:33:55', '2019-07-04 07:33:55', '2019-07-04 07:34:48', 'a7d8836e-02b3-40d2-aab4-08dcbfeb9311'),
(39, 'craft\\elements\\Entry', '2019-07-04 07:35:22', '2019-07-04 07:35:22', '2019-07-04 12:54:39', 'dd0f32e2-4085-40dd-8aaf-a63e76e08637'),
(40, 'craft\\elements\\Entry', '2019-07-04 07:35:45', '2019-07-04 07:35:45', '2019-07-04 12:54:44', '5e35f266-3f31-4538-b6eb-f85506497be2'),
(41, 'craft\\elements\\Entry', '2019-07-04 07:45:24', '2019-07-04 11:47:54', '2019-07-04 12:54:27', '0aac8449-f65c-4cd7-9d95-20471b904922'),
(42, 'craft\\elements\\Entry', '2019-07-04 07:46:15', '2019-07-04 07:46:15', '2019-07-04 12:54:27', '87e9c6bd-153a-4b65-856e-80ead09f659f'),
(43, 'verbb\\supertable\\elements\\SuperTableBlockElement', '2019-07-17 10:52:39', '2019-07-17 10:52:39', NULL, '75cf71a8-627d-4f29-ad7d-9a91c9bb39dc'),
(44, 'craft\\elements\\Entry', '2019-07-17 12:19:28', '2019-07-17 12:19:28', NULL, 'ddfae3a9-f55c-45f2-9eba-a86938cd8c20');

-- --------------------------------------------------------

--
-- Структура таблицы `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 2, 'Content', 1, '2019-06-12 11:59:28', '2019-06-12 11:59:28', '7773c993-a875-4ce1-8602-091bdceb6571'),
(6, 4, 'Content', 1, '2019-06-13 12:41:26', '2019-06-13 12:41:26', 'dbf087ca-a118-4614-b2a8-a6f3eafeb5ed'),
(20, 5, 'Content', 1, '2019-06-14 09:30:24', '2019-06-14 09:30:24', 'bb6ccbe7-b00f-48ca-8bca-7d50ecae72db'),
(24, 10, 'Content', 1, '2019-06-14 10:01:23', '2019-06-14 10:01:23', 'a40f4563-a4f3-4017-8d49-deb4e70b9ebb'),
(25, 6, 'Content', 1, '2019-06-14 10:02:31', '2019-06-14 10:02:31', '645a754f-b0f4-4d8c-b239-19727c967665'),
(26, 7, 'Content', 1, '2019-06-14 10:02:31', '2019-06-14 10:02:31', '44d8dda3-4dc9-4541-90aa-54eaee80a389'),
(27, 8, 'Content', 1, '2019-06-14 10:02:32', '2019-06-14 10:02:32', 'be1f127f-a282-4983-9f8c-f798e638824c'),
(28, 3, 'Comparison', 1, '2019-06-14 11:14:25', '2019-06-14 11:14:25', 'c4bc74d1-91e6-489b-9744-6876d459e41f'),
(40, 12, 'Questions body', 1, '2019-06-14 14:51:34', '2019-06-14 14:51:34', 'e807216a-8998-4693-ae20-28d093105c43'),
(57, 15, 'Content', 1, '2019-06-18 14:55:45', '2019-06-18 14:55:45', '31f4e6e8-8e3b-4d85-8d02-4f50f179e30f'),
(69, 13, 'Content', 1, '2019-06-19 12:14:38', '2019-06-19 12:14:38', '3eb77553-2fc1-4ded-a237-20acfb93d465'),
(70, 11, 'Content', 1, '2019-06-19 12:14:39', '2019-06-19 12:14:39', 'c7984d30-2c6c-49eb-8245-e17322cb501c'),
(86, 19, 'Content', 1, '2019-06-27 15:25:41', '2019-06-27 15:25:41', '8eb5f163-e989-4223-bb7a-d6ae1fe8f9df'),
(91, 21, 'Content', 1, '2019-07-01 09:41:08', '2019-07-01 09:41:08', '34ea3f7a-dedc-4016-8e50-c1072f10daf4'),
(92, 20, 'Content', 1, '2019-07-01 09:41:08', '2019-07-01 09:41:08', '7c8976a3-b345-4721-9dd1-2854ec354099'),
(103, 23, 'Content', 1, '2019-07-01 14:55:53', '2019-07-01 14:55:53', 'bcea7a50-019d-4d2b-93ea-966cbd33aecd'),
(111, 24, 'Content', 1, '2019-07-01 15:29:07', '2019-07-01 15:29:07', '81844bd9-0e31-4222-a3ff-fdf81f8f5012'),
(112, 25, 'Content', 1, '2019-07-01 15:29:08', '2019-07-01 15:29:08', '16d8221d-3006-4098-9fff-37b25ba11b60'),
(117, 26, 'Content', 1, '2019-07-03 14:14:22', '2019-07-03 14:14:22', '98c9fb15-cb64-45bd-9f5a-bb6ff3140a1f'),
(118, 27, 'Content', 1, '2019-07-03 14:14:23', '2019-07-03 14:14:23', '5c863ef5-98a9-44b6-8e23-eb6a8038cb47'),
(119, 28, 'Content', 1, '2019-07-03 14:14:24', '2019-07-03 14:14:24', 'f56bf843-ddfe-44f9-b5b6-17984251ad93'),
(122, 9, 'Platforms', 1, '2019-07-03 14:19:26', '2019-07-03 14:19:26', '8a4ff34b-3f54-4c0b-b974-f888384d2305'),
(124, 29, 'Content', 1, '2019-07-03 14:54:41', '2019-07-03 14:54:41', 'b9433ab3-a36e-4900-8627-a6132bcc1ce9'),
(125, 30, 'Content', 1, '2019-07-03 15:04:35', '2019-07-03 15:04:35', '6f2ea007-d298-49fd-a971-3ff16abea5a2'),
(126, 31, 'Content', 1, '2019-07-03 15:04:36', '2019-07-03 15:04:36', '293fa627-d162-415d-a54c-f32ccdadebe9'),
(127, 32, 'Content', 1, '2019-07-03 15:04:37', '2019-07-03 15:04:37', 'c7fba0d5-8bf1-4c57-9176-e27b548be2ff'),
(128, 33, 'Content', 1, '2019-07-03 15:04:38', '2019-07-03 15:04:38', 'dc586af6-b097-463c-a5ac-13097b21e1c1'),
(129, 34, 'Content', 1, '2019-07-03 15:04:38', '2019-07-03 15:04:38', '9c7e1ea2-dc82-4e06-b032-3820b8fc8cb7'),
(132, 37, 'Tab 1', 1, '2019-07-04 07:33:33', '2019-07-04 07:33:33', 'f9abee01-ac96-49d2-b715-ef2143025a53'),
(133, 38, 'Tab 1', 1, '2019-07-04 07:33:55', '2019-07-04 07:33:55', '485ae2ed-25e6-4935-82cf-9eaffe048803'),
(134, 39, 'Tab 1', 1, '2019-07-04 07:35:22', '2019-07-04 07:35:22', '87f95fa2-80a1-4113-96ae-101d0b840f6a'),
(135, 40, 'Tab 1', 1, '2019-07-04 07:35:46', '2019-07-04 07:35:46', '25cb840f-15ea-49af-b5cc-7bffba86bbf4'),
(136, 36, 'Content', 1, '2019-07-04 07:36:53', '2019-07-04 07:36:53', 'c1c54bd5-04d1-4d10-8071-0b2024279ff1'),
(139, 22, 'Tab 1', 1, '2019-07-04 07:40:55', '2019-07-04 07:40:55', 'b1f0b904-0ab3-4c72-b91b-c5da362ed272'),
(141, 42, 'Tab 1', 1, '2019-07-04 07:46:15', '2019-07-04 07:46:15', 'a3e5059e-daa8-4826-91ee-2c377510aa38'),
(145, 35, 'Content', 1, '2019-07-04 11:23:22', '2019-07-04 11:23:22', 'f34414d4-46d0-4c02-9c80-88a0225bb1d1'),
(146, 41, 'Tab 1', 1, '2019-07-04 11:47:54', '2019-07-04 11:47:54', 'c7298ec1-9e07-4d5d-8c4a-dbb1d737ae71'),
(153, 16, 'Content', 1, '2019-07-04 13:55:25', '2019-07-04 13:55:25', '27c21ac6-09eb-4fc2-9e0c-4aaf468e780c'),
(154, 17, 'Content', 1, '2019-07-04 13:55:26', '2019-07-04 13:55:26', 'c409a66d-ae40-41fa-b4bf-0f0e2b411100'),
(156, 1, 'Homepage', 1, '2019-07-09 15:24:45', '2019-07-09 15:24:45', '4a1c135e-a9e7-414a-8401-d2a50ba9e6cb'),
(159, 14, 'Content', 1, '2019-07-16 10:26:13', '2019-07-16 10:26:13', '1a8f075f-b0a6-4ef0-8e47-a47ed0dac53f'),
(161, 44, 'Thank You', 1, '2019-07-17 12:19:28', '2019-07-17 12:19:28', 'f88e2136-9aea-49d9-acbb-a1708b36c70e'),
(162, 43, 'Content', 1, '2019-07-17 12:21:13', '2019-07-17 12:21:13', '640e441d-c223-44cf-bdfa-18a58b8b6972'),
(163, 18, 'Result Page', 1, '2019-07-29 13:10:51', '2019-07-29 13:10:51', 'ee5d1e85-37d1-46e8-9ae7-fce26a1ebaf8');

-- --------------------------------------------------------

--
-- Структура таблицы `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Main title', 'mainTitle', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-12 08:11:07', '2019-06-12 08:11:07', '1bb6ee9f-a81b-4165-9b53-d8f3253b0bd5'),
(2, 1, 'Description', 'description', 'global', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Simple.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-06-12 08:12:17', '2019-07-09 15:26:02', 'f032e108-a4cf-4ab2-a3a3-9b2b5456fd93'),
(3, 1, 'Caption', 'caption', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-12 08:21:46', '2019-06-12 08:21:46', '6998462f-6292-4c02-9aac-c4d4839cac87'),
(4, 1, 'Button', 'button', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-12 11:59:27', '2019-06-20 13:03:55', '7c004fce-53f8-4000-a88e-52d66e18ad27'),
(5, NULL, 'Button name', 'buttonName', 'matrixBlockType:44988c33-f2ef-4e3e-8444-5e6dbc5ef6ce', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-12 11:59:28', '2019-06-12 11:59:28', '50a1013b-04e4-4c2d-82de-b2f2f41e7fd0'),
(6, NULL, 'Button link', 'buttonLink', 'matrixBlockType:44988c33-f2ef-4e3e-8444-5e6dbc5ef6ce', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-12 11:59:28', '2019-06-12 11:59:28', '0b16a4dc-2fb3-498f-95d1-701020fd65f2'),
(17, 3, 'Platform', 'platform', 'global', '', 1, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"minRows\":\"\",\"maxRows\":\"1\",\"contentTable\":\"{{%stc_platform}}\",\"propagationMethod\":\"all\",\"staticField\":\"1\",\"columns\":{\"105\":{\"width\":\"\"},\"34\":{\"width\":\"\"},\"35\":{\"width\":\"\"},\"36\":{\"width\":\"\"},\"43\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"selectionLabel\":\"\"}', '2019-06-13 13:26:10', '2019-07-16 10:26:12', 'cd8ef10e-3118-43fa-9203-29ba152588b7'),
(20, 4, 'Answer', 'answer', 'global', '', 1, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_answer}}\",\"localizeBlocks\":false}', '2019-06-14 12:36:20', '2019-06-19 12:14:33', 'cfe7c987-a524-401e-a645-b25d16854328'),
(27, NULL, 'Answers', 'answers', 'matrixBlockType:29da0df3-4ebe-4bf4-921e-0784f8c8dabc', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-14 13:46:57', '2019-06-19 12:14:33', '3c0e6a50-a8e5-4111-b8b3-dcb862b54f38'),
(30, NULL, 'Points Table', 'pointsTable', 'matrixBlockType:29da0df3-4ebe-4bf4-921e-0784f8c8dabc', '', 1, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"minRows\":\"\",\"maxRows\":\"\",\"contentTable\":\"{{%stc_8_pointstable}}\",\"localizeBlocks\":false,\"staticField\":\"\",\"columns\":{\"31\":{\"width\":\"50\"},\"32\":{\"width\":\"50\"}},\"fieldLayout\":\"table\",\"selectionLabel\":\"Add Platform\"}', '2019-06-18 10:16:59', '2019-06-19 12:14:33', 'bc6d75c4-2bda-41e0-86bf-47acc61bb491'),
(31, NULL, 'Platform', 'platform', 'superTableBlockType:d99ff412-f140-4446-8a7a-b509701301bc', '', 1, 'site', NULL, 'craft\\fields\\Entries', '{\"sources\":[\"section:d1fbc85d-f97a-4e53-9856-3a7f6dcf8634\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false}', '2019-06-18 13:11:23', '2019-06-19 12:14:38', '02343321-d5bb-44a5-97b6-bfbb87f299d6'),
(32, NULL, 'Points', 'points', 'superTableBlockType:d99ff412-f140-4446-8a7a-b509701301bc', '', 1, 'none', NULL, 'craft\\fields\\Number', '{\"defaultValue\":null,\"min\":\"0\",\"max\":null,\"decimals\":0,\"size\":null,\"prefix\":\"\",\"suffix\":\"\"}', '2019-06-18 13:11:23', '2019-06-19 12:14:38', '2234c147-96ba-4ba8-b931-b20f3b08d45c'),
(34, NULL, 'Platform Description', 'platformDescription', 'superTableBlockType:e0fef858-b4b0-4c4d-aa93-6abdc78001c9', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-06-18 14:34:12', '2019-07-16 10:26:13', '6c71820b-b1f3-4e65-a6a1-d22b5c4b1690'),
(35, NULL, 'Link to Example', 'linkToExample', 'superTableBlockType:e0fef858-b4b0-4c4d-aa93-6abdc78001c9', '', 1, 'none', NULL, 'craft\\fields\\Url', '{\"placeholder\":\"\",\"maxLength\":\"255\"}', '2019-06-18 14:34:12', '2019-07-16 10:26:13', 'b5c2a38f-4817-4550-9838-d0879af6b046'),
(36, NULL, 'Image', 'image', 'superTableBlockType:e0fef858-b4b0-4c4d-aa93-6abdc78001c9', '', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-06-18 14:34:12', '2019-07-16 10:26:12', '1834b79e-25a3-4a9a-950e-4dd92666d84a'),
(38, 3, 'Comparisons Items', 'comparisonsItems', 'global', '', 1, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":\"1\",\"maxBlocks\":\"1\",\"contentTable\":\"{{%matrixcontent_comparisonsitems}}\",\"localizeBlocks\":false}', '2019-06-18 14:55:44', '2019-07-04 13:55:25', 'b3db72d9-e119-4802-8020-e71ebc880e07'),
(39, NULL, 'Item', 'item', 'superTableBlockType:c417e979-c2cd-4fa1-8c12-bcd04f739909', '', 1, 'site', NULL, 'craft\\fields\\Entries', '{\"sources\":[\"section:07023f46-257e-4990-a248-ec935750762e\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false}', '2019-06-18 14:55:44', '2019-06-18 14:55:44', '33c5c6bb-5864-4bf8-a362-a104e093f20f'),
(40, NULL, 'Text', 'text', 'superTableBlockType:c417e979-c2cd-4fa1-8c12-bcd04f739909', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-18 14:55:44', '2019-06-18 14:55:44', '79c07249-a008-4632-a0ed-8d93ab915abf'),
(41, NULL, 'Stars', 'stars', 'superTableBlockType:c417e979-c2cd-4fa1-8c12-bcd04f739909', '', 1, 'none', NULL, 'craft\\fields\\Number', '{\"defaultValue\":null,\"min\":\"0\",\"max\":null,\"decimals\":0,\"size\":null,\"prefix\":\"\",\"suffix\":\"\"}', '2019-06-18 14:55:44', '2019-06-18 14:55:44', '4429f243-fa12-4937-8262-dd79a5d627ea'),
(42, NULL, 'Dollars', 'dollars', 'superTableBlockType:c417e979-c2cd-4fa1-8c12-bcd04f739909', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-18 14:55:45', '2019-06-18 14:55:45', '4d1cad77-03b6-4411-8b1c-897e3cee3399'),
(43, NULL, 'Logo', 'logo', 'superTableBlockType:e0fef858-b4b0-4c4d-aa93-6abdc78001c9', '', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:1e7204c0-1b18-477d-b8a4-46bb7f7747d8\",\"defaultUploadLocationSubpath\":\"craftcalculator/web/assets/logo/\",\"singleUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":[\"volume:1e7204c0-1b18-477d-b8a4-46bb7f7747d8\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-06-19 09:16:07', '2019-07-16 10:26:12', '40979664-a6cb-4b3a-b8e4-91a51a453de4'),
(44, NULL, 'Comparisons', 'comparisons', 'matrixBlockType:d7b699f5-e45d-4879-a87e-56c1cbe9dc7c', '', 1, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"minRows\":\"\",\"maxRows\":\"\",\"contentTable\":\"{{%stc_9_comparisons}}\",\"localizeBlocks\":false,\"staticField\":\"\",\"columns\":{\"45\":{\"width\":\"\"},\"47\":{\"width\":\"\"},\"48\":{\"width\":\"\"},\"49\":{\"width\":\"\"}},\"fieldLayout\":\"table\",\"selectionLabel\":\"\"}', '2019-06-19 09:42:38', '2019-07-04 13:55:25', 'fea83fc4-f144-4786-a372-82709aedbd0a'),
(45, NULL, 'Comparisons Name', 'comparisonsName', 'superTableBlockType:885488bc-ee89-48d6-98b9-9ef4c5504721', '', 1, 'site', NULL, 'craft\\fields\\Entries', '{\"sources\":[\"section:07023f46-257e-4990-a248-ec935750762e\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false}', '2019-06-19 09:42:39', '2019-07-04 13:55:25', 'ac2db657-3039-4815-9566-6518a11d3294'),
(47, NULL, 'Dollars', 'dollars', 'superTableBlockType:885488bc-ee89-48d6-98b9-9ef4c5504721', '', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"1\",\"defaultUploadLocationSource\":\"volume:97df0c36-e966-426e-9687-ea1f854a2ec6\",\"defaultUploadLocationSubpath\":\"assets/dollars\",\"singleUploadLocationSource\":\"volume:97df0c36-e966-426e-9687-ea1f854a2ec6\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":[\"volume:97df0c36-e966-426e-9687-ea1f854a2ec6\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false}', '2019-06-19 09:42:39', '2019-07-04 13:55:25', '8a25055e-afd7-43e5-b3f5-2aaf97eb65cd'),
(48, NULL, 'Stars', 'stars', 'superTableBlockType:885488bc-ee89-48d6-98b9-9ef4c5504721', '', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":[\"volume:fb16c06d-aaef-4083-92ef-e96020eba3a9\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false}', '2019-06-19 09:42:39', '2019-07-04 13:55:25', 'dbb56bca-5ecf-4983-85eb-b763c1ae3365'),
(49, NULL, 'Text', 'text', 'superTableBlockType:885488bc-ee89-48d6-98b9-9ef4c5504721', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-19 09:42:40', '2019-07-04 13:55:25', '2fb6c9bc-a7e2-4142-acc7-12b73dc0121e'),
(51, 5, 'Title Page', 'titlePage', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-25 14:04:36', '2019-06-25 14:04:36', 'a767eada-bc92-450f-bf0f-c8640f01b0e6'),
(52, 5, 'Title Form', 'titleForm', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-25 14:05:38', '2019-06-25 14:05:38', '79c17659-1b2d-489e-99e6-160192cf0aa3'),
(53, 5, 'Phone number', 'phoneNumber', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-06-25 14:05:52', '2019-06-25 14:05:52', 'c94e0ac4-8685-48f8-acf5-07cb6ac721f2'),
(54, 5, 'Platforms Entries', 'platformsEntries', 'global', '', 1, 'site', NULL, 'craft\\fields\\Entries', '{\"sources\":[\"section:d1fbc85d-f97a-4e53-9856-3a7f6dcf8634\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false}', '2019-06-26 08:43:10', '2019-06-26 08:43:10', '416a20a8-d5de-4954-b6f4-0e8258a55489'),
(74, NULL, 'first setting', 'firstSetting', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\Number', '{\"defaultValue\":null,\"min\":\"0\",\"max\":null,\"decimals\":0,\"size\":null,\"prefix\":\"\",\"suffix\":\"\"}', '2019-07-03 14:18:58', '2019-07-03 14:54:35', 'b588eb30-c3c1-4525-b76b-86224f6c8a8a'),
(75, NULL, 'Second setting', 'secondSetting', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:18:58', '2019-07-03 14:54:35', '20c184e5-9d8d-43b5-a4bf-ec41762aa242'),
(76, NULL, 'Third setting', 'thirdSetting', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\Number', '{\"defaultValue\":null,\"min\":\"0\",\"max\":null,\"decimals\":0,\"size\":null,\"prefix\":\"\",\"suffix\":\"\"}', '2019-07-03 14:18:58', '2019-07-03 14:54:36', '9d8acdad-88da-4a6a-b5ee-65cbdc70f052'),
(77, NULL, 'ththtydjh', 'ththtydjh', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:36', '2019-07-03 14:54:36', '5248d3e1-9f69-4925-9115-a7b43cf2e89c'),
(78, NULL, 'ytue6tu7', 'ytue6tu7', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:37', '2019-07-03 14:54:37', '43de2f92-62ce-4209-bc96-b3e30a43289c'),
(79, NULL, '76eiu65uh6t5', 'eiu65uh6t5', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:37', '2019-07-03 14:54:37', '87b83dae-d551-4e11-b8b7-61e6d23c4682'),
(80, NULL, '56eue657u', 'eue657u', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:37', '2019-07-03 14:54:37', 'a47d726f-0a75-45e2-92bc-a1aecb523bdc'),
(81, NULL, '657erhyb', 'erhyb', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:38', '2019-07-03 14:54:38', 'c0ab111b-92c3-49fd-beb1-dfadd40d8033'),
(82, NULL, '546w4', 'gfhthygjh', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:38', '2019-07-03 14:54:38', '23d8d09e-4213-4cad-a31f-2c14f256ae20'),
(83, NULL, 'tythth', 'tythth', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:39', '2019-07-03 14:54:39', '0c7673fb-1d7e-407a-aa78-088900c390d4'),
(84, NULL, 'regbgrehsb', 'regbgrehsb', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:39', '2019-07-03 14:54:39', 'dc5a45ae-bd6d-4839-bf49-d34ff600bb6f'),
(85, NULL, 'srthgsrht', 'srthgsrht', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:39', '2019-07-03 14:54:39', '2875c736-1de0-410b-9de9-4f0d4d0e01f1'),
(86, NULL, 'dfthydtfhdtx', 'dfthydtfhdtx', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:40', '2019-07-03 14:54:40', '1a77b677-65c9-4b3a-86c5-a7ee0b5821be'),
(87, NULL, 'tyjdgyndxtyj', 'tyjdgyndxtyj', 'superTableBlockType:1f14be20-27d9-49cf-8860-b0343f8ad2e7', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-03 14:54:40', '2019-07-03 14:54:40', 'e4edb5c2-c9be-4ead-bb63-bb112fd16dc6'),
(103, 1, 'Image', 'image', 'global', '', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":[\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false}', '2019-07-09 12:17:49', '2019-07-09 12:17:49', 'b42d3669-44ab-41e1-87de-fbf78b124303'),
(104, 1, 'Subtitle', 'subtitle', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-09 15:24:22', '2019-07-09 15:26:13', '7617d371-4e24-4bf1-9298-5482dbb55fb8'),
(105, NULL, 'Platforms name', 'platformsName', 'superTableBlockType:e0fef858-b4b0-4c4d-aa93-6abdc78001c9', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-16 10:13:50', '2019-07-16 10:26:12', '498c20d8-0bb8-42a1-bbb6-1110ca3d4c8c'),
(107, 6, 'Subtitle Thanks Page', 'subtitleThanksPage', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-17 10:46:45', '2019-07-17 10:46:45', 'e1a3aa61-ba99-4432-a282-fbd49d47266d'),
(108, 6, 'Share text', 'shareText', 'global', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-17 10:50:45', '2019-07-17 10:50:45', 'd2c63042-93fb-4a44-9311-3fa080d4ed9f'),
(109, 6, 'Info with share link', 'infoWithShareLink', 'global', '', 1, 'site', NULL, 'verbb\\supertable\\fields\\SuperTableField', '{\"minRows\":\"\",\"maxRows\":\"1\",\"contentTable\":\"{{%stc_infowithsharelink}}\",\"propagationMethod\":\"all\",\"staticField\":\"\",\"columns\":{\"110\":{\"width\":\"\"},\"112\":{\"width\":\"\"},\"111\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"selectionLabel\":\"\"}', '2019-07-17 10:52:38', '2019-07-17 12:21:13', '3c62438f-62e1-4685-95dc-26d079c8ae01'),
(110, NULL, 'Title Link', 'titleLink', 'superTableBlockType:866d8d44-e562-446e-b900-bb7899b26c27', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-17 10:52:38', '2019-07-17 12:21:13', '5e2c82c3-5c54-4c1d-85f1-907f13d7c402'),
(111, NULL, 'Quote Link', 'quoteLink', 'superTableBlockType:866d8d44-e562-446e-b900-bb7899b26c27', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-17 10:52:39', '2019-07-17 12:21:13', 'b2afb589-72d3-4245-9cc0-fd4bfdb5c7a1'),
(112, NULL, 'Description Link', 'descriptionLink', 'superTableBlockType:866d8d44-e562-446e-b900-bb7899b26c27', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-07-17 10:52:39', '2019-07-17 12:21:13', 'c1b2955c-289e-40fc-b90b-3bf9dc10790a');

-- --------------------------------------------------------

--
-- Структура таблицы `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext,
  `configMap` mediumtext,
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `config`, `configMap`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.2.2', '3.2.15', 0, '{\"fieldGroups\":{\"14aaf7e5-d485-4df7-9d85-45392f480b3e\":{\"name\":\"Platforms\"},\"334be807-b781-4534-aa52-1e077e7d9771\":{\"name\":\"Homepage\"},\"6895d0dd-53e6-4cb1-be80-08a1a197a8b6\":{\"name\":\"Questions\"},\"ae661801-9669-470b-a805-aa6f8d2ddba5\":{\"name\":\"Result Page\"},\"8c729460-a249-480a-985a-0bff8e2c3ee5\":{\"name\":\"Thank You\"}},\"siteGroups\":{\"96abb8e1-acce-4c48-84ba-d1d8c579094d\":{\"name\":\"Craftcalculator\"}},\"sites\":{\"1951e1e1-0a4f-4dcb-9b47-711c8734c512\":{\"name\":\"Craftcalculator\",\"handle\":\"default\",\"language\":\"en\",\"hasUrls\":true,\"baseUrl\":\"$DEFAULT_SITE_URL\",\"sortOrder\":1,\"primary\":true,\"siteGroup\":\"96abb8e1-acce-4c48-84ba-d1d8c579094d\"}},\"email\":{\"fromEmail\":\"lutiks2013@gmail.com\",\"fromName\":\"Craftcalculator\",\"transportType\":\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"},\"system\":{\"edition\":\"solo\",\"name\":\"Craftcalculator\",\"live\":true,\"schemaVersion\":\"3.2.15\",\"timeZone\":\"America/Los_Angeles\"},\"users\":[],\"dateModified\":1564406281,\"plugins\":{\"element-api\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"1.0.0\"},\"redactor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.3.0\"},\"conditions\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"1.0.0\"},\"super-table\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.2.0\"},\"typedlinkfield\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"1.0.0\"},\"wheelform\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.0.0\",\"settings\":{\"from_email\":\"valentynd91@gmail.com\",\"cp_label\":\"Forms\",\"success_message\":\"Thank You! we will review your submission shortly.\",\"volume_id\":\"\",\"recaptcha_version\":\"2\",\"recaptcha_public\":\"\",\"recaptcha_secret\":\"\"}},\"twigpack\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"1.0.0\"}},\"sections\":{\"07023f46-257e-4990-a248-ec935750762e\":{\"name\":\"Comparison Item\",\"handle\":\"comparisonItem\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"entryTypes\":{\"6a0d049e-4d62-4da2-b0cd-fb34a64334f7\":{\"name\":\"Comparison Item\",\"handle\":\"comparisonItem\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1}},\"siteSettings\":{\"1951e1e1-0a4f-4dcb-9b47-711c8734c512\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"comparison-item/{slug}\",\"template\":\"\"}}},\"072abb55-81b5-48a5-adb9-76b43e20321f\":{\"name\":\"Results\",\"handle\":\"results\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"entryTypes\":{\"e99ec07b-d645-46a3-8bbd-0c796e606740\":{\"name\":\"Results\",\"handle\":\"results\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"e54764a7-5741-4aab-a1f1-a029be53795b\":{\"tabs\":[{\"name\":\"Result Page\",\"sortOrder\":1,\"fields\":{\"416a20a8-d5de-4954-b6f4-0e8258a55489\":{\"required\":false,\"sortOrder\":5},\"79c17659-1b2d-489e-99e6-160192cf0aa3\":{\"required\":false,\"sortOrder\":2},\"a767eada-bc92-450f-bf0f-c8640f01b0e6\":{\"required\":false,\"sortOrder\":1},\"b42d3669-44ab-41e1-87de-fbf78b124303\":{\"required\":false,\"sortOrder\":3},\"c94e0ac4-8685-48f8-acf5-07cb6ac721f2\":{\"required\":false,\"sortOrder\":4}}}]}}}},\"siteSettings\":{\"1951e1e1-0a4f-4dcb-9b47-711c8734c512\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"results\",\"template\":\"index\"}}},\"8e10515d-0359-4b8e-bd43-9c9dca580500\":{\"name\":\"Homepage\",\"handle\":\"homepage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"entryTypes\":{\"697ebde5-7460-4d76-b672-540aeb5481e7\":{\"name\":\"Homepage\",\"handle\":\"homepage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"d6af5fa0-3f55-49bf-9189-340bca1aa3bc\":{\"tabs\":[{\"name\":\"Homepage\",\"sortOrder\":1,\"fields\":{\"1bb6ee9f-a81b-4165-9b53-d8f3253b0bd5\":{\"required\":false,\"sortOrder\":2},\"6998462f-6292-4c02-9aac-c4d4839cac87\":{\"required\":false,\"sortOrder\":5},\"7617d371-4e24-4bf1-9298-5482dbb55fb8\":{\"required\":false,\"sortOrder\":3},\"7c004fce-53f8-4000-a88e-52d66e18ad27\":{\"required\":false,\"sortOrder\":6},\"b42d3669-44ab-41e1-87de-fbf78b124303\":{\"required\":false,\"sortOrder\":1},\"f032e108-a4cf-4ab2-a3a3-9b2b5456fd93\":{\"required\":false,\"sortOrder\":4}}}]}}}},\"siteSettings\":{\"1951e1e1-0a4f-4dcb-9b47-711c8734c512\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"/\",\"template\":\"index\"}}},\"8e51cf02-4db9-4106-95cb-ffcc2eee4ce6\":{\"name\":\"Questions\",\"handle\":\"questions\",\"type\":\"structure\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"structure\":{\"uid\":\"fb228271-fed3-4ff4-b15f-aced9a030dde\",\"maxLevels\":null},\"entryTypes\":{\"7fdf0d09-603e-4b5a-8420-d0d4c42e8a3f\":{\"name\":\"Questions list\",\"handle\":\"questionsList\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"01b12cd3-8ce4-4987-8f77-66a8d70d7a0f\":{\"tabs\":[{\"name\":\"Questions body\",\"sortOrder\":1,\"fields\":{\"cfe7c987-a524-401e-a645-b25d16854328\":{\"required\":false,\"sortOrder\":1}}}]}}}},\"siteSettings\":{\"1951e1e1-0a4f-4dcb-9b47-711c8734c512\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"questions/{slug}\",\"template\":\"questions/index\"}}},\"d1fbc85d-f97a-4e53-9856-3a7f6dcf8634\":{\"name\":\"Platforms\",\"handle\":\"platforms\",\"type\":\"channel\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"entryTypes\":{\"01075fcb-208d-42ce-b938-8acf8822a41d\":{\"name\":\"Platforms\",\"handle\":\"platforms\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"b1d013f7-25a6-43d5-92d2-0a496d813920\":{\"tabs\":[{\"name\":\"Platforms\",\"sortOrder\":1,\"fields\":{\"b3db72d9-e119-4802-8020-e71ebc880e07\":{\"required\":false,\"sortOrder\":2},\"cd8ef10e-3118-43fa-9203-29ba152588b7\":{\"required\":false,\"sortOrder\":1}}}]}}}},\"siteSettings\":{\"1951e1e1-0a4f-4dcb-9b47-711c8734c512\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"platforms/{slug}\",\"template\":\"platforms/index\"}}},\"698013a1-3266-4f24-9c9c-2580222e27e2\":{\"name\":\"Thank you Page\",\"handle\":\"thankYouPage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"1951e1e1-0a4f-4dcb-9b47-711c8734c512\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"thank-you-page\",\"template\":\"\"}},\"entryTypes\":{\"3e1f4f77-7b63-4dbd-84c1-36598bd03d4e\":{\"name\":\"Thank you Page\",\"handle\":\"thankYouPage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"ddfae3a9-f55c-45f2-9eba-a86938cd8c20\":{\"tabs\":[{\"name\":\"Thank You\",\"sortOrder\":1,\"fields\":{\"1bb6ee9f-a81b-4165-9b53-d8f3253b0bd5\":{\"required\":false,\"sortOrder\":1},\"3c62438f-62e1-4685-95dc-26d079c8ae01\":{\"required\":false,\"sortOrder\":4},\"d2c63042-93fb-4a44-9311-3fa080d4ed9f\":{\"required\":false,\"sortOrder\":3},\"e1a3aa61-ba99-4432-a282-fbd49d47266d\":{\"required\":false,\"sortOrder\":2}}}]}}}}}},\"fields\":{\"1bb6ee9f-a81b-4165-9b53-d8f3253b0bd5\":{\"name\":\"Main title\",\"handle\":\"mainTitle\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":\"334be807-b781-4534-aa52-1e077e7d9771\",\"contentColumnType\":\"text\"},\"416a20a8-d5de-4954-b6f4-0e8258a55489\":{\"name\":\"Platforms Entries\",\"handle\":\"platformsEntries\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Entries\",\"settings\":{\"sources\":[\"section:d1fbc85d-f97a-4e53-9856-3a7f6dcf8634\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false},\"fieldGroup\":\"ae661801-9669-470b-a805-aa6f8d2ddba5\",\"contentColumnType\":\"string\"},\"6998462f-6292-4c02-9aac-c4d4839cac87\":{\"name\":\"Caption\",\"handle\":\"caption\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":\"334be807-b781-4534-aa52-1e077e7d9771\",\"contentColumnType\":\"text\"},\"7617d371-4e24-4bf1-9298-5482dbb55fb8\":{\"name\":\"Subtitle\",\"handle\":\"subtitle\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":\"334be807-b781-4534-aa52-1e077e7d9771\",\"contentColumnType\":\"text\"},\"79c17659-1b2d-489e-99e6-160192cf0aa3\":{\"name\":\"Title Form\",\"handle\":\"titleForm\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":\"ae661801-9669-470b-a805-aa6f8d2ddba5\",\"contentColumnType\":\"text\"},\"7c004fce-53f8-4000-a88e-52d66e18ad27\":{\"name\":\"Button\",\"handle\":\"button\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":\"334be807-b781-4534-aa52-1e077e7d9771\",\"contentColumnType\":\"text\"},\"a767eada-bc92-450f-bf0f-c8640f01b0e6\":{\"name\":\"Title Page\",\"handle\":\"titlePage\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":\"ae661801-9669-470b-a805-aa6f8d2ddba5\",\"contentColumnType\":\"text\"},\"b3db72d9-e119-4802-8020-e71ebc880e07\":{\"name\":\"Comparisons Items\",\"handle\":\"comparisonsItems\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Matrix\",\"settings\":{\"minBlocks\":\"1\",\"maxBlocks\":\"1\",\"contentTable\":\"{{%matrixcontent_comparisonsitems}}\",\"localizeBlocks\":false},\"fieldGroup\":\"14aaf7e5-d485-4df7-9d85-45392f480b3e\",\"contentColumnType\":\"string\"},\"b42d3669-44ab-41e1-87de-fbf78b124303\":{\"name\":\"Image\",\"handle\":\"image\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":[\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false},\"fieldGroup\":\"334be807-b781-4534-aa52-1e077e7d9771\",\"contentColumnType\":\"string\"},\"c94e0ac4-8685-48f8-acf5-07cb6ac721f2\":{\"name\":\"Phone number\",\"handle\":\"phoneNumber\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":\"ae661801-9669-470b-a805-aa6f8d2ddba5\",\"contentColumnType\":\"text\"},\"cd8ef10e-3118-43fa-9203-29ba152588b7\":{\"name\":\"Platform\",\"handle\":\"platform\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"verbb\\\\supertable\\\\fields\\\\SuperTableField\",\"settings\":{\"minRows\":\"\",\"maxRows\":\"1\",\"contentTable\":\"{{%stc_platform}}\",\"propagationMethod\":\"all\",\"staticField\":\"1\",\"columns\":{\"105\":{\"width\":\"\"},\"34\":{\"width\":\"\"},\"35\":{\"width\":\"\"},\"36\":{\"width\":\"\"},\"43\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"selectionLabel\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"14aaf7e5-d485-4df7-9d85-45392f480b3e\"},\"cfe7c987-a524-401e-a645-b25d16854328\":{\"name\":\"Answer\",\"handle\":\"answer\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Matrix\",\"settings\":{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_answer}}\",\"localizeBlocks\":false},\"fieldGroup\":\"6895d0dd-53e6-4cb1-be80-08a1a197a8b6\",\"contentColumnType\":\"string\"},\"f032e108-a4cf-4ab2-a3a3-9b2b5456fd93\":{\"name\":\"Description\",\"handle\":\"description\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Simple.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"fieldGroup\":\"334be807-b781-4534-aa52-1e077e7d9771\",\"contentColumnType\":\"text\"},\"e1a3aa61-ba99-4432-a282-fbd49d47266d\":{\"name\":\"Subtitle Thanks Page\",\"handle\":\"subtitleThanksPage\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"8c729460-a249-480a-985a-0bff8e2c3ee5\"},\"d2c63042-93fb-4a44-9311-3fa080d4ed9f\":{\"name\":\"Share text\",\"handle\":\"shareText\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"8c729460-a249-480a-985a-0bff8e2c3ee5\"},\"3c62438f-62e1-4685-95dc-26d079c8ae01\":{\"name\":\"Info with share link\",\"handle\":\"infoWithShareLink\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"verbb\\\\supertable\\\\fields\\\\SuperTableField\",\"settings\":{\"minRows\":\"\",\"maxRows\":\"1\",\"contentTable\":\"{{%stc_infowithsharelink}}\",\"propagationMethod\":\"all\",\"staticField\":\"\",\"columns\":{\"110\":{\"width\":\"\"},\"112\":{\"width\":\"\"},\"111\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"selectionLabel\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"8c729460-a249-480a-985a-0bff8e2c3ee5\"}},\"matrixBlockTypes\":{\"29da0df3-4ebe-4bf4-921e-0784f8c8dabc\":{\"name\":\"Answers block\",\"handle\":\"answersBlock\",\"sortOrder\":1,\"field\":\"cfe7c987-a524-401e-a645-b25d16854328\",\"fieldLayouts\":{\"97dc27c3-b472-4d02-8b47-6855abe3370b\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"3c0e6a50-a8e5-4111-b8b3-dcb862b54f38\":{\"required\":false,\"sortOrder\":1},\"bc6d75c4-2bda-41e0-86bf-47acc61bb491\":{\"required\":false,\"sortOrder\":2}}}]}},\"fields\":{\"3c0e6a50-a8e5-4111-b8b3-dcb862b54f38\":{\"name\":\"Answers\",\"handle\":\"answers\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":null,\"contentColumnType\":\"text\"},\"bc6d75c4-2bda-41e0-86bf-47acc61bb491\":{\"name\":\"Points Table\",\"handle\":\"pointsTable\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"verbb\\\\supertable\\\\fields\\\\SuperTableField\",\"settings\":{\"minRows\":\"\",\"maxRows\":\"\",\"contentTable\":\"{{%stc_8_pointstable}}\",\"localizeBlocks\":false,\"staticField\":\"\",\"columns\":{\"31\":{\"width\":\"50\"},\"32\":{\"width\":\"50\"}},\"fieldLayout\":\"table\",\"selectionLabel\":\"Add Platform\"},\"fieldGroup\":null,\"contentColumnType\":\"string\"}}},\"44988c33-f2ef-4e3e-8444-5e6dbc5ef6ce\":{\"name\":\"button group\",\"handle\":\"buttonGroup\",\"sortOrder\":1,\"field\":\"7c004fce-53f8-4000-a88e-52d66e18ad27\",\"fieldLayouts\":{\"9fd8693b-6cf1-4320-ba05-7b0737f4cdb2\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"0b16a4dc-2fb3-498f-95d1-701020fd65f2\":{\"required\":false,\"sortOrder\":2},\"50a1013b-04e4-4c2d-82de-b2f2f41e7fd0\":{\"required\":false,\"sortOrder\":1}}}]}},\"fields\":{\"0b16a4dc-2fb3-498f-95d1-701020fd65f2\":{\"name\":\"Button link\",\"handle\":\"buttonLink\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":null,\"contentColumnType\":\"text\"},\"50a1013b-04e4-4c2d-82de-b2f2f41e7fd0\":{\"name\":\"Button name\",\"handle\":\"buttonName\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":null,\"contentColumnType\":\"text\"}}},\"d7b699f5-e45d-4879-a87e-56c1cbe9dc7c\":{\"name\":\"Items\",\"handle\":\"items\",\"sortOrder\":1,\"field\":\"b3db72d9-e119-4802-8020-e71ebc880e07\",\"fieldLayouts\":{\"367c694a-e42b-443c-9798-095e77b20939\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"fea83fc4-f144-4786-a372-82709aedbd0a\":{\"required\":false,\"sortOrder\":1}}}]}},\"fields\":{\"fea83fc4-f144-4786-a372-82709aedbd0a\":{\"name\":\"Comparisons\",\"handle\":\"comparisons\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"verbb\\\\supertable\\\\fields\\\\SuperTableField\",\"settings\":{\"minRows\":\"\",\"maxRows\":\"\",\"contentTable\":\"{{%stc_9_comparisons}}\",\"localizeBlocks\":false,\"staticField\":\"\",\"columns\":{\"45\":{\"width\":\"\"},\"47\":{\"width\":\"\"},\"48\":{\"width\":\"\"},\"49\":{\"width\":\"\"}},\"fieldLayout\":\"table\",\"selectionLabel\":\"\"},\"fieldGroup\":null,\"contentColumnType\":\"string\"}}}},\"categoryGroups\":{\"3ad2ff7f-e2c0-407b-941b-4a408e2fff8b\":{\"name\":\"Category rating\",\"handle\":\"categoryRating\",\"structure\":{\"uid\":\"b0a8319b-4e1b-4f34-a129-b1fb96510465\",\"maxLevels\":null},\"siteSettings\":{\"1951e1e1-0a4f-4dcb-9b47-711c8734c512\":{\"hasUrls\":true,\"uriFormat\":\"category-rating/{slug}\",\"template\":\"\"}}}},\"superTableBlockTypes\":{\"885488bc-ee89-48d6-98b9-9ef4c5504721\":{\"field\":\"fea83fc4-f144-4786-a372-82709aedbd0a\",\"fieldLayouts\":{\"8790def4-81fe-4cf2-8805-de4ec359d128\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":\"1\",\"fields\":{\"2fb6c9bc-a7e2-4142-acc7-12b73dc0121e\":{\"required\":\"0\",\"sortOrder\":\"4\"},\"8a25055e-afd7-43e5-b3f5-2aaf97eb65cd\":{\"required\":\"0\",\"sortOrder\":\"2\"},\"ac2db657-3039-4815-9566-6518a11d3294\":{\"required\":\"0\",\"sortOrder\":\"1\"},\"dbb56bca-5ecf-4983-85eb-b763c1ae3365\":{\"required\":\"0\",\"sortOrder\":\"3\"}}}]}},\"fields\":{\"2fb6c9bc-a7e2-4142-acc7-12b73dc0121e\":{\"name\":\"Text\",\"handle\":\"text\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":null,\"contentColumnType\":\"text\"},\"8a25055e-afd7-43e5-b3f5-2aaf97eb65cd\":{\"name\":\"Dollars\",\"handle\":\"dollars\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"1\",\"defaultUploadLocationSource\":\"volume:97df0c36-e966-426e-9687-ea1f854a2ec6\",\"defaultUploadLocationSubpath\":\"assets/dollars\",\"singleUploadLocationSource\":\"volume:97df0c36-e966-426e-9687-ea1f854a2ec6\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":[\"volume:97df0c36-e966-426e-9687-ea1f854a2ec6\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false},\"fieldGroup\":null,\"contentColumnType\":\"string\"},\"ac2db657-3039-4815-9566-6518a11d3294\":{\"name\":\"Comparisons Name\",\"handle\":\"comparisonsName\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Entries\",\"settings\":{\"sources\":[\"section:07023f46-257e-4990-a248-ec935750762e\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false},\"fieldGroup\":null,\"contentColumnType\":\"string\"},\"dbb56bca-5ecf-4983-85eb-b763c1ae3365\":{\"name\":\"Stars\",\"handle\":\"stars\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":[\"volume:fb16c06d-aaef-4083-92ef-e96020eba3a9\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false},\"fieldGroup\":null,\"contentColumnType\":\"string\"}}},\"c417e979-c2cd-4fa1-8c12-bcd04f739909\":{\"field\":\"b3db72d9-e119-4802-8020-e71ebc880e07\",\"fieldLayouts\":{\"29c3f0b2-94fb-42b8-a2e7-7c19d28ef209\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":\"1\",\"fields\":{\"33c5c6bb-5864-4bf8-a362-a104e093f20f\":{\"required\":\"0\",\"sortOrder\":\"1\"},\"4429f243-fa12-4937-8262-dd79a5d627ea\":{\"required\":\"0\",\"sortOrder\":\"3\"},\"4d1cad77-03b6-4411-8b1c-897e3cee3399\":{\"required\":\"0\",\"sortOrder\":\"4\"},\"79c07249-a008-4632-a0ed-8d93ab915abf\":{\"required\":\"0\",\"sortOrder\":\"2\"}}}]}},\"fields\":{\"33c5c6bb-5864-4bf8-a362-a104e093f20f\":{\"name\":\"Item\",\"handle\":\"item\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Entries\",\"settings\":{\"sources\":[\"section:07023f46-257e-4990-a248-ec935750762e\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false},\"fieldGroup\":null,\"contentColumnType\":\"string\"},\"4429f243-fa12-4937-8262-dd79a5d627ea\":{\"name\":\"Stars\",\"handle\":\"stars\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Number\",\"settings\":{\"defaultValue\":null,\"min\":\"0\",\"max\":null,\"decimals\":0,\"size\":null,\"prefix\":\"\",\"suffix\":\"\"},\"fieldGroup\":null,\"contentColumnType\":\"integer(10)\"},\"4d1cad77-03b6-4411-8b1c-897e3cee3399\":{\"name\":\"Dollars\",\"handle\":\"dollars\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":null,\"contentColumnType\":\"text\"},\"79c07249-a008-4632-a0ed-8d93ab915abf\":{\"name\":\"Text\",\"handle\":\"text\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"fieldGroup\":null,\"contentColumnType\":\"text\"}}},\"d99ff412-f140-4446-8a7a-b509701301bc\":{\"field\":\"bc6d75c4-2bda-41e0-86bf-47acc61bb491\",\"fieldLayouts\":{\"f806c347-7894-49df-ab38-fad65600e21d\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":\"1\",\"fields\":{\"02343321-d5bb-44a5-97b6-bfbb87f299d6\":{\"required\":\"1\",\"sortOrder\":\"1\"},\"2234c147-96ba-4ba8-b931-b20f3b08d45c\":{\"required\":\"1\",\"sortOrder\":\"2\"}}}]}},\"fields\":{\"02343321-d5bb-44a5-97b6-bfbb87f299d6\":{\"name\":\"Platform\",\"handle\":\"platform\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Entries\",\"settings\":{\"sources\":[\"section:d1fbc85d-f97a-4e53-9856-3a7f6dcf8634\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false},\"fieldGroup\":null,\"contentColumnType\":\"string\"},\"2234c147-96ba-4ba8-b931-b20f3b08d45c\":{\"name\":\"Points\",\"handle\":\"points\",\"instructions\":\"\",\"searchable\":\"1\",\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Number\",\"settings\":{\"defaultValue\":null,\"min\":\"0\",\"max\":null,\"decimals\":0,\"size\":null,\"prefix\":\"\",\"suffix\":\"\"},\"fieldGroup\":null,\"contentColumnType\":\"integer(10)\"}}},\"e0fef858-b4b0-4c4d-aa93-6abdc78001c9\":{\"field\":\"cd8ef10e-3118-43fa-9203-29ba152588b7\",\"fields\":{\"1834b79e-25a3-4a9a-950e-4dd92666d84a\":{\"name\":\"Image\",\"handle\":\"image\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"40979664-a6cb-4b3a-b8e4-91a51a453de4\":{\"name\":\"Logo\",\"handle\":\"logo\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:1e7204c0-1b18-477d-b8a4-46bb7f7747d8\",\"defaultUploadLocationSubpath\":\"craftcalculator/web/assets/logo/\",\"singleUploadLocationSource\":\"volume:6e81ee34-2320-4dee-961a-35451f6145cd\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":[\"volume:1e7204c0-1b18-477d-b8a4-46bb7f7747d8\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"498c20d8-0bb8-42a1-bbb6-1110ca3d4c8c\":{\"name\":\"Platforms name\",\"handle\":\"platformsName\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"6c71820b-b1f3-4e65-a6a1-d22b5c4b1690\":{\"name\":\"Platform Description\",\"handle\":\"platformDescription\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b5c2a38f-4817-4550-9838-d0879af6b046\":{\"name\":\"Link to Example\",\"handle\":\"linkToExample\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Url\",\"settings\":{\"placeholder\":\"\",\"maxLength\":\"255\"},\"contentColumnType\":\"string(255)\",\"fieldGroup\":null}},\"fieldLayouts\":{\"eb971949-88c6-4fd2-88bb-f30a33ad0022\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"1834b79e-25a3-4a9a-950e-4dd92666d84a\":{\"required\":false,\"sortOrder\":4},\"40979664-a6cb-4b3a-b8e4-91a51a453de4\":{\"required\":false,\"sortOrder\":5},\"498c20d8-0bb8-42a1-bbb6-1110ca3d4c8c\":{\"required\":false,\"sortOrder\":1},\"6c71820b-b1f3-4e65-a6a1-d22b5c4b1690\":{\"required\":false,\"sortOrder\":2},\"b5c2a38f-4817-4550-9838-d0879af6b046\":{\"required\":false,\"sortOrder\":3}}}]}}},\"866d8d44-e562-446e-b900-bb7899b26c27\":{\"field\":\"3c62438f-62e1-4685-95dc-26d079c8ae01\",\"fields\":{\"5e2c82c3-5c54-4c1d-85f1-907f13d7c402\":{\"name\":\"Title Link\",\"handle\":\"titleLink\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b2afb589-72d3-4245-9cc0-fd4bfdb5c7a1\":{\"name\":\"Quote Link\",\"handle\":\"quoteLink\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"c1b2955c-289e-40fc-b90b-3bf9dc10790a\":{\"name\":\"Description Link\",\"handle\":\"descriptionLink\",\"instructions\":\"\",\"searchable\":false,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"75cf71a8-627d-4f29-ad7d-9a91c9bb39dc\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"5e2c82c3-5c54-4c1d-85f1-907f13d7c402\":{\"required\":false,\"sortOrder\":1},\"b2afb589-72d3-4245-9cc0-fd4bfdb5c7a1\":{\"required\":false,\"sortOrder\":3},\"c1b2955c-289e-40fc-b90b-3bf9dc10790a\":{\"required\":false,\"sortOrder\":2}}}]}}}},\"volumes\":{\"1e7204c0-1b18-477d-b8a4-46bb7f7747d8\":{\"name\":\"Logo\",\"handle\":\"logo\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"@web/assets/logo/\",\"settings\":{\"path\":\"@web/assets/logo/\"},\"sortOrder\":2},\"6e81ee34-2320-4dee-961a-35451f6145cd\":{\"name\":\"Image\",\"handle\":\"image\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"@web/assets/images\",\"settings\":{\"path\":\"assets/images\"},\"sortOrder\":1},\"97df0c36-e966-426e-9687-ea1f854a2ec6\":{\"name\":\"Dollars\",\"handle\":\"dollars\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"@web/assets/dollars\",\"settings\":{\"path\":\"@web/assets/dollars\"},\"sortOrder\":4},\"fb16c06d-aaef-4083-92ef-e96020eba3a9\":{\"name\":\"Stars\",\"handle\":\"stars\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"@web/assets/stars\",\"settings\":{\"path\":\"@web/assets/stars\"},\"sortOrder\":3}},\"routes\":{\"230195ad-66d2-4a65-95b4-6df4ff6bec04\":{\"template\":\"index.twig\",\"uriParts\":{\"1\":[\"*\",\"[^\\\\/]+\"]},\"uriPattern\":\"<any:[^\\\\/]+>\",\"sortOrder\":1,\"siteUid\":null},\"21a0d50d-c58c-4a91-8337-2a31169cc8f8\":{\"template\":\"index.twig\",\"uriParts\":[\"result/\",[\"*\",\"[^\\\\/]+\"]],\"uriPattern\":\"result/<any:[^\\\\/]+>\",\"sortOrder\":3,\"siteUid\":null}},\"tagGroups\":[],\"globalSets\":[],\"imageTransforms\":[]}', '[]', 'ACXkC753yKIM', '2019-06-11 15:11:26', '2019-07-16 07:35:24', '2db4047b-2f4d-4e92-9ad7-7f8040542b3b');

-- --------------------------------------------------------

--
-- Структура таблицы `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `matrixblocks`
--

INSERT INTO `matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 2, 4, 1, 1, NULL, '2019-06-12 12:03:19', '2019-06-12 12:03:19', '715f889c-bb9c-4ff4-87e6-e40baf38ad1d'),
(17, 16, 20, 8, 1, NULL, '2019-06-14 12:38:38', '2019-06-25 09:50:37', 'f1fbcd56-df91-4b3b-a4a6-0f3565689c10'),
(18, 16, 20, 8, 2, NULL, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '841fe75c-3a08-4dad-ae8d-0d6858bd2555'),
(19, 16, 20, 8, 3, NULL, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '6dabb666-587a-40c2-baa8-a779a7d54393'),
(20, 16, 20, 8, 4, NULL, '2019-06-14 12:38:38', '2019-06-25 09:50:37', 'b223b2b4-a81f-4993-af19-2face181f2ef'),
(22, 21, 20, 8, 1, NULL, '2019-06-14 14:15:58', '2019-06-25 11:21:28', '686060b1-78bb-41bd-ab82-e0f12d551b50'),
(23, 21, 20, 8, 2, NULL, '2019-06-14 14:15:58', '2019-06-25 11:21:28', '57aedcf2-ff93-48fa-bef3-3810060ae0e6'),
(24, 21, 20, 8, 3, NULL, '2019-06-14 14:15:58', '2019-06-25 11:21:29', '8981e39a-f632-4f54-bd65-da5027e0bb3c'),
(25, 21, 20, 8, 4, NULL, '2019-06-14 14:15:58', '2019-06-25 11:21:29', 'c68224ac-6074-402e-8e81-1748cd228709'),
(44, 7, 38, 9, 1, 0, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '405f0174-5d6f-4319-86af-28b95ad0e408'),
(52, 11, 38, 9, 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '9c81ad35-129d-4303-845b-959341880981'),
(70, 68, 38, 9, 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '7b706e93-85af-4778-bd06-e431e5910e9f'),
(80, 78, 38, 9, 1, 0, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '35a00294-fae4-4a61-9ef3-fa05afddb06f'),
(130, 128, 38, 9, 1, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'c54d993c-7fb2-441e-b0e9-8178d05904bf'),
(138, 136, 38, 9, 1, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '77ec4002-69a6-4e69-a18f-799314566a5b'),
(146, 144, 38, 9, 1, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '8cf25f8e-45fe-444d-908c-cb1afacf4429'),
(154, 152, 38, 9, 1, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '8c5cd7e9-5c41-4be0-80e9-6f31dd7e7a54'),
(170, 168, 38, 9, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'abc13b5e-e431-4d30-a806-90994601953c'),
(178, 176, 38, 9, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'af2bb59f-2f2c-4fa5-8c35-63e14b3e08b4'),
(186, 184, 38, 9, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '56a71d37-f56a-40de-8695-40d1a1fe90ae'),
(194, 192, 38, 9, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '536994b0-866b-45c4-adfe-5fed94eb381b'),
(202, 200, 38, 9, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'b3566d11-d10c-451c-af47-85fbb02e469b'),
(210, 208, 38, 9, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '2253a650-ba21-4a28-8020-b9fbae91c448'),
(218, 216, 38, 9, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '70b2bcdc-3bb2-4dc3-8a27-0c198523c420'),
(226, 224, 38, 9, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '66ef53f6-98c9-4c33-9a04-ca4f2bc0ab08'),
(234, 232, 38, 9, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'dc2f68a4-0cb1-4b1f-9ca4-da91245aa110'),
(242, 240, 38, 9, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '7a4cda41-fb2c-4ba7-a72e-ebb42ace3b90'),
(250, 248, 38, 9, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '6900aa17-443c-4322-8aec-903b45827d56'),
(258, 256, 38, 9, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '115a2ae8-bfd0-4550-a8a5-ab8146c0afe2'),
(266, 264, 38, 9, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '5a1071c5-069d-4f5e-9c5e-291551d16a05'),
(283, 282, 20, 8, 1, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:05', 'bfc3029f-2469-4f64-91c0-5a8b8e0651aa'),
(288, 282, 20, 8, 2, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '6ac94c19-8dd0-41ea-b772-c0cee6a6bd28'),
(293, 282, 20, 8, 3, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:05', '5a5a9f5c-6c2a-476b-8669-6e92e8ee47c3'),
(298, 282, 20, 8, 4, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '2346a0f9-ed75-4c63-bfd3-7fcdfc8dd556'),
(304, 303, 20, 8, 1, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '8d0dd4e8-6ce5-4099-a6e0-abde42dbc5a0'),
(309, 303, 20, 8, 2, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '93bb736e-a1e2-4105-b35f-a5531a96b320'),
(314, 303, 20, 8, 3, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ff6e2698-5992-4a90-833f-04f98ec5099a'),
(319, 303, 20, 8, 4, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '4b340ed3-2787-4ac4-9bdc-2390c33e23fc'),
(325, 324, 20, 8, 1, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'c9ed2183-aa4b-4cd6-94ff-fc3d8e25ed65'),
(330, 324, 20, 8, 2, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '1f22d79d-6ab9-4e31-9f4e-b6cbc14999a8'),
(335, 324, 20, 8, 3, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '20363f8c-e5ba-4677-ae0b-ed03faddfb12'),
(340, 324, 20, 8, 4, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '6b17a994-b516-405c-baab-9cecc735fb49'),
(347, 345, 38, 9, 1, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'b134826d-2231-41f0-96b9-d13a965b272d'),
(355, 353, 38, 9, 1, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'db5671f2-3b1a-4e6b-8353-84eb1319f7d7'),
(363, 362, 20, 8, 1, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'e7f1b6e4-67ea-463d-91e2-060823e64da9'),
(368, 362, 20, 8, 2, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c1901ca0-838c-457b-806b-15de4af6857d'),
(373, 362, 20, 8, 3, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'f3a9ac25-04c3-4df4-a154-19eca5b58692'),
(378, 362, 20, 8, 4, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '8b3f43cd-6c12-404e-a41f-b2a247e41c1f'),
(385, 383, 38, 9, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '577f80a2-cd38-49d5-b40a-ebf69d550d97'),
(393, 391, 38, 9, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '86c149ce-9f70-4ede-9870-1416b4da5ced'),
(401, 399, 38, 9, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '0f36ee43-2326-4ab5-8b56-c6f1bea80541'),
(413, 412, 20, 8, 1, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'f09f852d-4755-4d15-9c58-fdf63ce64b74'),
(418, 412, 20, 8, 2, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'b4da4165-89c6-4ad5-ab70-05c2c86351e8'),
(423, 412, 20, 8, 3, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '925db032-e67b-4518-907a-91c0be0855c7'),
(428, 412, 20, 8, 4, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'b10e01db-f121-44e7-8eca-ffc1de214606'),
(434, 433, 20, 8, 1, 0, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '9aa9ed9e-fca2-46c4-9fb8-d33590680a25'),
(439, 433, 20, 8, 2, 0, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '6a44b55a-0c56-42b0-8026-d4694e87009c'),
(444, 433, 20, 8, 3, 0, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ebdc6f25-1c96-477c-b7d0-e7e0753c9256'),
(449, 433, 20, 8, 4, 0, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '74b26aad-73b2-467c-9e9a-e64c347dff45'),
(455, 454, 20, 8, 1, 0, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'f03b7670-0c1e-48b4-bc64-7c7957b3e71c'),
(460, 454, 20, 8, 2, 0, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e83b1c7f-e0e0-49ec-b33a-0452f4695604'),
(465, 454, 20, 8, 3, 0, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '66e969d5-d34d-41fe-a634-3ccf4a51dc5d'),
(470, 454, 20, 8, 4, 0, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f52fe900-f909-4ee8-8f1e-2ac412d1db0f'),
(476, 475, 20, 8, 1, 0, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '05b835a9-5f4c-4bf1-9c4d-36f0c63dc1ee'),
(481, 475, 20, 8, 2, 0, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '76c391b8-2465-4204-865b-e51831b86080'),
(486, 475, 20, 8, 3, 0, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'd8738e95-c356-4375-8d93-3419890801ec'),
(491, 475, 20, 8, 4, 0, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '7e0b15f4-25a9-4217-87ff-b5658aaef67d'),
(497, 496, 20, 8, 1, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '7d4d5e77-75c0-4008-8e18-9f56e4e522f0'),
(502, 496, 20, 8, 2, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'dd289997-930f-47a3-8946-711da401f986'),
(507, 496, 20, 8, 3, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '2860adf3-c65d-4e9b-bb90-6a04985aa54e'),
(512, 496, 20, 8, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'df2d31fa-d7d5-4ae4-97f3-257e6d5bbb83'),
(518, 517, 20, 8, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'cfcbd575-501b-4965-a936-f8a1777b2dda'),
(523, 517, 20, 8, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '09282aaa-7b19-4cb2-b87b-e4f884c47938'),
(528, 517, 20, 8, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '608e63b9-c097-4f86-ba69-81fa9c83a608'),
(533, 517, 20, 8, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'a3d0d456-7d74-4b52-8f5f-a63593e20c53'),
(539, 538, 20, 8, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'a5a29869-8bd4-4c31-a1e6-12e962afed66'),
(544, 538, 20, 8, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '40165f30-fc7a-4733-b024-8735cafb304e'),
(549, 538, 20, 8, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'dfca07b1-b8f7-4d10-9cc7-5138584f0a98'),
(554, 538, 20, 8, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '90d9687e-2ac3-43bf-a4f0-6d0126aa4584'),
(560, 559, 20, 8, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '414a3a6c-893a-448c-8f24-c37f3d8c82de'),
(565, 559, 20, 8, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'f1bd2491-a292-4039-953e-29ea82e2d2d8'),
(570, 559, 20, 8, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '475777d9-8ae6-4ce9-ba88-6618130b4572'),
(575, 559, 20, 8, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '9eb4ecf5-f2ac-420f-b42f-df661a8344de'),
(581, 580, 20, 8, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '670c01cd-277f-4f89-bd95-fcfdb9da7ef8'),
(586, 580, 20, 8, 2, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '1f775a11-0caa-4931-a93e-ae08f09149e2'),
(591, 580, 20, 8, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'f3b172b2-1792-4918-8cd6-381c74c0db6b'),
(596, 580, 20, 8, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '51e22ec1-30f0-4903-91e6-668c21b21963'),
(603, 601, 38, 9, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '68133649-5bfe-484f-8e8e-bb2168751a02'),
(611, 609, 38, 9, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'f2b25121-a7b9-4fb6-9ac5-4eab6f61a9ad'),
(619, 617, 38, 9, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '12384abc-771e-4a10-9d00-fe9d368d281c'),
(627, 625, 38, 9, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'a68e5433-ac04-478b-89c2-b95d747df7ef'),
(635, 633, 38, 9, 1, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'f1ee108a-c833-44c5-bd3b-c56b07d8ea5b'),
(655, 7, 38, 9, 1, 0, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'f2927c9f-e2ef-483b-8da0-fbcd7ae558b8'),
(663, 661, 38, 9, 1, NULL, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '946f04fe-5f96-4dee-8e3f-6d3e2a6e40ef'),
(678, 11, 38, 9, 1, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '56a0bae2-11db-43d3-be64-bf65dac16a06'),
(686, 684, 38, 9, 1, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '65563dd4-5191-4238-a595-ae68c4f89bd5'),
(701, 68, 38, 9, 1, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'c995f7c5-a51f-4007-9e55-188449811a9f'),
(709, 707, 38, 9, 1, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'a4380b03-72f8-44ef-8535-9d0726c8c636'),
(724, 78, 38, 9, 1, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '50cbd516-4bbc-4d44-b2ce-b86903209ba9'),
(732, 730, 38, 9, 1, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '3a17f36c-7685-4884-9721-53ade3c6a5c1'),
(769, 767, 38, 9, 1, NULL, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '1b5aba77-32f7-4234-9cc7-87408ccc8468'),
(792, 7, 38, 9, 1, 0, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '26890492-c2de-4691-ac30-8f58722dec92'),
(800, 798, 38, 9, 1, NULL, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '7f352f0a-8e29-46a4-b101-03574b2a2e03'),
(808, 806, 38, 9, 1, NULL, '2019-07-29 13:35:50', '2019-07-29 13:35:50', 'e17b7558-bfc6-414e-ac9b-0042ec2faafe'),
(823, 7, 38, 9, 1, 0, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '2bc2da3e-9001-44b0-b963-8a0fd4029d61'),
(831, 829, 38, 9, 1, NULL, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'c2322c92-7e0e-44be-8664-e22968763a70'),
(839, 837, 38, 9, 1, NULL, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'ff2d0c1b-a7cd-42fd-8648-cc86693b8db8'),
(855, 853, 38, 9, 1, NULL, '2019-07-29 13:39:28', '2019-07-29 13:39:28', '27b58467-88bb-45b5-ac4e-3820f0bd3bbe'),
(870, 7, 38, 9, 1, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '91e07bfe-2164-48ed-95c4-302833524ea3'),
(878, 876, 38, 9, 1, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '42b49150-ab19-4887-9b30-1676234e53b9');

-- --------------------------------------------------------

--
-- Структура таблицы `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `matrixblocktypes`
--

INSERT INTO `matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 4, 2, 'button group', 'buttonGroup', 1, '2019-06-12 11:59:29', '2019-06-12 11:59:29', '44988c33-f2ef-4e3e-8444-5e6dbc5ef6ce'),
(8, 20, 11, 'Answers block', 'answersBlock', 1, '2019-06-14 12:36:22', '2019-06-19 12:14:39', '29da0df3-4ebe-4bf4-921e-0784f8c8dabc'),
(9, 38, 17, 'Items', 'items', 1, '2019-06-19 09:42:40', '2019-07-04 13:55:26', 'd7b699f5-e45d-4879-a87e-56c1cbe9dc7c');

-- --------------------------------------------------------

--
-- Структура таблицы `matrixcontent_answer`
--

CREATE TABLE `matrixcontent_answer` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_answerBlock_wpCms` int(10) DEFAULT NULL,
  `field_answerBlock_drupalCms` int(10) DEFAULT NULL,
  `field_answerBlock_craftCms` int(10) DEFAULT NULL,
  `field_answersBlock_answers` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `matrixcontent_answer`
--

INSERT INTO `matrixcontent_answer` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_answerBlock_wpCms`, `field_answerBlock_drupalCms`, `field_answerBlock_craftCms`, `field_answersBlock_answers`) VALUES
(1, 17, 1, '2019-06-14 12:38:38', '2019-06-25 09:50:36', '385574c7-015e-42d7-9b92-132b0dc7a79a', 5, 2, 10, 'One page website'),
(2, 18, 1, '2019-06-14 12:38:38', '2019-06-25 09:50:37', '5042c24e-76f8-4cbc-8e17-1a5b46d70c15', 6, 3, 8, '3-5'),
(3, 19, 1, '2019-06-14 12:38:38', '2019-06-25 09:50:37', 'a7b5d450-4691-42c3-b156-c93cd01f48e5', 10, 4, 5, '10-20'),
(4, 20, 1, '2019-06-14 12:38:38', '2019-06-25 09:50:37', 'd085ce12-82f6-4e0f-a0d6-b433131ce880', 25, 5, 15, '20+'),
(5, 22, 1, '2019-06-14 14:15:57', '2019-06-25 11:21:28', '7adf4c4c-9b3f-42a4-b9f4-7466f09090ce', 5, 0, 10, '0-99'),
(6, 23, 1, '2019-06-14 14:15:58', '2019-06-25 11:21:28', '1e9df402-b999-41d1-9861-a81f77f8fbbe', 20, 30, 15, '100-1499'),
(7, 24, 1, '2019-06-14 14:15:58', '2019-06-25 11:21:29', 'f356f837-b126-4c1c-9d05-1cd8b85af4a5', 30, 40, 20, '1500+'),
(8, 25, 1, '2019-06-14 14:15:58', '2019-06-25 11:21:29', '53dee9d0-83da-4915-adfe-2869c2a1ac6a', 10, 20, 5, 'I don\'t actually know'),
(9, 283, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '912b5361-ef37-4730-9863-9dbe2b0ad8df', NULL, NULL, NULL, '0-99'),
(10, 288, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '2c39ddfa-e8c1-4669-9b6e-9206aad22c1b', NULL, NULL, NULL, '100-1499'),
(11, 293, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '7854e778-2d96-477a-88ef-a893f1a9bc21', NULL, NULL, NULL, '1500+'),
(12, 298, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ead400b8-d016-427a-904a-7d39c4b406c5', NULL, NULL, NULL, 'I don\'t actually know'),
(13, 304, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '033619b1-09e1-4444-967b-60076deaadab', NULL, NULL, NULL, '0-99'),
(14, 309, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'd5cbb466-3ca2-4594-882d-6c7881a2b29b', NULL, NULL, NULL, '100-1499'),
(15, 314, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'f7f5a033-5ae9-4223-87e5-468075cf2902', NULL, NULL, NULL, '1500+'),
(16, 319, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'f54cfe43-a645-4ff4-a631-f6a52de2b0bd', NULL, NULL, NULL, 'I don\'t actually know'),
(17, 325, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:07', 'a99137db-e39a-490f-98d8-9c649d0f5759', NULL, NULL, NULL, 'One page website'),
(18, 330, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '16d1b460-e998-4ada-a9dc-84feb7f615af', NULL, NULL, NULL, '3-5'),
(19, 335, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'a53c6deb-0371-4586-ad57-80c67a8efc73', NULL, NULL, NULL, '10-20'),
(20, 340, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '478d2c14-96a8-4be8-a034-f1ad17b8c1f7', NULL, NULL, NULL, '20+'),
(21, 363, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'baa1633b-b9c5-44da-bbf0-3ae4692bc82e', NULL, NULL, NULL, '0-99'),
(22, 368, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '50632b7d-a820-4088-a25f-5765c75987c7', NULL, NULL, NULL, '100-1499'),
(23, 373, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'efc236d1-8978-4cf8-8e03-cb9757c06d52', NULL, NULL, NULL, '1500+'),
(24, 378, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'df06a4e0-efc8-440a-b2fa-f43e05f5da6e', NULL, NULL, NULL, 'I don\'t actually know'),
(25, 413, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ed239d52-2fb1-4968-a46c-c14c1bcf8b33', NULL, NULL, NULL, 'One page website'),
(26, 418, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '95707011-f93c-4520-928e-957cd63f07f5', NULL, NULL, NULL, '3-5'),
(27, 423, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '18508142-934e-479c-94f3-9d8aef2366c0', NULL, NULL, NULL, '10-20'),
(28, 428, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '9e8e3172-48db-4ffa-97f4-f81e4ad6805f', NULL, NULL, NULL, '20+'),
(29, 434, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '3573eafb-d70a-4a38-88a7-730540540500', NULL, NULL, NULL, 'One page website'),
(30, 439, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '31656e1b-a846-4345-a3c9-78360d54c24a', NULL, NULL, NULL, '3-5'),
(31, 444, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'db789369-9d94-433f-8955-b6b5b84b3767', NULL, NULL, NULL, '10-20'),
(32, 449, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '7da361f9-780e-46b9-85b1-eb5a587f090d', NULL, NULL, NULL, '20+'),
(33, 455, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '970d2aa4-0e84-46d0-8a25-c4ebb2006f6f', NULL, NULL, NULL, 'One page website'),
(34, 460, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '8e2d34d9-1570-4b56-9445-2a2338d2961b', NULL, NULL, NULL, '3-5'),
(35, 465, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e41a39bf-ce52-4eb7-8464-02c4ee5e4ebb', NULL, NULL, NULL, '10-20'),
(36, 470, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'cdcb9fca-c5b7-40be-9d9d-ab55c040b1d3', NULL, NULL, NULL, '20+'),
(37, 476, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '03109c11-eaa1-4c37-847f-90e609070eeb', NULL, NULL, NULL, '0-99'),
(38, 481, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a1276237-d1a0-46a3-a79f-cb45460a08eb', NULL, NULL, NULL, '100-1499'),
(39, 486, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'db36078a-df52-4ea9-8614-a479367d6bbf', NULL, NULL, NULL, '1500+'),
(40, 491, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '1e6ca62f-081f-4f8c-a345-3b8aebfb5022', NULL, NULL, NULL, 'I don\'t actually know'),
(41, 497, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '88ea59b3-b68d-4c57-b4e9-08f698dd10ed', NULL, NULL, NULL, 'One page website'),
(42, 502, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'df03c83e-dec5-4b69-9907-d0ed80b20423', NULL, NULL, NULL, '3-5'),
(43, 507, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '98d2c369-9c1e-4306-919d-11acda1ff40e', NULL, NULL, NULL, '10-20'),
(44, 512, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7646c971-721a-4326-ba77-64dc96bc138f', NULL, NULL, NULL, '20+'),
(45, 518, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'e2fd731d-d166-4145-8cf7-2bfb7fd8b801', NULL, NULL, NULL, 'One page website'),
(46, 523, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '29aec7d3-0678-4a47-af3d-ad78f6c4756a', NULL, NULL, NULL, '3-5'),
(47, 528, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '4bf1953f-caf9-4d42-90be-ba7e75a6bc85', NULL, NULL, NULL, '10-20'),
(48, 533, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '80f961dc-21d3-4ce1-8b62-b41b12d84154', NULL, NULL, NULL, '20+'),
(49, 539, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'a6a60d09-c543-40b6-abb1-acf2a631b77f', NULL, NULL, NULL, 'One page website'),
(50, 544, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '292127d7-6a56-46ba-9c9c-b9b8ddaf70d8', NULL, NULL, NULL, '3-5'),
(51, 549, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'cd60f8bf-52d6-4785-9e8b-c9a31b004739', NULL, NULL, NULL, '10-20'),
(52, 554, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b34ee3a7-bc1c-403f-aecf-43c641c3a0dc', NULL, NULL, NULL, '20+'),
(53, 560, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'ddd7d7ce-8403-4f55-9a02-86f43bb99b1b', NULL, NULL, NULL, 'One page website'),
(54, 565, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '3b6e7ea2-6d00-4d3e-bcf7-5a2c0fded35e', NULL, NULL, NULL, '3-5'),
(55, 570, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '541d5b7d-cb51-4be4-a2c8-ec51c8dcda8d', NULL, NULL, NULL, '10-20'),
(56, 575, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '68378a0e-0734-4a7f-85ba-91984cef7cbc', NULL, NULL, NULL, '20+'),
(57, 581, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'b3a989a9-2fbd-4e8d-a555-a09c256370bd', NULL, NULL, NULL, 'One page website'),
(58, 586, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'dc1c1996-6502-40f4-a132-501d49199267', NULL, NULL, NULL, '3-5'),
(59, 591, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'f642cd76-2c10-4953-827b-e9c7b69d338f', NULL, NULL, NULL, '10-20'),
(60, 596, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '35490aea-ae85-415d-b021-ae321b69cfdd', NULL, NULL, NULL, '20+');

-- --------------------------------------------------------

--
-- Структура таблицы `matrixcontent_button`
--

CREATE TABLE `matrixcontent_button` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_buttonGroup_buttonName` text,
  `field_buttonGroup_buttonLink` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `matrixcontent_button`
--

INSERT INTO `matrixcontent_button` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_buttonGroup_buttonName`, `field_buttonGroup_buttonLink`) VALUES
(1, 3, 1, '2019-06-12 12:03:19', '2019-06-12 12:03:19', '3dfc0611-d238-459c-a1a8-98788774ce06', 'Let\'s do it!', '#');

-- --------------------------------------------------------

--
-- Структура таблицы `matrixcontent_comparisonsitems`
--

CREATE TABLE `matrixcontent_comparisonsitems` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_text` text,
  `field_stars` int(10) DEFAULT NULL,
  `field_dollars` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `matrixcontent_comparisonsitems`
--

INSERT INTO `matrixcontent_comparisonsitems` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_text`, `field_stars`, `field_dollars`) VALUES
(1, 44, 1, '2019-06-19 11:54:31', '2019-07-15 13:03:25', 'db0b27e5-a8c0-4009-b12b-66d638ec712f', NULL, NULL, NULL),
(2, 52, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', 'a1d5349e-c867-4850-87e7-56980d761bdc', NULL, NULL, NULL),
(3, 70, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:21', 'c2394907-0886-4bf2-96ed-c5b5e128fce1', NULL, NULL, NULL),
(4, 80, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:46', '2a775d02-7220-4ecd-8b1a-32fd0d49dd1c', NULL, NULL, NULL),
(5, 130, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '589dc4bc-838f-474c-86ca-ff874ab32fe4', NULL, NULL, NULL),
(6, 138, 1, '2019-07-16 07:35:59', '2019-07-16 07:36:00', 'd9d0d92c-0b48-4ae9-938d-58f4bc4fdcce', NULL, NULL, NULL),
(7, 146, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'f4225fe5-7d78-4eb5-bf49-6d3af2d523eb', NULL, NULL, NULL),
(8, 154, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'e9ee06af-2483-4143-8d83-d62fd08957e8', NULL, NULL, NULL),
(9, 170, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'f22b4bf7-a3bf-4457-9394-f48fd66a14a9', NULL, NULL, NULL),
(10, 178, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '2e83d5c0-4af9-451b-a7f4-9f39806f822e', NULL, NULL, NULL),
(11, 186, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:02', '09ef354e-5f29-430f-bd3a-38ce0ac4341a', NULL, NULL, NULL),
(12, 194, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'e1b68169-41b7-45e1-8a1a-312289d471fb', NULL, NULL, NULL),
(13, 202, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'c6ccfcf8-ea15-4638-9a82-8f747a04ce2f', NULL, NULL, NULL),
(14, 210, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '95e83a10-7cb7-46ba-a513-32e423af0948', NULL, NULL, NULL),
(15, 218, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '88961374-6de1-4ab7-9aee-18f88f26f36a', NULL, NULL, NULL),
(16, 226, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'ca151489-566d-4177-84c0-4b437bf36eaf', NULL, NULL, NULL),
(17, 234, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'adb1531f-32a5-4bd7-b251-4be10bb118df', NULL, NULL, NULL),
(18, 242, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'd46e7956-a0b7-4868-8f99-3f19d8769680', NULL, NULL, NULL),
(19, 250, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'c8f86dc2-ff84-4af7-85c9-060def860e4e', NULL, NULL, NULL),
(20, 258, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'f4361b1c-3483-471f-b55e-ab4390fbbfc3', NULL, NULL, NULL),
(21, 266, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'ce063b75-258e-4d3c-98d8-a05d61ddae32', NULL, NULL, NULL),
(22, 347, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'e06b02f5-e9e7-449c-af34-936d8605366a', NULL, NULL, NULL),
(23, 355, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'efc43fee-708c-4893-8468-9b695e79deba', NULL, NULL, NULL),
(24, 385, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '41e8447a-ea1a-4e28-9738-6cbdb32270d8', NULL, NULL, NULL),
(25, 393, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '7801bff9-dfc6-4d8a-a52b-f0e3500e716d', NULL, NULL, NULL),
(26, 401, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '8487c1f0-6486-452c-9d73-ceac82c67b27', NULL, NULL, NULL),
(27, 603, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '6860befb-0a69-4e24-8258-816ce0efaa45', NULL, NULL, NULL),
(28, 611, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'b842870e-c219-4735-b1ea-f47d4b3c8b4a', NULL, NULL, NULL),
(29, 619, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '0bf094c9-6b9e-4703-9bbf-753c2ecb3607', NULL, NULL, NULL),
(30, 627, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:15', 'd722559a-6de2-4046-aef3-84f738b8b60b', NULL, NULL, NULL),
(31, 635, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '2baf869f-d690-4785-9c98-65d29f35838d', NULL, NULL, NULL),
(33, 655, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '5bfa3c8c-9654-4157-85da-cda24a28624b', NULL, NULL, NULL),
(34, 663, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'a38ea9f5-0b7f-4dfd-b571-e738d0ca1c43', NULL, NULL, NULL),
(36, 678, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'd1eef559-a229-4e48-a317-5a066b2a4166', NULL, NULL, NULL),
(37, 686, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '7037a6dc-a831-4f35-9ac8-5285fe61afa2', NULL, NULL, NULL),
(39, 701, 1, '2019-07-16 10:14:45', '2019-07-23 09:05:39', 'e17bfdc2-6681-4c3d-b23e-067de8c52f76', NULL, NULL, NULL),
(40, 709, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '4aaa9600-6f8c-422c-bf8c-c78b0748959a', NULL, NULL, NULL),
(42, 724, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'cc00d149-6a44-4299-9bf1-dc4332373bbf', NULL, NULL, NULL),
(43, 732, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'f17f4ce6-ac38-4d8a-9b05-f6c79c237cea', NULL, NULL, NULL),
(44, 769, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'd1c10724-4423-4f5b-b046-f641ecc7efb5', NULL, NULL, NULL),
(46, 792, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'f622a9bf-35cd-4986-b99c-8fbd2968341f', NULL, NULL, NULL),
(47, 800, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '7ca89b3f-edaa-4b4f-bda4-ef33ade2ee41', NULL, NULL, NULL),
(48, 808, 1, '2019-07-29 13:35:49', '2019-07-29 13:35:54', '1fcc0290-88ec-4e85-9565-d597f6d49b02', NULL, NULL, NULL),
(50, 823, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '243435df-0e45-4ba6-b3d3-a6ee60895cbe', NULL, NULL, NULL),
(51, 831, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '0aec86d4-f0be-422b-90f5-baffcc072ed6', NULL, NULL, NULL),
(52, 839, 1, '2019-07-29 13:38:49', '2019-07-29 13:38:50', '7f99da32-8fa6-4ff7-ae27-ecaf985bf787', NULL, NULL, NULL),
(54, 855, 1, '2019-07-29 13:39:28', '2019-07-29 13:39:35', 'b4fc7600-5447-4ef1-979e-1157d893cde8', NULL, NULL, NULL),
(56, 870, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'be2c519d-ba22-4704-a794-93bb301871fe', NULL, NULL, NULL),
(57, 878, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '35bfb708-6977-4296-956e-6a9e02b62d67', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `type` enum('app','plugin','content') NOT NULL DEFAULT 'app',
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `pluginId`, `type`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'app', 'Install', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '8cd25a92-29b3-444b-a6c1-a585e3f6b558'),
(2, NULL, 'app', 'm150403_183908_migrations_table_changes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '27b2e2a2-79c9-4ab8-a23f-e4f5f04241e0'),
(3, NULL, 'app', 'm150403_184247_plugins_table_changes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '6e96ba85-afca-4c09-99dd-ded274f801c4'),
(4, NULL, 'app', 'm150403_184533_field_version', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ab83086d-4781-4bc2-bcb7-095daf811afc'),
(5, NULL, 'app', 'm150403_184729_type_columns', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'e092811f-cfe5-44d6-bd96-fba993d16485'),
(6, NULL, 'app', 'm150403_185142_volumes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f5697e9c-c813-4117-aa69-99473ba167a8'),
(7, NULL, 'app', 'm150428_231346_userpreferences', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'faf664b1-5dc9-47e8-8c12-22062c668be9'),
(8, NULL, 'app', 'm150519_150900_fieldversion_conversion', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '23aece95-16f2-4524-8a0a-58ad6ec54570'),
(9, NULL, 'app', 'm150617_213829_update_email_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'b7377581-7a86-4824-9db1-4cb9e053c7a1'),
(10, NULL, 'app', 'm150721_124739_templatecachequeries', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '93b6041d-e019-4245-a3df-1cfed8e0ce64'),
(11, NULL, 'app', 'm150724_140822_adjust_quality_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'b8a86898-8f02-4e34-9bde-e035e08ebf2e'),
(12, NULL, 'app', 'm150815_133521_last_login_attempt_ip', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '58ec73e7-4099-4a44-8cdc-237bc8a9b5e8'),
(13, NULL, 'app', 'm151002_095935_volume_cache_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '25a07a26-7a4f-42b2-a301-f42892ccd0fa'),
(14, NULL, 'app', 'm151005_142750_volume_s3_storage_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '392b8de4-1abf-4a96-8f63-247583579926'),
(15, NULL, 'app', 'm151016_133600_delete_asset_thumbnails', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '8e4fcc4c-3744-443e-92f9-d5d0d9fcd839'),
(16, NULL, 'app', 'm151209_000000_move_logo', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'b0b9e5b8-f891-41f3-8ea1-08c90ac6b058'),
(17, NULL, 'app', 'm151211_000000_rename_fileId_to_assetId', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'e71cb080-6722-4ce9-b9b4-3a542ebee455'),
(18, NULL, 'app', 'm151215_000000_rename_asset_permissions', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2421aa62-bc2e-47b2-8fd0-2135a0a777b4'),
(19, NULL, 'app', 'm160707_000001_rename_richtext_assetsource_setting', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0c9cc97b-13eb-43cc-9dc5-a928ac4517b6'),
(20, NULL, 'app', 'm160708_185142_volume_hasUrls_setting', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0840bb2f-518c-449e-ad32-8fee0c92fd3d'),
(21, NULL, 'app', 'm160714_000000_increase_max_asset_filesize', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '753134c3-7cb0-4e11-bf95-de882fe3504f'),
(22, NULL, 'app', 'm160727_194637_column_cleanup', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '313d30c7-c060-484b-ad49-bd7af590481b'),
(23, NULL, 'app', 'm160804_110002_userphotos_to_assets', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0c7740da-17ef-4223-9193-eafa9282a0c6'),
(24, NULL, 'app', 'm160807_144858_sites', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c1159b36-9f3b-4b5c-a848-7a81b3887f0d'),
(25, NULL, 'app', 'm160829_000000_pending_user_content_cleanup', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0225637d-96b8-438d-96cf-4000fa7293a7'),
(26, NULL, 'app', 'm160830_000000_asset_index_uri_increase', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '6faab557-efd3-450b-a103-9cc232c84351'),
(27, NULL, 'app', 'm160912_230520_require_entry_type_id', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f1a70e54-2edb-4b74-92e4-9acfc6d46aaf'),
(28, NULL, 'app', 'm160913_134730_require_matrix_block_type_id', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '34bbdfc9-850f-4fcf-b873-be2db120d713'),
(29, NULL, 'app', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ccbb1ecf-1654-4b6a-8cd2-3ff1e0e5eaa1'),
(30, NULL, 'app', 'm160920_231045_usergroup_handle_title_unique', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c4cf452c-fa19-43ba-ae7e-eb02682cb657'),
(31, NULL, 'app', 'm160925_113941_route_uri_parts', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '24005d90-8fbe-4233-a153-82b154221386'),
(32, NULL, 'app', 'm161006_205918_schemaVersion_not_null', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '8e3a57fc-73c6-42a9-90ce-9790290cbb4c'),
(33, NULL, 'app', 'm161007_130653_update_email_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '7ba1176d-4620-49a5-ba13-ff83869c9e26'),
(34, NULL, 'app', 'm161013_175052_newParentId', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '5a17356b-abde-4ac9-a780-d82aabec46c9'),
(35, NULL, 'app', 'm161021_102916_fix_recent_entries_widgets', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c3fb36d7-75e9-472d-be7b-40f1a575848a'),
(36, NULL, 'app', 'm161021_182140_rename_get_help_widget', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '14d7f1c7-c087-4712-bd35-5ccfaed9e5b3'),
(37, NULL, 'app', 'm161025_000000_fix_char_columns', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '405677f4-b82f-4bca-be30-4338cf51e4bb'),
(38, NULL, 'app', 'm161029_124145_email_message_languages', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '06f9e3f6-2073-45e3-a995-2a5cbe98c012'),
(39, NULL, 'app', 'm161108_000000_new_version_format', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f90b08ba-9feb-46f2-8849-d2f9667443d4'),
(40, NULL, 'app', 'm161109_000000_index_shuffle', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ea9408c1-69d0-4c1e-9ae2-138f0063cc4c'),
(41, NULL, 'app', 'm161122_185500_no_craft_app', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '3992d1c8-2625-4aa6-aaf1-1a4d17b6bf49'),
(42, NULL, 'app', 'm161125_150752_clear_urlmanager_cache', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f967f741-2238-47eb-96b1-77864c0c3057'),
(43, NULL, 'app', 'm161220_000000_volumes_hasurl_notnull', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '80115a4e-3f31-4748-ae77-a304d1324254'),
(44, NULL, 'app', 'm170114_161144_udates_permission', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '416b2da0-eb4f-4599-b7a1-15a82e558dac'),
(45, NULL, 'app', 'm170120_000000_schema_cleanup', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'b4b44548-8c76-4a97-b8c6-3eb9c3068697'),
(46, NULL, 'app', 'm170126_000000_assets_focal_point', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '7f440034-23ca-4103-a05d-ebad71b90fd9'),
(47, NULL, 'app', 'm170206_142126_system_name', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'e4018994-73f6-4abe-992e-debc618553fd'),
(48, NULL, 'app', 'm170217_044740_category_branch_limits', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c786edf2-be15-4de6-b93d-01b5ed9453af'),
(49, NULL, 'app', 'm170217_120224_asset_indexing_columns', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c56e3102-3522-449f-aac4-b899f2bb4983'),
(50, NULL, 'app', 'm170223_224012_plain_text_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '202e43ed-9e00-4b42-ba28-601135dba8a8'),
(51, NULL, 'app', 'm170227_120814_focal_point_percentage', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '67fede70-b6d2-429a-ae10-40e1be4c6412'),
(52, NULL, 'app', 'm170228_171113_system_messages', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '7ce2a870-f455-488b-bae3-401bc7d89ea5'),
(53, NULL, 'app', 'm170303_140500_asset_field_source_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'dbdfed49-2bbf-4bc4-9b72-2887253fa839'),
(54, NULL, 'app', 'm170306_150500_asset_temporary_uploads', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ea27362a-3c55-4eb2-a96e-37ac0946fb90'),
(55, NULL, 'app', 'm170523_190652_element_field_layout_ids', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'a41d36cc-3dc8-4b86-89ba-f436865409a5'),
(56, NULL, 'app', 'm170612_000000_route_index_shuffle', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'fafdd7d1-d912-4888-8418-474deec6c2fe'),
(57, NULL, 'app', 'm170621_195237_format_plugin_handles', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'd743cac7-6e00-4ba0-ac1c-037bb50e2783'),
(58, NULL, 'app', 'm170630_161027_deprecation_line_nullable', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '3e7fb84a-241e-4c8f-8b3f-d1eed3f46c18'),
(59, NULL, 'app', 'm170630_161028_deprecation_changes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '50b8ee0a-c218-4fc6-beb2-2c9def0e48e6'),
(60, NULL, 'app', 'm170703_181539_plugins_table_tweaks', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '15466bed-bdce-4450-b2b3-64da19b00a89'),
(61, NULL, 'app', 'm170704_134916_sites_tables', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '1d4444d8-5721-4b1d-9df7-17414d53f793'),
(62, NULL, 'app', 'm170706_183216_rename_sequences', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'a4a66614-656f-4798-b77f-6d0aee442ea4'),
(63, NULL, 'app', 'm170707_094758_delete_compiled_traits', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '42d1ebf9-78c2-4043-be72-8191ab5a4f20'),
(64, NULL, 'app', 'm170731_190138_drop_asset_packagist', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '97ffd7e9-c9a5-4087-8fb5-f892c88784ec'),
(65, NULL, 'app', 'm170810_201318_create_queue_table', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '6fe2444b-f2cf-4bae-8e29-1a42c18a95bd'),
(66, NULL, 'app', 'm170816_133741_delete_compiled_behaviors', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c8c077f8-5ef2-4674-8adb-0c4df0d3ba8d'),
(67, NULL, 'app', 'm170903_192801_longblob_for_queue_jobs', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2325dece-2027-454a-b200-b17c8efc68a9'),
(68, NULL, 'app', 'm170914_204621_asset_cache_shuffle', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f684382e-a888-4e48-b330-9d2847386463'),
(69, NULL, 'app', 'm171011_214115_site_groups', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0f832ffa-a727-4e44-8345-6afc3dacb306'),
(70, NULL, 'app', 'm171012_151440_primary_site', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '97890f06-ebef-4ded-ad9d-b650490d6818'),
(71, NULL, 'app', 'm171013_142500_transform_interlace', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '676a7cb6-655c-472a-9e24-443739ceb9a2'),
(72, NULL, 'app', 'm171016_092553_drop_position_select', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0a36850d-7c5c-4e9e-8cd9-1ecf528c6c2b'),
(73, NULL, 'app', 'm171016_221244_less_strict_translation_method', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'e9d3920c-2ad6-42a0-a09b-a8f03b608189'),
(74, NULL, 'app', 'm171107_000000_assign_group_permissions', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ec5cc9b9-574e-41df-9369-24e8d8a16f44'),
(75, NULL, 'app', 'm171117_000001_templatecache_index_tune', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c3ab159d-228f-4e20-8cdc-7aab7f36a8da'),
(76, NULL, 'app', 'm171126_105927_disabled_plugins', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '838a667e-7c54-45e9-9570-4d1c6f5ced91'),
(77, NULL, 'app', 'm171130_214407_craftidtokens_table', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f3098d3b-939f-44b3-8412-2a67b664cbaf'),
(78, NULL, 'app', 'm171202_004225_update_email_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'a3389675-7d2d-47b2-8096-e21a742d489e'),
(79, NULL, 'app', 'm171204_000001_templatecache_index_tune_deux', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '119da3f4-43f0-4d48-9ea7-d6e7a2bfbd78'),
(80, NULL, 'app', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '750c0699-4674-475a-990d-cf19f3fd0f98'),
(81, NULL, 'app', 'm171218_143135_longtext_query_column', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '88eb41a9-8d42-4b11-996f-caf631299ead'),
(82, NULL, 'app', 'm171231_055546_environment_variables_to_aliases', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f01fb1c8-0374-446b-8218-d7b816651708'),
(83, NULL, 'app', 'm180113_153740_drop_users_archived_column', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '3171ea1d-85fb-4eda-991e-384a7ef933c6'),
(84, NULL, 'app', 'm180122_213433_propagate_entries_setting', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '154fb04b-be56-42cb-ad3b-7957acb62dc3'),
(85, NULL, 'app', 'm180124_230459_fix_propagate_entries_values', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'be6da4a0-78fb-44a7-9757-66ba7af152b3'),
(86, NULL, 'app', 'm180128_235202_set_tag_slugs', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c732cad5-adcd-4018-b486-96f52a1a4bdb'),
(87, NULL, 'app', 'm180202_185551_fix_focal_points', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '8fca56d3-d69c-4d51-b3e8-6975c494b8b6'),
(88, NULL, 'app', 'm180217_172123_tiny_ints', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '68b6b27c-3e63-49d9-aedc-ffdee58466f9'),
(89, NULL, 'app', 'm180321_233505_small_ints', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0762db67-abbd-4cf3-84c0-660f9367309b'),
(90, NULL, 'app', 'm180328_115523_new_license_key_statuses', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '9281a1b4-0919-415c-8331-19967b070015'),
(91, NULL, 'app', 'm180404_182320_edition_changes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '44773539-7be3-437c-a670-ca63c1dbb6cb'),
(92, NULL, 'app', 'm180411_102218_fix_db_routes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'b7e88448-b8f2-49bc-a9ef-3ecb42eca9c6'),
(93, NULL, 'app', 'm180416_205628_resourcepaths_table', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '404ef99b-be79-471a-bdfa-58b023f3be9d'),
(94, NULL, 'app', 'm180418_205713_widget_cleanup', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'bc3dd8f4-8f31-4db5-8c0e-2eb91f739232'),
(95, NULL, 'app', 'm180425_203349_searchable_fields', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '59d517b6-713b-4221-8f6d-69f079df71c2'),
(96, NULL, 'app', 'm180516_153000_uids_in_field_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '5bc99113-f971-486b-b30f-52cad2018d76'),
(97, NULL, 'app', 'm180517_173000_user_photo_volume_to_uid', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '4e37020f-e844-41e5-ba2f-25de960f4aa8'),
(98, NULL, 'app', 'm180518_173000_permissions_to_uid', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '1ec0de87-9e9d-456d-af81-833da1cbac20'),
(99, NULL, 'app', 'm180520_173000_matrix_context_to_uids', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ef66f0ac-0d1d-4cc5-986d-9c8cbf5530cf'),
(100, NULL, 'app', 'm180521_173000_initial_yml_and_snapshot', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '5a3daec8-457f-4dd3-afb8-2348c1df95ff'),
(101, NULL, 'app', 'm180731_162030_soft_delete_sites', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0862ef0b-af4a-41de-8dfa-e0426ebffc39'),
(102, NULL, 'app', 'm180810_214427_soft_delete_field_layouts', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ae7020db-1a18-4750-9cae-45179eb645ce'),
(103, NULL, 'app', 'm180810_214439_soft_delete_elements', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'e7a63ab8-19a8-4e61-be74-fd0ddd70fb08'),
(104, NULL, 'app', 'm180824_193422_case_sensitivity_fixes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '505e2d02-b889-45f0-986f-aa989f38f7b9'),
(105, NULL, 'app', 'm180901_151639_fix_matrixcontent_tables', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '43254f27-c64d-41e2-a340-e9c91ba16f90'),
(106, NULL, 'app', 'm180904_112109_permission_changes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '1d5becf3-0bb3-416b-9baa-5de49b465159'),
(107, NULL, 'app', 'm180910_142030_soft_delete_sitegroups', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'edc6750f-39aa-4b6c-b797-efc2145669d6'),
(108, NULL, 'app', 'm181011_160000_soft_delete_asset_support', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '51c18c49-1c53-4118-9fc0-a7a15222d05a'),
(109, NULL, 'app', 'm181016_183648_set_default_user_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '9658246d-b1fc-409e-8df1-51e5053c083f'),
(110, NULL, 'app', 'm181017_225222_system_config_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'c4d6b3ac-cb6d-483e-a10f-8b57a03388a0'),
(111, NULL, 'app', 'm181018_222343_drop_userpermissions_from_config', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f9d3ee4a-4b3d-4736-823b-eb566a4bf0ee'),
(112, NULL, 'app', 'm181029_130000_add_transforms_routes_to_config', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '06ef4a41-4eaf-47db-b1a9-7cbdbc7fa332'),
(113, NULL, 'app', 'm181112_203955_sequences_table', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'a0f93681-6792-4527-a02f-9a4b3a15e2aa'),
(114, NULL, 'app', 'm181121_001712_cleanup_field_configs', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '89e6bb33-a6a0-4f8d-88b4-40eaba72accc'),
(115, NULL, 'app', 'm181128_193942_fix_project_config', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'bd47949a-607b-482c-981a-5e01b4a2f157'),
(116, NULL, 'app', 'm181130_143040_fix_schema_version', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '138a1573-9bff-453e-ab4a-9f0eba15c87a'),
(117, NULL, 'app', 'm181211_143040_fix_entry_type_uids', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '9fba6bd9-eb08-4eb3-b706-24135b0ab228'),
(118, NULL, 'app', 'm181213_102500_config_map_aliases', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'a5a57443-4121-4a28-864f-e16c023ececc'),
(119, NULL, 'app', 'm181217_153000_fix_structure_uids', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ab3b64cd-74ce-405d-9d27-52b5d0e5e56e'),
(120, NULL, 'app', 'm190104_152725_store_licensed_plugin_editions', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '905ea107-0b0b-47ed-a1e5-55440804fd54'),
(121, NULL, 'app', 'm190108_110000_cleanup_project_config', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'cb2e7800-6f72-4eea-9e68-dea983ca92f0'),
(122, NULL, 'app', 'm190108_113000_asset_field_setting_change', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'f6d77ece-ec9d-4262-a8bd-e5d0d75bb888'),
(123, NULL, 'app', 'm190109_172845_fix_colspan', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '41ab6132-5627-4597-b6e4-13a9e8db8eb9'),
(124, NULL, 'app', 'm190110_150000_prune_nonexisting_sites', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '053c6168-955a-4c4e-a5e5-6d46e4c9b4e7'),
(125, NULL, 'app', 'm190110_214819_soft_delete_volumes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '651e4818-606e-4d5a-a6fe-58581115ffde'),
(126, NULL, 'app', 'm190112_124737_fix_user_settings', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '3e571a20-b284-4579-b474-155853075265'),
(127, NULL, 'app', 'm190112_131225_fix_field_layouts', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'aae5e982-234f-4c3b-a28a-35d79bfbf7db'),
(128, NULL, 'app', 'm190112_201010_more_soft_deletes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2dc2569e-ec03-42d5-9dac-98e05dad67d0'),
(129, NULL, 'app', 'm190114_143000_more_asset_field_setting_changes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '10b0db8b-4927-476c-9986-089a75ea6393'),
(130, NULL, 'app', 'm190121_120000_rich_text_config_setting', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '94b2fea1-978b-4729-9e6a-d0bb3638bd9a'),
(131, NULL, 'app', 'm190125_191628_fix_email_transport_password', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'e1b5878d-508c-409e-9791-3770b87e7fd1'),
(132, NULL, 'app', 'm190128_181422_cleanup_volume_folders', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '0fea0cef-4c5e-46aa-826e-d2575fa70504'),
(133, NULL, 'app', 'm190205_140000_fix_asset_soft_delete_index', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'bab756ad-b1ba-408e-a34f-d27e435d8280'),
(134, NULL, 'app', 'm190208_140000_reset_project_config_mapping', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ec96ebaa-70c1-484a-bc27-346c839145b0'),
(135, NULL, 'app', 'm190218_143000_element_index_settings_uid', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '5dec69ef-499a-400c-829c-548fb6aee109'),
(136, NULL, 'app', 'm190401_223843_drop_old_indexes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', 'ea649afb-579e-4dad-9eca-8df6b8b55fdb'),
(137, NULL, 'app', 'm190416_014525_drop_unique_global_indexes', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '8c5244d7-ea57-491a-89c0-8b0f3febc482'),
(138, NULL, 'app', 'm190502_122019_store_default_user_group_uid', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-06-11 15:11:28', '6226e1d6-7f31-4d97-9016-4ac4b0f1e020'),
(139, 2, 'plugin', 'm180430_204710_remove_old_plugins', '2019-06-13 12:35:21', '2019-06-13 12:35:21', '2019-06-13 12:35:21', 'b92d6f64-1043-4f03-b425-dc7f46a0785b'),
(140, 2, 'plugin', 'Install', '2019-06-13 12:35:21', '2019-06-13 12:35:21', '2019-06-13 12:35:21', '24416cb8-9051-4ff7-b3d2-f0482938682d'),
(141, 2, 'plugin', 'm190225_003922_split_cleanup_html_settings', '2019-06-13 12:35:21', '2019-06-13 12:35:21', '2019-06-13 12:35:21', '924a4e28-ee1d-4a42-a038-fb22d6c972e8'),
(142, 3, 'plugin', 'Install', '2019-06-14 09:29:31', '2019-06-14 09:29:31', '2019-06-14 09:29:31', '63c4a2b4-3866-4238-b9bb-ed52b7205369'),
(143, 4, 'plugin', 'Install', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', 'b960954c-c7d2-4ee4-9e49-074162fd187e'),
(144, 4, 'plugin', 'm180210_000000_migrate_content_tables', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2d3f3fb9-1288-45ca-96d0-49c20ac8bf90'),
(145, 4, 'plugin', 'm180211_000000_type_columns', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '80c6a8b5-fec7-4715-80bb-34cd3cd7a6b7'),
(146, 4, 'plugin', 'm180219_000000_sites', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '83249117-a4c8-4352-8fe9-28a092c211a2'),
(147, 4, 'plugin', 'm180220_000000_fix_context', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', 'be1ab3d0-9d46-4e20-b708-44d787f83a17'),
(148, 4, 'plugin', 'm190117_000000_soft_deletes', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '5512ce50-54b5-4412-8f09-72069ab2aaeb'),
(149, 4, 'plugin', 'm190117_000001_context_to_uids', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', 'd648b011-b340-427d-8b1d-5a64394d1b5d'),
(150, 4, 'plugin', 'm190120_000000_fix_supertablecontent_tables', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '30d941b4-a933-4157-995a-7b8c657929d8'),
(151, 4, 'plugin', 'm190131_000000_fix_supertable_missing_fields', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '8f5e0e88-9908-4608-afdf-bdf8acdf59ce'),
(152, 4, 'plugin', 'm190227_100000_fix_project_config', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '40e09fbe-77f5-4161-9b07-a4086fa57e3c'),
(153, 4, 'plugin', 'm190511_100000_fix_project_config', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', 'd8f0705c-6f9a-4269-8270-16590b71f9a3'),
(154, 4, 'plugin', 'm190520_000000_fix_project_config', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '2019-06-18 13:04:49', '5b7d568b-3f89-41cc-b639-35e4c030b6cc'),
(156, 8, 'plugin', 'Install', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '51b8984f-994b-40ac-98cb-6d9562611827'),
(157, 8, 'plugin', 'm180407_040301_add_index_view_column_to_form_fields_table', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '2019-07-08 14:21:52', 'a99237e8-7853-454a-9e20-0a903902fc38'),
(158, 8, 'plugin', 'm180407_170219_add_active_column_to_form_fields', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '4faa5965-a2f1-415f-bf37-e6755929eba2'),
(159, 8, 'plugin', 'm180430_232743_add_read_column_to_message', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '4115775e-4fc2-425d-b18d-f031154a6f3d'),
(160, 8, 'plugin', 'm180602_051517_AddOrderToField', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '72da10a8-9ea3-40b5-96f0-fbf7169e164b'),
(161, 8, 'plugin', 'm180802_015031_save_entry_to_forms_table', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '95b52646-4045-40a9-a0d6-04236701244e'),
(162, 8, 'plugin', 'm180804_230709_add_options_to_form_fields', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '05dff897-b937-4865-94e9-28c26fb34c56'),
(163, 8, 'plugin', 'm180814_230614_add_options_column_forms_table', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '2019-07-08 14:21:52', '750a674e-b609-42cc-9028-649180958b7f'),
(164, NULL, 'app', 'm190312_152740_element_revisions', '2019-07-16 07:35:51', '2019-07-16 07:35:51', '2019-07-16 07:35:51', 'dac1e0ac-9fa7-4f95-ac6c-6dcd6fdc1a46'),
(165, NULL, 'app', 'm190327_235137_propagation_method', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '2019-07-16 07:35:52', 'dfdb7a18-fff0-45dd-b4c4-1c35761ed5b5'),
(166, NULL, 'app', 'm190417_085010_add_image_editor_permissions', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '4315d704-c095-4ca0-9f7d-3205df2c383c'),
(167, NULL, 'app', 'm190504_150349_preview_targets', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '2019-07-16 07:35:52', 'bf9433a3-db31-4f03-87cd-a1af8f548c00'),
(168, NULL, 'app', 'm190516_184711_job_progress_label', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '26a9813f-f127-4640-9ba7-883e09732f8f'),
(169, NULL, 'app', 'm190523_190303_optional_revision_creators', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '7958e889-9569-43dc-a370-c5bdd12c15cf'),
(170, NULL, 'app', 'm190529_204501_fix_duplicate_uids', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '66fa6c0c-fb43-42b5-bb4e-9c823f890aa5'),
(171, NULL, 'app', 'm190605_223807_unsaved_drafts', '2019-07-16 07:35:53', '2019-07-16 07:35:53', '2019-07-16 07:35:53', '52a0afee-d621-4b4d-a5b2-e610abcb88bc'),
(172, NULL, 'app', 'm190607_230042_entry_revision_error_tables', '2019-07-16 07:35:53', '2019-07-16 07:35:53', '2019-07-16 07:35:53', 'a191908e-703c-44b5-9c2e-76f37e13a98d'),
(173, NULL, 'app', 'm190608_033429_drop_elements_uid_idx', '2019-07-16 07:35:53', '2019-07-16 07:35:53', '2019-07-16 07:35:53', '39069dcc-f74c-44a0-8b59-1b5af56bd3bc'),
(174, NULL, 'app', 'm190624_234204_matrix_propagation_method', '2019-07-16 07:35:54', '2019-07-16 07:35:54', '2019-07-16 07:35:54', 'ed7decf1-059f-46e4-9c01-277fdc9d6ed1'),
(175, NULL, 'app', 'm190711_153020_drop_snapshots', '2019-07-16 07:35:54', '2019-07-16 07:35:54', '2019-07-16 07:35:54', '528bacd5-e780-4218-981d-6de293e098ba'),
(176, NULL, 'app', 'm190712_195914_no_draft_revisions', '2019-07-16 07:35:54', '2019-07-16 07:35:54', '2019-07-16 07:35:54', 'adc1b0df-9b7a-41c4-8787-4883bd1c9378'),
(177, 4, 'plugin', 'm190714_000000_propagation_method', '2019-07-16 07:36:52', '2019-07-16 07:36:52', '2019-07-16 07:36:52', '5000f778-8676-45c3-9606-129cb461e133');

-- --------------------------------------------------------

--
-- Структура таблицы `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'element-api', '2.5.4', '1.0.0', 'unknown', NULL, '2019-06-12 07:20:22', '2019-06-12 07:20:22', '2019-07-29 13:12:31', 'ac516d0c-de93-4a5c-8c79-d48954e3de36'),
(2, 'redactor', '2.3.3.2', '2.3.0', 'unknown', NULL, '2019-06-13 12:35:21', '2019-06-13 12:35:21', '2019-07-29 13:12:31', 'e7eeae70-f9d4-426a-836b-8c9582408bf2'),
(3, 'conditions', '1.0.3', '1.0.0', 'unknown', NULL, '2019-06-14 09:29:31', '2019-06-14 09:29:31', '2019-07-04 12:45:23', 'eae8e4b5-7edc-44f0-b192-de5ba5b64437'),
(4, 'super-table', '2.2.1', '2.2.0', 'unknown', NULL, '2019-06-18 13:04:48', '2019-06-18 13:04:48', '2019-07-29 13:12:31', 'e2166dac-577c-43e6-b181-e0350f7c5281'),
(5, 'typedlinkfield', '1.0.19', '1.0.0', 'unknown', NULL, '2019-06-20 13:00:34', '2019-06-20 13:00:34', '2019-07-29 06:54:54', '6d542579-c578-4765-bac2-6c4323ac0f5b'),
(8, 'wheelform', '2.2.1', '2.0.0', 'unknown', NULL, '2019-07-08 14:21:51', '2019-07-08 14:21:51', '2019-07-29 13:12:31', '673ab5ea-15ad-412e-9044-9c51723e9cff'),
(9, 'twigpack', '1.1.7', '1.0.0', 'unknown', NULL, '2019-07-16 13:53:20', '2019-07-16 13:53:20', '2019-07-29 13:12:31', '01131387-f8fd-44c6-92a8-6a2b60dfc9de');

-- --------------------------------------------------------

--
-- Структура таблицы `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(66, 31, 27, NULL, 7, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '3e8f1055-7848-48ff-9e35-c0fd200cf632'),
(67, 31, 26, NULL, 11, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '16b8dea0-3b2f-43a6-9bb7-cef477d7f16e'),
(68, 31, 86, NULL, 68, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'cd6af07f-7b86-409b-b07c-b6bde20af8be'),
(69, 31, 87, NULL, 78, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'c3dfe031-3779-41bc-843f-e346592b0a25'),
(70, 31, 28, NULL, 7, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '47b5856d-bee6-4c7d-80e2-3de75606b56b'),
(71, 31, 29, NULL, 11, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '272b0c19-6770-4992-a16d-ed76fdb94cf9'),
(72, 31, 88, NULL, 68, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '4f61ed44-7562-4058-97fa-8efdc33f7428'),
(73, 31, 89, NULL, 78, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'faeab248-27b8-444a-bf1f-eb2593060148'),
(74, 31, 30, NULL, 7, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '98e1911b-1c17-4548-871f-1586d7eb3380'),
(75, 31, 31, NULL, 11, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '8202bc07-2115-4e16-8852-8a54889a7c8f'),
(76, 31, 90, NULL, 68, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '54ec1563-b5a7-4b57-8fcb-b8b2d5fc33a6'),
(77, 31, 91, NULL, 78, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2fdad8b8-cd79-48f7-83d3-0abb91516566'),
(78, 31, 32, NULL, 7, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '8e12b709-c87e-4fb6-93e1-6177e0b6e2e5'),
(79, 31, 33, NULL, 11, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2207e56d-41c4-425e-8c9e-fca5913ce012'),
(80, 31, 92, NULL, 68, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'e08497a6-54fb-4c39-9fbe-2d7437def6ca'),
(81, 31, 93, NULL, 78, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '8b605b4c-5e1e-47c1-9faa-ff288448da98'),
(98, 31, 58, NULL, 7, 1, '2019-06-25 11:21:28', '2019-06-25 11:21:28', '507ae9db-e983-4cbb-8cdd-4378c6825dee'),
(99, 31, 59, NULL, 11, 1, '2019-06-25 11:21:28', '2019-06-25 11:21:28', '1b29de58-beb3-4c4a-8111-e752839686ff'),
(100, 31, 94, NULL, 78, 1, '2019-06-25 11:21:28', '2019-06-25 11:21:28', '76c83922-90ad-4117-be12-ed77404e4270'),
(101, 31, 95, NULL, 68, 1, '2019-06-25 11:21:28', '2019-06-25 11:21:28', 'efc6c9af-2775-41ab-b384-94f18cab2aab'),
(102, 31, 60, NULL, 7, 1, '2019-06-25 11:21:28', '2019-06-25 11:21:28', 'f17e35a7-56c8-4b99-b181-36fcdf19eced'),
(103, 31, 61, NULL, 11, 1, '2019-06-25 11:21:28', '2019-06-25 11:21:28', '7149bc0d-b729-4fca-8387-1aea09e67516'),
(104, 31, 96, NULL, 78, 1, '2019-06-25 11:21:28', '2019-06-25 11:21:28', 'ac99b87e-f39d-4baf-a3e5-4b6a6557cd1e'),
(105, 31, 97, NULL, 68, 1, '2019-06-25 11:21:28', '2019-06-25 11:21:28', 'f77c964c-5c16-407b-90c1-931641e4783b'),
(106, 31, 62, NULL, 7, 1, '2019-06-25 11:21:29', '2019-06-25 11:21:29', '2d0ab801-f6ae-4398-b9ce-2d59dde27438'),
(107, 31, 63, NULL, 11, 1, '2019-06-25 11:21:29', '2019-06-25 11:21:29', 'c343913f-024c-497f-928e-49e185725a23'),
(108, 31, 98, NULL, 78, 1, '2019-06-25 11:21:29', '2019-06-25 11:21:29', '9e516dd9-2e75-4c97-930a-af5860e0a114'),
(109, 31, 99, NULL, 68, 1, '2019-06-25 11:21:29', '2019-06-25 11:21:29', '7fb42ade-d453-4c96-9c8f-ae61da25202b'),
(110, 31, 64, NULL, 7, 1, '2019-06-25 11:21:29', '2019-06-25 11:21:29', '2d78698e-c9ed-4269-b8ed-42ff86c291e8'),
(111, 31, 65, NULL, 11, 1, '2019-06-25 11:21:29', '2019-06-25 11:21:29', 'bfcda51c-926b-43d5-bec0-c7d58681e430'),
(112, 31, 100, NULL, 78, 1, '2019-06-25 11:21:29', '2019-06-25 11:21:29', 'df229834-45da-4e82-b5c7-56bc455f7f93'),
(113, 31, 101, NULL, 68, 1, '2019-06-25 11:21:29', '2019-06-25 11:21:29', '1e4105b5-7005-4ebb-a84e-d1c437637b50'),
(242, 36, 79, NULL, 76, 1, '2019-07-04 14:25:46', '2019-07-04 14:25:46', 'eb9f7d9b-2f8d-4754-8173-b3ccd269f427'),
(243, 43, 79, NULL, 77, 1, '2019-07-04 14:25:46', '2019-07-04 14:25:46', 'd33b092b-190f-40c3-8031-0bbc09b09da1'),
(244, 45, 81, NULL, 34, 1, '2019-07-04 14:25:47', '2019-07-04 14:25:47', 'ade20888-fd2a-4f5b-a069-ae3c7f909f63'),
(245, 47, 81, NULL, 118, 1, '2019-07-04 14:25:47', '2019-07-04 14:25:47', '2f09c2a5-7bc9-409b-a50a-0fc3c4f66e10'),
(246, 45, 82, NULL, 35, 1, '2019-07-04 14:25:47', '2019-07-04 14:25:47', '90ac8703-8a1e-489b-9798-b414c8bcf73c'),
(247, 48, 82, NULL, 119, 1, '2019-07-04 14:25:47', '2019-07-04 14:25:47', 'a7a5c8ce-ddad-46d9-a7fe-1904bcfd6184'),
(248, 45, 83, NULL, 36, 1, '2019-07-04 14:25:47', '2019-07-04 14:25:47', 'ddf76a75-8116-469a-850b-268c8e80ca82'),
(249, 47, 83, NULL, 118, 1, '2019-07-04 14:25:47', '2019-07-04 14:25:47', '664e66d1-4987-4eb9-a859-41c7398b675b'),
(250, 45, 84, NULL, 37, 1, '2019-07-04 14:25:47', '2019-07-04 14:25:47', 'b06babbb-3e33-4f66-bf10-695c74b38d07'),
(251, 45, 85, NULL, 42, 1, '2019-07-04 14:25:47', '2019-07-04 14:25:47', 'bd92dbc4-333e-41e8-b135-287d1a7454de'),
(259, 103, 2, NULL, 123, 1, '2019-07-10 15:00:43', '2019-07-10 15:00:43', '1ade0103-575f-4df8-9b95-44dfffd5fb71'),
(268, 36, 43, NULL, 125, 1, '2019-07-15 13:03:25', '2019-07-15 13:03:25', '73dfad87-51ee-482a-acd1-4009755386ab'),
(269, 43, 43, NULL, 40, 1, '2019-07-15 13:03:25', '2019-07-15 13:03:25', 'c9931a33-2d1d-4ea5-bff2-92d7956e9a77'),
(270, 45, 45, NULL, 37, 1, '2019-07-15 13:03:25', '2019-07-15 13:03:25', 'b1a4f32a-21b8-46a9-9a47-f7bd71f9adea'),
(271, 47, 45, NULL, 118, 1, '2019-07-15 13:03:25', '2019-07-15 13:03:25', '1e644678-d3b9-43b2-b491-07582805bf24'),
(272, 45, 46, NULL, 34, 1, '2019-07-15 13:03:25', '2019-07-15 13:03:25', '35ebf14a-6ed3-4691-9f64-cc8251726582'),
(273, 45, 47, NULL, 35, 1, '2019-07-15 13:03:25', '2019-07-15 13:03:25', '6497faca-eb75-4015-bda0-16c75a51a466'),
(274, 45, 48, NULL, 36, 1, '2019-07-15 13:03:25', '2019-07-15 13:03:25', '07ed7579-ec79-46ce-98aa-eae3816252a1'),
(275, 45, 49, NULL, 42, 1, '2019-07-15 13:03:25', '2019-07-15 13:03:25', '3ea97052-cfaa-4d4f-9230-e73cac92fdf9'),
(276, 36, 51, NULL, 126, 1, '2019-07-15 13:10:54', '2019-07-15 13:10:54', '12d21fec-b669-4d4e-936f-1b8b16dc858f'),
(277, 43, 51, NULL, 41, 1, '2019-07-15 13:10:54', '2019-07-15 13:10:54', 'ba638437-7ec7-4a58-aa20-b3a8ba8ea7ae'),
(278, 45, 53, NULL, 34, 1, '2019-07-15 13:10:54', '2019-07-15 13:10:54', '11e04080-0cd4-4cf0-8a8e-eb4ba82deb6f'),
(279, 45, 54, NULL, 35, 1, '2019-07-15 13:10:55', '2019-07-15 13:10:55', 'dfe823e3-31f6-4b82-af1d-fab51271e322'),
(280, 45, 55, NULL, 36, 1, '2019-07-15 13:10:55', '2019-07-15 13:10:55', '87f6355c-5ea9-4db8-a3c9-ef185d54123e'),
(281, 45, 56, NULL, 37, 1, '2019-07-15 13:10:55', '2019-07-15 13:10:55', '1c5193ca-a96b-48d3-a9e5-a39d1f242642'),
(282, 45, 57, NULL, 42, 1, '2019-07-15 13:10:55', '2019-07-15 13:10:55', 'dbf52352-d7c8-4f63-bdb1-ecae077d55e1'),
(283, 36, 69, NULL, 127, 1, '2019-07-15 13:11:21', '2019-07-15 13:11:21', 'c22f0841-2fb6-4ba3-aae2-cdc2bbe25804'),
(284, 43, 69, NULL, 67, 1, '2019-07-15 13:11:21', '2019-07-15 13:11:21', '13a8272f-ee63-4964-b715-5a16c9f6fa37'),
(285, 45, 71, NULL, 34, 1, '2019-07-15 13:11:22', '2019-07-15 13:11:22', '964c4356-55cb-4e6b-b626-1e5ecd2b52fd'),
(286, 45, 72, NULL, 34, 1, '2019-07-15 13:11:22', '2019-07-15 13:11:22', '1a294354-2f2b-4531-a9d5-cfd68a33c3fb'),
(287, 45, 73, NULL, 36, 1, '2019-07-15 13:11:22', '2019-07-15 13:11:22', '74a50fe9-38f0-4bb9-982f-045d7be87c64'),
(288, 45, 74, NULL, 37, 1, '2019-07-15 13:11:22', '2019-07-15 13:11:22', 'f5eb88c3-60bf-4ec4-a810-d9675eeedbe8'),
(289, 45, 75, NULL, 42, 1, '2019-07-15 13:11:22', '2019-07-15 13:11:22', '84e56a31-7e21-481b-9293-7924605d37d3'),
(297, 36, 129, NULL, 127, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '42e075da-1cfc-4cdd-bfc7-19f6d9389e7b'),
(298, 43, 129, NULL, 67, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '53a6bfa7-ed10-4842-9838-b93f4459fb87'),
(299, 45, 131, NULL, 34, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '2a91eb05-3efe-4eb9-8751-30046af79970'),
(300, 45, 132, NULL, 34, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'ed5cb15e-d88e-4d79-8095-203022e36b8a'),
(301, 45, 133, NULL, 36, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '61648f1c-c1f0-4d02-8372-01bb0be55ae9'),
(302, 45, 134, NULL, 37, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '8752c250-e0ae-4132-9637-7e62f8cde5b4'),
(303, 45, 135, NULL, 42, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '2da35583-06bc-4ce4-82e9-74493a9f82f9'),
(311, 36, 137, NULL, 126, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '9265d807-e99f-4769-ae3b-067146863aa8'),
(312, 43, 137, NULL, 41, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'a893d957-d261-4be5-97b5-bb872ade436d'),
(313, 45, 139, NULL, 34, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '7a14d211-41fc-4fc2-8cb7-5aaafe3e1f1a'),
(314, 45, 140, NULL, 35, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '9ef06fa1-9b84-47c6-8ddc-836dd435d3c6'),
(315, 45, 141, NULL, 36, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '8e8f2f73-8e3c-48ee-a1cd-3107eef3d221'),
(316, 45, 142, NULL, 37, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '4ab3cd21-720c-4b0c-9c60-7fa024f2e76d'),
(317, 45, 143, NULL, 42, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '2d4af2a2-ec29-4ebc-878e-ed50cc2e957c'),
(326, 36, 145, NULL, 125, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'fb5462e2-9c7a-4c29-8f56-eaa90401c92f'),
(327, 43, 145, NULL, 40, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '1d5cd5de-6dc8-4bb9-95e0-a23840e4c8f2'),
(328, 45, 147, NULL, 37, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'e3a53f34-2d9d-4f7e-b790-e21f67e82dad'),
(329, 47, 147, NULL, 118, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'f267d338-dbef-45bb-9053-eb09a85a876f'),
(330, 45, 148, NULL, 34, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'aa2129af-5b86-42ad-9398-0ddbcf888e22'),
(331, 45, 149, NULL, 35, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'ba9da826-dc37-4d67-8f5e-439354679d9b'),
(332, 45, 150, NULL, 36, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '34f8ad19-129b-451d-bf25-584ef9f28ac8'),
(333, 45, 151, NULL, 42, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'ab23f096-9421-4b59-8eae-11d8f7f0e784'),
(342, 36, 153, NULL, 124, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '4f892df8-ab12-4eeb-af6b-2679b8d5992f'),
(343, 43, 153, NULL, 40, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '17d0e9d8-63c3-44db-ac55-f85ef5590183'),
(344, 45, 155, NULL, 37, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '7ea08a72-18d1-4f6c-96c2-c282430ed91a'),
(345, 47, 155, NULL, 118, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'ed4afeb6-445e-474a-ae04-08687092f7d1'),
(346, 45, 156, NULL, 34, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '8434b491-3d4a-43ba-91d0-0faf166db3a6'),
(347, 45, 157, NULL, 35, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'e896ac05-6a38-48ed-aa8c-02ce91f06115'),
(348, 45, 158, NULL, 36, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '5a00bcfc-9e3c-4d93-8562-a138f2b0f54c'),
(349, 45, 159, NULL, 42, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'e12952bf-a901-48c8-9968-36142eac5336'),
(351, 103, 160, NULL, 123, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'e9cb184a-53d2-4bd8-8ce4-90d04b8661d1'),
(353, 103, 161, NULL, 123, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '6962c8eb-4d5d-45ca-afb1-e962909a1f57'),
(355, 103, 162, NULL, 123, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '0c9ca363-9f2d-472e-9bde-8f0bf7f67ff4'),
(357, 103, 163, NULL, 123, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '3f970803-faef-4057-bde4-7c1ec9cf2679'),
(359, 103, 164, NULL, 122, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'dd5a9cb0-a7e9-432e-a02c-5789becc507d'),
(361, 103, 165, NULL, 121, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'db37e2a2-1fad-4928-bb91-528610378436'),
(363, 103, 166, NULL, 120, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '3fc67f56-272b-4854-a1e3-8d9b9442a861'),
(365, 103, 167, NULL, 123, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '8e675379-aa8b-4606-b0f2-794d18255786'),
(376, 36, 169, NULL, 76, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '543db9fd-34d7-43ff-9b34-0531841c1c81'),
(377, 43, 169, NULL, 77, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'e415a954-8bd3-4ec6-b354-572d3d093de2'),
(378, 45, 171, NULL, 34, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'a153ab0a-f3be-4838-9331-933a5e64779a'),
(379, 47, 171, NULL, 118, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7450d065-50f7-4ca6-98d0-23d58c9e7eb7'),
(380, 45, 172, NULL, 35, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '0d45b05d-53bc-4dc2-83b8-fb1c8fb1497f'),
(381, 48, 172, NULL, 119, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '20e873c5-044c-4800-9168-e9b990e737a1'),
(382, 45, 173, NULL, 36, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '103922e1-aa58-40a0-b170-736278888929'),
(383, 47, 173, NULL, 118, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '59d54e65-33de-41d3-b33c-ed7f107c1549'),
(384, 45, 174, NULL, 37, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '688eaecd-68ab-408b-be05-23201ed0b0d5'),
(385, 45, 175, NULL, 42, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'e838765a-7641-4011-ac65-86707f36e6cc'),
(396, 36, 177, NULL, 76, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '65a4bf84-3a01-47e1-b214-078c92d43d6d'),
(397, 43, 177, NULL, 77, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7d5791ba-9b5c-43de-9ead-bb95857ff99c'),
(398, 45, 179, NULL, 34, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '662d8510-a6e3-4851-a98c-b40927cceec4'),
(399, 47, 179, NULL, 118, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '78ec1236-d1cb-4831-bb66-47567d7030ae'),
(400, 48, 179, NULL, 119, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '499582b3-c361-405d-8876-ee527d8abcbf'),
(401, 45, 180, NULL, 35, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '59028721-651e-44cd-9678-eb905784740f'),
(402, 45, 181, NULL, 36, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '0e661e54-13d2-43e4-b730-9d939c83bd45'),
(403, 45, 182, NULL, 37, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '9d6a44ca-23a7-4016-8398-96380d8edf27'),
(404, 45, 183, NULL, 42, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'b298e27e-a1d3-4e2e-83ff-051bd90e7edc'),
(415, 36, 185, NULL, 76, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'ae006654-c565-4edd-a2b0-507fbeeaa4cf'),
(416, 43, 185, NULL, 77, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '22978c73-d62c-4b68-963f-68a7d5a6a37a'),
(417, 45, 187, NULL, 34, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '8a08ce3c-41cd-4b10-b2f9-b114b6058357'),
(418, 48, 187, NULL, 119, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'a3696630-a449-47e3-8f50-a340b89a0a6f'),
(419, 45, 188, NULL, 35, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'cf34e4a0-99f8-4c2f-af52-0eda6238ee08'),
(420, 45, 189, NULL, 36, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '4a7f84da-e20b-41a6-ae42-710f24cf04d5'),
(421, 45, 190, NULL, 37, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '4cde6929-487a-46a6-b186-1404853eb6dc'),
(422, 45, 191, NULL, 42, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'c60dfadc-6c1f-45c0-82d3-9b52e45a9553'),
(431, 36, 193, NULL, 39, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'a7a11426-06b8-4119-8466-520612c1f12b'),
(432, 43, 193, NULL, 40, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'f8fff5f5-8b8c-4e2f-8e99-5d2b8a34f906'),
(433, 45, 195, NULL, 37, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '54a25c9f-3a8e-4e8e-8b32-5797ef1324c3'),
(434, 47, 195, NULL, 118, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'efd3351f-c586-4274-ad31-7fd6540f82b8'),
(435, 45, 196, NULL, 34, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '6b5c9ad1-ab5e-4adf-b924-3dd3e6e61159'),
(436, 45, 197, NULL, 35, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '797dcbf4-7c3a-4133-85e2-d24416feb98c'),
(437, 45, 198, NULL, 36, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '827571e3-30aa-4b8c-b45e-3019d6506973'),
(438, 45, 199, NULL, 42, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '9fa5eb65-982e-473b-9922-f947b0a5d7dd'),
(447, 36, 201, NULL, 39, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '4c0dbd47-312c-41de-a570-b2ead7686905'),
(448, 43, 201, NULL, 40, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '6c164d68-2911-4fc9-8c66-deca85ec4807'),
(449, 45, 203, NULL, 37, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '9fc42b4b-b7b7-458f-b8ea-8ad88fe6a4cb'),
(450, 45, 204, NULL, 34, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '9ae705b8-8446-4f19-8a8f-b6aa6749c826'),
(451, 45, 205, NULL, 35, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '7cedf6a8-4b1e-4119-9a75-d94eade3434f'),
(452, 45, 206, NULL, 36, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'b18c3968-fc95-465e-919f-8646e2d67394'),
(453, 45, 207, NULL, 42, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'c1fa3d83-b384-41c9-8f41-6b241b049897'),
(462, 36, 209, NULL, 39, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '4b9d3b56-3e1f-44b7-9e3c-3fefa5c43f92'),
(463, 43, 209, NULL, 40, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '37785ff7-f08e-46dc-8648-1cb857c82996'),
(464, 45, 211, NULL, 37, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '546a9370-f90d-4083-bfca-3881ae6231b6'),
(465, 47, 211, NULL, 118, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '66b208f9-28ff-42c7-83b3-4967ef3a82c5'),
(466, 45, 212, NULL, 34, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'ea0e6342-33b6-4478-acde-a62eb38ef012'),
(467, 45, 213, NULL, 35, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'feab8f91-fbaf-4b73-8204-b19af89c12d1'),
(468, 45, 214, NULL, 36, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'd9aa413b-7c0c-49bd-8d38-58025f91b41f'),
(469, 45, 215, NULL, 42, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '5cc1f7e9-648b-4f32-851f-9658886be8fb'),
(480, 36, 217, NULL, 76, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '3f4f6d7f-df3f-4933-b22f-8904220fe948'),
(481, 43, 217, NULL, 77, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'e375e455-3869-489c-a5b8-69d02de40a93'),
(482, 45, 219, NULL, 34, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'fdaa01e0-fa33-4613-ac5f-1d701960f843'),
(483, 47, 219, NULL, 118, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '1c55f2c6-9e00-4c7f-aa50-5d1626337f9d'),
(484, 45, 220, NULL, 35, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '1ac11ea9-ce11-456f-bd8a-e755e9e348d4'),
(485, 48, 220, NULL, 119, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '53bbea21-c2b2-4402-b779-d8782fec90f0'),
(486, 45, 221, NULL, 36, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '630cdf1d-b1e6-48bf-95dc-037b4c96bea2'),
(487, 47, 221, NULL, 118, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '09acb9ee-a985-4bf2-a5cb-3c5ba75a1039'),
(488, 45, 222, NULL, 37, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '4e302d0e-35ad-4a66-aa28-db75fea55df1'),
(489, 45, 223, NULL, 42, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '965045d8-c48c-4463-8593-558295b177c6'),
(498, 36, 225, NULL, 39, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'db86844e-6151-4cd1-af83-384bb7138b2d'),
(499, 43, 225, NULL, 40, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'a8e437a5-c05c-4b90-ad27-aacedfc46dff'),
(500, 45, 227, NULL, 37, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '4af4846d-a76d-4883-a458-322cb3236343'),
(501, 47, 227, NULL, 118, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '9eac6fc5-9657-4214-8cbd-9473e318331b'),
(502, 45, 228, NULL, 34, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '5ea3117e-bc02-4eff-a799-75f3e880d944'),
(503, 45, 229, NULL, 35, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'c149918b-9160-43bb-adcb-853cfcd4397d'),
(504, 45, 230, NULL, 36, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '974c6bfe-aeb3-4baa-a80d-39259ab51927'),
(505, 45, 231, NULL, 42, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'a1a0f34a-9bb0-4931-82f3-5b727eee267a'),
(514, 36, 233, NULL, 39, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '9e0d256e-6305-417d-94b9-07aa09a04d36'),
(515, 43, 233, NULL, 40, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '10132fea-c71b-402e-a888-6bce68d3b3d5'),
(516, 45, 235, NULL, 37, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '62f222ba-de60-43b5-8145-4dce63af8847'),
(517, 47, 235, NULL, 118, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'ae145249-1a0d-4bc0-88f7-331b6e03c29b'),
(518, 45, 236, NULL, 34, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '95c67249-43e2-4425-a309-517f6e2e8f12'),
(519, 45, 237, NULL, 35, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '655366e6-da56-4656-a84c-d70c9ce2ef65'),
(520, 45, 238, NULL, 36, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '50b8fb95-404d-49ac-b940-f6eea383d0a1'),
(521, 45, 239, NULL, 42, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '20110f11-a493-46e6-b9fc-1e6e04181744'),
(529, 36, 241, NULL, 50, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'fb3f163c-87b4-432b-8167-224630df0b7d'),
(530, 43, 241, NULL, 41, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '82f6c00a-b7e9-426e-9225-1d61f4c49723'),
(531, 45, 243, NULL, 34, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'f5476771-d381-4455-8cdb-82020feb7523'),
(532, 45, 244, NULL, 35, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '034daaf0-e40e-4fcf-a035-b30ab58a6a96'),
(533, 45, 245, NULL, 36, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'a3c9ccd7-a662-486f-8f3f-bcd300088aba'),
(534, 45, 246, NULL, 37, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'f3c469d1-6f97-4ffb-8868-ae88ebc90b3b'),
(535, 45, 247, NULL, 42, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '7b7fd9f1-4cf8-441d-a901-b16d4292cbce'),
(543, 36, 249, NULL, 66, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '2e96b79d-5741-4852-b7ea-16c6761cd388'),
(544, 43, 249, NULL, 67, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '3d166bc6-9903-49ba-ae3a-0d2e5749cd53'),
(545, 45, 251, NULL, 34, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'd161dd6d-e85c-497d-8289-1beace4fd5fa'),
(546, 45, 252, NULL, 34, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '55e1c4f0-3c21-4655-8b31-4e6b8b758268'),
(547, 45, 253, NULL, 36, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '09e0d717-ae68-4096-97eb-92c9c6df218e'),
(548, 45, 254, NULL, 37, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '599c13e9-1eee-4466-8c5b-9a7d73701921'),
(549, 45, 255, NULL, 42, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '90865172-e8d5-4de5-b50e-2f50845d4a2d'),
(560, 36, 257, NULL, 76, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'ce679539-23d9-4679-9aa6-8b16ce93af89'),
(561, 43, 257, NULL, 77, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'eccd69e1-98d9-49f8-bb29-df5b9b57738c'),
(562, 45, 259, NULL, 34, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '30917836-478e-49a9-af6d-4ed74ceded0f'),
(563, 47, 259, NULL, 118, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'c5e3cc40-dc82-468c-a0cc-491923dab157'),
(564, 45, 260, NULL, 35, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '82007e66-2057-4f4f-9248-280bc0b18bdf'),
(565, 48, 260, NULL, 119, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '3c95a9fa-4748-4919-a6e5-4db9680ae6e8'),
(566, 45, 261, NULL, 36, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '9e4ca041-a1ae-4167-b526-5d0b3c687d34'),
(567, 47, 261, NULL, 118, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'd7c627a8-2fe1-4653-9b69-c1e0d5c8b751'),
(568, 45, 262, NULL, 37, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'd2592589-4b16-4f31-be3f-2a3e2a14abbc'),
(569, 45, 263, NULL, 42, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '9768d1a6-03d3-4f81-84d1-5bc7089a628a'),
(578, 36, 265, NULL, 39, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'b4bdb485-ce6c-406d-94ce-35b577dbe6cf'),
(579, 43, 265, NULL, 40, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '4dff5f2f-f051-43ae-a364-0b73e308acff'),
(580, 45, 267, NULL, 37, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '2c4bbfea-dea7-4209-88d8-2602aaa9432e'),
(581, 47, 267, NULL, 118, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'df1382b7-705c-4915-9184-b868b82e7d84'),
(582, 45, 268, NULL, 34, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '999ceba7-bc7c-4dd0-9557-e93e2478946a'),
(583, 45, 269, NULL, 35, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '5c4d81f4-2b6f-40d6-a013-ea5e6649a1be'),
(584, 45, 270, NULL, 36, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '7bea3074-6ea4-4a52-b9db-b11e77ad0d37'),
(585, 45, 271, NULL, 42, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'af722a3f-1585-4515-a1ca-4259084026e0'),
(674, 31, 284, NULL, 7, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ab76066c-bd02-49de-a871-d1995dc5133c'),
(675, 31, 285, NULL, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '418e9b7a-9522-4f9d-8b2f-6c5e026c3370'),
(676, 31, 286, NULL, 78, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'a6230a26-e1f3-452c-a581-37a1a593df4d'),
(677, 31, 287, NULL, 68, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '0966f72c-c510-4fef-bee4-117a1541669a'),
(678, 31, 289, NULL, 7, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '3c875045-9f1e-46c6-b831-2409970ad4a2'),
(679, 31, 290, NULL, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '2e34a10a-8be5-47cd-af4f-d2e0c7a642b7'),
(680, 31, 291, NULL, 78, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ed17aadc-cc2d-4c06-bbea-4fabc1659deb'),
(681, 31, 292, NULL, 68, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '8818c95e-d700-4cd7-bb03-c85c7dc530b9'),
(682, 31, 294, NULL, 7, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ad1cbb3f-3219-4129-8694-aeae40793e1b'),
(683, 31, 295, NULL, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'e4b4248c-44b4-43d6-848e-7683c951ff7f'),
(684, 31, 296, NULL, 78, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'db348bdd-5f23-486f-8ffa-3e92e0368d0e'),
(685, 31, 297, NULL, 68, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '264f83f0-ca68-4a20-98c9-e0f55b9564a0'),
(686, 31, 299, NULL, 7, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '7f16169d-8213-46b4-a448-966b204a08ff'),
(687, 31, 300, NULL, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '16636f99-7b8a-458e-9690-ccbcd68626c1'),
(688, 31, 301, NULL, 78, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'aa5a1d96-19c6-4c59-aadb-f9f340e22cc2'),
(689, 31, 302, NULL, 68, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '42d7e255-33c1-456d-93b4-fa3f406428e1'),
(706, 31, 305, NULL, 7, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'c68c6be9-4f5a-4ff6-93b9-388740e8dcaf'),
(707, 31, 306, NULL, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '526b5964-f3dd-42bd-9739-18a3a98929c5'),
(708, 31, 307, NULL, 78, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'eb040fbb-ad48-43df-b482-de2448c9a04d'),
(709, 31, 308, NULL, 68, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'e44a46c0-defc-4aac-9503-3ff3e56a514d'),
(710, 31, 310, NULL, 7, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '949994e6-3ab6-44bd-b174-1f5bfdc9293d'),
(711, 31, 311, NULL, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'cb54c08a-10a6-4825-913d-8435659472f2'),
(712, 31, 312, NULL, 78, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '8042d3d2-11d5-4000-bd08-37eee100e0f1'),
(713, 31, 313, NULL, 68, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '1f28c2e5-ce78-4863-b9da-9b8ca5281fe4'),
(714, 31, 315, NULL, 7, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '8792b419-c93e-4038-9659-ab2ad68c6169'),
(715, 31, 316, NULL, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'f21491e8-7550-452b-a7de-8685460aada8'),
(716, 31, 317, NULL, 78, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'e6d05935-4654-482a-b06f-4fefa15e9f8f'),
(717, 31, 318, NULL, 68, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '87494094-e668-4103-a019-0ebb00fbcc10'),
(718, 31, 320, NULL, 7, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '2599aba9-9671-4743-b532-1b71aab8b552'),
(719, 31, 321, NULL, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'd00ec0a7-b7d2-4a21-83ce-5425e8b10d19'),
(720, 31, 322, NULL, 78, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'aec3003f-9cdf-4f43-905f-c0e457d7f6ed'),
(721, 31, 323, NULL, 68, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '142bb814-831b-49f9-ba95-1c34b94a68bb'),
(738, 31, 326, NULL, 7, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '6b140192-e18b-4a80-b722-0dbb53ea0a9f'),
(739, 31, 327, NULL, 11, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd894c896-4589-46d9-8ceb-b8e06fc76610'),
(740, 31, 328, NULL, 68, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '82c9c3f3-e00d-4f06-9ad2-c22a91cebd0d'),
(741, 31, 329, NULL, 78, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '1aa912ae-360c-46dc-8c0e-5b2236c6fa3c'),
(742, 31, 331, NULL, 7, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'f33b6c9e-1c70-4308-8489-579d3b9c2790'),
(743, 31, 332, NULL, 11, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '7b3d2920-1058-497b-bb98-e07353e774b8'),
(744, 31, 333, NULL, 68, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '6364ff50-f2ce-4f7b-8d3f-57ce6f2e6e90'),
(745, 31, 334, NULL, 78, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd0fa5ccb-b050-49c1-a704-4bc771313d3a'),
(746, 31, 336, NULL, 7, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'ab87b550-c398-4abd-8352-7b44e6e3d843'),
(747, 31, 337, NULL, 11, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'ab5609b2-1cbb-4088-9353-a6f013f46179'),
(748, 31, 338, NULL, 68, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '9dd925e4-2d5a-4079-98fb-297fbf10eb05'),
(749, 31, 339, NULL, 78, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '7aceee8e-74fa-4a26-b0ce-957a2d7ff2fc'),
(750, 31, 341, NULL, 7, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '30eb1f5c-ab7e-4e56-a8a4-adc61ba48251'),
(751, 31, 342, NULL, 11, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'fb8de941-98fd-4280-9e90-1ebafd177f1a'),
(752, 31, 343, NULL, 68, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '9a0f87e6-591a-4905-a108-e61964c485be'),
(753, 31, 344, NULL, 78, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'f29f4366-d638-4298-8875-f5000d9b7039'),
(764, 36, 346, NULL, 76, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '965afa65-7d4f-443e-a0b2-b7f64d8a6504'),
(765, 43, 346, NULL, 77, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'a214703b-6813-4f86-a378-a7d4d1deab34'),
(766, 45, 348, NULL, 34, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '0d4bfc23-7440-4cff-bbe0-c048c403d6bb'),
(767, 47, 348, NULL, 118, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '940ca470-1840-4bc8-877a-75a2989f0630'),
(768, 45, 349, NULL, 35, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '82a8fee2-fe72-4434-990e-83af70dbe82a'),
(769, 48, 349, NULL, 119, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'e04450b2-8db8-4abc-8f84-4dc2b7ae7f91'),
(770, 45, 350, NULL, 36, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd8d3f792-8f27-463f-b203-2e8cb39a482b'),
(771, 47, 350, NULL, 118, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '0d9c1bc6-34c4-4e79-9793-c26ec5cb597f'),
(772, 45, 351, NULL, 37, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '204e4583-a9b8-4c7d-be88-c5d471e0c1b4'),
(773, 45, 352, NULL, 42, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'b298fe0e-7bd0-46d1-8805-f03ea4cfabe3'),
(781, 36, 354, NULL, 66, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '18cbe05b-f268-465d-a36f-d6fb2a6994e1'),
(782, 43, 354, NULL, 67, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '5c65aa46-dc85-482a-8fa3-69825df38107'),
(783, 45, 356, NULL, 34, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'dd129f8e-ca33-4cfd-8532-dc9e8cdc7c3a'),
(784, 45, 357, NULL, 34, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'a45a2c56-0be6-4009-8fd6-3888be88cc13'),
(785, 45, 358, NULL, 36, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c2d33c05-7559-4f3b-ba1f-75eae31cc738'),
(786, 45, 359, NULL, 37, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '34b10ca2-165e-46fb-8077-2a4ba65d2e04'),
(787, 45, 360, NULL, 42, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'ba2ae435-76d6-4f1b-98b5-46a723a72a71'),
(789, 103, 361, NULL, 123, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '7c0df12a-32bb-4ea1-819a-4d971a15fa29'),
(806, 31, 364, NULL, 7, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '6a38b577-8694-45c4-af60-7cbd9d0e2782'),
(807, 31, 365, NULL, 11, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'ad46a44a-bdf1-4a6e-81e5-bf06a900779e'),
(808, 31, 366, NULL, 78, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '9a656a07-a8f2-4b70-82dc-1c178e39ac1b'),
(809, 31, 367, NULL, 68, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '0b544a7f-3a49-4559-be0e-4d79546bcdbd'),
(810, 31, 369, NULL, 7, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'e65c8c76-dc2a-4c3a-9277-1cd1b09e2929'),
(811, 31, 370, NULL, 11, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'a2e8e0d2-8c13-4238-9628-18605afe9690'),
(812, 31, 371, NULL, 78, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '4ed07bd5-e20f-42ed-ba4c-8164ff466e09'),
(813, 31, 372, NULL, 68, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '76a4865a-5c99-4806-a618-b05fd40f9af3'),
(814, 31, 374, NULL, 7, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'e3947d3f-70d1-46d6-a397-f0efde5dd27c'),
(815, 31, 375, NULL, 11, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '3950e3bc-2211-4116-9bce-e2697d787698'),
(816, 31, 376, NULL, 78, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '0939c398-3a90-4c3d-8665-366968aaabc6'),
(817, 31, 377, NULL, 68, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c0b3633c-1008-44fb-869a-d5ece28b2acd'),
(818, 31, 379, NULL, 7, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '6d24abf2-0da6-4da7-9377-91e234b4ac35'),
(819, 31, 380, NULL, 11, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '95184367-d176-4d3a-9a69-f0a94b1661b9'),
(820, 31, 381, NULL, 78, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '0ddcfefe-413a-4fee-89c0-de0064c5c552'),
(821, 31, 382, NULL, 68, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '430140fc-b826-466a-b747-9f2f3333a5df'),
(830, 36, 384, NULL, 39, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '55f5e0d4-70e4-43c3-9bb8-89e3da05d7bf'),
(831, 43, 384, NULL, 40, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '900351eb-8589-4cb3-af1e-8fd1f858617f'),
(832, 45, 386, NULL, 37, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '47e92681-b752-426b-ab7c-e140e963feda'),
(833, 47, 386, NULL, 118, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '3ff95a4f-9ab3-41d7-be98-8ad73c20826d'),
(834, 45, 387, NULL, 34, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '2211124c-3f1f-46be-97f9-1a5602e304dd'),
(835, 45, 388, NULL, 35, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '4e2ccf6f-b985-4b48-88cd-5a155d637009'),
(836, 45, 389, NULL, 36, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '0a7e31bf-9112-42cb-ad85-914e3730db2d'),
(837, 45, 390, NULL, 42, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'd77199b2-ffd9-4ba9-bcc0-178d550d4c8e'),
(845, 36, 392, NULL, 50, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'b89fe6b3-da86-4466-9ed5-c42715d8dd66'),
(846, 43, 392, NULL, 41, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '75699839-c114-40c6-b961-f799986d00f8'),
(847, 45, 394, NULL, 34, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'c518d685-4ee9-4112-9153-0b3505943108'),
(848, 45, 395, NULL, 35, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'b82a707c-5466-4885-8b98-9e6a706f1b33'),
(849, 45, 396, NULL, 36, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '0302047b-b490-4fb7-9c6a-d365d4a15157'),
(850, 45, 397, NULL, 37, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '586a404f-f452-45f6-aca4-5e4556ce191f'),
(851, 45, 398, NULL, 42, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'b43410d8-a7cb-459b-99b4-1aad46f02a86'),
(860, 36, 400, NULL, 39, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '6181f390-5dde-48ab-b6ef-6c0bc6bce2d5'),
(861, 43, 400, NULL, 40, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'd3b32308-0df9-4fb2-843a-81e6d6d7110b'),
(862, 45, 402, NULL, 37, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'd003812b-584a-4a52-9bc0-c437fee59178'),
(863, 47, 402, NULL, 118, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'd4ed27a2-c2ff-475d-b3b9-c16cd8a76fff'),
(864, 45, 403, NULL, 34, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '44fa41c8-b39a-4fda-a334-5d2da967a329'),
(865, 45, 404, NULL, 35, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '91963db8-a574-4589-80dc-bc0e7d8b5e74'),
(866, 45, 405, NULL, 36, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '7a9db141-25f5-4c39-9756-1f6ee3fcd86b'),
(867, 45, 406, NULL, 42, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'ec77a4ff-7651-4ebf-ba79-8ccfaa4934d9'),
(884, 31, 414, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'd0348542-2d5b-4221-9dc3-589a99446460'),
(885, 31, 415, NULL, 11, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '799a5577-1af2-4a51-907d-62dbed7342b1'),
(886, 31, 416, NULL, 68, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '78587df3-16c9-4aba-b36e-c1e743ad72d5'),
(887, 31, 417, NULL, 78, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '63308436-c81b-404b-8234-cb8a70a2197a'),
(888, 31, 419, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'd173034b-c3cf-4cc3-9fd5-bbe4e674b7f9'),
(889, 31, 420, NULL, 11, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '89f173a6-e011-4521-b0db-25fcc2cb5137'),
(890, 31, 421, NULL, 68, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ec5f5bc7-8ec7-4cd3-b07b-15d573087c70'),
(891, 31, 422, NULL, 78, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '1a60dffa-08b9-4ac8-ae25-b484741d44bf'),
(892, 31, 424, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'cc2069c2-f848-4cd5-92e8-2e247edab7f2'),
(893, 31, 425, NULL, 11, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '20cc6014-72de-4944-bf36-865cf1572cdc'),
(894, 31, 426, NULL, 68, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'c2f71cbf-4f03-47c7-a202-a69c5e614e8f'),
(895, 31, 427, NULL, 78, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ec2efddd-cbd0-441f-9103-70d03aef39f9'),
(896, 31, 429, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '2c3f855a-d0fc-4f6b-9063-768dae2ff10c'),
(897, 31, 430, NULL, 11, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '84f2c378-0503-4816-b35f-00e6842d8fea'),
(898, 31, 431, NULL, 68, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '1e164d24-0efe-4ef6-86ce-aed37d8142a3'),
(899, 31, 432, NULL, 78, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '63fd216c-5a8f-4884-98ca-c08c0407e111'),
(900, 31, 435, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '5fd1bd0f-3c17-4061-ab08-a53c444e04c9'),
(901, 31, 436, NULL, 11, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '54fe0845-5ec9-49da-b490-f16d6166242a'),
(902, 31, 437, NULL, 68, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e7b63fc2-e83a-45cd-b013-5769e4dc0224'),
(903, 31, 438, NULL, 78, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '7475f47f-43a5-4606-ae45-9d216feae918'),
(904, 31, 440, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '4471f092-cb80-4ffb-8552-e8a146178b99'),
(905, 31, 441, NULL, 11, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e59dd5d2-828a-4486-a961-b026620ddb6a'),
(906, 31, 442, NULL, 68, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '9f9dc3b0-79d9-4d8d-a89b-a388e0ac6e21'),
(907, 31, 443, NULL, 78, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '1f8c2735-7d8f-4773-afb6-4d184317c616'),
(908, 31, 445, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '8f180482-7ffb-4d55-a9d0-4b98e8d58362'),
(909, 31, 446, NULL, 11, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '1c772779-b246-4644-b4b5-eb8c64df0a0b'),
(910, 31, 447, NULL, 68, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '85d687c4-376a-42c6-af8f-31bc2337311c'),
(911, 31, 448, NULL, 78, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '2c3165ac-0c11-4c7b-a5be-6cfcd4f88648'),
(912, 31, 450, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'd3bda851-2c0b-4e73-838a-77ea68e7966b'),
(913, 31, 451, NULL, 11, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '9f225990-f584-409c-be69-30d9132238af'),
(914, 31, 452, NULL, 68, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '38506f0e-8502-460e-b1d7-ddfca2171af2'),
(915, 31, 453, NULL, 78, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '4a1e8af4-59a5-44e5-9db6-e2cb245b7aae'),
(916, 31, 456, NULL, 7, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '16bf7484-146c-4788-b7cf-f1de877b5204'),
(917, 31, 457, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a087bcd1-cb27-4362-ba8e-f1e60fe18b70'),
(918, 31, 458, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'eb2a7f6c-bc04-4dde-8384-5dfbdc25447e'),
(919, 31, 459, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f46dbd85-8eb7-4bb2-b194-d9ba9ff887a7'),
(920, 31, 461, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '02f9691c-aa8b-455e-b7be-0a74770f8ffe'),
(921, 31, 462, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '7926682c-771d-4243-be46-4b85132a0e38'),
(922, 31, 463, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '1e32bd49-3e92-4feb-baab-48008e8d22bf'),
(923, 31, 464, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'c40d914a-4690-43b8-8bd4-2ae1582a47d0'),
(924, 31, 466, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a15209d8-6cd7-49db-bc51-717d8a53965b'),
(925, 31, 467, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '825798c7-1c36-49c4-a424-cfa967f0956f'),
(926, 31, 468, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'de370d65-d8a1-4c80-abe5-1b2a4fa14653'),
(927, 31, 469, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a3be77b9-426f-4355-8ddb-0d713da5e59f'),
(928, 31, 471, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e6f91ce2-53bd-444c-a54d-e97a87b9fabd'),
(929, 31, 472, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'edc1355e-6a14-48d3-a110-ec5fa5e87559'),
(930, 31, 473, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '1d59a476-cc3b-408d-ad6f-0946e78699d3'),
(931, 31, 474, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '89e53072-c791-41d5-be80-3e8e733d7631'),
(932, 31, 477, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'ca0db5f4-24c4-4a0e-94bc-5ad6c78d3df6'),
(933, 31, 478, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '9b2d2005-9774-4147-bd47-603e3d2d06d7'),
(934, 31, 479, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '9dcd67af-42c9-448a-8134-35f2b2dff2c4'),
(935, 31, 480, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '2b3f836a-626c-47b7-89b7-dc285033673b'),
(936, 31, 482, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '8432e8f4-5a6e-43cb-b775-1092281bc694'),
(937, 31, 483, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '63efb251-f905-4d0c-a7ca-3f563df811e6'),
(938, 31, 484, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e3d3a4b4-9e79-4837-beb3-95cc463f1cd7'),
(939, 31, 485, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '11ffeb0d-be51-4589-bfff-f3036d00a1a8'),
(940, 31, 487, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '81f7c7ed-0a23-461f-9c5e-25019ae04f72'),
(941, 31, 488, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f8afe4f0-fa5b-496d-b9df-6c4d3353047b'),
(942, 31, 489, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'bb780369-2965-4a4b-b67d-e36aa53c368b'),
(943, 31, 490, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '40132b5e-3786-4c1d-b478-02cea7782184'),
(944, 31, 492, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '935d0e7b-3360-4961-b28c-4033a748d9ca'),
(945, 31, 493, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '057eafd3-6c61-4d86-aaf7-0f4f20f2465c'),
(946, 31, 494, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '4d7799d8-e610-4936-a2fb-1ee853e680fc'),
(947, 31, 495, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '8c43512f-6b19-4b03-884a-754cf1d71fb9'),
(948, 31, 498, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '3fc063dd-8e2f-4e3e-adb1-e8dffd4e48bc'),
(949, 31, 499, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '556b39c9-3636-4e8d-a910-d0b6e29dbb24'),
(950, 31, 500, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'c41d15a8-7b56-447c-921c-38e86def9525'),
(951, 31, 501, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '2a49e169-9f19-4057-b3aa-be39549c222b'),
(952, 31, 503, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'fb59d832-8846-4bd8-8f7c-5c88923c3ea8'),
(953, 31, 504, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'c346720e-6a7a-4826-ab06-cc624991bf55'),
(954, 31, 505, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'bd16dad0-ae8d-497f-87f7-af3d9bb9efb9'),
(955, 31, 506, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '6bbf0aaf-117b-4051-b242-d3729f10770f'),
(956, 31, 508, NULL, 7, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e6f1e1f8-b863-4e2e-8325-30af2b494342'),
(957, 31, 509, NULL, 11, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'c85d68a1-4f85-4447-bd58-e19b300a999e'),
(958, 31, 510, NULL, 68, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '086518d3-9f44-42ca-ac6d-1de2efb51742'),
(959, 31, 511, NULL, 78, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f55472bd-b392-41d8-9631-2b7bcf4269fd'),
(960, 31, 513, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '366bda85-596c-4dd3-a275-b0ae82ba0a5c'),
(961, 31, 514, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '44b2890f-b5c1-4ec7-b02d-76de932c1892'),
(962, 31, 515, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'dbe7f432-fef8-4abd-8347-fc05edd9af1c'),
(963, 31, 516, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '09d97af0-c8cf-4110-bbc8-10a3ab3177fe'),
(964, 31, 519, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b8bf1ab0-2b5f-4305-9173-39d8a518373f'),
(965, 31, 520, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'ca45245a-2edc-40f5-8721-61aed283fb46'),
(966, 31, 521, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '161411c8-2c1c-4de1-b4e4-b5a7ec4d4ec2'),
(967, 31, 522, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '21a2c406-10d1-405b-8a2d-843833714e85'),
(968, 31, 524, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '97320e1e-3e66-4260-b267-65c0dc101755'),
(969, 31, 525, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'd80809e9-4243-485b-8082-54ff7f806b2e'),
(970, 31, 526, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '51bba778-3488-4311-ba27-f0228a4e8b78'),
(971, 31, 527, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'a2ebf31e-7563-4f8a-92a1-c4cd816d8d48'),
(972, 31, 529, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '913c8e7c-877c-41de-b56a-54115972fb20'),
(973, 31, 530, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '40cda539-f891-46ad-8563-2aa28b0f15c6'),
(974, 31, 531, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '6ec98833-6143-4c54-9bc0-c066f5e32f00'),
(975, 31, 532, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'cdcdf995-2c2a-4919-9fc6-5ed9cb93fb6c'),
(976, 31, 534, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '98c9d172-3e27-4bee-9003-ccc95d0dcfdd'),
(977, 31, 535, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '4f70e0d1-8323-4e6a-894b-167daec4f530'),
(978, 31, 536, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '51359689-b312-47a6-9fde-0d89c611dd9e'),
(979, 31, 537, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'de4d7b8f-be33-40a1-8c0e-297f3f31393e'),
(980, 31, 540, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '1c6d23b1-d3c6-402a-9f49-2073c81f9623'),
(981, 31, 541, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '794ca2f0-d004-4eda-9cb2-436abe6459f9'),
(982, 31, 542, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7c247cae-7a4e-4936-ba3c-39b1779b2b7f'),
(983, 31, 543, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'def86097-19ec-44f4-889b-d005ed5b5b61'),
(984, 31, 545, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'e8572bbe-6a22-46dc-b900-c6c4c2a49cf9'),
(985, 31, 546, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b5dcdb87-ae73-472d-b49d-0f385c2cfee4'),
(986, 31, 547, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '5262e908-7a5d-44ec-889f-fcaca5d3d97a'),
(987, 31, 548, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '84e56619-1038-450b-8c77-8a5e2b1da144'),
(988, 31, 550, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'fa36d43c-e517-43bd-b38a-6a5245c1fbc8'),
(989, 31, 551, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b43d5a18-e50a-41e6-986d-a9d54bbfeed8'),
(990, 31, 552, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '31324830-2503-4ddf-81bd-7f0701fb5a5b'),
(991, 31, 553, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b298f7da-1fda-4b05-9c65-7b40e3240f4b'),
(992, 31, 555, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '468d6da2-55ff-401a-8318-274070558fe3'),
(993, 31, 556, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '423e20c6-c53a-4d9a-aaf5-3f2d9bf1f0f4'),
(994, 31, 557, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '3f52a189-6bb2-430a-b54c-5005ee5f7c87'),
(995, 31, 558, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '0f0bfd98-990f-46a1-957a-08b4c080f459'),
(996, 31, 561, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'a8be1e16-1821-46e4-9058-fd36f00572c8'),
(997, 31, 562, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '3d74783b-c011-406d-a6ac-b640d2bfcc37'),
(998, 31, 563, NULL, 68, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'c3e9d93c-b81e-40dd-ad8c-4e64738a1fa5'),
(999, 31, 564, NULL, 78, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '43bb867c-6d07-46fd-8c84-bb0e88ec6122'),
(1000, 31, 566, NULL, 7, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'eee23f38-0eaf-4bd4-b769-1733ae510b3a'),
(1001, 31, 567, NULL, 11, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '60533eb8-4e7d-4eb1-bd33-6a43ded1e8ce'),
(1002, 31, 568, NULL, 68, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'efb12d83-28a2-4015-8760-e86814fba222'),
(1003, 31, 569, NULL, 78, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'a36da4ad-478c-42c0-b049-21f97e0e962a'),
(1004, 31, 571, NULL, 7, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '0d88d872-957a-4b9d-b9fd-d872d1276ba2'),
(1005, 31, 572, NULL, 11, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '45d4f6bb-2cac-475f-b972-bec7272e25d2'),
(1006, 31, 573, NULL, 68, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'a1529bb9-7324-43c8-8d7a-5ec6c716a3f9'),
(1007, 31, 574, NULL, 78, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'dd4a1a1e-fece-4a59-ad0e-2f4909c74968'),
(1008, 31, 576, NULL, 7, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'b51ace46-9e5f-417e-a2be-cae767512ce5');
INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1009, 31, 577, NULL, 11, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '3c1ba6c1-7154-4611-9176-42a181beb613'),
(1010, 31, 578, NULL, 68, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '5c6a8b1e-bd38-431c-9628-80b73a7a5a3b'),
(1011, 31, 579, NULL, 78, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'e45a3311-e68c-406f-9f4a-c576d889aa7a'),
(1028, 31, 582, NULL, 7, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '0e80ffec-9289-41f0-9b1e-be2ff914f566'),
(1029, 31, 583, NULL, 11, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '8a8f391e-020d-4426-9e1b-ad9a2bd8143b'),
(1030, 31, 584, NULL, 68, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'f1364470-c455-4b48-bdba-c42521280077'),
(1031, 31, 585, NULL, 78, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'da38dd17-2efc-4a35-bca4-60f306864145'),
(1032, 31, 587, NULL, 7, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '8aebd378-9c4e-47c4-b8cb-eb2ca6c7ce40'),
(1033, 31, 588, NULL, 11, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '86c7f1c4-2043-4284-8456-e6d3cfcd428c'),
(1034, 31, 589, NULL, 68, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'bd8d0741-5ae7-46f1-a7e0-9172c3aa0cfd'),
(1035, 31, 590, NULL, 78, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'a264ab51-5e23-434f-ba77-ad4aad5ec525'),
(1036, 31, 592, NULL, 7, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '2f597528-5609-404b-bc32-81c79f4ff3d1'),
(1037, 31, 593, NULL, 11, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '02bc3e02-5cdd-4bfa-9a4c-74b3b7d1f162'),
(1038, 31, 594, NULL, 68, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '10f774f5-3cd7-4f85-bdca-42ff10068336'),
(1039, 31, 595, NULL, 78, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '2bb12cf9-80a7-4b15-a558-bf7e7ee1cd35'),
(1040, 31, 597, NULL, 7, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'c2ea46cf-c976-47a9-95fe-ff6f8f8eb699'),
(1041, 31, 598, NULL, 11, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '8ce02f64-7afa-4479-8669-62268b547fd2'),
(1042, 31, 599, NULL, 68, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '3064e12f-ec88-4035-834a-1b8c00005f03'),
(1043, 31, 600, NULL, 78, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '820b68f9-47a5-43f2-91b3-a8a4e8bd357d'),
(1052, 36, 602, NULL, 125, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '0f878d55-2731-4f4f-818b-68647385e61e'),
(1053, 43, 602, NULL, 40, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '225a56ce-c045-45f0-9b11-63b377f0ea82'),
(1054, 45, 604, NULL, 37, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '819ac95f-8685-43eb-9aab-70712c5aba1b'),
(1055, 47, 604, NULL, 118, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '0103d28e-627d-4b61-84d8-1c9f12d7ef58'),
(1056, 45, 605, NULL, 34, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '399a9022-0f23-44d3-a468-bd7dd6d5b939'),
(1057, 45, 606, NULL, 35, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '8e49a1cc-5e9a-4e8e-9ae6-900e429c8052'),
(1058, 45, 607, NULL, 36, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '2d966e17-79a8-4601-9108-6098689663eb'),
(1059, 45, 608, NULL, 42, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '02e1b375-1bb8-4648-bb7c-6cd15236731d'),
(1068, 36, 610, NULL, 125, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'ab03c4cc-31bd-4733-ab0c-71ddd008e805'),
(1069, 43, 610, NULL, 40, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '56a50e1d-055d-4281-abfa-719fa7a6d1eb'),
(1070, 45, 612, NULL, 37, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'a380cafa-45ec-452c-9d98-6ffa2ec42c74'),
(1071, 47, 612, NULL, 118, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '2bc115a5-220d-4266-8bbe-21458d925881'),
(1072, 45, 613, NULL, 34, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'bcdd0669-93ba-4fa5-8512-7311e3f5f3e3'),
(1073, 45, 614, NULL, 35, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '9a8260b3-723a-4d16-9281-9b72f31f7f7f'),
(1074, 45, 615, NULL, 36, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '13320b50-64b7-4766-b15a-c49a0170e1a1'),
(1075, 45, 616, NULL, 42, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'be24d1ee-d9a1-4cfd-8d1c-17e79026bc77'),
(1083, 36, 618, NULL, 126, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'b21a2088-5957-4552-8ee7-7fe371c2bbb7'),
(1084, 43, 618, NULL, 41, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'a945d719-8ba7-4a84-b9f7-4f5c0b72ecf3'),
(1085, 45, 620, NULL, 34, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '0d9db9fd-17fa-449a-bac4-84291b282e93'),
(1086, 45, 621, NULL, 35, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '2c529154-0904-4d92-b9f0-13c8f932a271'),
(1087, 45, 622, NULL, 36, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'df4e8304-f777-497f-82fe-3a528e371d5a'),
(1088, 45, 623, NULL, 37, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '234c9862-f83c-4a6d-89e6-5a5a904aa12c'),
(1089, 45, 624, NULL, 42, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '821e3dd3-a9d4-4aa8-99ca-7670b58cc76a'),
(1098, 36, 626, NULL, 125, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'a359d1ed-0602-42b8-ab99-77f2a319a685'),
(1099, 43, 626, NULL, 40, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'f111bbaf-a278-4643-96db-cabfe116b441'),
(1100, 45, 628, NULL, 37, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'd2618478-7522-4ff7-862c-f618dcf7e403'),
(1101, 47, 628, NULL, 118, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'f6ba0798-6b43-4918-abc1-bca87600be30'),
(1102, 45, 629, NULL, 34, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'e5cf3efa-32df-45f7-bd0d-258084c34992'),
(1103, 45, 630, NULL, 35, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'a37f85f7-bf74-4ed5-97f1-8c37de96b875'),
(1104, 45, 631, NULL, 36, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '5543f8d3-a6da-403e-837b-2deb06f58849'),
(1105, 45, 632, NULL, 42, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'c767ca9b-95a0-4b46-b6bd-26163e3c5533'),
(1114, 36, 634, NULL, 125, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'de7fd49c-5dd1-4c31-80ff-74ad6220bc87'),
(1115, 43, 634, NULL, 40, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '1f7f2a85-6cf5-46ed-b893-a7507be97ea4'),
(1116, 45, 636, NULL, 37, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '4face18f-90bf-4aa6-97d2-a799e7f79f5e'),
(1117, 47, 636, NULL, 118, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'c79298d5-407c-4b83-a360-a12520607547'),
(1118, 45, 637, NULL, 34, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '5fdb231b-e466-4a2d-a068-6411048e3859'),
(1119, 45, 638, NULL, 35, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '17291928-1eaf-4ec3-bd7f-2c9fc4655793'),
(1120, 45, 639, NULL, 36, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'b750b7b2-afc2-44f5-818b-1de57616a0d2'),
(1121, 45, 640, NULL, 42, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'bf3eceba-07e9-44b3-820b-75f450ffcc59'),
(1122, 103, 641, NULL, 123, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '22025edc-a034-4e69-9857-0c2344e79baf'),
(1124, 103, 642, NULL, 123, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'f26cb5b6-2582-449c-a4fb-4bb27cfc94a3'),
(1126, 103, 643, NULL, 123, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '7cdcf4dc-ab12-4a39-887a-ebd7304eac62'),
(1128, 103, 644, NULL, 123, 1, '2019-07-16 07:36:16', '2019-07-16 07:36:16', 'cd0b05f5-b1c0-43a3-9f4c-7d3be0d6442c'),
(1130, 103, 645, NULL, 123, 1, '2019-07-16 07:36:16', '2019-07-16 07:36:16', '9d9ea039-2013-44f5-bf81-91e45feb467b'),
(1155, 36, 654, NULL, 125, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'f4fb32e9-9e87-4c17-a4a3-612c57d72e18'),
(1156, 43, 654, NULL, 40, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'bfc3303c-628f-49ee-873d-4ac2f99b5460'),
(1157, 45, 656, NULL, 37, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '9c9c4f46-5a23-449d-a110-e03cabd5b9c1'),
(1158, 47, 656, NULL, 118, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'de05b1d2-eb0d-4eba-9b0d-f90cd3afa912'),
(1159, 45, 657, NULL, 34, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '8f100158-06e6-4ab7-8abb-a53366577fd8'),
(1160, 45, 658, NULL, 35, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'e08565b3-f22b-43e8-8e19-4344d209a372'),
(1161, 45, 659, NULL, 36, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'd0267bda-2ef8-46d7-a6b2-c8587e22669e'),
(1162, 45, 660, NULL, 42, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '84615825-0db9-4b0f-ae28-9680921d7382'),
(1163, 36, 662, NULL, 125, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '2c733474-a813-48ae-bbe4-5ec354576b09'),
(1164, 43, 662, NULL, 40, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '4bf9147e-40d8-449a-a83e-748ab3ea342d'),
(1165, 45, 664, NULL, 37, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'd5073d7b-9adb-472a-885d-72e140aa9770'),
(1166, 47, 664, NULL, 118, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '92fa0c53-f98f-495d-9ad7-a91c1fecfd00'),
(1167, 45, 665, NULL, 34, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'a151aa3e-d17a-41c6-83ae-7c729139daaf'),
(1168, 45, 666, NULL, 35, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'c82373f9-5d96-4e57-ba71-88930d429f79'),
(1169, 45, 667, NULL, 36, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'e93e75b1-9088-4ed1-9507-bf23b3f83429'),
(1170, 45, 668, NULL, 42, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '9a6d72f6-b9e0-4b2a-bcc6-5eed930977b3'),
(1192, 36, 677, NULL, 126, 1, '2019-07-16 10:14:26', '2019-07-16 10:14:26', '531ac5a5-cd80-4dcf-bb99-f651545cf8b1'),
(1193, 43, 677, NULL, 41, 1, '2019-07-16 10:14:26', '2019-07-16 10:14:26', '7080e4e7-8a00-4125-a82c-f9ad1a0e1268'),
(1194, 45, 679, NULL, 34, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '50a9c10b-0a20-4940-9274-fda1e3aa603d'),
(1195, 45, 680, NULL, 35, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'f38431bc-0e77-4ff0-b1a3-7f042023ba37'),
(1196, 45, 681, NULL, 36, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '21d6bc80-9652-40ea-8724-e40fc21a4cf5'),
(1197, 45, 682, NULL, 37, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '7547829c-7fa9-447a-9bd7-867da35962c7'),
(1198, 45, 683, NULL, 42, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'baa1229c-2e08-4fc9-874c-c9c0c29dccd1'),
(1199, 36, 685, NULL, 126, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '080b2476-09da-4729-ad43-f93030b35ec1'),
(1200, 43, 685, NULL, 41, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '9fa81471-5125-4797-90a5-81aa839915cf'),
(1201, 45, 687, NULL, 34, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '758379e5-425f-497d-97df-ebbfc3c0b388'),
(1202, 45, 688, NULL, 35, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '0608dde5-9add-4e63-8c43-ddee6ca0b4c4'),
(1203, 45, 689, NULL, 36, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '1cf5b973-7303-426c-802b-f1505778cd18'),
(1204, 45, 690, NULL, 37, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '634f44e5-3aea-4472-8f29-aab614480af7'),
(1205, 45, 691, NULL, 42, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '995f717e-37be-4000-ba00-5aa35ab98dfa'),
(1234, 36, 708, NULL, 127, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'b4c1c673-0c84-489f-a0cc-1362a069d7fd'),
(1235, 43, 708, NULL, 67, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '9e658c4a-95db-4364-8019-b89c54712434'),
(1236, 45, 710, NULL, 34, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '582e6871-ecc5-41ee-a451-0b69dd8651f0'),
(1237, 45, 711, NULL, 34, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '5539abee-c677-4b54-8d5b-0dc48309ac2a'),
(1238, 45, 712, NULL, 36, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '9cca7c08-950d-4827-8156-0ae8f74a46c9'),
(1239, 45, 713, NULL, 37, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '4eb78b6e-b19f-4702-a0ce-cdef01474ca5'),
(1240, 45, 714, NULL, 42, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '5048aa31-baa6-409e-9268-67aaddf67e6e'),
(1271, 36, 723, NULL, 76, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '59dc756b-0f56-45f7-84f5-546666bccded'),
(1272, 43, 723, NULL, 77, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '5b9128f4-d3c8-4dab-825f-a2d9e56eba0f'),
(1273, 45, 725, NULL, 34, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'cbbbd132-e40f-4d43-a565-6205cf45c84b'),
(1274, 47, 725, NULL, 118, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '62efd634-1fec-4277-a1fb-1d719c48a203'),
(1275, 45, 726, NULL, 35, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '760f5272-6b60-49af-84c0-5bb5ea073d72'),
(1276, 48, 726, NULL, 119, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '444e013b-fe19-44e6-825c-f71f40118ebd'),
(1277, 45, 727, NULL, 36, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'ce9fa46c-a3e3-4fda-9acd-f4528e092367'),
(1278, 47, 727, NULL, 118, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '7c2be093-0986-40ed-bebb-1e3581a33e1c'),
(1279, 45, 728, NULL, 37, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'd0e6f9e8-7692-4e1a-bf9e-d43a2156b0c9'),
(1280, 45, 729, NULL, 42, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '1389fe0f-8930-40e8-9d4e-a3c589a4bf3a'),
(1281, 36, 731, NULL, 76, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'e9a1329d-b8be-4b37-9ee9-ae1f2d2509fc'),
(1282, 43, 731, NULL, 77, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'd6c10d40-1105-45cf-90bb-f1029bc122a6'),
(1283, 45, 733, NULL, 34, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '3255510f-7791-4ed7-b338-331f0efdb37e'),
(1284, 47, 733, NULL, 118, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'cafeaaa4-be19-45d0-80c2-4fb9070392c3'),
(1285, 45, 734, NULL, 35, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'b7022120-cdc1-4fe3-8269-78e8f91be1ea'),
(1286, 48, 734, NULL, 119, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'f0f76164-ade7-4607-bc85-dded76b51b87'),
(1287, 45, 735, NULL, 36, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '94cc43d9-d358-46cf-a8ce-a99048a53c0a'),
(1288, 47, 735, NULL, 118, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'b1829336-cd1f-4be0-9913-89a8381e646e'),
(1289, 45, 736, NULL, 37, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '0347f0cf-6e30-425d-8341-0d5ed2adba0c'),
(1290, 45, 737, NULL, 42, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '3f5ce2a4-a131-4939-9826-8dfa4df9d05a'),
(1291, 36, 700, NULL, 127, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'a3dc4520-4795-4b1b-81d5-9c4a64288f0c'),
(1292, 43, 700, NULL, 67, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '588d344e-c9de-4b22-81af-2e0e7ffb2c09'),
(1293, 45, 702, NULL, 34, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '67dead0b-b7bd-493a-bd90-bc2eef748075'),
(1294, 45, 703, NULL, 35, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '0481b7b1-4a04-4f5f-ae4f-15e0e372b79c'),
(1295, 47, 703, NULL, 118, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'ab628674-134d-4a73-a19b-9e34f46002d4'),
(1296, 45, 704, NULL, 36, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '889c7a8b-0279-45da-9816-1b634891801e'),
(1297, 45, 705, NULL, 37, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'a7d0e9b7-966d-4985-8dba-c03aec6c77bf'),
(1298, 45, 706, NULL, 42, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '11813fa6-5453-4f05-9f29-c162e9d901b7'),
(1299, 36, 768, NULL, 127, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'cc55bdc7-630b-4919-bca9-4a491826947b'),
(1300, 43, 768, NULL, 67, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '9178b51e-acdb-436c-a175-30be5fa2ae69'),
(1301, 45, 770, NULL, 34, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'a4126cc0-fe6e-44c6-9edb-85ffde654831'),
(1302, 45, 771, NULL, 35, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '6970cd90-12a9-4a90-bf7d-d1aed37559f5'),
(1303, 47, 771, NULL, 118, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'd61ba536-70d8-4d19-93f3-8b8524c2c5ae'),
(1304, 45, 772, NULL, 36, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'f8b4c47a-2c94-47a3-aea3-5bde104e545f'),
(1305, 45, 773, NULL, 37, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'c2c37fd5-4af9-46e0-8045-fe06932f371c'),
(1306, 45, 774, NULL, 42, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'c396f6a0-98a5-4590-ac0a-f325e50dff2e'),
(1319, 54, 777, NULL, 78, 1, '2019-07-29 13:10:51', '2019-07-29 13:10:51', '77cb2885-c934-40f1-920f-86a84735e027'),
(1320, 54, 777, NULL, 68, 2, '2019-07-29 13:10:51', '2019-07-29 13:10:51', '34fed161-f93e-475b-a396-20443b4ed6e1'),
(1321, 54, 777, NULL, 11, 3, '2019-07-29 13:10:51', '2019-07-29 13:10:51', 'f3414af3-a513-4a29-ae9f-83519561ad08'),
(1322, 54, 777, NULL, 7, 4, '2019-07-29 13:10:51', '2019-07-29 13:10:51', '5631f525-d02e-4095-9e3f-ca168d063842'),
(1342, 103, 780, NULL, 778, 1, '2019-07-29 13:18:34', '2019-07-29 13:18:34', '0117eb7c-503d-43de-99f5-1fafcb34b9d8'),
(1343, 54, 780, NULL, 78, 1, '2019-07-29 13:18:34', '2019-07-29 13:18:34', '56bc19c9-8f37-4596-823e-0ad44930aecb'),
(1344, 54, 780, NULL, 68, 2, '2019-07-29 13:18:34', '2019-07-29 13:18:34', '1ed0f054-a196-4e6f-8449-38c1616ea535'),
(1345, 54, 780, NULL, 11, 3, '2019-07-29 13:18:34', '2019-07-29 13:18:34', '7cecbce8-dde3-4bcf-8173-aa453b8860ed'),
(1346, 54, 780, NULL, 7, 4, '2019-07-29 13:18:34', '2019-07-29 13:18:34', '9cf4367f-6c4a-4266-ab69-160c8430d068'),
(1371, 103, 782, NULL, 126, 1, '2019-07-29 13:27:40', '2019-07-29 13:27:40', '4e082707-5069-4d73-897c-48643ca40cee'),
(1372, 54, 782, NULL, 78, 1, '2019-07-29 13:27:40', '2019-07-29 13:27:40', '5001f803-2dff-4693-b318-ea6f05eaceae'),
(1373, 54, 782, NULL, 68, 2, '2019-07-29 13:27:40', '2019-07-29 13:27:40', 'd801896e-bfad-4bdf-9574-32adef4a1f5f'),
(1374, 54, 782, NULL, 11, 3, '2019-07-29 13:27:40', '2019-07-29 13:27:40', 'fb686174-6342-46eb-ad27-d3eeeef73c03'),
(1375, 54, 782, NULL, 7, 4, '2019-07-29 13:27:40', '2019-07-29 13:27:40', '47e2e3b3-ef89-459e-a0e0-1dcee019423d'),
(1407, 36, 791, NULL, 125, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '5034472b-abdd-4391-b040-fb0b06bf3fef'),
(1408, 43, 791, NULL, 40, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'd00d57ba-4d36-40b9-9d4a-9039572d7ef9'),
(1409, 45, 793, NULL, 37, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '0124de9c-29cb-4f22-b7cb-e0299aa3d660'),
(1410, 47, 793, NULL, 118, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '949c8d7a-91b1-42d8-83dc-fabf9a86a3a6'),
(1411, 45, 794, NULL, 34, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '15e4e445-8bb2-4881-92d8-700806bf113b'),
(1412, 45, 795, NULL, 35, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '9c3b991e-4884-411c-bd5e-95df8d8f3bf1'),
(1413, 45, 796, NULL, 36, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '2487d76b-4f0e-493a-9d72-544dc02df06c'),
(1414, 45, 797, NULL, 42, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '482ec55d-cfc4-4ea7-915e-b755b98f2de4'),
(1415, 36, 799, NULL, 125, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'a4bf1ea8-3a4b-492f-9eae-a715dd268a21'),
(1416, 43, 799, NULL, 40, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'a67f9f60-3ffe-4646-930e-a5cf6577d5e8'),
(1417, 45, 801, NULL, 37, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '7bd33c1f-5d27-48d9-abe0-3c68df12071e'),
(1418, 47, 801, NULL, 118, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'a72b531c-b22e-4f7d-94c0-30a4edac7dac'),
(1419, 45, 802, NULL, 34, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '11309f47-a34a-4e8f-9fc9-78c1e172b054'),
(1420, 45, 803, NULL, 35, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '1162f686-cc76-4edd-9c51-71e7ccbba2bc'),
(1421, 45, 804, NULL, 36, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '65979dd4-9ff9-465a-8edd-3813ea915bf1'),
(1422, 45, 805, NULL, 42, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '70d3ffbb-6473-4fb0-be64-993880dd597b'),
(1438, 36, 807, NULL, 778, 1, '2019-07-29 13:35:54', '2019-07-29 13:35:54', '0d45c4ab-a542-4360-9999-6626baf0134d'),
(1439, 43, 807, NULL, 40, 1, '2019-07-29 13:35:54', '2019-07-29 13:35:54', 'e5543614-0081-4453-a35c-8729c87a669c'),
(1440, 45, 809, NULL, 37, 1, '2019-07-29 13:35:54', '2019-07-29 13:35:54', '97a7435b-83a9-4775-b60a-e3fe0a865c84'),
(1441, 47, 809, NULL, 118, 1, '2019-07-29 13:35:54', '2019-07-29 13:35:54', '68ecd71b-3f3a-48f3-bd6a-a311de478158'),
(1442, 45, 810, NULL, 34, 1, '2019-07-29 13:35:54', '2019-07-29 13:35:54', 'ac683ff7-7800-480c-b040-ec193e93bd7c'),
(1443, 45, 811, NULL, 35, 1, '2019-07-29 13:35:54', '2019-07-29 13:35:54', '0ff16661-55e4-4626-8a1f-8b356c18df6a'),
(1444, 45, 812, NULL, 36, 1, '2019-07-29 13:35:54', '2019-07-29 13:35:54', 'e2dcf3f9-a33c-4ff0-9281-02d8327800d1'),
(1445, 45, 813, NULL, 42, 1, '2019-07-29 13:35:54', '2019-07-29 13:35:54', 'f560ca67-d4d6-4729-8551-fc7fb6cb2779'),
(1477, 36, 822, NULL, 778, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '5c6382c6-57be-478d-b8bf-30c9075eb1bc'),
(1478, 43, 822, NULL, 40, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '60d36431-ca93-452f-a785-d2bbe7b4652b'),
(1479, 45, 824, NULL, 37, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '9253154c-6718-4fec-bbd8-deedab19d843'),
(1480, 47, 824, NULL, 118, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'b4deca55-85a2-42e6-814b-34c342eecef8'),
(1481, 45, 825, NULL, 34, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '0f36d204-e736-43d7-b9a4-871983bc933e'),
(1482, 45, 826, NULL, 35, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'e6e41eee-11ef-4f55-8e93-084cbfa858e3'),
(1483, 45, 827, NULL, 36, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '43e0065c-b492-4fef-a35f-064ca24406dc'),
(1484, 45, 828, NULL, 42, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '4aeb6cca-affc-4ad4-9fd1-5fc1f7f23b87'),
(1485, 36, 830, NULL, 778, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'da01d54a-b5a2-46ed-99fa-e7fd321b1505'),
(1486, 43, 830, NULL, 40, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'f595fbc7-b5ca-4c82-bf7b-65906ac7b7b0'),
(1487, 45, 832, NULL, 37, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '32c9e4e6-3295-498f-937d-bfb80a24eee1'),
(1488, 47, 832, NULL, 118, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'bd75556c-8c6b-482b-a505-5849d97b4d6f'),
(1489, 45, 833, NULL, 34, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '42eb7762-aae6-4b43-8fda-01098afbd5d0'),
(1490, 45, 834, NULL, 35, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '5dc0ddde-547c-4c8d-a22b-71137cc163ec'),
(1491, 45, 835, NULL, 36, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '84dab4bf-0a5b-47c6-8762-e0add068a7db'),
(1492, 45, 836, NULL, 42, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'e17c1fcb-bc62-418d-a3aa-35e6d1534bfd'),
(1501, 43, 838, NULL, 40, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '96fa5d6f-ae0f-47eb-ad95-9c689b7d7a55'),
(1502, 45, 840, NULL, 37, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '218556fe-680f-4b65-8968-ba142c03a628'),
(1503, 47, 840, NULL, 118, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '78b4cdc3-ed11-4555-b90e-6aec4f4cf2ec'),
(1504, 45, 841, NULL, 34, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '396ffc17-3f8b-485b-a129-7ed41f5ecee2'),
(1505, 45, 842, NULL, 35, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '351e5043-993b-416c-8dd9-d5cbad44b7c1'),
(1506, 45, 843, NULL, 36, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'c8abfdfe-ad23-4e5a-94da-453d5de32ee4'),
(1507, 45, 844, NULL, 42, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'f0e6ab7d-278d-4296-9c0b-ed3919433597'),
(1546, 36, 854, NULL, 125, 1, '2019-07-29 13:39:35', '2019-07-29 13:39:35', '566597bb-e8aa-4a6b-be63-fa0ff6b2bc40'),
(1547, 43, 854, NULL, 40, 1, '2019-07-29 13:39:35', '2019-07-29 13:39:35', '99d50b5c-4eb1-4ff7-81c9-b22c76f773fb'),
(1548, 45, 856, NULL, 37, 1, '2019-07-29 13:39:36', '2019-07-29 13:39:36', '92b5a5c1-b270-4f68-a14e-4ed2bd105b0a'),
(1549, 47, 856, NULL, 118, 1, '2019-07-29 13:39:36', '2019-07-29 13:39:36', '2c7cf159-b9d2-4011-ac9a-7684641dd053'),
(1550, 45, 857, NULL, 34, 1, '2019-07-29 13:39:36', '2019-07-29 13:39:36', '803dac04-19a2-4d8a-839e-f1d38f866af9'),
(1551, 45, 858, NULL, 35, 1, '2019-07-29 13:39:36', '2019-07-29 13:39:36', '2795aabe-4f59-4817-9529-9c4d385768a7'),
(1552, 45, 859, NULL, 36, 1, '2019-07-29 13:39:36', '2019-07-29 13:39:36', '7ca67c6c-8f4a-4e8a-8c6a-8c1a29235863'),
(1553, 45, 860, NULL, 42, 1, '2019-07-29 13:39:36', '2019-07-29 13:39:36', '615e5f40-5224-46c4-9cf1-936631292701'),
(1585, 36, 869, NULL, 125, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '172a5864-ffe3-4260-820d-cc727b8cecc2'),
(1586, 43, 869, NULL, 40, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '0928735f-fd4a-4a87-9819-b798f9859d7f'),
(1587, 45, 871, NULL, 37, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'a71dec39-0460-44bb-ab12-31fc6507f9f7'),
(1588, 47, 871, NULL, 118, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'b3fe9fdd-579e-48f0-9c73-7f0ebd290000'),
(1589, 45, 872, NULL, 34, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'ff2019e6-5db3-4ee3-ae28-6cf4da7c92e6'),
(1590, 45, 873, NULL, 35, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'a07c8405-0a1e-41c2-9b5e-ac2336ae3939'),
(1591, 45, 874, NULL, 36, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '92820d7a-61ba-4a98-a175-551da2f15cf0'),
(1592, 45, 875, NULL, 42, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '35868fab-8327-4f76-824e-66cc40aec2a7'),
(1593, 36, 877, NULL, 125, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'ae2a6801-21dd-4992-accb-cacadc600562'),
(1594, 43, 877, NULL, 40, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'be998ba0-c174-4c79-8a7b-bb5e04d35cc3'),
(1595, 45, 879, NULL, 37, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'efab326e-cfcd-4b7d-aa3c-3a800263cdd7'),
(1596, 47, 879, NULL, 118, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '9fceaa9b-ad50-4810-ab09-f5a73524bd87'),
(1597, 45, 880, NULL, 34, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'a5ea6ac9-ae9d-49db-acda-55230bb92b4b'),
(1598, 45, 881, NULL, 35, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '4b4de90b-473f-41f7-9067-92a7c97bf652'),
(1599, 45, 882, NULL, 36, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '6aa94969-98e2-4dff-a19e-f3ac41d6439f'),
(1600, 45, 883, NULL, 42, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'dfc5d138-d112-4f6b-9bc5-f7e02390a42a'),
(1620, 103, 102, NULL, 778, 1, '2019-07-29 13:40:33', '2019-07-29 13:40:33', '679a6f15-899c-4236-a597-07a8d98c1352'),
(1621, 54, 102, NULL, 78, 1, '2019-07-29 13:40:33', '2019-07-29 13:40:33', '0d6bbc5b-f9e0-4fac-ace3-b2450a09fa49'),
(1622, 54, 102, NULL, 68, 2, '2019-07-29 13:40:33', '2019-07-29 13:40:33', 'cb280730-f506-4ecc-bc03-3bbf71524b10'),
(1623, 54, 102, NULL, 11, 3, '2019-07-29 13:40:33', '2019-07-29 13:40:33', 'e4e99164-b41d-4356-a5f8-30fc0f6402d0'),
(1624, 54, 102, NULL, 7, 4, '2019-07-29 13:40:33', '2019-07-29 13:40:33', '97dbd937-fc7b-40f6-aa3b-b2a2ee0c372b'),
(1625, 103, 885, NULL, 778, 1, '2019-07-29 13:40:34', '2019-07-29 13:40:34', '3172ffee-c2c9-4584-9970-5e21b400684c'),
(1626, 54, 885, NULL, 78, 1, '2019-07-29 13:40:34', '2019-07-29 13:40:34', 'a137e99a-316c-4a40-a442-d5647d1b1685'),
(1627, 54, 885, NULL, 68, 2, '2019-07-29 13:40:34', '2019-07-29 13:40:34', 'ea2c1e6e-ee1c-4f99-8449-bc2062c97f25'),
(1628, 54, 885, NULL, 11, 3, '2019-07-29 13:40:34', '2019-07-29 13:40:34', 'd613eacd-8e64-4878-bde8-1cf0868f2045'),
(1629, 54, 885, NULL, 7, 4, '2019-07-29 13:40:34', '2019-07-29 13:40:34', '4b18b786-37c6-4afb-8e11-88439fff86e4');

-- --------------------------------------------------------

--
-- Структура таблицы `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('103145d3', '@lib/element-resize-detector'),
('125afc8e', '@craft/web/assets/plugins/dist'),
('13fb3b10', '@app/web/assets/matrixsettings/dist'),
('145688b5', '@lib/jquery.payment'),
('14be8ee3', '@app/web/assets/updateswidget/dist'),
('152b88c4', '@supercool/buttonbox/assetbundles/buttonbox/dist'),
('153e6907', '@lib/jquery-ui'),
('1597c7a6', '@app/web/assets/updates/dist'),
('197269b2', '@app/web/assets/dashboard/dist'),
('19fed020', '@bower/jquery/dist'),
('1a003277', '@lib/fabric'),
('1a13d8e', '@craft/web/assets/cp/dist'),
('1a2c2222', '@app/web/assets/craftsupport/dist'),
('1ac5fb9a', '@craft/web/assets/fields/dist'),
('1c5e872c', '@lib/garnishjs'),
('1d31f8e4', '@app/web/assets/updater/dist'),
('1e1547fc', '@app/web/assets/fields/dist'),
('1f0e5856', '@app/web/assets/utilities/dist'),
('2146b0fb', '@lib/picturefill'),
('236f8f3b', '@typedlinkfield/resources'),
('242573ba', '@craft/web/assets/sites/dist'),
('246486b0', '@lib/prismjs'),
('25eee8e3', '@app/web/assets/matrix/dist'),
('26e28c39', '@lib/jquery-touch-events'),
('2a04cc8d', '@app/web/assets/recententries/dist'),
('2ab6d060', '@lib/fileupload'),
('2acccad7', '@app/web/assets/editentry/dist'),
('2bdbe8b9', '@app/web/assets/routes/dist'),
('2c71a62b', '@app/web/assets/pluginstore/dist'),
('2ca6e02e', '@craft/web/assets/updater/dist'),
('2e2e195b', '@lib/velocity'),
('2e93cf38', '@app/web/assets/cp/dist'),
('2fe390aa', '@lib/d3'),
('307b080f', '@app/web/assets/tablesettings/dist'),
('30eb3a35', '@craft/web/assets/craftsupport/dist'),
('3209b6b3', '@lib/jquery.payment'),
('321d0438', '@lib/timepicker'),
('322635e0', '@craft/web/assets/matrix/dist'),
('325ed19e', '@lib/picturefill'),
('3299e752', '@wheelform/assets'),
('32d749ef', '@craft/web/assets/tablesettings/dist'),
('3377fe7e', '@app/web/assets/login/dist'),
('34905d30', '@craft/web/assets/searchindexes/dist'),
('35faed5c', '@lib/jquery-touch-events'),
('366e7bd5', '@lib/element-resize-detector'),
('36f68986', '@app/web/assets/matrix/dist'),
('3749eb00', '@app/web/assets/cp/dist'),
('377ce7d5', '@lib/prismjs'),
('38ed8df8', '@craft/web/assets/login/dist'),
('39516650', '@app/web/assets/utilities/dist'),
('39aeb105', '@lib/fileupload'),
('39d4abb2', '@app/web/assets/editentry/dist'),
('3a7c1d39', '@craft/web/assets/dbbackup/dist'),
('3afde199', '@craft/web/assets/utilities/dist'),
('3cfbf1cf', '@lib/d3'),
('3fa1ee26', '@bower/jquery/dist'),
('401269ea', '@app/web/assets/pluginstore/dist'),
('40ab8180', '@lib/timepicker'),
('41eb5a47', '@craftconditions/conditions/resources'),
('424dd69a', '@lib/velocity'),
('4343d06c', '@verbb/supertable/resources/dist'),
('44cb42ac', '@craft/web/assets/recententries/dist'),
('46d8bcf8', '@lib/jquery-ui'),
('46e5179', '@app/web/assets/feed/dist'),
('47b05d4a', '@lib/jquery.payment'),
('493ecf46', '@craft/web/assets/deprecationerrors/dist'),
('4a1805df', '@bower/jquery/dist'),
('4a88742a', '@vendor/craftcms/redactor/lib/redactor-plugins/fullscreen'),
('4b1834bd', '@lib/fileupload'),
('4ce88da9', '@app/web/assets/utilities/dist'),
('4d0804f3', '@craft/web/assets/updater/dist'),
('4e52a0be', '@app/web/assets/feed/dist'),
('4ebdcdc', '@app/web/assets/updater/dist'),
('4ed72d1b', '@app/web/assets/updater/dist'),
('4f6c7eec', '@craft/web/assets/updates/dist'),
('5010d3e5', '@app/web/assets/craftsupport/dist'),
('5337c0c5', '@wheelform/assets'),
('5379ad32', '@craft/web/assets/tablesettings/dist'),
('5388d13d', '@craft/web/assets/matrix/dist'),
('53b3e0e5', '@lib/timepicker'),
('53c221e7', '@bower/jquery/dist'),
('53f03543', '@lib/picturefill'),
('54540981', '@lib/jquery-touch-events'),
('561be3ba', '@craft/web/assets/editentry/dist'),
('56d20308', '@lib/prismjs'),
('5b2a24c1', '@app/web/assets/cp/dist'),
('5b530544', '@craft/web/assets/utilities/dist'),
('5b97f2a2', '@lib/velocity'),
('5bb924a1', '@app/web/assets/plugins/dist'),
('5d551512', '@lib/d3'),
('5e6a7972', '@lib/jquery.payment'),
('5e827f24', '@app/web/assets/updateswidget/dist'),
('600fd953', '@craft/web/assets/cp/dist'),
('60383d4a', '@app/web/assets/recententries/dist'),
('608782fe', '@lib/jquery-ui'),
('6588ae2a', '@lib/element-resize-detector'),
('6620fc1a', '@lib/selectize'),
('6888131d', '@app/web/assets/updater/dist'),
('68fa6c3', '@app/web/assets/updates/dist'),
('6974e92e', '@craft/web/assets/pluginstore/dist'),
('6977c2d6', '@craft/web/assets/matrixsettings/dist'),
('6be8e01f', '@lib'),
('6c4cb890', '@lib/xregexp'),
('6c792d33', '@app/web/assets/generalsettings/dist'),
('6c9b3a63', '@lib/datepicker-i18n'),
('6d738285', '@craft/web/assets/installer/dist'),
('6ee80294', '@lib/garnishjs'),
('735e5499', '@craft/web/assets/generalsettings/dist'),
('75389d7f', '@lib/selectize'),
('76bd21ba', '@craft/web/assets/dashboard/dist'),
('78b2fde', '@lib'),
('78e18c7', '@lib/selectize'),
('794b0fb9', '@app/web/assets/login/dist'),
('7a7100c2', '@craft/web/assets/updateswidget/dist'),
('7b6b1f47', '@craft/web/assets/fields/dist'),
('7baed6aa', '@lib/fabric'),
('7c528a12', '@lib/element-resize-detector'),
('7d751ac7', '@app/web/assets/cp/dist'),
('7ddd8ecc', '@vendor/craftcms/redactor/lib/redactor-plugins/video'),
('7f54d9f5', '@lib/xregexp'),
('7f835b06', '@lib/datepicker-i18n'),
('80454e7b', '@craft/web/assets/installer/dist'),
('807c651c', '@lib/jquery-ui'),
('817a746e', '@lib/xregexp'),
('81b6594a', '@app/web/assets/matrixsettings/dist'),
('827c2789', '@lib/element-resize-detector'),
('8369cce9', '@craft/web/assets/edittransform/dist'),
('83c0a5ac', '@craft/web/assets/assetindexes/dist'),
('84410e28', '@craft/web/assets/matrixsettings/dist'),
('844225d0', '@craft/web/assets/pluginstore/dist'),
('86de2ce1', '@lib'),
('871275d', '@lib/velocity'),
('87daa5fc', '@app/web/assets/updates/dist'),
('880169e6', '@craft/web/assets/routes/dist'),
('8a0254da', '@craft/redactor/assets/field/dist'),
('8b1630e4', '@lib/selectize'),
('8d3915ad', '@craft/web/assets/cp/dist'),
('8da0df3', '@craft/web/assets/pluginstore/dist'),
('8dbced59', '@lib/fileupload'),
('8e13e576', '@lib/garnishjs'),
('8e24e2ae', '@app/web/assets/installer/dist'),
('916446ec', '@lib/element-resize-detector'),
('9185312', '@lib/fabric'),
('92ae382f', '@app/web/assets/matrixsettings/dist'),
('92b597f8', '@lib/datepicker-i18n'),
('92cc14dc', '@lib/selectize'),
('92f0d065', '@lib/jquery-touch-events'),
('9554eca7', '@lib/picturefill'),
('95c64d84', '@lib'),
('9747cc3c', '@craft/web/assets/updateswidget/dist'),
('98a05056', '@lib/xregexp'),
('9b553148', '@lib/fabric'),
('9b8bed44', '@craft/web/assets/dashboard/dist'),
('9bf1ccf6', '@lib/d3'),
('9ec2d4ad', '@craft/web/assets/plugins/dist'),
('9f4044c3', '@app/web/assets/fields/dist'),
('9fc9b4e5', '@app/web/assets/routes/dist'),
('a03ec80d', '@craft/web/assets/updater/dist'),
('a044d4e9', '@lib/jquery.payment'),
('a1859bfa', '@app/web/assets/updates/dist'),
('a2366a55', '@app/web/assets/tablesettings/dist'),
('a25ab212', '@craft/web/assets/updates/dist'),
('a3646c40', '@app/web/assets/feed/dist'),
('a6a08d7', '@app/web/assets/dashboard/dist'),
('a84cdb70', '@lib/garnishjs'),
('a9fd8e52', '@craft/web/assets/recententries/dist'),
('ab1c040a', '@app/web/assets/utilities/dist'),
('abe3d35f', '@lib/fileupload'),
('ad146252', '@verbb/supertable/resources/dist'),
('adec8c7c', '@bower/jquery/dist'),
('af7b1a64', '@lib/velocity'),
('b07c0d25', '@app/web/assets/feed/dist'),
('b12e0b30', '@app/web/assets/tablesettings/dist'),
('b30bd2a1', '@lib/picturefill'),
('b35cb58c', '@lib/jquery.payment'),
('b4afee63', '@lib/jquery-touch-events'),
('b629e4ea', '@lib/prismjs'),
('b7a38ab9', '@app/web/assets/matrix/dist'),
('b804656f', '@app/web/assets/utilities/dist'),
('b881a88d', '@app/web/assets/editentry/dist'),
('bb2d2f44', '@craft/web/assets/editentry/dist'),
('bc637b01', '@lib/velocity'),
('bd0a0f4e', '@lib/fabric'),
('bdaef2f0', '@lib/d3'),
('be78548b', '@app/web/assets/dashboard/dist'),
('be852c1b', '@lib/timepicker'),
('bef4ed19', '@bower/jquery/dist'),
('c116059a', '@lib/jquery-touch-events'),
('c12ac123', '@lib/selectize'),
('c1476ad5', '@app/web/assets/pluginstore/dist'),
('c3f456cf', '@craft/web/assets/updates/dist'),
('c5a6e765', '@craft/web/assets/deprecationerrors/dist'),
('c6b23958', '@lib/picturefill'),
('c7320073', '@app/web/assets/recententries/dist'),
('c7801c9e', '@lib/fileupload'),
('c8171909', '@lib/d3'),
('c967469b', '@app/web/assets/cp/dist'),
('cb4685a9', '@lib/xregexp'),
('cd5953e5', '@app/web/assets/login/dist'),
('ce44d3f', '@lib/jquery-ui'),
('ced5feb9', '@lib/velocity'),
('d0d2699', '@app/web/assets/fields/dist'),
('d1cd3d31', '@lib/d3'),
('d25f0bb0', '@app/web/assets/pluginstore/dist'),
('d2e6e3da', '@lib/timepicker'),
('d2f25151', '@lib/jquery.payment'),
('d42a6116', '@app/web/assets/recententries/dist'),
('d5db4106', '@craft/web/assets/login/dist'),
('d7cb2d67', '@craft/web/assets/utilities/dist'),
('d889663f', '@lib/datepicker-i18n'),
('d8cc21a2', '@lib/jquery-touch-events'),
('da7f27fe', '@app/web/assets/cp/dist'),
('da83cb99', '@craft/web/assets/editentry/dist'),
('daec279e', '@app/web/assets/plugins/dist'),
('ddddf6cb', '@craft/web/assets/craftsupport/dist'),
('de25c4d', '@lib/xregexp'),
('de413280', '@app/web/assets/login/dist'),
('de5a38a6', '@lib/fileupload'),
('df10f91e', '@craft/web/assets/matrix/dist'),
('df5a09c4', '@bower/jquery/dist'),
('df681d60', '@lib/picturefill'),
('dfe18511', '@craft/web/assets/tablesettings/dist'),
('e1d281c1', '@lib/jquery-ui'),
('e2702ab7', '@lib/garnishjs'),
('e2c8cb8f', '@craft/web/assets/feed/dist'),
('e4028fb9', '@app/web/assets/craftsupport/dist'),
('e5efeaf5', '@craft/web/assets/matrixsettings/dist'),
('e770c83c', '@lib'),
('e775ff25', '@lib/selectize'),
('e9dd1022', '@app/web/assets/updater/dist'),
('ea902378', '@app/web/assets/updateswidget/dist'),
('ed19bbaf', '@lib/xregexp'),
('eeecdab1', '@lib/fabric'),
('f0caa231', '@lib/element-resize-detector'),
('f2634e05', '@app/web/assets/updates/dist'),
('f2cae0a4', '@lib/jquery-ui'),
('f444a54c', '@app/web/assets/dashboard/dist'),
('f46e649', '@lib/garnishjs'),
('f71aeedc', '@app/web/assets/craftsupport/dist'),
('f736fe89', '@lib/fabric'),
('f758c95a', '@vendor/craftcms/redactor/lib/redactor'),
('f7f33764', '@craft/web/assets/fields/dist'),
('fac57147', '@app/web/assets/updater/dist'),
('fbaa0e8f', '@lib/garnishjs'),
('fc926716', '@app/web/assets/installer/dist'),
('ff6c3070', '@craft/web/assets/plugins/dist'),
('ffe0771', '@craft/web/assets/feed/dist');

-- --------------------------------------------------------

--
-- Структура таблицы `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `revisions`
--

INSERT INTO `revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 68, 1, 3, NULL),
(2, 11, 1, 4, NULL),
(3, 7, 1, 14, NULL),
(4, 7, 1, 13, NULL),
(5, 2, 1, 14, NULL),
(6, 2, 1, 13, NULL),
(7, 2, 1, 12, NULL),
(8, 2, 1, 11, NULL),
(9, 2, 1, 10, NULL),
(10, 2, 1, 9, NULL),
(11, 2, 1, 8, NULL),
(12, 2, 1, 7, NULL),
(13, 78, 1, 6, NULL),
(14, 78, 1, 5, NULL),
(15, 78, 1, 4, NULL),
(16, 7, 1, 12, NULL),
(17, 7, 1, 11, NULL),
(18, 7, 1, 10, NULL),
(19, 78, 1, 3, NULL),
(20, 7, 1, 9, NULL),
(21, 7, 1, 8, NULL),
(22, 11, 1, 3, NULL),
(23, 68, 1, 2, NULL),
(24, 78, 1, 2, NULL),
(25, 7, 1, 7, NULL),
(26, 42, 1, 2, NULL),
(36, 21, 1, 4, NULL),
(37, 21, 1, 3, NULL),
(38, 16, 1, 9, NULL),
(39, 78, 1, 1, NULL),
(40, 68, 1, 1, NULL),
(41, 2, 1, 6, NULL),
(42, 21, 1, 2, NULL),
(43, 7, 1, 6, NULL),
(44, 11, 1, 2, NULL),
(45, 7, 1, 5, NULL),
(46, 42, 1, 1, NULL),
(47, 37, 1, 1, NULL),
(48, 36, 1, 1, NULL),
(49, 35, 1, 1, NULL),
(50, 34, 1, 1, NULL),
(51, 16, 1, 8, NULL),
(52, 16, 1, 7, NULL),
(53, 16, 1, 6, NULL),
(54, 21, 1, 1, NULL),
(55, 16, 1, 5, NULL),
(56, 16, 1, 4, NULL),
(57, 16, 1, 3, NULL),
(58, 16, 1, 2, NULL),
(59, 16, 1, 1, NULL),
(60, 7, 1, 4, NULL),
(61, 7, 1, 3, NULL),
(62, 11, 1, 1, NULL),
(63, 7, 1, 2, NULL),
(64, 7, 1, 1, NULL),
(65, 2, 1, 5, NULL),
(66, 2, 1, 4, NULL),
(67, 2, 1, 3, NULL),
(68, 2, 1, 2, NULL),
(69, 2, 1, 1, NULL),
(70, 7, 1, 15, 'Applied “Draft 1”'),
(71, 11, 1, 5, 'Applied “Draft 1”'),
(72, 68, 1, 4, 'Applied “Draft 1”'),
(73, 78, 1, 7, 'Applied “Draft 1”'),
(77, 739, 1, 1, 'Revision from Jul 17, 2019, 5:19:28 AM'),
(78, 739, 1, 2, 'Applied “Draft 1”'),
(79, 739, 1, 3, 'Applied “Draft 1”'),
(80, 739, 1, 4, 'Applied “Draft 1”'),
(81, 739, 1, 5, 'Applied “Draft 1”'),
(82, 68, 1, 5, NULL),
(84, 102, 1, 11, NULL),
(85, 102, 1, 12, 'Applied “Draft 1”'),
(86, 102, 1, 13, 'Applied “Draft 1”'),
(87, 7, 1, 16, 'Applied “Draft 1”'),
(88, 7, 1, 17, 'Applied “Draft 2”'),
(89, 7, 1, 18, 'Applied “Draft 4”'),
(90, 102, 1, 14, 'Applied “Draft 1”');

-- --------------------------------------------------------

--
-- Структура таблицы `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'username', 0, 1, ' admin craft '),
(1, 'firstname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'email', 0, 1, ' lutiks2013 gmail com '),
(1, 'slug', 0, 1, ''),
(2, 'slug', 0, 1, ' homepage '),
(2, 'title', 0, 1, ' homepage '),
(2, 'field', 1, 1, ' what is the best platform to create a website '),
(2, 'field', 3, 1, ' it will take under 3 minutes to complete are you ready '),
(2, 'field', 4, 1, ' let s do it '),
(3, 'field', 5, 1, ' let s do it '),
(3, 'field', 6, 1, ''),
(3, 'slug', 0, 1, ''),
(4, 'filename', 0, 1, ' favicon jpeg '),
(4, 'extension', 0, 1, ' jpeg '),
(4, 'kind', 0, 1, ' image '),
(4, 'slug', 0, 1, ''),
(4, 'title', 0, 1, ' favicon '),
(5, 'field', 7, 1, ' wordpress '),
(5, 'field', 8, 1, ''),
(6, 'field', 10, 1, ''),
(6, 'field', 11, 1, ''),
(6, 'field', 12, 1, ''),
(6, 'slug', 0, 1, ''),
(5, 'slug', 0, 1, ' perfomance '),
(5, 'title', 0, 1, ' perfomance '),
(7, 'slug', 0, 1, ' wordpress '),
(7, 'field', 13, 1, ' $$$$$ $$$ $ '),
(8, 'field', 14, 1, ' $$$$$ '),
(8, 'slug', 0, 1, ''),
(9, 'field', 15, 1, ' $$$ '),
(9, 'slug', 0, 1, ''),
(10, 'field', 16, 1, ' $ '),
(10, 'slug', 0, 1, ''),
(11, 'field', 13, 1, ''),
(12, 'field', 14, 1, ''),
(12, 'slug', 0, 1, ''),
(13, 'field', 15, 1, ''),
(13, 'slug', 0, 1, ''),
(14, 'field', 16, 1, ''),
(14, 'slug', 0, 1, ''),
(11, 'slug', 0, 1, ' craft '),
(11, 'title', 0, 1, ' craft '),
(7, 'title', 0, 1, ' wordpress '),
(5, 'field', 19, 1, ' wordpress '),
(15, 'slug', 0, 1, ' base questions '),
(15, 'title', 0, 1, ' base questions '),
(16, 'slug', 0, 1, ' what site type do you need '),
(16, 'title', 0, 1, ' what site type do you need '),
(15, 'field', 20, 1, ''),
(17, 'field', 21, 1, ' wordpress '),
(17, 'field', 22, 1, ' 4 '),
(17, 'slug', 0, 1, ''),
(18, 'field', 21, 1, ' craft '),
(18, 'field', 22, 1, ' 3 '),
(18, 'slug', 0, 1, ''),
(19, 'field', 21, 1, ''),
(19, 'field', 22, 1, ' 5 '),
(19, 'slug', 0, 1, ''),
(20, 'field', 21, 1, ''),
(20, 'field', 22, 1, ' 1 '),
(20, 'slug', 0, 1, ''),
(17, 'field', 27, 1, ' one page website '),
(18, 'field', 27, 1, ' 3 5 '),
(19, 'field', 27, 1, ' 10 20 '),
(20, 'field', 27, 1, ' 20 '),
(16, 'field', 20, 1, ' one page website wordpress 8 craft 7 drupal 4 laravel 4 3 5 wordpress 6 craft 7 drupal 5 laravel 5 10 20 wordpress 4 craft 6 drupal 5 laravel 6 20 wordpress 8 craft 10 drupal 6 laravel 7 '),
(17, 'field', 26, 1, ' 10 '),
(17, 'field', 24, 1, ' 5 '),
(17, 'field', 25, 1, ' 2 '),
(18, 'field', 26, 1, ' 8 '),
(18, 'field', 24, 1, ' 6 '),
(18, 'field', 25, 1, ' 3 '),
(19, 'field', 26, 1, ' 5 '),
(19, 'field', 24, 1, ' 10 '),
(19, 'field', 25, 1, ' 4 '),
(20, 'field', 26, 1, ' 15 '),
(20, 'field', 24, 1, ' 25 '),
(20, 'field', 25, 1, ' 5 '),
(22, 'field', 27, 1, ' 0 99 '),
(22, 'field', 26, 1, ' 10 '),
(22, 'field', 24, 1, ' 5 '),
(22, 'field', 25, 1, ' 0 '),
(22, 'slug', 0, 1, ''),
(23, 'field', 27, 1, ' 100 1499 '),
(23, 'field', 26, 1, ' 15 '),
(23, 'field', 24, 1, ' 20 '),
(23, 'field', 25, 1, ' 30 '),
(23, 'slug', 0, 1, ''),
(24, 'field', 27, 1, ' 1500 '),
(24, 'field', 26, 1, ' 20 '),
(24, 'field', 24, 1, ' 30 '),
(24, 'field', 25, 1, ' 40 '),
(24, 'slug', 0, 1, ''),
(25, 'field', 27, 1, ' i don t actually know '),
(25, 'field', 26, 1, ' 5 '),
(25, 'field', 24, 1, ' 10 '),
(25, 'field', 25, 1, ' 20 '),
(25, 'slug', 0, 1, ''),
(21, 'slug', 0, 1, ' how many visitors per day expected on site '),
(21, 'title', 0, 1, ' how many visitors per day expected on site '),
(17, 'field', 30, 1, ' wordpress 8 craft 7 drupal 4 laravel 4 '),
(26, 'field', 31, 1, ' craft '),
(26, 'field', 32, 1, ' 7 '),
(26, 'slug', 0, 1, ''),
(27, 'field', 31, 1, ' wordpress '),
(27, 'field', 32, 1, ' 8 '),
(27, 'slug', 0, 1, ''),
(18, 'field', 30, 1, ' wordpress 6 craft 7 drupal 5 laravel 5 '),
(28, 'field', 31, 1, ' wordpress '),
(28, 'field', 32, 1, ' 6 '),
(28, 'slug', 0, 1, ''),
(29, 'field', 31, 1, ' craft '),
(29, 'field', 32, 1, ' 7 '),
(29, 'slug', 0, 1, ''),
(19, 'field', 30, 1, ' wordpress 4 craft 6 drupal 5 laravel 6 '),
(30, 'field', 31, 1, ' wordpress '),
(30, 'field', 32, 1, ' 4 '),
(30, 'slug', 0, 1, ''),
(31, 'field', 31, 1, ' craft '),
(31, 'field', 32, 1, ' 6 '),
(31, 'slug', 0, 1, ''),
(20, 'field', 30, 1, ' wordpress 8 craft 10 drupal 6 laravel 7 '),
(32, 'field', 31, 1, ' wordpress '),
(32, 'field', 32, 1, ' 8 '),
(32, 'slug', 0, 1, ''),
(33, 'field', 31, 1, ' craft '),
(33, 'field', 32, 1, ' 10 '),
(33, 'slug', 0, 1, ''),
(34, 'slug', 0, 1, ' performance '),
(34, 'title', 0, 1, ' performance '),
(35, 'slug', 0, 1, ' seo friendly '),
(35, 'title', 0, 1, ' seo friendly '),
(36, 'slug', 0, 1, ' customization '),
(36, 'title', 0, 1, ' customization '),
(37, 'slug', 0, 1, ' scalability '),
(37, 'title', 0, 1, ' scalability '),
(38, 'filename', 0, 1, ' acf contact form 7 zip '),
(38, 'extension', 0, 1, ' zip '),
(38, 'kind', 0, 1, ' compressed '),
(38, 'slug', 0, 1, ''),
(38, 'title', 0, 1, ' acf contact form 7 '),
(39, 'filename', 0, 1, ' cms wordpress jpg '),
(39, 'extension', 0, 1, ' jpg '),
(39, 'kind', 0, 1, ' image '),
(39, 'slug', 0, 1, ''),
(39, 'title', 0, 1, ' cms wordpress '),
(40, 'filename', 0, 1, ' wordpress logotype wmark png '),
(40, 'extension', 0, 1, ' png '),
(40, 'kind', 0, 1, ' image '),
(40, 'slug', 0, 1, ''),
(40, 'title', 0, 1, ' word press logotype wmark '),
(41, 'filename', 0, 1, ' craft logo jpg '),
(41, 'extension', 0, 1, ' jpg '),
(41, 'kind', 0, 1, ' image '),
(41, 'slug', 0, 1, ''),
(41, 'title', 0, 1, ' craft logo '),
(42, 'slug', 0, 1, ' outgoing cost '),
(42, 'title', 0, 1, ' outgoing cost '),
(7, 'field', 17, 1, ' wordpress logo https wordpress org word press logotype wmark best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(118, 'kind', 0, 1, ' image '),
(43, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(43, 'field', 35, 1, ' https wordpress org '),
(43, 'field', 36, 1, ' wordpress logo '),
(43, 'field', 43, 1, ' word press logotype wmark '),
(43, 'slug', 0, 1, ''),
(44, 'field', 44, 1, ' scalability stars performance seo friendly limited3 customization outgoing cost limited5 '),
(118, 'extension', 0, 1, ' svg '),
(45, 'field', 45, 1, ' scalability '),
(45, 'field', 48, 1, ''),
(45, 'field', 49, 1, ''),
(45, 'slug', 0, 1, ''),
(46, 'field', 45, 1, ' performance '),
(118, 'filename', 0, 1, ' stars svg '),
(46, 'field', 48, 1, ''),
(46, 'field', 49, 1, ''),
(46, 'slug', 0, 1, ''),
(47, 'field', 45, 1, ' seo friendly '),
(47, 'field', 47, 1, ''),
(47, 'field', 48, 1, ''),
(47, 'field', 49, 1, ' limited3 '),
(47, 'slug', 0, 1, ''),
(48, 'field', 45, 1, ' customization '),
(48, 'field', 47, 1, ''),
(48, 'field', 48, 1, ''),
(48, 'field', 49, 1, ''),
(48, 'slug', 0, 1, ''),
(49, 'field', 45, 1, ' outgoing cost '),
(49, 'field', 47, 1, ''),
(49, 'field', 48, 1, ''),
(49, 'field', 49, 1, ' limited5 '),
(49, 'slug', 0, 1, ''),
(44, 'slug', 0, 1, ''),
(50, 'filename', 0, 1, ' craft logo jpg '),
(50, 'extension', 0, 1, ' jpg '),
(50, 'kind', 0, 1, ' image '),
(50, 'slug', 0, 1, ''),
(50, 'title', 0, 1, ' craft logo '),
(11, 'field', 17, 1, ' craft logo https craftcms com craft logo best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(11, 'field', 38, 1, ' performance shared seo friendly shared customization shared scalability shared outgoing cost shared '),
(51, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(51, 'field', 35, 1, ' https craftcms com '),
(51, 'field', 36, 1, ' craft logo '),
(51, 'field', 43, 1, ' craft logo '),
(51, 'slug', 0, 1, ''),
(53, 'field', 45, 1, ' performance '),
(53, 'field', 48, 1, ''),
(53, 'slug', 0, 1, ''),
(54, 'field', 45, 1, ' seo friendly '),
(54, 'field', 48, 1, ''),
(54, 'slug', 0, 1, ''),
(55, 'field', 45, 1, ' customization '),
(55, 'field', 48, 1, ''),
(55, 'slug', 0, 1, ''),
(56, 'field', 45, 1, ' scalability '),
(56, 'field', 49, 1, ' shared '),
(56, 'slug', 0, 1, ''),
(57, 'field', 45, 1, ' outgoing cost '),
(57, 'field', 47, 1, ''),
(57, 'slug', 0, 1, ''),
(52, 'slug', 0, 1, ''),
(58, 'field', 31, 1, ' wordpress '),
(58, 'field', 32, 1, ' 5 '),
(58, 'slug', 0, 1, ''),
(59, 'field', 31, 1, ' craft '),
(59, 'field', 32, 1, ' 6 '),
(59, 'slug', 0, 1, ''),
(60, 'field', 31, 1, ' wordpress '),
(60, 'field', 32, 1, ' 4 '),
(60, 'slug', 0, 1, ''),
(61, 'field', 31, 1, ' craft '),
(61, 'field', 32, 1, ' 6 '),
(61, 'slug', 0, 1, ''),
(62, 'field', 31, 1, ' wordpress '),
(62, 'field', 32, 1, ' 4 '),
(62, 'slug', 0, 1, ''),
(63, 'field', 31, 1, ' craft '),
(63, 'field', 32, 1, ' 7 '),
(63, 'slug', 0, 1, ''),
(64, 'field', 31, 1, ' wordpress '),
(64, 'field', 32, 1, ' 3 '),
(64, 'slug', 0, 1, ''),
(65, 'field', 31, 1, ' craft '),
(65, 'field', 32, 1, ' 6 '),
(65, 'slug', 0, 1, ''),
(66, 'filename', 0, 1, ' drupal jpg '),
(66, 'extension', 0, 1, ' jpg '),
(66, 'kind', 0, 1, ' image '),
(66, 'slug', 0, 1, ''),
(66, 'title', 0, 1, ' drupal '),
(67, 'filename', 0, 1, ' dru8 png '),
(67, 'extension', 0, 1, ' png '),
(67, 'kind', 0, 1, ' image '),
(67, 'slug', 0, 1, ''),
(67, 'title', 0, 1, ' dru8 '),
(68, 'field', 38, 1, ' performance text drupal seo friendly stars text drupal customization text drupal scalability text drupal outgoing cost text drupal '),
(69, 'field', 34, 1, ' drupal is the best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(69, 'field', 35, 1, ' https www drupal org '),
(69, 'field', 36, 1, ' drupal logo '),
(69, 'field', 43, 1, ' dru8 '),
(69, 'slug', 0, 1, ''),
(71, 'field', 45, 1, ' performance '),
(71, 'field', 48, 1, ''),
(71, 'slug', 0, 1, ''),
(72, 'field', 45, 1, ' performance '),
(72, 'field', 48, 1, ''),
(72, 'slug', 0, 1, ''),
(73, 'field', 45, 1, ' customization '),
(73, 'field', 48, 1, ''),
(73, 'slug', 0, 1, ''),
(74, 'field', 45, 1, ' scalability '),
(74, 'slug', 0, 1, ''),
(75, 'field', 45, 1, ' outgoing cost '),
(75, 'field', 47, 1, ''),
(75, 'slug', 0, 1, ''),
(70, 'slug', 0, 1, ''),
(68, 'slug', 0, 1, ' drupal '),
(68, 'title', 0, 1, ' drupal '),
(76, 'filename', 0, 1, ' 1485527877166143412 png '),
(76, 'extension', 0, 1, ' png '),
(76, 'kind', 0, 1, ' image '),
(76, 'slug', 0, 1, ''),
(76, 'title', 0, 1, ' 1485527877166143412 '),
(77, 'filename', 0, 1, ' laravel_logo png '),
(77, 'extension', 0, 1, ' png '),
(77, 'kind', 0, 1, ' image '),
(77, 'slug', 0, 1, ''),
(77, 'title', 0, 1, ' laravel logo '),
(78, 'field', 17, 1, ' 1485527877166143412 https laravel com laravel logo laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(79, 'field', 34, 1, ' laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(79, 'field', 35, 1, ' https laravel com '),
(79, 'field', 36, 1, ' 1485527877166143412 '),
(79, 'field', 43, 1, ' laravel logo '),
(79, 'slug', 0, 1, ''),
(80, 'field', 44, 1, ' performance stars seo friendly stars customization stars scalability text test outgoing cost text test '),
(81, 'field', 45, 1, ' performance '),
(81, 'field', 48, 1, ''),
(81, 'slug', 0, 1, ''),
(82, 'field', 45, 1, ' seo friendly '),
(82, 'field', 47, 1, ''),
(82, 'field', 48, 1, ' stars '),
(82, 'slug', 0, 1, ''),
(83, 'field', 45, 1, ' customization '),
(83, 'field', 47, 1, ' stars '),
(83, 'field', 48, 1, ''),
(83, 'slug', 0, 1, ''),
(84, 'field', 45, 1, ' scalability '),
(84, 'field', 47, 1, ''),
(84, 'field', 48, 1, ''),
(84, 'field', 49, 1, ' text test '),
(84, 'slug', 0, 1, ''),
(85, 'field', 45, 1, ' outgoing cost '),
(85, 'field', 47, 1, ''),
(85, 'field', 48, 1, ''),
(85, 'field', 49, 1, ' text test '),
(85, 'slug', 0, 1, ''),
(80, 'slug', 0, 1, ''),
(78, 'slug', 0, 1, ' laravel '),
(78, 'title', 0, 1, ' laravel '),
(86, 'field', 31, 1, ' drupal '),
(86, 'field', 32, 1, ' 4 '),
(86, 'slug', 0, 1, ''),
(87, 'field', 31, 1, ' laravel '),
(87, 'field', 32, 1, ' 4 '),
(87, 'slug', 0, 1, ''),
(88, 'field', 31, 1, ' drupal '),
(88, 'field', 32, 1, ' 5 '),
(88, 'slug', 0, 1, ''),
(89, 'field', 31, 1, ' laravel '),
(89, 'field', 32, 1, ' 5 '),
(89, 'slug', 0, 1, ''),
(90, 'field', 31, 1, ' drupal '),
(90, 'field', 32, 1, ' 5 '),
(90, 'slug', 0, 1, ''),
(91, 'field', 31, 1, ' laravel '),
(91, 'field', 32, 1, ' 6 '),
(91, 'slug', 0, 1, ''),
(92, 'field', 31, 1, ' drupal '),
(92, 'field', 32, 1, ' 6 '),
(92, 'slug', 0, 1, ''),
(93, 'field', 31, 1, ' laravel '),
(93, 'field', 32, 1, ' 7 '),
(93, 'slug', 0, 1, ''),
(21, 'field', 20, 1, ' 0 99 wordpress 5 craft 6 laravel 0 drupal 4 100 1499 wordpress 4 craft 6 laravel 4 drupal 5 1500 wordpress 4 craft 7 laravel 6 drupal 5 i don t actually know wordpress 3 craft 6 laravel 4 drupal 2 '),
(22, 'field', 30, 1, ' wordpress 5 craft 6 laravel 0 drupal 4 '),
(94, 'field', 31, 1, ' laravel '),
(94, 'field', 32, 1, ' 0 '),
(94, 'slug', 0, 1, ''),
(95, 'field', 31, 1, ' drupal '),
(95, 'field', 32, 1, ' 4 '),
(95, 'slug', 0, 1, ''),
(23, 'field', 30, 1, ' wordpress 4 craft 6 laravel 4 drupal 5 '),
(96, 'field', 31, 1, ' laravel '),
(96, 'field', 32, 1, ' 4 '),
(96, 'slug', 0, 1, ''),
(97, 'field', 31, 1, ' drupal '),
(97, 'field', 32, 1, ' 5 '),
(97, 'slug', 0, 1, ''),
(24, 'field', 30, 1, ' wordpress 4 craft 7 laravel 6 drupal 5 '),
(98, 'field', 31, 1, ' laravel '),
(98, 'field', 32, 1, ' 6 '),
(98, 'slug', 0, 1, ''),
(99, 'field', 31, 1, ' drupal '),
(99, 'field', 32, 1, ' 5 '),
(99, 'slug', 0, 1, ''),
(25, 'field', 30, 1, ' wordpress 3 craft 6 laravel 4 drupal 2 '),
(100, 'field', 31, 1, ' laravel '),
(100, 'field', 32, 1, ' 4 '),
(100, 'slug', 0, 1, ''),
(101, 'field', 31, 1, ' drupal '),
(101, 'field', 32, 1, ' 2 '),
(101, 'slug', 0, 1, ''),
(102, 'slug', 0, 1, ' results '),
(102, 'title', 0, 1, ' results '),
(102, 'field', 51, 1, ' recommendation '),
(102, 'field', 52, 1, ' need more detailed advice or a project cost estimate '),
(102, 'field', 53, 1, ' 1 234 123 1234 '),
(102, 'field', 54, 1, ' laravel drupal craft wordpress '),
(102, 'field', 17, 1, ' our platform test description '),
(103, 'field', 34, 1, ' our platform test description '),
(103, 'field', 35, 1, ''),
(103, 'field', 36, 1, ''),
(103, 'field', 43, 1, ''),
(103, 'slug', 0, 1, ''),
(34, 'field', 55, 1, ''),
(35, 'field', 55, 1, ''),
(36, 'field', 55, 1, ''),
(37, 'field', 55, 1, ''),
(42, 'field', 55, 1, ''),
(104, 'field', 56, 1, ''),
(105, 'field', 59, 1, ''),
(105, 'field', 60, 1, ''),
(105, 'field', 61, 1, ''),
(105, 'slug', 0, 1, ''),
(104, 'slug', 0, 1, ''),
(7, 'field', 38, 1, ' scalability stars performance seo friendly limited3 customization outgoing cost limited5 '),
(7, 'field', 55, 1, ''),
(45, 'field', 47, 1, ' stars '),
(46, 'field', 47, 1, ''),
(111, 'field', 94, 1, ' 4 wordpress '),
(120, 'filename', 0, 1, ' all cms svg '),
(78, 'field', 38, 1, ' performance stars seo friendly stars customization stars scalability text test outgoing cost text test '),
(78, 'field', 55, 1, ''),
(81, 'field', 49, 1, ''),
(82, 'field', 49, 1, ''),
(83, 'field', 49, 1, ''),
(81, 'field', 47, 1, ' stars '),
(106, 'field', 56, 1, ''),
(107, 'field', 59, 1, ''),
(107, 'field', 60, 1, ''),
(107, 'field', 61, 1, ''),
(107, 'slug', 0, 1, ''),
(106, 'slug', 0, 1, ''),
(68, 'field', 55, 1, ''),
(70, 'field', 44, 1, ' performance text drupal performance text drupal customization text drupal scalability text drupal outgoing cost text drupal '),
(71, 'field', 47, 1, ''),
(71, 'field', 49, 1, ' text drupal '),
(72, 'field', 47, 1, ''),
(72, 'field', 49, 1, ' text drupal '),
(73, 'field', 47, 1, ''),
(73, 'field', 49, 1, ' text drupal '),
(74, 'field', 47, 1, ''),
(74, 'field', 48, 1, ''),
(74, 'field', 49, 1, ' text drupal '),
(75, 'field', 48, 1, ''),
(75, 'field', 49, 1, ' text drupal '),
(11, 'field', 55, 1, ''),
(52, 'field', 44, 1, ' performance shared seo friendly shared customization shared scalability shared outgoing cost shared '),
(53, 'field', 47, 1, ''),
(53, 'field', 49, 1, ' shared '),
(54, 'field', 47, 1, ''),
(54, 'field', 49, 1, ' shared '),
(55, 'field', 47, 1, ''),
(55, 'field', 49, 1, ' shared '),
(56, 'field', 47, 1, ''),
(56, 'field', 48, 1, ''),
(57, 'field', 48, 1, ''),
(57, 'field', 49, 1, ' shared '),
(7, 'field', 63, 1, ' 4 customization 5 rerere 4 seo friendly 4 4 '),
(108, 'field', 64, 1, ' 4 customization 5 rerere 4 seo friendly 4 4 '),
(109, 'field', 65, 1, ' customization '),
(109, 'field', 66, 1, ' 4 '),
(109, 'field', 67, 1, ' 5 '),
(109, 'field', 68, 1, ' rerere '),
(109, 'slug', 0, 1, ''),
(110, 'field', 65, 1, ' seo friendly '),
(110, 'field', 66, 1, ' 4 '),
(110, 'field', 67, 1, ' 4 '),
(110, 'field', 68, 1, ' 4 '),
(110, 'slug', 0, 1, ''),
(108, 'slug', 0, 1, ''),
(78, 'field', 63, 1, ''),
(112, 'field', 95, 1, ' wordpress '),
(112, 'field', 96, 1, ' 4 '),
(112, 'slug', 0, 1, ''),
(111, 'slug', 0, 1, ' seo properties '),
(111, 'title', 0, 1, ' seo properties '),
(113, 'field', 94, 1, ' 6 laravel 5 drupal 3 craft 2 wordpress '),
(114, 'field', 95, 1, ' laravel '),
(114, 'field', 96, 1, ' 6 '),
(114, 'slug', 0, 1, ''),
(115, 'field', 95, 1, ' drupal '),
(115, 'field', 96, 1, ' 5 '),
(115, 'slug', 0, 1, ''),
(116, 'field', 95, 1, ' craft '),
(116, 'field', 96, 1, ' 3 '),
(116, 'slug', 0, 1, ''),
(117, 'field', 95, 1, ' wordpress '),
(117, 'field', 96, 1, ' 2 '),
(117, 'slug', 0, 1, ''),
(113, 'slug', 0, 1, ' security '),
(113, 'title', 0, 1, ' security '),
(118, 'slug', 0, 1, ''),
(118, 'title', 0, 1, ' stars '),
(119, 'filename', 0, 1, ' stars svg '),
(119, 'extension', 0, 1, ' svg '),
(119, 'kind', 0, 1, ' image '),
(119, 'slug', 0, 1, ''),
(119, 'title', 0, 1, ' stars '),
(120, 'extension', 0, 1, ' svg '),
(120, 'kind', 0, 1, ' image '),
(120, 'slug', 0, 1, ''),
(120, 'title', 0, 1, ' all cms '),
(2, 'field', 103, 1, ' image '),
(121, 'filename', 0, 1, ' cms all svg '),
(121, 'extension', 0, 1, ' svg '),
(121, 'kind', 0, 1, ' image '),
(121, 'slug', 0, 1, ''),
(121, 'title', 0, 1, ' cms all '),
(122, 'filename', 0, 1, ' cms all png '),
(122, 'extension', 0, 1, ' png '),
(122, 'kind', 0, 1, ' image '),
(122, 'slug', 0, 1, ''),
(122, 'title', 0, 1, ' cms all '),
(123, 'filename', 0, 1, ' image png '),
(123, 'extension', 0, 1, ' png '),
(123, 'kind', 0, 1, ' image '),
(123, 'slug', 0, 1, ''),
(123, 'title', 0, 1, ' image '),
(2, 'field', 104, 1, ' this handy tool will help you to make a decision on what could be a right solution for your future website goals '),
(124, 'filename', 0, 1, ' wordpress logo svg '),
(124, 'extension', 0, 1, ' svg '),
(124, 'kind', 0, 1, ' image '),
(2, 'field', 2, 1, ' sure you can find some comparison lists online that compare every tiny feature of all platforms existing on the earth we tried some it will took years to choose the right website builder we put together only most popular and modern platforms cms content management systems and online website builders to make this decision easer for you answer simple questions we will explain our decision in simple words '),
(124, 'slug', 0, 1, ''),
(124, 'title', 0, 1, ' wordpress logo '),
(125, 'filename', 0, 1, ' wordpress logo png '),
(125, 'extension', 0, 1, ' png '),
(125, 'kind', 0, 1, ' image '),
(125, 'slug', 0, 1, ''),
(125, 'title', 0, 1, ' wordpress logo '),
(126, 'filename', 0, 1, ' craft logo png '),
(126, 'extension', 0, 1, ' png '),
(126, 'kind', 0, 1, ' image '),
(126, 'slug', 0, 1, ''),
(126, 'title', 0, 1, ' craft logo '),
(127, 'filename', 0, 1, ' drupal logo png '),
(127, 'extension', 0, 1, ' png '),
(127, 'kind', 0, 1, ' image '),
(127, 'slug', 0, 1, ''),
(127, 'title', 0, 1, ' drupal logo '),
(68, 'field', 17, 1, ' drupal logo https www drupal org dru8 drupal is the best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(129, 'slug', 0, 1, ''),
(129, 'field', 34, 1, ' drupal is the best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(129, 'field', 35, 1, ' https www drupal org '),
(129, 'field', 36, 1, ' drupal logo '),
(129, 'field', 43, 1, ' dru8 '),
(131, 'slug', 0, 1, ''),
(131, 'field', 45, 1, ' performance '),
(131, 'field', 47, 1, ''),
(131, 'field', 48, 1, ''),
(131, 'field', 49, 1, ' text drupal '),
(132, 'slug', 0, 1, ''),
(132, 'field', 45, 1, ' performance '),
(132, 'field', 47, 1, ''),
(132, 'field', 48, 1, ''),
(132, 'field', 49, 1, ' text drupal '),
(133, 'slug', 0, 1, ''),
(133, 'field', 45, 1, ' customization '),
(133, 'field', 47, 1, ''),
(133, 'field', 48, 1, ''),
(133, 'field', 49, 1, ' text drupal '),
(134, 'slug', 0, 1, ''),
(134, 'field', 45, 1, ' scalability '),
(134, 'field', 47, 1, ''),
(134, 'field', 48, 1, ''),
(134, 'field', 49, 1, ' text drupal '),
(135, 'slug', 0, 1, ''),
(135, 'field', 45, 1, ' outgoing cost '),
(135, 'field', 47, 1, ''),
(135, 'field', 48, 1, ''),
(135, 'field', 49, 1, ' text drupal '),
(137, 'slug', 0, 1, ''),
(137, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(137, 'field', 35, 1, ' https craftcms com '),
(137, 'field', 36, 1, ' craft logo '),
(137, 'field', 43, 1, ' craft logo '),
(139, 'slug', 0, 1, ''),
(139, 'field', 45, 1, ' performance '),
(139, 'field', 47, 1, ''),
(139, 'field', 48, 1, ''),
(139, 'field', 49, 1, ' shared '),
(140, 'slug', 0, 1, ''),
(140, 'field', 45, 1, ' seo friendly '),
(140, 'field', 47, 1, ''),
(140, 'field', 48, 1, ''),
(140, 'field', 49, 1, ' shared '),
(141, 'slug', 0, 1, ''),
(141, 'field', 45, 1, ' customization '),
(141, 'field', 47, 1, ''),
(141, 'field', 48, 1, ''),
(141, 'field', 49, 1, ' shared '),
(142, 'slug', 0, 1, ''),
(142, 'field', 45, 1, ' scalability '),
(142, 'field', 47, 1, ''),
(142, 'field', 48, 1, ''),
(142, 'field', 49, 1, ' shared '),
(143, 'slug', 0, 1, ''),
(143, 'field', 45, 1, ' outgoing cost '),
(143, 'field', 47, 1, ''),
(143, 'field', 48, 1, ''),
(143, 'field', 49, 1, ' shared '),
(145, 'slug', 0, 1, ''),
(145, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(145, 'field', 35, 1, ' https wordpress org '),
(145, 'field', 36, 1, ' wordpress logo '),
(145, 'field', 43, 1, ' word press logotype wmark '),
(147, 'slug', 0, 1, ''),
(147, 'field', 45, 1, ' scalability '),
(147, 'field', 47, 1, ' stars '),
(147, 'field', 48, 1, ''),
(147, 'field', 49, 1, ''),
(148, 'slug', 0, 1, ''),
(148, 'field', 45, 1, ' performance '),
(148, 'field', 47, 1, ''),
(148, 'field', 48, 1, ''),
(148, 'field', 49, 1, ''),
(149, 'slug', 0, 1, ''),
(149, 'field', 45, 1, ' seo friendly '),
(149, 'field', 47, 1, ''),
(149, 'field', 48, 1, ''),
(149, 'field', 49, 1, ' limited3 '),
(150, 'slug', 0, 1, ''),
(150, 'field', 45, 1, ' customization '),
(150, 'field', 47, 1, ''),
(150, 'field', 48, 1, ''),
(150, 'field', 49, 1, ''),
(151, 'slug', 0, 1, ''),
(151, 'field', 45, 1, ' outgoing cost '),
(151, 'field', 47, 1, ''),
(151, 'field', 48, 1, ''),
(151, 'field', 49, 1, ' limited5 '),
(153, 'slug', 0, 1, ''),
(153, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(153, 'field', 35, 1, ' https wordpress org '),
(153, 'field', 36, 1, ' wordpress logo '),
(153, 'field', 43, 1, ' word press logotype wmark '),
(155, 'slug', 0, 1, ''),
(155, 'field', 45, 1, ' scalability '),
(155, 'field', 47, 1, ' stars '),
(155, 'field', 48, 1, ''),
(155, 'field', 49, 1, ''),
(156, 'slug', 0, 1, ''),
(156, 'field', 45, 1, ' performance '),
(156, 'field', 47, 1, ''),
(156, 'field', 48, 1, ''),
(156, 'field', 49, 1, ''),
(157, 'slug', 0, 1, ''),
(157, 'field', 45, 1, ' seo friendly '),
(157, 'field', 47, 1, ''),
(157, 'field', 48, 1, ''),
(157, 'field', 49, 1, ' limited3 '),
(158, 'slug', 0, 1, ''),
(158, 'field', 45, 1, ' customization '),
(158, 'field', 47, 1, ''),
(158, 'field', 48, 1, ''),
(158, 'field', 49, 1, ''),
(159, 'slug', 0, 1, ''),
(159, 'field', 45, 1, ' outgoing cost '),
(159, 'field', 47, 1, ''),
(159, 'field', 48, 1, ''),
(159, 'field', 49, 1, ' limited5 '),
(169, 'slug', 0, 1, ''),
(169, 'field', 34, 1, ' laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(169, 'field', 35, 1, ' https laravel com '),
(169, 'field', 36, 1, ' 1485527877166143412 '),
(169, 'field', 43, 1, ' laravel logo '),
(171, 'slug', 0, 1, ''),
(171, 'field', 45, 1, ' performance '),
(171, 'field', 47, 1, ' stars '),
(171, 'field', 48, 1, ''),
(171, 'field', 49, 1, ''),
(172, 'slug', 0, 1, ''),
(172, 'field', 45, 1, ' seo friendly '),
(172, 'field', 47, 1, ''),
(172, 'field', 48, 1, ' stars '),
(172, 'field', 49, 1, ''),
(173, 'slug', 0, 1, ''),
(173, 'field', 45, 1, ' customization '),
(173, 'field', 47, 1, ' stars '),
(173, 'field', 48, 1, ''),
(173, 'field', 49, 1, ''),
(174, 'slug', 0, 1, ''),
(174, 'field', 45, 1, ' scalability '),
(174, 'field', 47, 1, ''),
(174, 'field', 48, 1, ''),
(174, 'field', 49, 1, ' text test '),
(175, 'slug', 0, 1, ''),
(175, 'field', 45, 1, ' outgoing cost '),
(175, 'field', 47, 1, ''),
(175, 'field', 48, 1, ''),
(175, 'field', 49, 1, ' text test '),
(177, 'slug', 0, 1, ''),
(177, 'field', 34, 1, ' laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(177, 'field', 35, 1, ' https laravel com '),
(177, 'field', 36, 1, ' 1485527877166143412 '),
(177, 'field', 43, 1, ' laravel logo '),
(179, 'slug', 0, 1, ''),
(179, 'field', 45, 1, ' performance '),
(179, 'field', 47, 1, ' stars '),
(179, 'field', 48, 1, ' stars '),
(179, 'field', 49, 1, ''),
(180, 'slug', 0, 1, ''),
(180, 'field', 45, 1, ' seo friendly '),
(180, 'field', 47, 1, ''),
(180, 'field', 48, 1, ''),
(180, 'field', 49, 1, ''),
(181, 'slug', 0, 1, ''),
(181, 'field', 45, 1, ' customization '),
(181, 'field', 47, 1, ''),
(181, 'field', 48, 1, ''),
(181, 'field', 49, 1, ''),
(182, 'slug', 0, 1, ''),
(182, 'field', 45, 1, ' scalability '),
(182, 'field', 47, 1, ''),
(182, 'field', 48, 1, ''),
(182, 'field', 49, 1, ' text test '),
(183, 'slug', 0, 1, ''),
(183, 'field', 45, 1, ' outgoing cost '),
(183, 'field', 47, 1, ''),
(183, 'field', 48, 1, ''),
(183, 'field', 49, 1, ' text test '),
(185, 'slug', 0, 1, ''),
(185, 'field', 34, 1, ' laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(185, 'field', 35, 1, ' https laravel com '),
(185, 'field', 36, 1, ' 1485527877166143412 '),
(185, 'field', 43, 1, ' laravel logo '),
(187, 'slug', 0, 1, ''),
(187, 'field', 45, 1, ' performance '),
(187, 'field', 47, 1, ''),
(187, 'field', 48, 1, ' stars '),
(187, 'field', 49, 1, ''),
(188, 'slug', 0, 1, ''),
(188, 'field', 45, 1, ' seo friendly '),
(188, 'field', 47, 1, ''),
(188, 'field', 48, 1, ''),
(188, 'field', 49, 1, ''),
(189, 'slug', 0, 1, ''),
(189, 'field', 45, 1, ' customization '),
(189, 'field', 47, 1, ''),
(189, 'field', 48, 1, ''),
(189, 'field', 49, 1, ''),
(190, 'slug', 0, 1, ''),
(190, 'field', 45, 1, ' scalability '),
(190, 'field', 47, 1, ''),
(190, 'field', 48, 1, ''),
(190, 'field', 49, 1, ' text test '),
(191, 'slug', 0, 1, ''),
(191, 'field', 45, 1, ' outgoing cost '),
(191, 'field', 47, 1, ''),
(191, 'field', 48, 1, ''),
(191, 'field', 49, 1, ' text test '),
(193, 'slug', 0, 1, ''),
(193, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(193, 'field', 35, 1, ' https wordpress org '),
(193, 'field', 36, 1, ' cms wordpress '),
(193, 'field', 43, 1, ' word press logotype wmark '),
(195, 'slug', 0, 1, ''),
(195, 'field', 45, 1, ' scalability '),
(195, 'field', 47, 1, ' stars '),
(195, 'field', 48, 1, ''),
(195, 'field', 49, 1, ''),
(196, 'slug', 0, 1, ''),
(196, 'field', 45, 1, ' performance '),
(196, 'field', 47, 1, ''),
(196, 'field', 48, 1, ''),
(196, 'field', 49, 1, ''),
(197, 'slug', 0, 1, ''),
(197, 'field', 45, 1, ' seo friendly '),
(197, 'field', 47, 1, ''),
(197, 'field', 48, 1, ''),
(197, 'field', 49, 1, ' limited3 '),
(198, 'slug', 0, 1, ''),
(198, 'field', 45, 1, ' customization '),
(198, 'field', 47, 1, ''),
(198, 'field', 48, 1, ''),
(198, 'field', 49, 1, ''),
(199, 'slug', 0, 1, ''),
(199, 'field', 45, 1, ' outgoing cost '),
(199, 'field', 47, 1, ''),
(199, 'field', 48, 1, ''),
(199, 'field', 49, 1, ' limited5 '),
(201, 'slug', 0, 1, ''),
(201, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(201, 'field', 35, 1, ' https wordpress org '),
(201, 'field', 36, 1, ' cms wordpress '),
(201, 'field', 43, 1, ' word press logotype wmark '),
(203, 'slug', 0, 1, ''),
(203, 'field', 45, 1, ' scalability '),
(203, 'field', 47, 1, ''),
(203, 'field', 48, 1, ''),
(203, 'field', 49, 1, ''),
(204, 'slug', 0, 1, ''),
(204, 'field', 45, 1, ' performance '),
(204, 'field', 47, 1, ''),
(204, 'field', 48, 1, ''),
(204, 'field', 49, 1, ''),
(205, 'slug', 0, 1, ''),
(205, 'field', 45, 1, ' seo friendly '),
(205, 'field', 47, 1, ''),
(205, 'field', 48, 1, ''),
(205, 'field', 49, 1, ' limited3 '),
(206, 'slug', 0, 1, ''),
(206, 'field', 45, 1, ' customization '),
(206, 'field', 47, 1, ''),
(206, 'field', 48, 1, ''),
(206, 'field', 49, 1, ''),
(207, 'slug', 0, 1, ''),
(207, 'field', 45, 1, ' outgoing cost '),
(207, 'field', 47, 1, ''),
(207, 'field', 48, 1, ''),
(207, 'field', 49, 1, ' limited5 '),
(209, 'slug', 0, 1, ''),
(209, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(209, 'field', 35, 1, ' https wordpress org '),
(209, 'field', 36, 1, ' cms wordpress '),
(209, 'field', 43, 1, ' word press logotype wmark '),
(211, 'slug', 0, 1, ''),
(211, 'field', 45, 1, ' scalability '),
(211, 'field', 47, 1, ' stars '),
(211, 'field', 48, 1, ''),
(211, 'field', 49, 1, ''),
(212, 'slug', 0, 1, ''),
(212, 'field', 45, 1, ' performance '),
(212, 'field', 47, 1, ''),
(212, 'field', 48, 1, ''),
(212, 'field', 49, 1, ''),
(213, 'slug', 0, 1, ''),
(213, 'field', 45, 1, ' seo friendly '),
(213, 'field', 47, 1, ''),
(213, 'field', 48, 1, ''),
(213, 'field', 49, 1, ' limited3 '),
(214, 'slug', 0, 1, ''),
(214, 'field', 45, 1, ' customization '),
(214, 'field', 47, 1, ''),
(214, 'field', 48, 1, ''),
(214, 'field', 49, 1, ''),
(215, 'slug', 0, 1, ''),
(215, 'field', 45, 1, ' outgoing cost '),
(215, 'field', 47, 1, ''),
(215, 'field', 48, 1, ''),
(215, 'field', 49, 1, ' limited5 '),
(217, 'slug', 0, 1, ''),
(217, 'field', 34, 1, ' laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(217, 'field', 35, 1, ' https laravel com '),
(217, 'field', 36, 1, ' 1485527877166143412 '),
(217, 'field', 43, 1, ' laravel logo '),
(219, 'slug', 0, 1, ''),
(219, 'field', 45, 1, ' performance '),
(219, 'field', 47, 1, ' stars '),
(219, 'field', 48, 1, ''),
(219, 'field', 49, 1, ''),
(220, 'slug', 0, 1, ''),
(220, 'field', 45, 1, ' seo friendly '),
(220, 'field', 47, 1, ''),
(220, 'field', 48, 1, ' stars '),
(220, 'field', 49, 1, ''),
(221, 'slug', 0, 1, ''),
(221, 'field', 45, 1, ' customization '),
(221, 'field', 47, 1, ' stars '),
(221, 'field', 48, 1, ''),
(221, 'field', 49, 1, ''),
(222, 'slug', 0, 1, ''),
(222, 'field', 45, 1, ' scalability '),
(222, 'field', 47, 1, ''),
(222, 'field', 48, 1, ''),
(222, 'field', 49, 1, ' text test '),
(223, 'slug', 0, 1, ''),
(223, 'field', 45, 1, ' outgoing cost '),
(223, 'field', 47, 1, ''),
(223, 'field', 48, 1, ''),
(223, 'field', 49, 1, ' text test '),
(225, 'slug', 0, 1, ''),
(225, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(225, 'field', 35, 1, ' https wordpress org '),
(225, 'field', 36, 1, ' cms wordpress '),
(225, 'field', 43, 1, ' word press logotype wmark '),
(227, 'slug', 0, 1, ''),
(227, 'field', 45, 1, ' scalability '),
(227, 'field', 47, 1, ' stars '),
(227, 'field', 48, 1, ''),
(227, 'field', 49, 1, ' limited1 '),
(228, 'slug', 0, 1, ''),
(228, 'field', 45, 1, ' performance '),
(228, 'field', 47, 1, ''),
(228, 'field', 48, 1, ''),
(228, 'field', 49, 1, ' limited2 '),
(229, 'slug', 0, 1, ''),
(229, 'field', 45, 1, ' seo friendly '),
(229, 'field', 47, 1, ''),
(229, 'field', 48, 1, ''),
(229, 'field', 49, 1, ' limited3 '),
(230, 'slug', 0, 1, ''),
(230, 'field', 45, 1, ' customization '),
(230, 'field', 47, 1, ''),
(230, 'field', 48, 1, ''),
(230, 'field', 49, 1, ' limited4 '),
(231, 'slug', 0, 1, ''),
(231, 'field', 45, 1, ' outgoing cost '),
(231, 'field', 47, 1, ''),
(231, 'field', 48, 1, ''),
(231, 'field', 49, 1, ' limited5 '),
(233, 'slug', 0, 1, ''),
(233, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(233, 'field', 35, 1, ' https wordpress org '),
(233, 'field', 36, 1, ' cms wordpress '),
(233, 'field', 43, 1, ' word press logotype wmark '),
(235, 'slug', 0, 1, ''),
(235, 'field', 45, 1, ' scalability '),
(235, 'field', 47, 1, ' stars '),
(235, 'field', 48, 1, ''),
(235, 'field', 49, 1, ' limited1 '),
(236, 'slug', 0, 1, ''),
(236, 'field', 45, 1, ' performance '),
(236, 'field', 47, 1, ''),
(236, 'field', 48, 1, ''),
(236, 'field', 49, 1, ' limited2 '),
(237, 'slug', 0, 1, ''),
(237, 'field', 45, 1, ' seo friendly '),
(237, 'field', 47, 1, ''),
(237, 'field', 48, 1, ''),
(237, 'field', 49, 1, ' limited3 '),
(238, 'slug', 0, 1, ''),
(238, 'field', 45, 1, ' customization '),
(238, 'field', 47, 1, ''),
(238, 'field', 48, 1, ''),
(238, 'field', 49, 1, ' limited4 '),
(239, 'slug', 0, 1, ''),
(239, 'field', 45, 1, ' outgoing cost '),
(239, 'field', 47, 1, ''),
(239, 'field', 48, 1, ''),
(239, 'field', 49, 1, ' limited5 '),
(241, 'slug', 0, 1, ''),
(241, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(241, 'field', 35, 1, ' https craftcms com '),
(241, 'field', 36, 1, ' craft logo '),
(241, 'field', 43, 1, ' craft logo '),
(243, 'slug', 0, 1, ''),
(243, 'field', 45, 1, ' performance '),
(243, 'field', 47, 1, ''),
(243, 'field', 48, 1, ''),
(243, 'field', 49, 1, ' shared '),
(244, 'slug', 0, 1, ''),
(244, 'field', 45, 1, ' seo friendly '),
(244, 'field', 47, 1, ''),
(244, 'field', 48, 1, ''),
(244, 'field', 49, 1, ' shared '),
(245, 'slug', 0, 1, ''),
(245, 'field', 45, 1, ' customization '),
(245, 'field', 47, 1, ''),
(245, 'field', 48, 1, ''),
(245, 'field', 49, 1, ' shared '),
(246, 'slug', 0, 1, ''),
(246, 'field', 45, 1, ' scalability '),
(246, 'field', 47, 1, ''),
(246, 'field', 48, 1, ''),
(246, 'field', 49, 1, ' shared '),
(247, 'slug', 0, 1, ''),
(247, 'field', 45, 1, ' outgoing cost '),
(247, 'field', 47, 1, ''),
(247, 'field', 48, 1, ''),
(247, 'field', 49, 1, ' shared '),
(249, 'slug', 0, 1, ''),
(249, 'field', 34, 1, ' drupal is the best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(249, 'field', 35, 1, ' https www drupal org '),
(249, 'field', 36, 1, ' drupal '),
(249, 'field', 43, 1, ' dru8 '),
(251, 'slug', 0, 1, ''),
(251, 'field', 45, 1, ' performance '),
(251, 'field', 47, 1, ''),
(251, 'field', 48, 1, ''),
(251, 'field', 49, 1, ' text drupal '),
(252, 'slug', 0, 1, ''),
(252, 'field', 45, 1, ' performance '),
(252, 'field', 47, 1, ''),
(252, 'field', 48, 1, ''),
(252, 'field', 49, 1, ' text drupal '),
(253, 'slug', 0, 1, ''),
(253, 'field', 45, 1, ' customization '),
(253, 'field', 47, 1, ''),
(253, 'field', 48, 1, ''),
(253, 'field', 49, 1, ' text drupal '),
(254, 'slug', 0, 1, ''),
(254, 'field', 45, 1, ' scalability '),
(254, 'field', 47, 1, ''),
(254, 'field', 48, 1, ''),
(254, 'field', 49, 1, ' text drupal '),
(255, 'slug', 0, 1, ''),
(255, 'field', 45, 1, ' outgoing cost '),
(255, 'field', 47, 1, ''),
(255, 'field', 48, 1, ''),
(255, 'field', 49, 1, ' text drupal '),
(257, 'slug', 0, 1, ''),
(257, 'field', 34, 1, ' laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(257, 'field', 35, 1, ' https laravel com '),
(257, 'field', 36, 1, ' 1485527877166143412 '),
(257, 'field', 43, 1, ' laravel logo '),
(259, 'slug', 0, 1, ''),
(259, 'field', 45, 1, ' performance '),
(259, 'field', 47, 1, ' stars '),
(259, 'field', 48, 1, ''),
(259, 'field', 49, 1, ' text test '),
(260, 'slug', 0, 1, ''),
(260, 'field', 45, 1, ' seo friendly '),
(260, 'field', 47, 1, ''),
(260, 'field', 48, 1, ' stars '),
(260, 'field', 49, 1, ' text test '),
(261, 'slug', 0, 1, ''),
(261, 'field', 45, 1, ' customization '),
(261, 'field', 47, 1, ' stars '),
(261, 'field', 48, 1, ''),
(261, 'field', 49, 1, ' text test '),
(262, 'slug', 0, 1, ''),
(262, 'field', 45, 1, ' scalability '),
(262, 'field', 47, 1, ''),
(262, 'field', 48, 1, ''),
(262, 'field', 49, 1, ' text test '),
(263, 'slug', 0, 1, ''),
(263, 'field', 45, 1, ' outgoing cost '),
(263, 'field', 47, 1, ''),
(263, 'field', 48, 1, ''),
(263, 'field', 49, 1, ' text test '),
(265, 'slug', 0, 1, ''),
(265, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(265, 'field', 35, 1, ' https wordpress org '),
(265, 'field', 36, 1, ' cms wordpress '),
(265, 'field', 43, 1, ' word press logotype wmark '),
(267, 'slug', 0, 1, ''),
(267, 'field', 45, 1, ' scalability '),
(267, 'field', 47, 1, ' stars '),
(267, 'field', 48, 1, ''),
(267, 'field', 49, 1, ' limited1 '),
(268, 'slug', 0, 1, ''),
(268, 'field', 45, 1, ' performance '),
(268, 'field', 47, 1, ''),
(268, 'field', 48, 1, ''),
(268, 'field', 49, 1, ' limited2 '),
(269, 'slug', 0, 1, ''),
(269, 'field', 45, 1, ' seo friendly '),
(269, 'field', 47, 1, ''),
(269, 'field', 48, 1, ''),
(269, 'field', 49, 1, ' limited3 '),
(270, 'slug', 0, 1, ''),
(270, 'field', 45, 1, ' customization '),
(270, 'field', 47, 1, ''),
(270, 'field', 48, 1, ''),
(270, 'field', 49, 1, ' limited4 '),
(271, 'slug', 0, 1, ''),
(271, 'field', 45, 1, ' outgoing cost '),
(271, 'field', 47, 1, ''),
(271, 'field', 48, 1, ''),
(271, 'field', 49, 1, ' limited5 '),
(284, 'slug', 0, 1, ''),
(284, 'field', 31, 1, ' wordpress '),
(284, 'field', 32, 1, ' 5 '),
(285, 'slug', 0, 1, ''),
(285, 'field', 31, 1, ' craft '),
(285, 'field', 32, 1, ' 6 '),
(286, 'slug', 0, 1, ''),
(286, 'field', 31, 1, ' laravel '),
(286, 'field', 32, 1, ' 0 '),
(287, 'slug', 0, 1, ''),
(287, 'field', 31, 1, ' drupal '),
(287, 'field', 32, 1, ' 4 '),
(289, 'slug', 0, 1, ''),
(289, 'field', 31, 1, ' wordpress '),
(289, 'field', 32, 1, ' 4 '),
(290, 'slug', 0, 1, ''),
(290, 'field', 31, 1, ' craft '),
(290, 'field', 32, 1, ' 6 '),
(291, 'slug', 0, 1, ''),
(291, 'field', 31, 1, ' laravel '),
(291, 'field', 32, 1, ' 4 '),
(292, 'slug', 0, 1, ''),
(292, 'field', 31, 1, ' drupal '),
(292, 'field', 32, 1, ' 5 '),
(294, 'slug', 0, 1, ''),
(294, 'field', 31, 1, ' wordpress '),
(294, 'field', 32, 1, ' 4 '),
(295, 'slug', 0, 1, ''),
(295, 'field', 31, 1, ' craft '),
(295, 'field', 32, 1, ' 7 '),
(296, 'slug', 0, 1, ''),
(296, 'field', 31, 1, ' laravel '),
(296, 'field', 32, 1, ' 6 '),
(297, 'slug', 0, 1, ''),
(297, 'field', 31, 1, ' drupal '),
(297, 'field', 32, 1, ' 5 '),
(299, 'slug', 0, 1, ''),
(299, 'field', 31, 1, ' wordpress '),
(299, 'field', 32, 1, ' 3 '),
(300, 'slug', 0, 1, ''),
(300, 'field', 31, 1, ' craft '),
(300, 'field', 32, 1, ' 6 '),
(301, 'slug', 0, 1, ''),
(301, 'field', 31, 1, ' laravel '),
(301, 'field', 32, 1, ' 4 '),
(302, 'slug', 0, 1, ''),
(302, 'field', 31, 1, ' drupal '),
(302, 'field', 32, 1, ' 2 '),
(305, 'slug', 0, 1, ''),
(305, 'field', 31, 1, ' wordpress '),
(305, 'field', 32, 1, ' 5 '),
(306, 'slug', 0, 1, ''),
(306, 'field', 31, 1, ' craft '),
(306, 'field', 32, 1, ' 6 '),
(307, 'slug', 0, 1, ''),
(307, 'field', 31, 1, ' laravel '),
(307, 'field', 32, 1, ' 4 '),
(308, 'slug', 0, 1, ''),
(308, 'field', 31, 1, ' drupal '),
(308, 'field', 32, 1, ' 4 '),
(310, 'slug', 0, 1, ''),
(310, 'field', 31, 1, ' wordpress '),
(310, 'field', 32, 1, ' 4 '),
(311, 'slug', 0, 1, ''),
(311, 'field', 31, 1, ' craft '),
(311, 'field', 32, 1, ' 6 '),
(312, 'slug', 0, 1, ''),
(312, 'field', 31, 1, ' laravel '),
(312, 'field', 32, 1, ' 4 '),
(313, 'slug', 0, 1, ''),
(313, 'field', 31, 1, ' drupal '),
(313, 'field', 32, 1, ' 5 '),
(315, 'slug', 0, 1, ''),
(315, 'field', 31, 1, ' wordpress '),
(315, 'field', 32, 1, ' 4 '),
(316, 'slug', 0, 1, ''),
(316, 'field', 31, 1, ' craft '),
(316, 'field', 32, 1, ' 7 '),
(317, 'slug', 0, 1, ''),
(317, 'field', 31, 1, ' laravel '),
(317, 'field', 32, 1, ' 6 '),
(318, 'slug', 0, 1, ''),
(318, 'field', 31, 1, ' drupal '),
(318, 'field', 32, 1, ' 5 '),
(320, 'slug', 0, 1, ''),
(320, 'field', 31, 1, ' wordpress '),
(320, 'field', 32, 1, ' 3 '),
(321, 'slug', 0, 1, ''),
(321, 'field', 31, 1, ' craft '),
(321, 'field', 32, 1, ' 6 '),
(322, 'slug', 0, 1, ''),
(322, 'field', 31, 1, ' laravel '),
(322, 'field', 32, 1, ' 4 '),
(323, 'slug', 0, 1, ''),
(323, 'field', 31, 1, ' drupal '),
(323, 'field', 32, 1, ' 2 '),
(326, 'slug', 0, 1, ''),
(326, 'field', 31, 1, ' wordpress '),
(326, 'field', 32, 1, ' 8 '),
(327, 'slug', 0, 1, ''),
(327, 'field', 31, 1, ' craft '),
(327, 'field', 32, 1, ' 7 '),
(328, 'slug', 0, 1, ''),
(328, 'field', 31, 1, ' drupal '),
(328, 'field', 32, 1, ' 4 '),
(329, 'slug', 0, 1, ''),
(329, 'field', 31, 1, ' laravel '),
(329, 'field', 32, 1, ' 4 '),
(331, 'slug', 0, 1, ''),
(331, 'field', 31, 1, ' wordpress '),
(331, 'field', 32, 1, ' 6 '),
(332, 'slug', 0, 1, ''),
(332, 'field', 31, 1, ' craft '),
(332, 'field', 32, 1, ' 7 '),
(333, 'slug', 0, 1, ''),
(333, 'field', 31, 1, ' drupal '),
(333, 'field', 32, 1, ' 5 '),
(334, 'slug', 0, 1, ''),
(334, 'field', 31, 1, ' laravel '),
(334, 'field', 32, 1, ' 5 '),
(336, 'slug', 0, 1, ''),
(336, 'field', 31, 1, ' wordpress '),
(336, 'field', 32, 1, ' 4 '),
(337, 'slug', 0, 1, ''),
(337, 'field', 31, 1, ' craft '),
(337, 'field', 32, 1, ' 6 '),
(338, 'slug', 0, 1, ''),
(338, 'field', 31, 1, ' drupal '),
(338, 'field', 32, 1, ' 5 '),
(339, 'slug', 0, 1, ''),
(339, 'field', 31, 1, ' laravel '),
(339, 'field', 32, 1, ' 6 '),
(341, 'slug', 0, 1, ''),
(341, 'field', 31, 1, ' wordpress '),
(341, 'field', 32, 1, ' 8 '),
(342, 'slug', 0, 1, ''),
(342, 'field', 31, 1, ' craft '),
(342, 'field', 32, 1, ' 10 '),
(343, 'slug', 0, 1, ''),
(343, 'field', 31, 1, ' drupal '),
(343, 'field', 32, 1, ' 6 '),
(344, 'slug', 0, 1, ''),
(344, 'field', 31, 1, ' laravel '),
(344, 'field', 32, 1, ' 7 '),
(346, 'slug', 0, 1, ''),
(346, 'field', 34, 1, ' laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(346, 'field', 35, 1, ' https laravel com '),
(346, 'field', 36, 1, ' 1485527877166143412 '),
(346, 'field', 43, 1, ' laravel logo '),
(348, 'slug', 0, 1, ''),
(348, 'field', 45, 1, ' performance '),
(348, 'field', 47, 1, ' stars '),
(348, 'field', 48, 1, ''),
(348, 'field', 49, 1, ''),
(349, 'slug', 0, 1, ''),
(349, 'field', 45, 1, ' seo friendly '),
(349, 'field', 47, 1, ''),
(349, 'field', 48, 1, ' stars '),
(349, 'field', 49, 1, ''),
(350, 'slug', 0, 1, ''),
(350, 'field', 45, 1, ' customization '),
(350, 'field', 47, 1, ' stars '),
(350, 'field', 48, 1, ''),
(350, 'field', 49, 1, ''),
(351, 'slug', 0, 1, ''),
(351, 'field', 45, 1, ' scalability '),
(351, 'field', 47, 1, ''),
(351, 'field', 48, 1, ''),
(351, 'field', 49, 1, ' text '),
(352, 'slug', 0, 1, ''),
(352, 'field', 45, 1, ' outgoing cost '),
(352, 'field', 47, 1, ''),
(352, 'field', 48, 1, ''),
(352, 'field', 49, 1, ''),
(354, 'slug', 0, 1, ''),
(354, 'field', 34, 1, ' drupal is the best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(354, 'field', 35, 1, ' https www drupal org '),
(354, 'field', 36, 1, ' drupal '),
(354, 'field', 43, 1, ' dru8 '),
(356, 'slug', 0, 1, ''),
(356, 'field', 45, 1, ' performance '),
(356, 'field', 47, 1, ''),
(356, 'field', 48, 1, ''),
(356, 'field', 49, 1, ''),
(357, 'slug', 0, 1, ''),
(357, 'field', 45, 1, ' performance '),
(357, 'field', 47, 1, ''),
(357, 'field', 48, 1, ''),
(357, 'field', 49, 1, ''),
(358, 'slug', 0, 1, ''),
(358, 'field', 45, 1, ' customization '),
(358, 'field', 47, 1, ''),
(358, 'field', 48, 1, ''),
(358, 'field', 49, 1, ''),
(359, 'slug', 0, 1, ''),
(359, 'field', 45, 1, ' scalability '),
(359, 'field', 47, 1, ''),
(359, 'field', 48, 1, ''),
(359, 'field', 49, 1, ' text '),
(360, 'slug', 0, 1, ''),
(360, 'field', 45, 1, ' outgoing cost '),
(360, 'field', 47, 1, ''),
(360, 'field', 48, 1, ''),
(360, 'field', 49, 1, ''),
(364, 'slug', 0, 1, ''),
(364, 'field', 31, 1, ' wordpress '),
(364, 'field', 32, 1, ' 5 '),
(365, 'slug', 0, 1, ''),
(365, 'field', 31, 1, ' craft '),
(365, 'field', 32, 1, ' 6 '),
(366, 'slug', 0, 1, ''),
(366, 'field', 31, 1, ' laravel '),
(366, 'field', 32, 1, ' 0 '),
(367, 'slug', 0, 1, ''),
(367, 'field', 31, 1, ' drupal '),
(367, 'field', 32, 1, ' 4 '),
(369, 'slug', 0, 1, ''),
(369, 'field', 31, 1, ' wordpress '),
(369, 'field', 32, 1, ' 4 '),
(370, 'slug', 0, 1, ''),
(370, 'field', 31, 1, ' craft '),
(370, 'field', 32, 1, ' 6 '),
(371, 'slug', 0, 1, ''),
(371, 'field', 31, 1, ' laravel '),
(371, 'field', 32, 1, ' 4 '),
(372, 'slug', 0, 1, ''),
(372, 'field', 31, 1, ' drupal '),
(372, 'field', 32, 1, ' 5 '),
(374, 'slug', 0, 1, ''),
(374, 'field', 31, 1, ' wordpress '),
(374, 'field', 32, 1, ' 4 '),
(375, 'slug', 0, 1, ''),
(375, 'field', 31, 1, ' craft '),
(375, 'field', 32, 1, ' 7 '),
(376, 'slug', 0, 1, ''),
(376, 'field', 31, 1, ' laravel '),
(376, 'field', 32, 1, ' 6 '),
(377, 'slug', 0, 1, ''),
(377, 'field', 31, 1, ' drupal '),
(377, 'field', 32, 1, ' 5 '),
(379, 'slug', 0, 1, ''),
(379, 'field', 31, 1, ' wordpress '),
(379, 'field', 32, 1, ' 3 '),
(380, 'slug', 0, 1, ''),
(380, 'field', 31, 1, ' craft '),
(380, 'field', 32, 1, ' 6 '),
(381, 'slug', 0, 1, ''),
(381, 'field', 31, 1, ' laravel '),
(381, 'field', 32, 1, ' 4 '),
(382, 'slug', 0, 1, ''),
(382, 'field', 31, 1, ' drupal '),
(382, 'field', 32, 1, ' 2 '),
(384, 'slug', 0, 1, ''),
(384, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(384, 'field', 35, 1, ' https wordpress org '),
(384, 'field', 36, 1, ' cms wordpress '),
(384, 'field', 43, 1, ' word press logotype wmark '),
(386, 'slug', 0, 1, ''),
(386, 'field', 45, 1, ' scalability '),
(386, 'field', 47, 1, ' stars '),
(386, 'field', 48, 1, ''),
(386, 'field', 49, 1, ''),
(387, 'slug', 0, 1, ''),
(387, 'field', 45, 1, ' performance '),
(387, 'field', 47, 1, ''),
(387, 'field', 48, 1, ''),
(387, 'field', 49, 1, ''),
(388, 'slug', 0, 1, ''),
(388, 'field', 45, 1, ' seo friendly '),
(388, 'field', 47, 1, ''),
(388, 'field', 48, 1, ''),
(388, 'field', 49, 1, ''),
(389, 'slug', 0, 1, ''),
(389, 'field', 45, 1, ' customization '),
(389, 'field', 47, 1, ''),
(389, 'field', 48, 1, ''),
(389, 'field', 49, 1, ' limited '),
(390, 'slug', 0, 1, ''),
(390, 'field', 45, 1, ' outgoing cost '),
(390, 'field', 47, 1, ''),
(390, 'field', 48, 1, ''),
(390, 'field', 49, 1, ''),
(392, 'slug', 0, 1, ''),
(392, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(392, 'field', 35, 1, ' https craftcms com '),
(392, 'field', 36, 1, ' craft logo '),
(392, 'field', 43, 1, ' craft logo '),
(394, 'slug', 0, 1, ''),
(394, 'field', 45, 1, ' performance '),
(394, 'field', 47, 1, ''),
(394, 'field', 48, 1, ''),
(394, 'field', 49, 1, ''),
(395, 'slug', 0, 1, ''),
(395, 'field', 45, 1, ' seo friendly '),
(395, 'field', 47, 1, ''),
(395, 'field', 48, 1, ''),
(395, 'field', 49, 1, ''),
(396, 'slug', 0, 1, ''),
(396, 'field', 45, 1, ' customization '),
(396, 'field', 47, 1, ''),
(396, 'field', 48, 1, ''),
(396, 'field', 49, 1, ''),
(397, 'slug', 0, 1, ''),
(397, 'field', 45, 1, ' scalability '),
(397, 'field', 47, 1, ''),
(397, 'field', 48, 1, ''),
(397, 'field', 49, 1, ' shared '),
(398, 'slug', 0, 1, ''),
(398, 'field', 45, 1, ' outgoing cost '),
(398, 'field', 47, 1, ''),
(398, 'field', 48, 1, ''),
(398, 'field', 49, 1, ''),
(400, 'slug', 0, 1, ''),
(400, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(400, 'field', 35, 1, ' https craftcms com '),
(400, 'field', 36, 1, ' cms wordpress '),
(400, 'field', 43, 1, ' word press logotype wmark '),
(402, 'slug', 0, 1, ''),
(402, 'field', 45, 1, ' scalability '),
(402, 'field', 47, 1, ' stars '),
(402, 'field', 48, 1, ''),
(402, 'field', 49, 1, ''),
(403, 'slug', 0, 1, ''),
(403, 'field', 45, 1, ' performance '),
(403, 'field', 47, 1, ''),
(403, 'field', 48, 1, ''),
(403, 'field', 49, 1, ''),
(404, 'slug', 0, 1, ''),
(404, 'field', 45, 1, ' seo friendly '),
(404, 'field', 47, 1, ''),
(404, 'field', 48, 1, ''),
(404, 'field', 49, 1, ''),
(405, 'slug', 0, 1, ''),
(405, 'field', 45, 1, ' customization '),
(405, 'field', 47, 1, ''),
(405, 'field', 48, 1, ''),
(405, 'field', 49, 1, ' limited '),
(406, 'slug', 0, 1, ''),
(406, 'field', 45, 1, ' outgoing cost '),
(406, 'field', 47, 1, ''),
(406, 'field', 48, 1, ''),
(406, 'field', 49, 1, ''),
(414, 'slug', 0, 1, ''),
(414, 'field', 31, 1, ' wordpress '),
(414, 'field', 32, 1, ' 8 '),
(415, 'slug', 0, 1, ''),
(415, 'field', 31, 1, ' craft '),
(415, 'field', 32, 1, ' 7 '),
(416, 'slug', 0, 1, ''),
(416, 'field', 31, 1, ' drupal '),
(416, 'field', 32, 1, ' 4 '),
(417, 'slug', 0, 1, ''),
(417, 'field', 31, 1, ' laravel '),
(417, 'field', 32, 1, ' 4 '),
(419, 'slug', 0, 1, ''),
(419, 'field', 31, 1, ' wordpress '),
(419, 'field', 32, 1, ' 6 '),
(420, 'slug', 0, 1, ''),
(420, 'field', 31, 1, ' craft '),
(420, 'field', 32, 1, ' 7 '),
(421, 'slug', 0, 1, ''),
(421, 'field', 31, 1, ' drupal '),
(421, 'field', 32, 1, ' 5 '),
(422, 'slug', 0, 1, ''),
(422, 'field', 31, 1, ' laravel '),
(422, 'field', 32, 1, ' 5 '),
(424, 'slug', 0, 1, ''),
(424, 'field', 31, 1, ' wordpress '),
(424, 'field', 32, 1, ' 4 '),
(425, 'slug', 0, 1, ''),
(425, 'field', 31, 1, ' craft '),
(425, 'field', 32, 1, ' 6 '),
(426, 'slug', 0, 1, ''),
(426, 'field', 31, 1, ' drupal '),
(426, 'field', 32, 1, ' 5 '),
(427, 'slug', 0, 1, ''),
(427, 'field', 31, 1, ' laravel '),
(427, 'field', 32, 1, ' 6 '),
(429, 'slug', 0, 1, ''),
(429, 'field', 31, 1, ' wordpress '),
(429, 'field', 32, 1, ' 8 '),
(430, 'slug', 0, 1, ''),
(430, 'field', 31, 1, ' craft '),
(430, 'field', 32, 1, ' 10 '),
(431, 'slug', 0, 1, ''),
(431, 'field', 31, 1, ' drupal '),
(431, 'field', 32, 1, ' 6 '),
(432, 'slug', 0, 1, ''),
(432, 'field', 31, 1, ' laravel '),
(432, 'field', 32, 1, ' 7 '),
(498, 'slug', 0, 1, ''),
(498, 'field', 31, 1, ' wordpress '),
(498, 'field', 32, 1, ' 8 '),
(499, 'slug', 0, 1, ''),
(499, 'field', 31, 1, ' craft ');
INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(499, 'field', 32, 1, ' 7 '),
(500, 'slug', 0, 1, ''),
(500, 'field', 31, 1, ' drupal '),
(500, 'field', 32, 1, ' 4 '),
(501, 'slug', 0, 1, ''),
(501, 'field', 31, 1, ' laravel '),
(501, 'field', 32, 1, ' 4 '),
(503, 'slug', 0, 1, ''),
(503, 'field', 31, 1, ' wordpress '),
(503, 'field', 32, 1, ' 6 '),
(504, 'slug', 0, 1, ''),
(504, 'field', 31, 1, ' craft '),
(504, 'field', 32, 1, ' 7 '),
(505, 'slug', 0, 1, ''),
(505, 'field', 31, 1, ' drupal '),
(505, 'field', 32, 1, ' 5 '),
(506, 'slug', 0, 1, ''),
(506, 'field', 31, 1, ' laravel '),
(506, 'field', 32, 1, ' 5 '),
(508, 'slug', 0, 1, ''),
(508, 'field', 31, 1, ' wordpress '),
(508, 'field', 32, 1, ' 4 '),
(509, 'slug', 0, 1, ''),
(509, 'field', 31, 1, ' craft '),
(509, 'field', 32, 1, ' 6 '),
(510, 'slug', 0, 1, ''),
(510, 'field', 31, 1, ' drupal '),
(510, 'field', 32, 1, ' 5 '),
(511, 'slug', 0, 1, ''),
(511, 'field', 31, 1, ' laravel '),
(511, 'field', 32, 1, ' 6 '),
(513, 'slug', 0, 1, ''),
(513, 'field', 31, 1, ' wordpress '),
(513, 'field', 32, 1, ' 8 '),
(514, 'slug', 0, 1, ''),
(514, 'field', 31, 1, ' craft '),
(514, 'field', 32, 1, ' 10 '),
(515, 'slug', 0, 1, ''),
(515, 'field', 31, 1, ' drupal '),
(515, 'field', 32, 1, ' 6 '),
(516, 'slug', 0, 1, ''),
(516, 'field', 31, 1, ' laravel '),
(516, 'field', 32, 1, ' 7 '),
(519, 'slug', 0, 1, ''),
(519, 'field', 31, 1, ' wordpress '),
(519, 'field', 32, 1, ' 8 '),
(520, 'slug', 0, 1, ''),
(520, 'field', 31, 1, ' craft '),
(520, 'field', 32, 1, ' 7 '),
(521, 'slug', 0, 1, ''),
(521, 'field', 31, 1, ' drupal '),
(521, 'field', 32, 1, ' 4 '),
(522, 'slug', 0, 1, ''),
(522, 'field', 31, 1, ' laravel '),
(522, 'field', 32, 1, ' 4 '),
(524, 'slug', 0, 1, ''),
(524, 'field', 31, 1, ' wordpress '),
(524, 'field', 32, 1, ' 6 '),
(525, 'slug', 0, 1, ''),
(525, 'field', 31, 1, ' craft '),
(525, 'field', 32, 1, ' 7 '),
(526, 'slug', 0, 1, ''),
(526, 'field', 31, 1, ' drupal '),
(526, 'field', 32, 1, ' 5 '),
(527, 'slug', 0, 1, ''),
(527, 'field', 31, 1, ' laravel '),
(527, 'field', 32, 1, ' 5 '),
(529, 'slug', 0, 1, ''),
(529, 'field', 31, 1, ' wordpress '),
(529, 'field', 32, 1, ' 4 '),
(530, 'slug', 0, 1, ''),
(530, 'field', 31, 1, ' craft '),
(530, 'field', 32, 1, ' 6 '),
(531, 'slug', 0, 1, ''),
(531, 'field', 31, 1, ' drupal '),
(531, 'field', 32, 1, ' 5 '),
(532, 'slug', 0, 1, ''),
(532, 'field', 31, 1, ' laravel '),
(532, 'field', 32, 1, ' 6 '),
(534, 'slug', 0, 1, ''),
(534, 'field', 31, 1, ' wordpress '),
(534, 'field', 32, 1, ' 8 '),
(535, 'slug', 0, 1, ''),
(535, 'field', 31, 1, ' craft '),
(535, 'field', 32, 1, ' 10 '),
(536, 'slug', 0, 1, ''),
(536, 'field', 31, 1, ' drupal '),
(536, 'field', 32, 1, ' 6 '),
(537, 'slug', 0, 1, ''),
(537, 'field', 31, 1, ' laravel '),
(537, 'field', 32, 1, ' 7 '),
(540, 'slug', 0, 1, ''),
(540, 'field', 31, 1, ' wordpress '),
(540, 'field', 32, 1, ' 8 '),
(541, 'slug', 0, 1, ''),
(541, 'field', 31, 1, ' craft '),
(541, 'field', 32, 1, ' 7 '),
(542, 'slug', 0, 1, ''),
(542, 'field', 31, 1, ' drupal '),
(542, 'field', 32, 1, ' 4 '),
(543, 'slug', 0, 1, ''),
(543, 'field', 31, 1, ' laravel '),
(543, 'field', 32, 1, ' 4 '),
(545, 'slug', 0, 1, ''),
(545, 'field', 31, 1, ' wordpress '),
(545, 'field', 32, 1, ' 6 '),
(546, 'slug', 0, 1, ''),
(546, 'field', 31, 1, ' craft '),
(546, 'field', 32, 1, ' 7 '),
(547, 'slug', 0, 1, ''),
(547, 'field', 31, 1, ' drupal '),
(547, 'field', 32, 1, ' 5 '),
(548, 'slug', 0, 1, ''),
(548, 'field', 31, 1, ' laravel '),
(548, 'field', 32, 1, ' 5 '),
(550, 'slug', 0, 1, ''),
(550, 'field', 31, 1, ' wordpress '),
(550, 'field', 32, 1, ' 4 '),
(551, 'slug', 0, 1, ''),
(551, 'field', 31, 1, ' craft '),
(551, 'field', 32, 1, ' 6 '),
(552, 'slug', 0, 1, ''),
(552, 'field', 31, 1, ' drupal '),
(552, 'field', 32, 1, ' 5 '),
(553, 'slug', 0, 1, ''),
(553, 'field', 31, 1, ' laravel '),
(553, 'field', 32, 1, ' 6 '),
(555, 'slug', 0, 1, ''),
(555, 'field', 31, 1, ' wordpress '),
(555, 'field', 32, 1, ' 8 '),
(556, 'slug', 0, 1, ''),
(556, 'field', 31, 1, ' craft '),
(556, 'field', 32, 1, ' 10 '),
(557, 'slug', 0, 1, ''),
(557, 'field', 31, 1, ' drupal '),
(557, 'field', 32, 1, ' 6 '),
(558, 'slug', 0, 1, ''),
(558, 'field', 31, 1, ' laravel '),
(558, 'field', 32, 1, ' 7 '),
(561, 'slug', 0, 1, ''),
(561, 'field', 31, 1, ' wordpress '),
(561, 'field', 32, 1, ' 8 '),
(562, 'slug', 0, 1, ''),
(562, 'field', 31, 1, ' craft '),
(562, 'field', 32, 1, ' 7 '),
(563, 'slug', 0, 1, ''),
(563, 'field', 31, 1, ' drupal '),
(563, 'field', 32, 1, ' 4 '),
(564, 'slug', 0, 1, ''),
(564, 'field', 31, 1, ' laravel '),
(564, 'field', 32, 1, ' 4 '),
(566, 'slug', 0, 1, ''),
(566, 'field', 31, 1, ' wordpress '),
(566, 'field', 32, 1, ' 6 '),
(567, 'slug', 0, 1, ''),
(567, 'field', 31, 1, ' craft '),
(567, 'field', 32, 1, ' 7 '),
(568, 'slug', 0, 1, ''),
(568, 'field', 31, 1, ' drupal '),
(568, 'field', 32, 1, ' 5 '),
(569, 'slug', 0, 1, ''),
(569, 'field', 31, 1, ' laravel '),
(569, 'field', 32, 1, ' 5 '),
(571, 'slug', 0, 1, ''),
(571, 'field', 31, 1, ' wordpress '),
(571, 'field', 32, 1, ' 4 '),
(572, 'slug', 0, 1, ''),
(572, 'field', 31, 1, ' craft '),
(572, 'field', 32, 1, ' 6 '),
(573, 'slug', 0, 1, ''),
(573, 'field', 31, 1, ' drupal '),
(573, 'field', 32, 1, ' 5 '),
(574, 'slug', 0, 1, ''),
(574, 'field', 31, 1, ' laravel '),
(574, 'field', 32, 1, ' 6 '),
(576, 'slug', 0, 1, ''),
(576, 'field', 31, 1, ' wordpress '),
(576, 'field', 32, 1, ' 8 '),
(577, 'slug', 0, 1, ''),
(577, 'field', 31, 1, ' craft '),
(577, 'field', 32, 1, ' 10 '),
(578, 'slug', 0, 1, ''),
(578, 'field', 31, 1, ' drupal '),
(578, 'field', 32, 1, ' 6 '),
(579, 'slug', 0, 1, ''),
(579, 'field', 31, 1, ' laravel '),
(579, 'field', 32, 1, ' 7 '),
(582, 'slug', 0, 1, ''),
(582, 'field', 31, 1, ' wordpress '),
(582, 'field', 32, 1, ' 8 '),
(583, 'slug', 0, 1, ''),
(583, 'field', 31, 1, ' craft '),
(583, 'field', 32, 1, ' 7 '),
(584, 'slug', 0, 1, ''),
(584, 'field', 31, 1, ' drupal '),
(584, 'field', 32, 1, ' 4 '),
(585, 'slug', 0, 1, ''),
(585, 'field', 31, 1, ' laravel '),
(585, 'field', 32, 1, ' 4 '),
(587, 'slug', 0, 1, ''),
(587, 'field', 31, 1, ' wordpress '),
(587, 'field', 32, 1, ' 6 '),
(588, 'slug', 0, 1, ''),
(588, 'field', 31, 1, ' craft '),
(588, 'field', 32, 1, ' 7 '),
(589, 'slug', 0, 1, ''),
(589, 'field', 31, 1, ' drupal '),
(589, 'field', 32, 1, ' 5 '),
(590, 'slug', 0, 1, ''),
(590, 'field', 31, 1, ' laravel '),
(590, 'field', 32, 1, ' 5 '),
(592, 'slug', 0, 1, ''),
(592, 'field', 31, 1, ' wordpress '),
(592, 'field', 32, 1, ' 4 '),
(593, 'slug', 0, 1, ''),
(593, 'field', 31, 1, ' craft '),
(593, 'field', 32, 1, ' 6 '),
(594, 'slug', 0, 1, ''),
(594, 'field', 31, 1, ' drupal '),
(594, 'field', 32, 1, ' 5 '),
(595, 'slug', 0, 1, ''),
(595, 'field', 31, 1, ' laravel '),
(595, 'field', 32, 1, ' 6 '),
(597, 'slug', 0, 1, ''),
(597, 'field', 31, 1, ' wordpress '),
(597, 'field', 32, 1, ' 8 '),
(598, 'slug', 0, 1, ''),
(598, 'field', 31, 1, ' craft '),
(598, 'field', 32, 1, ' 10 '),
(599, 'slug', 0, 1, ''),
(599, 'field', 31, 1, ' drupal '),
(599, 'field', 32, 1, ' 6 '),
(600, 'slug', 0, 1, ''),
(600, 'field', 31, 1, ' laravel '),
(600, 'field', 32, 1, ' 7 '),
(602, 'slug', 0, 1, ''),
(602, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(602, 'field', 35, 1, ' https wordpress org '),
(602, 'field', 36, 1, ' wordpress logo '),
(602, 'field', 43, 1, ' word press logotype wmark '),
(604, 'slug', 0, 1, ''),
(604, 'field', 45, 1, ' scalability '),
(604, 'field', 47, 1, ' stars '),
(604, 'field', 48, 1, ''),
(604, 'field', 49, 1, ''),
(605, 'slug', 0, 1, ''),
(605, 'field', 45, 1, ' performance '),
(605, 'field', 47, 1, ''),
(605, 'field', 48, 1, ''),
(605, 'field', 49, 1, ''),
(606, 'slug', 0, 1, ''),
(606, 'field', 45, 1, ' seo friendly '),
(606, 'field', 47, 1, ''),
(606, 'field', 48, 1, ''),
(606, 'field', 49, 1, ' limited3 '),
(607, 'slug', 0, 1, ''),
(607, 'field', 45, 1, ' customization '),
(607, 'field', 47, 1, ''),
(607, 'field', 48, 1, ''),
(607, 'field', 49, 1, ''),
(608, 'slug', 0, 1, ''),
(608, 'field', 45, 1, ' outgoing cost '),
(608, 'field', 47, 1, ''),
(608, 'field', 48, 1, ''),
(608, 'field', 49, 1, ' limited5 '),
(610, 'slug', 0, 1, ''),
(610, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(610, 'field', 35, 1, ' https wordpress org '),
(610, 'field', 36, 1, ' wordpress logo '),
(610, 'field', 43, 1, ' word press logotype wmark '),
(612, 'slug', 0, 1, ''),
(612, 'field', 45, 1, ' scalability '),
(612, 'field', 47, 1, ' stars '),
(612, 'field', 48, 1, ''),
(612, 'field', 49, 1, ''),
(613, 'slug', 0, 1, ''),
(613, 'field', 45, 1, ' performance '),
(613, 'field', 47, 1, ''),
(613, 'field', 48, 1, ''),
(613, 'field', 49, 1, ''),
(614, 'slug', 0, 1, ''),
(614, 'field', 45, 1, ' seo friendly '),
(614, 'field', 47, 1, ''),
(614, 'field', 48, 1, ''),
(614, 'field', 49, 1, ' limited3 '),
(615, 'slug', 0, 1, ''),
(615, 'field', 45, 1, ' customization '),
(615, 'field', 47, 1, ''),
(615, 'field', 48, 1, ''),
(615, 'field', 49, 1, ''),
(616, 'slug', 0, 1, ''),
(616, 'field', 45, 1, ' outgoing cost '),
(616, 'field', 47, 1, ''),
(616, 'field', 48, 1, ''),
(616, 'field', 49, 1, ' limited5 '),
(618, 'slug', 0, 1, ''),
(618, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(618, 'field', 35, 1, ' https craftcms com '),
(618, 'field', 36, 1, ' craft logo '),
(618, 'field', 43, 1, ' craft logo '),
(620, 'slug', 0, 1, ''),
(620, 'field', 45, 1, ' performance '),
(620, 'field', 47, 1, ''),
(620, 'field', 48, 1, ''),
(620, 'field', 49, 1, ' shared '),
(621, 'slug', 0, 1, ''),
(621, 'field', 45, 1, ' seo friendly '),
(621, 'field', 47, 1, ''),
(621, 'field', 48, 1, ''),
(621, 'field', 49, 1, ' shared '),
(622, 'slug', 0, 1, ''),
(622, 'field', 45, 1, ' customization '),
(622, 'field', 47, 1, ''),
(622, 'field', 48, 1, ''),
(622, 'field', 49, 1, ' shared '),
(623, 'slug', 0, 1, ''),
(623, 'field', 45, 1, ' scalability '),
(623, 'field', 47, 1, ''),
(623, 'field', 48, 1, ''),
(623, 'field', 49, 1, ' shared '),
(624, 'slug', 0, 1, ''),
(624, 'field', 45, 1, ' outgoing cost '),
(624, 'field', 47, 1, ''),
(624, 'field', 48, 1, ''),
(624, 'field', 49, 1, ' shared '),
(626, 'slug', 0, 1, ''),
(626, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(626, 'field', 35, 1, ' https wordpress org '),
(626, 'field', 36, 1, ' wordpress logo '),
(626, 'field', 43, 1, ' word press logotype wmark '),
(628, 'slug', 0, 1, ''),
(628, 'field', 45, 1, ' scalability '),
(628, 'field', 47, 1, ' stars '),
(628, 'field', 48, 1, ''),
(628, 'field', 49, 1, ''),
(629, 'slug', 0, 1, ''),
(629, 'field', 45, 1, ' performance '),
(629, 'field', 47, 1, ''),
(629, 'field', 48, 1, ''),
(629, 'field', 49, 1, ''),
(630, 'slug', 0, 1, ''),
(630, 'field', 45, 1, ' seo friendly '),
(630, 'field', 47, 1, ''),
(630, 'field', 48, 1, ''),
(630, 'field', 49, 1, ' limited3 '),
(631, 'slug', 0, 1, ''),
(631, 'field', 45, 1, ' customization '),
(631, 'field', 47, 1, ''),
(631, 'field', 48, 1, ''),
(631, 'field', 49, 1, ''),
(632, 'slug', 0, 1, ''),
(632, 'field', 45, 1, ' outgoing cost '),
(632, 'field', 47, 1, ''),
(632, 'field', 48, 1, ''),
(632, 'field', 49, 1, ' limited5 '),
(634, 'slug', 0, 1, ''),
(634, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(634, 'field', 35, 1, ' https wordpress org '),
(634, 'field', 36, 1, ' wordpress logo '),
(634, 'field', 43, 1, ' word press logotype wmark '),
(636, 'slug', 0, 1, ''),
(636, 'field', 45, 1, ' scalability '),
(636, 'field', 47, 1, ' stars '),
(636, 'field', 48, 1, ''),
(636, 'field', 49, 1, ''),
(637, 'slug', 0, 1, ''),
(637, 'field', 45, 1, ' performance '),
(637, 'field', 47, 1, ''),
(637, 'field', 48, 1, ''),
(637, 'field', 49, 1, ''),
(638, 'slug', 0, 1, ''),
(638, 'field', 45, 1, ' seo friendly '),
(638, 'field', 47, 1, ''),
(638, 'field', 48, 1, ''),
(638, 'field', 49, 1, ' limited3 '),
(639, 'slug', 0, 1, ''),
(639, 'field', 45, 1, ' customization '),
(639, 'field', 47, 1, ''),
(639, 'field', 48, 1, ''),
(639, 'field', 49, 1, ''),
(640, 'slug', 0, 1, ''),
(640, 'field', 45, 1, ' outgoing cost '),
(640, 'field', 47, 1, ''),
(640, 'field', 48, 1, ''),
(640, 'field', 49, 1, ' limited5 '),
(654, 'slug', 0, 1, ''),
(654, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(654, 'field', 35, 1, ' https wordpress org '),
(654, 'field', 36, 1, ' wordpress logo '),
(654, 'field', 43, 1, ' word press logotype wmark '),
(655, 'slug', 0, 1, ''),
(655, 'field', 44, 1, ' scalability stars performance seo friendly limited3 customization outgoing cost limited5 '),
(656, 'slug', 0, 1, ''),
(656, 'field', 45, 1, ' scalability '),
(656, 'field', 47, 1, ' stars '),
(656, 'field', 48, 1, ''),
(656, 'field', 49, 1, ''),
(657, 'slug', 0, 1, ''),
(657, 'field', 45, 1, ' performance '),
(657, 'field', 47, 1, ''),
(657, 'field', 48, 1, ''),
(657, 'field', 49, 1, ''),
(658, 'slug', 0, 1, ''),
(658, 'field', 45, 1, ' seo friendly '),
(658, 'field', 47, 1, ''),
(658, 'field', 48, 1, ''),
(658, 'field', 49, 1, ' limited3 '),
(659, 'slug', 0, 1, ''),
(659, 'field', 45, 1, ' customization '),
(659, 'field', 47, 1, ''),
(659, 'field', 48, 1, ''),
(659, 'field', 49, 1, ''),
(660, 'slug', 0, 1, ''),
(660, 'field', 45, 1, ' outgoing cost '),
(660, 'field', 47, 1, ''),
(660, 'field', 48, 1, ''),
(660, 'field', 49, 1, ' limited5 '),
(677, 'slug', 0, 1, ''),
(677, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(677, 'field', 35, 1, ' https craftcms com '),
(677, 'field', 36, 1, ' craft logo '),
(677, 'field', 43, 1, ' craft logo '),
(678, 'slug', 0, 1, ''),
(678, 'field', 44, 1, ' performance shared seo friendly shared customization shared scalability shared outgoing cost shared '),
(679, 'slug', 0, 1, ''),
(679, 'field', 45, 1, ' performance '),
(679, 'field', 47, 1, ''),
(679, 'field', 48, 1, ''),
(679, 'field', 49, 1, ' shared '),
(680, 'slug', 0, 1, ''),
(680, 'field', 45, 1, ' seo friendly '),
(680, 'field', 47, 1, ''),
(680, 'field', 48, 1, ''),
(680, 'field', 49, 1, ' shared '),
(681, 'slug', 0, 1, ''),
(681, 'field', 45, 1, ' customization '),
(681, 'field', 47, 1, ''),
(681, 'field', 48, 1, ''),
(681, 'field', 49, 1, ' shared '),
(682, 'slug', 0, 1, ''),
(682, 'field', 45, 1, ' scalability '),
(682, 'field', 47, 1, ''),
(682, 'field', 48, 1, ''),
(682, 'field', 49, 1, ' shared '),
(683, 'slug', 0, 1, ''),
(683, 'field', 45, 1, ' outgoing cost '),
(683, 'field', 47, 1, ''),
(683, 'field', 48, 1, ''),
(683, 'field', 49, 1, ' shared '),
(700, 'slug', 0, 1, ''),
(700, 'field', 34, 1, ' drupal is the best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(700, 'field', 35, 1, ' https www drupal org '),
(700, 'field', 36, 1, ' drupal logo '),
(700, 'field', 43, 1, ' dru8 '),
(701, 'slug', 0, 1, ''),
(701, 'field', 44, 1, ' performance text drupal seo friendly stars text drupal customization text drupal scalability text drupal outgoing cost text drupal '),
(702, 'slug', 0, 1, ''),
(702, 'field', 45, 1, ' performance '),
(702, 'field', 47, 1, ''),
(702, 'field', 48, 1, ''),
(702, 'field', 49, 1, ' text drupal '),
(703, 'slug', 0, 1, ''),
(703, 'field', 45, 1, ' seo friendly '),
(703, 'field', 47, 1, ' stars '),
(703, 'field', 48, 1, ''),
(703, 'field', 49, 1, ' text drupal '),
(704, 'slug', 0, 1, ''),
(704, 'field', 45, 1, ' customization '),
(704, 'field', 47, 1, ''),
(704, 'field', 48, 1, ''),
(704, 'field', 49, 1, ' text drupal '),
(705, 'slug', 0, 1, ''),
(705, 'field', 45, 1, ' scalability '),
(705, 'field', 47, 1, ''),
(705, 'field', 48, 1, ''),
(705, 'field', 49, 1, ' text drupal '),
(706, 'slug', 0, 1, ''),
(706, 'field', 45, 1, ' outgoing cost '),
(706, 'field', 47, 1, ''),
(706, 'field', 48, 1, ''),
(706, 'field', 49, 1, ' text drupal '),
(723, 'slug', 0, 1, ''),
(723, 'field', 34, 1, ' laravel best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(723, 'field', 35, 1, ' https laravel com '),
(723, 'field', 36, 1, ' 1485527877166143412 '),
(723, 'field', 43, 1, ' laravel logo '),
(724, 'slug', 0, 1, ''),
(724, 'field', 44, 1, ' performance stars seo friendly stars customization stars scalability text test outgoing cost text test '),
(725, 'slug', 0, 1, ''),
(725, 'field', 45, 1, ' performance '),
(725, 'field', 47, 1, ' stars '),
(725, 'field', 48, 1, ''),
(725, 'field', 49, 1, ''),
(726, 'slug', 0, 1, ''),
(726, 'field', 45, 1, ' seo friendly '),
(726, 'field', 47, 1, ''),
(726, 'field', 48, 1, ' stars '),
(726, 'field', 49, 1, ''),
(727, 'slug', 0, 1, ''),
(727, 'field', 45, 1, ' customization '),
(727, 'field', 47, 1, ' stars '),
(727, 'field', 48, 1, ''),
(727, 'field', 49, 1, ''),
(728, 'slug', 0, 1, ''),
(728, 'field', 45, 1, ' scalability '),
(728, 'field', 47, 1, ''),
(728, 'field', 48, 1, ''),
(728, 'field', 49, 1, ' text test '),
(729, 'slug', 0, 1, ''),
(729, 'field', 45, 1, ' outgoing cost '),
(729, 'field', 47, 1, ''),
(729, 'field', 48, 1, ''),
(729, 'field', 49, 1, ' text test '),
(739, 'slug', 0, 1, ' thank you page '),
(739, 'title', 0, 1, ' thank you page '),
(739, 'field', 109, 1, ''),
(739, 'field', 1, 1, ' thank you for the request '),
(739, 'field', 107, 1, ' we ll get to you as soon as possible '),
(739, 'field', 108, 1, ' did you like the tool share it with the world '),
(747, 'slug', 0, 1, ''),
(759, 'slug', 0, 1, ''),
(764, 'slug', 0, 1, ''),
(778, 'filename', 0, 1, ' pg logo svg '),
(778, 'extension', 0, 1, ' svg '),
(778, 'kind', 0, 1, ' image '),
(778, 'slug', 0, 1, ''),
(778, 'title', 0, 1, ' pg logo '),
(102, 'field', 103, 1, ' pg logo '),
(791, 'slug', 0, 1, ''),
(791, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(791, 'field', 35, 1, ' https wordpress org '),
(791, 'field', 36, 1, ' wordpress logo '),
(791, 'field', 43, 1, ' word press logotype wmark '),
(792, 'slug', 0, 1, ''),
(792, 'field', 44, 1, ' scalability stars performance seo friendly limited3 customization outgoing cost limited5 '),
(793, 'slug', 0, 1, ''),
(793, 'field', 45, 1, ' scalability '),
(793, 'field', 47, 1, ' stars '),
(793, 'field', 48, 1, ''),
(793, 'field', 49, 1, ''),
(794, 'slug', 0, 1, ''),
(794, 'field', 45, 1, ' performance '),
(794, 'field', 47, 1, ''),
(794, 'field', 48, 1, ''),
(794, 'field', 49, 1, ''),
(795, 'slug', 0, 1, ''),
(795, 'field', 45, 1, ' seo friendly '),
(795, 'field', 47, 1, ''),
(795, 'field', 48, 1, ''),
(795, 'field', 49, 1, ' limited3 '),
(796, 'slug', 0, 1, ''),
(796, 'field', 45, 1, ' customization '),
(796, 'field', 47, 1, ''),
(796, 'field', 48, 1, ''),
(796, 'field', 49, 1, ''),
(797, 'slug', 0, 1, ''),
(797, 'field', 45, 1, ' outgoing cost '),
(797, 'field', 47, 1, ''),
(797, 'field', 48, 1, ''),
(797, 'field', 49, 1, ' limited5 '),
(822, 'slug', 0, 1, ''),
(822, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(822, 'field', 35, 1, ' https wordpress org '),
(822, 'field', 36, 1, ' pg logo '),
(822, 'field', 43, 1, ' word press logotype wmark '),
(823, 'slug', 0, 1, ''),
(823, 'field', 44, 1, ' scalability stars performance seo friendly limited3 customization outgoing cost limited5 '),
(824, 'slug', 0, 1, ''),
(824, 'field', 45, 1, ' scalability '),
(824, 'field', 47, 1, ' stars '),
(824, 'field', 48, 1, ''),
(824, 'field', 49, 1, ''),
(825, 'slug', 0, 1, ''),
(825, 'field', 45, 1, ' performance '),
(825, 'field', 47, 1, ''),
(825, 'field', 48, 1, ''),
(825, 'field', 49, 1, ''),
(826, 'slug', 0, 1, ''),
(826, 'field', 45, 1, ' seo friendly '),
(826, 'field', 47, 1, ''),
(826, 'field', 48, 1, ''),
(826, 'field', 49, 1, ' limited3 '),
(827, 'slug', 0, 1, ''),
(827, 'field', 45, 1, ' customization '),
(827, 'field', 47, 1, ''),
(827, 'field', 48, 1, ''),
(827, 'field', 49, 1, ''),
(828, 'slug', 0, 1, ''),
(828, 'field', 45, 1, ' outgoing cost '),
(828, 'field', 47, 1, ''),
(828, 'field', 48, 1, ''),
(828, 'field', 49, 1, ' limited5 '),
(869, 'slug', 0, 1, ''),
(869, 'field', 34, 1, ' best choice for lorem ipsum dolor sit amet consectetur adipiscing elit proin sagittis efficitur luctus integer at pretium lectus integer mollis enim id urna finibus semper '),
(869, 'field', 35, 1, ' https wordpress org '),
(869, 'field', 36, 1, ' wordpress logo '),
(869, 'field', 43, 1, ' word press logotype wmark '),
(870, 'slug', 0, 1, ''),
(870, 'field', 44, 1, ' scalability stars performance seo friendly limited3 customization outgoing cost limited5 '),
(871, 'slug', 0, 1, ''),
(871, 'field', 45, 1, ' scalability '),
(871, 'field', 47, 1, ' stars '),
(871, 'field', 48, 1, ''),
(871, 'field', 49, 1, ''),
(872, 'slug', 0, 1, ''),
(872, 'field', 45, 1, ' performance '),
(872, 'field', 47, 1, ''),
(872, 'field', 48, 1, ''),
(872, 'field', 49, 1, ''),
(873, 'slug', 0, 1, ''),
(873, 'field', 45, 1, ' seo friendly '),
(873, 'field', 47, 1, ''),
(873, 'field', 48, 1, ''),
(873, 'field', 49, 1, ' limited3 '),
(874, 'slug', 0, 1, ''),
(874, 'field', 45, 1, ' customization '),
(874, 'field', 47, 1, ''),
(874, 'field', 48, 1, ''),
(874, 'field', 49, 1, ''),
(875, 'slug', 0, 1, ''),
(875, 'field', 45, 1, ' outgoing cost '),
(875, 'field', 47, 1, ''),
(875, 'field', 48, 1, ''),
(875, 'field', 49, 1, ' limited5 ');

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 'all', NULL, '2019-06-12 08:09:35', '2019-07-09 15:24:44', NULL, '8e10515d-0359-4b8e-bd43-9c9dca580500'),
(2, NULL, 'Comparison', 'comparison', 'channel', 1, 'all', NULL, '2019-06-13 11:38:45', '2019-06-14 14:02:34', '2019-06-14 14:02:34', '646ce527-722a-42d6-bf87-fbdb37fd8daa'),
(3, NULL, 'Platforms', 'platforms', 'channel', 1, 'all', NULL, '2019-06-13 13:16:19', '2019-07-04 07:34:48', NULL, 'd1fbc85d-f97a-4e53-9856-3a7f6dcf8634'),
(4, 2, 'Questions', 'questions', 'structure', 1, 'all', NULL, '2019-06-14 11:57:02', '2019-06-14 14:51:34', NULL, '8e51cf02-4db9-4106-95cb-ffcc2eee4ce6'),
(5, NULL, 'Comparison Item', 'comparisonItem', 'channel', 1, 'all', NULL, '2019-06-18 14:51:59', '2019-07-04 12:54:44', NULL, '07023f46-257e-4990-a248-ec935750762e'),
(6, NULL, 'Results', 'results', 'single', 1, 'all', NULL, '2019-06-25 14:00:05', '2019-07-29 13:10:49', NULL, '072abb55-81b5-48a5-adb9-76b43e20321f'),
(7, 3, 'Comparission properties', 'comparissionProperties', 'structure', 1, 'all', NULL, '2019-07-04 07:44:37', '2019-07-04 12:54:27', '2019-07-04 12:54:27', 'd384b8a2-a7c7-4059-928f-a40ccd30931e'),
(8, NULL, 'Thank you Page', 'thankYouPage', 'single', 1, 'all', NULL, '2019-07-17 10:42:19', '2019-07-17 12:19:27', NULL, '698013a1-3266-4f24-9c9c-2580222e27e2');

-- --------------------------------------------------------

--
-- Структура таблицы `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '/', 'index', 1, '2019-06-12 08:09:35', '2019-07-09 15:24:44', '352a8c39-dc9e-4356-850b-c9c4bca5b73e'),
(2, 2, 1, 1, 'comparison/{slug}', 'comparison/index', 1, '2019-06-13 11:38:45', '2019-06-14 14:02:34', '240db73b-5c14-4753-b8ef-cd9fc8532a3e'),
(3, 3, 1, 1, 'platforms/{slug}', 'platforms/index', 1, '2019-06-13 13:16:19', '2019-07-04 07:34:48', '82224647-071e-4b14-a990-41adcf4879b5'),
(4, 4, 1, 1, 'questions/{slug}', 'questions/index', 1, '2019-06-14 11:57:02', '2019-06-14 14:51:34', '92190fcc-04f2-47b8-8ffb-00a990fc2637'),
(5, 5, 1, 1, 'comparison-item/{slug}', '', 1, '2019-06-18 14:51:59', '2019-07-04 12:54:44', '11ae987b-fe28-4aae-ad9e-fffc4f8ce72a'),
(6, 6, 1, 1, 'results', 'index', 1, '2019-06-25 14:00:05', '2019-07-29 13:10:49', '2e7ec2b2-276c-4dff-b511-aea26af9e439'),
(7, 7, 1, 1, 'comparission-properties/{slug}', '', 1, '2019-07-04 07:44:37', '2019-07-04 12:54:27', '1933dbfd-8c38-47af-9c96-ea1537d1d19a'),
(8, 8, 1, 1, 'thank-you-page', '', 1, '2019-07-17 10:42:19', '2019-07-17 12:19:28', 'b2c7829c-41a2-478a-9132-0e5c24199f6f');

-- --------------------------------------------------------

--
-- Структура таблицы `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'iuEItHpBqaGKg6-yLRzGVS1hBzrwO2FFW3q7As-bRXPZSgXH_lu-4wIWYd6_r9fyiuNlfRjXINTFXBC1rksxt-hTjKae71chw3yB', '2019-06-11 15:11:28', '2019-06-12 06:59:32', 'adbac9be-e2d3-42b0-a5da-e9d176812cde'),
(2, 1, '6T158SM14at4T4yB_lkVkmFIftO387W2XzfEutvDldQDsfBJMJviP5YzwrmMItWPWxC5gOVTYGr6o86K5NoQlOtXvaeas9CUwsQf', '2019-06-12 07:17:50', '2019-06-12 09:57:02', '0aee78b2-95ba-4101-bac5-ba5770dcfa7b'),
(3, 1, 'CxS4cX2rbPQ96zrMAcQPJOiUOKE9akwcW8elcF6nwTcYzGAyjXryNnGKIm1Ak70FAUNiBi_Oqb7R9zeZMVg-SiX6vnI06guo_Rro', '2019-06-12 10:57:47', '2019-06-12 12:03:20', 'fca4ea3c-10f6-48dd-9d0f-ccc9834cd751'),
(4, 1, 'k9wBQK7zn-g3kOgLN5yxDv4f7aVvQaWiddUrKO2G8QtuSmMRPvbHz_TCLY-Q2HyrjIPAeJqAmFQz7fZ7XLiY8_yAfhlJWtDGx7nc', '2019-06-12 13:03:27', '2019-06-12 13:36:25', 'cd9fff0e-32d2-4298-ab16-bdd2f3927ebc'),
(5, 1, 'RMNlJEE_E5OrsCEunV9E45D6D27xXdiSYAkCRNN6xWcakafwkY7CB0WZ4ht6sCnX-OMwnpSiIERuy-4OcQqzxDrml7UGG_7QSMkb', '2019-06-12 14:36:29', '2019-06-12 14:36:29', '50bc6b37-cf5c-4260-b235-a149b2dd9506'),
(6, 1, 'c_lgkCEUAXmwsknUH9R1xZ35tQeTAhbvY49CxLHWdyNz7t_3I7arn3sjuUob8T1g8MgvOm0EYT_Pf9d642Bs8QYLQlBTu8auceMn', '2019-06-12 15:36:33', '2019-06-12 15:36:33', 'a6317e40-f912-4106-8d6f-113e5fa4181b'),
(7, 1, 'EvClXNZGwQFSL-tC18bMfiYNdw3m7LZ4moW8b2SZsZfT182P7cMw6lu4pw85pARs80ZuasqknLTaBUwTPon13IOu_bgAnDsvmCEy', '2019-06-13 09:36:01', '2019-06-13 09:36:29', 'f95efdb0-6121-4e34-946d-ff49871b7fef'),
(8, 1, '_WcFU4AVnEQ0sXeLiMXhbIgCsUNsTHMVyViEfLfz8mf_Dala1fEGN1nNbfowkDkO0t_39i2bju2LWo48uSb6OwyKcFM3yNNU7eGC', '2019-06-13 10:42:12', '2019-06-14 07:18:51', 'df9788e7-962c-4bfe-bbfe-15f7a31aa071'),
(9, 1, 'oKSGqUlzAUaLrxaCKzXlLNn4Jgx8pbI8wp8ju0jiwFk6Hgs5XAt0itgx1N45WETXMJ7bhBYlRSs8cLaZApZbBi9reJ4BX3kvbEQ2', '2019-06-14 09:06:18', '2019-06-14 15:11:15', 'b54f911d-c716-420c-b667-ed5c534a7996'),
(10, 1, 'epSt9W2EfMpV9MV7ep_GPmPM9llYvH-4A91n5BVIZMh8kZXicz4mqMVBgO86Uf2taxcSNJQS3uN1ELGFN5I8yuCVdCsbKN4aDNR_', '2019-06-18 08:20:54', '2019-06-18 10:17:04', 'e0b2884c-870c-4969-a552-e6d684b1f243'),
(11, 1, 'IwVH0aKYVOdMhmg8yeRthw6KPxWBXoZAlZOpMQjL9OQI2fTvjtRTouvGaxfxaLqRJPxxzpL6NlXsnRflVjprHDe-dCqikXOR-BG1', '2019-06-18 11:17:08', '2019-06-18 11:17:08', 'f31a3054-0299-4552-8965-1f789e0336c1'),
(12, 1, '-W2ZlXMP6zLrqfgQiN1d1_4jxFd8fXnk9O7Mr7AcGNv3U73AhSjPKFNTfTScUc3rWngJ08P8KT-WcE2qKX3kLG6sQOn0Z5vvq4nx', '2019-06-18 12:17:12', '2019-06-18 12:17:12', '45eae8ed-d2d8-40c4-905f-7a4ac3068d5c'),
(13, 1, 'QYG38oiTKo8LCUaVhdFi1yj9ZralkSWauoI-NckHJ7Tiqn3Sh16VGTTYhdo2KC5lxg4-dsjPFzm7zwIkjiZUeWXvBYncmcV76ApJ', '2019-06-18 12:17:13', '2019-06-18 15:23:08', '637a3279-97ba-4c4b-8036-983583f0abfb'),
(14, 1, 'qEBQeI97Sb-Eiqn0jQl8v_nQi9WdZ8su6ylLZtkRqavGObo_3ofWgpWsE0kwgeeSidno5bugL6kU_vR3EiMG4p08JixDjGMV7fcX', '2019-06-18 16:23:14', '2019-06-18 16:23:14', 'fb948882-6b88-48e0-815a-96774ad719cf'),
(15, 1, 'NpKvJNCP7xoIyS7744QDSkDMGyNOEFRZlzFujT4QjFEG7ReOKtSeaOIXO8sb6_sJ8e13DT_-G2wFWLsfHSSt8GsP8fDoUKMzolZF', '2019-06-18 16:23:15', '2019-06-18 16:23:15', '2c8f0007-0142-4994-a58b-159dd5387390'),
(16, 1, 'Ohp4oY5P_G3hUwkjYXTJsIN3ndshGzAgNfLL_wWA0_r6nJa998QDgHbxSG05odqQs_ObDALjE_bhtbWNTciYgLoqs6KzFfCdNZW_', '2019-06-18 17:23:27', '2019-06-18 17:23:27', '718189db-be5f-4542-81d5-0a0a82bfc7af'),
(17, 1, '1stHQG-c9AhZt-5k4yAiVgWsG8qD6A_-KftlAaaaN2PtrS7OiIRt-7tJpfh6maLig79h5TFdbDUQgJ_RK_yJsSoQJUSAfEjcZe3_', '2019-06-18 18:23:34', '2019-06-18 18:23:34', '55780b51-8909-4e28-84dd-180d1d4ccdd0'),
(18, 1, 'wCMofOqYAGuczU38ExvwnV7nfqOYgVJfhbjmO2QGJeyN_49a__i-GHiFYE5w6f9h6M4w2A3rVAtXt4jggJluWibTv42MNAIhyG_a', '2019-06-18 19:24:02', '2019-06-18 19:24:02', 'c7d982db-7b4d-4bf5-a50b-2576b0871516'),
(19, 1, 'ZQU5PEUo3uAhLzaOVY9QBkfRyn1gTvutXZFywXWl14ywHvzNaDH4WwiVsJsqt31fIyW0EX_QWPJFyTP_86RTfHbGHRI6GraL1Haz', '2019-06-18 19:24:02', '2019-06-18 19:24:02', '7a160329-142e-4942-89a8-26986b2ce3c2'),
(20, 1, 'YivBHzTBFKdW_LFuEiiFmRdljLeTyC4T-nm90tZ3ZLfEVn6QzYRCTHjTKQpikaA0CbHi9j_bnrvc5Kh8RUAGsbjnyI27_5Ftw2gK', '2019-06-18 19:24:02', '2019-06-18 19:24:02', '27dcdd58-cb27-4b22-9bf7-d282507d3870'),
(21, 1, '325H1uyYwxnQuWMOrdRuo1BD98FidJVc4811_x7NmZqZAK7tNnF3UDMHXq7JprWvJK26BMPx8BlfUTfJ2LnVE_s4vq7wuBcRAOPG', '2019-06-18 20:24:33', '2019-06-18 20:24:33', 'bdce5335-e0ce-43a8-ac2d-e47a1e9c188a'),
(22, 1, 'Y9l26aj4on7zS_mBgpui7mS0vRyZT4RcZaFl2wjGZYZWNSgNkfAGVwEDSKixW5JrfXOm3x0QkIWth64IzRFgNljEExmYtjxbw-hm', '2019-06-18 20:24:33', '2019-06-18 20:24:33', 'e9ebf568-d872-478d-83a4-7307f8d9b41e'),
(23, 1, 'qWr7T2ZbyAFn74SEPo0_t5Okn8evrFNe4jXJXELOjcac8IygXy1SukZGhS--E_HdWxdzY1jU0Ryz0TdsvElztUW5lCrXzvc9D4GP', '2019-06-18 20:24:33', '2019-06-18 20:24:33', '648cc011-a0c0-472a-a41c-eb3ac4aa7df6'),
(24, 1, 'c8LFPFRcuitOiUthwtFZYpBL6qFUzIlRgaB6PhrGbvtQxmd9tTA_7dhmnBha9sbTBOfiqehoydtJ9diyF0La2jC6HjEfX4aOwk7Y', '2019-06-18 21:24:39', '2019-06-18 21:24:39', 'aed9576b-ad72-46dc-985b-25d39387f93e'),
(25, 1, 'lRT7MNkA9BfyHe6ZhkRfwWbb2jGnHmdwQJVgwgBXo8L46EmvJEh7lQoNqFY9GVcXf9kmBS8h39p3GfcivlNIkjd23Mys_MZbYsct', '2019-06-18 22:25:00', '2019-06-18 22:25:00', '5a06c2cb-c4da-4b2f-a332-b7b03b6b1ebb'),
(26, 1, 'QBkRPcrLWEprN42S5pxaaUDkmKGdYx00Nu-NHlBP0cnIJWiF7jT_3s1D7vF9DopjEoqVuz2mJDEbhKTqEnNGBoAARAKi7bZzPIZl', '2019-06-18 23:25:06', '2019-06-18 23:25:06', 'b305cf97-8729-4ecb-ad0d-2415ca638cc6'),
(27, 1, 'j5q4zc6xdq4ZNvpJwsLnOIeAT1Gn6hVCz0LlVPA-4Xz6lmAZ769K_q4ghef_kvwqcBDoHbZhk45sfu6vNZ9b0z5uKxFeuQoHIBGJ', '2019-06-18 23:25:06', '2019-06-18 23:25:06', '91aba748-bb34-410a-840a-accfd31f8220'),
(28, 1, 'ccvepzw-eNFfIIWXHOv0Y5GYgmtJ_KJo_ckw1q3Fk6T3MJCsJ7TAnaQLyWIsqnW1RpNU53KuCgYBNjQs6Si-FwPFcG-Pr-VEksyl', '2019-06-18 23:25:06', '2019-06-18 23:25:06', '9fe55777-9c47-4dcc-9906-cec5d1eb5c9f'),
(29, 1, 'V7lhQsc6-34GvBK6nX4ztQ6sVGi1YMJE3zMR0MO8SeEbUWvijk50YqenUjpxMYPpLhtlF5rWnXF0HhPNjuT8-G1Oc4tZb4fgYI21', '2019-06-19 00:25:16', '2019-06-19 00:25:16', 'fda19238-65cf-46ce-886c-0a2c85236253'),
(30, 1, 'h9POANIbrWuFbRYjrvNQtjE8Ad2Ac2PV_YPvM-fgr5U0DIat3ZjAeNYzRGJP7pXdIuornwkWL35_S0cxhk9JiiZfbHl99mkIN2cn', '2019-06-19 00:25:16', '2019-06-19 00:25:16', 'bf648551-0fcf-4861-a973-dceca1a94763'),
(31, 1, 'D3M00IxHWXi4ZAAUeqcY-PR8axHy1znHJTy0X_R_IIXyNnG0wcwbgxxadhNhkrvYxG1gm4p4x0018uo5mKvpOOHo4IVQsiyiAGF1', '2019-06-19 00:25:16', '2019-06-19 00:25:16', '20f46eb2-2d2f-4d32-a218-196ff7160d15'),
(32, 1, '-rrRDRd3QYrB3i5rjeIrhvdevrzSBaSKVU3pNZoj9v9xuN2inV1se1j8-whJP57-FSUF2-ldY5lGdGUs2kPxO-9oT_rPKpSViXOZ', '2019-06-19 00:25:16', '2019-06-19 00:25:16', '0b992b09-a8d5-45cd-b843-2477236bc3e9'),
(33, 1, 'Gb9UNAX7uXbg_Wo-YRAiswwdYLJMQ1F8tArmzoeGPDIrWHf7UpysYZskty3C6cVeX8jXkHVWJyaez3p2ouujkjob37S3N1xaMxHN', '2019-06-19 01:25:24', '2019-06-19 01:25:24', 'c9e8ad99-9903-44b3-aa70-3c16c4c81e16'),
(34, 1, '75z6jUwTsMh4s6R2XozifoFmyrICf-otRlePHJsnc-meUq5FUd3HOQd7NyaEoWapsJosHDFP3elf3LdfUiVzyiv7WanIJDIwYSh8', '2019-06-19 01:25:24', '2019-06-19 01:25:24', 'b4c3ccf7-c16e-4591-bbee-6782cea1954d'),
(35, 1, 'SX0TP1_46PZ9LtZIGYC5nDGDYVEBpryA2lfvrhrY4XPIg8Jc6K3awbH4pWqGC0CEMSlI_CBJC3wPa2pctKgl3F349-a1F56QObuF', '2019-06-19 02:26:07', '2019-06-19 02:26:07', '908e4b3d-a926-460b-8648-51ac386a8e7b'),
(36, 1, 'ZAmpuGzdGY5aMlFjdT8fxAEBQ_lH-hSzqKmAZ58kErmbtvOP_LQ_1tMEKCM_4W_-gp94yIajxzHkz-Q1jH9MFRMYCh0IzJZvPeTD', '2019-06-19 03:26:40', '2019-06-19 03:26:40', '49347caa-794d-44f1-bb0f-2afceb2ba4d8'),
(37, 1, 'P8K8ZSe-iTGy6PishMa6Bvm2ryJHnNvAacr9n3EcIF-Ja1M0atdykOzXyVTJ3nqmyvzHJfzLAlOq33vcbFCXbrWRuqKbNN5K3FIC', '2019-06-19 03:26:40', '2019-06-19 03:26:40', '32826560-faa5-4ca9-bf56-2739bc619382'),
(38, 1, '2ZeXROxK9Own5d9pbL1xjLXHjiS_6dLoVZxXL-jY92TTfJm7a6eZ0WiuL3VVzbTOTSjQRAU0oea7xHXMAhicefh4of87IWeVS68P', '2019-06-19 04:27:04', '2019-06-19 04:27:04', '22467ad0-bdce-4aa3-8c49-0cfcfe6c2da9'),
(39, 1, 'bPNqlGaQdeoZAiIQaoCogJ6BOUYCEfwOqx1B9znPy0_tzLimIqvHyX9Y7TE9Iu3Y7TRMCOKplp3NN7tk77OKnb19Og0EG_2JWBdt', '2019-06-19 04:27:04', '2019-06-19 04:27:04', '1608f6c2-84bf-4c56-94a6-e46dbf6a79a0'),
(40, 1, 'IgqdEWPwlbHHWtULavtDpVDkwWJWxUkvOWumxqQF5NOUVU9e4w8wFfle1GSFrA8s1T0vU1lgbfUXHuxChcFyoVdiyWIIveIlzacb', '2019-06-19 05:27:06', '2019-06-19 05:27:06', 'd00ee90d-4db5-4b2d-9329-fd54d03a1da2'),
(41, 1, 'qJvK9A9It49-edTy-bP0Ntm9i0BYoshu9SmrijboNZgfOze9_CikorIhG0BgFqCY1wuWfANgel_dB5ZkFo-HA09549H6BSvhM7Qy', '2019-06-19 06:27:09', '2019-06-19 06:27:09', '8092f9f7-9f4a-4916-a532-236c32c63065'),
(42, 1, 'VL0IiUN86790z7PVY6tkmEf5tUjpdPOUJolSmqZP8vK2t83cRcztYMNePsWfLcL_CTX7v3IfoErSY-9G0CNBF37_s95nsEa9woaT', '2019-06-19 06:27:09', '2019-06-19 06:27:09', '6bc9e206-c73d-4018-b7e5-7a0ccbe960af'),
(43, 1, 'FZ_VR6Zk7fNJbu4ipg2Vl2nN9Uy_ZxmhIT7MleOFOj9ej6yUr_KdoeSoGwyA8AX1tidTAJiPEmlMQquf7q0w8O14VBI1GFBRPrkd', '2019-06-19 06:27:10', '2019-06-19 06:27:10', 'c2d48cb1-4575-4796-95db-e55427e8ae01'),
(44, 1, 'FZ_YCsyQmG-uPKY8VnpBycYUWNT3FHjfXhIqqc8a-jPUl1AqiqoE0S1Hznkfou3z7gsm11tyz43SXpMndew0_YFp35rXTvTaaMYg', '2019-06-19 07:27:14', '2019-06-19 07:27:14', '8f753152-7985-4b7f-afda-97dfb4dfee6a'),
(45, 1, 'VkTXKMi5q4cQijuwrcNx1FQT1rOX-4iGKZZiPV58Du05gJX0PWEQIuX02w8vAYgqj5WGO50qS4qRKnNfbTR7KLXBcwocNkKZOA1f', '2019-06-19 07:27:14', '2019-06-19 07:27:14', 'e086ae7b-224d-4f83-a805-a409a9ababbc'),
(46, 1, '3ufipORqJx3OKOvMRDCN3dECg-mok-AkSJR9W-0h2UEeZxdEZb0ttlTmmFQKPZKhauNcTrUTM6l2s10wyqtrdDJXRd5pUnqethOs', '2019-06-19 07:27:14', '2019-06-19 07:27:14', 'c56fbc84-b277-4acd-9e23-776360f57927'),
(47, 1, 'xmEnzudi55M7ZZzvW_FmrWF4PjibmRVeYXLzVYGNWqvAEGfMuwaKfougXVFeIBDkr1j-yaqq_1h7GRL0bSeM0z61EGWtFIlH2Pjw', '2019-06-19 07:27:15', '2019-06-19 07:27:15', '5d5bf765-cbd3-4629-a6f9-938c17a7e815'),
(48, 1, 'gEm6yIOkj86YySU-NkbFvE8jtOgdzrW_eXzxCmBQ2rSoVbDWrOedx-b5E3G9h7_xY24ySr8YjLEEpMAlDjJd4NhcHlh0pLUnrZsU', '2019-06-19 08:27:19', '2019-06-19 08:27:19', '03704ec6-6187-4504-bc15-3a9bdbe18d5f'),
(49, 1, 'tSa_REe9ZwY7u7Vv-QOk4PAA2CG4updxpS_3ck0WsO1e2Fs27VuGStg6SQcV3X9HL35l2GSC732ToTK8DjjDDQmy4YIFZF_YtbJR', '2019-06-19 08:27:20', '2019-06-19 10:17:53', 'e493a6ba-24e4-4493-bd08-c1e3a20379b9'),
(50, 1, 'u1oFBUiTCkGQL-VbdJaoYf9BUWUWqa67iVOMUudB9KCDAMa6Q_7nmLgHP0c_f_ZzOJcHvVvG9Aw4Ex9959vHWY3wPwq1u5IQr3bR', '2019-06-19 11:17:58', '2019-06-19 12:27:59', '91af041b-150e-49ba-95b5-a63c786c4205'),
(51, 1, 'PPtoypcYZ9enmG4QuuMkzEknWOCQpv7vOAZE6MOT7jyolcr4G7tx7ODQa5Y_v1p8aF4c_rvi4_NDvXhbEsTAvEnB1SRUEIyKc6UF', '2019-06-19 13:28:09', '2019-06-19 13:28:09', 'bd2033da-4c7c-4971-8a6f-e88d83d9860c'),
(52, 1, 'Zn2ueQ9xMlwkb3pfqgwtJMl49uxZUEAsCMRBSblju4LO3vFF9EztyZWVu2ebrIwa6bmxBo0v3XrJcSeWrV8EZA8T7J3TKRK43fc6', '2019-06-19 13:28:09', '2019-06-19 13:28:09', '7deb6b8a-60c0-4d11-9a7a-97a759b0a18a'),
(53, 1, '1_Jh2WFvg5CrrTmND10DthQgNtviyy2XmEqcfy6sjtA3qx5-aCfrc_vhC8dky2QlbfkrCSGRPvg583k_0IrZlDWurlHYq6t5EAQk', '2019-06-19 13:28:10', '2019-06-19 13:28:10', 'ee862aa9-a6d2-4ab1-b9ac-1fa92748f4c9'),
(54, 1, '1gmHuonAbUJxTwBqqJs5fPsWa-YynEIVWB4g4gVDdkGo5P5fMQIqN5QKUFXJOtC0DhD5xjFmU_mGPUybNzJwbd2Dn9ySltAD0gEx', '2019-06-19 14:28:23', '2019-06-19 14:28:23', '24e68747-042e-4cd0-a273-b4af9f13b501'),
(55, 1, 'ZuAV-BTYG4Rbb7KtTS_ldJcG7KYYwYIla1zrNLvF6uZFZqftcuuotmeu7L8vsXZJPV_hwPt68FWweRHU76azlVEX3zmJ3mA61z0C', '2019-06-19 14:28:23', '2019-06-19 14:28:23', '0c9c5390-b7df-44d4-b250-081956c21b36'),
(56, 1, 'ScWrYkEV--xg_6jdvP5P-P4J_mCM1hBE-7lUFMCUAM9r7TLQYYb2f09W04ug1SMAhMG4zUA3m-8QGE3096-QPgeER04NYK_fSxM2', '2019-06-19 15:28:47', '2019-06-19 15:28:47', '20b56aff-8892-4917-b166-27b240f3e58a'),
(57, 1, '8W-3QPFN7Jt02fhudOmPBee-HfFR-iB6zv7Jlt_OzfHJkrs1Ciojb-4iYi1lwNQ6O06mZ1iojfyKikIDHHI-0TXob4srd0ZgfckL', '2019-06-19 16:29:03', '2019-06-19 16:29:03', '1a737f47-106f-4359-9e73-773fb06424d6'),
(58, 1, 'jpxJoioKeXnC95xKEyaQUMk7JOzrWH1xTqJo4QBA8_WcgxXmlHC4z9mbIEfNC-y4JpBzN5PbXHbigc7CZplmZTfcRnAuTn3qB0aX', '2019-06-19 17:29:37', '2019-06-19 17:29:37', '3d3a3228-d544-4a6b-beee-03e7ef287ae0'),
(59, 1, 'mPoq5YfsxO6fSSoidJaIFRGZAdRNQDire1_t7y4NSUNFG-XRengcbXjJVvwnH8P2T9fF-q6PhBHb4OhVxa7Aed5gYgQ_UJ48KeqN', '2019-06-19 17:29:37', '2019-06-19 17:29:37', '2d565e45-b46a-4f51-96f3-31a8ae002d2d'),
(60, 1, 'NwWpe1GryiXUn_A0_uFNW7X0F6uy-KuBs3ltbKIULgRwhdjS3b79J3CJuRD1aU6kiGYZ01RuNLoR4-cGx1rofLYdQA_7DHkHkQb_', '2019-06-19 18:29:54', '2019-06-19 18:29:54', 'bb4843af-46e7-483d-b565-6a2b0409976c'),
(61, 1, 'A6KYcyPaSCf3yloauirEaaNK6YTZ8AQC1lHrEUKtHoSUvfGSS9ImGJ43g0_BQcVHCbAAm1WflPchAct6JCnT-mpQH91VlZ1NqVzS', '2019-06-19 18:29:55', '2019-06-19 18:29:55', '7822292d-f7e0-4994-ace1-13c6d67552a6'),
(62, 1, 'lBtQvdTq5sBlLzDf0s-ryR-GPtKy0NFjHuw3td2FiFP2Bk-BU84k8YULy6kmPptMTnKPJkN6K6ySEy2HwOwN0iJLGm_MRdfFTdie', '2019-06-19 19:30:00', '2019-06-19 19:30:00', '8580100d-9c17-451b-b0a0-839eed86d994'),
(63, 1, 'bh4KDKWJIiWXnOIYOScigFUOf6CQolRUi2N5b1VW9sS6oonxIlM-tnvcIUePLzMHgEw7dqDU_ePIt6fRrH1cVsv0EE0CUwVX0aXj', '2019-06-19 19:30:01', '2019-06-19 19:30:01', '0ad4eb70-b442-4115-9d29-ee3b5c8cd082'),
(64, 1, 'q4As9AASFJv84XpVSrnVcFj8k-cvZ5g4b5ZUtYkjs1mZYGTODNxH1GYYWO-eO-i3GnBOz9CXHCeU6aKKZiJr8N9oMapG90udqWcC', '2019-06-19 20:30:11', '2019-06-19 20:30:11', 'cd8045d7-3b39-49aa-b82c-eda7563e2420'),
(65, 1, 'aDcGOevoBpiHJ9m10u9eUppJvy6pm-3zZqYfiB0x0l1GgVU11QxxltynSIUSaQXq_DZCcUmV-CjT57WfuNsVxfqpW7CB9lDFpnz-', '2019-06-19 20:30:11', '2019-06-19 20:30:11', '6c6a58f9-12b6-4f56-9455-40dd6fb61176'),
(66, 1, 'Lhzz97FmT9cX4FyFU6BF9j6HLCNUWHaZt0l17MTvUYNkwxkoyW5R6wZvNmjcTIY7Vz7E5GykJY7CyrVuEGSevwBNr-jzbxPQ-VXF', '2019-06-19 21:30:30', '2019-06-19 21:30:30', 'fa6dbb20-414f-4e9a-a951-e769a831b441'),
(67, 1, 'JDxl9cJHzl6d7dhcSEH74ZOY3wGbclPLbx0Xz_jDLuBJtDWtI3X3BlgMLgABUd_eiRi3QsE2xxPtRYN7tPaIGAOMF70c_pI9DpJA', '2019-06-19 22:31:07', '2019-06-19 22:31:07', 'da7b5032-6f97-4d01-a24a-9967bdc35670'),
(68, 1, 'QPCz-zH8V1Nse43bUn5qtdmPVGLTdy5jo31nLKNNNKVm1w_uJekvzQOa352BQd270Jb3yW1o-aiNIFh0H9tdRjZNVJYdv0r8mFwW', '2019-06-19 23:31:14', '2019-06-19 23:31:14', '4a4600fe-255b-4e4c-afd9-68c92f8ac171'),
(69, 1, '3TyJ5J4HDonafS1gvvjtDj51lp-uwe8d7IXrJMhD99GgKaqKFv7OpSjk_RASs2VsPE57I1RnSNq6cf4v1OXsVVlyQwkhqFCLB0z4', '2019-06-20 00:31:30', '2019-06-20 00:31:30', 'fdbea6e5-0255-459b-81b3-91ffb75b9b62'),
(70, 1, 'TnfX4eRya3TNIbOQxsoH9b4FNG33V0IJnOGLQaBclBda7dzfB3Uw-qfKokUj2n8eYs2f3I-qf4enX0Fd6xLAU7aceHBteJkmC73n', '2019-06-20 00:31:30', '2019-06-20 00:31:30', '5bbc6142-8b94-47a4-a8a0-482679e9050a'),
(71, 1, 'Ol5OXPpAjuct2RG-TlRZjIVARZoZsfQkmupV5Xp2anlPe76WMA7ql3h3s2_s8oWJuGkaNURQo54uoWIBTGa7CnDiQ72rQbtDrCRZ', '2019-06-20 01:32:09', '2019-06-20 01:32:09', '241cce50-2688-44ec-a246-54b62d489287'),
(72, 1, 'dy2UE72wcG-n8i6eiiXnVPO6ef_I57vML60NL67f3y2s2Ogjm807MhBzSfuNgUVoIp-8PHYL2uzVe9rI4KNum1rltV26CHgD44-Y', '2019-06-20 02:32:19', '2019-06-20 02:32:19', 'ff454ceb-b084-4aab-9e1c-3a717eb6694a'),
(73, 1, 'MIGBgGH_XXDvaNEDRqfZGusJs1oDZqQAfP6WSTx0Aj_k6AJSVwed2ZySED84TwGKTFAf9V-ItZg1iYUcx4Bp5p7GozcN-Aumcq2s', '2019-06-20 03:32:23', '2019-06-20 03:32:23', '34b4c217-0faa-4256-b736-ef40ec46dee4'),
(74, 1, 'pqD9JU5HLyKxwx7cm-XpvBlO47PoW3Qqq1N39I9eiI_UlHhHNjXKOU6UBe9dv3kajcLHzMxianpk8EDHa5OqBESW_hkP7D4X5Zsa', '2019-06-20 03:32:23', '2019-06-20 03:32:23', 'bc8e32d9-603b-4980-903a-7daf599772e9'),
(75, 1, 'SXwvtOuAAYtA1IUvspaDzNzqOxY-Hub9MzN3rLy4bbUP1N3N2g-jszUd8ijJ6Auk7rVoawPJEB1yRHt0l2WSdPMdRK8Dm14G7MDY', '2019-06-20 04:32:31', '2019-06-20 04:32:31', '86bade28-a9c5-47fa-950e-2fcceb0cab61'),
(76, 1, 'ZYEGhwXacRRNUDIh7MRD7jwkksWN0dE6UMj00vIeJlw7qCuX8umppABrnW6HuCseENipJFha_OFD8jyP-nC8wROPSr93th9RkJa1', '2019-06-20 04:32:31', '2019-06-20 04:32:31', '9f8d229c-d811-40c9-944c-67d87b4a531d'),
(77, 1, 'KGm8ggrIbE1aF7xbp6EsPQbPRFBDYFrfO7WuP6HmdiBxoS5aU0wCnv7E4uw2IzWZ5m8EsWVnkBUJj0-KXvIAD1dU6dIiS_qdLYy0', '2019-06-20 05:32:44', '2019-06-20 05:32:44', '28bd63e2-eb5c-4b14-8af5-2eab61b2be26'),
(78, 1, 'D1j0T0kNmEUui1VbJDiBKohWZWB4oH2xAcvpWAMtvLR5KdCz_P7XYZLL-P8abgMEcAJfYfBWPTZ3lhLzzQc6GkzTYsTZ3GiLPrsf', '2019-06-20 06:33:00', '2019-06-20 06:33:00', '734de3f2-6af4-4561-b1bf-b991c74c7007'),
(79, 1, 'LMTcsDaeTGJY9hwLXZt-7ymsIPxFBR2VTHpZm0w1FqkK30x3LHRnOJXGpBWFsiwRs3RSiQgUWNFAXgkPsM0UBjvjw-Q11ssK2iQy', '2019-06-20 07:33:34', '2019-06-20 07:33:34', 'dabb095e-d6d4-451f-8b3f-04ca59cfb289'),
(80, 1, 'rhy_WJJOy-QEdPHspRVNLXcqMxWixJJ3tPr2GBMnKEDo_nHcOM0IeoEGCOuzYlZzKK1XV8GnuigrU0mhkS-cEH7AgHQ_7QnhAEjQ', '2019-06-20 08:33:50', '2019-06-20 08:33:50', '8d3f15e8-9344-4d9a-9d61-2d134329b675'),
(81, 1, 'tp5ZedQeXj470mF3Rc3mdXLb11R2E1qDNgUSW4NoKHk374er9W7ppgtAgTbllnE-yqC2ArZu_KQ4gA8DzlGKEjA34N6yUrvQhLGw', '2019-06-20 09:33:55', '2019-06-20 09:33:55', '5e044424-bb06-4981-a715-ac6b56625e34'),
(82, 1, '0OnkNzY00ZeskZKEy98pf8rZUu5oDGHDqCn4xLpvLg2l5KsI598sTvnh64vPlrcbFQMa1L5RPTYhJisTxDGivUBqVG9duR7e3Km4', '2019-06-20 09:33:55', '2019-06-20 09:33:55', 'b9ea6a9f-0339-46da-869a-0b0f07636db5'),
(83, 1, 'XwozZmMLG9vClzYTm3vmMA_zDN0ckquec2SrKDDinIO3YgdSx3n_coVbfKs-0TtUek2PW-LEl-TlKMPJGEQFDVjFfy8I43WcixsZ', '2019-06-20 10:34:00', '2019-06-20 10:34:00', '750f90ec-1cbc-4420-ad56-487fdc04664f'),
(84, 1, 'AXtPI2qSsBhrdRY8L60D4P4NVsYhsz4ZfbqtFxkCOPJhbo8z-Eo-GjQ7q7kkOwJnNWd5RBTkKVq9SK7IWciBjnTvDIpgBcU_9ffR', '2019-06-20 10:34:00', '2019-06-20 10:34:00', '38128474-8998-4fcd-9da7-2c1b2078811a'),
(85, 1, 'XVtct7OJimCkmc_HXbhT4yvP2bSvwp5CkjKfQjawV3uMAelDvpnhuCbGSZE9vULRsdH06hUDWYNNABl3V0EitjY4PxctMra28ndl', '2019-06-20 11:34:20', '2019-06-20 11:34:20', '09f3ef5c-a903-46e0-9cc0-07a81e7a83fd'),
(86, 1, 'ASlK-iiBGrEUtYP_jK8sDeoDVGMj4AfthaIJdNmZxDt2aTRQpM_yTS8qf4hEDiKLwU1sSZQ_2joZyB4G4OtFTKk9VNhL0ONvwS-Q', '2019-06-20 11:34:21', '2019-06-20 11:34:21', '0302e0a9-1879-4772-b498-12d954ac8791'),
(87, 1, 'OBlLi9cMEbgmABy9eLysygJ2_LrMuUh9w96Y-YsVCpXYeLJoSxsE1ODM2-l-4MzLEj1Ih-e5GRVUFozIVp1NxvkswdpNouYnL_m9', '2019-06-20 12:34:31', '2019-06-20 12:34:31', 'cfd49d3e-762d-440a-8ec7-ea06bd180b34'),
(88, 1, 'HctF9rqwC5v5AZqtrvv549tIufllaEZ0zu8cDtb4KWMj8wP2crQluGuxg8lsPosIsR5QX2wYCrW8RDrRXi_zAB3Tf58zd1h6KaxZ', '2019-06-20 12:34:31', '2019-06-20 13:04:56', 'ee9d2a0c-58f4-4d2b-8e8c-5e442bbf0671'),
(89, 1, 'Xvncf2Hz86KmMtJwCrK_YBTzg1BRlb9gnCCj2Yj_ZVXgzqhp7rHU-GB_IPeCGd0B_6FYLwqZtraffXO7dLkN3vQsydn8wdjjpHS8', '2019-06-20 14:05:07', '2019-06-20 14:05:07', 'b6c0c062-8b07-4bdd-8301-ec131e0ea7f9'),
(90, 1, 'WtOzDwBR_K26Cvg__LG6VJwa6vBpmmxV5ADquZiudsCao9kblt2OevtLPju6jkACsou-otseuLPnX7Je5zDF2Ir431fAaFKD2DEO', '2019-06-20 14:05:07', '2019-06-20 14:05:07', '293f6dc4-96f8-4f39-b96e-b89dee2e247b'),
(91, 1, '17hHI4chGMAkbxkBEImj7XTQeLPEWChJC1hWs0kL0I6hmCO8MyRwCDW8MMJvdKyqqMHPlYle_dlhew5UeOwfvWY0zwdfC7-6iOsj', '2019-06-20 15:05:12', '2019-06-21 13:58:54', 'cebb6a5d-6290-472d-a0e1-0750aa490d30'),
(92, 1, '-Sg27lRVHGIYRhDdF6uT9INCs0k2_ArlkSorXiHp4B4vAK-ue1eLNq8IYxu15ixupy4n2TxGJNR1mczrrXfqqK2aJap86mRi_lIG', '2019-06-21 13:59:06', '2019-06-21 13:59:14', '857802c9-1d2b-42bd-8436-055cb102d3a3'),
(93, 1, 'lj2uXWISb82hJVMwp13TArncas701C4eZXtAgEaSJ9Mnx8jRbdvA5DacZYV5DooFzRpEBY7PnHUpbJdYdwOjyj_q6AZwrZLUHyjP', '2019-06-21 14:59:18', '2019-06-24 09:25:05', '8d040d20-e5fd-485b-b324-1fe743ea5897'),
(94, 1, 'RhcT7tZ05TpU3DEvkqd6YG02I5hnYBrtXb41_whILj9BJELBOjddUbchCmF2582CiYB11ngHgaJ8VTHUAhgY4UbYAgklAVnxyzpV', '2019-06-24 09:25:11', '2019-06-24 09:25:16', '2e783b5f-c6e1-4691-b532-657b3a111209'),
(95, 1, 'r2FS61zN_1ea449H-tMVJajqxpACS0o2tv9fZ6mT7TDW9TPHd2AXHA76D1lLbuAYMs_MA7hl8lNeUQ3BEM7EeLRrljBLqQwMN_vX', '2019-06-24 10:25:25', '2019-06-24 10:48:28', 'b31f2762-3b99-4457-9a4e-d2d73fc26989'),
(96, 1, '5Emtb21QaRx7XzvqIdb5zP_SAja8_d5fdRM2SdDGthzMP-QNGK50z6GDh_U3Gg9meNRAf4b0cYOLmWfWNQeVVOtAHDD5r3cJ3t4p', '2019-06-24 11:48:35', '2019-06-24 11:48:35', '3b94c8fd-6755-4738-8628-aeb57f0ddee3'),
(97, 1, 'vhVnfVySfIzqef6_cdoyFra_2pG246fOdgT4X6YVUkWBAjG5RfbxH-274byNqYzvel77B9d7fevWujroMjKeVYvTN4bXPk1rnibW', '2019-06-24 12:48:38', '2019-06-24 12:48:38', '1a487fa6-7f7c-462e-b12c-b488800fa194'),
(98, 1, 'WLxhzvzQ6krE29T94okLPToId1vwuJR5-oDwOd3klUx3I122NLHK_UCKfZQerTmPZuUOacpQF1wKXuaRIVXyVIlQkrnBjV-t7_qQ', '2019-06-24 12:48:38', '2019-06-24 12:48:38', '2ef23a05-5478-44d6-a4c6-edeab5cf2b36'),
(99, 1, 'uCjTCjgxCvFp5MphpTDidyoXGGcqlUxeDZ-lu4ZNJKQBrzT0PBOFtnfoMJVE7bqG0X7wlE2KoH-sJ1MaDpD9u11L2qT6YGkQKmGb', '2019-06-24 13:48:44', '2019-06-24 13:48:44', '10224640-4cae-4092-bb2d-13a91d7daabf'),
(100, 1, '4XDIvTiWGYg_2Pcbuvc-r7j_DgLS5MTRBBiyQ7RXJs5i-AZG8tqjyZQRg1vL_S3i3J1pJMhrGL43pn7AMQbknehVboJD3BtZzqYm', '2019-06-24 13:48:44', '2019-06-24 14:25:07', '5cbbce2e-cfaf-40aa-83d7-831f708cda7d'),
(101, 1, 'PkRRuB3xJok9X1vS2MQrh2dR4T0AfbvL0qP3fLXaLzktDiuxaf9nTvTqbYNzXGcoh66ZSt-z51dj7WU2bvEf8vdFfmbzqWepPMxn', '2019-06-24 15:25:10', '2019-06-24 15:25:10', '8ce5617b-92a2-4a0b-9647-b55df115ff49'),
(102, 1, 'q-BiN-N0K6SPTAuFj3qO_ysuG_swQwu-aQL9HK3xpgkPDL_f9ozGcemBAy8khtOmdtmrhkiJCw_hWYYyqv2e1YxxHvO5qpDMufdp', '2019-06-24 16:25:15', '2019-06-24 16:25:15', '8145c737-0ae2-456c-8d0b-4a70e4f06b5e'),
(103, 1, 'pD2yUpjqM8naFLWQYN7vjnucaxhPq2__azPtg1-KWVAYcvMo5aHTGolxtO5bcf63SMERzOb8CuAvcHwYOnaG9NAVCiMcD3TJtTpg', '2019-06-24 16:25:15', '2019-06-24 16:25:15', 'b25eb7b7-1da1-4c6e-88b8-bf71ddcfcb4c'),
(104, 1, 'dtGreO5ueWWdT_J1whvsy3wyYBrPgjOUd_HS8NdF0O8GW8XayBUGp6qlYbYuuySg29hhw5M431fge_t5i35nVrRr5AiWBFfRzSET', '2019-06-24 17:25:17', '2019-06-24 17:25:17', 'c4ebc24f-c7ed-422f-b232-0dbcea2b3ff7'),
(105, 1, 'viaW1n6dzEB-NZh0t02rZtGEO_j9C6lgK4Pw3P91MeXMfrsqoUjCvYnZrsOLP9XzROMAvvuzd5COt5_Z0oA6v8MG92Y99fB1Ri0z', '2019-06-24 18:25:20', '2019-06-24 18:25:20', '3a2e9816-2700-451f-bfca-5cdca969c5f1'),
(106, 1, 'wRYuorgxtP9aQ8AKrfFb-UD7pJ50Gq-n04pN0TGARceNoNQ-mcrOkp_rnhXKJEQ3jDxoPzjC6i99GGV6vuTLCuYlxL6Q9c70zA7i', '2019-06-24 19:25:25', '2019-06-24 19:25:25', 'e14954e6-f975-4088-aed5-c030f928d1a0'),
(107, 1, 'noZMyui0TnUh1-VCgiaWWlRrc_BFpzTHUf1oTsGHU4PkxVqr-y5s1Dq-ma1tDE8bK118qKo8WsMmv_oJjbUfUumRyjfMbbXphVNB', '2019-06-24 20:25:30', '2019-06-24 20:25:30', 'ccd17d21-fd94-4f11-860a-f7ca9975a94e'),
(108, 1, 'dnFkmAWzV8uT5zFSXjjDukTgCoOUJebBaBYkvK0_Pid_NKjJ6bb6cJ8ZKJU24yLNZ8K625XfMAGH3ZUQU1ArvqFI0cbHVHAzThrA', '2019-06-24 21:25:33', '2019-06-24 21:25:33', '80be7d76-8aaf-47be-a53e-2d97dd71fc59'),
(109, 1, 'z27FbhdSY84R-TSUkoWgXwMzyRNqkyTgSP2w5t-KMUexZ96DO608_EmjOI79_RaHUKmMCnoDUX7n8tqgR77NVcWmwDRWDIN11DxD', '2019-06-24 22:25:38', '2019-06-24 22:25:38', 'be8ede38-d6f1-4a3c-95a3-170527a4a73d'),
(110, 1, '71o1OPZ3MBT1LXmHQ3GaHvVHbIV5yWqDPHYzgJQbduGAz8iQxV7-2hq3J4uRYwSYr9KsAgFApS0fPJJ-YDz9eFH-DOpEdOVDYrky', '2019-06-24 23:25:44', '2019-06-24 23:25:44', '7e79b080-208e-4d50-b9df-bafbb0db7a22'),
(111, 1, '96kaQMC6at2yg34BfQCd1PEoL48gwnSVqE7AWztP0lkRPbCB0W-UYjiklkhaLHHJhf7ZO97GGI4cpkK3WYjncwvMiB67THnrLisr', '2019-06-25 00:25:49', '2019-06-25 00:25:49', '7c9e76d9-9212-4058-81e8-72b8c7eeca26'),
(112, 1, 'guF4fCdrKaMD20vj_9JOvBoLgPpLc2pzP0xKEBPp7A7jpOqAfingKEAJz0uAhMdc-qRqtxOHUPeDiw4K_R8AY1S35lLbnmhViXea', '2019-06-25 01:25:54', '2019-06-25 01:25:54', '93a004ad-406b-463d-9e30-257f95ea5816'),
(113, 1, 'qNKyCW0vhKTgp01Vfi4N-9zn_ksV0hj1UVijU4vy1hxP6myI-WUS9AuBzxU4bQcVJ8xeyw1hVrgDb8anWdwOyTpyqw-XuqLFTK2Z', '2019-06-25 02:25:59', '2019-06-25 02:25:59', 'd8d40dc3-2571-4fb3-940c-3af013736332'),
(114, 1, 'NapuNowjzoORyzKnhvfcPmtOVQB4tq4IUFBVeWTdC9eoLoI6Qo8R7au8-rj2SKmf2R864Bws4pCd4ZWjbV08BpgPKgnKHt8LHOd5', '2019-06-25 03:26:04', '2019-06-25 03:26:04', '40f1964d-cae8-40e7-be24-19e62837454a'),
(115, 1, '6wj216r_fb5b8UvG1K-gqrDMKwA5Mj2d12RON8FtxpK6CJqPyVetj99gp6Bwu8pOrsjBw-lk1Q1PznGPrYxVKoiIr3WUe-l8hS1H', '2019-06-25 04:26:07', '2019-06-25 04:26:07', 'ddef80b5-afd0-4cca-a4d2-eee9e781e47f'),
(116, 1, 'KOUrkzqoVMhd1QIZLqVtkM3i0cVHrSdAUu9s21ChRSYVQmaTIXLJf902GfRMlUQjlPE0CHizaPHmQLSag32zezbeMXSbWdOYHgIE', '2019-06-25 05:26:11', '2019-06-25 05:26:11', '182cb190-d340-4cc1-b72c-dd5f26ce7ed8'),
(117, 1, '79wAHthcUQq4d-82HQ--3Be8db7T-BHPKeN0OYRsqVP1vbUWfGVeqXw4dwa4mINeLvgz-GQl0FVEFNNqERf7kaaVpiGMdMMjjQAT', '2019-06-25 06:26:14', '2019-06-25 06:26:14', 'c68d46c5-f8ce-4d67-a6ae-2a77e15012b0'),
(118, 1, 'OgGuuD7inhumfcnKOHy9NyS4wCap60HpnWq0wNXAY5PqoGr9Gcx-ZmmsEhrZff6C8WNS8V5tRCbiy4Bl7HjKXGnPgY6UMpWOOAqV', '2019-06-25 07:26:19', '2019-06-25 07:26:19', '37a13892-c590-46a7-b311-6623b30b16bd'),
(119, 1, 'IFNxInnOZEMAJQmbBxhn2HAF8kdYvxPwa8-R4DcEH6tZgUN9_zshqtb43Sj4bNBKSouAx0U_0cVGW51M0Mg_OnijmSXcFRYOT1aT', '2019-06-25 07:26:19', '2019-06-25 09:55:04', 'a3b5711b-8182-431d-bb38-0782082ca859'),
(120, 1, '16MKAKB_hcwfwJVaNuwEJH8AdtZaaaR5N7XwsCsNyrYYgaNqjOirZ02ed4giPFL7R4OiSLd1HDPzqXKhi6mDs4QBubtl77FMGEl6', '2019-06-25 10:55:27', '2019-06-25 11:21:49', '06d55e9e-938c-485b-9cb7-995dc6657ddc'),
(121, 1, 'sscO0lvQXgN-ZYbaxfQCtUe6OkpSiXMQAvYQwKgfaJq31ct33AZemzW8PwZyI0_Xx-qV_I6ClWgfi10tbzvIWwz3DYgQkANzegId', '2019-06-25 12:21:51', '2019-06-25 12:21:51', '0ebf920b-143f-4edb-ae14-42da55bb5d34'),
(122, 1, 'BDPlWxqCfCCud49uo0Of9sTToJYjUHmaH_3z566avY414GnK-CDrxoYoE2iJ9maDhrUm4oqfgGt7XlHqZsS_AHXGen1Yy-rZGA0F', '2019-06-25 13:21:54', '2019-06-25 13:21:54', '14130f6f-5099-4bb7-b69d-09aaa6ba476f'),
(123, 1, '9WkZH5CHZQX2Tmr9BEckchgyQgbXllYMsHh5oTAOJDe1Dx3B6Rt_RXrOEP5tK61aUYUut2_zCa62_lyeFfqSpOV_yN-AHE_6YeoF', '2019-06-25 13:21:55', '2019-06-25 14:13:56', '19a8c4cf-f08b-44e5-a027-2b3bc6ecacd5'),
(124, 1, 'xNofCs5Lo617qMZzrB6_0-wJcFDg6-GH7xi7SWcKUO8DFWQcyzfdPhVJmxrx8LbZIMX6BJQZPLyaTD2zTbzZhJjFdpB5Yrjf739-', '2019-06-25 15:14:04', '2019-06-25 15:14:04', '6d89d1bf-dd93-4519-83a8-19c09713cb5c'),
(125, 1, 'jH9SMjlgFOZPg28iSBGsIYp7tEvyDUvDQX0ZuMAUNUsXK7JxcaWppIejJhKOr6XJA701oReAci1P9MgLfB2xu5QyNPiiCkS8Qx31', '2019-06-25 16:14:34', '2019-06-25 16:14:34', '40f89019-9dfd-4e53-b786-95b8071b0e52'),
(126, 1, 'wgw70KC_a88RinWRryKYWN2uCT2FVw4mEUejggBCfTuaf8d1QKjwvYxAhRwh-lp6sDuupgeiXDjQsWRyMN7xaOjWcSZwmf-2rSa7', '2019-06-25 17:15:00', '2019-06-25 17:15:00', 'ae6c33bf-528e-4d44-bbb1-94d636d8a01b'),
(127, 1, 'viFCUcpFvibk7XSuux0OAf6ruGojfju4luibXrvPIqP4YNveidPWrus1YyK1qjWieufNw8ysRCyIS3X6uP5uj_zQ8Yl7raIkd2pI', '2019-06-25 17:15:01', '2019-06-25 17:15:01', 'cd389859-06cf-4681-a11d-922971a03241'),
(128, 1, 'bbxbMnJJAZZSeEt8BQyddOtnVYfAUHHP_CmH9H6J2I9KQrpKMxJ4XN-M34GCeBHJe_ywTcyKRjUG5bXoh-CUQJctHb3L9-09gde0', '2019-06-25 18:15:07', '2019-06-25 18:15:07', 'b1396f26-7709-4ebb-8540-de5f049ac9fa'),
(129, 1, 'zanbcUl34n5NN17_QBGhVpcjLAC5r2WACjwtstk3PsEOEQ8D4syP-chPUCdQdDY3YtBknO6YuKyjIRexoH7tTb3PRIEPSE_xOshA', '2019-06-25 18:15:07', '2019-06-25 18:15:07', '7a15e8a7-a721-48cd-a0e0-1a3f4f3bb608'),
(130, 1, 'tWnkabTOt5v1bpGZkmjJvGfUDiGXc-L1IXtaPShPSaSuU_L3LUAhlI6D812vxBXumMcoblQ9ZrIO_id0U7rqi2UtqSEIi_og2YEC', '2019-06-25 19:15:32', '2019-06-25 19:15:32', '524afd92-db84-49ee-994b-303f0c16e1f4'),
(131, 1, 'uf1gw7pQYny9P-PbmRVp6cRF7WlbkrmvtlUax87iFz0WisGV7xLEQeMZUfsdrxUTBbCvvRzyZLIX7Y5UvZYNF1W2fm-Ko-Rev4oc', '2019-06-25 20:16:06', '2019-06-25 20:16:06', 'be798fa1-e736-4c08-aecc-76346bb0e2f7'),
(132, 1, 'vZ7ZtUKYWyZZR1O2LsC7TJRIXNSx_pc4FQDOetibBZeMpNEJf2wsSXVlm6cv6T0GNg3Ar6CZ_RW9-EhMQfKTrjm3GgYL9IkC1V8B', '2019-06-25 21:16:14', '2019-06-25 21:16:14', '70550731-f11e-489c-a265-b406a7019689'),
(133, 1, '-0dH2UqJ6kI0agVwAKPCPrYptjeFcuTq7E_kIbX7QBwd_avbbwRUP3d9ntp_PdNr4LQSk_O0kC0MJBzXH6iQmE0G8fSTc6maIG5R', '2019-06-25 22:16:18', '2019-06-25 22:16:18', '97cb4948-321f-4b7d-af09-b309442a976e'),
(134, 1, 'hNOblb0e05fxV8Kk7_pZlA2XtqPpjtSfd51v7nIlRx_kLYgDrNwS4YlL48h5uml1aULpz0kFlFPXwJ_Z6rs1zKNZOeRuqsPZ_EaP', '2019-06-25 23:16:35', '2019-06-25 23:16:35', '63aae483-e394-4aef-bf82-149b522e4243'),
(135, 1, 'fAUR5A3uLrpkzV_Lgox3IQnN-hL7WW24N_rPPVJ_UJ-Oa6w6S8INXMKwPrT956sc7DN0ArE3tTS7Gc3chV36fRUAefFVA9JYH7YX', '2019-06-25 23:16:35', '2019-06-25 23:16:35', 'e6a9b306-cc8d-444f-baa2-737783fbc74d'),
(136, 1, 'GofJ8c48fDDx3yXWlILECFNZtGzWRWp8tWVH7-nIWchx-5Fp-wSHSlT5JHA0HtyRkK4UHFtCJZ6d0Pdb10v4LlUgHzmUDCuJLyhG', '2019-06-26 00:16:48', '2019-06-26 00:16:48', '1d521870-e96c-4cd5-8fe0-f51becfcd93f'),
(137, 1, 'W-FHir5wu9YAZLDpZlqUHe5i1QgTveRKbGFaSu89L7ArWxI7M4EE6f9pKwiMXN9UjANa1alGuT5O8vKMtdcRNtRDod1eRv6IBvIc', '2019-06-26 00:16:48', '2019-06-26 00:16:48', '8599b5a9-79cb-4be3-8a29-a3ea738f99a8'),
(138, 1, 'BPrc69Kq9R8zNvhk88Gd2zvuIxFxXKl-9B-zXxpvz7Vw1YZ2njOhFrnlzHCF2qKLV-1yc1HwENCMSWZnQAEwbA92IIdinfm4ERPa', '2019-06-26 01:17:09', '2019-06-26 01:17:09', '4c4e1d7e-ffe9-4b81-b8ae-f40a408dd00b'),
(139, 1, '2Ob26_iNO5gk0fLpNxGVZos9ffBDtkd7QlRHBIktLafxsxvSmVP6LFh6igsWnkwhbq_6goZ_vvpRI_Hp52pVODi1ejJDQMrhrcYn', '2019-06-26 02:17:16', '2019-06-26 02:17:16', 'eab0b619-2a67-45e7-b95d-7a06bc6b7791'),
(140, 1, '7sFFB2-47FKZPQYSOkLRBQXni13F0QsMe2unIGCWEWQO9wc1K2YvdQ0-zatswHyUJJWT8HeH2JA_GcUfPzguufnkoS50dkiiGNPh', '2019-06-26 02:17:16', '2019-06-26 02:17:16', '69ce0f92-7427-4d3e-98c4-b1c1a992181a'),
(141, 1, 'VL04lY2fzrY1LJ1vfqdpDJmD0__7ekV0M32R5aPb57rebA5UsPGsCYh27NLC3FPWBaFMei-q7WgcbxWkFW-fVBO5LAOWdzhzMShC', '2019-06-26 03:17:20', '2019-06-26 03:17:20', '1ba94fba-5896-4105-9085-9d1287d9f196'),
(142, 1, 't78tpOoNfUTwz0_fzREgwAPsTqKs8EE2iSxkn4f-lMaC8X5O3GhIfSX6YqBEigta38YFXweZCP1KFpCNmANTrUoSghSnE2lf0MJk', '2019-06-26 03:17:20', '2019-06-26 03:17:20', '19b93a09-92e1-4c14-bd6a-1d8374ea6652'),
(143, 1, 'dadvigIsmst1zvTKQxO-jF7Vn7gLtUNIcgLPlCpjviY1uEKwrOfeXulKW9EhCFAgnoivSMIeOFJ8wzq0xw09QyyoeZuOO9d7N35p', '2019-06-26 04:17:28', '2019-06-26 04:17:28', '92e17f5b-77d3-4027-8daf-19b15149ae38'),
(144, 1, 'ARqYY5yt5uS6s7l_AQo-_bAueJcfIVGsTCGF3wsxjMBqBs_jIkx32Rgd-qHLKreQg-BixClIYxF0aoxVu5Tap0XIAUFgtleoLZ6E', '2019-06-26 05:17:39', '2019-06-26 05:17:39', 'f41536d8-0f16-4510-a8da-720ffe170b95'),
(145, 1, 'QNwC8gMQ8JfMak7om8PlTDYRwrz-TW9EQZXpT1gdCxx5nH3TRxCWTqWt28CHWs8RQidj1HAM4bqpROnZ76F72LGgd_TsCbG3KI1Y', '2019-06-26 06:17:55', '2019-06-26 06:17:55', 'b99c65c8-b47a-4c11-944a-0e3edac74da9'),
(146, 1, 'eNecPuxGjxrm1I9n8Bq3ResIqD7umpqPKwgt1FnfDhH81C-llNHCms_2NKjRAUG9O9hnihvRddOB70jjD9FLCZDZWF6a-CDyrqST', '2019-06-26 07:18:10', '2019-06-26 07:18:10', '91128f5d-7872-4eef-a0a8-09d742a88bbb'),
(147, 1, 'D5zn9yfvNz_KkeE8c9ZoriP8g7Kt6NMwrSV5S02vmGolEXic36tVWz0B8V4fcFUNAJlPV1zm8lAAr6nLBEMWvefy1AlR6KzFqKGY', '2019-06-26 08:18:48', '2019-06-26 08:44:27', '29386db2-5b6d-4763-a72e-422e25bed69d'),
(148, 1, 'rJfS1NWwro2gc8bXUfBRWIJriof9MUcOTmeeCvxgrdi8b2c7yorqnrW7b0atO0e6P7mgQjGDnc0wTNFSp-Hw5u9LrYWtxRW7-gsF', '2019-06-26 09:00:56', '2019-06-26 10:13:37', '555f1d48-4022-4d46-942d-7fd650d1da4e'),
(149, 1, 'KDcADgA35lt7_I3HFVrt5sI_Y5lbYFy7oziv2auCfU8_ASECMlJdpXjkVqpZaVbSHWoROG-NQ4OxFDTX0tKIzGW2qk04pN0E9V6O', '2019-06-26 11:15:21', '2019-06-26 14:41:46', 'd36145b4-eb85-473a-9956-b294df49a3ad'),
(150, 1, '-7eCYTufkuYBKzdojn5GHdHxY2RUa4hzidHBGb4zXn7Rc1AqtSzSeSYUR2JhO6lexITcvUROuTt9alzCdYP41GOlKLIU4ZzltP5l', '2019-06-26 15:41:49', '2019-06-27 07:19:22', '59cc9129-f357-4e12-bafc-7fad5a57d9fb'),
(151, 1, 'LBbhyFqThU3qAGSE5Q07pVJza3ZZPbsO5KTDSHrbzo0P5FDJkc3-SmkXXunYCHCWSE3fHv2YDn7_4Z9JTim4CMVnopLlNytL3DDQ', '2019-06-27 07:23:58', '2019-06-27 08:37:40', 'b8be6fc1-05a8-4e4a-b5a3-33d445586d40'),
(152, 1, 'ex-1Nv5UV42eQunRaHO8FoyNfXLYhapu9Q9nvshfSmp4-fScyRyHb8UcceXVcA-OP2Oaqv1akbl2BgMam5Ob7H1ByeXdmvB3ZniP', '2019-06-27 09:37:44', '2019-06-27 09:37:44', '7705ac9a-fcb6-4e64-8db4-3449876cb3ec'),
(153, 1, '1O-1KLdQ-AYcoQklNSH_t4uniIM034zd1OLtbhOanhUqzWL726Z2mY6GQNRZjNOK-_FkbRPxJAjgBBdKAg23uNMVlv0w10tu9rIh', '2019-06-27 09:37:45', '2019-06-27 09:37:45', 'acb67370-2f41-49f1-9547-4113e3874dfd'),
(154, 1, '7Eyu4mfK7Qjm40xfNfuYpb5fBqPQOGzyBHveN8FZjbQBV6-1ZFxy9WzX8wAUyOChz2RWr1GXYGlPkGYkQOLz-n_SaaAvBDAugffT', '2019-06-27 10:42:02', '2019-07-01 07:10:40', 'd928e24a-58a5-40d9-b8f9-49ec2c758795'),
(155, 1, 'X4obvk8-VQaJ3N0sTvaaXwEzPxQZSNhh3TyzreZG2Lw4JaaXmtfRCcPr_wbG8n1WWfVlRYC-0kFROe3yRJh4DxIFqLpfC6w64790', '2019-07-01 07:38:26', '2019-07-01 07:58:06', '33dcffb4-7f4e-420f-a958-d728a2d1edaa'),
(156, 1, '9yAUBzcwh6Cqx3pdqojmCOUmXdSQ1hszdG05egZ9iopUDtEhJ-aQ18p76LgwsveXzgNCADipcYg6270UCAqoBfxHJ3wPIAztapaC', '2019-07-01 08:58:10', '2019-07-01 08:58:10', 'be0736f3-d75a-4a34-8908-d2bbf66d88f2'),
(157, 1, 'iMigFILVtdxG17sYvGkcO8PZNPypPE2DxChw-pt8BTeeov3_AWDCWP4HLAOld5r5JslfA6SkZYxObqQGAtUuo60UDMWRk3dbO2hR', '2019-07-01 08:58:11', '2019-07-01 11:10:44', '8ed3b6fc-5731-4bde-bcab-8a9b6e3fb1d3'),
(158, 1, 'xLd-poWyM11aeYgojROsdESZMmVd_-KIO8FHEEJ0NVNxjGimCk_cfrQkDpHIXPDCoikUdKD-GMw2ycj60Rz3CdtMX0Sl8c4gKsnO', '2019-07-01 12:10:49', '2019-07-01 12:10:49', '986f2e9f-c4a5-4ca9-9ff5-83f36b50c517'),
(159, 1, '2ZLosYkLeRy7Lj5DptcnBdRWGy7Q7B_JytNk7fcd-U8Dnc-vZ6G9DMW3eeY5bwOU46NGCLVv5f_gTFHPiaz5BJ7wrP9l99-qWntL', '2019-07-01 12:10:50', '2019-07-01 12:10:50', '0e9ac6e5-e0b0-4069-bd79-fe1d7b72618c'),
(160, 1, 'BCnDNPVmlVaOMi6VBAe3mQOlAkBrj745tWFNYF_Fs4FqH9YcFdoS5jLxlNAw5lrZHB0eMcx4bi-VRi52U45Un-AHXeO-jTf_GQwn', '2019-07-01 12:10:50', '2019-07-01 12:10:50', '766115d1-500d-4870-8aec-ada1bbbb9e5f'),
(161, 1, 'rADn_UFZQaf5NWTRF0cLLdxTD06MA7h3i9pt9Tcu4zBvl56xxrEKa9ljW_xKX0I_n8w__eLtTEx0zyvEaatobNoP43v04b96Ed-P', '2019-07-01 12:10:50', '2019-07-02 07:21:57', '2494e179-4b9f-4568-b5d2-f4a597a9b7a8'),
(162, 1, '0a22g0xRnjtzQ2xninGIohH_mq26INTi1i_zxjl3n6wwgd-M-soafCqlXqL3DEa7d2kVNeom-Kz4GCz_Ph7Vt6V9sjNoOv6tOlg-', '2019-07-02 07:26:43', '2019-07-02 08:28:24', 'ed39f380-0bcb-459f-8054-b037bad4a71f'),
(163, 1, 'oybxsZVf59T7jeXByE8H1EzvEF86nkG2oiLX1BGuxpxyMLtouSIiFqKVimOSHq4W7wiGX0FKkiv3WzEueTLxLRRsl8izH_mKJ5OW', '2019-07-02 09:28:29', '2019-07-02 09:28:29', 'b31ffea2-9e16-4a6f-ab16-7ccd4647fd20'),
(164, 1, 'DP28pjoRzsCSfzY7yYXuW_V0zJDWZDjPACWBZEdzA2QgSXzuYYuWqab4HR13eojh-G_3FHCUaW3ngQMl8uto8VG7MvK7tAwruh3e', '2019-07-02 10:28:30', '2019-07-02 10:28:30', 'b1a48e19-8ac8-46f3-ac25-c92ca18cd039'),
(165, 1, 'uSlYTjbuXG6Mqf9nNa6wjuEXRYrQO02aTI-4lwKEbpz40zo01Hg0EPrPf7zonTOzrQKVN3g9P7s1ul72iDeX6rztBZ1HgybDuwBs', '2019-07-02 11:29:24', '2019-07-02 13:28:50', '606d1471-91f1-43fc-bd6b-a39856968462'),
(166, 1, 'v4JG-jJlQTgcQUckH0X2ZND727p0Q_08_XW-Yow2mXP0QQ8ZxsI24moA6y_E6bSr5VdFeztb01ejth8imKzXtuFScVvdir6Qs3sF', '2019-07-02 14:28:54', '2019-07-02 14:28:54', 'e400996a-bbb9-451e-8645-4034b7504e0f'),
(167, 1, 'ojkq-E97_-jw1C4ztJWA101MnMVJhsw8szu1ycKqxG8xeQtkWZrel_MhsdfDDWs1iruHwlhH2QnfKuixJLKqkDxRN1adZO9_Th83', '2019-07-02 15:28:59', '2019-07-03 09:56:18', '6fcc4aa0-0bef-4941-85f1-2a52cff0e08a'),
(168, 1, 'A7RuMNmRTtc40IRTSkaon8KbNg6lVKs3DM55wvlQeeEztgBBMpwekEjCd3ta2NqsYFHd8Vpgar5-y11Sol4-Z59IDqJG3Nt7CkA7', '2019-07-03 10:02:18', '2019-07-03 10:18:06', '8d6b2a4c-2dc5-4684-8720-1a353759738f'),
(169, 1, 'kM7A6G_-b-iMWBZ9BMFUC7ryTpIy-4RsLClQLkFtcAT5KYSW4Bjpw5MG-8iDWh9WN9jImCnpJueektn_kbYuNrZ-mQ_nRj00rI1K', '2019-07-03 11:30:00', '2019-07-04 06:46:06', '319a71bf-ee01-446c-89d9-2c14ea79bb18'),
(170, 1, 'gAgdT6cKZDydRi53QNHDXB_On9DbCA3tlA3rLUogH63F2vSeCMX2Sx6bFgzd325EeiEwkHnTljv3rJAoy1-1TgnC4LcZHPaqEX42', '2019-07-04 07:02:30', '2019-07-04 09:44:46', '46c92fd9-c0ba-4759-92b3-00f80bb06871'),
(171, 1, 'kqSIqZdexNotERPNudKOe_-m1zpdI-Q7mFonirNFvaQO2VzIWs9zTR-2C1lJH-VkgH7TJgeofC2qP5O54q9VLjgWIk0eYACr7wtr', '2019-07-04 10:50:01', '2019-07-04 14:26:08', 'c1bd1545-69dc-4fa0-bc14-9c6865effeab'),
(172, 1, 'qiTJN1ae531NIO_O1fEqp-tk67sImh3Z3A_irve1SebZ1Kp8q0o0TVI6mLtVspBgoNZgCFnCin7iCPOut5FZPBvmiuLBgOX6FFCi', '2019-07-04 15:26:12', '2019-07-04 15:26:12', '421f71cd-57d2-4417-9f3e-68175b43696c'),
(173, 1, 'e2pYI6ZyltJ1g7fR97FeHpJM2Vy9Q1e6BX2U8jaDeaMGIQ54Y3rAcryEtk3Ez0XS78FcWJIrjgxVa7fB6eRkZjq5f7K0DMipvINY', '2019-07-04 15:26:13', '2019-07-04 15:26:13', '0bc74dd7-04e4-4ea1-af0b-233c46035e37'),
(174, 1, '-qtQtHowlvIydeFtInN4ggxq6XpYumZbHNt3QSJoguBSkub0FqLOVrYq1VIVke7BIeGGXveuyJKaZzXwLndVN7J-nJneEqNgEmH1', '2019-07-04 15:26:13', '2019-07-04 15:26:13', 'e435adc9-aa40-47d8-b9de-332b0ad9f6fb'),
(175, 1, 'sFATunEI8akQb-M6x9WlY6NjwY5d5TRlXaQIITBI3ieujCohAOkNcKbugfnNGuoY66nYCLj3YMbaVJjYSUpShTygq7YqZ54vOPcx', '2019-07-04 16:26:16', '2019-07-04 16:26:16', 'df0ec585-b646-456b-bdb6-0ca72d625408'),
(176, 1, 'TKajAT5ORHbS6bGKTFtjl18bu01XYzQ8aIiocisSq5sijaEEc9utofXuv7Jwu9cwfD6HWm2KsR-DZPhLMp1rip5aSYTSuXZZFEet', '2019-07-04 16:26:16', '2019-07-08 06:55:09', 'cf51fc0b-5400-48e0-863f-f02c79dfb48d'),
(177, 1, 'yoW-JPh0kijNGv6-NhdfR68UhDlG661oYKcIkJ8tvBDTTs1psdEnmzMWZb6SmvIGyFC2Uv-f9d3r3s5M9-isKBoQyc3-I7bdk25B', '2019-07-08 14:18:55', '2019-07-08 14:22:36', '12479279-b76b-4af3-9a33-8feff7fd247e'),
(178, 1, 'GvztiB-p74nx0VVhtHeH9FQkl4WY5thixvqsAdE1viaAPgfE2nffIyDXvnMU87rzGmUb2PI5zsZ4cllwsT8nmFJn4EECXmbVPZr_', '2019-07-08 15:22:39', '2019-07-09 07:25:29', '4e53e334-61ec-4521-90fe-b6a24d4e712b'),
(179, 1, 'Ug4PWB4jURqwQzgtmRmZT751IAPg0QT1asMFxqOG7Hz6rNaV2Wom0brDldpumnPeCjOpsWYpLNoLFy6r104mzMoT-n1FeXbtYtxe', '2019-07-09 08:30:58', '2019-07-09 08:31:50', '9ea456c1-4ea3-4a23-a031-be42373b4e94'),
(180, 1, '2fksbj9ljEJXos2L-H6FAyAJ8-6-U2gcznaG4yLUsO3hmLLT_Q3jWJ41Jl58xTRiPIqosWlnHsO-Fp_xPH-EGk4p5fAu5niTO7RU', '2019-07-09 09:31:54', '2019-07-09 10:22:08', 'f07765ab-6afa-4217-af7d-56fb7e92bbfa'),
(181, 1, '7Ay6x64e7CjScxYfGuwgkHzJ2zETf3gbK1jp2-K3R6kFPWWfA8OkFp0GDSVn4wLB91Qu-WnFWxxLV028pq6chHn49xEpgKEze5yY', '2019-07-09 11:22:12', '2019-07-09 12:37:56', '4248bd99-30e8-4ef1-91c9-d9b799769b65'),
(182, 1, 'J2SF7dbszs1MBWKtvk3_AC3CA5qM21Bw2G0e_UI4mPdRMGfHcyCiwkg-YgHWpndV3JGgwcilvn97_dSG-Z_P0Kj2fJyAN1sy2re_', '2019-07-09 13:38:01', '2019-07-09 13:38:01', '6486e8e6-f597-4f6e-ac64-0d0fe49a268a'),
(183, 1, '4bVs8n3oNzRhFkHA_FsHmsyUxNXdCfA4jrnPieDLDUAlAmAZyxdlvz8-QCugI2HaiKJ18fN4AswhHcH-Ffop8tv9onCdMe0uyw5t', '2019-07-09 13:38:01', '2019-07-10 07:28:30', 'be795d74-2a88-4ea1-8f0b-f17b114769a6'),
(184, 1, 'E3xgKAvgzeDFZ_qHuqX-1uk3fV09cb7Fwvmw1UGVfQ5uw5Lpu5_wY8L8oy7f4ZNqQGD08fJpziymMEfdxLS05bILomFcflKNnpXX', '2019-07-10 12:03:54', '2019-07-10 12:11:33', 'da9f2d6f-7758-4c69-bcb0-9a217ea0ddaa'),
(185, 1, 'WLzgpIygVcTG8Vssv3MTzIAA2FjkukV48We2bqI93GRumGAkSxCLZCv2cqSr7IqQ4NmxYk421dXxow1AqypvEZR94ElNAs0UhUsE', '2019-07-10 13:11:37', '2019-07-10 13:11:37', '66e540c7-43ed-41e8-97a8-742c5fb6dc36'),
(186, 1, 'fH_xnr-gEnQVVtxnBSwm2BDcvo1jA1LDJu_SxKo9Ec8cpYbdO-KFGB9IHGqTE3C_Ymko-9gfPCE8BVms7MBywki99lO2kO9xfu1W', '2019-07-10 14:11:41', '2019-07-10 15:00:45', '3f3344e7-36a4-4caf-8ad9-704bcfad2be5'),
(187, 1, 'U3GLDSyoIJJ_Ez3PdQL0OsxSL3-VK-tXfXrl56eHGBYEyPC_i3SFRRNFDvvRP3U_ZtjSIuiof8_5vOwtyCqbz68xVCEErrgcANiC', '2019-07-10 16:00:49', '2019-07-11 06:52:45', '48d9654a-af0e-4ee5-aeec-56370ab59a25'),
(188, 1, '9MvoadKrZghCDWCT8QJfp4v6T1Z8Yxbn-ZL7aFouXSpvIldBzYeRBfYey-ttlo6VKX7eyaiy7Wus3Gzg1uCM5okiZpE7-AQ0vcVY', '2019-07-12 07:45:41', '2019-07-12 07:56:32', '393a2b62-fcd4-4f6c-8ece-5900bc8b08c8'),
(189, 1, 'AVJgVDhFXpTQl1-Cv1k7mxkRj7VqX8idV6PMLkKCdJY25AdM9rkGZppWuLoQtHEr1cL9irwC1JIPssZ_IWDknUUtpfDJ7j6uSRpT', '2019-07-12 08:56:36', '2019-07-12 08:56:36', 'b118933a-2ce8-48d7-975f-d5e6cefa80cd'),
(190, 1, 'M4H76mZzN1uv5q8nyFeWYOvoKazF5pvVyrBtdzsBbpHJ3S_NjaBipvMvQCgEedpMSQOWYa2SPB9WQwMnvjwhPx9JZjqphL9_9iwb', '2019-07-12 09:56:39', '2019-07-12 09:56:39', 'f15f0564-351d-4bb8-9838-e49b3425fa32'),
(191, 1, 'V_hmBmodusnu3KwLmp-79Xy2zBzkpIi0Z9lqLqQzZiT5YfUqyU5HFD-13N9FTg7y1YFp8YnyqnIU_lysBufp0_l-TiE2UZtm-E-l', '2019-07-12 11:00:24', '2019-07-12 11:00:24', 'a020218f-c58e-4d72-82bd-8a872e0a99af'),
(192, 1, 'SGSyrEzZVwH-UrOd8Bng-rYXNn1BpqKgGPE43R5lnl2fJfAd1dtNO0ntc8OrNL8Lf6hwSNW-hrE4rXRahnY1qazhevSwNr8SkDUf', '2019-07-12 12:00:28', '2019-07-12 12:00:28', 'e1b278aa-9ab7-4665-b917-a771ed80b616'),
(193, 1, 'sEQiXGQs3uS4OwO2sQxcapX8XBVbFPsdgPMnm1FrUAKdsJt-wlZunMHa0IQSqTi7aN2Jypm5bJ4pbRL75qfCcpJz6HbOsaNHhJEw', '2019-07-12 13:00:31', '2019-07-12 13:00:31', '9ce95cde-a57e-458e-9c81-d4b093e41a07'),
(194, 1, 'HLeOfTIcpmJrFiizr9DE9QpWr7GB4H5gfvLKSpF18C5ZhONIUXz0kws8QnMcIobCQdHXHQEJ_LDBv8RzaT_ftznfF1tz79V3zCXh', '2019-07-12 14:00:35', '2019-07-12 14:00:35', '61a42b48-8a77-4f2e-8d4e-5e9cfba6095b'),
(195, 1, '5QlyC5qhGkiZiWH72pN7LXJZXGuP6KbyShkHaxFMIVoHfdxV28zCE-XnY_vWRx6gZZ9-_yTDyESdL9ootawcv-6Sw88VOYa_qcGX', '2019-07-12 15:00:40', '2019-07-12 15:00:40', '343fa755-5b52-4bfa-9be3-dbae09e9203c'),
(196, 1, 'iUty0_GvU6m5hFSwBe-Qhnjsd3UkD8-D627HjCmXCmTywEUuEaE42jYItsWUo1cG4vJ3P021rIf6ZwpAxP4kKV3dkj7O6fXxMbFI', '2019-07-12 16:01:22', '2019-07-15 12:30:05', '7bea83cd-2495-4b61-8aeb-d122d22000ba'),
(197, 1, 'aA3AeKSG-oQto0_dUBcnOBBxXTVZ12ThIGanT4KinDvgAPeIbLnhB9-WJAi98OaVqalBH9vjXKaoxrJp5AvvtoHVjyzZTSIfQRH0', '2019-07-15 12:30:30', '2019-07-16 07:19:59', '19bc830a-5c1d-402b-8bdd-b113e92bae04'),
(198, 1, 'KXMGA0yDUe6PUZiSBZdNGcldw5imwl23AdAH6TrvD1x3yITPTzodluVHtLUHvkHeWffkeVLwSAU9Gd7RTgQyPYhXubiLP6lxCY5m', '2019-07-16 07:27:29', '2019-07-16 07:36:54', 'bebd956b-7806-4f87-abc8-fc7ca763ff28'),
(199, 1, '5jBlnfHbb75wFd4kgKD87-Grw10drnUtsTcg1fYots834ROqtjxcStYQorI7h0qDrFihzCTCzFvlcn6B3M7G0qHWoQ4hhW-_DJfb', '2019-07-16 08:36:58', '2019-07-16 08:36:58', 'df43eb90-b02d-4194-b593-3f92ed34255f'),
(200, 1, 'Nv4tJlQXkqCLBPDrrzCq3L4Xik7QbFLq3T7XeKPV2Roq24uDxoy7xF-cyLwPy4jHxF1Z-ykW6t18lT8WJRpm-SFFvHti0Uzkq9mX', '2019-07-16 09:37:01', '2019-07-16 10:26:13', 'e5f1872e-ec1e-4709-a46b-a45e5f2b84d8'),
(201, 1, 'fCuQmGNT-38EcBsaUVB9NZ0XIzSYuUlVLx8mhuMknMlOhhrfSyVCiOzVw1SfORxZyVWwWGQ8tSRDghDwFL1lDpW-m6l6YQcKiag9', '2019-07-16 11:26:16', '2019-07-16 11:26:16', 'dca782f7-9fe0-49e1-a843-a12d2f1f4e18'),
(202, 1, 's7KgWlITa1SnIuWXUDJV4Qrt1sTHvYTUjV2ZpMQ9ZjegsCkARuJkPPuoy9NUkC-DWXUX_KxGfEyGapuFq7zaWISwtNnCa9v4w9Ny', '2019-07-16 12:26:20', '2019-07-16 12:26:20', 'c361238f-6b98-4a80-9eac-5374086ec6ec'),
(203, 1, 'hXinyPCz31ktdg7T8FIhyOr-Gaggmw4XirgPU5x7qCPiTo4Jfj2PR-rJhPpC3JarDMqXEegpPetq3tDkmLshIGPNGZqJI00GQ5GY', '2019-07-16 13:26:24', '2019-07-16 13:39:51', 'e990f93d-0f28-4b01-8085-f5b7813085d5'),
(204, 1, 'mhkMx3iHNwfJyaFm5y6SUvEppUowXp_qeiVVjzk68-NVNO9fCNcdE0lBBEhL2LYstxSk_NmLCJ_jjkNgNONoh0y7lyhT6yJhPsiB', '2019-07-16 14:01:37', '2019-07-16 14:03:02', '296cf33f-78bd-413b-b2cf-8d3c08e38a14'),
(205, 1, '7JbqPJq2uQ2HRFZ4H0bfQZUocLRt1SNqpsSHVpXbqW-y4kQDNDwZBIwC0xA1QUWTCV9anvAVYvnZM6dH_1KbtxrbRH5GT7Csmmru', '2019-07-16 14:39:52', '2019-07-16 16:22:55', 'f86a4035-0ee4-4b4d-98f2-e0bc35cca6a9'),
(206, 1, 'cXjVI4c4qxNjJ_oXgO77WeB1L5mlZQa4sYMGDirLnpJySohvXvLKDh26FWnkREhJXM2koke10qhkssYFYGzyyL0mi0X0Do5j3fef', '2019-07-16 17:23:10', '2019-07-16 17:23:10', '760de82a-0d0f-43fa-a802-01dabeec3845'),
(207, 1, '1QUgW8e50G6ARQvQ524gRyRlYQZPfk76kOQK_anoSZ5KDsr-ACMUoIg0g6JwtzslaTyg7nek4MN2fmhco4PXMnp1SFE8s6Js4sg9', '2019-07-16 18:23:24', '2019-07-16 18:23:24', '92b8372e-bc2c-44b7-b4d5-ebc90de19b2c'),
(208, 1, 'LQ51OCYGwk467-MyMaCjkiVUgz-bXjCQMTgUxKf5Zt_f9P02Uu_tiGCIZ8em0rOnl4oC-UzZK5W6J1W7mm5cH5kOTLCMcew6KSec', '2019-07-16 19:23:37', '2019-07-16 19:23:37', '8197d1c1-e14f-40d6-9272-80062a24a4c4'),
(209, 1, '7n_7BB4q2Kl941U4kXY7nnlbixCXFpJic5inJ83-Oi0NWUJovKf8OL2tle754ODGTTjYs4FPjz16any72ABQruQW3OfiLZgTGwNg', '2019-07-16 20:23:52', '2019-07-16 20:23:52', 'fe69517a-40b5-406a-8196-6df31b40e652'),
(210, 1, 'aR8jRQ-Hmveaab5H7ZM1oJX0JwQw94Ltls8wsYFgLJAIeXwxjaPOwzYfhF4BcvBY2hor7um8Sk8EjRGoxdO6wUPem3o1Cu-XVrdt', '2019-07-16 21:24:05', '2019-07-16 21:24:05', 'cbf8778e-4947-49af-8e29-c35acf966494'),
(211, 1, 'srnTDN1iThYGgWtDeDVfofZoCx7u2W6UohrlVPzzH833KDV-t1Z5W1ut-Z1iDlgwIQajlDYSwsTSGyg9wWm0ULcmmWCS-KWYM5bo', '2019-07-16 22:24:19', '2019-07-16 22:24:19', 'dfaec7a2-b8e5-4919-b1e4-f684d670ba7e'),
(212, 1, 'jTMOltmDm8UE_Gk2dCpgWqYYp3OVs90Qkq8ZhSF2d5jho3SU1CFoiLyKgmZ0Q_B1JTbquE9TZLJyTejbjFcW4Nbx0Qbcaa2XNF2d', '2019-07-16 23:24:33', '2019-07-16 23:24:33', '9a13697e-2cd3-4b84-a992-3694bc1b94d1'),
(213, 1, 'YTcpvaJ2Gj5--8oxjsINwk2FqoR_btSKyWwTeHSZ7NHZxzqI1KWiaAwjwgKmYxS_gKv1OmLw5o0KPfBXpeV7XYb00hv38o0it4YC', '2019-07-17 00:24:46', '2019-07-17 00:24:46', 'f08626f8-af58-45e8-9320-5090bfc3b751'),
(214, 1, 'yqi6T8cvDXTldg84JknfU203kcD32hCwsOVVAeFtYgAu3ifxU2FgfvZUAZ4iwkxLMM_k8oPA17Rfnd-w5TwGaQempKm1JlZbHSjl', '2019-07-17 01:25:00', '2019-07-17 01:25:00', '0f930805-3124-49f3-82c5-c991744e33b2'),
(215, 1, 'txtF3autD6HgRjdPtBXzLtkKC31V6fFA1_g3Z5gutP6xhJ91a8UgqWgPiJpxuRcnWbZQctQC2Yfe048lKlYCC0f2wWNbyidKArL9', '2019-07-17 02:25:14', '2019-07-17 02:25:14', 'f68a5241-b1e9-4930-8043-6394b4a1bb9d'),
(216, 1, '3gWirb3agn0KeERNfDhYoxH4SgeGyk3IHa-11Xjjhoq04A09-31QnpY7OMbWK8GBmLk9whv2ReHiWAPeew19OMFn_FQswc4Gtb99', '2019-07-17 03:25:28', '2019-07-17 03:25:28', '4c4866f8-ed4a-492c-825d-96d7ccaa551b'),
(217, 1, 'zTVSB448jq_ss_cQPdSJZmros7inV3VX9KrRiQ9KpWj_QrH5HWYncrje5lRCJwo0jtY-gLjU7kXNFso42i31-WbjbWjgXbomDTB7', '2019-07-17 04:25:42', '2019-07-17 04:25:42', '8bdbaea4-2f80-4a63-88fb-d59b2723ef62'),
(218, 1, 'lQfHNioyufbbb9hx4wOCtOkaXZalbp7SsJ5w94a5vcXqUCmdinCgLydXgrJ5QAKg3o6Z1C6TBOJZDZB4LYOXGq9l69cOq_nAWLlU', '2019-07-17 05:25:56', '2019-07-17 05:25:56', 'ceaa93e3-5586-455c-81b8-8eba2d7339e8'),
(219, 1, 'xIY3iFnBjAaOQR1o05D72uk2qc84HZGEp5f_KYrgDaXNwOlRp7OGErojpow13CiYm-vIr0_ipr1dxIup_pc4i4yDrx8Z1SsN03sm', '2019-07-17 06:26:10', '2019-07-17 06:26:10', '1a3647bc-e69b-471b-a0c0-c2a7c7ceab59'),
(220, 1, '1WlTW2_JwGe9HizVtDiy2Zww7QqEGXCZgrOhDFSBsDdZw17EevKspZcDK1PmqfjtFknrQm_Fy_XOb-okVxg6DF0YBXLihei8VG5G', '2019-07-17 07:26:26', '2019-07-17 10:52:39', 'c07f0cbb-75c4-4513-bbe2-9fc13b09b31c'),
(221, 1, 'pUGvD9zVtjN1pU22N4a5FdfJPQsZKNmOJSb1vEfpKxvFyFbdzIWGSU4aQZsZT1g2_7vT-_okWq3dWyr4JVz-O_u0BSRWDzhtJmH3', '2019-07-17 11:53:07', '2019-07-17 14:42:36', '5eb18c2b-338f-4cfe-9f4b-fad3d0164fec'),
(222, 1, 'VKvQEcatN3-1Y0hLKHQ6jdoPPDbN7RCCTPCJiQm13_vXwX5jX69emvKMjcSBpSehrit3tdxbX-hj0YNreswt1aJ80p-sMXFdCt2H', '2019-07-17 15:42:49', '2019-07-17 15:42:49', '4c5835c7-fd5b-4454-bd09-bd3448ae2011'),
(223, 1, 'JHn9hMfHrDUepE1CIVsGJusdiUZ5bb4GRpdywz8sxRJBivq1xelmk3_L1q5MIOnhIsG8EF0flWeQ6wkO-nVUX05bJ39wukE_aA77', '2019-07-17 16:43:03', '2019-07-17 16:43:03', 'eccb023e-4fe1-423f-9237-74613f5fff78'),
(224, 1, 'dUBKTr4BOXAvoDrzOH6l_VyLRtOji9CH4yO0q_CND-LQDwGT3Sh3Pj6nQpAoRQuiymGQPpzmLtMzLas63ITjQ1u4HmjAvVYZpQhv', '2019-07-17 17:43:17', '2019-07-17 17:43:17', '9fa6a3ea-7840-4817-8c57-94af49e06515'),
(225, 1, '-EYIjN_slLG6loPv2vmCd6y2BiakuuScFfanpXcniuWEftlpnyFUK1LT5UOH05gT1qS4EsemTSx9X7cmhv2zqKTxK1fMcljwwSi8', '2019-07-17 18:43:31', '2019-07-17 18:43:31', '3ee4cba5-a9fa-4633-8e31-582e029c3096'),
(226, 1, 'U3iU6eedJ0e3ZEWmj-qWEJxqrv5XIpNnDcZ_Lu8_FvSHzNGBI-fcazgBVTfsAAYCoDmUs31AOz65ezMrOg6t94lDH2HVD71vOic9', '2019-07-17 19:43:45', '2019-07-17 19:43:45', 'c91dc697-6609-4378-a4ab-9b3734a823ba'),
(227, 1, 'h7VILMRaE3y34LinmEZH3lU0Xia7Xf1-efzqEsAK6rSfjBRXYd7aJsR_Y9SgbfLfNrMDqxGmKHr6cV0yUCpt0u2FtUznQVbQgNxY', '2019-07-17 20:43:59', '2019-07-17 20:43:59', '64e1402c-d04b-46e7-b597-d93f5496b36c'),
(228, 1, 'qa_HUrZZJcyiwCYI3QKLN4dASajPgw7o94U1X4G5ayMeG7WNv7btEp8NOTqFzzbnagMKHY2tXg4Z-Vk4JUNprb8oImd7dFRYF755', '2019-07-17 21:44:13', '2019-07-17 21:44:13', '321b086f-7e6d-4e57-b1b9-f2356a73cd7b'),
(229, 1, 'sQkfvSvUaulw9lgw7dLwd35BabFtYuQ-H5ANB2jJdDKk6RzJaM5fqvRCq5P89G1bklyt76EXdtTzjazmDYb4DSFcdzNcpAXd4bz-', '2019-07-17 22:44:27', '2019-07-17 22:44:27', '09be7611-8196-4a0a-9f18-3a1802cfd519'),
(230, 1, 'ceSNZGPRluojZ391xKeI1YEYNrZF5dLmQC1ej6ryM3VYZUP87pgUZd4oUzR2Ab6EStz5H985F3vbRi7iXpDCucx6P3srBJgxL0p1', '2019-07-17 23:44:41', '2019-07-17 23:44:41', 'f443449e-bafd-49e6-b6e7-5190fb7edbd5'),
(231, 1, 'TTyGYkqPVg7wcW4trHHOqaLK27kPbcv1Va2rPpPU3NssMvX7ik_TmbCvZCRT7Fw8e_r7K3UoM7xkUtoD2V-ylx91XSOgsjAaxkkV', '2019-07-18 00:44:55', '2019-07-18 00:44:55', '4c804d2e-8acf-40bf-9fdf-dd02b38b1cc9'),
(232, 1, '5pSGysI9XB6x9LPsWwcu5WLLdDruNGiJeWSyHEmbbkjdSFvL3v_yzzKJx0nJPSC2u4r1mOG2hrPvvkyuhVeTYEXwBA935OHDdet_', '2019-07-18 01:45:09', '2019-07-18 01:45:09', 'dfe7f2fb-0f86-43a5-b2b4-96de543b68d3'),
(233, 1, '926eJ7aEHAYT1hNiFsI3yviojimgoUV8S9UkmP-CRL7cNRWAhbg9Ie2cYNVG8JUOZTjLUChjlE7H8S4TafG0ffwZ_oqWdnYIvowN', '2019-07-18 02:45:23', '2019-07-18 02:45:23', 'b912e1a2-8c2e-498f-8026-37631ea0ed03'),
(234, 1, 'bC5UPNDIbP4ZJ4hEPc1QPhgPDe2rn_CS0rCIuj_9Py0jZKBVKWfnann6JYg4r6cTkXjBD8FY99J5jmEz1HKAxpOvj5aHi5FJCP_p', '2019-07-18 03:45:37', '2019-07-18 03:45:37', '7a3e6ead-4b83-4425-b395-c1c1e4747e2f'),
(235, 1, 'LLPg6d-kRv27RbgX-ZVTwUdYgq48tjf9byvqpt-uP-GeuB2c-Ht3xbpbMzGHFLLlF5g3hTWDexEVUf4BZdgXVJfeQ2tbk8RRZVhT', '2019-07-18 04:45:51', '2019-07-18 04:45:51', 'c7dfe22a-9237-4eba-b0e9-4b35e94b0d4a'),
(236, 1, 'Yxx4-VSvYsYOzgx6xx5LtEZUD2t8l05T5CNHJVKvcQJJX_-rEWWqM-V8few3Ud_K6QFTvQifcMiep03lCLsdK4DhqHRxn-wl82Mx', '2019-07-18 05:46:06', '2019-07-18 05:46:06', 'bb85b0fe-0023-4c05-ab9e-17ff9c1554bd'),
(237, 1, 'nyv2gy9_u-1oGqkmuR7EmfIeg_Z1FFBOQfsR-iaUzudT4GsS5Hw3IHwl_xIp5ZKEl3_sAosDDPcMay51Y-NTaVIjV6Ef5dZz26xy', '2019-07-18 06:46:17', '2019-07-18 09:55:49', 'ae20be6b-088b-43ea-8152-4579cb504fc1'),
(238, 1, 'tQBkmvKx9Oz8BcOnw9wwv8kUR6iG9xo6sT6R1QVICSolw6-8tAdEj1-OP39zCb0EEv35dH0rqu1nkjW-WS0zdh7ZYEELqp9ZkUGi', '2019-07-18 10:56:03', '2019-07-18 15:01:24', 'f0884019-ceae-4db2-b68d-fe2baec30e9d'),
(239, 1, 'qbAJBxwq4eWdAgcsdKR8mmO-6AM_5SdOLjfHM3AojPJlBMyTAZMU6JSDHfQSvmzMUYwsTCSk_7Nl04rlNoMXohiEeUBziGO9uG_0', '2019-07-18 16:01:37', '2019-07-18 16:01:37', 'e97710dd-2381-491a-a3bc-ea6e24e977e0'),
(240, 1, '4UavGlSP41Y-aEVTUDacxdUxWjjWj_ubfYstB2XRwGd2WbAB0VG1dJkuuIkE4MjZo6_yzJY_2RoNGmXc2iprY577CBLwyLq6JxRU', '2019-07-18 17:01:51', '2019-07-18 17:01:51', '629eeb17-bd7a-4650-818c-c5652e1261d4'),
(241, 1, '0hoqEp33ndWNhP8TKsAh-tVNxfyVJcNKPsrcZV8qdNIx6CeVe1fjzZ6VX8vy0oItixP90eccLJWpvvgx_TCvdRsZfthgu5EhQaRb', '2019-07-18 18:02:04', '2019-07-18 18:02:04', '3b8c37b8-4a1c-4c89-9367-c1dd4b5803d6'),
(242, 1, 'AktJlNSaOCkZx-uMqloBwAO2yBQYAUjabmv4Gqa-pW1tQJJsPZR52g_LrMrk2UKAPklIMPYftEJBpgN2SMz-R5B5is32Dn8-J3MX', '2019-07-18 19:02:17', '2019-07-18 19:02:17', '1cf51419-7466-4b0e-8dd6-9a464c055c41'),
(243, 1, '7FRRfcMduq7jVZtgQnA9_NuBkNfH-Wufwi2-3ZGdCftOxR5QARrXeBbz6UL9q9PtdUuGHnxUzoQFIPgKb2TuaTeOWilQOudWFWws', '2019-07-18 20:02:30', '2019-07-18 20:02:30', '7ae05e71-9043-4f1a-8da3-bf40e1e49e60'),
(244, 1, 'sMqUKalrGTFbHlGQIS2ogfSXPEZEN3LX_KilkSIUl6-70dpSmVI1hc1baQ9kEsPwEXi6BQkxQXgBKS84Gfv1-zF7IoLlaoXGe8i9', '2019-07-18 21:02:43', '2019-07-18 21:02:43', 'e2be0080-05c3-42bc-94b5-a0922e252d37'),
(245, 1, 'Tj2fGbnS15uxUG79kEJhQKn0kmbPSVRc3OsFSnoYxE_GPJWKfwwRthC6PdrRKeuJaKDwdvJgTw3rPn9UO-2lyMkxPni-ZKukf29C', '2019-07-18 22:02:57', '2019-07-18 22:02:57', '4a8b3ecf-f1fd-4ccf-ac5c-9f24a07cb19e'),
(246, 1, 'DkT7kv7G0o-KLuDGo0PJScc3lmsMP5tCALWU3d5AZPr3GxakWaMrQLsk8zPzqQOCQQ0-A8WtKPSRRfzLlrSoq0TxF9t916VGM7Ps', '2019-07-18 23:03:10', '2019-07-18 23:03:10', 'a6432713-81ef-4f59-92a1-db880318b808'),
(247, 1, 'kGQe49chaHybaIQw0v3H6sFi9CeqxSfdDrMNi7NnWHYgJbL0A6GVFRdbdH6ZOy4iabDnBZ9xuvSlGrMH7cwGPH_YlvfFpZZ0QOMR', '2019-07-19 00:03:24', '2019-07-19 00:03:24', '57fb369f-55ab-4865-b16a-357c0c53bc92'),
(248, 1, '0uf35xBnxhFG4SCQI0gShtOROeG8jzr7jCndx8inc5iub9yeLHX9NwDXGszoUqdfQCQFknOjEVSBJ3zBlbVsjXL2JRY3zqVmK2uD', '2019-07-19 01:03:37', '2019-07-19 01:03:37', 'cd2fd13c-ae95-4cfb-a015-1366b889bc42'),
(249, 1, 'dkr0te79pvQGYDte8wkQvnWJAFtcXdtR1ey6Lcejq1N9loUQVLqpKpfugrmvJMmwF7W2I_dQR9uV2V1QYe6NMYinzqEXgIMDANzT', '2019-07-19 02:03:49', '2019-07-19 02:03:49', 'fe8894bd-b1b8-4a97-a5d0-06e70fe8fd31'),
(250, 1, 'IK8rfSoLG3dVKo0HBElzRjfaDC-jDkO9uSwcwaQB4tNd9TYS0dNti5Bd7F2VASLVxP-txHmSsSqcbjAnhJRnN04vgdU4PpcayMmw', '2019-07-19 03:04:01', '2019-07-19 03:04:01', '7567a951-cf1f-403d-a6ba-b3e61a7ac75b'),
(251, 1, 'QWV6GMi5du9v0QvfCXSwPeuKYO7LWxzjZ_apCWH-kudJrje2fU8OhfviCjtPQwN20Tcv1A2xIYEmwn7UNFyDi0h36AeYrtXdU0X8', '2019-07-19 04:04:13', '2019-07-19 04:04:13', '6992378d-e732-445b-9ffe-c46e22f127b7'),
(252, 1, 'Ac_afixeOkC2rn78a1oyrCel4qO0sRslzD-meorStFmZY9KwAY9Fkincoaz6TQMsPHA6mCXymluoJvD5O_56ZBWlt9ACPLpjM-CD', '2019-07-19 05:04:29', '2019-07-19 05:04:29', '5c7575e6-09a6-4a70-9a0f-1f1697bac21c');
INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(253, 1, 'WkPz1L83VuGwp_5P8W15-hQlqb7kPOMlM0aFxpDbn064ZREdG4tt4McuRO6ewb-ddKOu1hPzQQLHBE3Nri2mNCDqprtvQ_WTpxgM', '2019-07-19 06:04:42', '2019-07-19 06:04:42', '92bf59e0-8b09-446e-80e9-930ba3d7e21a'),
(254, 1, 'l_ee3JXkSC3Kr7bodglelM0EzU4ehY6sU_DyYwQrVselS2ctvqhWhuDkj2GILgHQCFKN5R-_mAjEBHM8CnziRL-e-PdZ2bQ6H_7_', '2019-07-19 07:04:55', '2019-07-19 07:04:55', '62a3d9c4-1e5a-4ebb-a9b5-9d0d1df5e974'),
(255, 1, 'XWcAY7K3bh_6_sd9veBGUE6PrUb96Ijx4QVyCpG0YxQyo47-N52IP0IiO1pSCyNQ3TTHnIgz_f7wcvcJVGbl4VwEzDLKAqkm_sLG', '2019-07-19 08:05:07', '2019-07-19 08:05:07', '64ec0278-3d6c-4269-9a67-b113791a8d0a'),
(256, 1, 'e5Xul9trWFr1jQ8DIMnD3PgA0V1y3wJA7ivDm9dbOqiDg9LSQaeYhe_niChHrUtKSw8JMPQs0WFLjsRnYaK05tDlfzjI9AnPn_82', '2019-07-19 09:05:19', '2019-07-19 09:05:19', 'f4f3ae65-51a2-462c-96ad-c5faf0ab7668'),
(257, 1, 'GP-8IO5Y9LLJK7mbFqgqlQtmHBOHtSzoP18vG_d812Qzp45QtNRa416mdOm5aO0aLLrDtATJuwAQsv1aykDm6NT-KLGRVJ_eY-gl', '2019-07-19 10:05:33', '2019-07-19 10:05:33', '76b49070-8104-4b10-986c-3ffee0b92e37'),
(258, 1, '24eQyZ7w88wVoS11AU_XCIFAAiO2gtZ0aH_18IlnTWZZCbYOhI38L0xM5fHJskvLZgMLIaNjr1eOBMkGl4cQKtKwId613K0VjnLT', '2019-07-19 11:05:52', '2019-07-19 11:05:52', '8fccdc6c-6d93-4163-a5c5-5840b4b7ac4a'),
(259, 1, '5TBSJ-ddKlJAFJdINV8dXbCJwgxy_LEetbUUuYKeP6ovsNrkINXeoyM38DGpzo3FDAdTsZ6gZsRUTGjdCfImhxQ_dNslFbwRbIev', '2019-07-19 12:06:05', '2019-07-19 13:40:20', '30e0d4c1-2c0b-449f-ae67-fd036e7219a0'),
(260, 1, 'xNO9WlpQ6gIYl6-OnwmBhMyUOMBEqgqbcHNE4Rx1XN7q6foUWN9TmNlLGACtw9WMn3wAJPZlhyTyHX7Bg-JZuC8KsVcmXgZUKf8M', '2019-07-19 14:40:34', '2019-07-22 07:15:41', '4ccc5f99-8252-4547-bdfd-7d98a2d2b0f7'),
(261, 1, 'R8h4kj2R3Fi06_J_8CFKnK1pGe7zPpTazLz91-OaOSJHGN--BBcX9wN7rBGFPB8zNZ1Xm0Np-oWs2q7i93K-nMQzkY0hT8IrmsyA', '2019-07-22 08:38:44', '2019-07-22 15:23:18', '18f5e921-d699-4875-9123-98c0647171ca'),
(262, 1, 'gQgYv-Y4bnESitJ-eRIqjzAgg0hOBimo5LZN-HFSpm0KBJHZz17rJJsv4Krsa2NueTs_2TF6Q7_sJ6ecMJy-sE5l_eBnkITbu0wu', '2019-07-22 16:23:46', '2019-07-22 16:23:46', 'd639ee6c-7ddf-4582-a3c2-9313b403aa75'),
(263, 1, 'ZdK9uadbF9PDSEYD8-EArk8MxuRM39ppOMP1HHzccit40opPk4g5pzZI2OJ4SUOPTfLPRUj_3WZ6tzIFXBFmm6hkMVq18Wz-79bu', '2019-07-22 17:24:43', '2019-07-22 17:24:43', 'd906e1a3-8ab2-4b9d-abbe-af011a91b3e2'),
(264, 1, 'Ujlgm304zxgbv6ooZhztLsVoIm8ILhndZAMf46nR5Dn9CFevZn08sCnM38wEJxFiI0x3jWAKzmi56RyVUuWJYyukZzNWQ2mCMeWc', '2019-07-22 18:25:25', '2019-07-22 18:25:25', 'ced463e1-d979-4b51-9184-ad418e03df75'),
(265, 1, 'GGFwNwm2I7jhswkgBeSdtJnf-Kt36iG_OY_xZZtKov3OIJ0UWt2t4iP3AsogQ9nfASkzPkePd-D9-3OAMl2B0XoJz3jEiJFDKk6x', '2019-07-22 19:25:48', '2019-07-22 19:25:48', '30804fa9-ea79-4976-8918-d8a8b96b5ad7'),
(266, 1, 'im2psXuNcJQw7uoAsDxOXYfKJfK9w8efZAhMrb2ZJc0HJGoNTwhh-JLHbAFaPIQNY4zqhZtQJL6HlIlS5KxGazdKZj-iVzKR_Lfa', '2019-07-22 20:26:15', '2019-07-22 20:26:15', 'd7008509-da9d-41af-89f1-bc9c4afc9050'),
(267, 1, 'GRUbVlPQdFssSlV1zvHmmjjOnemYaGiumkUJDJpwvFJ_wQLxvtP_6VghLknzm3_qpjOLrDk1c_FrkVP2n2l-TghH13Nc4y_gnB7O', '2019-07-22 21:27:00', '2019-07-22 21:27:00', 'e49dc2a0-a3d2-4888-8eb4-1b7e7c9186b0'),
(268, 1, 'jdHmCdlSvmFv64FuH0RXFcskNwre8wokYyTtW0IUKXjNagrbnEC3oVBMB1BXToNEFFG7noySIQ4BRs7DFc9B60ApdTHHyeZlOvlu', '2019-07-22 22:27:17', '2019-07-22 22:27:17', '762b1477-0286-4bd0-98e1-a039dc1015cf'),
(269, 1, 'wtGJJUtEWG6pYgiWRpNfh8kHJMzGQHuw47PIhY9EaynmZJHxVYMgD4q5B9w8r9ebZlTJ4jN9xJ78xKbfueWLkbBkB-OxvQFRJn5v', '2019-07-22 23:27:33', '2019-07-22 23:27:33', '2215e39d-23af-4ac0-8986-40dc361df20e'),
(270, 1, 'HH-fStG_PUIqgAi5nwmjmBOxUkV6WQSakMQzgC33FVffszgfXsprtTWrr5BgJgo6cKjsEbCLKscxRtGJJaou9URN_--4-HqTLeMW', '2019-07-23 00:28:00', '2019-07-23 00:28:00', '1a3e0354-96c0-49b4-9adc-d1a55896dc03'),
(271, 1, 'lD1jms1-OSyl0vadqrRIzkTQSvhj83r4VvIpX8gBW7pjhpCefig2R0xWXX3y0cWKnvULzDl8DUGHWEuYDliRnvVNzH8B-yuB61Jh', '2019-07-23 01:28:17', '2019-07-23 01:28:17', '254edad2-b509-4b0f-b5d0-712888fd3cf0'),
(272, 1, 'mpqVoeCe-SQvXgn4ANWmHK2FIegO03ZvCVbMoaiW_XuvKHYsUUBu9wREKNyt2YrmHQZg0l73bzp4M1ELqoXxg1H9uRJE1w2y0rIi', '2019-07-23 02:28:44', '2019-07-23 02:28:44', 'fda7850f-f5d1-4d33-8f25-964d81100587'),
(273, 1, 'SQ_6gB7DTKR5P7JEjmqdRO23Dagckv5jiFofeI2Z7dBCDlMiCcjqcHlxmxuRp4Ui3J-O_bGIzvIb1liu7UJhDlx9INid-Yrse8hT', '2019-07-23 03:29:15', '2019-07-23 03:29:15', '4f750772-1a3b-4138-8b7a-3ac9a254552f'),
(274, 1, 'hHBIX_h50j6VtWWQUba0RceqcKr6Hp5A26KtHf6MgioLD6wp4LENiYUmcX7AMf7ntx8UcxDcJbwiB_fLANuaT9_kKBYsAs1aT5ea', '2019-07-23 04:29:46', '2019-07-23 04:29:46', '29820491-fae9-40e9-80db-10c09dd38943'),
(275, 1, 'yOkMB4WzVaG3jdtyVGfzfFCc2Ez7ZDcVE01RWbJPUTMqP746J1V50Av4b_tRFkC8Qn0u7PXz4VhlvVnno02a5OB8fj20cViZuuYO', '2019-07-23 05:30:34', '2019-07-23 06:20:28', '0717272f-6be0-40f2-b1a6-220adc302b47'),
(276, 1, 'v2ooq6QsqHwyuF6y56Sn8wu_CFNX2ypF_h8zFVw1pDNqKRlZyqkNm859EJHQSKDhmBs1MS6n9o8oY7tNnGmYTB-RUdi0i0BnK5z8', '2019-07-23 07:20:46', '2019-07-23 08:00:00', '16dfa2df-ad06-45f3-ab59-3db6fec8b7d2'),
(277, 1, 'Kx9yj3EBN6HuIZ1NLedBpqSas6VQS0fj_BE5ajSJo4vSlvvc1lFso9P0wD7SNtlXTgP_685IR5E2R2hzm6NS_wf3wFHN-g8OBY1n', '2019-07-23 09:00:26', '2019-07-23 10:51:07', '1658b5df-3955-4635-8913-22f8698bb20f'),
(278, 1, 'XPF5BJ3klTif8N4xau6z3-zBMoJRlNvKo53ldVa924EkYeM5Rl6v0_C19Xqvyj59W1MwA2cqeA-rW_uOyckqsBiIjVWJutGlo58g', '2019-07-23 11:51:22', '2019-07-23 13:34:14', '0e766667-bd36-48cd-ad90-8d28e30730c7'),
(279, 1, 'nj97FFNNlcb9_o75CmzpOcKVK38C_HH8_zv6O7YLfS_TAt38hz3QKjbhTIG7Y-E07t9T6jb88uE-Kidct5CdLo6AichBNk6qQ2sP', '2019-07-23 13:41:37', '2019-07-26 06:51:37', 'cb562a16-9e21-40dd-8336-52998262991b'),
(280, 1, 'KgXSSGGHTl5VhE94oO8MdcDTSxrDCskn8cq7TWgyQryc4Enj6JNNvzqDgsWcCe0JtMQ6WGEcXoO4rnAhvaMyfuc4DtZXZdGZtCPD', '2019-07-29 06:54:49', '2019-07-29 06:55:11', '81b5a13e-2608-4220-b40e-5f00f57615a0'),
(281, 1, 'AW0cAD7BuPuQ3zWMO6-ZaVK__Y9iqxcCIeiQvKbw256dyxXI0gQgVTS82iU-hGIzDUXWCAByaLHUkP4-gQPJFWoZ96LsdAupPzEH', '2019-07-29 07:55:15', '2019-07-29 07:55:15', 'fb34c473-9c65-4c4e-bb13-fca3c5762e50'),
(282, 1, 'sKeraV15op0qYAkq_YiqJXn25yAOaQEuNrY1lpET7VeycTz6HmFLLfjGdsfQoIWlaC47LXGTEBeo1YGDfpTT_F4XuszA79pUlsnw', '2019-07-29 08:55:19', '2019-07-29 08:55:19', 'eab06b58-6737-4ed2-bd21-9a6b2dde50d3'),
(283, 1, 'ao5Px-VVJ7uepQuHLW9lPr61rX4mDOZ_fw3xZ3UM3tZCLUJ5OPylldyuywgCkmrxSHoS31hyplfb9_9_-I1P0ISfEBYXSQYPNU0q', '2019-07-29 09:55:24', '2019-07-29 09:55:24', '06107e4a-d36c-4c77-81d7-edc2d0d378e5'),
(284, 1, '1JCHmKTgujOu9fkFGP2TrBcKyBwBwfWl0lfzgoMJpn-NdIpXsBKM2UD9Ucdsmnnke1bC4BRtNr4jLkogElwvQu77H6FILCW1mvNW', '2019-07-29 10:55:28', '2019-07-29 10:55:28', 'ce11d087-a7a0-4b9e-a2da-155ddfb403fb'),
(285, 1, 'Bjg4Y_aDPFG4Bd-L9VbJIPvsTTPqNn2JG8RSSvpPVHVEf2LFXnVoVMmNnmKwM8pp-5FKHf5WA9h92lo1M5DJbQbUsRyut4UjW0z-', '2019-07-29 11:55:32', '2019-07-29 13:11:16', '801392ca-5045-4f93-a193-2bf0014a9407'),
(286, 1, '1uvGuo-lzDxVPiVxSMaiHFMTqeBIF5FogvR2U6jdUiqRBfuUDhRmsfmO3lYjBPA7idYuCpyh0VBg7waHdwEAJER7E75-2pQHGeYa', '2019-07-29 13:12:25', '2019-07-29 15:41:31', 'b27c1e3c-71bf-402d-ac5a-67cb6baa7b66'),
(287, 1, 't1tafkButjFzXmvD_qNF0DO8XeRQ53Y-p4tAGUPWuN-1wJmK6XDGph9pVkuyI67SFGgGv9tU79Im6QItwJL_EZx9xH1B-5hWj40S', '2019-07-29 14:11:23', '2019-07-29 14:11:23', '56de5493-ac2b-4e29-8a41-30fef925cf6a'),
(288, 1, 'V6dyCot4vgxf2QVmc4czKg5T5YeEMvMC8Tk8aCdiv4wgbRAiLrSlYjUFiAhR2vo6zeV3pyNvQGnNVA6ncac0_pbks4gwz5Idcp2U', '2019-07-29 14:11:23', '2019-07-29 14:11:23', '41214fa6-e838-4eca-bb66-9e376d9ab9ce'),
(289, 1, 'NmhUJAoOLGFCz6b77vacU9fMa7P7lshZNfvZVNSc3O_JhBtBmgUAa2AcfJvY5cP8bTMe7ZWmot0KT3YGniq398ih0NYwLKKZJofN', '2019-07-29 15:11:30', '2019-07-29 15:11:30', 'cbf02c11-2379-45a4-b646-cac4ebe69990'),
(290, 1, 'li4aZ7sp57z7C1O-8bpYRjtleFwq4124vccR9mkfWfXUe_7W_5Y_4Rq4w0UsLNxAALqGGThyuLNc-COPzO3sSt1v9qyvRC-pLTR2', '2019-07-29 15:11:31', '2019-07-29 15:11:31', '34d017c4-580c-478d-ae68-59fb7eb6e5c3');

-- --------------------------------------------------------

--
-- Структура таблицы `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Craftcalculator', '2019-06-11 15:11:26', '2019-06-11 15:11:26', NULL, '96abb8e1-acce-4c48-84ba-d1d8c579094d');

-- --------------------------------------------------------

--
-- Структура таблицы `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Craftcalculator', 'default', 'en', 1, '$DEFAULT_SITE_URL', 1, '2019-06-11 15:11:27', '2019-06-11 15:11:27', NULL, '1951e1e1-0a4f-4dcb-9b47-711c8734c512');

-- --------------------------------------------------------

--
-- Структура таблицы `stc_8_pointstable`
--

CREATE TABLE `stc_8_pointstable` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_points` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stc_8_pointstable`
--

INSERT INTO `stc_8_pointstable` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_points`) VALUES
(1, 26, 1, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '4a64a059-dabd-447e-987d-564f3b99bdaa', 7),
(2, 27, 1, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '93fc1c34-317d-431e-85e6-8845be6bde1d', 8),
(3, 28, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', 'c1bda114-1b84-4aa1-b71e-68065035599e', 6),
(4, 29, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '7a7fa201-729b-4afd-925b-71a9d797a1a9', 7),
(5, 30, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', 'c5fdbd2b-c218-415a-814d-485258f238be', 4),
(6, 31, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '0cfd46be-4247-4fc3-88e4-467304f4c7cc', 6),
(7, 32, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '5404dc39-4560-4099-96d5-1eb32d69bbb3', 8),
(8, 33, 1, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '4da686be-b9ee-4621-bfbf-28032a7da565', 10),
(9, 58, 1, '2019-06-19 12:07:17', '2019-06-25 11:21:28', 'f1a54311-32bb-401b-bf38-41bdf10d0a58', 5),
(10, 59, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '0982367b-ad03-4506-94c7-e1e320429530', 6),
(11, 60, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '2c3263d5-1882-4f10-890b-e22ecaeecb13', 4),
(12, 61, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '7cd74a6a-543e-4738-b288-519ac2fedf5c', 6),
(13, 62, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '093c92f1-fd13-4e3d-b548-aefeefd6f906', 4),
(14, 63, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:29', 'e11e4d2c-b63d-4c61-b706-a187e3880ce2', 7),
(15, 64, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '4b526022-7c70-4f1c-ae26-b027777b0f8e', 3),
(16, 65, 1, '2019-06-19 12:07:18', '2019-06-25 11:21:29', 'd44223ca-ea7c-4a57-9718-cd96bc53e162', 6),
(17, 86, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '663c83d0-0951-4ed1-8213-2821f7ea434d', 4),
(18, 87, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'd9ba058e-fb06-4680-bb8b-0c3c9838b67b', 4),
(19, 88, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '90411668-ed33-41ba-848f-5ffa7eb55d21', 5),
(20, 89, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '7f5d7124-cf23-46b8-8b58-a62006d0d8f8', 5),
(21, 90, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '13c963f7-2a95-4b4f-88aa-cd077dd96a8d', 5),
(22, 91, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '31ed8c1d-e87d-41be-ae71-f62e59759dd8', 6),
(23, 92, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '6e9a9e2a-0e5d-491f-93d7-4b7ae66f5156', 6),
(24, 93, 1, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '08a3bd0d-223f-4952-9e5d-ff16a55b6aad', 7),
(25, 94, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:28', 'd72654bd-b24c-4069-8e0f-4dca916b1e42', 0),
(26, 95, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:28', 'aad43447-d153-4432-a0ce-0ed4a2f5e29c', 4),
(27, 96, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '329c7cbb-5db6-49b9-9417-98a89e18262e', 4),
(28, 97, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:28', 'dbade8d9-24fb-4a51-8b0e-8688e4c5a203', 5),
(29, 98, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '0dfb6acf-009d-4652-97a1-f94cc30cc81c', 6),
(30, 99, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:29', 'd7a3142b-f503-4017-8995-dfd8391d36d8', 5),
(31, 100, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:29', 'd76c5412-4c68-41fd-92b0-623e83ccb332', 4),
(32, 101, 1, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '2489637c-8c31-42a2-95f2-35d52cfd6570', 2),
(33, 284, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', 'ceff576a-f62c-4ecb-a177-628f398fd591', 5),
(34, 285, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '50dcca99-d0a5-4332-b075-eb5017fd1914', 6),
(35, 286, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '01a6ed59-42ca-4f40-9296-7c3b39150f9b', 0),
(36, 287, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '4eefa1ba-c31d-49c1-9ae9-1d8463010115', 4),
(37, 289, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '54bb0aaa-2e36-4c4e-a92f-23bd70e7ab1f', 4),
(38, 290, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', 'ee1499b0-5a1d-4664-9a41-7c5860561b2b', 6),
(39, 291, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', 'c5b3b94b-f1b4-496c-a3c2-0bfeff7d17a6', 4),
(40, 292, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '267ddcfc-8aad-49bd-a0c5-fcba2de450c5', 5),
(41, 294, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '6ce583be-87db-419a-aa7a-a02d77157d34', 4),
(42, 295, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '6922920e-8d94-4d42-9d13-2b3aed8ae2de', 7),
(43, 296, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '8e4d3b4a-a8d4-47ec-8955-7c7ec78202a1', 6),
(44, 297, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'a24e6b2d-3095-4259-b7f0-2db4fac0892c', 5),
(45, 299, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '47d31170-84d2-4aa2-8519-65aabf6984f9', 3),
(46, 300, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '746e98eb-7011-4b07-ae5a-58ec6aa410d1', 6),
(47, 301, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'c55173bd-bd3e-424a-b863-799f755e1140', 4),
(48, 302, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '87d8bc42-8097-49e6-9689-7ed427aa4339', 2),
(49, 305, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '45c482c4-6174-48cd-87cf-05d818dc8da0', 5),
(50, 306, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'b9077438-b475-4571-b1c0-c9b77f7bc8c8', 6),
(51, 307, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '99d76c31-fadd-4501-b53f-16235cfeb6f7', 4),
(52, 308, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '2f0ee5fe-6dc9-44d0-959e-81f4edc6c8f6', 4),
(53, 310, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '96050cc0-2ade-42b0-9386-bae1dc5071a3', 4),
(54, 311, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '836711f6-83e5-4431-aa2b-1b488a6ed13d', 6),
(55, 312, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '7046f979-0190-4648-9461-19eb6612b5bf', 4),
(56, 313, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '166f6916-ea05-4fcb-b139-e30bf9fdea54', 5),
(57, 315, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'c450729a-498c-4a19-9d60-497a32aa90af', 4),
(58, 316, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '50c477b1-47e8-4d1d-8e0f-14171a5305a4', 7),
(59, 317, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'e45ac1b8-a7b3-4af4-83ba-a3a6f1541d0d', 6),
(60, 318, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '97b6d22b-0347-4ea7-9c6c-7bec337f4c71', 5),
(61, 320, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '60a8f606-fad6-4728-8f79-49cc45c3643d', 3),
(62, 321, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'f0694d67-7764-4aad-8a1e-d22976530339', 6),
(63, 322, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'a9e9195c-c37f-45cc-99a9-32f0d01f0a2d', 4),
(64, 323, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '1da4c88a-02b6-4248-bdd9-0385ef0a3458', 2),
(65, 326, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:07', '0008dcc8-a8a6-493e-a5db-4cd27d6a7126', 8),
(66, 327, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:07', 'c14d48b5-d90a-4f0c-a1ee-3302683afff8', 7),
(67, 328, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'eea6fd45-0288-472e-a2a3-d52effccdced', 4),
(68, 329, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '1602560d-eb75-4dbc-9f58-8257c905f6d6', 4),
(69, 331, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '4e2de7c0-1121-4b10-954b-7c5d50826192', 6),
(70, 332, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '00c91f62-b7cf-44f5-b85a-2132b66c8141', 7),
(71, 333, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '0858eb5d-156c-421c-8960-9728e644c133', 5),
(72, 334, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '8ef2dd80-b827-49df-8ce3-8a52d8e5b2c3', 5),
(73, 336, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '0ec64ce1-d823-43b9-8046-ad46069b031a', 4),
(74, 337, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'cf9d9e31-0b54-4d4f-b181-2c0c97d4cfdd', 6),
(75, 338, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '6e001415-310c-4532-8a2d-17d6685bbf85', 5),
(76, 339, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '24043de0-4783-41fb-8c84-da7172fa980e', 6),
(77, 341, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd9ce98b0-b6f4-4c4f-8d79-ff39d73af176', 8),
(78, 342, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '22bc32fd-5ade-4bf9-a5a0-3e91015c83d7', 10),
(79, 343, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '1030409f-85d6-495e-82ae-a94bc2d56b89', 6),
(80, 344, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '89e1e223-6df2-467a-b9a4-8e45a6a522a8', 7),
(81, 364, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'eeddb7fc-2da0-4a00-9a44-503f59587131', 5),
(82, 365, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '4ad7f377-1a67-405b-b55c-f23cdbe71aa1', 6),
(83, 366, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '5788147e-7951-451b-aa67-05dadc5cab99', 0),
(84, 367, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '26f85d70-1ca1-4059-89f6-69e7a03b5590', 4),
(85, 369, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '6229026b-710a-4df4-b8aa-9cf51b779980', 4),
(86, 370, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'b9b66004-6d64-431d-bec3-60dd323bba3b', 6),
(87, 371, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'bee5e065-b3cc-4866-9ab4-200bb918dc88', 4),
(88, 372, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'b3b0c2d5-a17e-41db-8891-bc0601b39c6d', 5),
(89, 374, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '295db47a-5dd6-4b03-b107-7adb4e202a09', 4),
(90, 375, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'b289919e-852c-4294-98b0-f9ef91f249ed', 7),
(91, 376, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '82b6f196-8cdd-48af-8b83-600c0ffba192', 6),
(92, 377, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '622bae14-5b15-49c5-a562-0980040045fa', 5),
(93, 379, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '2f87d9b6-528d-405a-8bd9-1c02d660c7e4', 3),
(94, 380, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'e149d329-b027-4c7c-8a92-1683470b802e', 6),
(95, 381, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '2a4843ac-9224-44d4-bb1b-62a70206fe57', 4),
(96, 382, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'f9952d36-df08-4b3f-9adf-25929657a6f9', 2),
(97, 414, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'cc3c5e8c-3433-497d-b21d-64bd1d455229', 8),
(98, 415, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '69c00064-6fee-448b-9f7d-9768d09376c4', 7),
(99, 416, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '866ed13d-e9c2-4169-954c-1adf707b74d6', 4),
(100, 417, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '6c0c5e6f-cc5a-43a1-a3f7-9a3263751d1d', 4),
(101, 419, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '780e3cd0-7e12-4cd6-9216-6410f28eaeba', 6),
(102, 420, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '93c88fc1-732b-48ae-ab76-67a8414c0494', 7),
(103, 421, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '554d73e9-5f33-4d41-b66f-1bcc6e144dbe', 5),
(104, 422, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '3021a4d2-7629-4e90-a1b0-8e2fd04d6dee', 5),
(105, 424, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ef01c7ae-cee8-4953-8540-ca40ab866a4c', 4),
(106, 425, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'cdeb6933-f2ee-4a3f-b1e9-309cb9b380bd', 6),
(107, 426, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '43e1b0c6-ec0f-4074-b844-ef655f58f929', 5),
(108, 427, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e408e8df-675b-4ee8-8d39-d0f86013b7d7', 6),
(109, 429, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'b84570c6-6831-4d0d-a5e9-79046c159a39', 8),
(110, 430, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '473ded3f-64f7-417f-bf99-eefd22be9375', 10),
(111, 431, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '6cf8dd9d-bf9d-4a17-864d-92e6921ad041', 6),
(112, 432, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '7743d998-afa6-4e67-907b-5751189f06e0', 7),
(113, 435, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '47d8a8f3-376a-4c62-9ba5-2fab09db7027', 8),
(114, 436, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '23dd61fa-a82a-4945-9d04-328d7c18f38d', 7),
(115, 437, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '4cd6161d-37a2-4f53-a8f1-2bf59e48695c', 4),
(116, 438, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '57f95850-21df-4f67-8849-120a57034813', 4),
(117, 440, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e3c03751-aae9-44b9-9ada-46315457239c', 6),
(118, 441, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'f4eb0e9e-dab7-44f6-b50b-5cfb67cb2cf2', 7),
(119, 442, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'a9bd2c09-5b76-4293-886b-e7bc0f1fa8d3', 5),
(120, 443, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '3fc9e12b-e0bc-4517-b437-91df1a18bcc5', 5),
(121, 445, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'a29650e5-e31f-49dd-ad9c-0fa8fb9e442e', 4),
(122, 446, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'a2cc1d4d-6c8e-4206-b5e2-9eb8fc29b64e', 6),
(123, 447, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '3e55b2fa-ec24-4ce9-80a6-c92664fd8a8f', 5),
(124, 448, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '5d7f347b-3c49-4646-9b58-a69848fe5bcb', 6),
(125, 450, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '5afe575d-9e18-471b-a126-59129eaa417d', 8),
(126, 451, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '56d80178-8870-4f68-9b5b-cafe4f8c16ef', 10),
(127, 452, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '654844b7-e5bd-444d-b57e-163fd2ceafd8', 6),
(128, 453, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '0d068248-c4f8-42e6-839b-1728177f473e', 7),
(129, 456, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'aa2b5f4f-d90c-4d22-b31d-469f5bebe242', 8),
(130, 457, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a71ba6ab-5412-4018-bc9f-1eabba93aeac', 7),
(131, 458, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'cc0fca24-d054-4645-9086-3954805c8f5e', 4),
(132, 459, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'bd303a66-bff0-4abb-aaba-7333d40b6b6b', 4),
(133, 461, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '64b52186-62ff-45c5-90ac-1643e3787882', 6),
(134, 462, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '15834bf7-d1fa-41bf-9d1f-2b613ec0daa7', 7),
(135, 463, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '266d64d1-1a3d-4eb3-8996-07d40f120494', 5),
(136, 464, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '6aad76c9-0310-4ff4-a20a-0061408244ed', 5),
(137, 466, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'd8b654a5-1153-48df-bc55-d9e73f67150e', 4),
(138, 467, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '06bd6b3f-46d8-4437-9ac8-a8ae6c7461d6', 6),
(139, 468, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '647c53d7-e5d1-4d93-bac4-41cea399b4b6', 5),
(140, 469, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '34b25aa5-c8be-4b5f-88fc-69039bf24579', 6),
(141, 471, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '0c0f5c9b-266e-46d7-836a-4778e9e4926d', 8),
(142, 472, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '86d67b5c-ce9e-4f0f-a358-faf726b7509e', 10),
(143, 473, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'b7b02f4f-5a7d-4e79-a7db-4a6e74439884', 6),
(144, 474, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'b75d76f0-6bb3-4db3-9d9e-f982eaedfd93', 7),
(145, 477, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '719be162-88e8-4fd4-b14c-abef852b1a1d', 5),
(146, 478, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '18b7d999-516f-409b-aa04-894abfe68528', 6),
(147, 479, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '3834323f-8a09-460a-9a9a-1234fd033dfc', 0),
(148, 480, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'be9edef4-e97b-4d05-8583-8073011a8b66', 4),
(149, 482, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a0c35cf2-ebbf-419f-9c59-f3fa14f15c63', 4),
(150, 483, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '05588df7-b278-44f7-b194-0421ebb0c2a5', 6),
(151, 484, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e04ec074-a442-4684-84d6-7055df56a675', 4),
(152, 485, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e3a17411-393a-447a-aed3-a778878388f5', 5),
(153, 487, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '2360eda3-5d12-4d27-992d-489252561739', 4),
(154, 488, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '49b6066a-0fef-4772-9ff9-5a33b0523452', 7),
(155, 489, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'c41fc270-7e81-4119-a80e-1789e3661722', 6),
(156, 490, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '95bbb7f5-bb15-4ef8-b694-03493bd3e1c2', 5),
(157, 492, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e5b2c69a-2deb-4994-9e7c-bb7e335518e5', 3),
(158, 493, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'afa3396f-5161-4662-bd13-93dedfe71acf', 6),
(159, 494, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '13652e4a-ed92-417a-9420-8b993be46440', 4),
(160, 495, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '79fd914f-42e6-4447-bc38-322b48855b5c', 2),
(161, 498, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '84481d7f-a826-446f-a5b2-25d6266f0ba9', 8),
(162, 499, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '005acbac-ae1d-4d7d-b957-0ed5a4e836c4', 7),
(163, 500, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e30cf393-a19a-46f9-b401-c37187bfbd00', 4),
(164, 501, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '60eca911-c8bd-482b-afa2-fb2672afd8da', 4),
(165, 503, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f634761c-b778-4816-86a0-ee110fe593a6', 6),
(166, 504, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'd11b9058-b63a-4710-987e-6abe29b0ea34', 7),
(167, 505, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '25c7593e-f49e-444e-a5af-73098479b1ff', 5),
(168, 506, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '37c28992-d9dc-4b93-9444-87933d1153d1', 5),
(169, 508, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '670da45b-febc-4633-8176-0ef63c36f869', 4),
(170, 509, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'd14f23a0-9437-4fc1-ac69-e8a0d9dd9ed6', 6),
(171, 510, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'b7a81adc-3b1d-43e8-8de8-92c54d3a9161', 5),
(172, 511, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '4d582123-9e2f-43bb-9464-52cba64df12f', 6),
(173, 513, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7a4433f4-abb6-4e1d-92e1-35e462ee675b', 8),
(174, 514, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '534f6a04-764d-4691-bb70-3174b868b776', 10),
(175, 515, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '1cb49e2f-b659-42ee-bf22-636cbac84c99', 6),
(176, 516, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '6b8e8c7d-ce8b-4d71-8f01-ff00e4b17e3d', 7),
(177, 519, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'ae724ebd-6cd1-4e33-a910-8295541f22a4', 8),
(178, 520, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '8a35e9d7-2156-4c2b-b126-739266ab0adc', 7),
(179, 521, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'ffc9a43b-969b-4b42-816c-a3ebc0e52320', 4),
(180, 522, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '0e0122ee-05c6-485e-a00e-ccaaf6020579', 4),
(181, 524, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'f7a4ed8c-afc9-4e06-8935-de7a3f72e0b3', 6),
(182, 525, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '12c8ed3b-33d2-44be-bb05-00cb71c5274c', 7),
(183, 526, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '4e99b687-9e57-4ab5-a0f7-b0dead3e64d5', 5),
(184, 527, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'c60b41a7-0376-4a7c-9e1e-2c0705f58392', 5),
(185, 529, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '4d3427fb-85b8-412d-b993-c2991ae7b681', 4),
(186, 530, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'e5eb342a-a33a-403b-96fb-b3ec5498e017', 6),
(187, 531, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '3e14f2b5-5ad6-42c6-828c-09c3ebe88d07', 5),
(188, 532, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '6becb1be-a916-42c6-a246-35e393be4f92', 6),
(189, 534, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'ea50e034-9306-4ef0-8b3f-cceb3cf70f93', 8),
(190, 535, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '0f165419-4d38-473d-ae2f-7de179f99628', 10),
(191, 536, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'dc82ca67-d837-40e7-8c1a-fb9be4d33690', 6),
(192, 537, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '2a9443e8-6f42-4f84-a1a1-8751e138a494', 7),
(193, 540, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '01af8496-1416-4701-9680-9b384d079dbe', 8),
(194, 541, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'e499b0b6-acab-430c-96c5-e1283236aeda', 7),
(195, 542, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'd762f816-a9c6-4f92-97d7-8fb06bd39e5e', 4),
(196, 543, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '558663e8-7e49-4fda-98d6-37b2d6e1eb36', 4),
(197, 545, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '5ed89aed-8545-4867-abc3-2458bece67dd', 6),
(198, 546, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '502df56e-77b7-48c3-9b0d-56a8147a826a', 7),
(199, 547, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'bcbcd207-4268-4e8a-a154-2b95d4a3912c', 5),
(200, 548, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '1197c84f-5fa9-4260-9cce-541b101535ff', 5),
(201, 550, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '69385050-21cb-4132-9391-294349574ddd', 4),
(202, 551, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'd90dff5a-3d33-4271-a844-9a235e22be88', 6),
(203, 552, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'e42920c7-b349-4f4c-a642-4a38a120cd61', 5),
(204, 553, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b4f8bccd-0dc9-4279-9f31-ba079487c6dd', 6),
(205, 555, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '85c3fa13-31b0-4666-9770-d9313704c0a6', 8),
(206, 556, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '2580c047-9e23-4996-8a25-e826358619e1', 10),
(207, 557, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '47e4bced-9f76-4509-a0d1-11dc1867f57a', 6),
(208, 558, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'd69ce77f-c2aa-46de-b552-bb040b64c8e4', 7),
(209, 561, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '6a3e1c86-ee98-4cb9-82a4-a42f385a40d7', 8),
(210, 562, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'cbf3a261-8e36-4ac3-8b96-f24933bd6b56', 7),
(211, 563, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '8de18546-1d5f-4681-9d05-473096024ece', 4),
(212, 564, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b6dcf3d3-565e-4511-a753-f86d505ca93b', 4),
(213, 566, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'c97d38c4-8bcb-4c9d-b202-bf51c980928e', 6),
(214, 567, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '6957f3c4-cb56-48b3-a562-0738e3973bed', 7),
(215, 568, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '0a5c8c46-cea0-484c-820b-66e06b05f6a6', 5),
(216, 569, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'dc509163-3a71-4855-b066-9dfac150fb9f', 5),
(217, 571, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '0fc607ca-9ecd-405b-82ba-56c93acbbab4', 4),
(218, 572, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '9ff0fc72-d80d-4dd6-9f8d-33780c8cc9ca', 6),
(219, 573, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'f6362790-b65d-46b6-a04b-384bba4dafca', 5),
(220, 574, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '0326bb15-e1b0-4ab4-be9b-62b6e9f3bf3e', 6),
(221, 576, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'd55c7f29-0f50-42e8-96f9-5c35aff71e5e', 8),
(222, 577, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'c62634e7-d3c4-48a7-bea5-6e3ec474c38d', 10),
(223, 578, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '5d896ed6-729a-491d-882e-ab396896c4c1', 6),
(224, 579, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'c7db17ab-9498-4de4-9d30-15dbd2d7e92c', 7),
(225, 582, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'd0205cf2-49c4-4154-96c2-fc3955678eb5', 8),
(226, 583, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '5d0b34fc-a2c9-4ba9-b92d-66ebd50bfc7c', 7),
(227, 584, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '12b5514c-6c1b-4084-8ecf-bf32fe50105c', 4),
(228, 585, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '7343cf36-ad59-4ebe-8d6a-57ea3b920917', 4),
(229, 587, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'fc867b2c-8be9-4bbe-997b-5f2f809f2cf0', 6),
(230, 588, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'eeb98a9b-262d-49ca-b212-454f003300b9', 7),
(231, 589, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'a7a04fa9-7b80-4b3e-815d-3f5426a0d8df', 5),
(232, 590, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'ebba8042-1959-4196-ac23-75c7b3902c3f', 5),
(233, 592, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '90b1dd04-20c0-4a96-b1ee-ae47acda295f', 4),
(234, 593, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'd12b620c-f326-4be9-95d3-745ae5226fc3', 6),
(235, 594, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '05061421-9889-44ae-a3c5-5073a315f56c', 5),
(236, 595, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '98cb6975-f6df-464e-848d-14d7a9fc3b04', 6),
(237, 597, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '03871a1b-85e2-4f53-ab54-0c5c2367c8e8', 8),
(238, 598, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '2501ffd6-022d-46ca-add3-d02b56e6dd1e', 10),
(239, 599, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'bf75b45d-373b-4efe-9f8b-4aa6c4f75472', 6),
(240, 600, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'cde98d00-f78c-4c83-899c-774cfc13d955', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `stc_9_comparisons`
--

CREATE TABLE `stc_9_comparisons` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stc_9_comparisons`
--

INSERT INTO `stc_9_comparisons` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_text`) VALUES
(1, 45, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '3a507e1e-0303-448d-a446-ddca075fa70a', NULL),
(2, 46, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', 'b21c50b4-8e4b-427e-8465-faaa09d67350', NULL),
(3, 47, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', 'b68d7343-dee4-4dc5-b6b2-2b3e7391b6ec', 'Limited3'),
(4, 48, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '477dd559-7922-4ff3-8c08-465654ca9282', NULL),
(5, 49, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '8f51d852-5783-4840-bc6e-c1c8fb9242c6', 'Limited5'),
(6, 53, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '1eca14e2-2fd2-4671-b6ea-e0c67681b918', 'Shared'),
(7, 54, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '8978db72-a40b-472a-81c2-c8ec20df78f3', 'Shared'),
(8, 55, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', 'c41eb073-7f98-4449-a9c1-a97badd58c1e', 'Shared'),
(9, 56, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '2aa2f6ec-48b4-4a63-99eb-dd6f50a0eb6c', 'Shared'),
(10, 57, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '48c4390b-dc42-405b-9026-253123e9cce6', 'Shared'),
(11, 71, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '57e96874-9377-45ba-b552-4c8490e5b7d4', 'text drupal'),
(12, 72, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '592443fc-0c66-433b-a337-38f3a6d9b3af', 'text drupal'),
(13, 73, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '696d6803-df0a-486e-a667-dd421add43c0', 'text drupal'),
(14, 74, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '90d008c0-f4be-4efe-b355-9f601ecded2f', 'text drupal'),
(15, 75, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '258506ac-1996-4d7a-b259-dec15c8b5694', 'text drupal'),
(16, 81, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', 'a1bfa735-6e3e-4b87-8309-818613cda979', NULL),
(17, 82, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', 'd676e802-b2d8-4cae-ad4d-561839ee17ff', NULL),
(18, 83, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '510d2efe-665c-428f-a0a2-aa676352edc2', NULL),
(19, 84, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '9aa2e494-6848-472e-bc40-2315814489da', 'Text test'),
(20, 85, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '398d3112-cdd8-45a3-a621-09da6bb3d95e', 'Text test'),
(21, 131, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'e9ba825f-cd13-4b17-b269-cebe84cd5d3a', 'text drupal'),
(22, 132, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'abbf1ebf-c785-4c69-872b-399104edc8c9', 'text drupal'),
(23, 133, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '25bc771e-4449-4238-a840-d26284f94c95', 'text drupal'),
(24, 134, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'cd885648-e18d-45c8-bb69-3100b77a8512', 'text drupal'),
(25, 135, 1, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '1686805a-894d-40ff-ab96-2af32b7285b1', 'text drupal'),
(26, 139, 1, '2019-07-16 07:35:59', '2019-07-16 07:36:00', '60dc5241-6fb5-4af6-aa3b-b2f82487227f', 'Shared'),
(27, 140, 1, '2019-07-16 07:35:59', '2019-07-16 07:36:00', '14d8319a-cb7f-4de2-b19f-48d8d8bddc61', 'Shared'),
(28, 141, 1, '2019-07-16 07:35:59', '2019-07-16 07:36:00', 'b244cf46-dcf3-48f8-8fff-003cd0113d75', 'Shared'),
(29, 142, 1, '2019-07-16 07:35:59', '2019-07-16 07:36:00', 'e1f382f3-080b-4d28-9feb-1f0d4979895c', 'Shared'),
(30, 143, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '66bf1bf0-c0d1-4e42-82f9-abb53934a069', 'Shared'),
(31, 147, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'b0153270-8a29-48b5-a4f0-557ecb2c788e', NULL),
(32, 148, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '2fc8423f-6325-4b79-ae66-1f2c02fac375', NULL),
(33, 149, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '32c8ed16-094b-4c58-aeea-0e64ebbd768a', 'Limited3'),
(34, 150, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'f9264e69-dcb0-49d5-9e66-4b580533c475', NULL),
(35, 151, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '4129f366-05da-4274-9318-3349eb83e791', 'Limited5'),
(36, 155, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '8e3e20cd-f25f-4ff4-b22b-be9a0f486d94', NULL),
(37, 156, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '00c14519-677f-4f3c-8fa6-86d5fc3a4ed3', NULL),
(38, 157, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '6ae8f4e2-f299-427e-82bc-b2f64258c31d', 'Limited3'),
(39, 158, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'dd0dd47c-9c01-43eb-9f33-ff7b3e7a9eeb', NULL),
(40, 159, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '1edd4656-f82f-462e-b14f-24beb2ffc9e0', 'Limited5'),
(41, 171, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'e87863fb-b5aa-4011-aac7-c1e419318030', NULL),
(42, 172, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'ac44f6d8-c308-44e2-8720-119710afaebf', NULL),
(43, 173, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '2e49a0db-30c5-4310-8b4f-b082e8c69b24', NULL),
(44, 174, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'd55c370c-bbbe-464f-8077-b611581624ce', 'Text test'),
(45, 175, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '72426ec2-451b-45a7-bd95-1ae2b590cd1b', 'Text test'),
(46, 179, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7ffefaf4-242b-417a-9d7b-0702260582a8', NULL),
(47, 180, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'ff9a3aea-9040-4f2d-99ea-33ac39f917ff', NULL),
(48, 181, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'ba504037-d53b-4816-9594-0a1c1c3f3356', NULL),
(49, 182, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'f104b3b6-3675-4f23-a01b-212fe8ff86a7', 'Text test'),
(50, 183, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '020e369f-89f8-46dc-8cf8-20bea0569511', 'Text test'),
(51, 187, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:02', '62c58f8c-9493-4f7b-99da-4fbf2b8c1bb1', NULL),
(52, 188, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:02', '8af8006c-f3a9-4d1b-8a0b-ac8d5dac012a', NULL),
(53, 189, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:02', 'cc176936-8e69-4d8c-8613-47dd4e80bcd9', NULL),
(54, 190, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:02', '45d5d770-9afb-451d-b096-cf019fb99b69', 'Text test'),
(55, 191, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '23161fd7-17b2-46a3-9d24-788cc749d926', 'Text test'),
(56, 195, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '66d9fc2b-238a-42b7-9b90-9a91b1dd5367', NULL),
(57, 196, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'e2956ae1-0986-4b54-812a-8e8c3c7f70cd', NULL),
(58, 197, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '8960dbbf-1bf8-4d54-aafc-c66cdbf808bf', 'Limited3'),
(59, 198, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'd6c023c4-ce53-411e-8572-2e658c35b3a5', NULL),
(60, 199, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '34ff53bf-7c72-4245-92a7-5fc8a2ebd9c4', 'Limited5'),
(61, 203, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '7cfb7308-e585-4684-a77c-2b76bd18296e', NULL),
(62, 204, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '83519d29-af26-41c1-9416-4a459b3e8a40', NULL),
(63, 205, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '296f11a8-0d09-4844-8427-8ada2d7df553', 'Limited3'),
(64, 206, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'de7c7b5e-2d58-441c-af03-6c6044d891ec', NULL),
(65, 207, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'd80e15ba-a1ce-455e-874a-21a72a31ea34', 'Limited5'),
(66, 211, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'b93e8319-c88d-4c29-943f-c1b4da7beada', NULL),
(67, 212, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '1b5d8c47-18a7-4659-b8fc-d60ea92fe409', NULL),
(68, 213, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '65dfd1bc-3213-41ca-838e-ba6f458489c0', 'Limited3'),
(69, 214, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'e356cdd6-24a3-4814-b214-3b46c9d598f7', NULL),
(70, 215, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '0ca4baed-ab32-4052-b20d-f2241d5feb12', 'Limited5'),
(71, 219, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '07eea521-45c4-4565-9b6f-6b0e2c4115fa', NULL),
(72, 220, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '5182fbc9-4d42-49a4-ac2f-1ce6b6a3ebb1', NULL),
(73, 221, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '1d9099af-1f37-44f5-85a4-f4ac3291cf2c', NULL),
(74, 222, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '711ed4ca-bdb1-43cd-b226-5a0e659cc956', 'Text test'),
(75, 223, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '2ce6d096-1dcd-4e35-9be7-e553d3b56677', 'Text test'),
(76, 227, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'aa6d185b-1a62-4b89-b758-aa6f37546682', 'Limited1'),
(77, 228, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '622a128a-df2a-4a4a-8c72-e460c855fcd8', 'Limited2'),
(78, 229, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '83cd0f2f-90bc-476e-8463-ea0b476f30d5', 'Limited3'),
(79, 230, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '83b8fc17-e503-4cb8-a8d9-4fb4163010ad', 'Limited4'),
(80, 231, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '569c4edb-b9a3-46cc-8d08-b542dc9197ed', 'Limited5'),
(81, 235, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '5cf7bd74-1715-4b83-8229-041fb9c90891', 'Limited1'),
(82, 236, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '7604aed6-5936-453e-ab55-bf2b775ed6a4', 'Limited2'),
(83, 237, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '87fb882c-e594-4d50-9c7a-360a3d3cecae', 'Limited3'),
(84, 238, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '8b8c8d9f-3ce1-479d-8578-2243fe979624', 'Limited4'),
(85, 239, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '12aead58-d0b2-461c-b8c5-425ac934b590', 'Limited5'),
(86, 243, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '612552fe-a2c2-4284-ab56-2bf7f2433c55', 'Shared'),
(87, 244, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '4d6a5f60-02bf-4e22-b906-dbeff7f0ad28', 'Shared'),
(88, 245, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:04', 'dac21751-61f1-4243-a00f-70b6be8d21db', 'Shared'),
(89, 246, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:04', '5a6eee10-55e2-48f6-8058-f78abaebabec', 'Shared'),
(90, 247, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:04', '6d4f12e5-e564-443f-8ce4-db1fa777e2f0', 'Shared'),
(91, 251, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'b1b890d1-26ba-460d-8665-db9adc489925', 'text drupal'),
(92, 252, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '48b93f0f-3ede-47d1-9868-c62ea3dfc4fd', 'text drupal'),
(93, 253, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '199140c1-54ad-4118-aef2-4d66fffb5dfd', 'text drupal'),
(94, 254, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '1788b50d-fea1-4b3a-898f-96ac319e9beb', 'text drupal'),
(95, 255, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'a70fb3c7-4ded-40da-9b9a-a6eb71486b15', 'text drupal'),
(96, 259, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '2acf3ae4-fa00-4db8-87d5-428a585c03a5', 'Text test'),
(97, 260, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '6bf56ecb-8221-4e8e-85df-0e19a71055c9', 'Text test'),
(98, 261, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '5e616449-6df5-4b72-aff8-89f7033aa0af', 'Text test'),
(99, 262, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '38c5a1e8-f68e-4e74-8426-32158fab37a2', 'Text test'),
(100, 263, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '081d6005-a16e-4644-8b1b-4e34e53cab68', 'Text test'),
(101, 267, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'e955c258-327b-4686-ba61-3d971888ebb6', 'Limited1'),
(102, 268, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '9e89410a-1ba8-48e6-9a1e-d7335ff6ff81', 'Limited2'),
(103, 269, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '3b12636d-e6a6-463f-baba-379e0fc7a4ad', 'Limited3'),
(104, 270, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '1c964552-4277-4747-86a2-ce8c441ec9f6', 'Limited4'),
(105, 271, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '8eb66ef6-5380-4c43-bbe7-b227192e8c84', 'Limited5'),
(106, 348, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd71b8aa4-031d-4128-9fc3-ca455471cb3a', NULL),
(107, 349, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '0fa9d508-1473-4dc4-817c-eac6742fe9ae', NULL),
(108, 350, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'c38a4d93-63fb-4441-a5a3-81779abd2cd2', NULL),
(109, 351, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:08', '92aa391f-108f-474d-a00c-01cb9b3ff371', 'Text'),
(110, 352, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:08', 'e8943cae-3293-457a-9c2d-2df20ccf86c7', NULL),
(111, 356, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'cac22b34-e7cd-4ac1-ac6a-135f87ed2053', NULL),
(112, 357, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'a47f4e89-562b-489b-8db8-9743ab325adc', NULL),
(113, 358, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'aeb8de84-1cc2-4607-8872-708f4171cbf7', NULL),
(114, 359, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '2ad1cb8d-d6a8-4c97-a05c-db61b1022104', 'Text'),
(115, 360, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'e52d0fbe-a59c-43d6-9085-e7f5ae842082', NULL),
(116, 386, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '321ea01f-b9d9-4232-b3d3-1e41b059b393', NULL),
(117, 387, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'ac50e283-7807-493c-96b1-49e69ee25580', NULL),
(118, 388, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '61bb4fee-370e-4b08-9d28-24d6ec8ff506', NULL),
(119, 389, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '55893af8-7e4a-436f-bf87-463b848177f5', 'Limited'),
(120, 390, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '9c3ce71f-da01-4ac8-b761-d31495437cbc', NULL),
(121, 394, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '0cede1c8-7db1-4bdf-87aa-4fe503408982', NULL),
(122, 395, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '55ab2a6a-5c2d-4049-a311-9b5c8bfce057', NULL),
(123, 396, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '15ea381d-6c2e-4ca8-9316-df54bdcb1c15', NULL),
(124, 397, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '319bddbe-3720-4542-890b-80f0d225a16d', 'Shared'),
(125, 398, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'f3b3d53f-bb5e-4f06-837a-c4aab475e15b', NULL),
(126, 402, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '835f6ecb-247f-48ea-bb8f-08c66bd2f0e7', NULL),
(127, 403, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '46994325-c45d-4e01-a954-5e788abcf712', NULL),
(128, 404, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '3fc86680-cdaf-43d3-8b67-947abae8873a', NULL),
(129, 405, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'e2011a16-3ebb-4758-be58-5ae1a8f6517e', 'Limited'),
(130, 406, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '2dd3a265-caad-4060-adba-25c97bbba377', NULL),
(131, 604, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:14', '5ad8bc6a-2d78-49fd-bbb4-3ce328bc6064', NULL),
(132, 605, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:14', '50c71efe-1179-424c-a013-8c33655de374', NULL),
(133, 606, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:14', '35f3b5ea-874e-4f0a-95d2-86d8760983cb', 'Limited3'),
(134, 607, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:14', '2979b807-1640-4cc9-afb0-0212f78356d4', NULL),
(135, 608, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:14', '976b00f3-d535-42bf-999f-c9e2669da8f1', 'Limited5'),
(136, 612, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '94268ebb-84d0-4e12-8672-983142a96d1a', NULL),
(137, 613, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '4221c5c4-8bb1-4a6e-8e02-d805bd079f45', NULL),
(138, 614, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '8935456d-db55-4f3e-949d-ebf6aa19295d', 'Limited3'),
(139, 615, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'f4393c88-b9c2-4aca-ac16-529f35280db0', NULL),
(140, 616, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '987200a6-ce10-4605-aa15-3f74c2208f41', 'Limited5'),
(141, 620, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'b79e9d75-c712-404a-b961-c7b4c28b8f96', 'Shared'),
(142, 621, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'e62caab5-e4f4-4cb3-902c-42fea6842b27', 'Shared'),
(143, 622, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '8caa91c7-0d63-4cef-8dad-64deb198aef6', 'Shared'),
(144, 623, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'fc8fe1c6-b8ea-4c96-bb33-0ebaba5b7839', 'Shared'),
(145, 624, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '93fe2fd5-6a70-4562-a627-e704077b91fa', 'Shared'),
(146, 628, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:15', 'b981740b-a4e2-45bd-8a9b-a025d9074ebb', NULL),
(147, 629, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:15', '9f3499e9-943c-4fec-a718-13576519b58a', NULL),
(148, 630, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'f5902a56-ba13-439e-8c5d-bcf1caf033bf', 'Limited3'),
(149, 631, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'a26f1b10-27b9-4b07-9847-eaef54fea26d', NULL),
(150, 632, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '0d7867c3-adaa-4a35-9be4-bc21fb4f2d0e', 'Limited5'),
(151, 636, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '28c0191f-87ab-47c9-a124-53995e607163', NULL),
(152, 637, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '046412f8-1f22-4207-9cdf-e6d5b58484b0', NULL),
(153, 638, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '64e40d4e-1d29-4f7b-b211-4a0d94ec2317', 'Limited3'),
(154, 639, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'e59bc666-ad17-4f97-a164-e4618a2229d1', NULL),
(155, 640, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '4410455a-6339-43f4-acaa-913aaf801fde', 'Limited5'),
(161, 656, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'c1c662c4-68c3-46fa-a173-10332593cd95', NULL),
(162, 657, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '63850c43-b604-4fd5-8b23-3c011bc39dbf', NULL),
(163, 658, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '3f20e404-858b-4d20-848b-85ed1fa16a74', 'Limited3'),
(164, 659, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '1e7d6096-22fc-40d9-9af6-b257efaad097', NULL),
(165, 660, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '428cd819-de08-40d4-bf9f-864a5bb56df6', 'Limited5'),
(166, 664, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '3c17d80c-bc70-4389-92e2-ade696efd514', NULL),
(167, 665, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'b0e701f7-bfeb-47c7-a45d-ba11a6a5e3ac', NULL),
(168, 666, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '29ca64c3-919c-4bbe-8d49-6dba6ccce1fe', 'Limited3'),
(169, 667, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '063e15ea-7fa7-44ec-b553-61e87975194c', NULL),
(170, 668, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '2329463b-2e7b-45af-b2c2-5be94207f6a7', 'Limited5'),
(176, 679, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '60a83c43-c368-4a5e-a330-4f45dd0d0b1d', 'Shared'),
(177, 680, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '9d397b37-27f0-4b10-9280-83ed4e9189c9', 'Shared'),
(178, 681, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '20cab757-4cb7-440e-8509-f2347914b2db', 'Shared'),
(179, 682, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '2374597c-12ce-416e-9ab2-384ab0759352', 'Shared'),
(180, 683, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '8034bac9-0cc1-4d61-9bec-a99e4c35a1ca', 'Shared'),
(181, 687, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'da449ec6-e860-446e-a5b8-93a942aabc15', 'Shared'),
(182, 688, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '8b917386-773f-4bb2-bb4f-2ffedf118c5b', 'Shared'),
(183, 689, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '5f0ef7da-8efc-49f6-ae67-6649048bb5de', 'Shared'),
(184, 690, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '0ff5dc03-f8aa-4495-acb0-07008f380444', 'Shared'),
(185, 691, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '049b1b81-cf03-46c8-b325-35e9473244b2', 'Shared'),
(191, 702, 1, '2019-07-16 10:14:45', '2019-07-23 09:05:39', 'b93baf0b-b6d4-4a7a-a544-6bf4a0b92f44', 'text drupal'),
(192, 703, 1, '2019-07-16 10:14:45', '2019-07-23 09:05:39', '80f01425-928e-4183-a33f-e5160bff9562', 'text drupal'),
(193, 704, 1, '2019-07-16 10:14:45', '2019-07-23 09:05:39', '93a9964b-097f-4b2c-9c53-22ca24cac5c6', 'text drupal'),
(194, 705, 1, '2019-07-16 10:14:45', '2019-07-23 09:05:39', 'e0bc3ce1-4ca1-47c2-bf03-c76d160158f0', 'text drupal'),
(195, 706, 1, '2019-07-16 10:14:45', '2019-07-23 09:05:39', '35769de9-4a8c-41a4-86ee-e896a85d39e6', 'text drupal'),
(196, 710, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'e7e0854c-6486-409c-ba7f-29c3d82bbb10', 'text drupal'),
(197, 711, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'f152da3e-13b9-4bd5-b957-b25e702c9c2f', 'text drupal'),
(198, 712, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '4e60b769-6853-4a61-9302-da605ddb34b2', 'text drupal'),
(199, 713, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '6557effb-a344-418d-98b6-3658798659d9', 'text drupal'),
(200, 714, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'b9d1cccb-815e-4db1-924f-eac13f18bd6f', 'text drupal'),
(206, 725, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'cf48e4c6-1d52-459a-bae9-91ee58ea7137', NULL),
(207, 726, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'fcdd1327-89ff-44f5-9984-afd7a9972681', NULL),
(208, 727, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '6ddb88d1-7450-47ab-9e0d-40b0f1dfa4fc', NULL),
(209, 728, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '3c3b35ad-fec9-4f99-9999-91024ee363fd', 'Text test'),
(210, 729, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '994516d5-0022-40f9-aea5-c1c2ffbf066e', 'Text test'),
(211, 733, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'bd1f317e-9883-4b92-a120-19d61c745d00', NULL),
(212, 734, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '5a10311c-a9ec-480a-85da-78bb76934140', NULL),
(213, 735, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '6baccc81-088d-4982-9df7-de1147620bdf', NULL),
(214, 736, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '17777881-9eec-48db-a3e1-8fcf7e0f4103', 'Text test'),
(215, 737, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'e3899953-7546-4e08-9f20-2be0b0d5ba36', 'Text test'),
(216, 770, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '19e3f48a-be2d-484d-b11c-b78fbb5869da', 'text drupal'),
(217, 771, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '1fb0c998-cec2-4b9b-b214-b9c88ff863df', 'text drupal'),
(218, 772, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '3aeb752e-fc5e-4f3e-a1c6-a42d9b5dfabf', 'text drupal'),
(219, 773, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', 'a9299171-dd91-45fb-9b2c-c524fb08aa06', 'text drupal'),
(220, 774, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '2c489dd2-c377-473b-b1ca-2f53e113cd82', 'text drupal'),
(226, 793, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '4522ee6d-6612-40c2-b109-4dbc9bc5b6e8', NULL),
(227, 794, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '81b08b1b-f69e-472c-9560-f3cf563872d5', NULL),
(228, 795, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '2d07f7d2-1957-488f-adc2-43452b451991', 'Limited3'),
(229, 796, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '4b62da61-9c10-488a-a115-2ec83da03c9e', NULL),
(230, 797, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'cefb8e41-4227-44d2-a3aa-e351aadbd669', 'Limited5'),
(231, 801, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '165eac11-cfc8-4eed-ba85-2eb419ddf946', NULL),
(232, 802, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'e34e50dd-5e96-4cf6-93b3-db7e479574fc', NULL),
(233, 803, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'd93888e4-3c01-42d6-bb94-fe785e7651bf', 'Limited3'),
(234, 804, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'b433ea6f-ea39-4725-aabe-7ac0fc2f33b6', NULL),
(235, 805, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '38006f5e-3b61-4b69-b4a1-3b520eca56da', 'Limited5'),
(236, 809, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:54', '5e91d15e-9654-4fb1-9be4-2d0b0f0013d0', NULL),
(237, 810, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:54', '35712b0e-aa25-45c5-ab96-967274c6b68f', NULL),
(238, 811, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:54', '91c935ca-1937-46e3-9f5c-d438ec09a1d8', 'Limited3'),
(239, 812, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:54', '4cfccb97-5372-40bd-88ab-11f9d4792e01', NULL),
(240, 813, 1, '2019-07-29 13:35:50', '2019-07-29 13:35:54', '916330ae-8266-4af0-819a-9cda5c2c0e05', 'Limited5'),
(246, 824, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'b55b0a39-7851-4641-8373-95e7eabad235', NULL),
(247, 825, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'f674c1ef-6a7d-49cd-acb1-af4c2ba60d12', NULL),
(248, 826, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '281ee127-ad85-4548-84f2-75128f3cce68', 'Limited3'),
(249, 827, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '9a990b95-9692-4eb5-bb11-688aa6f3d950', NULL),
(250, 828, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'e740f60a-ae57-478b-ae67-23905ff4e2c0', 'Limited5'),
(251, 832, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '159f93ea-3484-4126-84a4-c8c6364d203f', NULL),
(252, 833, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'c2681e58-1bad-4f1b-86db-9b31539ecbf2', NULL),
(253, 834, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '8aa7c606-f2ca-40ae-b017-0bc51477f7b6', 'Limited3'),
(254, 835, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'b96c7671-8887-40a9-95f3-d8cd1d83c2db', NULL),
(255, 836, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'f9f6e3f0-46df-4826-9084-ada78e05a9f6', 'Limited5'),
(256, 840, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '03086e73-dec1-4420-baee-fcc504261ead', NULL),
(257, 841, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '216121da-086e-4db3-8341-5778e1095cee', NULL),
(258, 842, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'a07800f5-9024-4535-8129-c28ac98c28d0', 'Limited3'),
(259, 843, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'f541ac39-8543-44bc-98bd-59d0614a4054', NULL),
(260, 844, 1, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '12c6302e-425c-44c3-b75c-5ef334563761', 'Limited5'),
(266, 856, 1, '2019-07-29 13:39:28', '2019-07-29 13:39:36', 'd70641f8-90c6-46d9-8826-302f4f6134b7', NULL),
(267, 857, 1, '2019-07-29 13:39:29', '2019-07-29 13:39:36', 'dbb2b709-e428-4542-8d0c-1052c06a67fb', NULL),
(268, 858, 1, '2019-07-29 13:39:29', '2019-07-29 13:39:36', 'd1756e3e-1447-453a-a872-016f6d9d460d', 'Limited3'),
(269, 859, 1, '2019-07-29 13:39:29', '2019-07-29 13:39:36', '8e8b3d57-a33a-4fcb-8457-772de8a650c7', NULL),
(270, 860, 1, '2019-07-29 13:39:29', '2019-07-29 13:39:36', 'be3a80a9-ca6b-419e-9c2e-ddcea0d5f5c1', 'Limited5'),
(276, 871, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '704d8416-bd2d-4037-8172-a8329b400456', NULL),
(277, 872, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '71862788-a616-4390-bef2-b37d933e9679', NULL),
(278, 873, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'dd736dde-9d5e-4164-b3a0-24d65a86bcba', 'Limited3'),
(279, 874, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '1ad89779-abb7-4e14-897e-ef31a017b885', NULL),
(280, 875, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '29be2c94-9a00-4b4c-82f9-40db99b791ee', 'Limited5'),
(281, 879, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'e18ac0c9-e373-49bf-93c7-4e81f10b5e8e', NULL),
(282, 880, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '7cc2aa4b-df67-482c-b834-4b65960c81d5', NULL),
(283, 881, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '204ab32f-164e-4743-afbd-ddd4e7ae8a32', 'Limited3'),
(284, 882, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'fdc753c5-f2d2-4b12-a317-871c4dac6463', NULL),
(285, 883, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'de12613c-7904-4cba-9b2b-7c87ba863510', 'Limited5');

-- --------------------------------------------------------

--
-- Структура таблицы `stc_infowithsharelink`
--

CREATE TABLE `stc_infowithsharelink` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_titleLink` text,
  `field_quoteLink` text,
  `field_descriptionLink` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stc_infowithsharelink`
--

INSERT INTO `stc_infowithsharelink` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_titleLink`, `field_quoteLink`, `field_descriptionLink`) VALUES
(1, 744, 1, '2019-07-17 12:20:16', '2019-07-17 12:20:16', '80ca85f1-7535-4ffe-b0ae-9d835c099dcf', NULL, NULL, NULL),
(3, 747, 1, '2019-07-17 12:20:22', '2019-07-17 12:20:22', '0727c972-a1cd-4da7-a339-ee5dabaac858', NULL, NULL, NULL),
(4, 749, 1, '2019-07-17 12:20:22', '2019-07-17 12:20:22', 'ce704743-e569-495c-8c28-62f8812e08ea', NULL, NULL, NULL),
(5, 751, 1, '2019-07-17 12:20:25', '2019-07-17 12:20:25', '8db28ad4-9282-4d25-9345-5f6ec29129e0', NULL, NULL, NULL),
(6, 754, 1, '2019-07-17 12:21:22', '2019-07-17 12:21:22', 'a5858d19-73fd-478e-a3a8-d1ffc6e6000e', NULL, NULL, NULL),
(7, 755, 1, '2019-07-17 12:21:39', '2019-07-17 12:21:39', 'f369d2d1-51ba-4e9d-a3ce-759a3480d3cf', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', NULL, NULL),
(8, 756, 1, '2019-07-17 12:21:41', '2019-07-17 12:21:41', '27b0bb33-7dd3-4403-b4fb-a219fe1309f3', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', NULL, 'What is the best platform to create a website'),
(9, 757, 1, '2019-07-17 12:21:48', '2019-07-17 12:21:48', '6eefe1f0-7bde-4c99-a025-01b82ddbcb3b', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', 'What is the best platform to create a website'),
(11, 759, 1, '2019-07-17 12:22:20', '2019-07-17 12:22:20', '0e72ecf6-0c13-41f8-82ad-d345e5a03e10', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', 'What is the best platform to create a website'),
(12, 761, 1, '2019-07-17 12:22:20', '2019-07-17 12:22:20', 'ec6f6c43-9a2e-48b5-8baa-19b56fdfed20', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', 'This handy tool will help you to make a decision on what could be a right solution for your future website goals.', 'What is the best platform to create a website'),
(14, 764, 1, '2019-07-17 13:10:28', '2019-07-17 13:10:28', '1d82dd44-1fd9-4d32-932e-996a226c90cf', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', 'What is the best platform to create a website'),
(15, 766, 1, '2019-07-17 13:10:29', '2019-07-17 13:10:29', '2ffc590e-8970-48ad-b968-d32b0a503c01', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', 'Hello! I took a quick quiz to find out what platform is the best to build a website which meets my business needs. Take a look at the recommendation I’ve received here.', 'What is the best platform to create a website');

-- --------------------------------------------------------

--
-- Структура таблицы `stc_platform`
--

CREATE TABLE `stc_platform` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_platformDescription` text,
  `field_linkToExample` varchar(255) DEFAULT NULL,
  `field_platformsName` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stc_platform`
--

INSERT INTO `stc_platform` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_platformDescription`, `field_linkToExample`, `field_platformsName`) VALUES
(1, 43, 1, '2019-06-19 11:54:31', '2019-07-15 13:03:24', '3817dfce-4fdf-4700-96bd-e04c48565674', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(2, 51, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '97a5f792-4d45-4519-aa24-73a6c26e71ec', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://craftcms.com/', NULL),
(3, 69, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:21', 'bb90fa2e-1025-405b-a3e5-da6d1d9bd4c8', '<p>Drupal is the best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://www.drupal.org/', NULL),
(4, 79, 1, '2019-06-25 09:45:31', '2019-07-04 14:25:46', '57c43d85-892b-4709-bbd5-3dbd248c6277', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', NULL),
(5, 103, 1, '2019-06-26 13:02:37', '2019-06-26 13:31:03', '3f6ac179-6bde-4a5c-9e50-65adcab3ed99', '<p>Our platform test description</p>', '', NULL),
(6, 129, 1, '2019-07-16 07:35:58', '2019-07-16 07:35:59', 'ccd30123-cffe-46ba-be3f-f407ca18ced1', '<p>Drupal is the best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://www.drupal.org/', NULL),
(7, 137, 1, '2019-07-16 07:35:59', '2019-07-16 07:36:00', '9a228153-eecf-4359-8581-8aa779f4e621', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://craftcms.com/', NULL),
(8, 145, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '358cd58c-fa06-4d83-bf5b-87cc645d7b0c', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(9, 153, 1, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '71da233b-a4a5-4b74-8a64-72c43d1144e6', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(10, 169, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7009c346-d600-4a17-b679-78289c414ad5', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', NULL),
(11, 177, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '9114500d-1f1e-4c73-a9fc-fc0ea25464bc', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', NULL),
(12, 185, 1, '2019-07-16 07:36:01', '2019-07-16 07:36:02', '21fe94ca-ef25-4a68-afd1-3c42caa48c63', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', NULL),
(13, 193, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '4aef81b0-a306-42a5-bc1e-bb4ae898af6b', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(14, 201, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '44db5523-9192-4271-9157-c131808bce13', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(15, 209, 1, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '859b92ba-7e58-4574-b2fe-ad2493ffdb78', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(16, 217, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '48efb6d2-f7ad-4232-bd5a-46a676c6f3ca', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', NULL),
(17, 225, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '56088a85-b3e6-45c1-a33a-be7648b81b15', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(18, 233, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '6c15d397-22e1-4ce9-b6fe-25805576c44e', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(19, 241, 1, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '0906eef2-1058-4de6-b46e-bb6b32b48260', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://craftcms.com/', NULL),
(20, 249, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '7be459fb-657c-452a-995a-6363e4fe678c', '<p>Drupal is the best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://www.drupal.org/', NULL),
(21, 257, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '417cea78-6317-4242-a11c-7e520c3a0184', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', NULL),
(22, 265, 1, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '077d13d9-1954-4910-80fe-f4dad3ed470f', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(23, 346, 1, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '2d5e22c3-c3c1-44fc-b235-50e99d695104', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', NULL),
(24, 354, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '6ac83432-cfc9-4128-8c31-2df84210b7aa', '<p>Drupal is the best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://www.drupal.org/', NULL),
(25, 384, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '7805a88d-9b2f-4e7a-86cf-6a917d329092', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(26, 392, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '52dac16b-2634-46ca-9b5e-eba0232d8717', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://craftcms.com/', NULL),
(27, 400, 1, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '07ce7c69-9696-413e-9f14-1eece72b6a51', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://craftcms.com/', NULL),
(28, 602, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '1b94be28-1a87-4f02-ac02-c8d1122b265d', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(29, 610, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '99d37b35-150c-4175-a3a4-3036c518c373', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(30, 618, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '44e4d410-7c41-46cc-b291-aa3eeca887ae', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://craftcms.com/', NULL),
(31, 626, 1, '2019-07-16 07:36:14', '2019-07-16 07:36:15', 'a584518e-7b21-4901-83ab-10e1a81bc64e', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(32, 634, 1, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '85b005fb-f755-4cbf-82be-6f223719dfee', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', NULL),
(34, 654, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'd9b26ac6-5894-4377-b961-48f3d0f3e90d', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(35, 662, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '32ba52df-e79b-478a-ba1d-10b86e669902', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(37, 677, 1, '2019-07-16 10:14:26', '2019-07-16 10:14:26', '2a19d539-c068-42ae-a044-eed5d2661279', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://craftcms.com/', 'Craft'),
(38, 685, 1, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'a651b1fe-f972-4d23-9a56-0a41030cd6cf', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://craftcms.com/', 'Craft'),
(40, 700, 1, '2019-07-16 10:14:45', '2019-07-23 09:05:39', '1f1da073-0d72-4859-8c02-b3a7c3fab175', '<p>Drupal is the best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://www.drupal.org/', 'Drupal'),
(41, 708, 1, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '9fb8e760-baa6-4df0-a5cc-eda7abcccb7e', '<p>Drupal is the best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://www.drupal.org/', 'Drupal'),
(43, 723, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'f7ecec75-fe76-4017-8387-87fdc205c347', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', 'Laravel'),
(44, 731, 1, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '80f9a76b-6ddb-4ead-af4a-06411016c425', '<p>Laravel - Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://laravel.com/', 'Laravel'),
(45, 768, 1, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '5ddc3e25-b051-4465-a085-7f6f5418067b', '<p>Drupal is the best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://www.drupal.org/', 'Drupal'),
(47, 791, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '20e898b3-ee12-4bd0-93ff-219a013469ff', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(48, 799, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '4cb04c24-199c-4d2a-9aee-a8c827619ae1', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(49, 807, 1, '2019-07-29 13:35:49', '2019-07-29 13:35:53', '8efe2e8d-4f99-4d10-8a74-436a369d374f', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(51, 822, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'b0e52f14-1b74-4562-8e43-7d5326ecfaaa', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(52, 830, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '27ec14ef-6da1-4d94-839f-d070c7955803', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(53, 838, 1, '2019-07-29 13:38:49', '2019-07-29 13:38:50', '62bbd8bd-8453-46ef-9fd3-5d16525b47a6', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(55, 854, 1, '2019-07-29 13:39:28', '2019-07-29 13:39:35', '779eb594-b874-4877-b160-13a8c1846530', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(57, 869, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '678b0026-ebdf-4a33-a27d-796dbd8a106e', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress'),
(58, 877, 1, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '44d9d507-6bb9-4d53-b73c-71a3968604ff', '<p>Best choice for lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis efficitur luctus. Integer at pretium lectus. Integer mollis enim id urna finibus semper.</p>', 'https://wordpress.org/', 'Wordpress');

-- --------------------------------------------------------

--
-- Структура таблицы `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, NULL, 1, 1, 32, 0, '2019-06-14 11:58:16', '2019-07-16 07:36:13', '714418c9-ed5d-4407-8490-ff008eaf68fb'),
(3, 2, 16, 1, 2, 3, 1, '2019-06-14 11:59:26', '2019-06-18 09:54:12', '9cd37ed9-addd-4fed-b2fa-1a69a3d8c432'),
(4, 2, 21, 1, 4, 5, 1, '2019-06-14 14:15:57', '2019-06-18 09:54:12', 'ea685a6b-ee2f-43db-8779-5abc75e759b9'),
(5, 3, NULL, 5, 1, 2, 0, '2019-07-04 07:47:31', '2019-07-04 12:54:27', '9973e4eb-0019-483e-8503-cc9234c26191'),
(8, 2, 282, 1, 6, 7, 1, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '9690964e-6378-491e-98c4-3cc988713f0b'),
(9, 2, 303, 1, 8, 9, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'd0a8a232-d729-4d12-9ddd-34389bb61edb'),
(10, 2, 324, 1, 10, 11, 1, '2019-07-16 07:36:06', '2019-07-16 07:36:07', 'e9026726-cea5-4c20-9779-cd41d3cb7c86'),
(11, 2, 362, 1, 12, 13, 1, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '410a8743-17eb-4f59-90b5-25b144523f81'),
(12, 2, 412, 1, 14, 15, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '9a30394a-3af4-4581-ab11-7c80bfcb705f'),
(13, 2, 433, 1, 16, 17, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'b1d8acdb-ee7b-4240-841c-56a0b0d185e2'),
(14, 2, 454, 1, 18, 19, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:11', '23d20775-58fd-4feb-9258-d3089dc531eb'),
(15, 2, 475, 1, 20, 21, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e932ff5e-3809-42d6-a587-e2706ae9fc38'),
(16, 2, 496, 1, 22, 23, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '40af8c15-064b-4608-a906-7f04cf155568'),
(17, 2, 517, 1, 24, 25, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b7911231-2741-4890-ab4e-0b5a811b168e'),
(18, 2, 538, 1, 26, 27, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'c49693c5-a561-4c6e-9646-22a70346a506'),
(19, 2, 559, 1, 28, 29, 1, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '571b7021-85ab-4cab-810a-94e5b6a49ebd'),
(20, 2, 580, 1, 30, 31, 1, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'f8263a71-c776-403e-b7c9-91fa5d96bf23');

-- --------------------------------------------------------

--
-- Структура таблицы `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, '2019-06-13 11:45:06', '2019-06-13 11:45:06', NULL, 'b0a8319b-4e1b-4f34-a129-b1fb96510465'),
(2, NULL, '2019-06-14 11:57:02', '2019-06-14 14:51:34', NULL, 'fb228271-fed3-4ff4-b15f-aced9a030dde'),
(3, NULL, '2019-07-04 07:44:37', '2019-07-04 12:54:27', '2019-07-04 12:54:27', 'ab7f09d8-828e-4762-8cfd-61aa85f47850');

-- --------------------------------------------------------

--
-- Структура таблицы `supertableblocks`
--

CREATE TABLE `supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `supertableblocks`
--

INSERT INTO `supertableblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(26, 17, 30, 1, 2, NULL, '2019-06-18 13:12:03', '2019-06-25 09:50:37', 'c319ee76-f175-493f-be9e-c831e1e9bf2c'),
(27, 17, 30, 1, 1, NULL, '2019-06-18 13:12:03', '2019-06-25 09:50:37', '0c48b08b-bdda-43ba-83e1-f39f8417093f'),
(28, 18, 30, 1, 1, NULL, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '5c1b14de-e022-4d4d-8f7d-809a07f3479a'),
(29, 18, 30, 1, 2, NULL, '2019-06-18 13:24:24', '2019-06-25 09:50:37', 'ac66c144-974e-45a6-920a-2c2c5e594a0c'),
(30, 19, 30, 1, 1, NULL, '2019-06-18 13:24:24', '2019-06-25 09:50:37', 'f10ccce3-b287-4fe5-87db-1d1b77adb9eb'),
(31, 19, 30, 1, 2, NULL, '2019-06-18 13:24:24', '2019-06-25 09:50:37', 'aadd39d5-c350-459c-bb44-495d56f58ff5'),
(32, 20, 30, 1, 1, NULL, '2019-06-18 13:24:24', '2019-06-25 09:50:37', '3b0c0f4f-b27a-4699-b217-f45322563b8e'),
(33, 20, 30, 1, 2, NULL, '2019-06-18 13:24:24', '2019-06-25 09:50:37', 'e48a8f8a-ebee-468a-8cf6-f880712ee2d8'),
(43, 7, 17, 2, 1, 0, '2019-06-19 11:54:31', '2019-07-15 13:03:25', 'b5c5d65d-3649-4587-8a85-08806e6b4e04'),
(45, 44, 44, 4, 1, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', 'd9ba955b-4c89-4153-9267-77e744b5ccf5'),
(46, 44, 44, 4, 2, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '1038486c-8770-45f4-b34e-bf7f9c94493b'),
(47, 44, 44, 4, 3, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', '80954b65-164e-44fd-b81b-b787c4911a0b'),
(48, 44, 44, 4, 4, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', 'debde23e-cbf8-42db-a8ec-ae1e15417eb4'),
(49, 44, 44, 4, 5, 1, '2019-06-19 11:54:32', '2019-07-15 13:03:25', 'cfffa05c-5e6f-44f3-b68d-243391070e8f'),
(51, 11, 17, 2, 1, 0, '2019-06-19 11:57:18', '2019-07-15 13:10:54', 'c44b7418-4d85-4d89-b016-44745063f767'),
(53, 52, 44, 4, 1, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:54', '81a7c3dd-3add-4673-b4f7-d95c5d6e26bf'),
(54, 52, 44, 4, 2, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '312da2ed-30fd-42be-a0db-a4b34ce36c91'),
(55, 52, 44, 4, 3, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', 'f12dd2e0-eebe-4741-a610-4f53213745fb'),
(56, 52, 44, 4, 4, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '02969bca-1402-4e1b-8f81-bc55a2d17cb4'),
(57, 52, 44, 4, 5, 1, '2019-06-19 11:57:18', '2019-07-15 13:10:55', '21f652d1-1fd4-4ac1-982f-9fba56db7a8d'),
(58, 22, 30, 1, 1, NULL, '2019-06-19 12:07:17', '2019-06-25 11:21:28', '07f6fcdb-4b72-4b5b-b22a-930bb36f9b5b'),
(59, 22, 30, 1, 2, NULL, '2019-06-19 12:07:18', '2019-06-25 11:21:28', '8aca2546-b77b-48b3-84af-533466db8cef'),
(60, 23, 30, 1, 1, NULL, '2019-06-19 12:07:18', '2019-06-25 11:21:28', 'd8d2ffcf-c53e-480c-b6d3-ded9ca854c91'),
(61, 23, 30, 1, 2, NULL, '2019-06-19 12:07:18', '2019-06-25 11:21:28', 'f2362205-6d85-49db-9004-9a4d58e56c4e'),
(62, 24, 30, 1, 1, NULL, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '714b8584-e5ee-4533-a4b8-fd2149d466bc'),
(63, 24, 30, 1, 2, NULL, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '2cb2f883-93b4-48b4-9520-65b778bff092'),
(64, 25, 30, 1, 1, NULL, '2019-06-19 12:07:18', '2019-06-25 11:21:29', '14c9095a-3c00-4d14-988c-b3505278537a'),
(65, 25, 30, 1, 2, NULL, '2019-06-19 12:07:18', '2019-06-25 11:21:29', 'ef2436ac-8d33-4eb2-9190-23e625fa5fb6'),
(69, 68, 17, 2, 1, 0, '2019-06-25 09:19:10', '2019-07-15 13:11:21', '9bf90c36-779b-4b79-b9a6-a7fe2c2644e5'),
(71, 70, 44, 4, 1, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', 'b47727f2-0a1a-4610-995b-4e1b1215983a'),
(72, 70, 44, 4, 2, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '73f6cb0b-47e7-4dcc-8fb3-2c682e60fab6'),
(73, 70, 44, 4, 3, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '2321fffa-1f6a-44e1-bfa9-f89a1f95ce63'),
(74, 70, 44, 4, 4, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', 'd3f5d34a-c942-4252-8f1c-3135bc4144b6'),
(75, 70, 44, 4, 5, 1, '2019-06-25 09:19:10', '2019-07-15 13:11:22', '755be512-5748-47a5-b706-0fe00c9aaeaf'),
(79, 78, 17, 2, 1, 0, '2019-06-25 09:45:32', '2019-07-04 14:25:46', '027e44bd-8141-4036-93e2-51e4a01833ce'),
(81, 80, 44, 4, 1, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', 'b0d500de-53f8-494a-a3e6-58e3c645f73a'),
(82, 80, 44, 4, 2, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', 'ade99ace-c957-4717-843b-a83ec588ce9a'),
(83, 80, 44, 4, 3, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '34ac240c-0cb7-414e-8ecb-b305882f2b84'),
(84, 80, 44, 4, 4, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', '5a2d944c-6a12-4d5a-b2de-6bceb7252530'),
(85, 80, 44, 4, 5, 1, '2019-06-25 09:45:32', '2019-07-04 14:25:47', 'a92b26ac-ef20-4919-8869-f6300a3be3fc'),
(86, 17, 30, 1, 3, NULL, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '503c08cd-9e2f-4be9-89d2-4624f6ce88df'),
(87, 17, 30, 1, 4, NULL, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '67d9800a-3a1e-4ebd-8203-f251fa10a8da'),
(88, 18, 30, 1, 3, NULL, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '7eebab03-4cbf-4b2c-bdd4-27203b6fbaf3'),
(89, 18, 30, 1, 4, NULL, '2019-06-25 09:50:37', '2019-06-25 09:50:37', 'ababd983-4f5a-4c2f-9128-2bf2c9c6a166'),
(90, 19, 30, 1, 3, NULL, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '0d1365ac-4c93-402d-b112-2760dc702369'),
(91, 19, 30, 1, 4, NULL, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '9d1a2d39-c08d-43e9-9169-a9d632974d36'),
(92, 20, 30, 1, 3, NULL, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '93f42414-8494-4b41-b4a5-5985df201551'),
(93, 20, 30, 1, 4, NULL, '2019-06-25 09:50:37', '2019-06-25 09:50:37', '2f23856c-d503-4cb0-b53d-cdc55a5726eb'),
(94, 22, 30, 1, 3, NULL, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '1c8485ac-ee0b-4b94-96fc-8f4e11e51f5b'),
(95, 22, 30, 1, 4, NULL, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '2d6e717c-8ad4-4589-80c6-93d3b97da618'),
(96, 23, 30, 1, 3, NULL, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '7fe6dec1-a9f9-4ae3-8e8d-ceba82920b42'),
(97, 23, 30, 1, 4, NULL, '2019-06-25 09:55:02', '2019-06-25 11:21:28', '2cf2259a-8edc-48f6-bd46-27176038c468'),
(98, 24, 30, 1, 3, NULL, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '580fc08b-421d-4a0e-8b95-fbcc7787777d'),
(99, 24, 30, 1, 4, NULL, '2019-06-25 09:55:02', '2019-06-25 11:21:29', 'f7e04a5b-affc-495b-b105-7f188da30b59'),
(100, 25, 30, 1, 3, NULL, '2019-06-25 09:55:02', '2019-06-25 11:21:29', '5bba27b9-2008-4150-9c9c-75f8063d7064'),
(101, 25, 30, 1, 4, NULL, '2019-06-25 09:55:02', '2019-06-25 11:21:29', 'f10fe51c-1975-4b88-a239-104ca159cf6d'),
(103, 102, 17, 2, 1, NULL, '2019-06-26 13:02:37', '2019-06-26 13:31:03', 'f9cc214e-0103-48af-9890-ed6e0caf5166'),
(129, 128, 17, 2, 1, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'a05f2b7f-5f2f-4d28-90dc-25a8fa22f564'),
(131, 130, 44, 4, 1, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '50138106-7cc8-4810-be09-982a7769ff70'),
(132, 130, 44, 4, 2, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '07ab9762-8089-48c7-8a08-bec3fccd210d'),
(133, 130, 44, 4, 3, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '75b93f0f-ebf0-4fe9-a7a1-308497c9af04'),
(134, 130, 44, 4, 4, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', 'b6d4bbbf-d784-464c-9a01-f3a20fccf0f4'),
(135, 130, 44, 4, 5, NULL, '2019-07-16 07:35:59', '2019-07-16 07:35:59', '1de9ccc3-3b87-447d-a7c0-190e1a524484'),
(137, 136, 17, 2, 1, NULL, '2019-07-16 07:35:59', '2019-07-16 07:36:00', '1d10937f-64c9-4e6a-8534-1eb735f58cbc'),
(139, 138, 44, 4, 1, NULL, '2019-07-16 07:35:59', '2019-07-16 07:36:00', '2fbd4d80-e9b5-4664-9920-27b59cd025de'),
(140, 138, 44, 4, 2, NULL, '2019-07-16 07:35:59', '2019-07-16 07:36:00', 'c5703eb0-81dc-45c1-91d5-d0579e93e7c8'),
(141, 138, 44, 4, 3, NULL, '2019-07-16 07:35:59', '2019-07-16 07:36:00', 'baecdbc3-94e6-461a-8f7e-baa7a9431985'),
(142, 138, 44, 4, 4, NULL, '2019-07-16 07:35:59', '2019-07-16 07:36:00', 'fb482b5e-1b8c-42d0-bee9-6a00630569d7'),
(143, 138, 44, 4, 5, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '35e13db6-0aeb-4e88-871b-c13df2a1b261'),
(145, 144, 17, 2, 1, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'bd17776d-e568-4039-a1af-5c98212e865d'),
(147, 146, 44, 4, 1, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '112f2630-f7fa-4ba5-a94d-4f9d797d2b0f'),
(148, 146, 44, 4, 2, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '8acdaafe-961b-4e82-938d-6f6f56acb529'),
(149, 146, 44, 4, 3, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '7edcbd08-62cc-4061-87ff-c443e6c6ad6c'),
(150, 146, 44, 4, 4, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '758e4e3a-76e3-416d-b56b-fa298fd5d35c'),
(151, 146, 44, 4, 5, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '38dbf7c2-a864-4eb5-9be1-16b3e5330e4d'),
(153, 152, 17, 2, 1, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '8a8ed475-302b-4637-ba34-d3caa1b3b364'),
(155, 154, 44, 4, 1, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'f209c134-2a70-4b44-ba60-a4b41f8067a7'),
(156, 154, 44, 4, 2, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '05f1d5f9-386a-4d1d-bb8b-52a02437ea19'),
(157, 154, 44, 4, 3, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '1177b5ec-d701-4373-8bb7-b35a6a72967c'),
(158, 154, 44, 4, 4, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', '50a58946-2895-4560-b0bf-f0f8bc44b67c'),
(159, 154, 44, 4, 5, NULL, '2019-07-16 07:36:00', '2019-07-16 07:36:00', 'b9b48e67-04a5-4e2f-8218-335a466f5ab9'),
(169, 168, 17, 2, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '6a1c4a2d-61af-4630-8a7d-d702cc673b78'),
(171, 170, 44, 4, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'cfcc2ca1-5658-44c6-824c-c1da8f8be39f'),
(172, 170, 44, 4, 2, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '734156b5-8daa-44bb-844b-9b8b5ad2e8e4'),
(173, 170, 44, 4, 3, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'e023c92d-5764-40b2-9781-4b09c339e18d'),
(174, 170, 44, 4, 4, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '3592c61d-9fe3-4795-8155-013b375c4c24'),
(175, 170, 44, 4, 5, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '7a24861d-0abc-45b5-a641-3f4244e80e37'),
(177, 176, 17, 2, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '5f1c76c7-6c3b-4dff-9011-7c3cb27d5791'),
(179, 178, 44, 4, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '4808c701-d97d-4fbd-9f58-3fc35c66f4f9'),
(180, 178, 44, 4, 2, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '002047f1-ae9d-4a72-8cbb-771ec2e29740'),
(181, 178, 44, 4, 3, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', 'bbdf18f5-e8d6-4305-8e17-04b0acca3f49'),
(182, 178, 44, 4, 4, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '4fdc5776-3243-478a-99e5-9d141cbdbc53'),
(183, 178, 44, 4, 5, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:01', '3f573a59-fe06-4451-bccc-895f7f31c230'),
(185, 184, 17, 2, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:02', '015b1727-cb39-4935-ae92-503f354091d5'),
(187, 186, 44, 4, 1, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:02', 'b2860b75-a0fd-4be8-a297-eadcf54f9167'),
(188, 186, 44, 4, 2, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:02', '2eb5f953-9d47-471e-a371-4a70bde6e5a6'),
(189, 186, 44, 4, 3, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:02', 'c51bb608-81d1-49bb-84a6-f7d2f854c77a'),
(190, 186, 44, 4, 4, NULL, '2019-07-16 07:36:01', '2019-07-16 07:36:02', '70ba54a8-c744-4550-8a2e-42bc41404d94'),
(191, 186, 44, 4, 5, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '8b95f389-96f1-4c5a-b714-887363a218d9'),
(193, 192, 17, 2, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'e6ab22f3-7dbc-414c-a170-9249a17bee3b'),
(195, 194, 44, 4, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '291e10c3-2d20-4ded-a05a-bedfcc263858'),
(196, 194, 44, 4, 2, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '4ecc2021-ede3-4b09-888d-3ae4aee02992'),
(197, 194, 44, 4, 3, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'c7126dd1-b711-496b-8ae5-0ff05dda6dc9'),
(198, 194, 44, 4, 4, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'b4bf40cc-6732-460a-9580-eaf8ba8a3903'),
(199, 194, 44, 4, 5, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'e1686700-8818-4340-a6a2-589cd04451dc'),
(201, 200, 17, 2, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '3bb55573-c076-4240-9111-99c4aeaca3c6'),
(203, 202, 44, 4, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '2141a06f-76ae-4c00-bcbb-97f6c538d0f3'),
(204, 202, 44, 4, 2, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '05c01e57-ed0a-4d46-a1fb-89ccca15cf5a'),
(205, 202, 44, 4, 3, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'e19477a1-8509-431b-8c00-678c95cb2a40'),
(206, 202, 44, 4, 4, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'a43a569b-9a5d-4520-97ba-8c1249ade2e5'),
(207, 202, 44, 4, 5, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'dc9481bd-3fd2-4da9-9d44-687ba3efdab1'),
(209, 208, 17, 2, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '7d115868-c7ca-4b7c-bc1f-8c03eb0e5178'),
(211, 210, 44, 4, 1, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '42c01fc9-b8d5-43b3-ac0d-e5943097e10d'),
(212, 210, 44, 4, 2, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', 'a13d0f38-7022-47f5-b96d-2c3f6c496d64'),
(213, 210, 44, 4, 3, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '864604e7-114f-48cd-ba93-29d2090ac52d'),
(214, 210, 44, 4, 4, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '5bf8b804-791a-4884-a463-6b98e003e7c4'),
(215, 210, 44, 4, 5, NULL, '2019-07-16 07:36:02', '2019-07-16 07:36:02', '3a891588-fb50-49fd-a066-9c31935abe33'),
(217, 216, 17, 2, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '99246dfd-d511-485d-9cf7-fe190ad2817f'),
(219, 218, 44, 4, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'e021d983-0ac9-42d8-a993-1de63a4fdca9'),
(220, 218, 44, 4, 2, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'ee2391a1-96d9-4536-b629-571eebe148ba'),
(221, 218, 44, 4, 3, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'c87a001d-7dd5-40ce-b2c6-4a46ced02dca'),
(222, 218, 44, 4, 4, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '266f8de9-0b24-4a72-8b4d-247688d82494'),
(223, 218, 44, 4, 5, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '088e94cc-6f97-4ced-abc8-08c1d5c566fb'),
(225, 224, 17, 2, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '9904c9ba-9a9f-416f-a54d-dd1987cf7fc9'),
(227, 226, 44, 4, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '04524b57-8122-4384-a3d7-ced6a17024e7'),
(228, 226, 44, 4, 2, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '6f7ee224-cae6-47d8-bf7b-e26f1bd73743'),
(229, 226, 44, 4, 3, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '3667d613-86ea-45ac-ab9f-1c975e5d8850'),
(230, 226, 44, 4, 4, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'dbc7fd06-86cc-4f54-b2d9-911d40a63129'),
(231, 226, 44, 4, 5, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'bd70de4c-b2b4-4b30-aacb-4b672ce9ff93'),
(233, 232, 17, 2, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '5d669ca5-fa42-4f0a-951a-36d507de73b6'),
(235, 234, 44, 4, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '37ed24ea-603c-44f2-8731-4c808f504447'),
(236, 234, 44, 4, 2, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '2a92d37e-2e58-47aa-94a0-3c0ab51717d9'),
(237, 234, 44, 4, 3, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'c4d263e9-c762-4482-b0c0-4200d98df7ff'),
(238, 234, 44, 4, 4, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'a01bfa80-628e-44ed-a697-b9cbb6c7ec6d'),
(239, 234, 44, 4, 5, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', 'ad3331ee-7ae4-4376-8422-9294d85b627c'),
(241, 240, 17, 2, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '4a92556c-6494-4183-b860-31a04a3bcd5f'),
(243, 242, 44, 4, 1, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '1f839d93-6ffd-4305-b496-c0f9887adca3'),
(244, 242, 44, 4, 2, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:03', '90927795-f072-46c5-8fbe-ed80aee1c3c9'),
(245, 242, 44, 4, 3, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:04', 'b27f3518-a71c-4844-8295-089b47499a91'),
(246, 242, 44, 4, 4, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:04', '82032f4f-e571-416b-823c-c2959d11f6d7'),
(247, 242, 44, 4, 5, NULL, '2019-07-16 07:36:03', '2019-07-16 07:36:04', 'd73af5eb-d446-465d-851d-198ff96cc2dd'),
(249, 248, 17, 2, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '536f9c25-27d3-44ac-b77a-2074b2687671'),
(251, 250, 44, 4, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '3bb8da7b-36f7-4b11-910e-b2025f9f7179'),
(252, 250, 44, 4, 2, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'ce91d62b-b61c-414e-b51d-e6d765465cc8'),
(253, 250, 44, 4, 3, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '3f33607a-4efb-4522-a393-f9531809021a'),
(254, 250, 44, 4, 4, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'acf7493f-d09e-453d-ab55-be2707a5cf57'),
(255, 250, 44, 4, 5, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '654346fe-747d-4481-ad15-18a0defbb9ae'),
(257, 256, 17, 2, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '4c5126f2-be75-4711-8d33-9a3da1d0d986'),
(259, 258, 44, 4, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '63a69bcb-e30f-42c4-8993-31327dc8eecb'),
(260, 258, 44, 4, 2, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '3931714c-b1fb-4380-bfbc-df2a23823d41'),
(261, 258, 44, 4, 3, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '989d741e-f588-4764-9185-d3cab8e4bdb6'),
(262, 258, 44, 4, 4, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '0373ef31-d8c8-4279-a0f3-e90aebf68e85'),
(263, 258, 44, 4, 5, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '19995e40-5a95-4f70-b3ad-750b2c4b1c2e'),
(265, 264, 17, 2, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '51bb4d1b-f79f-4d3e-b575-ded254626671'),
(267, 266, 44, 4, 1, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '410a8bef-973f-4ae4-8720-be5cdda38a7d'),
(268, 266, 44, 4, 2, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '77d87209-bc23-4933-98a1-42bd21677301'),
(269, 266, 44, 4, 3, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '19408313-6cf7-4f17-b3b3-ad95b0a8a3e9'),
(270, 266, 44, 4, 4, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', 'c3f59635-215c-4943-a978-2cf79fb09055'),
(271, 266, 44, 4, 5, NULL, '2019-07-16 07:36:04', '2019-07-16 07:36:04', '844b72c5-f740-4efb-8020-33fb60570158'),
(284, 283, 30, 1, 1, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', 'fdc2b6e3-b698-46d4-8586-4b94b24f329d'),
(285, 283, 30, 1, 2, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '988cbb6f-eac3-4cc4-898e-556b4d233a0c'),
(286, 283, 30, 1, 3, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '2d10a14c-b03e-4ff4-a555-b30a11ac9dcf'),
(287, 283, 30, 1, 4, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '92436312-e366-4752-aa59-0849a9f49c77'),
(289, 288, 30, 1, 1, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', 'e09000a2-b754-463b-b13f-4a137ca4db60'),
(290, 288, 30, 1, 2, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '52745dc0-5c96-4c86-9a47-b4efd5fb5855'),
(291, 288, 30, 1, 3, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', '04d85bef-476d-48e0-987a-4b4b8aa1109b'),
(292, 288, 30, 1, 4, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', 'b5be1de9-fd61-45a3-b2a7-d6f4a649f4e6'),
(294, 293, 30, 1, 1, NULL, '2019-07-16 07:36:05', '2019-07-16 07:36:06', 'fa0fd07a-0043-433a-a0f9-9b37580afe3a'),
(295, 293, 30, 1, 2, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '78b9a016-b829-4832-b73c-4c6d1846d7d9'),
(296, 293, 30, 1, 3, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '9640d472-c1b4-46fd-9d41-334469faf08a'),
(297, 293, 30, 1, 4, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '9b19e239-0167-4f53-ae2b-4ec9f4cf449c'),
(299, 298, 30, 1, 1, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '5c43a4fc-2deb-413f-bd59-41fd8afa8dae'),
(300, 298, 30, 1, 2, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'fbc3be21-c4d6-45e7-bc25-03d5f0f9c6ea'),
(301, 298, 30, 1, 3, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '1c4aef60-997b-47f3-8125-a56603aa70f2'),
(302, 298, 30, 1, 4, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '88daf82a-a9e0-4cda-807d-8521dab3a589'),
(305, 304, 30, 1, 1, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '4318ce11-7e8d-4ad5-a5e3-49d8dbe95015'),
(306, 304, 30, 1, 2, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'bfa527ff-b155-4d84-9e47-c60dbb7e51e6'),
(307, 304, 30, 1, 3, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'd4e33ae8-ef96-4d7e-aa28-437d9d29075e'),
(308, 304, 30, 1, 4, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '4cf34a51-808c-428c-a2de-86603f020942'),
(310, 309, 30, 1, 1, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '1c0b0a43-d83a-4372-bd80-5a4798de1014'),
(311, 309, 30, 1, 2, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '4ed1dd4e-4795-4c39-9a38-37e7009d0cca'),
(312, 309, 30, 1, 3, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '85f4aed2-b16b-4052-8daa-e1e2bbe930b6'),
(313, 309, 30, 1, 4, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '53d1de25-b870-4e7e-84ff-1cd5b0a0a635'),
(315, 314, 30, 1, 1, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'e221e801-da35-4c1a-b46d-0637b624d3f1'),
(316, 314, 30, 1, 2, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ff581d57-bc9a-439d-a83f-adc8d42fb0e8'),
(317, 314, 30, 1, 3, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'ea8f5e52-70bc-4257-9e6f-1992531f39fe'),
(318, 314, 30, 1, 4, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '097e2a5a-db95-4f04-bcb1-9a526418cace'),
(320, 319, 30, 1, 1, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'e3c27be1-2a53-4205-b34e-e9115bc7fb93'),
(321, 319, 30, 1, 2, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'b5dda31e-c06e-465b-a238-6f780fd85cfe'),
(322, 319, 30, 1, 3, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', '8e39ce18-65aa-463d-b0f3-44f15f51d9d5'),
(323, 319, 30, 1, 4, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:06', 'be9fcfb3-c6da-451f-8fe0-e5b938582fb1'),
(326, 325, 30, 1, 1, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:07', 'b5104ecc-89c6-48b0-a00e-a3d271dea30f'),
(327, 325, 30, 1, 2, NULL, '2019-07-16 07:36:06', '2019-07-16 07:36:07', '70509217-5d9a-410b-8d8e-08cd28b74ae5'),
(328, 325, 30, 1, 3, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '1c461dd5-6de2-412f-8189-718470e0a87a'),
(329, 325, 30, 1, 4, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '8acd9dd4-4afd-45e7-91c3-165dc846debb'),
(331, 330, 30, 1, 1, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '3f1277ca-103b-4228-8023-2a2f46dd00d1'),
(332, 330, 30, 1, 2, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'd4c62ae5-a3e6-40c1-92e5-312bef20bc20'),
(333, 330, 30, 1, 3, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '3b2d18e5-8604-42b9-9d8c-b06b9be87363'),
(334, 330, 30, 1, 4, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '9564ef5a-2864-4590-825d-5d5de8bff2c5'),
(336, 335, 30, 1, 1, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '19d804d9-c0d9-4f07-b3a9-2ca09d985f08'),
(337, 335, 30, 1, 2, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '624662f8-ec46-41b0-a51f-9cef1bfb4be3'),
(338, 335, 30, 1, 3, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '91251ab7-3fb5-495b-bdea-a67984923b66'),
(339, 335, 30, 1, 4, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '486e642a-a873-4fee-b78f-f9e1773bf993'),
(341, 340, 30, 1, 1, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'e235fdf5-dd37-4119-b439-51f97cf090ef'),
(342, 340, 30, 1, 2, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '2837c6f0-38a7-4818-b06f-c900b8e63710'),
(343, 340, 30, 1, 3, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '13d7dd5e-1884-48a1-a945-5d0ee79f68d4'),
(344, 340, 30, 1, 4, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', 'c3b59e80-f2b7-4a2f-b107-ae7928aa30cd'),
(346, 345, 17, 2, 1, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '7265c357-691b-4372-864a-7dc8e0cd7502'),
(348, 347, 44, 4, 1, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '649c0e6e-b185-4112-adcb-bbe366a9e98d'),
(349, 347, 44, 4, 2, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '6c637991-e329-4017-9174-eb47900ea177'),
(350, 347, 44, 4, 3, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:07', '5b5fb07e-bdb2-4b84-829a-25644f8749d7'),
(351, 347, 44, 4, 4, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:08', 'd77ea0bd-8053-4047-ac42-ac84a6c8c571'),
(352, 347, 44, 4, 5, NULL, '2019-07-16 07:36:07', '2019-07-16 07:36:08', 'bd30ae5a-03c6-46fe-b3e6-ca37a6ab649b'),
(354, 353, 17, 2, 1, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '1fc023e7-a7bb-4ad9-85c5-b623e4b8691b'),
(356, 355, 44, 4, 1, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '9b4793b2-fb02-4301-aa6c-f8709e31281d'),
(357, 355, 44, 4, 2, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '5cb0d92e-da08-449f-878e-abe5704441e3'),
(358, 355, 44, 4, 3, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'ae227577-574b-4a87-ace4-46a1e8611bf3'),
(359, 355, 44, 4, 4, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'b3b23d6e-8a9f-4f5d-b297-456f65e9947b'),
(360, 355, 44, 4, 5, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '79a4866d-c6c7-4254-8488-234cc30a4098'),
(364, 363, 30, 1, 1, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'b7bbe1d6-3d30-4a80-9a3b-0affb250da4d'),
(365, 363, 30, 1, 2, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '303664de-58d6-456f-ba97-4b070fce57ae'),
(366, 363, 30, 1, 3, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '0c03868f-2728-433f-ae99-03e41c1500af'),
(367, 363, 30, 1, 4, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c470520e-6872-45cd-81aa-7640a12cee25'),
(369, 368, 30, 1, 1, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'b6f14771-6615-41b7-a8f3-2649d8b0c9be'),
(370, 368, 30, 1, 2, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c987e7b0-441c-4fbb-9616-850ae960bf62'),
(371, 368, 30, 1, 3, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '8029f2ba-2a0b-4bbf-aa66-e6217901208d'),
(372, 368, 30, 1, 4, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'd5bdcff4-7c77-4442-9a28-4a8e5a7223ec'),
(374, 373, 30, 1, 1, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '3b3e341b-fd2e-47aa-b864-7834bc3c596a'),
(375, 373, 30, 1, 2, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '892cd09d-a2a0-4518-8012-2d878746efbb'),
(376, 373, 30, 1, 3, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'e613c3e2-ca95-4508-a4c3-55f5cb8189ab'),
(377, 373, 30, 1, 4, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c95110e6-9b5d-4278-8e41-4e553c33b035'),
(379, 378, 30, 1, 1, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '5dfe56ed-12a1-4d3f-833a-fc6f6cec5450'),
(380, 378, 30, 1, 2, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', '72587682-11d1-4d47-b232-1f66e3eb5a21'),
(381, 378, 30, 1, 3, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'c7c9a36f-ffc7-49b5-9025-f890d1985710'),
(382, 378, 30, 1, 4, NULL, '2019-07-16 07:36:08', '2019-07-16 07:36:08', 'dbf3de4d-c581-4d5e-be53-f0bbb3e10550'),
(384, 383, 17, 2, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'c567bc00-202f-49fd-b758-0e46c51f2e8d'),
(386, 385, 44, 4, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '6e6c905c-6a9b-4506-8a96-073bfd9edf44'),
(387, 385, 44, 4, 2, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'c49d0591-860c-48ae-82cf-508d7223961f'),
(388, 385, 44, 4, 3, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'a9896ee5-8652-4bea-92db-d6273ff84838'),
(389, 385, 44, 4, 4, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'c7b2d38a-acfd-472d-acb4-c412a09445c4'),
(390, 385, 44, 4, 5, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'b9ea8eb4-cc6c-4a65-9d0b-a8934ed1e762'),
(392, 391, 17, 2, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '98387218-42f8-4b67-babf-3878a9c4a9e4'),
(394, 393, 44, 4, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'fb1bf44b-ce83-4146-b5c8-6b3cca549058'),
(395, 393, 44, 4, 2, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '87710e32-468b-4d0d-8e63-f5e74a82548a'),
(396, 393, 44, 4, 3, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'baea0d68-4195-4591-8465-b3484190be68'),
(397, 393, 44, 4, 4, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '50a2ed16-acb3-4ecb-92c6-b8d50e4715f7'),
(398, 393, 44, 4, 5, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '100181ce-7b19-4209-bef2-601a34fc67f0'),
(400, 399, 17, 2, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '37a59cab-59dc-4f2d-b92a-62a184c36ec1'),
(402, 401, 44, 4, 1, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '865fef8a-7174-4b6a-b3b2-6b7a5905081b'),
(403, 401, 44, 4, 2, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'f7487f01-1ca9-4a64-9d28-d139447c0373'),
(404, 401, 44, 4, 3, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '27d747f6-6e6c-48e1-9202-91db9fbc5953'),
(405, 401, 44, 4, 4, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', 'b91c5d9f-25ed-4a4a-9897-8a0affc50ee8'),
(406, 401, 44, 4, 5, NULL, '2019-07-16 07:36:09', '2019-07-16 07:36:09', '4fe6c964-31b7-47b1-b023-6b015fd25770'),
(414, 413, 30, 1, 1, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '65b2eeed-9c73-4833-9172-045f4d2acab4'),
(415, 413, 30, 1, 2, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'd1f0bbbc-cd9f-460b-80b5-6aa040282a86'),
(416, 413, 30, 1, 3, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'cbde2074-e91d-4079-8c4d-4b34d4df237e'),
(417, 413, 30, 1, 4, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e89d55fd-bdaf-4cb2-b618-c9e528e974ad'),
(419, 418, 30, 1, 1, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '0d521a5b-74e5-4809-aefe-6dceb50d70c5'),
(420, 418, 30, 1, 2, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'f60f65cc-17e2-42cc-bf9a-3dabc72d9cc5'),
(421, 418, 30, 1, 3, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'aeec2d3d-22d4-45c9-9125-2c3e6d4786bb'),
(422, 418, 30, 1, 4, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '18d2794d-1c61-4a73-b02d-b76bc5ebd00a'),
(424, 423, 30, 1, 1, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '86c376bf-75a7-4701-843a-cb1bc3edd7e7'),
(425, 423, 30, 1, 2, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'b0762d4d-ac38-407a-a935-f1c36eccf9c3'),
(426, 423, 30, 1, 3, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '18e2d0af-e1a2-46de-aad2-59988cc95b11'),
(427, 423, 30, 1, 4, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ff1548f7-f9a9-42f4-9e25-6e70b19e1f54'),
(429, 428, 30, 1, 1, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '9ee20a45-c32c-455b-aa99-d26f5270d305'),
(430, 428, 30, 1, 2, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '57b1add4-172a-49a0-8025-47ffde8e4a46'),
(431, 428, 30, 1, 3, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '1954c19f-ee35-460e-b536-aef6a348747e'),
(432, 428, 30, 1, 4, NULL, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '016b42e1-20f0-4c82-a4a3-62fef1ee968c'),
(435, 434, 30, 1, 1, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '26e0e437-10de-4677-b583-49b6230584f3'),
(436, 434, 30, 1, 2, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'c79fd8c9-44cd-49df-8324-0eb17a3f46e1'),
(437, 434, 30, 1, 3, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'fbfb6c16-cf75-4f5d-86e3-9eff1b8dfa76'),
(438, 434, 30, 1, 4, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'b239f848-2826-4381-9e24-97315a4726de'),
(440, 439, 30, 1, 1, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'a2e20be8-ba80-4853-8e5a-87a040f2080c'),
(441, 439, 30, 1, 2, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '86671253-b2d7-4b3f-82bc-d8a3d449b3df'),
(442, 439, 30, 1, 3, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '29bcfc70-7e26-4295-8c98-0cdcf0effd5b'),
(443, 439, 30, 1, 4, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '1467f497-30a7-49fb-8353-07dc37dd67a6'),
(445, 444, 30, 1, 1, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e35c9b0c-2af5-4216-b29f-2b14299f3607'),
(446, 444, 30, 1, 2, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '4adb118d-7df6-4785-be0e-ee40f6f4ccce'),
(447, 444, 30, 1, 3, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'ad5676aa-3914-424c-b8c9-9eaf9bf70d83'),
(448, 444, 30, 1, 4, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '408187a2-def8-4f95-bcf2-949aab9d466c'),
(450, 449, 30, 1, 1, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', 'e322f217-d403-42de-bec1-35601bef5d9c'),
(451, 449, 30, 1, 2, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '962934a4-b991-461a-a644-38d95da5e642'),
(452, 449, 30, 1, 3, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '20496bcf-1808-46bb-ad2b-b54821af6350'),
(453, 449, 30, 1, 4, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '3dd0b323-9e72-4d7b-972b-719633e0028b'),
(456, 455, 30, 1, 1, 1, '2019-07-16 07:36:10', '2019-07-16 07:36:10', '61c3a60b-af60-4394-b9fa-bdbcecade63b'),
(457, 455, 30, 1, 2, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '39e83436-f32e-4813-a954-3ab0654b8d91'),
(458, 455, 30, 1, 3, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '3e4a484e-bf53-4430-8430-8e015783005b'),
(459, 455, 30, 1, 4, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'ffa20f79-ed81-4577-9964-73a8aca83221'),
(461, 460, 30, 1, 1, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'c3a02fa2-6fa9-46be-b5d5-430d0e96585d'),
(462, 460, 30, 1, 2, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '8a602547-aa15-46db-95d7-5b5496040783'),
(463, 460, 30, 1, 3, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a5c11c71-95df-4172-8266-7b4db86c809f'),
(464, 460, 30, 1, 4, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '4037a5af-c978-42f6-867e-7006be72500e'),
(466, 465, 30, 1, 1, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'aab40850-a820-4a08-855f-7bbce2110f0e'),
(467, 465, 30, 1, 2, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '487d036f-ec58-43ff-a3aa-5c1dee5a9fe1'),
(468, 465, 30, 1, 3, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '95ccb47e-3c56-4131-a1b5-d031e1675eac'),
(469, 465, 30, 1, 4, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '14d4d2c6-d540-4c80-9832-18367e9cdae8'),
(471, 470, 30, 1, 1, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '7e6a2a80-e531-498e-be0a-42b3e6204934'),
(472, 470, 30, 1, 2, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'e7287335-3e2f-4804-904c-35c3ae15da76'),
(473, 470, 30, 1, 3, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'b330f140-e3f9-495a-a09e-486b05b8f5f7'),
(474, 470, 30, 1, 4, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f370c427-b798-48aa-9b51-da53cde200fd'),
(477, 476, 30, 1, 1, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '1ab304d2-e2fc-49a9-adcd-3b30a46180f7'),
(478, 476, 30, 1, 2, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f23ce213-72c7-4774-9e75-43d573b4bf67'),
(479, 476, 30, 1, 3, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'cba7da31-715b-4a51-9080-cdac929e03be'),
(480, 476, 30, 1, 4, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '2b4f667a-6b1d-469f-b90a-b910a6e3b316'),
(482, 481, 30, 1, 1, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '5d71dc20-14d2-47f1-b822-857b11bda3ae'),
(483, 481, 30, 1, 2, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '20ce7950-d3a2-4e7e-87cc-d7e24750853b'),
(484, 481, 30, 1, 3, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a31210e1-908e-4355-8a97-4423a902aaee'),
(485, 481, 30, 1, 4, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '254b391f-01c7-4058-9146-7927f82910e1'),
(487, 486, 30, 1, 1, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '789d2763-c6fb-40d0-a83f-0378e888bb59'),
(488, 486, 30, 1, 2, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '088a2dee-c841-45fa-9bae-3e01a3549c1f'),
(489, 486, 30, 1, 3, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'ea85c1e1-c517-49ee-9541-95ec00d04ced'),
(490, 486, 30, 1, 4, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '18d5700b-ddf7-4c80-a330-7d5faf302fe9'),
(492, 491, 30, 1, 1, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '0afed3fb-b49f-42a7-803b-1cdeccc8c613'),
(493, 491, 30, 1, 2, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '6cc59398-96c3-4e96-8376-5778d8a8d1cf'),
(494, 491, 30, 1, 3, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f3aab424-ea50-481c-b601-dd0ce26df5c6'),
(495, 491, 30, 1, 4, 1, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '558e0720-cf68-4a1c-aca2-0a778ce84230'),
(498, 497, 30, 1, 1, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'c45d216a-d4b9-463e-b533-e8629e63b227'),
(499, 497, 30, 1, 2, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '92b08ef8-7552-49ac-93e6-c2f2aff8aa53'),
(500, 497, 30, 1, 3, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '64a41c8a-5c92-49f4-ba0d-b90ed2a884f6'),
(501, 497, 30, 1, 4, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '62eb8115-92e3-4a6e-b6e5-f8940056c699'),
(503, 502, 30, 1, 1, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '40958c29-bdab-42cc-b54d-5b50808211b7'),
(504, 502, 30, 1, 2, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '0c798b03-7126-46b7-9694-a6572e8af14a'),
(505, 502, 30, 1, 3, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '604968d0-d0a0-402f-a4df-f175bff8c22a'),
(506, 502, 30, 1, 4, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f3311bb1-0ff8-4967-b4d0-d8ff042edf2a'),
(508, 507, 30, 1, 1, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'a9c5a279-1c21-46da-847a-218ffb251998'),
(509, 507, 30, 1, 2, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '0dc70de6-4f52-4824-b8d1-1eb6e0098131'),
(510, 507, 30, 1, 3, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', '88da97a4-fc22-4d62-aa47-486a929769c6'),
(511, 507, 30, 1, 4, NULL, '2019-07-16 07:36:11', '2019-07-16 07:36:11', 'f49b269d-cb88-49c4-842e-af27ead846f6'),
(513, 512, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '15d46f4d-83aa-48f8-a8f1-7852a1870fa6'),
(514, 512, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7a04f272-3dc2-4757-a7d5-5a7a8093df92'),
(515, 512, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '24ba983d-67d3-4366-bebf-2eb4ee485a6f'),
(516, 512, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '68955885-21f3-4e66-a373-85080b4fa803'),
(519, 518, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b1da61b2-9d25-4eee-b69f-36c6ffcf41b0'),
(520, 518, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '1c72b191-9b80-45a4-8d7c-cb7a701f6bf3'),
(521, 518, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '1fc85dbd-79b8-4b59-a80d-6e8f4ee0d730'),
(522, 518, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '01fe8ae9-2674-47f6-a495-dcfe5adeab82'),
(524, 523, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '92d254fa-cfd6-4949-b88a-001ca16f5f48'),
(525, 523, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'f1298cc7-30e1-4358-bbc0-b0957e098a4a'),
(526, 523, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'c8337e1d-a38a-4c7e-9010-fe87f678ab5c'),
(527, 523, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '008a650a-d739-43dd-8b91-2486b9caac79'),
(529, 528, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'c14d892d-294e-4d3c-88d3-454b810646e7'),
(530, 528, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '68d6f440-459f-4864-beb8-9651409b1781'),
(531, 528, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'd33cac1c-a240-425e-9887-a76e6e9f279d'),
(532, 528, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'fe6587c9-4c6a-4cae-85f3-0d1cc70845b9'),
(534, 533, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b93de37a-a22c-4457-8997-8949079e4170'),
(535, 533, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'b831fe98-5741-4832-a3d6-d5fe1dca4e3b'),
(536, 533, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '88849c19-5232-4028-aaa8-ffe3ceaddb2d'),
(537, 533, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'de186925-3df9-4a4e-9755-42b544f6acc0'),
(540, 539, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '74840a65-4711-4d24-ae8c-3477c2e1180e'),
(541, 539, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '796b1265-825d-4e01-a58a-62ff6be0dc69'),
(542, 539, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '5208bcfa-a388-4d8b-82be-f2e92dd7abeb'),
(543, 539, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'df0bc161-9ee8-428c-95ca-376565e6a9b2'),
(545, 544, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '2f44895c-d207-4e47-bd05-56086c954764'),
(546, 544, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '9aaf195a-db57-43a3-8afb-be6e9d189a54'),
(547, 544, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'a34d8e57-a882-43da-8293-d83dc0e01049'),
(548, 544, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '2be13589-12dd-4f1f-b941-37a462ce0ee4'),
(550, 549, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '03d251ee-d94c-49ea-aeed-c42f020298ff'),
(551, 549, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '8247cf47-95a2-47a6-a3f3-3ab2cef62c25'),
(552, 549, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '70877c40-780f-4cd4-9275-d5259cd49171'),
(553, 549, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '201508b6-f219-4e6a-808b-a03ea518c0c2'),
(555, 554, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '25a68f83-3452-4a4a-ad13-2247fb7265e2'),
(556, 554, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '9e33057c-bfdb-413f-ae25-e04baae38d34'),
(557, 554, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '7dc2ac3b-f9a0-4bcb-b128-55d0c836329a'),
(558, 554, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '53021cf6-b4ef-4eea-9c7d-bcd8cad506e9'),
(561, 560, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'ddfc8894-8795-4bb0-94ba-68c4b9be89c6'),
(562, 560, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '57ef4896-a655-4f6c-9edc-4b01fc53e668'),
(563, 560, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '3d9e202f-0d97-4b9e-81ec-521ecf690155'),
(564, 560, 30, 1, 4, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '3bd53983-3f56-478a-bb09-b7d100948083'),
(566, 565, 30, 1, 1, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '62bd8992-2f5e-402b-a0f4-cc7224d030c9'),
(567, 565, 30, 1, 2, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', 'ebeb951a-286d-4082-9738-b2d045bfe417'),
(568, 565, 30, 1, 3, NULL, '2019-07-16 07:36:12', '2019-07-16 07:36:12', '68c74e1c-f742-4690-9190-b84cbd24e4fc'),
(569, 565, 30, 1, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'b4b00a31-8930-4042-9071-b3f60097eca5'),
(571, 570, 30, 1, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'd440cffc-f708-401b-a7a7-103587c87068'),
(572, 570, 30, 1, 2, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '91bdab9f-1751-406d-b48d-e2b79b33e022'),
(573, 570, 30, 1, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '991bc807-f1a3-455f-b929-0bb1ffa225d7'),
(574, 570, 30, 1, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'a79a2c23-eb2a-4442-9a3e-7aa5020704cd'),
(576, 575, 30, 1, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '53298e7a-19ef-4a41-a010-b7900b4ab908'),
(577, 575, 30, 1, 2, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '23bf43d7-ce9c-49ed-a5ed-9156801bcfc4'),
(578, 575, 30, 1, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'a491175d-b76e-4fb8-8499-2eb2d3ebbf15'),
(579, 575, 30, 1, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'ba93a7de-4608-4da9-a759-91c5ed518c91'),
(582, 581, 30, 1, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'bca93901-6297-4546-ae29-4e0fd36fd0a7'),
(583, 581, 30, 1, 2, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '44115f79-5773-4bc3-bb1f-4445310edcbf'),
(584, 581, 30, 1, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'bcbc1677-abc9-46c5-b1b2-00f3c864d782'),
(585, 581, 30, 1, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'f9e3d345-9166-4db0-9bec-76ba6f4c1fa1'),
(587, 586, 30, 1, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '262abe9d-292d-4a7e-9291-fcb1db3f0122'),
(588, 586, 30, 1, 2, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '56a32f25-0d86-41e6-8a81-cc949e501c5f'),
(589, 586, 30, 1, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'b0165acd-d94b-4d0e-83ea-4469ef5a1fc5'),
(590, 586, 30, 1, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'bf3995ae-57f5-40a0-9480-d7506dd14e0b'),
(592, 591, 30, 1, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'f7a0bb0e-314c-42dc-a57e-99a09679d53a'),
(593, 591, 30, 1, 2, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '0c70f1bd-b835-4b46-b246-b3ad34052df1'),
(594, 591, 30, 1, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '667cc8e8-ba74-46bf-b78d-af4bfd4ff104'),
(595, 591, 30, 1, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'a0c0d9d8-d274-4184-92d7-8297d84b81d0'),
(597, 596, 30, 1, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '6716dc1d-2fb6-432a-bb7f-5f6cba49adf7'),
(598, 596, 30, 1, 2, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', 'defdfc8d-da79-43d1-a25b-f941bbaa5de4'),
(599, 596, 30, 1, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '05eea5ae-15c3-40b3-83de-c234b6353961'),
(600, 596, 30, 1, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '2c899146-29c1-440b-83f4-a8d480fea19c'),
(602, 601, 17, 2, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:13', '30de7c51-e81a-44d8-b9d8-449a5743de5d'),
(604, 603, 44, 4, 1, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:14', 'e1abc7ab-4a66-44cd-8ac8-9a14d8c0808f'),
(605, 603, 44, 4, 2, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:14', '3b2af7c4-57fd-4489-b3af-00911db5d03c'),
(606, 603, 44, 4, 3, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:14', '6a714bef-bd50-4361-9516-d1abe3682fa6'),
(607, 603, 44, 4, 4, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:14', '8fdca502-7eb8-41bf-8ae2-a1b758ded701'),
(608, 603, 44, 4, 5, NULL, '2019-07-16 07:36:13', '2019-07-16 07:36:14', 'f86e6a6c-a93a-4af6-a56b-82d5365e751e'),
(610, 609, 17, 2, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'cc27f98c-8c69-49da-80d5-06e684055766'),
(612, 611, 44, 4, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'e3c99b73-7c37-4487-a8ee-3353c6ab8f7a'),
(613, 611, 44, 4, 2, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '5b662746-a5e0-4a3b-af97-e2def6127980'),
(614, 611, 44, 4, 3, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '93506429-0116-4928-9bc6-f13c4359a971'),
(615, 611, 44, 4, 4, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '7094b5e7-76ab-414c-b1a7-79925df20855'),
(616, 611, 44, 4, 5, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '4c0bb6f8-5f1e-493f-8026-9f3220d16d95'),
(618, 617, 17, 2, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '81111737-b39e-4e25-8ee0-530007494882'),
(620, 619, 44, 4, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '89fdef31-21f3-4bd3-9157-9b3bcf15d269'),
(621, 619, 44, 4, 2, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'a20321df-b4f8-485d-aead-3881dbe83dc4'),
(622, 619, 44, 4, 3, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'c713aaef-1080-4646-bfdc-9fced0eb330b'),
(623, 619, 44, 4, 4, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', 'b2d1b9a0-e44d-401d-9bde-6901fbf90e28'),
(624, 619, 44, 4, 5, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:14', '29f0c60c-41bf-4233-81c6-69ac354fefb1'),
(626, 625, 17, 2, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:15', 'dab30e81-a33c-4fbf-bbea-f317ab4ea31b'),
(628, 627, 44, 4, 1, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:15', 'c28e939c-f839-449d-978b-866bed77d8d7'),
(629, 627, 44, 4, 2, NULL, '2019-07-16 07:36:14', '2019-07-16 07:36:15', '513cbc0c-dbab-4cfe-940e-661a8a82aac0'),
(630, 627, 44, 4, 3, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'e6c6e315-ce6c-4107-9401-4d43fb7ea11c'),
(631, 627, 44, 4, 4, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '577792a3-fd81-4cb2-a35a-134baa141b7f'),
(632, 627, 44, 4, 5, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'f23ba84d-1d0f-443a-88c4-be80b03ed11d'),
(634, 633, 17, 2, 1, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '6b0adf23-daa1-43b3-95d6-2b201506086d'),
(636, 635, 44, 4, 1, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'e3af8537-3898-4764-8a37-523817ebcbe6'),
(637, 635, 44, 4, 2, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '13f1112c-9fa7-477a-8740-97f04e85fca1'),
(638, 635, 44, 4, 3, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'e81f25c6-60dd-4b0c-b425-844265591a8e'),
(639, 635, 44, 4, 4, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', '71254eb9-a7df-48e6-96c9-50d542a18e30'),
(640, 635, 44, 4, 5, NULL, '2019-07-16 07:36:15', '2019-07-16 07:36:15', 'a5f4f07f-7be4-4e3c-a1a3-e4095900cc0b'),
(654, 7, 17, 2, 1, 0, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'c1e05c07-f568-4c35-ac46-fce3f828e5b0'),
(656, 655, 44, 4, 1, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'abf51c59-28ea-408c-8abb-1baf48e70256'),
(657, 655, 44, 4, 2, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '1d8f0c39-7a95-44fe-a699-d7fc67f3b4ac'),
(658, 655, 44, 4, 3, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '93e00cd1-c836-47d2-b3ee-6de044ac05bd'),
(659, 655, 44, 4, 4, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '0c5a855c-219a-4a89-8461-8c675460b9da'),
(660, 655, 44, 4, 5, 1, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '5c9994fe-fd43-4a86-8d10-874f2f96b4a2'),
(662, 661, 17, 2, 1, NULL, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'b63a8e00-b918-4f1e-a165-7155ca6c7403'),
(664, 663, 44, 4, 1, NULL, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '8841d0d9-bcce-4f62-a9f5-cc0eaa857782'),
(665, 663, 44, 4, 2, NULL, '2019-07-16 10:14:08', '2019-07-16 10:14:08', 'c2e43168-8682-43a4-894e-435804034a6b'),
(666, 663, 44, 4, 3, NULL, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '38106868-32de-4106-99c2-ca181006e288'),
(667, 663, 44, 4, 4, NULL, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '824d34a1-c7e6-4eb5-ba13-6019b3792ece'),
(668, 663, 44, 4, 5, NULL, '2019-07-16 10:14:08', '2019-07-16 10:14:08', '303075f1-bd67-400f-a1cd-54a2a1cca066'),
(677, 11, 17, 2, 1, NULL, '2019-07-16 10:14:26', '2019-07-16 10:14:26', '734fa989-880b-403a-910d-5f872eccfcbf'),
(679, 678, 44, 4, 1, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '0f89fb2e-bf87-441a-aaf8-95313f48d41f'),
(680, 678, 44, 4, 2, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'f2e8c3a1-3a17-409b-8faf-28054d10647e'),
(681, 678, 44, 4, 3, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '172f2f27-a355-46a3-91e5-5214e2b39f13'),
(682, 678, 44, 4, 4, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '98eb7e2d-a00a-40d0-a292-5a9682dc7c34'),
(683, 678, 44, 4, 5, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', 'cefbc0f4-f757-4d15-84b6-2bf8272e47cc'),
(685, 684, 17, 2, 1, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '6b3b6cd5-7798-480b-8b4e-0ed0056dcb3b'),
(687, 686, 44, 4, 1, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '5cd48feb-9209-4e71-9552-2bc666cd49db'),
(688, 686, 44, 4, 2, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '076dc96d-681a-41c5-92b4-07180dd41a5a');
INSERT INTO `supertableblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(689, 686, 44, 4, 3, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '02888f89-638e-492e-9885-9c765370e04d'),
(690, 686, 44, 4, 4, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '336200a0-01b2-4431-8752-846fa14a67a1'),
(691, 686, 44, 4, 5, NULL, '2019-07-16 10:14:27', '2019-07-16 10:14:27', '3ebda5c6-3640-4f0d-a913-eebea29fced2'),
(700, 68, 17, 2, 1, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'd6027a7c-9c8a-4b3c-92ee-8f17079126ff'),
(702, 701, 44, 4, 1, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '7b5d6f6d-b44d-43fd-899b-5a29a9b4e6cd'),
(703, 701, 44, 4, 2, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '98fb1d0f-04c0-449f-8a21-52ec2effcd34'),
(704, 701, 44, 4, 3, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '8170d05c-ca07-4fb8-95b8-d8b7f826420b'),
(705, 701, 44, 4, 4, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'a5f4831a-5632-4c6f-ae05-e71d2afc096b'),
(706, 701, 44, 4, 5, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'e3569718-4515-4ac8-8fd9-295992908673'),
(708, 707, 17, 2, 1, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '77688b24-6519-4e3c-b174-340511d26bda'),
(710, 709, 44, 4, 1, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'afa74ccc-f45f-4308-8460-704322765c16'),
(711, 709, 44, 4, 2, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '072923f0-365e-4621-b96a-bc3e7b7c02a2'),
(712, 709, 44, 4, 3, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '8a4cdb12-c7c4-4576-a109-b42a0138ceed'),
(713, 709, 44, 4, 4, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', '759ad324-4193-4084-9e31-1ed2ec53a9b2'),
(714, 709, 44, 4, 5, NULL, '2019-07-16 10:14:45', '2019-07-16 10:14:45', 'b9c98cc0-2737-483c-8924-b32548725b66'),
(723, 78, 17, 2, 1, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'a054fc52-9668-4e93-9bb6-030337fa6b2d'),
(725, 724, 44, 4, 1, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'af50f37e-20fe-41a7-8312-a5d978824c88'),
(726, 724, 44, 4, 2, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '80fb0bb9-ce92-4cb4-ace0-24ab15ba12e9'),
(727, 724, 44, 4, 3, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '2f5543b8-ada0-4acc-b922-3076c62a2085'),
(728, 724, 44, 4, 4, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '585d7375-9a63-4327-b546-2daa222e8690'),
(729, 724, 44, 4, 5, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '64416d8d-27a7-41e3-8e58-6ff1f69ddfda'),
(731, 730, 17, 2, 1, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '1e61821d-2807-46fb-ace9-969340031270'),
(733, 732, 44, 4, 1, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'a80d8309-22dd-40df-b0ef-8e89ca580621'),
(734, 732, 44, 4, 2, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '1fbcff17-d05a-465d-b2d3-5159a67640ce'),
(735, 732, 44, 4, 3, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '8be2ac04-4d6d-47b6-8e42-4dfe8ef34342'),
(736, 732, 44, 4, 4, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', 'ffd1dba0-6601-4dd2-8ed5-9da387795d42'),
(737, 732, 44, 4, 5, NULL, '2019-07-16 10:15:01', '2019-07-16 10:15:01', '8740222a-5e27-4e97-8335-d4e21be1b6b9'),
(747, 739, 109, 9, 1, 0, '2019-07-17 12:20:22', '2019-07-17 12:20:22', '6c46b05e-8c52-406c-ab46-08738bd36871'),
(749, 748, 109, 9, 1, NULL, '2019-07-17 12:20:22', '2019-07-17 12:20:22', 'f2bdd520-d790-4657-8551-f27b1f3c45bf'),
(759, 739, 109, 9, 1, 0, '2019-07-17 12:22:20', '2019-07-17 12:22:20', 'f30d5790-b38f-433f-a23d-bab17027e31a'),
(761, 760, 109, 9, 1, NULL, '2019-07-17 12:22:20', '2019-07-17 12:22:20', '37b16a6a-7b6d-4bc4-adaa-9f15f7fb4e09'),
(764, 739, 109, 9, 1, NULL, '2019-07-17 13:10:28', '2019-07-17 13:10:28', '1cffa004-b13c-4a9a-a628-969dc4082d88'),
(766, 765, 109, 9, 1, NULL, '2019-07-17 13:10:29', '2019-07-17 13:10:29', '9ba7dd38-d65c-45f8-9b3a-6de41994c05a'),
(768, 767, 17, 2, 1, NULL, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '7bfdcfa6-c31b-474d-bfc7-dd6d369caebc'),
(770, 769, 44, 4, 1, NULL, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '86cbc25a-157a-4d89-87f8-3fad55d7b583'),
(771, 769, 44, 4, 2, NULL, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '25177a3e-6bb3-4a19-b8d0-06461ed29895'),
(772, 769, 44, 4, 3, NULL, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '90984346-33a8-4615-9af1-593a0a001bea'),
(773, 769, 44, 4, 4, NULL, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '1e783d7d-8ae2-4747-8134-fbaaa96524b6'),
(774, 769, 44, 4, 5, NULL, '2019-07-23 09:05:39', '2019-07-23 09:05:39', '83aa7650-49d9-41de-9409-888377fc776d'),
(791, 7, 17, 2, 1, 0, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '571a8d8c-bb91-4b66-baf5-2ca3d415722c'),
(793, 792, 44, 4, 1, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '22de2c81-5f96-43a1-a601-fbfba5bbb075'),
(794, 792, 44, 4, 2, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '91c6cb60-5785-4f6c-bb4c-7f8ee15246e1'),
(795, 792, 44, 4, 3, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '32550191-399d-45c4-9615-d94040336b68'),
(796, 792, 44, 4, 4, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '55706ada-ff3d-4fc1-b720-c09b12e63d9d'),
(797, 792, 44, 4, 5, 1, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'ff8784ad-f0c0-4ac3-964f-abe35bdbdace'),
(799, 798, 17, 2, 1, NULL, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '0e383451-79e6-44f8-98e6-835f06de8c52'),
(801, 800, 44, 4, 1, NULL, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'bef8af70-2e42-401c-8423-05510c5d8d5e'),
(802, 800, 44, 4, 2, NULL, '2019-07-29 13:35:27', '2019-07-29 13:35:27', 'afce02c4-6495-4943-b416-9de8117772ce'),
(803, 800, 44, 4, 3, NULL, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '89b9d70d-96ef-4eca-8ef8-d22606af50c4'),
(804, 800, 44, 4, 4, NULL, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '9c01a3f6-7997-4d69-bfe4-c4af9ce0b432'),
(805, 800, 44, 4, 5, NULL, '2019-07-29 13:35:27', '2019-07-29 13:35:27', '5029454a-011c-4578-90b9-f3af38aee6a9'),
(807, 806, 17, 2, 1, NULL, '2019-07-29 13:35:49', '2019-07-29 13:35:49', '2f345fe9-7b01-4bba-a84e-28afd1e20cca'),
(809, 808, 44, 4, 1, NULL, '2019-07-29 13:35:50', '2019-07-29 13:35:50', '62de1d1b-625c-4220-917c-2ba429d8cf52'),
(810, 808, 44, 4, 2, NULL, '2019-07-29 13:35:50', '2019-07-29 13:35:50', '2dfa00ca-91bc-48f6-9222-451d4d744018'),
(811, 808, 44, 4, 3, NULL, '2019-07-29 13:35:50', '2019-07-29 13:35:50', '29c6bcf9-8803-411c-85e5-083d5676bc1b'),
(812, 808, 44, 4, 4, NULL, '2019-07-29 13:35:50', '2019-07-29 13:35:50', 'bb1c9411-36dc-449a-be86-16a2cfc93df6'),
(813, 808, 44, 4, 5, NULL, '2019-07-29 13:35:50', '2019-07-29 13:35:50', 'd6176525-0049-411f-8ad0-11f63e81b11e'),
(822, 7, 17, 2, 1, 0, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'a113e310-3076-4263-af91-0cdd1c5bc2a5'),
(824, 823, 44, 4, 1, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '5b1210df-a637-43e8-b0bc-d0578a04e9aa'),
(825, 823, 44, 4, 2, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'c5e653f2-857d-4b55-a341-311e875fa944'),
(826, 823, 44, 4, 3, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'b0a0ab47-c6c1-4129-89b7-12452b687f4b'),
(827, 823, 44, 4, 4, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'f7950c3b-840f-46bb-a224-ce2eea4efcff'),
(828, 823, 44, 4, 5, 1, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '100a16ac-b992-4e65-b56e-6f4cc7a1754b'),
(830, 829, 17, 2, 1, NULL, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '5a842731-99db-4032-ab15-5c22faf67a6e'),
(832, 831, 44, 4, 1, NULL, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'a3cda639-a9b6-4446-a4dc-2785fd5df2df'),
(833, 831, 44, 4, 2, NULL, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '5cb1cc90-f154-4b48-bfb4-deb68c596191'),
(834, 831, 44, 4, 3, NULL, '2019-07-29 13:36:31', '2019-07-29 13:36:31', '4751f84c-25ea-4a43-bb6e-36df49015756'),
(835, 831, 44, 4, 4, NULL, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'c9c352dc-e709-4f80-b1cc-01ab05831fc7'),
(836, 831, 44, 4, 5, NULL, '2019-07-29 13:36:31', '2019-07-29 13:36:31', 'bb655c12-59bc-458c-a490-e521aff4810d'),
(838, 837, 17, 2, 1, NULL, '2019-07-29 13:38:49', '2019-07-29 13:38:49', '2a97db5d-abb8-4963-8950-7ab0380ba36a'),
(840, 839, 44, 4, 1, NULL, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '35068ad6-039b-4d30-b8e5-19887ef739e1'),
(841, 839, 44, 4, 2, NULL, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'c173b113-c740-4a30-a904-f24566bb086c'),
(842, 839, 44, 4, 3, NULL, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '194670f7-983e-4341-b489-084a1cbb1680'),
(843, 839, 44, 4, 4, NULL, '2019-07-29 13:38:50', '2019-07-29 13:38:50', 'ec61b560-cfb7-4269-b729-405a5d37e96f'),
(844, 839, 44, 4, 5, NULL, '2019-07-29 13:38:50', '2019-07-29 13:38:50', '740eaeb9-f312-4233-9215-71176f3a5607'),
(854, 853, 17, 2, 1, NULL, '2019-07-29 13:39:28', '2019-07-29 13:39:28', 'e2e50a53-c33b-4304-9cdf-5ade5eb59810'),
(856, 855, 44, 4, 1, NULL, '2019-07-29 13:39:29', '2019-07-29 13:39:29', '3e096024-04af-4228-b8f0-5eb98cdde873'),
(857, 855, 44, 4, 2, NULL, '2019-07-29 13:39:29', '2019-07-29 13:39:29', '112e39de-faf3-4fb6-a756-a0294b58ad70'),
(858, 855, 44, 4, 3, NULL, '2019-07-29 13:39:29', '2019-07-29 13:39:29', 'f98b7b47-4881-4007-bc48-80e0611751ef'),
(859, 855, 44, 4, 4, NULL, '2019-07-29 13:39:29', '2019-07-29 13:39:29', '02e7567d-a621-4f68-b4ae-02940b4562c3'),
(860, 855, 44, 4, 5, NULL, '2019-07-29 13:39:29', '2019-07-29 13:39:29', 'fab9b65a-d882-49f5-a010-54cb86b6cfdd'),
(869, 7, 17, 2, 1, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '9a069119-a08e-40f4-a690-2aa96fd47683'),
(871, 870, 44, 4, 1, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '3aa9de1a-e1ae-4674-85c7-b928cd129fa6'),
(872, 870, 44, 4, 2, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '1ab697a3-6b47-4fa4-bf4e-757e8db148db'),
(873, 870, 44, 4, 3, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '3775f599-62da-4166-a300-f4b1a86d9e2e'),
(874, 870, 44, 4, 4, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '2e49adef-58c1-4b07-83ef-f0de69918b12'),
(875, 870, 44, 4, 5, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '067b2135-76ea-41a9-bb17-916c49405f09'),
(877, 876, 17, 2, 1, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'f632bdfd-f233-4ff9-8ee1-a9fb448f7995'),
(879, 878, 44, 4, 1, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '06aef081-fa3f-4f26-bf9d-5871028fed16'),
(880, 878, 44, 4, 2, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '10330c65-b1d2-446e-a69c-e9b4d97d82df'),
(881, 878, 44, 4, 3, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '08178acc-7cbb-4f85-95c6-38b0d4c6d40d'),
(882, 878, 44, 4, 4, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', 'a97ce890-e3b9-4496-b8bd-64506af6cf50'),
(883, 878, 44, 4, 5, NULL, '2019-07-29 13:40:03', '2019-07-29 13:40:03', '610f1429-7407-4611-849f-24e721043cd4');

-- --------------------------------------------------------

--
-- Структура таблицы `supertableblocktypes`
--

CREATE TABLE `supertableblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `supertableblocktypes`
--

INSERT INTO `supertableblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 30, 13, '2019-06-18 13:11:23', '2019-06-19 12:14:39', 'd99ff412-f140-4446-8a7a-b509701301bc'),
(2, 17, 14, '2019-06-18 14:34:13', '2019-06-27 12:42:28', 'e0fef858-b4b0-4c4d-aa93-6abdc78001c9'),
(3, 38, 15, '2019-06-18 14:55:45', '2019-06-18 14:55:45', 'c417e979-c2cd-4fa1-8c12-bcd04f739909'),
(4, 44, 16, '2019-06-19 09:42:40', '2019-07-04 13:55:26', '885488bc-ee89-48d6-98b9-9ef4c5504721'),
(9, 109, 43, '2019-07-17 10:52:39', '2019-07-17 10:52:39', '866d8d44-e562-446e-b900-bb7899b26c27');

-- --------------------------------------------------------

--
-- Структура таблицы `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `templatecacheelements`
--

CREATE TABLE `templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `templatecachequeries`
--

CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `templatecaches`
--

CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'o4jYSU8SAkS3ZcmWXhSVotTg-pRza4PX', '[\"live-preview/preview\",{\"previewAction\":\"entries/preview-entry\",\"userId\":\"1\"}]', NULL, NULL, '2019-06-20 12:05:45', '2019-06-19 12:05:45', '2019-06-19 12:05:45', 'df7f32ac-8688-47f5-a0af-aae49891243d');

-- --------------------------------------------------------

--
-- Структура таблицы `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `userpermissions`
--

INSERT INTO `userpermissions` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'editimagesinvolume:6e81ee34-2320-4dee-961a-35451f6145cd', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '19dfe554-85c7-4404-800f-87c340bc6f49'),
(2, 'editimagesinvolume:1e7204c0-1b18-477d-b8a4-46bb7f7747d8', '2019-07-16 07:35:52', '2019-07-16 07:35:52', 'eaeadba4-d7bb-4997-b33f-b669ae67c8ab'),
(3, 'editimagesinvolume:fb16c06d-aaef-4083-92ef-e96020eba3a9', '2019-07-16 07:35:52', '2019-07-16 07:35:52', '3c9c283a-678c-4999-b855-2f7f8ca0843f'),
(4, 'editimagesinvolume:97df0c36-e966-426e-9687-ea1f854a2ec6', '2019-07-16 07:35:52', '2019-07-16 07:35:52', 'c092e2d5-c17f-460c-9c43-f66f887737c1');

-- --------------------------------------------------------

--
-- Структура таблицы `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin-craft', NULL, NULL, NULL, 'lutiks2013@gmail.com', '$2y$13$ZQlu/csX1Ij8njXw5uVRwOUeUVHjmGWAQB7K2548sIvCk/3vFODWe', 1, 0, 0, 0, '2019-07-29 15:11:31', NULL, NULL, NULL, '2019-07-01 07:38:11', NULL, 1, NULL, NULL, NULL, 0, '2019-06-11 15:11:28', '2019-06-11 15:11:28', '2019-07-29 15:11:31', 'eb3bf591-f202-47ab-813f-02bd96463df1');

-- --------------------------------------------------------

--
-- Структура таблицы `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, NULL, 'Temporary source', NULL, '2019-06-13 12:45:42', '2019-06-13 12:45:42', '5a03dd7d-f697-4ffb-8816-9b65f3d702e9'),
(2, 1, NULL, 'user_1', 'user_1/', '2019-06-13 12:45:42', '2019-06-13 12:45:42', 'd3d80021-3bed-49a4-9924-83fc40a6c131'),
(3, NULL, 1, 'Image', '', '2019-06-18 14:29:34', '2019-07-29 13:18:01', 'bf11d6d0-4378-4957-a150-18dbc1d691f1'),
(4, NULL, 2, 'Logo', '', '2019-06-18 14:29:49', '2019-07-16 14:55:32', '55ef0965-0860-4ec4-86d3-70be9ed76378'),
(5, 3, 1, 'craftcalculator', 'craftcalculator/', '2019-06-19 11:54:31', '2019-06-19 11:54:31', '714b2299-2445-42cb-a69d-7397097e3971'),
(6, 5, 1, 'web', 'craftcalculator/web/', '2019-06-19 11:54:31', '2019-06-19 11:54:31', '5ea4ad61-7f44-467c-bb69-5e2dada4cee8'),
(7, 6, 1, 'assets', 'craftcalculator/web/assets/', '2019-06-19 11:54:31', '2019-06-19 11:54:31', 'cdbf980c-cc30-456d-8e23-f7efe7a62b1d'),
(8, 7, 1, 'images', 'craftcalculator/web/assets/images/', '2019-06-19 11:54:31', '2019-06-19 11:54:31', '11e0f7b4-2b69-49ec-9748-ef55b6e92414'),
(9, 4, 2, 'craftcalculator', 'craftcalculator/', '2019-06-19 11:54:31', '2019-06-19 11:54:31', '7b1bcb3a-6ef1-4f09-85d4-9361edaab684'),
(10, 9, 2, 'web', 'craftcalculator/web/', '2019-06-19 11:54:31', '2019-06-19 11:54:31', 'ec3189c9-0e74-447f-92f2-eb2017d922e9'),
(11, 10, 2, 'assets', 'craftcalculator/web/assets/', '2019-06-19 11:54:31', '2019-06-19 11:54:31', 'cbd55b47-185c-4275-b4ac-9d8fb36d9d34'),
(12, 11, 2, 'logo', 'craftcalculator/web/assets/logo/', '2019-06-19 11:54:31', '2019-06-19 11:54:31', 'a13cb17a-312f-4421-b8a2-7637afbe9407'),
(13, NULL, 3, 'Stars', '', '2019-07-04 12:49:51', '2019-07-16 14:55:50', 'e77f5c35-a2ac-4c4a-a204-6c79b6d7bf1a'),
(14, NULL, 4, 'Dollars', '', '2019-07-04 12:50:31', '2019-07-16 14:56:51', 'f988a6b6-c5d4-4a64-85b5-3918518fc502');

-- --------------------------------------------------------

--
-- Структура таблицы `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Image', 'image', 'craft\\volumes\\Local', 1, '@web/assets/images', '{\"path\":\"assets/images\"}', 1, '2019-06-18 14:29:34', '2019-07-29 13:18:01', NULL, '6e81ee34-2320-4dee-961a-35451f6145cd'),
(2, NULL, 'Logo', 'logo', 'craft\\volumes\\Local', 1, '@web/assets/logo/', '{\"path\":\"@web/assets/logo/\"}', 2, '2019-06-18 14:29:49', '2019-07-16 14:55:32', NULL, '1e7204c0-1b18-477d-b8a4-46bb7f7747d8'),
(3, NULL, 'Stars', 'stars', 'craft\\volumes\\Local', 1, '@web/assets/stars', '{\"path\":\"@web/assets/stars\"}', 3, '2019-07-04 12:49:51', '2019-07-16 14:55:50', NULL, 'fb16c06d-aaef-4083-92ef-e96020eba3a9'),
(4, NULL, 'Dollars', 'dollars', 'craft\\volumes\\Local', 1, '@web/assets/dollars', '{\"path\":\"@web/assets/dollars\"}', 4, '2019-07-04 12:50:31', '2019-07-16 14:56:51', NULL, '97df0c36-e966-426e-9687-ea1f854a2ec6');

-- --------------------------------------------------------

--
-- Структура таблицы `wheelform_forms`
--

CREATE TABLE `wheelform_forms` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `to_email` varchar(255) NOT NULL,
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `send_email` tinyint(3) NOT NULL DEFAULT '0',
  `recaptcha` tinyint(3) NOT NULL DEFAULT '0',
  `save_entry` tinyint(3) NOT NULL DEFAULT '1',
  `options` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wheelform_forms`
--

INSERT INTO `wheelform_forms` (`id`, `site_id`, `name`, `to_email`, `active`, `send_email`, `recaptcha`, `save_entry`, `options`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Contact Form', 'valentynd91@gmail.com', 1, 1, 0, 1, '{\"honeypot\":\"\",\"email_subject\":\"\",\"user_notification\":0}', '2019-07-08 14:21:52', '2019-07-16 16:16:38', 'a4feb87b-accc-4b11-8841-f05e3f0443e3');

-- --------------------------------------------------------

--
-- Структура таблицы `wheelform_form_fields`
--

CREATE TABLE `wheelform_form_fields` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `required` tinyint(3) NOT NULL DEFAULT '0',
  `index_view` tinyint(3) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `options` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wheelform_form_fields`
--

INSERT INTO `wheelform_form_fields` (`id`, `form_id`, `name`, `type`, `required`, `index_view`, `order`, `active`, `options`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'email', 'email', 1, 0, 2, 1, '{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"is_reply_to\":false,\"placeholder\":\"\",\"is_user_notification_field\":false}', '2019-07-08 14:21:52', '2019-07-16 15:10:19', '9f698d0a-017c-405f-9940-17926bef1c8a'),
(2, 1, 'name', 'text', 1, 0, 1, 1, '{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"placeholder\":\"\"}', '2019-07-08 14:21:52', '2019-07-16 15:10:19', 'edfe0cba-c6ef-4454-beb6-c5bcba3d9ae3'),
(3, 1, 'subject', 'text', 0, 0, 4, 1, '{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\",\"placeholder\":\"\"}', '2019-07-08 14:21:52', '2019-07-16 15:38:10', '6ceba8f1-c694-4b58-83ae-66d3efc1551d'),
(4, 1, 'phone', 'number', 0, 0, 3, 0, '{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\"}', '2019-07-16 15:38:10', '2019-07-16 16:16:38', 'fd5fec3b-6ed6-4cc7-bf95-43833aeb06da'),
(5, 1, 'phone', 'number', 0, 0, 3, 0, '{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\"}', '2019-07-16 15:38:51', '2019-07-16 16:16:38', '7cca039f-3a48-47f1-a484-d8248454e8c5'),
(6, 1, 'phone', 'number', 0, 0, 3, 1, '{\"label\":\"\",\"containerClass\":\"\",\"fieldClass\":\"\"}', '2019-07-16 16:16:38', '2019-07-16 16:16:38', '8e9be85e-a3ef-4016-abed-34e2c4eea8af');

-- --------------------------------------------------------

--
-- Структура таблицы `wheelform_messages`
--

CREATE TABLE `wheelform_messages` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `read` tinyint(3) NOT NULL DEFAULT '0',
  `options` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wheelform_messages`
--

INSERT INTO `wheelform_messages` (`id`, `form_id`, `read`, `options`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, '2019-07-16 16:16:27', '2019-07-17 08:12:30', '91c707d4-71b2-4b99-a34c-c5c88bb84ddf'),
(2, 1, 1, NULL, '2019-07-16 16:17:08', '2019-07-17 08:12:26', 'ccf1be98-3905-46f0-9c10-0154bb2c95c2'),
(3, 1, 1, NULL, '2019-07-16 16:19:44', '2019-07-17 08:12:17', '2c92cb3c-aa49-4a0b-833a-a3ae2b860f2d'),
(4, 1, 1, NULL, '2019-07-16 16:22:56', '2019-07-17 08:12:10', '23d5eef6-1cfe-401d-8e22-59eea7fa6c12'),
(5, 1, 0, NULL, '2019-07-26 11:07:47', '2019-07-26 11:07:47', '1b4aebcb-61d6-4e4e-8fba-fb138ff95dc4');

-- --------------------------------------------------------

--
-- Структура таблицы `wheelform_message_values`
--

CREATE TABLE `wheelform_message_values` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wheelform_message_values`
--

INSERT INTO `wheelform_message_values` (`id`, `message_id`, `field_id`, `value`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 2, 'Valentyn', '2019-07-16 16:16:27', '2019-07-16 16:16:27', '5165f110-25fe-4b37-8a21-706eb8e54552'),
(2, 1, 1, 'netadmin@nelsonhr.com', '2019-07-16 16:16:27', '2019-07-16 16:16:27', '2bf4e5da-7be3-4243-8c29-6a415a7626ca'),
(3, 1, 5, '21212121212', '2019-07-16 16:16:27', '2019-07-16 16:16:27', 'deebc353-3164-4595-8527-3921e21f630c'),
(4, 1, 3, 'Vuetify Validation phone numberVuetify Validation phone number', '2019-07-16 16:16:27', '2019-07-16 16:16:27', '7f078332-61ce-47b7-a197-39c7f69efbff'),
(5, 2, 2, 'Valentyn', '2019-07-16 16:17:08', '2019-07-16 16:17:08', 'a6ee06bd-a6dd-47a0-9770-0fe0df7ba279'),
(6, 2, 1, 'netadmin@nelsonhr.com', '2019-07-16 16:17:09', '2019-07-16 16:17:09', '3a4c08f4-5ed4-45f5-9811-5a1cb144a38f'),
(7, 2, 6, '21212121212', '2019-07-16 16:17:09', '2019-07-16 16:17:09', '98472168-bd5a-4b21-b1f1-90a91105841e'),
(8, 2, 3, 'Vuetify Validation phone numberVuetify Validation phone number', '2019-07-16 16:17:09', '2019-07-16 16:17:09', 'db55922f-5f0d-4f38-b90b-43f149605491'),
(9, 3, 2, 'Valentyn', '2019-07-16 16:19:44', '2019-07-16 16:19:44', '0406f25d-e063-44ea-847e-6095cb7c7110'),
(10, 3, 1, 'netadmin@nelsonhr.com', '2019-07-16 16:19:44', '2019-07-16 16:19:44', 'c29d24a8-d30e-4976-900a-867393542c81'),
(11, 3, 6, '1122112', '2019-07-16 16:19:44', '2019-07-16 16:19:44', 'a6a6d1bf-d193-4bb8-bf35-a1ead55f31ee'),
(12, 3, 3, 'ThankYouThankYouThankYou', '2019-07-16 16:19:44', '2019-07-16 16:19:44', '86815844-7f22-4f35-8812-0ed8cd265cde'),
(13, 4, 2, 'Valentyn', '2019-07-16 16:22:56', '2019-07-16 16:22:56', '7ba6cca0-329a-42ac-9235-f2a4a93989d6'),
(14, 4, 1, 'netadmin@nelsonhr.com', '2019-07-16 16:22:56', '2019-07-16 16:22:56', 'a2e1fb72-637a-42f9-9693-28353bf7e46b'),
(15, 4, 6, '41414', '2019-07-16 16:22:56', '2019-07-16 16:22:56', 'c01006dc-abe8-48c5-a6ed-8e43d5fb6874'),
(16, 4, 3, 'pushpushpushpush', '2019-07-16 16:22:56', '2019-07-16 16:22:56', '69671d5a-c774-4e2c-b955-f5f433caa143'),
(17, 5, 2, 'Ludmila', '2019-07-26 11:07:47', '2019-07-26 11:07:47', '2eb087cb-022c-44f1-88a7-765830fa0112'),
(18, 5, 1, 'dwd@mail.com', '2019-07-26 11:07:47', '2019-07-26 11:07:47', '7f9f037c-9b80-4118-8292-71e47b6f6ad7'),
(19, 5, 6, '', '2019-07-26 11:07:47', '2019-07-26 11:07:47', '7d8a873a-827d-4f84-920a-f112fde5e476'),
(20, 5, 3, 'trety', '2019-07-26 11:07:47', '2019-07-26 11:07:47', '731c0811-618b-471d-9d77-f9d017c4ae22');

-- --------------------------------------------------------

--
-- Структура таблицы `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}', 1, '2019-06-11 15:11:30', '2019-06-11 15:11:30', '355ca9b7-c01e-4791-91f5-0e38bb502ddd'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2019-06-11 15:11:30', '2019-06-11 15:11:30', '561c5588-a536-4a29-adc3-5b1fa7d463ad'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2019-06-11 15:11:30', '2019-06-11 15:11:30', '59e20759-0146-426d-aab5-f2a2ecb1fcd6'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2019-06-11 15:11:30', '2019-06-11 15:11:30', '6d8e4608-db44-41d9-867b-4f0af8c8b57e');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  ADD KEY `assetindexdata_volumeId_idx` (`volumeId`);

--
-- Индексы таблицы `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_filename_folderId_idx` (`filename`,`folderId`),
  ADD KEY `assets_folderId_idx` (`folderId`),
  ADD KEY `assets_volumeId_idx` (`volumeId`);

--
-- Индексы таблицы `assettransformindex`
--
ALTER TABLE `assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`);

--
-- Индексы таблицы `assettransforms`
--
ALTER TABLE `assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `assettransforms_handle_unq_idx` (`handle`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_groupId_idx` (`groupId`),
  ADD KEY `categories_parentId_fk` (`parentId`);

--
-- Индексы таблицы `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorygroups_name_idx` (`name`),
  ADD KEY `categorygroups_handle_idx` (`handle`),
  ADD KEY `categorygroups_structureId_idx` (`structureId`),
  ADD KEY `categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `categorygroups_dateDeleted_idx` (`dateDeleted`);

--
-- Индексы таблицы `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  ADD KEY `categorygroups_sites_siteId_idx` (`siteId`);

--
-- Индексы таблицы `conditions_conditionalsrecord`
--
ALTER TABLE `conditions_conditionalsrecord`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `content_siteId_idx` (`siteId`),
  ADD KEY `content_title_idx` (`title`);

--
-- Индексы таблицы `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craftidtokens_userId_fk` (`userId`);

--
-- Индексы таблицы `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Индексы таблицы `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drafts_creatorId_fk` (`creatorId`),
  ADD KEY `drafts_sourceId_fk` (`sourceId`);

--
-- Индексы таблицы `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elementindexsettings_type_unq_idx` (`type`);

--
-- Индексы таблицы `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elements_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `elements_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `elements_type_idx` (`type`),
  ADD KEY `elements_enabled_idx` (`enabled`),
  ADD KEY `elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  ADD KEY `elements_draftId_fk` (`draftId`),
  ADD KEY `elements_revisionId_fk` (`revisionId`);

--
-- Индексы таблицы `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `elements_sites_siteId_idx` (`siteId`),
  ADD KEY `elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  ADD KEY `elements_sites_enabled_idx` (`enabled`),
  ADD KEY `elements_sites_uri_siteId_idx` (`uri`,`siteId`);

--
-- Индексы таблицы `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entries_postDate_idx` (`postDate`),
  ADD KEY `entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `entries_authorId_idx` (`authorId`),
  ADD KEY `entries_sectionId_idx` (`sectionId`),
  ADD KEY `entries_typeId_idx` (`typeId`),
  ADD KEY `entries_parentId_fk` (`parentId`);

--
-- Индексы таблицы `entrydrafterrors`
--
ALTER TABLE `entrydrafterrors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrydrafterrors_draftId_fk` (`draftId`);

--
-- Индексы таблицы `entrydrafts`
--
ALTER TABLE `entrydrafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrydrafts_sectionId_idx` (`sectionId`),
  ADD KEY `entrydrafts_entryId_siteId_idx` (`entryId`,`siteId`),
  ADD KEY `entrydrafts_siteId_idx` (`siteId`),
  ADD KEY `entrydrafts_creatorId_idx` (`creatorId`);

--
-- Индексы таблицы `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  ADD KEY `entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  ADD KEY `entrytypes_sectionId_idx` (`sectionId`),
  ADD KEY `entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `entrytypes_dateDeleted_idx` (`dateDeleted`);

--
-- Индексы таблицы `entryversionerrors`
--
ALTER TABLE `entryversionerrors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entryversionerrors_versionId_fk` (`versionId`);

--
-- Индексы таблицы `entryversions`
--
ALTER TABLE `entryversions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entryversions_sectionId_idx` (`sectionId`),
  ADD KEY `entryversions_entryId_siteId_idx` (`entryId`,`siteId`),
  ADD KEY `entryversions_siteId_idx` (`siteId`),
  ADD KEY `entryversions_creatorId_idx` (`creatorId`);

--
-- Индексы таблицы `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fieldgroups_name_unq_idx` (`name`);

--
-- Индексы таблицы `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayoutfields_tabId_idx` (`tabId`),
  ADD KEY `fieldlayoutfields_fieldId_idx` (`fieldId`);

--
-- Индексы таблицы `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `fieldlayouts_type_idx` (`type`);

--
-- Индексы таблицы `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayouttabs_layoutId_idx` (`layoutId`);

--
-- Индексы таблицы `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `fields_groupId_idx` (`groupId`),
  ADD KEY `fields_context_idx` (`context`);

--
-- Индексы таблицы `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globalsets_name_idx` (`name`),
  ADD KEY `globalsets_handle_idx` (`handle`),
  ADD KEY `globalsets_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Индексы таблицы `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `matrixblocks_sortOrder_idx` (`sortOrder`);

--
-- Индексы таблицы `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `matrixblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Индексы таблицы `matrixcontent_answer`
--
ALTER TABLE `matrixcontent_answer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_answer_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_answer_siteId_fk` (`siteId`);

--
-- Индексы таблицы `matrixcontent_button`
--
ALTER TABLE `matrixcontent_button`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_button_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_button_siteId_fk` (`siteId`);

--
-- Индексы таблицы `matrixcontent_comparisonsitems`
--
ALTER TABLE `matrixcontent_comparisonsitems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_comparisonsitems_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_comparisonsitems_siteId_idx` (`siteId`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `migrations_pluginId_idx` (`pluginId`),
  ADD KEY `migrations_type_pluginId_idx` (`type`,`pluginId`);

--
-- Индексы таблицы `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugins_handle_unq_idx` (`handle`);

--
-- Индексы таблицы `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_fail_timeUpdated_timePushed_idx` (`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `queue_fail_timeUpdated_delay_idx` (`fail`,`timeUpdated`,`delay`);

--
-- Индексы таблицы `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `relations_sourceId_idx` (`sourceId`),
  ADD KEY `relations_targetId_idx` (`targetId`),
  ADD KEY `relations_sourceSiteId_idx` (`sourceSiteId`);

--
-- Индексы таблицы `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Индексы таблицы `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  ADD KEY `revisions_creatorId_fk` (`creatorId`);

--
-- Индексы таблицы `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `searchindex_keywords_idx` (`keywords`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_handle_idx` (`handle`),
  ADD KEY `sections_name_idx` (`name`),
  ADD KEY `sections_structureId_idx` (`structureId`),
  ADD KEY `sections_dateDeleted_idx` (`dateDeleted`);

--
-- Индексы таблицы `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  ADD KEY `sections_sites_siteId_idx` (`siteId`);

--
-- Индексы таблицы `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_uid_idx` (`uid`),
  ADD KEY `sessions_token_idx` (`token`),
  ADD KEY `sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `sessions_userId_idx` (`userId`);

--
-- Индексы таблицы `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Индексы таблицы `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sitegroups_name_idx` (`name`);

--
-- Индексы таблицы `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sites_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `sites_handle_idx` (`handle`),
  ADD KEY `sites_sortOrder_idx` (`sortOrder`),
  ADD KEY `sites_groupId_fk` (`groupId`);

--
-- Индексы таблицы `stc_8_pointstable`
--
ALTER TABLE `stc_8_pointstable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stc_8_pointstable_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `stc_8_pointstable_siteId_idx` (`siteId`);

--
-- Индексы таблицы `stc_9_comparisons`
--
ALTER TABLE `stc_9_comparisons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stc_9_comparisons_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `stc_9_comparisons_siteId_idx` (`siteId`);

--
-- Индексы таблицы `stc_infowithsharelink`
--
ALTER TABLE `stc_infowithsharelink`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stc_infowithsharelink_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `stc_infowithsharelink_siteId_fk` (`siteId`);

--
-- Индексы таблицы `stc_platform`
--
ALTER TABLE `stc_platform`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stc_platform_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `stc_platform_siteId_fk` (`siteId`);

--
-- Индексы таблицы `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `structureelements_root_idx` (`root`),
  ADD KEY `structureelements_lft_idx` (`lft`),
  ADD KEY `structureelements_rgt_idx` (`rgt`),
  ADD KEY `structureelements_level_idx` (`level`),
  ADD KEY `structureelements_elementId_idx` (`elementId`);

--
-- Индексы таблицы `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `structures_dateDeleted_idx` (`dateDeleted`);

--
-- Индексы таблицы `supertableblocks`
--
ALTER TABLE `supertableblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supertableblocks_ownerId_idx` (`ownerId`),
  ADD KEY `supertableblocks_fieldId_idx` (`fieldId`),
  ADD KEY `supertableblocks_typeId_idx` (`typeId`),
  ADD KEY `supertableblocks_sortOrder_idx` (`sortOrder`);

--
-- Индексы таблицы `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supertableblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `supertableblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Индексы таблицы `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `systemmessages_key_language_unq_idx` (`key`,`language`),
  ADD KEY `systemmessages_language_idx` (`language`);

--
-- Индексы таблицы `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggroups_name_idx` (`name`),
  ADD KEY `taggroups_handle_idx` (`handle`),
  ADD KEY `taggroups_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_groupId_idx` (`groupId`);

--
-- Индексы таблицы `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD KEY `templatecacheelements_cacheId_idx` (`cacheId`),
  ADD KEY `templatecacheelements_elementId_idx` (`elementId`);

--
-- Индексы таблицы `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecachequeries_cacheId_idx` (`cacheId`),
  ADD KEY `templatecachequeries_type_idx` (`type`);

--
-- Индексы таблицы `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `templatecaches_siteId_idx` (`siteId`);

--
-- Индексы таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unq_idx` (`token`),
  ADD KEY `tokens_expiryDate_idx` (`expiryDate`);

--
-- Индексы таблицы `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usergroups_handle_unq_idx` (`handle`),
  ADD UNIQUE KEY `usergroups_name_unq_idx` (`name`);

--
-- Индексы таблицы `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `usergroups_users_userId_idx` (`userId`);

--
-- Индексы таблицы `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_name_unq_idx` (`name`);

--
-- Индексы таблицы `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `userpermissions_usergroups_groupId_idx` (`groupId`);

--
-- Индексы таблицы `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `userpermissions_users_userId_idx` (`userId`);

--
-- Индексы таблицы `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_uid_idx` (`uid`),
  ADD KEY `users_verificationCode_idx` (`verificationCode`),
  ADD KEY `users_email_idx` (`email`),
  ADD KEY `users_username_idx` (`username`),
  ADD KEY `users_photoId_fk` (`photoId`);

--
-- Индексы таблицы `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  ADD KEY `volumefolders_parentId_idx` (`parentId`),
  ADD KEY `volumefolders_volumeId_idx` (`volumeId`);

--
-- Индексы таблицы `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volumes_name_idx` (`name`),
  ADD KEY `volumes_handle_idx` (`handle`),
  ADD KEY `volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `volumes_dateDeleted_idx` (`dateDeleted`);

--
-- Индексы таблицы `wheelform_forms`
--
ALTER TABLE `wheelform_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wheelform_forms_site_id_fk` (`site_id`);

--
-- Индексы таблицы `wheelform_form_fields`
--
ALTER TABLE `wheelform_form_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wheelform_form_fields_active_idx` (`active`),
  ADD KEY `wheelform_form_fields_form_id_fk` (`form_id`);

--
-- Индексы таблицы `wheelform_messages`
--
ALTER TABLE `wheelform_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wheelform_messages_form_id_fk` (`form_id`);

--
-- Индексы таблицы `wheelform_message_values`
--
ALTER TABLE `wheelform_message_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wheelform_message_values_message_id_fk` (`message_id`),
  ADD KEY `wheelform_message_values_field_id_fk` (`field_id`);

--
-- Индексы таблицы `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widgets_userId_idx` (`userId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `assettransformindex`
--
ALTER TABLE `assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `assettransforms`
--
ALTER TABLE `assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `conditions_conditionalsrecord`
--
ALTER TABLE `conditions_conditionalsrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT для таблицы `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=886;

--
-- AUTO_INCREMENT для таблицы `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=886;

--
-- AUTO_INCREMENT для таблицы `entrydrafterrors`
--
ALTER TABLE `entrydrafterrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `entrydrafts`
--
ALTER TABLE `entrydrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `entryversionerrors`
--
ALTER TABLE `entryversionerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `entryversions`
--
ALTER TABLE `entryversions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT для таблицы `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT для таблицы `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT для таблицы `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `matrixcontent_answer`
--
ALTER TABLE `matrixcontent_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `matrixcontent_button`
--
ALTER TABLE `matrixcontent_button`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `matrixcontent_comparisonsitems`
--
ALTER TABLE `matrixcontent_comparisonsitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT для таблицы `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=906;

--
-- AUTO_INCREMENT для таблицы `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1630;

--
-- AUTO_INCREMENT для таблицы `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT для таблицы `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `stc_8_pointstable`
--
ALTER TABLE `stc_8_pointstable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT для таблицы `stc_9_comparisons`
--
ALTER TABLE `stc_9_comparisons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT для таблицы `stc_infowithsharelink`
--
ALTER TABLE `stc_infowithsharelink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `stc_platform`
--
ALTER TABLE `stc_platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `templatecaches`
--
ALTER TABLE `templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wheelform_forms`
--
ALTER TABLE `wheelform_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wheelform_form_fields`
--
ALTER TABLE `wheelform_form_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wheelform_messages`
--
ALTER TABLE `wheelform_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wheelform_message_values`
--
ALTER TABLE `wheelform_message_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `entrydrafterrors`
--
ALTER TABLE `entrydrafterrors`
  ADD CONSTRAINT `entrydrafterrors_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `entrydrafts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `entrydrafts`
--
ALTER TABLE `entrydrafts`
  ADD CONSTRAINT `entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entrydrafts_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `entryversionerrors`
--
ALTER TABLE `entryversionerrors`
  ADD CONSTRAINT `entryversionerrors_versionId_fk` FOREIGN KEY (`versionId`) REFERENCES `entryversions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `entryversions`
--
ALTER TABLE `entryversions`
  ADD CONSTRAINT `entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entryversions_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `matrixcontent_answer`
--
ALTER TABLE `matrixcontent_answer`
  ADD CONSTRAINT `matrixcontent_answer_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_answer_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `matrixcontent_button`
--
ALTER TABLE `matrixcontent_button`
  ADD CONSTRAINT `matrixcontent_button_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_button_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `matrixcontent_comparisonsitems`
--
ALTER TABLE `matrixcontent_comparisonsitems`
  ADD CONSTRAINT `matrixcontent_comparisonsitems_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_comparisonsitems_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD CONSTRAINT `migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `stc_8_pointstable`
--
ALTER TABLE `stc_8_pointstable`
  ADD CONSTRAINT `stc_8_pointstable_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stc_8_pointstable_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `stc_9_comparisons`
--
ALTER TABLE `stc_9_comparisons`
  ADD CONSTRAINT `stc_9_comparisons_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stc_9_comparisons_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `stc_infowithsharelink`
--
ALTER TABLE `stc_infowithsharelink`
  ADD CONSTRAINT `stc_infowithsharelink_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stc_infowithsharelink_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `stc_platform`
--
ALTER TABLE `stc_platform`
  ADD CONSTRAINT `stc_platform_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stc_platform_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `supertableblocks`
--
ALTER TABLE `supertableblocks`
  ADD CONSTRAINT `supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `supertableblocktypes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `supertableblocktypes`
--
ALTER TABLE `supertableblocktypes`
  ADD CONSTRAINT `supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD CONSTRAINT `templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `wheelform_forms`
--
ALTER TABLE `wheelform_forms`
  ADD CONSTRAINT `wheelform_forms_site_id_fk` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wheelform_form_fields`
--
ALTER TABLE `wheelform_form_fields`
  ADD CONSTRAINT `wheelform_form_fields_form_id_fk` FOREIGN KEY (`form_id`) REFERENCES `wheelform_forms` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wheelform_messages`
--
ALTER TABLE `wheelform_messages`
  ADD CONSTRAINT `wheelform_messages_form_id_fk` FOREIGN KEY (`form_id`) REFERENCES `wheelform_forms` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `wheelform_message_values`
--
ALTER TABLE `wheelform_message_values`
  ADD CONSTRAINT `wheelform_message_values_field_id_fk` FOREIGN KEY (`field_id`) REFERENCES `wheelform_form_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wheelform_message_values_message_id_fk` FOREIGN KEY (`message_id`) REFERENCES `wheelform_messages` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
