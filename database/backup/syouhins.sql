-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 2 月 01 日 23:46
-- サーバのバージョン： 5.7.38-log
-- PHP のバージョン: 8.2.0RC2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `laravel`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `syouhins`
--

CREATE TABLE `syouhins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `syouhin_syubetsu_id` bigint(20) UNSIGNED NOT NULL,
  `meisyou` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kana` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hyouji` int(1) NOT NULL DEFAULT '1',
  `bikou` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `syouhins`
--

INSERT INTO `syouhins` (`id`, `syouhin_syubetsu_id`, `meisyou`, `kana`, `hyouji`, `bikou`, `updated_at`, `created_at`) VALUES
(1, 1, 'モルタル1:2', '1：2', 1, '', '2023-01-22 03:51:09', '2022-11-03 04:13:13'),
(2, 1, 'モルタル1:3', '1：3', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(3, 1, 'モルタル1:4', '1：4', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(4, 2, '普通コンクリート18-20-8', '18-20-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(5, 2, '普通コンクリート18-20-10', '18-20-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(6, 2, '普通コンクリート18-20-12', '18-20-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(7, 2, '普通コンクリート18-20-15', '18-20-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(8, 2, '普通コンクリート18-20-18', '18-20-18', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(9, 2, '普通コンクリート21-20-8', '21-20-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(10, 2, '普通コンクリート21-20-10', '21-20-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(11, 2, '普通コンクリート21-20-12', '21-20-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(12, 2, '普通コンクリート21-20-15', '21-20-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(13, 2, '普通コンクリート21-20-18', '21-20-18', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(14, 2, '普通コンクリート21-20-21', '21-20-21', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(15, 2, '普通コンクリート24-20-8', '24-20-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(16, 2, '普通コンクリート24-20-10', '24-20-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(17, 2, '普通コンクリート24-20-12', '24-20-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(18, 2, '普通コンクリート24-20-15', '24-20-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(19, 2, '普通コンクリート24-20-18', '24-20-18', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(20, 2, '普通コンクリート24-20-21', '24-20-21', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(21, 2, '普通コンクリート27-20-8', '27-20-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(22, 2, '普通コンクリート27-20-10', '27-20-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(23, 2, '普通コンクリート27-20-12', '27-20-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(24, 2, '普通コンクリート27-20-15', '27-20-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(25, 2, '普通コンクリート27-20-18', '27-20-18', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(26, 2, '普通コンクリート27-20-21', '27-20-21', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(27, 2, '普通コンクリート30-20-8', '30-20-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(28, 2, '普通コンクリート30-20-10', '30-20-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(29, 2, '普通コンクリート30-20-12', '30-20-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(30, 2, '普通コンクリート30-20-15', '30-20-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(31, 2, '普通コンクリート30-20-18', '30-20-18', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(32, 2, '普通コンクリート30-20-21', '30-20-21', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(33, 2, '普通コンクリート33-20-8', '33-20-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(34, 2, '普通コンクリート33-20-10', '33-20-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(35, 2, '普通コンクリート33-20-12', '33-20-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(36, 2, '普通コンクリート33-20-15', '33-20-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(37, 2, '普通コンクリート33-20-18', '33-20-18', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(38, 2, '普通コンクリート33-20-21', '33-20-21', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(39, 2, '普通コンクリート36-20-8', '36-20-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(40, 2, '普通コンクリート36-20-10', '36-20-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(41, 2, '普通コンクリート36-20-12', '36-20-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(42, 2, '普通コンクリート36-20-15', '36-20-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(43, 2, '普通コンクリート36-20-18', '36-20-18', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(44, 2, '普通コンクリート36-20-21', '36-20-21', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(45, 2, '普通コンクリート40-20-8', '40-20-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(46, 2, '普通コンクリート40-20-10', '40-20-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(47, 2, '普通コンクリート40-20-12', '40-20-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(48, 2, '普通コンクリート40-20-15', '40-20-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(49, 2, '普通コンクリート40-20-18', '40-20-18', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(50, 2, '普通コンクリート18-40-5', '18-40-5', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(51, 2, '普通コンクリート18-40-8', '18-40-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(52, 2, '普通コンクリート18-40-10', '18-40-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(53, 2, '普通コンクリート18-40-12', '18-40-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(54, 2, '普通コンクリート18-40-15', '18-40-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(55, 2, '普通コンクリート21-40-5', '21-40-5', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(56, 2, '普通コンクリート21-40-8', '21-40-8', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(57, 2, '普通コンクリート21-40-10', '21-40-10', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(58, 2, '普通コンクリート21-40-12', '21-40-12', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(59, 2, '普通コンクリート21-40-15', '21-40-15', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(60, 2, '普通コンクリート24-40-5', '24-40-5', 1, '', '2022-11-03 04:13:12', '2022-11-03 04:13:12'),
(61, 2, '普通コンクリート24-40-8', '24-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(62, 2, '普通コンクリート24-40-10', '24-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(63, 2, '普通コンクリート24-40-12', '24-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(64, 2, '普通コンクリート24-40-15', '24-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(65, 2, '普通コンクリート24-40-16.5', '24-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(66, 2, '普通コンクリート27-40-5', '27-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(67, 2, '普通コンクリート27-40-8', '27-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(68, 2, '普通コンクリート27-40-10', '27-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(69, 2, '普通コンクリート27-40-12', '27-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(70, 2, '普通コンクリート27-40-15', '27-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(71, 2, '普通コンクリート27-40-16.5', '27-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(72, 2, '普通コンクリート30-40-5', '30-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(73, 2, '普通コンクリート30-40-8', '30-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(74, 2, '普通コンクリート30-40-10', '30-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(75, 2, '普通コンクリート30-40-12', '30-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(76, 2, '普通コンクリート30-40-15', '30-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(77, 2, '普通コンクリート30-40-16.5', '30-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(78, 2, '普通コンクリート33-40-5', '33-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(79, 2, '普通コンクリート33-40-8', '33-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(80, 2, '普通コンクリート33-40-10', '33-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(81, 2, '普通コンクリート33-40-12', '33-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(82, 2, '普通コンクリート33-40-15', '33-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(83, 2, '普通コンクリート33-40-16.5', '33-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(84, 2, '普通コンクリート36-40-5', '36-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(85, 2, '普通コンクリート36-40-8', '36-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(86, 2, '普通コンクリート36-40-10', '36-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(87, 2, '普通コンクリート36-40-12', '36-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(88, 2, '普通コンクリート36-40-15', '36-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(89, 2, '普通コンクリート36-40-16.5', '36-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(90, 2, '普通コンクリート40-40-5', '40-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(91, 2, '普通コンクリート40-40-8', '40-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(92, 2, '普通コンクリート40-40-10', '40-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(93, 2, '普通コンクリート40-40-12', '40-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(94, 2, '普通コンクリート40-40-15', '40-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(95, 2, '普通コンクリート40-40-16.5', '40-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(96, 2, '舗装コンクリート曲げ４．５-20-2.5', 'マゲ4.5-20-2.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(97, 2, '舗装コンクリート曲げ４．５-20-6.5', 'マゲ4.5-20-6.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(98, 2, '舗装コンクリート曲げ４．５-40-2.5', 'マゲ4.5-40-2.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(99, 2, '舗装コンクリート曲げ４．５-40-6.5', 'マゲ4.5-40-6.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(100, 2, '寒中コンクリート2%21-20-15', 'NF2%21-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(101, 2, '寒中コンクリート2%21-20-18', 'NF2%21-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(102, 2, '寒中コンクリート2%24-20-12', 'NF2%24-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(103, 2, '寒中コンクリート2%27-20-15', 'NF2%27-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(104, 2, '寒中コンクリート2%30-20-8', 'NF2%30-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(105, 2, '寒中コンクリート2%33-20-15', 'NF2%33-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(106, 2, '寒中コンクリート2%33-20-18', 'NF2%33-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(107, 2, '寒中コンクリート2%24-40-8', 'NF2%24-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(108, 2, '寒中コンクリート2%24-40-12', 'NF2%24-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(109, 2, '寒中コンクリート2%27-40-5', 'NF2%27-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(110, 2, '寒中コンクリート2%27-40-12', 'NF2%27-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(111, 2, '寒中コンクリート2%30-40-5', 'NF2%30-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(112, 2, '舗装コンクリート寒中2%曲げ４．５-40-6.5', 'ホソウNF2%マゲ4.5-40-6.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(113, 2, '寒中コンクリート3%21-20-8', 'NF3%21-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(114, 2, '寒中コンクリート3%21-20-10', 'NF3%21-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(115, 2, '寒中コンクリート3%21-20-12', 'NF3%21-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(116, 2, '寒中コンクリート3%21-20-15', 'NF3%21-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(117, 2, '寒中コンクリート3%21-20-18', 'NF3%21-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(118, 2, '寒中コンクリート3%21-20-21', 'NF3%21-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(119, 2, '寒中コンクリート3%24-20-8', 'NF3%24-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(120, 2, '寒中コンクリート3%24-20-10', 'NF3%24-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(121, 2, '寒中コンクリート3%24-20-12', 'NF3%24-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(122, 2, '寒中コンクリート3%24-20-15', 'NF3%24-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(123, 2, '寒中コンクリート3%24-20-18', 'NF3%24-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(124, 2, '寒中コンクリート3%24-20-21', 'NF3%24-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(125, 2, '寒中コンクリート3%27-20-8', 'NF3%27-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(126, 2, '寒中コンクリート3%27-20-10', 'NF3%27-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(127, 2, '寒中コンクリート3%27-20-12', 'NF3%27-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(128, 2, '寒中コンクリート3%27-20-15', 'NF3%27-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(129, 2, '寒中コンクリート3%27-20-18', 'NF3%27-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(130, 2, '寒中コンクリート3%27-20-21', 'NF3%27-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(131, 2, '寒中コンクリート3%30-20-8', 'NF3%30-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(132, 2, '寒中コンクリート3%30-20-10', 'NF3%30-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(133, 2, '寒中コンクリート3%30-20-12', 'NF3%30-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(134, 2, '寒中コンクリート3%30-20-15', 'NF3%30-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(135, 2, '寒中コンクリート3%30-20-18', 'NF3%30-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(136, 2, '寒中コンクリート3%30-20-21', 'NF3%30-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(137, 2, '寒中コンクリート3%33-20-8', 'NF3%33-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(138, 2, '寒中コンクリート3%33-20-10', 'NF3%33-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(139, 2, '寒中コンクリート3%33-20-12', 'NF3%33-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(140, 2, '寒中コンクリート3%33-20-15', 'NF3%33-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(141, 2, '寒中コンクリート3%33-20-18', 'NF3%33-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(142, 2, '寒中コンクリート3%33-20-21', 'NF3%33-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(143, 2, '寒中コンクリート3%36-20-8', 'NF3%36-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(144, 2, '寒中コンクリート3%36-20-10', 'NF3%36-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(145, 2, '寒中コンクリート3%36-20-12', 'NF3%36-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(146, 2, '寒中コンクリート3%36-20-15', 'NF3%36-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(147, 2, '寒中コンクリート3%36-20-18', 'NF3%36-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(148, 2, '寒中コンクリート3%36-20-21', 'NF3%36-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(149, 2, '寒中コンクリート3%40-20-8', 'NF3%40-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(150, 2, '寒中コンクリート3%40-20-10', 'NF3%40-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(151, 2, '寒中コンクリート3%40-20-12', 'NF3%40-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(152, 2, '寒中コンクリート3%40-20-15', 'NF3%40-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(153, 2, '寒中コンクリート3%40-20-18', 'NF3%40-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(154, 2, '寒中コンクリート3%21-40-5', 'NF3%21-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(155, 2, '寒中コンクリート3%21-40-8', 'NF3%21-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(156, 2, '寒中コンクリート3%21-40-10', 'NF3%21-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(157, 2, '寒中コンクリート3%21-40-12', 'NF3%21-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(158, 2, '寒中コンクリート3%21-40-15', 'NF3%21-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(159, 2, '寒中コンクリート3%24-40-5', 'NF3%24-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(160, 2, '寒中コンクリート3%24-40-8', 'NF3%24-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(161, 2, '寒中コンクリート3%24-40-10', 'NF3%24-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(162, 2, '寒中コンクリート3%24-40-12', 'NF3%24-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(163, 2, '寒中コンクリート3%24-40-15', 'NF3%24-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(164, 2, '寒中コンクリート3%27-40-5', 'NF3%27-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(165, 2, '寒中コンクリート3%27-40-8', 'NF3%27-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(166, 2, '寒中コンクリート3%27-40-10', 'NF3%27-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(167, 2, '寒中コンクリート3%27-40-12', 'NF3%27-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(168, 2, '寒中コンクリート3%27-40-15', 'NF3%27-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(169, 2, '寒中コンクリート3%27-40-16.5', 'NF3%27-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(170, 2, '寒中コンクリート3%30-40-5', 'NF3%30-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(171, 2, '寒中コンクリート3%30-40-8', 'NF3%30-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(172, 2, '寒中コンクリート3%30-40-10', 'NF3%30-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(173, 2, '寒中コンクリート3%30-40-12', 'NF3%30-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(174, 2, '寒中コンクリート3%30-40-15', 'NF3%30-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(175, 2, '寒中コンクリート3%30-40-16.5', 'NF3%30-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(176, 2, '寒中コンクリート3%33-40-5', 'NF3%33-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(177, 2, '寒中コンクリート3%33-40-8', 'NF3%33-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(178, 2, '寒中コンクリート3%33-40-10', 'NF3%33-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(179, 2, '寒中コンクリート3%33-40-12', 'NF3%33-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(180, 2, '寒中コンクリート3%33-40-15', 'NF3%33-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(181, 2, '寒中コンクリート3%33-40-16.5', 'NF3%33-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(182, 2, '寒中コンクリート3%40-40-15', 'NF3%40-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(183, 2, '舗装コンクリート寒中3%曲げ４．５-40-2.5', 'ホソウNF3%マゲ4.5-40-2.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(184, 2, '舗装コンクリート寒中3%曲げ４．５-40-6.5', 'ホソウNF3%マゲ4.5-40-6.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(185, 2, '寒中コンクリート4%21-20-8', 'NF4%21-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(186, 2, '寒中コンクリート4%21-20-10', 'NF4%21-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(187, 2, '寒中コンクリート4%21-20-12', 'NF4%21-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(188, 2, '寒中コンクリート4%21-20-15', 'NF4%21-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(189, 2, '寒中コンクリート4%21-20-18', 'NF4%21-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(190, 2, '寒中コンクリート4%21-20-21', 'NF4%21-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(191, 2, '寒中コンクリート4%24-20-8', 'NF4%24-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(192, 2, '寒中コンクリート4%24-20-10', 'NF4%24-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(193, 2, '寒中コンクリート4%24-20-12', 'NF4%24-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(194, 2, '寒中コンクリート4%24-20-15', 'NF4%24-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(195, 2, '寒中コンクリート4%24-20-18', 'NF4%24-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(196, 2, '寒中コンクリート4%24-20-21', 'NF4%24-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(197, 2, '寒中コンクリート4%27-20-8', 'NF4%27-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(198, 2, '寒中コンクリート4%27-20-10', 'NF4%27-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(199, 2, '寒中コンクリート4%27-20-12', 'NF4%27-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(200, 2, '寒中コンクリート4%27-20-15', 'NF4%27-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(201, 2, '寒中コンクリート4%27-20-18', 'NF4%27-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(202, 2, '寒中コンクリート4%27-20-21', 'NF4%27-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(203, 2, '寒中コンクリート4%30-20-8', 'NF4%30-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(204, 2, '寒中コンクリート4%30-20-10', 'NF4%30-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(205, 2, '寒中コンクリート4%30-20-12', 'NF4%30-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(206, 2, '寒中コンクリート4%30-20-15', 'NF4%30-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(207, 2, '寒中コンクリート4%30-20-18', 'NF4%30-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(208, 2, '寒中コンクリート4%30-20-21', 'NF4%30-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(209, 2, '寒中コンクリート4%33-20-8', 'NF4%33-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(210, 2, '寒中コンクリート4%33-20-10', 'NF4%33-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(211, 2, '寒中コンクリート4%33-20-12', 'NF4%33-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(212, 2, '寒中コンクリート4%33-20-15', 'NF4%33-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(213, 2, '寒中コンクリート4%33-20-18', 'NF4%33-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(214, 2, '寒中コンクリート4%33-20-21', 'NF4%33-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(215, 2, '寒中コンクリート4%36-20-8', 'NF4%36-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(216, 2, '寒中コンクリート4%36-20-10', 'NF4%36-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(217, 2, '寒中コンクリート4%36-20-12', 'NF4%36-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(218, 2, '寒中コンクリート4%36-20-15', 'NF4%36-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(219, 2, '寒中コンクリート4%36-20-18', 'NF4%36-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(220, 2, '寒中コンクリート4%36-20-21', 'NF4%36-20-21', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(221, 2, '寒中コンクリート4%40-20-8', 'NF4%40-20-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(222, 2, '寒中コンクリート4%40-20-10', 'NF4%40-20-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(223, 2, '寒中コンクリート4%40-20-12', 'NF4%40-20-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(224, 2, '寒中コンクリート4%40-20-15', 'NF4%40-20-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(225, 2, '寒中コンクリート4%40-20-18', 'NF4%40-20-18', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(226, 2, '寒中コンクリート4%21-40-5', 'NF4%21-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(227, 2, '寒中コンクリート4%21-40-8', 'NF4%21-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(228, 2, '寒中コンクリート4%21-40-10', 'NF4%21-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(229, 2, '寒中コンクリート4%21-40-12', 'NF4%21-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(230, 2, '寒中コンクリート4%21-40-15', 'NF4%21-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(231, 2, '寒中コンクリート4%24-40-5', 'NF4%24-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(232, 2, '寒中コンクリート4%24-40-8', 'NF4%24-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(233, 2, '寒中コンクリート4%24-40-10', 'NF4%24-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(234, 2, '寒中コンクリート4%24-40-12', 'NF4%24-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(235, 2, '寒中コンクリート4%24-40-15', 'NF4%24-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(236, 2, '寒中コンクリート4%27-40-5', 'NF4%27-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(237, 2, '寒中コンクリート4%27-40-8', 'NF4%27-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(238, 2, '寒中コンクリート4%27-40-10', 'NF4%27-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(239, 2, '寒中コンクリート4%27-40-12', 'NF4%27-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(240, 2, '寒中コンクリート4%27-40-15', 'NF4%27-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(241, 2, '寒中コンクリート4%27-40-16.5', 'NF4%27-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(242, 2, '寒中コンクリート4%30-40-5', 'NF4%30-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(243, 2, '寒中コンクリート4%30-40-8', 'NF4%30-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(244, 2, '寒中コンクリート4%30-40-10', 'NF4%30-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(245, 2, '寒中コンクリート4%30-40-12', 'NF4%30-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(246, 2, '寒中コンクリート4%30-40-15', 'NF4%30-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(247, 2, '寒中コンクリート4%30-40-16.5', 'NF4%30-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(248, 2, '寒中コンクリート4%33-40-5', 'NF4%33-40-5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(249, 2, '寒中コンクリート4%33-40-8', 'NF4%33-40-8', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(250, 2, '寒中コンクリート4%33-40-10', 'NF4%33-40-10', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(251, 2, '寒中コンクリート4%33-40-12', 'NF4%33-40-12', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(252, 2, '寒中コンクリート4%33-40-15', 'NF4%33-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(253, 2, '寒中コンクリート4%33-40-16.5', 'NF4%33-40-16.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(254, 2, '寒中コンクリート4%40-40-15', 'NF4%40-40-15', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(255, 2, '舗装コンクリート寒中4%曲げ４．５-40-2.5', 'ホソウNF4%マゲ4.5-40-2.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(256, 2, '舗装コンクリート寒中4%曲げ４．５-40-6.5', 'ホソウNF4%マゲ4.5-40-6.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(257, 2, '水中不分離コンクリート', 'スイチュウフブンリ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(258, 6, '@ポンプ車基本料', 'ポンプシャキホンリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(259, 6, '@ポンプ車圧送料', 'ポンプシャアッソウリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(260, 6, '@ポンプ車出張旅費', 'ポンプシャシュッチョウリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(261, 6, '@ポンプ車配管料(20mm)', 'ポンプシャハイカンリョウ(20mm)', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(262, 6, '@ポンプ車配管料(40mm)', 'ポンプシャハイカンリョウ(40mm)', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(263, 5, '@スランプ試験料', 'スランプシケンリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(264, 5, '@空気試験料', 'クウキシケンリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(265, 5, '@縦割り試験料', 'タテワリシケンリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(266, 5, '@塩分試験料(支)', 'エンブンシケンリョウ(シキュウ)', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(267, 5, '@塩分試験料(込)', 'エンブンシケンリョウ(コミ)', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(268, 5, '@カンタブ箱売', 'カンタブハコウリ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(269, 5, '@単位水量試験料', 'タンイスイリョウシケンリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(270, 5, '@圧縮供試体試験料', 'アッシュクキョウシタイシケンリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(271, 5, '@曲げ供試体試験料', 'マゲキョウシタイシケンリョウ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(272, 5, '@強度試験(圧縮)', 'キョウドシケン(アッシュク)', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(273, 5, '@強度試験(曲げ)', 'キョウドシケン(マゲ)', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(274, 5, '@コア供試体強度試験', 'コアキョウシタイキョウドシケン', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(275, 5, '@持込み供試体強度試験', 'モチコミキョウシタイキョウドシケン', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(276, 5, '@コア供試体切断Φ10.0', 'コアキョウシタイセツダンΦ10.0', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(277, 5, '@コア供試体切断Φ12.5', 'コアキョウシタイセツダンΦ12.5', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(278, 5, '@コア供試体切断Φ15.0', 'コアキョウシタイセツダンΦ15.0', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(279, 5, '@特殊キャッピング', 'トクシュキャッピング', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(280, 5, '@試験練り(1配合)', 'シケンネリ(1ハイゴウ)', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(281, 5, '@特殊な配合の試験練り', 'トクシュナハイゴウノシケンネリ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(282, 5, '@特殊な配合の代行試験', 'トクシュナハイゴウノダイコウシケン', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(283, 5, '@外部試験機関への試料持込み運搬費', 'ガイブシケンキカンヘノシリョウモチコミウンパンヒ', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(284, 5, '@水中不分離コンクリート代行試験', 'スイチュウフブンリコンクリートシケンダイコウシケン', 1, '', '2022-11-03 04:13:13', '2022-11-03 04:13:13'),
(285, 4, '@指定休日割増料', 'シテイキュウジツワリマシリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(286, 4, '@休日割増基本料', 'キュウジツワリマシキホンリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(287, 4, '@休日割増料', 'キュウジツワリマシリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(288, 4, '@夜間割増基本料', 'ヤカンワリマシキホンリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(289, 4, '@夜間割増料', 'ヤカンワリマシリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(290, 4, '@深夜割増基本料', 'シンヤワリマシキホンリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(291, 4, '@深夜割増料', 'シンヤワリマシリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(292, 4, '@早朝割増基本料', 'ソウチョウワリマシキホンリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(293, 4, '@早朝割増料', 'ソウチョウワリマシリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(294, 4, '@空積割増料', 'クウセキワリマシリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(295, 4, '@冬季割増料', 'トウキワリマシリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(296, 4, '@特殊混和剤投入手数料(粉・液)', 'トクシュコンワザイトウニュウテスウリョウ(コナ・エキ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(297, 4, '@特殊混和剤投入手数料(顔料)', 'トクシュコンワザイトウニュウテスウリョウ(ガンリョウ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(298, 4, '@耐寒剤', 'タイカンザイ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(299, 4, '@特殊混和剤(材)', 'トクシュコンワザイ(ザイ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(300, 4, '@特別仕様品', 'トクシュシヨウヒン', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(301, 3, '@工事用水', 'コウジヨウスイ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(302, 3, '@工事用温水', 'コウジヨウオンスイ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(303, 4, '@ミキサ洗浄手数料アジテータ', 'ミキサセンジョウテスウリョウアジテータ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(304, 4, '@ミキサ洗浄手数料プラント', 'ミキサセンジョウテスウリョウプラント', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(305, 4, '@トラックアジテータかくはん手数料', 'トラックアジテータカクハンテスウリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(306, 4, '@持ち帰りコンクリート処理料', 'モチカエリコンクリートショリリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(307, 4, '@小型トラックアジテータ指定料', 'コガタトラックアジテータシテイリョウ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(308, 4, '@工場渡し', 'コウジョウワタシ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(309, 5, '@スランプ試験料(休日割増)', 'スランプシケンリョウ(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(310, 5, '@空気試験料(休日割増)', 'クウキシケンリョウ(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(311, 5, '@塩分試験料(支)(休日割増)', 'エンブンケンリョウ(シキュウ)(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(312, 5, '@塩分試験料(込)(休日割増)', 'エンブンケンリョウ(コミ)(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(313, 5, '@単位水量試験料(休日割増)', 'タンイスイリョウシケンリョウ(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(314, 5, '@単位水量試験料(秤持込割増)', 'タンイスイリョウシケンリョウ(ハカリモチコミワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(315, 5, '@曲げ供試体試験料(休日割増)', 'マゲキョウシタイシケンリョウ(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(316, 5, '@圧縮供試体試験料(休日割増)', 'アッシュクキョウシタイシケンリョウ(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(317, 5, '@強度試験(圧縮)(休日割増)', 'キョウドシケンリョウ(アッシュク)(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(318, 5, '@強度試験(曲げ)(休日割増)', 'キョウドシケンリョウ(マゲ)(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(319, 5, '@コア供試体強度試験(休日割増)', 'コアキョウシタイキョウドシケンリョウ(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(320, 5, '@持込み供試体強度試験(休日割増)', 'モチコミキョウシタイキョウドシケンリョウ(キュウジツワリマシ)', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(321, 3, '@太平洋高炉セメント', 'タイヘイヨウコウロセメント', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(322, 3, '@太平洋ポルトランドセメント', 'タイヘイヨウポルドランドセメント', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(323, 3, '@洗い砂', 'アライスナ', 1, '', '2022-11-03 04:13:14', '2022-11-03 04:13:14'),
(324, 3, '@アジ車拘束料', 'アジシャコウソクリョウ', 1, '', '2022-11-08 11:14:53', '2022-11-08 11:14:53');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `syouhins`
--
ALTER TABLE `syouhins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `syouhins_syouhin_syubetsu_id_foreign` (`syouhin_syubetsu_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `syouhins`
--
ALTER TABLE `syouhins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `syouhins`
--
ALTER TABLE `syouhins`
  ADD CONSTRAINT `syouhins_syouhin_syubetsu_id_foreign` FOREIGN KEY (`syouhin_syubetsu_id`) REFERENCES `syouhin_syubetsus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
