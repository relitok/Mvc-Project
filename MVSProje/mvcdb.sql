-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu versiyonu:             5.7.13-log - MySQL Community Server (GPL)
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- mvcdb için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `mvcdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mvcdb`;


-- tablo yapısı dökülüyor mvcdb.urunler
CREATE TABLE IF NOT EXISTS `urunler` (
  `Urun_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Urun_Adi` varchar(50) NOT NULL,
  `Stok` varchar(50) NOT NULL,
  `Fiyat` varchar(50) NOT NULL,
  PRIMARY KEY (`Urun_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- mvcdb.urunler: ~6 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `urunler` DISABLE KEYS */;
INSERT INTO `urunler` (`Urun_Id`, `Urun_Adi`, `Stok`, `Fiyat`) VALUES
	(1, 'Vazo', '80', '30'),
	(2, 'Tabela', '50', '60'),
	(3, 'Sehpa', '20', '100'),
	(4, 'Cam Tabela', '45', '70'),
	(5, 'Plastik Tabela', '25', '40'),
	(6, 'Tahta Tabela', '70', '35');
/*!40000 ALTER TABLE `urunler` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
