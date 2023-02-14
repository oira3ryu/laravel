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
-- テーブルの構造 `koujyous`
--

CREATE TABLE `koujyous` (
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
-- テーブルのデータのダンプ `koujyous`
--

INSERT INTO `koujyous` (`id`, `meisyou`, `kana`, `hyouji`, `narabikae`, `bikou`, `updated_at`, `created_at`) VALUES
(1, '鬼脇工場', 'オニワキコウジョウ', 1, 1, 'test', '2023-01-22 19:04:37', '2022-12-16 02:43:11'),
(2, '沓形工場', 'クツガタコウジョウ', 2, 2, 'test', '2023-01-22 22:02:04', '2022-12-16 02:43:58');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `koujyous`
--
ALTER TABLE `koujyous`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `koujyous`
--
ALTER TABLE `koujyous`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
