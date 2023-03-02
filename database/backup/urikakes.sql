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
-- テーブルの構造 `urikakes`
--

CREATE TABLE `urikakes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hiduke` date NOT NULL,
  `genba_id` bigint(20) UNSIGNED NOT NULL,
  `syouhin_id` bigint(20) UNSIGNED NOT NULL,
  `tanka` double(9,2) NOT NULL,
  `suuryou` double(6,2) NOT NULL,
  `kingaku` double(13,2) NOT NULL,
  `hyouji` int(1) NOT NULL DEFAULT '1',
  `bikou` text COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `urikakes`
--

INSERT INTO `urikakes` (`id`, `hiduke`, `genba_id`, `syouhin_id`, `tanka`, `suuryou`, `kingaku`, `hyouji`, `bikou`, `updated_at`, `created_at`) VALUES
(1, '2022-04-06', 2, 9, 100.00, 0.90, 100.00, 1, '', '2023-01-30 02:58:07', '2023-01-30 02:58:07'),
(2, '2022-04-08', 3, 9, 500.00, 0.50, 2000.00, 1, '', '2023-02-01 13:57:38', '2023-02-01 13:57:38');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `urikakes`
--
ALTER TABLE `urikakes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `urikakes_genba_id_foreign` (`genba_id`),
  ADD KEY `urikakes_syouhin_id_foreign` (`syouhin_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `urikakes`
--
ALTER TABLE `urikakes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `urikakes`
--
ALTER TABLE `urikakes`
  ADD CONSTRAINT `urikakes_genba_id_foreign` FOREIGN KEY (`genba_id`) REFERENCES `genbas` (`id`),
  ADD CONSTRAINT `urikakes_syouhin_id_foreign` FOREIGN KEY (`syouhin_id`) REFERENCES `syouhins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
