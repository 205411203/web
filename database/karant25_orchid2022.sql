-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2022 at 09:54 AM
-- Server version: 5.7.40
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karant25_orchid2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachmentable`
--

CREATE TABLE `attachmentable` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachmentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachmentable_id` int(10) UNSIGNED NOT NULL,
  `attachment_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `hash` text COLLATE utf8mb4_unicode_ci,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `name`, `original_name`, `mime`, `extension`, `size`, `sort`, `path`, `description`, `alt`, `hash`, `disk`, `user_id`, `group`, `created_at`, `updated_at`) VALUES
(1, '9cec0bb09a7d00457239ca8b13164895c159b890', 'blob', 'image/png', 'png', 745287, 0, '2022/07/25/', NULL, NULL, '5f5611921af7bc61d14ff1f919fe59722eea799d', 'public', 1, NULL, '2022-07-24 23:12:36', '2022-07-24 23:12:36'),
(2, 'f79679aadcb1a665f8228120e61507ccd6980eb6', 'blob', 'image/png', 'png', 765237, 0, '2022/07/25/', NULL, NULL, '577c18dfcb037650bfcfe05b3a54dd909e1bda92', 'public', 1, NULL, '2022-07-24 23:14:02', '2022-07-24 23:14:02'),
(3, '0551cd4ff26ea886cbe16f60c5d14e3492cfe73b', 'blob', 'image/png', 'png', 631653, 0, '2022/07/25/', NULL, NULL, '5c04a8df5feac9dad1eac924132b33b32777943c', 'public', 1, NULL, '2022-07-24 23:27:16', '2022-07-24 23:27:16'),
(4, '97d9cec19eff5e90f39762f34ddaa79d019c113d', 'sirup.png', 'image/png', 'png', 2388, 0, '2022/07/25/', NULL, NULL, 'c3b3dba3d0a3f6a474460e5dbc6eb277655ff6e0', 'public', 1, NULL, '2022-07-24 23:27:50', '2022-07-24 23:27:50'),
(5, '1a2545f9b2642542a21b93998c6e5ba9281cc28b', 'ekspor rempah.jpg', 'image/jpeg', 'jpg', 655587, 0, '2022/07/25/', NULL, NULL, '643b2258f19a3b7f85d860dd3ae9eb45f57983b0', 'public', 1, NULL, '2022-07-24 23:28:04', '2022-07-24 23:28:04'),
(6, '077be8d2cb9899e90c767090fbb5a69d3c07ab17', 'hakordia2.jpg', 'image/jpeg', 'jpg', 184465, 0, '2022/07/25/', NULL, NULL, '88f52d1bca1407facf16cbb2754a374e02a7f19c', 'public', 1, NULL, '2022-07-24 23:31:03', '2022-07-24 23:31:03'),
(7, '1fc22dae2560782107c929b951322c8f65d9d514', 'blob', 'image/png', 'png', 724776, 0, '2022/07/25/', NULL, NULL, 'a3b72e15e2cdfb8cbb9a824535fd7dbcb6b0c3df', 'public', 1, NULL, '2022-07-24 23:34:23', '2022-07-24 23:34:23'),
(8, 'ab11070d59f3b0ced196a881e72c6c25a47ea57e', 'blob', 'image/png', 'png', 493429, 0, '2022/07/26/', NULL, NULL, '59513c4417376b1dac538873cbedb969f4d0c995', 'public', 1, NULL, '2022-07-25 19:49:05', '2022-07-25 19:49:05'),
(9, '85516f50283b3af4e0d1d4a5650c63aab8ea9867', 'blob', 'image/png', 'png', 465571, 0, '2022/07/26/', NULL, NULL, '7ae91688b5cac1fa41340d2992da53a82e54efc1', 'public', 1, NULL, '2022-07-25 19:51:19', '2022-07-25 19:51:19'),
(10, '7abac18e28a4077dfce309becce6f1b471bc2386', 'blob', 'image/png', 'png', 688870, 0, '2022/07/26/', NULL, NULL, '63de55151a33db15ef0cbe0e986a7f35f21bc031', 'public', 1, NULL, '2022-07-25 19:53:43', '2022-07-25 19:53:43'),
(11, '85596b4717d72b080784834def5f8c770a9212b2', 'blob', 'image/png', 'png', 703319, 0, '2022/07/26/', NULL, NULL, 'aa3d386703a7c75c902da5765572f7a408d94bbd', 'public', 1, NULL, '2022-07-25 19:55:05', '2022-07-25 19:55:05'),
(12, '32c1f5d2a6bb4e433886768ccc5c2422f9aab5a5', 'blob', 'image/png', 'png', 69790, 0, '2022/07/27/', NULL, NULL, '8f04cbee9a6822e43e32fafbc6d45e10b3ff5794', 'public', 1, NULL, '2022-07-26 23:09:35', '2022-07-26 23:09:35'),
(13, '9c5835b110eabf7d2ea08a68219424994f27d050', 'blob', 'image/png', 'png', 75225, 0, '2022/07/27/', NULL, NULL, 'dd046c9b89632d76cb9633331aaf5659670648b6', 'public', 1, NULL, '2022-07-26 23:12:28', '2022-07-26 23:12:28'),
(14, '45d8a72a0cc9f60ee1258f749379e32b5f753ef7', 'blob', 'image/png', 'png', 69697, 0, '2022/07/27/', NULL, NULL, '43f45fba804795dd4b33a8e313e792e4e0a315f2', 'public', 1, NULL, '2022-07-26 23:14:27', '2022-07-26 23:14:27'),
(15, '108685b951ad9a0b8de8a831b14488bdac817507', 'blob', 'image/png', 'png', 70065, 0, '2022/07/27/', NULL, NULL, 'a680cd2e183d73ba65f883185727b0b380cf89f0', 'public', 1, NULL, '2022-07-26 23:15:40', '2022-07-26 23:15:40'),
(16, '1da91a5d89b554a138c2a55bd4415c8a79636180', 'blob', 'image/png', 'png', 72053, 0, '2022/07/27/', NULL, NULL, '0f4888f86309b6aae17c29ec690e62dc9a6f230d', 'public', 1, NULL, '2022-07-26 23:49:19', '2022-07-26 23:49:19'),
(17, '3bb98959fb9b57edc2c6c40323924ae912cd3422', 'blob', 'image/png', 'png', 54624, 0, '2022/07/27/', NULL, NULL, '4f451cbf6c8e7076267d8bdb061c03a569ac55fb', 'public', 1, NULL, '2022-07-27 01:33:18', '2022-07-27 01:33:18'),
(18, 'd7cea8f659bd3afcaab79871dfbb4496be385ca2', 'blob', 'image/png', 'png', 42232, 0, '2022/07/28/', NULL, NULL, '7e4b43bfe4963f93965b110ea5479c3ff928dd08', 'public', 1, NULL, '2022-07-27 18:43:47', '2022-07-27 18:43:47'),
(19, 'f247eed4487d3eab553eed6ba40b3aeaae9b7bff', 'blob', 'image/png', 'png', 44361, 0, '2022/07/28/', NULL, NULL, 'dff4a3f0531108c2fc5f5262bd9517dd88d9d378', 'public', 1, NULL, '2022-07-27 18:45:38', '2022-07-27 18:45:38'),
(20, '73680242b7e9eb1820a98f5092fd3a83a21ab79f', 'blob', 'image/png', 'png', 22629, 0, '2022/07/28/', NULL, NULL, '7bd5f859a5cc1c71c5fc018fc3fdfcc63a131719', 'public', 1, NULL, '2022-07-27 19:12:57', '2022-07-27 19:12:57'),
(21, '005f07d703acfcc30741e943dd114f19f901c4d2', 'blob', 'image/png', 'png', 459564, 0, '2022/07/28/', NULL, NULL, 'c37f012eef21d0a67584167554ce560d4300665f', 'public', 1, NULL, '2022-07-28 01:18:05', '2022-07-28 01:18:05'),
(22, '8cc5039a57adbc7a0398911496a632a26173aaf3', 'blob', 'image/png', 'png', 594131, 0, '2022/07/28/', NULL, NULL, '465686ab0bb8a3bb5cb4e2c5bd779a358d2de5a9', 'public', 1, NULL, '2022-07-28 01:31:50', '2022-07-28 01:31:50'),
(23, 'c9b856486518a93b60b025157641dc42163e4a13', 'blob', 'image/png', 'png', 26157, 0, '2022/08/02/', NULL, NULL, 'f61f4727601cab21622162c4ac0e67cc830bdecf', 'public', 1, NULL, '2022-08-01 18:27:02', '2022-08-01 18:27:02'),
(24, '80444fd2df34ded0fe27d05b63fdc7418a996dfd', 'blob', 'image/png', 'png', 26092, 0, '2022/08/02/', NULL, NULL, '6ff40268ffa57ff2c09aba521b23b99af34bf507', 'public', 1, NULL, '2022-08-01 19:18:23', '2022-08-01 19:18:23'),
(25, '848961eed2425c5c5769c096a2e8d63eed0175cd', 'blob', 'image/png', 'png', 26093, 0, '2022/08/02/', NULL, NULL, '61fd06743b3da3e79dc8dfd68ec825e5e63ee737', 'public', 1, NULL, '2022-08-01 19:20:21', '2022-08-01 19:20:21'),
(26, 'b7f0c091d25aa088f8aba73ba025ab0fd20ea4a2', 'blob', 'image/png', 'png', 25180, 0, '2022/08/02/', NULL, NULL, '9221509a7d65b551e93a36fc8e865152e7c7b6b9', 'public', 1, NULL, '2022-08-01 20:09:51', '2022-08-01 20:09:51'),
(27, 'c2ebe715b86a49c36b59fa00b4338cd6f7d57900', 'blob', 'image/png', 'png', 25038, 0, '2022/08/02/', NULL, NULL, 'e1f329a8c6ea8cfbab8d9cb178e8cdf36ae518e2', 'public', 1, NULL, '2022-08-01 20:14:39', '2022-08-01 20:14:39'),
(28, 'e5f7087c40dc9155a6829cb39561c8b713c4a66c', 'blob', 'image/png', 'png', 25032, 0, '2022/08/02/', NULL, NULL, '662c517c6757666c8141f378b2b22270c49461a3', 'public', 1, NULL, '2022-08-01 20:16:35', '2022-08-01 20:16:35'),
(29, 'c2ebe715b86a49c36b59fa00b4338cd6f7d57900', 'blob', 'image/png', 'png', 25038, 0, '2022/08/02/', NULL, NULL, 'e1f329a8c6ea8cfbab8d9cb178e8cdf36ae518e2', 'public', 1, NULL, '2022-08-01 20:19:55', '2022-08-01 20:19:55'),
(30, '215ea75c5886931a8388ac54b9e7659a6ea30d9c', 'blob', 'image/png', 'png', 176150, 0, '2022/08/04/', NULL, NULL, '437bee06ef00ffc90232d64f581e99cecd8c0a95', 'public', 1, NULL, '2022-08-04 01:28:40', '2022-08-04 01:28:40'),
(31, 'bef391d364fce089ea39affc08ce12ae3aee9e5f', 'blob', 'image/png', 'png', 539722, 0, '2022/08/04/', NULL, NULL, '2fd83069ef205501732e6475b44e9f381a56ed19', 'public', 1, NULL, '2022-08-04 01:44:47', '2022-08-04 01:44:47'),
(32, '854dadec969ce0c8d870030cbcb82bdde2cbaad3', 'blob', 'image/png', 'png', 517136, 0, '2022/08/05/', NULL, NULL, 'fae6316305b9fcb978177bd4ae127302b6f7ebb4', 'public', 1, NULL, '2022-08-04 21:47:02', '2022-08-04 21:47:02'),
(33, 'eac4dc5f50f4b9cd3e247b0dfbf3b6ca06860284', 'blob', 'image/png', 'png', 399302, 0, '2022/08/05/', NULL, NULL, '5275a86300e278abc568e0252c5c5aa7eb1ad26d', 'public', 1, NULL, '2022-08-05 00:22:51', '2022-08-05 00:22:51'),
(34, '65b888ad9ec5c4633ad453affc0b9850db558728', 'blob', 'image/png', 'png', 367994, 0, '2022/08/05/', NULL, NULL, '62905b5b26fb18bde5964d540b4d70b244808ab7', 'public', 1, NULL, '2022-08-05 00:50:50', '2022-08-05 00:50:50'),
(35, '9f77679e4b179e7b205517de5a073a75ea764a13', 'blob', 'image/png', 'png', 447069, 0, '2022/08/08/', NULL, NULL, '404d8d9c0ebf8e37bf666e3b42900a4207eebf87', 'public', 1, NULL, '2022-08-07 19:21:51', '2022-08-07 19:21:51'),
(36, 'cd21e63061356ae57b546aeb14cc02129aa5e61a', 'blob', 'image/png', 'png', 587753, 0, '2022/08/08/', NULL, NULL, '9f285b7e4dac8177bb43da208301259f807ec2b7', 'public', 1, NULL, '2022-08-07 19:23:00', '2022-08-07 19:23:00'),
(37, '20f278e9774890ccdb980258b1031be062dfaf24', 'blob', 'image/png', 'png', 388732, 0, '2022/08/08/', NULL, NULL, '11192e7dfbc4609af156e8e5316d179e537057f7', 'public', 1, NULL, '2022-08-07 19:24:01', '2022-08-07 19:24:01'),
(38, '3ab8bc517e4498a12219892715952a13bfb95463', 'blob', 'image/png', 'png', 628616, 0, '2022/08/08/', NULL, NULL, '26b2622ede1d7104bfb78cd93b746709ed309f2c', 'public', 1, NULL, '2022-08-07 19:24:37', '2022-08-07 19:24:37'),
(39, '7cd33a108d25a54ca9af2680f327daedcb37d68b', 'blob', 'image/png', 'png', 735789, 0, '2022/08/08/', NULL, NULL, 'fd9f6abb7362e420f84db4f500db80fbb9ac2087', 'public', 1, NULL, '2022-08-07 19:25:17', '2022-08-07 19:25:17'),
(40, '5901502c9b6490e33aef21517e37ee823e2614aa', 'blob', 'image/png', 'png', 700223, 0, '2022/08/08/', NULL, NULL, '19c685218aa6b9038b47787d90bdd5b6e873aa19', 'public', 1, NULL, '2022-08-07 19:27:42', '2022-08-07 19:27:42'),
(41, '9dc3322400b4e756c1b6be2a840e1e043f63c130', 'blob', 'image/png', 'png', 342877, 0, '2022/08/08/', NULL, NULL, '833854287ea360df16ee0300c88f56eb5f56d16b', 'public', 1, NULL, '2022-08-07 22:54:07', '2022-08-07 22:54:07'),
(42, '1002fd049abf8a1713a8ffd2b5c30f37d58f3cfd', 'blob', 'image/png', 'png', 307408, 0, '2022/08/10/', NULL, NULL, 'e0828395737176b87ab9f429af45b7b11cd2cdb8', 'public', 1, NULL, '2022-08-09 22:54:51', '2022-08-09 22:54:51'),
(43, '9d10abbd859a2d20312d00e83530664cb40e5182', '_MG_3436 copy.jpg', 'image/jpeg', 'jpg', 797061, 0, '2022/08/10/', NULL, NULL, '1d6b551aaf272e5ff649a0afd1a4718bb237b6b0', 'public', 1, NULL, '2022-08-10 01:49:55', '2022-08-10 01:49:55'),
(44, 'da42b0873a8619d31fc988ae8c3ec83fc97399f4', 'blob', 'image/png', 'png', 693540, 0, '2022/08/11/', NULL, NULL, '7b7d0bade88c1c25ec6fc85aae358fe090c255ac', 'public', 1, NULL, '2022-08-11 00:03:24', '2022-08-11 00:03:24'),
(45, '1dafe810b49769e1e1774a4061463887d2c29cfb', 'blob', 'image/png', 'png', 692098, 0, '2022/08/11/', NULL, NULL, 'fd0088747244b650345d545535354ecb66ea332b', 'public', 1, NULL, '2022-08-11 00:04:28', '2022-08-11 00:04:28'),
(46, 'dd64cd2bb2c26927d27fe0361c7e8c2517795565', 'blob', 'image/png', 'png', 685394, 0, '2022/08/11/', NULL, NULL, '9c6dceaf78f196300705b823f2ec2470776c7592', 'public', 1, NULL, '2022-08-11 00:05:56', '2022-08-11 00:05:56'),
(47, '39c869567690874f814c8ad5a1cc45fb42e8fc04', 'blob', 'image/png', 'png', 704023, 0, '2022/08/12/', NULL, NULL, 'af27036603782eddb80ac62a014aee16ad763d03', 'public', 1, NULL, '2022-08-11 19:18:47', '2022-08-11 19:18:47'),
(48, 'ef81991784b7bc7217285ce6325bfa9f030d5ad0', 'blob', 'image/png', 'png', 736482, 0, '2022/08/12/', NULL, NULL, '4381c8f9467773e9ae7e4bb4705f07be95805b81', 'public', 1, NULL, '2022-08-11 22:40:53', '2022-08-11 22:40:53'),
(49, '1803fff3d8b38c5fbc7118a4cfc1dc5aa4b4676f', 'wilker solo.jpg', 'image/jpeg', 'jpg', 1322777, 0, '2022/08/12/', NULL, NULL, '5c45844105a41dd9b3df21cce412a2134d4881a1', 'public', 1, NULL, '2022-08-11 22:56:02', '2022-08-11 22:56:02'),
(50, '8e695e6a17a8a4e7818070f87eaf80e99d77f1af', 'blob', 'image/png', 'png', 704336, 0, '2022/08/12/', NULL, NULL, '39d9c46b2a9ac1f5c0ae77ba7261500a84c1220d', 'public', 1, NULL, '2022-08-11 23:02:39', '2022-08-11 23:02:39'),
(51, '5901502c9b6490e33aef21517e37ee823e2614aa', 'blob', 'image/png', 'png', 700223, 0, '2022/08/08/', NULL, NULL, '19c685218aa6b9038b47787d90bdd5b6e873aa19', 'public', 1, NULL, '2022-08-14 21:55:25', '2022-08-14 21:55:25'),
(52, '0acb923dd2289892f703994479e07340ecafadc9', 'blob', 'image/png', 'png', 603683, 0, '2022/08/16/', NULL, NULL, 'a2e5e0e8478474601d6e1e24c9c9275184dc480c', 'public', 1, NULL, '2022-08-15 21:16:13', '2022-08-15 21:16:13'),
(53, '5d2232f8afd6fe0b57f4c18a320342c2b4f29613', 'blob', 'image/png', 'png', 481581, 0, '2022/08/16/', NULL, NULL, '2f385fd5a523b6237ec0d021c360192f7c322db9', 'public', 1, NULL, '2022-08-15 21:28:34', '2022-08-15 21:28:34'),
(54, '103507776050975fae0e57393313766425e8ed00', 'blob', 'image/png', 'png', 605308, 0, '2022/08/18/', NULL, NULL, '72dd2f218b9e4d2a61014facaf1585377f80c1b4', 'public', 1, NULL, '2022-08-17 20:04:51', '2022-08-17 20:04:51'),
(55, '489989a7c1a56c2b089649e71f199c3556d41155', 'blob', 'image/png', 'png', 606575, 0, '2022/09/09/', NULL, NULL, '1a0a3d0375545382ff56ef5d4701c09c6c3d86c6', 'public', 1, NULL, '2022-09-08 18:52:22', '2022-09-08 18:52:22'),
(56, 'b7f110bab2620b0973bfa15703e999f08b7171ea', 'blob', 'image/png', 'png', 602880, 0, '2022/10/07/', NULL, NULL, '72168c61205ea4b51951ab63610550ae876463d6', 'public', 1, NULL, '2022-10-06 21:05:44', '2022-10-06 21:05:44'),
(57, '1bb05334c76b1a269286a401fea8c2ab82a72d0b', 'blob', 'image/png', 'png', 602880, 0, '2022/10/07/', NULL, NULL, '72168c61205ea4b51951ab63610550ae876463d6', 'public', 1, NULL, '2022-10-06 21:05:44', '2022-10-06 21:05:44'),
(58, '952110c1079dd308ca4e780b7d3e4c18cad93717', 'WhatsApp Image 2022-10-06 at 13.01.04.jpeg', 'image/jpeg', 'jpeg', 70643, 0, '2022/10/07/', NULL, NULL, '4ab0fc725712ec299617353b98f4bd118654ffc7', 'public', 1, NULL, '2022-10-06 21:08:25', '2022-10-06 21:08:25'),
(59, '835ef144d502ff22e5dc51b4a3fcbf05f2aefcc6', 'blob', 'image/png', 'png', 604950, 0, '2022/10/07/', NULL, NULL, 'feba7ccfd3d7ed93e015092eba4fc74c6a55e565', 'public', 1, NULL, '2022-10-06 21:11:11', '2022-10-06 21:11:11'),
(60, '884f59bca7de38d9dfa5745e65ce7e7664e9e4b8', 'blob', 'image/png', 'png', 613436, 0, '2022/10/07/', NULL, NULL, '34d2fcafa04d1143a9ffac69e746f3f6362e50cf', 'public', 1, NULL, '2022-10-06 21:14:57', '2022-10-06 21:14:57'),
(61, '952110c1079dd308ca4e780b7d3e4c18cad93717', 'WhatsApp Image 2022-10-06 at 13.01.04.jpeg', 'image/jpeg', 'jpeg', 70643, 0, '2022/10/07/', NULL, NULL, '4ab0fc725712ec299617353b98f4bd118654ffc7', 'public', 1, NULL, '2022-10-06 21:18:14', '2022-10-06 21:18:14'),
(62, '98baedd45d96b7b50f530469dd301982bdfad8fe', 'blob', 'image/png', 'png', 661032, 0, '2022/10/07/', NULL, NULL, '98f0d014b4f4f568910457b758604506087176a7', 'public', 1, NULL, '2022-10-06 21:25:14', '2022-10-06 21:25:14'),
(63, '1f776004660177e9da4e7631bea360b175f16a68', 'WhatsApp Image 2022-10-07 at 09.46.45.jpeg', 'image/jpeg', 'jpeg', 249082, 0, '2022/10/07/', NULL, NULL, '0b31e8c01ca24402f9511902e42a008cc81ccf69', 'public', 1, NULL, '2022-10-06 21:29:23', '2022-10-06 21:29:23'),
(64, '25f531a5bdb0cdb58199cd5f1e089130431bc9e1', 'blob', 'image/png', 'png', 729192, 0, '2022/10/07/', NULL, NULL, 'e0f7d928619baf1ee4446b74c9638379e65c5873', 'public', 1, NULL, '2022-10-07 00:34:08', '2022-10-07 00:34:08'),
(65, '325b79c893f82a5969b89a4176e58c16a2158504', 'Bu Ina 2.png', 'image/png', 'png', 1206337, 0, '2022/10/11/', NULL, NULL, '7f0771b60aded1b93f1e7a97c9f3372c51c503c9', 'public', 1, NULL, '2022-10-10 20:53:33', '2022-10-10 20:53:33'),
(66, '8ba191e67a8b632d9382c91b12c321728f1cddc4', 'blob', 'image/png', 'png', 165693, 0, '2022/10/11/', NULL, NULL, 'caf794f36b2103686ee328d964c117a9b69290eb', 'public', 1, NULL, '2022-10-10 21:03:35', '2022-10-10 21:03:35'),
(67, '1c604ec1514e3ee37cb06594d38c3bce6601d308', 'blob', 'image/png', 'png', 44385, 0, '2022/10/11/', NULL, NULL, 'de45eb3bb3c32209638427c0e8628ca4a258871a', 'public', 1, NULL, '2022-10-10 23:38:50', '2022-10-10 23:38:50'),
(68, 'c77689d2ad34094a62261078e8cf737d50c4f6f3', 'blob', 'image/png', 'png', 620573, 0, '2022/10/11/', NULL, NULL, 'e14b9ba06677b29809a5c64b1a5df62ec79041e5', 'public', 1, NULL, '2022-10-11 00:21:34', '2022-10-11 00:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `title`, `hero`, `link`, `created_at`, `updated_at`) VALUES
(5, 'TNDE Kementerian Pertanian', '/storage/2022/07/28/f247eed4487d3eab553eed6ba40b3aeaae9b7bff.png', 'tnde.pertanian.go.id', '2022-07-27 18:45:58', '2022-07-27 18:45:58'),
(6, 'SIRUP', '/storage/2022/07/28/73680242b7e9eb1820a98f5092fd3a83a21ab79f.png', 'sirup.lkpp.go.id', '2022-07-27 19:13:20', '2022-07-27 19:13:20'),
(7, 'PPID', '/storage/2022/10/11/1c604ec1514e3ee37cb06594d38c3bce6601d308.png', 'bkp2yogya-ppid.pertanian.go.id', '2022-10-10 23:38:59', '2022-10-10 23:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'Donor Darah Hari Karantina Pertanian', 'PMI Kota Yogyakarta', '2022-10-07 09:30:00', '2022-10-07 11:00:00', '2022-08-14 21:35:39', '2022-10-06 21:33:34'),
(2, 'Donor Darah Hari Karantina Pertanian', 'Wilker Adisumarmo', '2022-10-06 09:00:00', '2022-10-06 12:00:00', '2022-08-14 21:37:15', '2022-10-06 21:32:52'),
(3, 'Bazar Sembako', 'Kantor Induk', '2022-10-07 09:00:00', '2022-10-07 10:00:00', '2022-10-06 21:34:26', '2022-10-06 21:34:26'),
(4, 'Bantuan Bibit Pohon', 'Rumah Ibadah', '2022-10-07 13:00:00', '2022-10-07 16:00:00', '2022-10-06 21:35:25', '2022-10-06 21:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_title`, `parent_id`, `sort_order`, `slug`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Home', 0, '1', '/', '/', '2022-07-21 20:17:53', '2022-08-09 00:57:03'),
(2, 'Profil', 0, '2', '#', '#', '2022-07-21 20:22:35', '2022-10-11 00:04:16'),
(3, 'Organisasi', 2, '3', 'laman/profil', 'https://karantinayogya.id/laman/profil', '2022-07-21 21:24:09', '2022-10-10 20:00:46'),
(4, 'Pejabat', 2, '4', 'laman/pejabat', 'https://karantinayogya.id/laman/pejabat', '2022-07-21 22:05:03', '2022-10-10 21:11:25'),
(5, 'Kinerja', 0, '5', 'kinerja', '/kinerja', '2022-07-22 01:50:29', '2022-07-22 02:15:20'),
(6, 'Perjanjian Kinerja', 5, '2', 'laman/perjanjian-kinerja', 'karantinayogya.id/laman/perjanjian-kinerja', '2022-07-22 02:16:12', '2022-10-11 00:22:31'),
(7, 'Dokumen Kinerja', 5, '3', 'laman/kinerja', '/laman/kinerja', '2022-07-22 02:18:21', '2022-08-11 01:10:45'),
(8, 'Berita', 0, '6', 'berita.indeks', '/berita.indeks', '2022-07-22 02:20:25', '2022-08-09 23:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_04_12_000000_create_orchid_users_table', 1),
(4, '2015_10_19_214424_create_orchid_roles_table', 1),
(5, '2015_10_19_214425_create_orchid_role_users_table', 1),
(6, '2016_08_07_125128_create_orchid_attachmentstable_table', 1),
(7, '2017_09_17_125801_create_notifications_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_07_21_081922_create_settings_table', 2),
(11, '2022_07_22_022344_create_menus_table', 3),
(12, '2022_07_25_044838_create_newss_table', 4),
(13, '2022_07_25_050027_create_tickers_table', 5),
(14, '2022_07_25_055818_create_posts_table', 6),
(15, '2022_07_27_051112_create_clients_table', 7),
(16, '2022_08_04_044902_create_services_table', 8),
(17, '2022_08_09_071526_create_navbars_table', 9),
(18, '2022_08_09_083424_create_pages_table', 10),
(19, '2022_08_15_033730_create_events_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `navbars`
--

CREATE TABLE `navbars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbars`
--

INSERT INTO `navbars` (`id`, `name`, `route`, `ordering`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', 1, '2022-08-09 00:21:33', '2022-08-09 00:21:33'),
(2, 'Products', 'products.index', 2, '2022-08-09 00:21:33', '2022-08-09 00:21:33'),
(3, 'About US', 'about.us', 3, '2022-08-09 00:21:33', '2022-08-09 00:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `hero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int(11) NOT NULL,
  `published_at` date NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `body`, `status`, `hero`, `author`, `published_at`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dokumen Kinerja', 'Kinerja', '<div class=\"accordion\" id=\"accordionExample\">\r\n  <div class=\"accordion-item\">\r\n    <h2 class=\"accordion-header\" id=\"headingOne\">\r\n      <button class=\"accordion-button\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">\r\n        Renstra 2020-2024\r\n      </button>\r\n    </h2>\r\n    <div id=\"collapseOne\" class=\"accordion-collapse collapse show\" aria-labelledby=\"headingOne\" data-bs-parent=\"#accordionExample\">\r\n      <div class=\"accordion-body\">\r\n        <strong>\r\n<a href=\"https://bkp2yogya-ppid.pertanian.go.id/index.php/edocument?arsip=459\" target=\"_blank\">Renstra BKP Kelas II Yogyakarta</a></strong>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <div class=\"accordion-item\">\r\n    <h2 class=\"accordion-header\" id=\"headingTwo\">\r\n      <button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">\r\n        DIPA\r\n      </button>\r\n    </h2>\r\n    <div id=\"collapseTwo\" class=\"accordion-collapse collapse\" aria-labelledby=\"headingTwo\" data-bs-parent=\"#accordionExample\">\r\n      <div class=\"accordion-body\">\r\n       <strong>\r\n<a href=\"https://bkp2yogya-ppid.pertanian.go.id/index.php/edocument?arsip=458\" target=\"_blank\">DIPA Tahun 2010-2022</a></strong>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <div class=\"accordion-item\">\r\n    <h2 class=\"accordion-header\" id=\"headingThree\">\r\n      <button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseThree\" aria-expanded=\"false\" aria-controls=\"collapseThree\">\r\n        Rencana Kinerja Tahunan\r\n      </button>\r\n    </h2>\r\n    <div id=\"collapseThree\" class=\"accordion-collapse collapse\" aria-labelledby=\"headingThree\" data-bs-parent=\"#accordionExample\">\r\n      <div class=\"accordion-body\">\r\n       <strong>\r\n<a href=\"https://bkp2yogya-ppid.pertanian.go.id/index.php/edocument?arsip=512\" target=\"_blank\">Rencana Kinerja Tahunan Tahun 2010-2022</a></strong>\r\n      </div>\r\n    </div>\r\n  </div>\r\n	 <div class=\"accordion-item\">\r\n    <h2 class=\"accordion-header\" id=\"headingFour\">\r\n      <button class=\"accordion-button collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#collapseFour\" aria-expanded=\"false\" aria-controls=\"collapseFour\">\r\n        Laporan Kinerja / LAKIN\r\n      </button>\r\n    </h2>\r\n    <div id=\"collapseFour\" class=\"accordion-collapse collapse\" aria-labelledby=\"headingFour\" data-bs-parent=\"#accordionExample\">\r\n      <div class=\"accordion-body\">\r\n       <strong>\r\n<a href=\"https://bkp2yogya-ppid.pertanian.go.id/index.php/edocument?arsip=513\" target=\"_blank\">LAKIN 2010-2022</a></strong>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', 1, '/storage/2022/08/11/da42b0873a8619d31fc988ae8c3ec83fc97399f4.png', 1, '2022-08-11', 'kinerja', '2022-08-11 00:03:34', '2022-10-10 23:50:35'),
(4, 'Profil', 'Profil Karantina Pertanian', 'Berdasarkan Peraturan Presiden RI Nomor 7 Tahun 2015 tentang Organisasi Kementerian Negara, dan Peraturan Presiden R.I Nomor 45 Tahun 2015 tentang Kementerian Pertanian, serta Peraturan Menteri Pertanian No. 61/Permentan/OT.140/10/2010 tentang Organisasi dan Tata Kerja Kementerian Pertanian,\r\nmenyatakan bahwa tugas pokok Badan Karantina Pertanian (BARANTAN) adalah melaksanakan perkarantinaan Pertanian. Di dalam melaksanakan tugas tersebut, BARANTAN menyelenggarakan fungsi :\r\n\r\n1.     penyusunan kebijakan teknis, rencana dan program perkarantinaan hewan dan tumbuhan, serta pengawasan keamanan hayati;\r\n1.     pelaksanaan perkarantinaan hewan dan tumbuhan, serta pengawasan keamanan hayati;\r\n1.     pemantauan, evaluasi dan pelaporan pelaksanaan perkarantinaan hewan dan tumbuhan, serta pengawasan keamanan hayati; . 		dan\r\n1.     pelaksanaan administrasi Badan Karantina Pertanian.\r\n\r\n\r\n\r\n-----\r\n\r\n\r\nBadan Karantina Pertanian adalah salah satu Eselon I di Kementerian Pertanian dengan tugas pokok dan fungsinya dalam rangka pencegahan masuk, tersebar dan keluarnya Hama Penyakit Hewan Karantina (HPHK) dan Organisme Pengganggu Tumbuhan Karantina (OPTK). Secara lebih ringkas mencegah masuk dan tersebarnya penyakit hewan dan tumbuhan ke wilayah negara Republik Indonesia. Hal ini sesuai dengan amanat Undang-Undang nomor 16 Tahun 1992 tentang Karantina Hewan, Ikan Dan Tumbuhan.\r\n\r\n\r\n**Visi**\r\n\r\n> Visi Pembangunan Nasional 2015-2019 adalah “Terwujudnya Indonesia yang Berdaulat, Mandiri dan Berkepribadian Berlandaskan Gotong Royong”.\r\n\r\n\r\nVisi Kementerian Pertanian adalah “Terwujudnya sistem pertanian-bioindustri berkelanjutan yang menghasilkan beragam pangan sehat dan produk bernilai tambah tinggi berbasis sumberdaya lokal untuk kedaulatan pangan dan kesejahteraan petani.”\r\n\r\nVisi dalam Renstra Kementerian Pertanian di atas, selanjutnya menjadi acuan dalam penyusunan Visi Badan Karantina Pertanian (BARANTAN), yaitu: “Menjadi Instansi yang Tangguh dan Terpercaya Dalam Perlindungan Kelestarian Sumberdaya Alam Hayati Hewan dan Tumbuhan, Lingkungan dan Keanekaragaman Hayati serta Keamanan Pangan”.\r\n\r\n\r\n**Misi**\r\nUntuk mewujudkan visi di atas, terdapat 7 misi pemerintahan Presiden Joko Widodo, yaitu:\r\n* Mewujudkan keamanan nasional yang mampu menjaga kedaulatan wilayah, menopang kemandirian ekonomi dengan mengamankan sumber daya maritim, dan mencerminkan kepribadian Indonesia sebagai negara kepulauan.\r\n* Mewujudkan masyarakat maju, berkeseimbangan dan demokratis berlandaskan Negara hukum.\r\n* Mewujudkan politik luar negeri bebas-aktif dan memperkuat jati diri sebagai Negara maritim.\r\n* Mewujudkan kualitas hidup manusia Indonesia yang tinggi, maju dan sejahtera.\r\n* Mewujudkan bangsa yang berdaya-saing.\r\n* Mewujudkan Indonesia menjadi Negara maritim yang mandiri, maju, kuat, dan berbasiskan kepentingan nasional.\r\n* Mewujudkan masyarakat yang berkepribadian dalam kebudayaan.\r\n\r\n\r\n**Tujuan**\r\n\r\n    Terjaganya sumber daya alam hayati hewan dan tumbuhan dari serangan HPHK dan OPTK\r\n    Terjaminnya keamanan produk pertanian yang berasal dari hewan dan tumbuhan\r\n    Pengendalian importasi dan percepatan eksportasi melalui pencegahan masuk dan keluarnya media HPHK dan OPTK\r\n    Memberdayakan masyarakat dalam pelaksanaan perkarantinaan\r\n    Mewujudkan pelayanan prima\r\n\r\n \r\n**Sasaran Program**\r\n\r\nSasaran Program (SP) adalah kondisi yang ingin dicapai secara nyata oleh BARANTAN dalam pembangunan lima tahun mendatang sebagai dampak/hasil (outcome) dari program/kegiatan yang mengacu pada sasaran strategis Kementerian Pertanian.\r\n\r\nSasaran Program BARANTAN adalah :\r\n\r\n    Meningkatnya efektivitas pengendalian risiko masuk, tersebar dan keluarnya HPHK dan OPTK.\r\n    Meningkatnya kualitas pelayanan tindakan karantina dan pengawasan keamanan hayati terhadap ekspor Media Pembawa HPHK dan OPTK dan keamanan hayati.\r\n    Meningkatnya kepatuhan dan kepuasan pengguna jasa karantina pertanian.\r\n\r\nProgram 6 (enam) kegiatan utama Badan Karantina Pertanian, yaitu :\r\n\r\n(1) Peningkatan Sistem Karantina Hewan dan Keamanan Hayati Hewani,\r\n(2) Peningkatan Sistem Karantina Tumbuhan dan Keamanan Hayati Nabati,\r\n(3) Peningkatan Kepatuhan Kerjasama dan Pengembangan Sistem Informasi Perkarantinaan,\r\n(4) Dukungan  manajemen dan dukungan teknis lainnya,\r\n(5) Peningkatan Kualitas Penyelenggaraan Laboratorium Uji Standard dan Uji Terap Teknik dan Metode Karantina Pertanian,\r\n(6) Peningkatan kualitas pelayanan Karantina dan Pengawasan Keamanan Hayati.\r\n\r\nSesuai dengan Rencana Strategis Kementerian Pertanian 2015-2019 bahwa keberadaan BARANTAN berperan guna mendukung perwujudan misi Kementerian Pertanian, yakni:\r\n\r\n    Misi ke-1: “mewujudkan kedaulatan pangan melalui peningkatan produksi, produktivitas dan mutu pangan yang beragam dan sehat.”\r\n    Misi ke-3: “meningkatkan nilai tambah, daya saing, ekspor dan subtitusi impor produk pertanian.”\r\n    Misi ke-8: meningkatkan kualitas kinerja dan pelayanan aparatur pemerintah bidang pertanian yang amanah dan profesional.\r\n\r\nDengan daya dukung 3.684 orang pegawai yang tersebar di seluruh Indonesia, karantina pertanian memiliki 52 unit pelaksana teknis dengan 393 titik pelayanan impor, ekspor dan antar area (domestik). Petugas karantina pertanian dengan komposisi petugas fungsional teknis dokter hewan, paramedik, POPT, pengawas mutu hasil pertanian, petugas laboratorium, dan administrasi. Petugas teknis diberikan kemampuan dengan basis ilmiah untuk memeriksa dan mendeteksi adanya penyakit hewan dan tumbuhan yang dimungkinkan masuk melalui komoditi pertanian (baca: media pembawa). Indonesia memiliki keanekaragaman hayati yang harus kita jaga bersama agar terpelihara kelestariannya.', 1, '/storage/2022/08/12/39c869567690874f814c8ad5a1cc45fb42e8fc04.png', 1, '2022-08-12', 'profil', '2022-08-11 19:18:58', '2022-08-11 19:34:35'),
(5, 'Tugas Pokok', 'Tugas Pokok', 'TUGAS POKOK :\r\n\r\n \r\nMelaksanakan kegiatan operasional perkarantinaan hewan dan tumbuhan dalam mencegah masuk dan tersebarnya Hama Penyakit Hewan Karantina (HPHK) dan Organisme Pengganggu Tanaman Karantina (OPTK) serta pengawasan dan/atau pengendalian terhadap keamanan pangan dan mutu pangan, keamanan pakan dan mutu pakan, Produk Rekayasa Genetik (PRG), Sumber Daya Genetik (SDG), Agensia Hayati, Jenis Asing Invasif (JAI), Tumbuhan dan Satwa Liar, serta Tumbuhan dan Satwa Langka yang dimasukkan ke dalam, tersebarnya dari suatu Area ke Area lain, dan/atau dikeluarkan dari wilayah Negara Kesatuan Republik Indonesia.\r\n\r\n \r\nFUNGSI :\r\n\r\n \r\n Balai Karantina Pertanian Kelas II Yogyakarta dalam melaksanakan tugasnya, menyelenggarakan fungsi:\r\n\r\n1.     Pelaksanaan tindakan karantina meliputi : pemeriksaan, pengasingan, pengamatan, perlakuan, penahanan, penolakan, pemusnahan, pembebasan (8P) terhadap media pembawa HPHK hewan, produk hewan, OPTK tanaman pangan, hortikultura ataupun tanaman perkebunan.\r\n1.     Pemberian pelayanan teknis kegiatan operasional perkarantiaan pertanian.\r\n1.     Pelaksananan pemantauan daerah sebar HPHK dan OPTK.\r\n1.     Pelaksanaan pembuatan koleksi HPHK hewan, produk hewan dan OPTK tanaman pangan, hortikultura ataupun tanaman perkebunan.\r\n1.     Persiapan dan pengelolaan laboratorium hewan dan tumbuhan meliputi tanaman pangan, hortikultura ataupun tanaman perkebunan.\r\n1.     Pengelolaan data, informasi serta dokumentasi kegiatan opersional perkarantiaan hewan dan tumbuhan meliputi tanaman pangan, hortikultura ataupun tanaman perkebunan.\r\n1.     Pelaksanaan urusan tata usaha dan rumah tangga.', 1, '/storage/2022/08/12/ef81991784b7bc7217285ce6325bfa9f030d5ad0.png', 1, '2022-08-12', 'tugas-pokok', '2022-08-11 22:48:45', '2022-08-11 22:48:45'),
(6, 'Wilayah Kerja', 'Wilayah Kerja', 'Wilayah Kerja Balai Karantina Pertanian Kelas II Yogyakarta :\r\n1. Wilker Bandara Adi Sucipto\r\n2. Wilker Bandara YIA Kulonprogo\r\n3. Wilker Kantor Pos Yogyakarta\r\n4. Wilker Bandara Adi Sumarmo', 1, '/storage/2022/08/12/8e695e6a17a8a4e7818070f87eaf80e99d77f1af.png', 1, '2022-08-12', 'wilayah-kerja', '2022-08-11 23:04:25', '2022-08-11 23:04:25'),
(7, 'agenda', 'Agenda Kegiatan', '<div class=\"container\">\r\n            <div class=\"text-center\">\r\n                <h3 class=\"section-title bg-white text-center text-primary px-3\">Agenda Kegiatan</h3>\r\n            </div>\r\n            <div class=\"owl-carousel testimonial-carousel position-relative\">\r\n                <div class=\"testimonial-item text-center\">\r\n                    <img class=\"border rounded-circle p-2 mx-auto mb-3\" src=\"{{ asset(\'theme2/img/testimonial-1.jpg\') }}\" style=\"width: 80px; height: 80px;\">\r\n                    <h5 class=\"mb-0\">Upacara HUT RI</h5>\r\n                    <p>17 Agustus 2022</p>\r\n                    <div class=\"testimonial-text bg-light text-center p-4\">\r\n                    <p class=\"mb-0\">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"testimonial-item text-center\">\r\n                    <img class=\"border rounded-circle p-2 mx-auto mb-3\" src=\"{{ asset(\'theme2/img/testimonial-2.jpg\') }}\" style=\"width: 80px; height: 80px;\">\r\n                    <h5 class=\"mb-0\">Client Name</h5>\r\n                    <p>Profession</p>\r\n                    <div class=\"testimonial-text bg-light text-center p-4\">\r\n                    <p class=\"mb-0\">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"testimonial-item text-center\">\r\n                    <img class=\"border rounded-circle p-2 mx-auto mb-3\" src=\"{{ asset(\'theme2/img/testimonial-3.jpg\') }}\" style=\"width: 80px; height: 80px;\">\r\n                    <h5 class=\"mb-0\">Client Name</h5>\r\n                    <p>Profession</p>\r\n                    <div class=\"testimonial-text bg-light text-center p-4\">\r\n                    <p class=\"mb-0\">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"testimonial-item text-center\">\r\n                    <img class=\"border rounded-circle p-2 mx-auto mb-3\" src=\"{{ asset(\'theme2/img/testimonial-4.jpg\') }}\" style=\"width: 80px; height: 80px;\">\r\n                    <h5 class=\"mb-0\">Client Name</h5>\r\n                    <p>Profession</p>\r\n                    <div class=\"testimonial-text bg-light text-center p-4\">\r\n                    <p class=\"mb-0\">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>\r\n                    </div>\r\n                </div>\r\n            </div>', 1, '/storage/2022/08/08/5901502c9b6490e33aef21517e37ee823e2614aa.png', 1, '2022-08-15', 'agenda', '2022-08-14 21:55:29', '2022-08-14 23:11:22'),
(8, 'Pejabat', 'Data Pejabat', '1. Kepala Balai - drh. Ina Soelistyani\r\n    Lahir di Yogyakarta pada tanggal 25 Mei 1969. Lulus S1 Fakultas Kedokteran Hewan UGM tahun 1995.\r\n		Menjabat Kepala Balai sejak Tahun 2017, sebelumnya adalah Kepala Seksi Karantina Hewan BKP Kls II Yogyakarta.\r\n2. Kasubag Tata Usaha - Budi Susilo, SE\r\n    Lahir di Metro, Lampung pada tanggal 09 Nopember 1973. Lulus S1 Fakultas Ekonomi UGM tahun 1999.\r\n		Menjabat Kasubag TU sejak Tahun 2017, sebelumnya adalah bertugas di BKP Kls II Yogyakarta.\r\n3. Sub Koordinator Karantina Hewan - drh. Nurlia Ardianti\r\n    Lahir di Yogyakarta pada tanggal 22 Mei 1983. Fakultas Kedokteran Hewan UGM tahun 2006.\r\n		Sebelumnya adalah Kasi Karantina Hewan di BKP Kls II Yogyakarta.\r\n4. Sub Koordinator Karantina Tumbuhan - Kristiana Ika Rini, SP\r\n		Lahir di Klaten pada tanggal 25 Desember 1980. Fakultas Pertanian - Hama Tumbuhan UGM tahun 2004.\r\n		Sebelumnya adalah Kasi Karantina Tumbuhan di BKP Kls II Yogyakarta.', 1, '/storage/2022/10/11/8ba191e67a8b632d9382c91b12c321728f1cddc4.png', 1, '2022-10-11', 'pejabat', '2022-10-10 21:10:49', '2022-10-10 21:10:49'),
(9, 'Perjanjian Kinerja', 'Perjanjian Kinerja', '<div class=\"container\">\r\n<h3> Perjanjian Kinerja Tahun 2022 </h3>\r\n<table class=\"table table-success table-responsive\">\r\n    <thead>\r\n        <tr>\r\n            <th>No.</th>\r\n            <th>Output Kinerja</th>\r\n            <th>Target</th>\r\n            <th>Satuan</th>\r\n						<th>Capaian</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <td>1</td>\r\n            <td>Jumlah komoditas pertanian yang sesuai persyaratan melalui tempat pemasukan/ pengeluaran yang ditetapkan</td>\r\n            <td>23.212</td>\r\n            <td>Jumlah</td>\r\n						<td>19.077</td>\r\n        </tr>\r\n        <tr>\r\n            <td>2</td>\r\n            <td>Jumlah temuan ketidaksesuaian persyaratan Karantina pada komoditas pertanian yang dilalulintaskan di tempat pemasukan/ pengeluaran</td>\r\n            <td>1</td>\r\n            <td>Jumlah</td>\r\n						<td>0</td>\r\n        </tr> \r\n        <tr>\r\n            <td>3</td>\r\n            <td>Jumlah Jenis temuan HPHK & OPTK pada komoditas pertanian yang dilalulintaskan di tempat pemasukan/ pengeluaran</td>\r\n            <td>0</td>\r\n            <td>Jumlah</td>\r\n						<td>0</td>\r\n        </tr>\r\n				<tr>\r\n            <td>4</td>\r\n            <td>Jumlah komoditas pertanian Ekspor yang sesuai dengan persyaratan karantina negara tujuan</td>\r\n            <td>3.200</td>\r\n            <td>Jumlah</td>\r\n						<td>2.236</td>\r\n        </tr>   \r\n				<tr>\r\n            <td>5</td>\r\n            <td>Jumlah penyelesaian kasus Pelanggaran Perkarantinaan sampai P21</td>\r\n            <td>0</td>\r\n            <td>P21</td>\r\n						<td>0</td>\r\n        </tr>   \r\n				<tr>\r\n            <td>6</td>\r\n            <td>Indeks Kepuasan Masyarakat (IKM) atas layanan publik BKP Kelas II Yogyakarta</td>\r\n            <td>85,33</td>\r\n            <td>Nilai</td>\r\n						<td>87</td>\r\n        </tr>\r\n					<tr>\r\n            <td>7</td>\r\n            <td>Nilai Kinerja Anggaran BKP Kelas II Yogyakarta</td>\r\n            <td>90,21</td>\r\n            <td>Nilai</td>\r\n						<td>97,23</td>\r\n        </tr>   \r\n    </tbody>\r\n</table>\r\n</div>', 1, '/storage/2022/10/11/c77689d2ad34094a62261078e8cf737d50c4f6f3.png', 1, '2022-10-11', 'perjanjian-kinerja', '2022-10-11 00:21:46', '2022-10-11 00:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` bigint(20) NOT NULL,
  `hero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` date DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `body`, `author`, `hero`, `published_at`, `aktif`, `kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Membangun Negeri dengan Hati', 'lorem ipsumsfsf', '<p>fdsgfdhgf fdhdhdhdhdhdhdh fgdgdg</p>', 1, '/storage/2022/08/08/5901502c9b6490e33aef21517e37ee823e2614aa.png', '2022-07-18', 1, '0', '1', '2022-07-24 23:22:47', '2022-08-07 19:27:46'),
(2, 'Ekspor Rempah', 'Gratieks', '<p><span style=\"color: rgb(69, 69, 69);\">Kementerian Pertanian (Kementan) berhasil menggenjot produksi pertanian sekaligus mengangkat daya saing produk yang dihasilkan sehingga mampu mencapai pertumbuhan ekspor 24 persen atau setara dengan nilai Rp 441,9 triliun di tahun 2017. Membaiknya kinerja ekspor pertanian juga mengindikasikan semakin baiknya layanan perkarantinaan dalam mempercepat layanan perizinan, memaksimalkan diplomasi, hingga strategi jemput bola sejak proses produksi di petani.</span>&nbsp;</p><p>“Ada upaya yang sanga keras perkarantinaan dalam mendukung pencapian ekspor pertanian tersebut. Barantan misalnya, melakukan penyusunan Perjanjian Protokol Karantina dengan negara-negara tujuan, serta mempercepat pemenuhan protokol karantina dengan melakukan proses Inline Inspection bersama petani,” kata Kepala Badan Karantina Pertanian (Barantan) Banun Harpini saat paparan evaluasi nasional capaian kinerja 4 tahun dan Karantina Pertanian di Era Industri 4.0 di Bogor, Senin (19/11).</p><p>&nbsp;</p><p>Untuk akses percepatan secara elektronik juga dilakukan dengan pertukaran data E-Cert atau sertifikat elektronik yang dikirim ke negara tujuan. Saat ini sudah 3 negara yakni: Australia, New Zealand dan Belanda, dan sedang proses penyetaraan sistem dengan negara Jepang, Amerika dan Singapura.</p><p>&nbsp;</p><p>Salah satu hal penting dalam ekspor produk pertanian adalah perjanjian sanitary and phytosanitary (SPS) atau langkah atau tindakan untuk melindungi manusia, hewan, dan tumbuhan dari penyakit, hama, atau kontaminan. Terhitung 4 tahun, sudah ada 4 hasil perjanjian SPS untuk akselerasi Ekspor Produk Pertanian Indonesia, yakni masing Indonesia – Australia Comprehensive Economic Partnership Agrement (CEPA) untuk produk Coklat, Manggis, Salak, dan Kopi. Perjanjian ini menghasilkan nilai ekspor USD 667,8 Juta di 2018. Perjanjian lainnya adalah Indonesia - Cile CEPA untuk komoditas crude palm oil (CPO) dan Jagung, yang sudah menghasilkan USD 143,8 juta di 2018.</p><p>&nbsp;</p><p>Selain itu, perundingan SPS juga dilakukan ASIAN Hongkong China Free Trade Agreement (FTA) untuk produk Tepung kelapa, Mangga, SBW, Kopi, Madu, Coklat, Teh, dan Reptil yang nilai ekspornya mencapai USD 3 milyar tahun 2018. Dan terakhir, Indonesia-European Free Trade Association dengan komoditas rempah-rempah, kakau, kopi, teh, produk kayu, dan ikan yang menghasilkan nilai ekspor USD 1,2 milyar pada 2018.</p><p>&nbsp;</p><p>“Barantan di 4 tahun terakhir juga lakukan perluasan negara tujuan ekspor baru yaitu Ukraina, Timor Leste, dan Papua New Guinea (PNG). Termasuk menambah komoditas/produk baru ke negara-negara mitra dagang tradisional, misalnya salak ke Selandia Baru, lalu mangga dan manggis ke Australia; manggis, PKE, produk kayu dan durian ke Tiongkok. Juga bunga krisan, pisang, nenas ke Jepang; kelapa dan produknya ke India dan Amerika Serikat; serta PKE ke Philipina,” beber Banun.</p><p>&nbsp;</p><p>Perbaikan Layanan Hingga Identifiksi Produk Andalan Baru Pertanian</p><p>&nbsp;</p><p>Semenjak tahun 2015 hingga saat ini banyak bertumbuh komoditas ekspor yang sifatnya andalan baru atau emerging. Buah manggis adalah salah satunya yang telah dikirim ke 23 Negara. Dengan total nilai dagang total rupiah 11,62 Triliun dengan total volume masing-masing : 31.296 ,00 Ton (2015), 30.099,67 Ton (2016), 11.427,77 Ton (2017) dan 26.939,20 Ton (2018)</p><p>&nbsp;</p><p>Untuk produk hewan, produk yang terus menunjukan tren peningkatan volume dagang adalah: Sarang Burung Walet. Hampir seluruh negara didunia menerima komoditas ini. SBW berhasil membukukan total nilai dagang selama&nbsp;4 tahun senilai Rp 107,2 triliun. Dengan masing-masing volume ekspor sebagai berikut : 700,66 Ton (2015), 773,22 Ton (2016),1.158,15 Ton (2017) dan 1.135,09 Ton (2018 hingga bulan Oktober).</p><p>&nbsp;</p><p>“Melalui sistem layanan karantina yang disebut IQFAST, Barantan juga mencatat produk pertanian yang khas dan digemari manca negara, antara lain: tanaman dan bunga hias, produk pertanian organic, lidi, daun kelor, ulat, produk turunan kelapa dan daun ketapang,” jelas Banun.</p><p>&nbsp;</p><p>Ekspor produk-produk pertanian juga didukung dengan pengembangan layanan ekspor antara lain laboratorium yang berstandard internasional, layanan prioritas ekspor, in-line inspection, e-certification dan berbagai kebijakan teknis dalam mendukung akselerasi ekspor maka Barantan memberikan kontribusi yang besar dalam rangka mensukseskan kinerja ekspor sektor pertanian.</p><p>&nbsp;</p><p>Secara khusus, layanan ekspor melalui in-line inspection diberikan dari mulai tempat produksi guna menjamin produk yang akan diekspor berasal dari area yang bebas dari penyakit, dibudidayakan dengan sehat, penjaminan tindakan pemeriksaan dan perlakuan sesuai standard negara tujuan ekspor, sertifikasi&nbsp;di packing house sampai dengan pengangkutan ke tempat pengeluaran.</p><p>&nbsp;</p><p>“In-line inspection adalah aksi layanan jemput bola kami untuk mempercepat proses bisnis ekspor produk pertanian. Hingga tahun ini, in-line Inspection telah dapat dilakukan terhadap 189 produk tumbuhan, hewan termasuk rumput laut.,\" tutur Banun.</p><p>&nbsp;</p><p>Terkait reformasi birokrasi, Banun menambahkan, Baratan telah menerapkan ISO 17025:2015 tentang Sistem Manajemen Anti Penyuapan (SMAP). Hal tersebut untuk menjaga integritas dalam menjalankan tugas. Saat ini telah ada 34 Unit Pelaksana Teknis (UPT) atau 65 persen dari total UPT yang ada di lingkup Barantan yang telah menerapkannya. Di akhir tahun ditargetkan akan ada 52 UPT telah berhasil diakui.</p>', 1, '/storage/2022/08/08/7cd33a108d25a54ca9af2680f327daedcb37d68b.png', '2022-07-20', 1, '0', '2', '2022-07-24 23:35:22', '2022-08-07 19:25:20'),
(3, 'Kementan fasilitasi pertemuan G20 di Yogyakarta', 'Kelompok Kerja Pertanian (Agriculture Working Group/AWG) G20 menyelenggarakan Agriculture Deputies Meeting (ADM) di Yogyakarta, Juli 2022', '<p>Menteri Pertanian Syahrul Yasin Limpo berupaya mengajak delegasi Kelompok Kerja Pertanian (Agriculture Working Group/AWG) G20 agar bisa menyepakati komitmen bersama dalam pertemuan Agriculture Deputies Meeting (ADM) di Yogyakarta, Juli 2022.</p><p><br></p><p> \"Kita sepakat untuk mengusung tema keseimbangan produksi dan perdagangan untuk kebutuhan pangan bagi semua orang,\" ungkap Syahrul Yasin Limpo (SYL) dalam rilis di Jakarta, Selasa.</p><p><br></p><p> Seperti diketahui, Pemerintah Indonesia melalui Kementerian Pertanian (Kementan) akan menggelar sesi kedua pertemuan Agriculture ADM di Yogyakarta. Dikenal sebagai kota pelajar yang kental dengan adat dan budayanya, Yogyakarta terpilih menjadi tuan rumah pelaksanaan kedua ADM pada 27 - 29 Juli 2022.</p><p><br></p><p> Pertemuan ini merupakan rangkaian kegiatan Kelompok Kerja Pertanian (AWG) yang puncaknya akan dihadiri para Menteri Pertanian seluruh dunia pada 6-8 September mendatang di Bali.</p><p><br></p><p> Sama halnya dengan ADM sesi pertama yang telah berlangsung pada akhir Maret lalu, ADM sesi kedua ini diharapkan dapat memperkuat komitmen ketahanan pangan negara-negara di dunia.</p><p><br></p><p> Mentan SYL berharap Kelompok Kerja Pertanian G20 nantinya dapat menyepakati komitmen bersama untuk memastikan keseimbangan jaminan pasokan pangan nasional dari sumber produksi pertanian dalam negeri, dan jaminan kelancaran perdagangan pangan dan pertanian lintas batas negara untuk menjamin kecukupan pangan bagi kita semua.</p>', 1, '/storage/2022/08/08/20f278e9774890ccdb980258b1031be062dfaf24.png', '2022-07-26', 1, '2', '3', '2022-07-25 19:52:00', '2022-08-07 19:55:32'),
(5, 'Akselerasi Ekspor', 'Karantina Pertanian mendukung Akselerasi Ekspor', '<p class=\"ql-align-justify\">Sebagai upaya percepatan pemulihan ekonomi nasional, Pemerintah gencar mendorong&nbsp;ekspor melalui komoditas unggulan daerah. Untuk mengakselerasi hal tersebut, telah dilakukan berbagai upaya untuk menggali potensi terkait agribisnis dan hortikultura yang dapat disinergikan dengan program prioritas Pemerintah dalam rangka mendorong ekspor.</p><p class=\"ql-align-justify\">Sebagai komoditas unggulan daerah, edamame mampu memberikan kontribusi positif bagi perekonomian Kabupaten Jember serta peningkatan devisa negara.&nbsp;Permintaan edamame dari mancanegara sangat tinggi, terutama dari negara Jepang, Laos, dan Amerika, akan tetapi saat ini masih belum bisa terpenuhi karena keterbatasan bahan baku.</p><p class=\"ql-align-justify\">Dalam rangka mengakselerasi ekspor edamame, Deputi Bidang Pangan dan Agribisnis Kemenko Perekonomian Musdhalifah Machmud yang diwakili oleh Asisten Deputi Pengembangan Agribisnis Hortikultura Yuli Sri Wilanti melakukan audiensi bersama Bupati Jember serta kunjungan lapangan ke kebun dan pabrik pengolahan edamame.</p><p class=\"ql-align-justify\">Pemerintah Kabupaten (Pemkab) Jember memberikan apresiasi terhadap program mendorong ekspor produk hortikultura Jember. \"Pemkab Jember akan menyediakan lahan Pemkab untuk percepatan pelaksanaan program tersebut dan akan memfasilitasi hal-hal yang dibutuhkan\", tutur Bupati Jember.</p><p class=\"ql-align-justify\">Kedelai edamame Jember sangat digemari di negara Jepang karena karakteristik rasa dan bentuknya yang lebih baik daripada negara kompetitor. Jepang sebagai negara tujuan ekspor sangat memperhatikan <em>food safety</em> (keamanan pangan) di samping <em>food quality</em> (mutu pangan) sehingga <em>traceability </em>(ketelusuran) untuk setiap pangan yang diedarkan menjadi persyaratan yang harus dipenuhi.</p><p class=\"ql-align-justify\">Ekspor edamame di Jember ditandai dengan pengiriman sebesar 21 ton ke pasar&nbsp;Jepang&nbsp;dilakukan oleh PT Austindo Nusantara Jaya melalui anak usahanya PT Gading Mas Indonesia Teguh (GMIT) pada akhir bulan April yang lalu.</p><p class=\"ql-align-justify\">\"Capaian ekspor edamame yang telah berjalan dengan baik ini, diharapkan dapat ditingkatkan setiap tahunnya melalui kerja sama kemitraan yang telah dijalin antara PT GMIT dengan petani binaan dalam bentuk KSO (Kerja Sama Operasional),\" tutur Yuli.</p><p class=\"ql-align-justify\">Keuntungan yang diterima petani dalam model kerja sama ini diantaranya yaitu, sebesar 97% pemodalan ditanggung PT GMIT, bantuan teknis budidaya edamame, dan hasil panen diserap seluruhnya oleh PT GMIT.</p><p class=\"ql-align-justify\">Yuli berpesan dalam upaya memenuhi kebutuhan edamame di pasar domestik dan ekspor yang tinggi perlu kolaborasi antara Pemerintah Pusat, Pemerintah Daerah, petani edamame, dan GMIT. Juga diperlukan ekosistem bisnis yang terintegrasi, sehingga dapat meningkatkan produksi dan daya saing komoditas edamame yang dihasilkan oleh petani. (dep2/ag/fsr/hls)</p><p><br></p>', 1, '/storage/2022/08/08/9f77679e4b179e7b205517de5a073a75ea764a13.png', '2022-07-28', 1, '0', '5', '2022-07-28 01:18:08', '2022-08-09 22:48:09'),
(6, 'Lokasi Balai Karantina Pertanian Kelas II Yogyakarta', 'Transportasi Umum ke Balai Karantina Pertanian Kelas II Yogyakarta di Kota Yogyakarta', '<p>Ingin tahu bagaimana caranya sampai ke Balai Karantina Pertanian Kelas II Yogyakarta di Kota Yogyakarta, Indonesia? Moovit helps you membantumu menemukan cara teerbaik untuk sampai ke Balai Karantina Pertanian Kelas II Yogyakarta dengan petunjuk langkah demi langkah dari stasiun transportasi umum terdekat.</p><p>Moovit menyediakan peta gratis dan panduan langsung untuk membantumu bepergian di kotamu. Melihat jadwal, rute, jadwal waktu dan mencari tahu berapa lama untuk sampai ke Balai Karantina Pertanian Kelas II Yogyakarta secara langsung.</p><p>Mencari pemberhentian atau stasiun terdekat untuk ke Balai Karantina Pertanian Kelas II Yogyakarta? Coba lihat daftar pemberhentian terdekat dari tujuan mu. Maguwo; Halte - Jl. Solo (Jayakarta); Halte - Mall Sahid J-Walk; Halte - Jl. Solo (Alfa).</p><p>Kamu dapat sampai ke Balai Karantina Pertanian Kelas II Yogyakarta dengan Bis. Ini adalah jalur dan rute yang memiliki pemberhentian terdekat - Bis: <a href=\"https://moovitapp.com/yogyakarta-4384/lines/1A/45890256/5440043/in?ref=1&amp;poiType=efsite&amp;customerId=4908\" rel=\"noopener noreferrer\" target=\"_blank\">1A</a>, <a href=\"https://moovitapp.com/yogyakarta-4384/lines/1B/45890257/5440084/in?ref=1&amp;poiType=efsite&amp;customerId=4908\" rel=\"noopener noreferrer\" target=\"_blank\">1B</a>, <a href=\"https://moovitapp.com/yogyakarta-4384/lines/3B/45890261/5778714/in?ref=1&amp;poiType=efsite&amp;customerId=4908\" rel=\"noopener noreferrer\" target=\"_blank\">3B</a></p><p>Ingin melihat apakah ada rute lain yang dapat membawa mu lebih cepat ke tujuan? Moovit akan membantumu mencari rute dan waktu alternatif. Dapatkan arah dari dan arah ke Balai Karantina Pertanian Kelas II Yogyakarta dengan mudah melalui Moovit app atau Situs Web.</p><p>Kami membuat perjalanan ke Balai Karantina Pertanian Kelas II Yogyakarta mudah, alasan itu lah yang membuat jutaan 930 pengguna, termasuk pengguna di Kota Yogyakarta, percaya kepada Moovit sebagai app Transportasi Umum terbaik. Kamu tidak perlu mengunduh app untuk bis atau kereta secara terpisah, Moovit adalah app Transportasi Umum yang semua ada didalamnya akan membantumu mencari jadwal terbaik bis dan kereta.</p><p>Untuk informasi harga Bis, biaya dan tarif perjalanan ke Balai Karantina Pertanian Kelas II Yogyakarta, silakan periksa aplikasi Moovit.</p>', 1, '/storage/2022/08/08/cd21e63061356ae57b546aeb14cc02129aa5e61a.png', '2022-07-27', 1, '2', '6', '2022-07-28 01:32:03', '2022-08-07 19:55:19'),
(8, 'Menyambut HUT RI ke 77', 'Peringatan Hari Kemerdekaan RI', '<p>Setelah 2 tahun vakum, peringatan Kemerdekaan RI ke 77 kembali dimeriahkan dengan berbagai kegiatan dan lomba. Kegiatan diikuti oleh pegawai BKP Kelas II Yogyakarta dengan tetap melakukan pelayanan dan mematuhi protokol kesehatan.</p><p><br></p>', 1, '/storage/2022/08/16/0acb923dd2289892f703994479e07340ecafadc9.png', '2022-08-16', 1, '0', 'menyambut-hut-ri-ke-77', '2022-08-15 21:18:40', '2022-08-15 21:18:40'),
(10, 'Upacara Peringatan HUT RI ke-77', 'Balai Karantina Pertanian Kelas II melaksanakan Upacara dalam rangka Peringatan HUT RI ke 77 pada tanggal 17 Agustus 2022.', '<p>Upacara dilaksanakan selain di Kantor Induk, juga di Kantor Wilker Bandara Adi Sumarmo dan Kantor Wilker Bandara YIA Kulonprogo. Bertindak selaku Inspektur Upacara yakni drh. Ina Soelistyani yang juga Kepala Balai Karantina Pertanian Yogyakarta.</p><p>Pada kesempatan tersebut beliau menyampaikan bahwa segenap pegawai harus bersyukur atas segala pencapaian Kementerian Pertanian dan terus berusaha mewujudkan Pertanian Indonesia yang maju, mandiri dan modern dengan menjadi karantinawan karantinawati yang profesional, tangguh dan terpercaya.</p>', 1, '/storage/2022/08/18/103507776050975fae0e57393313766425e8ed00.png', '2022-08-17', 1, '2', 'upacara-peringatan-hut-ri-ke-77', '2022-08-17 20:13:33', '2022-08-17 20:16:25'),
(11, 'Kunjungan Kerja Komite II DPD RI di Kabupaten Sleman, Daerah Istimewa Yogyakarta', 'Kunjungan Kerja DPR Pengendalian Wabah PMK', '<p>Yogyakarta (12/8) - Bertempat di Pendopo Parasamya, Sekretariat Daerah Kabupaten Sleman telah dilakukan dialog interaktif antara Komite II DPD RI dengan para pemangku kepentingan, pelaku usaha ternak, organisasi profesi dokter hewan maupun peternakan dan stakeholder terkait. Kegiatan ini merupakan rangkaian dari kunjungan kerja Komite II DPD RI dalam rangka pengawasan atas pelaksanaan Undang - Undang Nomor 18 Tahun 2009 tentang Peternakan dan Kesehatan Hewan sebagaimana telah diubah dengan Undang - Undang Nomor 14 Tahun 2014 tentang Perubahan atas Undang - Undang Nomor 18 Tahun 2009 tentang Peternakan dan Kesehatan Hewan, khususnya membahas tentang permasalahan merebaknya kasus Penyakit Mulut dan Kuku (PMK) yang sedang menjangkiti hewan ternak di berbagai daerah di Indonesia dan telah ditetapkan sebagai Wabah Nasional oleh Pemerintah pada tanggal 29 Juni 2022 tentang Penetapan Status Keadaan Tertentu Darurat Penyakit Mulut dan Kuku.</p><p>Kunjungan Komite II DPD RI yang dipimpin oleh Abdullah Puteh diterima secara langsung oleh Bupati Kabupaten Sleman, Kustini Sri Purnomo didampingi Aji Wulantara selaku Asisten Pemerintahan dan Kesejahteraan Rakyat, Sugeng Purwanto selaku Kepala Dinas Pertanian dan Ketahanan Pangan Propinsi DIY, Suparmono selaku Kepala Dinas Pertanian, Pangan dan Perikanan Kabupaten Sleman, dan Heru Saptono selaku Staf Ahli Bupati. Dialog interaktif ini dilakukan mengingat tingginya kasus PMK di Kabupaten Sleman dibandingkan kabupaten lain yang ada di Propinsi DIY sehingga diskusi mengenai percepatan penanganan diharapkan dapat diperoleh dalam kegiatan kali ini. Penanganan dan pengendalian yang cepat dan tepat terhadap virus PMK di kabupaten Sleman diberikan apresiasi cukup baik oleh Komite II DPD RI.</p><p>Abdullah Puteh menyampaikan bahwa penanganan yang cepat dan tepat merupakan langkah penting dalam menekan penyebaran virus PMK apalagi populasi ternak khususnya sapi cukup besar di Kabupaten Sleman sehingga telah dilakukan dua kali vaksinasi dengan baik. Kepala Dinas Pertanian, Pangan dan Perikanan Kabupaten Sleman, Suparmono, menyatakan bahwa kondisi peternakan dengan kandang komunal seperti di Kabupaten Sleman menyebabkan tingkat kasus reinfeksi PMK cukup tinggi sehingga langkah vaksinasi yang cepat menjadi solusi dan semoga mendapat tambahan dosis vaksin kembali.</p><p>Prinsip penanganan PMK adalah penguatan biosekuriti, pengobatan, vaksinasi, serta pemotongan bersyarat sebagaimana disampaikan oleh Wakil Kepala Kordalops BNPB, Ary Laksmana yang turut mendampingi kegiatan kunjungan kerja DPD ini bersama tim satgas PMK DIY.</p><p>Dalam kesempatan ini, Kepala Pusat Karantina Hewan dan Keamanan Hayati Hewani, drh. Wisnu Wasesa Putra, MP., menyampaikan tindakan penguatan biosekuriti sebagai langkah mencegah penularan penyakit PMK dilakukan di pintu-pintu pemasukan suatu wilayah. Karantina Pertanian Yogyakarta sebagai salah satu ketugasannya melaksanakan pengetatan masuk ke wilayah DIY baik di bandara YIA Kulon Progo maupun di bandara Adisucipto Yogyakarta dengan pemasangan karpet desinfeksi. Beliau juga menegaskan bahwa wilayah hijau yang masih ada wajib dijaga secara maksimal. Lalu lintas untuk hewan rentan PMK diperkenankan dari daerah hijau ke sesama daerah hijau maupun dari daerah kuning ataupun merah melalui biosekuriti ketat diantaranya masa karantina yang harus terpenuhi selama 14 hari, pengambilan sampel serta pengujian dan tentunya perlakuan desinfeksi.</p><p>Dalam rangkaian kunjungan kerjanya di Yogyakarta, Abdullah Puteh bersama rombongan juga melakukan inspeksi singkat di bandara YIA Kulon Progo terkait manfaat dan implementasi penggunaan karpet desinfeksi. Ardiana Wulandari selaku Dokter Hewan Karantina yang bertugas saat itu menjelaskan untuk menekan laju penularan wabah PMK secara mekanik, yakni salah satunya penularan dengan perantara manusia, dapat dilakukan dengan desinfeksi terhadap alas kaki seluruh penumpang.</p><p>Harapannya kegiatan ini dapat meningkatkan sinergitas berbagai pihak dalam pencegahan penyebaran PMK di Indonesia, khususnya DIY sehingga Indonesia kembali dinyatakan bebas PMK.</p><p><a href=\"https://www.facebook.com/hashtag/cegahpmk?__eep__=6&amp;__cft__[0]=AZWemG6HR36-b2NNiXho0dJ-NkvTo35CogJuxR0iknNxCgcGtovgPeHqIon9dI6X5C7keo9AF2cU_Yg1xt2ZxCubfyjaN0lfDBfZyDMjat1WWZ8xqxiNM1FrOWzPh8ezolluqtuJMBToKU3yoHxYYRhEEAiB9kv2PjUlNuTLWSTvvQ&amp;__tn__=*NK-R\" rel=\"noopener noreferrer\" target=\"_blank\">#CegahPMK</a> <a href=\"https://www.facebook.com/hashtag/pmkdapatdisembuhkan?__eep__=6&amp;__cft__[0]=AZWemG6HR36-b2NNiXho0dJ-NkvTo35CogJuxR0iknNxCgcGtovgPeHqIon9dI6X5C7keo9AF2cU_Yg1xt2ZxCubfyjaN0lfDBfZyDMjat1WWZ8xqxiNM1FrOWzPh8ezolluqtuJMBToKU3yoHxYYRhEEAiB9kv2PjUlNuTLWSTvvQ&amp;__tn__=*NK-R\" rel=\"noopener noreferrer\" target=\"_blank\">#PMKdapatdisembuhkan</a></p>', 1, '/storage/2022/09/09/489989a7c1a56c2b089649e71f199c3556d41155.png', '2022-08-14', 1, '0', 'kunjungan-kerja-komite-ii-dpd-ri-di-kabupaten-sleman-daerah-istimewa-yogyakarta', '2022-09-08 18:53:36', '2022-09-08 18:53:36'),
(12, 'Donor Darah Menyambut Hari Karantina Pertanian', 'Donor darah BKP Kls II Yogyakarta', '<p>(Sleman,7/10/2022) Balai Karantina Pertanian Kelas II Yogyakarta menyelenggarakan Kegiatan Donor Darah yang diikuti pegawai dan pengguna jasa bertempat di Wilker Solo dan di Kantor Induk bekerjasama degan PMI setempat. Kegiatan  ini adalah sebagai bentuk syukur dalam rangka Hari Karantina Pertanian ke-145. </p><p><img src=\"https://karantinayogya.id/storage/2022/10/07/952110c1079dd308ca4e780b7d3e4c18cad93717.jpeg\"></p><p><br></p><p>Selain donor darah, kegiatan lain yang diselenggarakn dalam rangka HKP ke -145 adalah Bazar untuk masyarakat sekitar, distribusi bibit pohon unutk rumah ibadah dan event olahraga bersama.</p>', 1, '/storage/2022/10/07/884f59bca7de38d9dfa5745e65ce7e7664e9e4b8.png', '2022-10-07', 1, '2', 'donor-darah-menyambut-hari-karantina-pertanian', '2022-10-06 21:19:37', '2022-10-06 21:19:37'),
(13, 'Karantina Peduli, Karantina Pertanian Yogya selenggarakan bazar unutk masyarakat sekitar', 'Bazar HKP ke-145', '<p>(Sleman, 7/10/2022) Masih dalam rangkaian Hari Karantina Pertanian ke-145, BKP Kelas II Yogyakarta menyelenggarakan Bazar Sembako Murah dengan sasaran masyarakat di Dusun Santan, Kalongan, Maguwoharjo. Kegiatan ini bentuk kepedulian kepada masyarakat lingkungan kantor yang terdampak kenaikan BBM. </p><p><br></p><p><img src=\"https://karantinayogya.id/storage/2022/10/07/1f776004660177e9da4e7631bea360b175f16a68.jpeg\"></p><p><br></p><p><br></p>', 1, '/storage/2022/10/07/98baedd45d96b7b50f530469dd301982bdfad8fe.png', '2022-10-07', 1, '2', 'karantina-peduli-karantina-pertanian-yogya-selenggarakan-bazar-unutk-masyarakat-sekitar', '2022-10-06 21:30:08', '2022-10-06 21:30:08'),
(14, 'Jumat Ceria Karantina Pertanian Yogyakarta', 'Jumat Ceria', '<p>Yogyakarta (30/9) - Karantina Pertanian Yogyakarta selalu rutin melaksanakan senam pagi setiap hari Jumat untuk menjaga kesehatan pegawainya.</p><p>Bertepatan dengan kegiatan Barantan Cup lingkup Jawa Madura yang dilaksanakan di Yogyakarta, kegiatan senam pagi kali ini dilaksanakan cukup berbeda karena tidak hanya diikuti pegawai Karantina Pertanian Yogyakarta tetapi juga dihadiri oleh Ir. Wisnu Haryana dan para peserta seleksi cabang olah raga Barantan Cup seJawa-Madura.</p><p>Acara Jumat Ceria semakin meriah dengan dibagikannya doorprize dan dilanjutkan dengan latihan pemantapan atlit terpilih sesuai dengan cabang olah raganya masing-masing.</p><p>Yuk SobatQ jangan lupa sempatkan olah raga untuk menjaga kesehatan tubuh kita ya...</p><p>Salam sehat.</p><p><a href=\"https://www.facebook.com/hashtag/jumatceria?__eep__=6&amp;__cft__[0]=AZVI9szaIR6CRs5ljH8Rwi0sOELQ4vZD6nxCWgN7NIDY7CUpFulVwtYLE6lYCJV60DtFksSzfmZprMxTVtXek797hGcmTPoo7HT9REx3vlB4ePBwSWBCpkQiKKXcBYwpQ8LC1dEfi299KhFrc1trdzaUSuYt0Fhdr4ZxHMhYZeEWig&amp;__tn__=*NK-R\" rel=\"noopener noreferrer\" target=\"_blank\">#JumatCeria</a> <a href=\"https://www.facebook.com/hashtag/karantinapertanianyogyakarta?__eep__=6&amp;__cft__[0]=AZVI9szaIR6CRs5ljH8Rwi0sOELQ4vZD6nxCWgN7NIDY7CUpFulVwtYLE6lYCJV60DtFksSzfmZprMxTVtXek797hGcmTPoo7HT9REx3vlB4ePBwSWBCpkQiKKXcBYwpQ8LC1dEfi299KhFrc1trdzaUSuYt0Fhdr4ZxHMhYZeEWig&amp;__tn__=*NK-R\" rel=\"noopener noreferrer\" target=\"_blank\">#KarantinaPertanianYogyakarta</a></p>', 1, '/storage/2022/10/07/25f531a5bdb0cdb58199cd5f1e089130431bc9e1.png', '2022-09-30', 1, '2', 'jumat-ceria-karantina-pertanian-yogyakarta', '2022-10-07 00:34:26', '2022-10-07 00:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'super', 'Superadmin', '{\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\",\"platform.index\":\"1\"}', '2022-08-08 01:43:48', '2022-08-08 01:43:48'),
(2, 'admin', 'Administrator', '{\"platform.systems.attachment\":\"0\",\"platform.systems.roles\":\"0\",\"platform.systems.users\":\"1\",\"platform.index\":\"1\"}', '2022-08-08 01:44:08', '2022-08-08 01:44:08'),
(3, 'user', 'User', '{\"platform.systems.attachment\":\"0\",\"platform.systems.roles\":\"0\",\"platform.systems.users\":\"0\",\"platform.index\":\"1\"}', '2022-08-08 01:44:25', '2022-08-08 01:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` bigint(20) NOT NULL,
  `hero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `icon` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `body`, `author`, `hero`, `status`, `icon`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Karantina Hewan', 'Sertifikasi Media Pembawa Karantina Hewan', '<ul><li>Terhadap Hewan dan Produk Hewan yang dimasukan ke dalam Wilayah Negara Republik Indonesia wajib memenuhi Persyaratan sebagai berikut : Dilengkapi Sertifikat Kesehatan dari Negara Asal dan Negara Transit bagi Hewan dan Produk Hewan; Melalui Tempat-tempat Pemasukan dan Pengeluaran yang telah ditetapkan; Dilaporkan dan Diserahkan kepada Petugas Karantina di Tempat-tempat Pemasukan dan Pengeluaran untuk Keperluan Tindakan Karantina.</li><li>Terhadap Hewan dan Produk Hewan yang dibawa atau dikirim dari Suatu Area ke Area Lain di dalam Wilayah Negara Republik Indonesia wajib memenuhi Persyaratan sebagai berikut : Dilengkapi Sertifikat Kesehatan dari Area Asal bagi Hewan dan Produk Hewan kecuali Benda Lain; Melalui Tempat-tempat Pemasukan dan Pengeluaran yang telah ditetapkan; Dilaporkan dan Diserahkan kepada Petugas Karantina di Tempat-tempat Pemasukan dan Pengeluaran untuk Keperluan Tindakan Karantina.</li><li>Terhadap Hewan dan Produk Hewan yang dikeluarkan dari dalam Wilayah Negara Republik Indonesia wajib memenuhi Persyaratan sebagai berikut : Dilengkapi Sertifikat Kesehatan bagi Hewan dan Produk Hewan kecuali Benda lain; Melalui Tempat-tempat Pemasukan dan Pengeluaran yang telah ditetapkan; Dilaporkan dan Diserahkan kepada Petugas Karantina di Tempat-tempat Pemasukan dan Pengeluaran untuk Keperluan Tindakan Karantina</li></ul><p><br></p>', 1, '/storage/2022/08/04/bef391d364fce089ea39affc08ce12ae3aee9e5f.png', 1, 'fa-graduation-cap', '2022-08-04', '2022-08-04 01:49:10', '2022-08-04 21:44:09'),
(2, 'Karantina Tumbuhan', 'Sertifikasi Media Pembawa Karantina Tumbuhan', '<ol><li class=\"ql-align-justify\">Sertifikat Pelepasan Karantina Tumbuhan/Keamanan Pangan Segar Asal Tumbuhan <a href=\"http://bkp1denpasar-ppid.pertanian.go.id/doc/145/KT%209 (1).pdf\" rel=\"noopener noreferrer\" target=\"_blank\">KT-09</a>  </li><li class=\"ql-align-justify\">Phytosanitary Certificate <a href=\"http://bkp1denpasar-ppid.pertanian.go.id/doc/145/KT%2010.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">KT-10</a>   </li><li class=\"ql-align-justify\">Sertifikat Kesehatan Antar Area <a href=\"http://bkp1denpasar-ppid.pertanian.go.id/doc/145/KT%2012.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">KT-12</a>   </li><li class=\"ql-align-justify\">Laporan Hasil Pengujian Karantina&nbsp;Tumbuhan <a href=\"http://bkp1denpasar-ppid.pertanian.go.id/doc/145/Hasil%20Lab KT.pdf\" rel=\"noopener noreferrer\" target=\"_blank\">LHP</a></li></ol>', 1, '/storage/2022/08/05/854dadec969ce0c8d870030cbcb82bdde2cbaad3.png', 1, 'fa-globe', '2022-08-05', '2022-08-04 21:49:08', '2022-08-04 21:49:08'),
(3, 'Laboratorium', 'Pengujian Laboratorium Karantina Pertanian', '<p>Laboratorium karantina tumbuhan melakukan aktivitas pengujian komoditi pertanian untuk mendeteksi ada tidaknya OPT/OPTK yang kemungkinan terbawa media pembawa masuk ke wilayah Jawa Timur baik melalui ekspor, impor, maupun domestik. Terdapat 8 (delapan) Jenis OPTK yang harus ditangkal masuk dan keluarnya&nbsp;dari wilayah Negara&nbsp;Republik Indonesia, diantaranya:&nbsp;golongan bakteri, virus, cendawan / <em>fungi</em> , serangga/<em>insect</em>, nematoda, tungau / <em>mites</em>, gulma / <em>weeds</em> dan mollusca. Laboratorium ini melayani pelanggan internal yaitu POPT (Pengendali Organisme Pengganggu Tumbuhan) lingkup BBKP Surabaya.</p><p>Ruang lingkup pengujian di laboratorium yang telah terakreditasi oleh&nbsp;KAN meliputi:</p><p> 1 Deteksi dan identifikasi <em>Alternaria padwickii</em> dan <em>Tilletia barclayana</em> pada benih padi dengan metode Morfometri   2 Deteksi dan identifikasi <em>Drechslera maydis</em> pada benih padidengan metode Morfometri   3 Deteksi dan identifikasi <em>Uromycladium tepperianum </em>pada tanaman sengon dengan metode morfometri   4 Deteksi dan identifikasi <em>Tilletia barclayana</em> pada gandum dengan metode Morfometri   5 Deteksi dan identifikasi <em>Radopholus similis&nbsp;</em>dengan&nbsp;metodeMorfometri   6 Deteksi dan identifikasi sista <em>Globodera rostochiensis</em>&nbsp;dengan metode Morfometri   7 Deteksi Alfalfa Mozaic Virus (Amv) dengan Metode Compound Elisa   8 Deteksi <em>Erwinia carotovora </em>subsp<em>. atroseptica</em> dengan Metode Compound Elisa   9 Deteksi <em>Pantoea stewartii </em>dengan Metode Compound Elisa   10 Barley Stripe Mosaic Virus (Bsmv) dengan Metode DAS Elisa   11 <em>Clavibacter michiganensis </em>subsp<em>. michiganensis</em> (Cmm) denganMetode DAS Elisa   12 Identifikasi lalat buah<em> (Bactrocera spp.) </em>menggunakan metodeMorfometri   13 Identifikasi lalat buah <em>(Ceratitis capitata) </em>dengan metode morfometri   14 Identifikasi <em>Araecerus fasciculatus </em>dengan metode morfometri   15 Identifikasi <em>Ahasverus advena&nbsp;</em>dengan metode morfometri</p>', 1, '/storage/2022/08/05/eac4dc5f50f4b9cd3e247b0dfbf3b6ca06860284.png', 1, 'fa-binoculars', '2022-08-05', '2022-08-05 00:26:12', '2022-08-05 00:49:18'),
(5, 'Administrasi Umum', 'Administrasi, Ketatausahaan dan Layanan Umum', '<p>Administrasi, Ketatausahaan dan Layanan Umum</p>', 1, '/storage/2022/08/08/9dc3322400b4e756c1b6be2a840e1e043f63c130.png', 1, 'fa-database', '2022-08-08', '2022-08-07 22:56:00', '2022-08-07 22:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `judul`, `slogan`, `alamat`, `kota`, `telp`, `email`, `web`, `hero`, `instagram`, `twitter`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(9, 'Balai Karantina Pertanian Kelas II Yogyakarta', 'Profesional, Tangguh dan Terpercaya', 'Jl. Laksda Adisucipto Km.8', 'Yogyakarta', '0274-488856', 'admin@karantinayogya.org', 'yogya.karantina.pertanian.go.id', '/storage/2022/08/02/c2ebe715b86a49c36b59fa00b4338cd6f7d57900.png', 'https://www.instagram.com/karantinapertanianyogyakarta/?hl=id', 'https://mobile.twitter.com/karantina_yogya', 'https://www.facebook.com/karantina.p.yogyakarta', 'https://www.youtube.com/channel/UC-kFRUhTCbFapFluTJF_TFA/videos?view=0', '2022-08-01 20:20:01', '2022-08-01 20:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `tickers`
--

CREATE TABLE `tickers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickers`
--

INSERT INTO `tickers` (`id`, `news_title`, `content`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Donor Darah Karantina Pertanian', 'PMI Kota Yogyakarta, 7 Oktober 2022', '#', '2022-07-24 22:18:21', '2022-10-06 21:03:21'),
(3, 'Pemindahan Lokasi Layanan Kantor Pos Yogyakarta', 'Mulai Oktober 2022 dari Kantor Pos Besar Yogyakarta dipindah ke MPC Yogyakarta', '#', '2022-10-07 00:30:41', '2022-10-07 00:30:41'),
(4, 'Pelayanan Sertifikasi Karantina Pertanian pada Hari Minggu', 'Diberitahukan kepada Yth. Pengguna jasa Karantina Pertanian bahwa mulai Bulan Oktober 2022 Pelayanan Sertifikasi Karantina Pertanian pada Hari Minggu dilakukan di kantor Wilker YIA Kulon Progo', '#', '2022-10-07 00:31:11', '2022-10-07 00:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`) VALUES
(1, 'karantinayogya', 'admin@karantinayogya.id', NULL, '$2y$10$yfAHG1avvVXMW7GSBf/eee16hTTN7CPqHyRSbzakE2eQnLEFTbT3m', 'z9wfHjOo2Fe6gd1pTmB2vksrC4R2l8CTPwgnbBUqKEzy834haoml8T8QqiqV', '2022-07-18 21:44:38', '2022-07-18 21:44:38', '{\"platform.systems.roles\":true,\"platform.systems.users\":true,\"platform.systems.attachment\":true,\"platform.index\":true}'),
(2, 'rani', 'raniketindan@gmail.com', NULL, '$2y$10$Cw9kmHUgwR1kkbDHKaYkHe4z3FK15A/Jk4NtQbWRJvRDcyRqmApg.', NULL, '2022-08-08 01:45:25', '2022-08-08 01:45:25', '{\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\",\"platform.index\":\"1\"}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachmentable_attachmentable_type_attachmentable_id_index` (`attachmentable_type`,`attachmentable_id`),
  ADD KEY `attachmentable_attachment_id_foreign` (`attachment_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbars`
--
ALTER TABLE `navbars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickers`
--
ALTER TABLE `tickers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachmentable`
--
ALTER TABLE `attachmentable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `navbars`
--
ALTER TABLE `navbars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tickers`
--
ALTER TABLE `tickers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD CONSTRAINT `attachmentable_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
