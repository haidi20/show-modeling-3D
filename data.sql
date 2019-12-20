-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.7.24 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table concepts.room
CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_hak` int(11) NOT NULL DEFAULT '0',
  `nama_pemegang` varchar(50) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `luas` varchar(50) DEFAULT NULL,
  `letak` varchar(50) DEFAULT NULL,
  `nomor_ruang` varchar(50) DEFAULT NULL,
  `kordinat_x` varchar(50) DEFAULT NULL,
  `kordinat_y` varchar(50) DEFAULT NULL,
  `kordinat_z` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `room` DISABLE KEYS */;
REPLACE INTO `room` (`id`, `nomor_hak`, `nama_pemegang`, `nik`, `tanggal_lahir`, `luas`, `letak`, `nomor_ruang`, `kordinat_x`, `kordinat_y`, `kordinat_z`) VALUES
	(2, 3, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '112,5', 'LANTAI DASAR', 'A.2', NULL, NULL, NULL),
	(3, 4, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '112,5', 'LANTAI DASAR', 'A.3', NULL, NULL, NULL),
	(4, 5, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '120', 'LANTAI DASAR', 'A.4', NULL, NULL, NULL),
	(5, 6, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '127,5', 'LANTAI DASAR', 'A.5', NULL, NULL, NULL),
	(6, 7, 'BUDIONO', '3578260404740004', '04 April 1974', '127,5', 'LANTAI DASAR', 'A.6', NULL, NULL, NULL),
	(7, 8, 'UTOMO', '3578260407710002', '04 Juli 1971', '172,5', 'LANTAI DASAR', 'A.7', NULL, NULL, NULL),
	(8, 9, 'EDY SURYANTO', '3578260808770003', '08 Agustus 1977', '165', 'LANTAI DASAR', 'A.8', NULL, NULL, NULL),
	(9, 10, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '112,5', 'LANTAI DASAR', 'A.9', NULL, NULL, NULL),
	(10, 11, 'MUDJITO', '3578263004690001', '30 April 1969', '105', 'LANTAI DASAR', 'A.10', NULL, NULL, NULL),
	(11, 12, 'MOCH. DIANTORO', '3878262101790002', '21Januari 1979', '150', 'LANTAI 1', 'B.11', NULL, NULL, NULL),
	(12, 13, 'AHMAD FAUZI', '3578261112820002', '11 Desember 1982', '112,5', 'LANTAI 1', 'B.12', NULL, NULL, NULL),
	(13, 14, 'IWAN WAHYUDI', '3578260805790002', '08 Mei 1979', '112,5', 'LANTAI 1', 'B.13', NULL, NULL, NULL),
	(14, 15, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '120', 'LANTAI 1', 'B.14', NULL, NULL, NULL),
	(15, 16, 'MOCH. SAFI\'I', '3578261512720003', '15 Desember 1972', '127,5', 'LANTAI 1', 'B.15', NULL, NULL, NULL),
	(16, 17, 'MUDJITO', '3578263004690001', '30 April 1969', '127,5', 'LANTAI 1', 'B.16', NULL, NULL, NULL),
	(17, 18, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '172,5', 'LANTAI 1', 'B.17', NULL, NULL, NULL),
	(18, 19, 'BAMBANG SUSANTO', '3578262303740001', '23 Maret 1974', '165', 'LANTAI 1', 'B.18', NULL, NULL, NULL),
	(19, 20, 'NAFIS KURTUBI, S.E', '3578260212760001', '02 Desember 1976', '112,5', 'LANTAI 1', 'B.19', NULL, NULL, NULL),
	(20, 21, 'ERWAN SUDHARTO, S.Pd', '3578260904670001', '09 April 1967', '105', 'LANTAI 1', 'B.20', NULL, NULL, NULL),
	(21, 22, 'SUHERMAN, S.Pd.I', '3578260704540003', '07 April 1954', '150', 'LANTAI 2', 'C.21', NULL, NULL, NULL),
	(22, 23, 'SUHERMAN, S.Pd.I', '3578260704540003', '07 April 1954', '112,5', 'LANTAI 2', 'C.22', NULL, NULL, NULL),
	(23, 24, 'MOCH. IRHAM, Drs', '3578262405670001', '24 Mei 1967', '112,5', 'LANTAI 2', 'C.23', NULL, NULL, NULL),
	(24, 25, 'MOCH. IRHAM, Drs', '3578262405670001', '24 Mei 1967', '120', 'LANTAI 2', 'C.24', NULL, NULL, NULL),
	(25, 26, 'ACHMAD SAIFUL', '3578260503710001', '05 Maret 1971', '127,5', 'LANTAI 2', 'C.25', NULL, NULL, NULL),
	(26, 27, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '127,5', 'LANTAI 2', 'C.26', NULL, NULL, NULL),
	(27, 28, 'NAFIS KURTUBI, S.E', '3578260212760001', '02 Desember 1976', '172,5', 'LANTAI 2', 'C.27', NULL, NULL, NULL),
	(28, 29, 'M. USMAN', '3578261608600001', '16 Agustus 1960', '165', 'LANTAI 2', 'C.28', NULL, NULL, NULL),
	(29, 30, 'M. USMAN', '3578261608600001', '16 Agustus 1960', '112,5', 'LANTAI 2', 'C.29', NULL, NULL, NULL),
	(30, 31, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '105', 'LANTAI 2', 'C.30', NULL, NULL, NULL),
	(31, 32, 'CENDRAWATI CHANDRA SULISTIO', '3578261506730002', '15 Juni 1973', '150', 'LANTAI 3', 'D.31', NULL, NULL, NULL),
	(32, 33, 'Ir. SUROTO SOSRO HUSODO', '3578261208670001', '12 Agustus 1967', '112,5', 'LANTAI 3', 'D.32', NULL, NULL, NULL),
	(33, 34, 'Ir. SUROTO SOSRO HUSODO', '3578261208670001', '12 Agustus 1967', '112,5', 'LANTAI 3', 'D.33', NULL, NULL, NULL),
	(34, 35, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '120', 'LANTAI 3', 'D.34', NULL, NULL, NULL),
	(35, 36, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '127,5', 'LANTAI 3', 'D.35', NULL, NULL, NULL),
	(36, 37, 'YUDI HASTATI', '3578261604620003', '16 April 1962', '127,5', 'LANTAI 3', 'D.36', NULL, NULL, NULL),
	(37, 38, 'SOERIANTO SOEWARDI', '3578261902780002', '19 Februari 1978', '172,5', 'LANTAI 3', 'D.37', NULL, NULL, NULL),
	(38, 39, 'MULYATI AGIL TUMADE', '3578261904580002', '19 April 1958', '165', 'LANTAI 3', 'D.38', NULL, NULL, NULL),
	(39, 40, 'PT. MULTI JAYA CONCEPTS', '', '06 April 2009', '112,5', 'LANTAI 3', 'D.39', NULL, NULL, NULL),
	(40, 41, 'MASDARI', '3578261312620001', '31 Desember 1962', '105', 'LANTAI 3', 'D.40', NULL, NULL, NULL),
	(41, 2, 'PT. MULTI JAYA CONCEPTS', NULL, '06 April 2009', '150', 'LANTAI DASAR', 'A.1', NULL, NULL, NULL);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
