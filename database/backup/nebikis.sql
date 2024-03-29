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
-- テーブルの構造 `nebikis`
--

CREATE TABLE `nebikis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nounyusaki_id` bigint(20) UNSIGNED NOT NULL,
  `tanka_syubetsu_id` bigint(20) UNSIGNED NOT NULL,
  `nebiki` int(11) NOT NULL,
  `kaishibi` date NOT NULL,
  `syuuryoubi` date NOT NULL,
  `hyouji` int(1) NOT NULL DEFAULT '1',
  `bikou` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `nebikis`
--

INSERT INTO `nebikis` (`id`, `nounyusaki_id`, `tanka_syubetsu_id`, `nebiki`, `kaishibi`, `syuuryoubi`, `hyouji`, `bikou`, `updated_at`, `created_at`) VALUES
(1, 1, 1, 0, '2022-04-01', '0000-00-00', 1, '三井住建道路㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(2, 2, 2, 0, '2022-04-01', '0000-00-00', 1, '個人', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(3, 3, 2, 0, '2022-04-01', '0000-00-00', 1, '個人', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(4, 4, 1, -300, '2022-04-01', '0000-00-00', 1, '㈱藤井組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(5, 5, 1, -600, '2022-04-01', '0000-00-00', 1, '㈱雨森組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(6, 6, 1, -500, '2022-04-01', '0000-00-00', 1, '荒井建設㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(7, 7, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱生駒組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(8, 8, 1, 0, '2022-04-01', '0000-00-00', 1, '㈲神造船建設', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(9, 9, 1, 0, '2022-04-01', '0000-00-00', 1, '㈲ツツミ', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(10, 10, 1, -500, '2022-04-01', '0000-00-00', 1, '㈲七尾工務店', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(11, 11, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱廣野組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(12, 12, 1, -1000, '2022-04-01', '0000-00-00', 1, '橋本建設工業㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(13, 13, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱堀口組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(14, 14, 1, -800, '2022-04-01', '0000-00-00', 1, '㈱吉安組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(15, 15, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱早坂組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(16, 16, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱吉田産業', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(17, 17, 1, 0, '2022-04-01', '0000-00-00', 1, '利尻電業㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(18, 18, 1, 0, '2022-04-01', '0000-00-00', 1, '星田建設', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(19, 19, 1, 0, '2022-04-01', '0000-00-00', 1, '山本建設', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(20, 20, 1, 0, '2022-04-01', '0000-00-00', 1, '大成工業', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(21, 21, 1, 0, '2022-04-01', '0000-00-00', 1, '亀田建設', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(22, 22, 1, -300, '2022-04-01', '0000-00-00', 1, '㈱藤井組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(23, 23, 1, -600, '2022-04-01', '0000-00-00', 1, '㈱雨森組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(24, 24, 1, -500, '2022-04-01', '0000-00-00', 1, '荒井建設㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(25, 25, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱生駒組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(26, 26, 1, 0, '2022-04-01', '0000-00-00', 1, '㈲神造船建設', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(27, 27, 1, 0, '2022-04-01', '0000-00-00', 1, '㈲ツツミ', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(28, 28, 1, -500, '2022-04-01', '0000-00-00', 1, '㈲七尾工務店', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(29, 29, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱廣野組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(30, 30, 1, -1000, '2022-04-01', '0000-00-00', 1, '橋本建設工業㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(31, 31, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱堀口組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(32, 32, 1, -800, '2022-04-01', '0000-00-00', 1, '㈱吉安組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(33, 33, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱早坂組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(34, 34, 1, -500, '2022-04-01', '0000-00-00', 1, '㈱吉田産業', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(35, 35, 1, 0, '2022-04-01', '0000-00-00', 1, '利尻電業㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(36, 36, 1, 0, '2022-04-01', '0000-00-00', 1, '星田建設', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(37, 37, 1, 0, '2022-04-01', '0000-00-00', 1, '山本建設', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(38, 38, 1, 0, '2022-04-01', '0000-00-00', 1, '大成工業', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(39, 39, 1, 0, '2022-04-01', '0000-00-00', 1, '亀田建設', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(40, 40, 1, 0, '2022-04-01', '0000-00-00', 1, '三井住建道路㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(41, 41, 1, -1000, '2022-04-01', '0000-00-00', 1, '㈱中田組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(42, 42, 1, -1000, '2022-04-01', '0000-00-00', 1, '㈱中田組', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(43, 43, 1, -500, '2022-04-01', '0000-00-00', 1, '藤・石塚経常建設JV', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(44, 44, 1, -1000, '2022-04-01', '0000-00-00', 1, '中田・荒井JV', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(45, 45, 1, -1000, '2022-04-01', '0000-00-00', 1, '中田・ササキJV', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(46, 46, 1, -1000, '2022-04-01', '0000-00-00', 1, '中田・ササキJV', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(47, 47, 2, 0, '2022-04-01', '0000-00-00', 1, '菅原喜夫', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(48, 48, 2, 0, '2022-04-01', '0000-00-00', 1, '稚内港湾施設㈱', '2022-10-23 05:53:00', '2022-10-23 05:53:00'),
(49, 49, 2, 0, '2022-04-01', '0000-00-00', 1, '山本隆夫', '2022-10-23 05:53:00', '2022-10-23 05:53:00');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `nebikis`
--
ALTER TABLE `nebikis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nebikis_nounyusaki_id_foreign` (`nounyusaki_id`),
  ADD KEY `nebikis_tanka_syubetsu_id_foreign` (`tanka_syubetsu_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `nebikis`
--
ALTER TABLE `nebikis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `nebikis`
--
ALTER TABLE `nebikis`
  ADD CONSTRAINT `nebikis_nounyusaki_id_foreign` FOREIGN KEY (`nounyusaki_id`) REFERENCES `nounyusakis` (`id`),
  ADD CONSTRAINT `nebikis_tanka_syubetsu_id_foreign` FOREIGN KEY (`tanka_syubetsu_id`) REFERENCES `tanka_syubetsus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
