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
-- テーブルの構造 `hyoujis`
--

CREATE TABLE `hyoujis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meisyou` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kana` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hyouji` int(1) NOT NULL DEFAULT '1',
  `bikou` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `hyoujis`
--

INSERT INTO `hyoujis` (`id`, `meisyou`, `kana`, `hyouji`, `bikou`, `updated_at`, `created_at`) VALUES
(1, '表示', 'ヒョウジ', 1, '', '2023-01-21 17:04:52', '2023-01-22 02:03:28'),
(2, '非表示', 'ヒヒョウジ', 1, '', '2023-01-22 02:03:56', '2023-01-22 02:03:56');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `hyoujis`
--
ALTER TABLE `hyoujis`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `hyoujis`
--
ALTER TABLE `hyoujis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
