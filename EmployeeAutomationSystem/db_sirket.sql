-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Tem 2023, 17:39:12
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `db_sirket`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_adminler`
--

CREATE TABLE `tbl_adminler` (
  `kullanici_adi` text NOT NULL,
  `sifre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_adminler`
--

INSERT INTO `tbl_adminler` (`kullanici_adi`, `sifre`) VALUES
('admin', 'admin'),
('ozdenizmb', '2144');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_calisanlar`
--

CREATE TABLE `tbl_calisanlar` (
  `id` int(11) NOT NULL,
  `ad` text NOT NULL,
  `soyad` text NOT NULL,
  `departman` text NOT NULL,
  `maas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tbl_calisanlar`
--

INSERT INTO `tbl_calisanlar` (`id`, `ad`, `soyad`, `departman`, `maas`) VALUES
(1, 'Betül', 'Gündüz', 'İnsan Kaynakları', 15700),
(2, 'Nur', 'Sarı', 'Bilişim', 18500),
(3, 'Merve', 'Sönmez', 'İnsan Kaynakları', 14000),
(4, 'Ali', 'Vural', 'İnsan Kaynakları', 14500),
(5, 'Murat', 'Kandemir', 'Bilişim', 18000),
(6, 'Mehmet Baran', 'Özdeniz', 'Yönetim', 25500),
(7, 'İkra', 'Soylu', 'Yönetim', 23400),
(8, 'Ayşe', 'Tüten', 'İnsan Kaynakları', 12500),
(9, 'Mehmet', 'Aslan', 'Yönetim', 24700),
(10, 'Anıl', 'Demiralp', 'Bilişim', 18700),
(11, 'Esra', 'Güzel', 'Pazarlama', 15500),
(12, 'Aslı', 'Karabulut', 'Yönetim', 22400),
(13, 'Meryem', 'Uyanık', 'Pazarlama', 16450),
(14, 'Emine', 'Şen', 'Pazarlama', 17400),
(15, 'Hüseyin', 'Şen', 'İnsan Kaynakları', 16200),
(16, 'Büşra', 'Yüksel', 'İnsan Kaynakları', 16700),
(17, 'Özlem', 'Çevik', 'Yönetim', 21750),
(18, 'Yunus Emre', 'İhsan', 'Pazarlama', 17300),
(19, 'Zeynep', 'Öztürk', 'Pazarlama', 18500),
(20, 'Hülya', 'Kaya', 'İnsan Kaynakları', 17500),
(21, 'İsmail', 'Saymaz', 'Pazarlama', 19500),
(22, 'Ayşe', 'Kandemir', 'Bilişim', 19400),
(23, 'Umut', 'Sever', 'Bilişim', 17500),
(25, 'Hira', 'Vural', 'Pazarlama', 18500),
(29, 'Ali', 'Cansever', 'Bilişim', 24000);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tbl_calisanlar`
--
ALTER TABLE `tbl_calisanlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tbl_calisanlar`
--
ALTER TABLE `tbl_calisanlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
