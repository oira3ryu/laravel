-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 2 月 01 日 23:47
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
-- テーブルの構造 `tanka_syubetsus`
--

CREATE TABLE `tanka_syubetsus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meisyou` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kana` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hyouji` tinyint(1) NOT NULL DEFAULT '1',
  `narabikae` int(11) DEFAULT NULL,
  `bikou` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `tanka_syubetsus`
--

INSERT INTO `tanka_syubetsus` (`id`, `meisyou`, `kana`, `hyouji`, `narabikae`, `bikou`, `updated_at`, `created_at`) VALUES
(1, '標準', 'ヒョウジュン', 1, 1, NULL, '2023-01-22 00:53:30', '2022-11-03 04:30:41'),
(2, '設計', 'セッケイ', 1, 2, '', '2022-11-03 04:30:41', '2022-11-03 04:30:41');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `tanka_syubetsus`
--
ALTER TABLE `tanka_syubetsus`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `tanka_syubetsus`
--
ALTER TABLE `tanka_syubetsus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
