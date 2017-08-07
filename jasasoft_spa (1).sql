-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 06 Agu 2017 pada 06.51
-- Versi Server: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jasasoft_spa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
`bank_id` int(11) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `bank_account_number` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `banks`
--

INSERT INTO `banks` (`bank_id`, `bank_name`, `bank_account_number`) VALUES
(1, 'Mandiri', ''),
(2, 'BCA', ''),
(3, 'BRI', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
`branch_id` int(11) NOT NULL,
  `branch_name` varchar(200) NOT NULL,
  `branch_desc` text NOT NULL,
  `branch_address` text NOT NULL,
  `branch_phone` varchar(100) NOT NULL,
  `branch_city` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `branches`
--

INSERT INTO `branches` (`branch_id`, `branch_name`, `branch_desc`, `branch_address`, `branch_phone`, `branch_city`) VALUES
(5, 'SPA Pijat Majapahit', 'Pijat', 'Jl Majapahit', '083938191981', 'Surabaya'),
(6, 'SPA Pijat Sudirman', 'Pijat', 'Jl.Panglima Sudirman', '024819411939', 'Surabaya'),
(7, 'SPA Pahlawan', 'Pijat', 'Jl Pahlawan', '089379397947', 'Jakarta'),
(8, 'Spa Cabang Testing 1', '', 'Jl. ABCDE', '12222122', 'Surabaya'),
(10, 'SPA coba', 'SPA coba', 'Banyuwangi', '777', 'Banyuwangi'),
(11, 'Cabang Testing 2', 'abcde', 'Jl. Apasaja', '123456', 'Surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `infrastruktur`
--

CREATE TABLE IF NOT EXISTS `infrastruktur` (
`infrastruktur_id` int(11) NOT NULL,
  `infrastruktur_name` varchar(200) NOT NULL,
  `infrastruktur_warna` varchar(200) NOT NULL,
  `infrastruktur_img` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data untuk tabel `infrastruktur`
--

INSERT INTO `infrastruktur` (`infrastruktur_id`, `infrastruktur_name`, `infrastruktur_warna`, `infrastruktur_img`) VALUES
(5, 'Kursi Pijat Tipe 1', 'Biru', '1501545208_2070011-20170320010953-1155803178189203.jpg'),
(6, 'Kursi Pijat Tipe 2', 'Kuning', '1501545185_2070011-20170320010953-1155803178189203.jpg'),
(17, 'Infrastruktur Testing 2', 'Warna Testing 2', '1501545226_2070011-20170320010953-1155803178189203.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`item_id` int(11) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `item_hpp` int(11) NOT NULL,
  `item_margin` int(11) NOT NULL,
  `item_harga_jual` int(11) NOT NULL,
  `item_limit` int(11) NOT NULL,
  `item_satuan` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_hpp`, `item_margin`, `item_harga_jual`, `item_limit`, `item_satuan`) VALUES
(1, 'Minyak Kayu Putih Cap Lang', 16000, 6000, 21000, 20, 8),
(2, 'Minyak Kayu Putih Cap Gajah', 20000, 5000, 25000, 12, 8),
(3, 'Jasmine Massage Lotion', 70000, 5000, 75000, 12, 9),
(4, 'ITEM D', 20000, 10000, 30000, 53, 6),
(31, 'ITEM E', 30000, 5000, 35000, 24, 6),
(32, 'ITEM F', 10000, 10000, 20000, 23, 7),
(33, 'ITEM G', 3000, 5000, 35000, 65, 5),
(34, 'ITEM H', 5000, 2000, 7000, 20, 6),
(35, 'ITEM I', 4000, 2000, 6000, 40, 7),
(36, 'ITEM J', 5000, 2000, 7000, 32, 6),
(37, 'ITEM K', 6000, 3000, 9000, 22, 5),
(38, 'Item Testing 1', 10000, 10000, 20000, 100, 5),
(39, 'aa', 0, 0, 0, 0, 5),
(40, 'Item coba', 12000, 10000, 25000, 1000, 5),
(41, 'Item coba', 12000, 10000, 25000, 1, 6),
(42, 'Item Testing 2', 10000, 10000, 20000, 100, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_stocks`
--

CREATE TABLE IF NOT EXISTS `item_stocks` (
`item_stock_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `item_stock_qty` int(11) NOT NULL,
  `branch` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `item_stocks`
--

INSERT INTO `item_stocks` (`item_stock_id`, `item`, `item_stock_qty`, `branch`) VALUES
(1, 1, 100, 5),
(2, 4, 2, 5),
(3, 1, 3, 5),
(4, 38, 50, 8),
(5, 41, 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `journals`
--

CREATE TABLE IF NOT EXISTS `journals` (
`journal_id` int(11) NOT NULL,
  `journal_type_id` int(11) NOT NULL,
  `data_id` varchar(11) NOT NULL,
  `data_url` text NOT NULL,
  `journal_debit` int(11) NOT NULL,
  `journal_credit` int(11) NOT NULL,
  `journal_piutang` int(11) NOT NULL,
  `journal_hutang` int(11) NOT NULL,
  `journal_date` date NOT NULL,
  `journal_desc` text NOT NULL,
  `bank_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `journals`
--

INSERT INTO `journals` (`journal_id`, `journal_type_id`, `data_id`, `data_url`, `journal_debit`, `journal_credit`, `journal_piutang`, `journal_hutang`, `journal_date`, `journal_desc`, `bank_id`, `user_id`, `branch_id`) VALUES
(13, 2, '64', 'purchase.php?page=form&id=', 0, 214, 0, 0, '2017-04-10', '', 5, 11, 0),
(14, 2, '2147483647', 'purchase.php?page=form&id=', 0, 2000, 0, 0, '2017-04-10', '', 5, 11, 0),
(15, 2, '2147483647', 'purchase.php?page=form&id=', 0, 3000, 0, 0, '2017-04-10', '', 6, 11, 0),
(16, 2, '2147483647', 'purchase.php?page=form&id=', 0, 10000, 0, 0, '2017-04-10', '', 5, 11, 0),
(17, 2, '21491817647', 'purchase.php?page=form&id=', 0, 5000, 0, 0, '2017-04-10', '', 5, 11, 0),
(18, 2, '21491817760', 'purchase.php?page=form&id=', 0, 50000, 0, 0, '2017-04-10', '', 5, 11, 0),
(19, 2, '21491818353', 'purchase.php?page=form&id=', 0, 2000, 0, 0, '2017-04-10', '', 6, 11, 0),
(20, 2, '21491877231', 'purchase.php?page=form&id=', 0, 8000, 0, 0, '2017-04-11', '', 5, 11, 0),
(21, 2, '21492583046', 'purchase.php?page=form&id=', 0, 20000, 0, 0, '2017-04-19', '', 5, 11, 0),
(22, 2, '21492756818', 'purchase.php?page=form&id=', 0, 10000, 0, 0, '2017-04-21', '', 5, 11, 0),
(23, 2, '21492756883', 'purchase.php?page=form&id=', 0, 10000, 0, 0, '2017-04-21', '', 5, 11, 0),
(24, 2, '21500542401', 'purchase.php?page=form&id=', 0, 8000, 0, 0, '2017-07-20', '', 8, 11, 0),
(25, 3, '25', 'jurnal_umum.php?page=form&id=', 200000, 0, 200000, 0, '2017-07-20', 'Iuran', 1, 11, 5),
(26, 4, '26', 'jurnal_umum.php?page=form&id=', 0, 100000, 0, 100000, '2017-07-20', 'Sumbangan', 0, 11, 5),
(27, 2, '21501042949', 'purchase.php?page=form&id=', 0, 10000, 0, 0, '2017-07-25', '', 10, 11, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `journal_types`
--

CREATE TABLE IF NOT EXISTS `journal_types` (
`journal_type_id` int(11) NOT NULL,
  `journal_type_name` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `journal_types`
--

INSERT INTO `journal_types` (`journal_type_id`, `journal_type_name`) VALUES
(1, 'Penjualan'),
(2, 'Pembelian'),
(3, 'Pemasukan lainnya'),
(4, 'Pengeluaran lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`kategori_id` int(11) NOT NULL,
  `kategori_name` varbinary(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_name`) VALUES
(1, 0x42616b6d6965),
(2, 0x4e617369),
(3, 0x4b77657469617577),
(4, 0x4d696e756d616e),
(5, 0x50616b6574),
(11, 0x476f20466f6f64);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_paket_pijat`
--

CREATE TABLE IF NOT EXISTS `kategori_paket_pijat` (
`kategori_paket_pijat_id` int(11) NOT NULL,
  `kategori_paket_pijat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konversi_item`
--

CREATE TABLE IF NOT EXISTS `konversi_item` (
`konversi_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `satuan_utama` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan_konversi` int(11) NOT NULL,
  `jumlah_satuan_konversi` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `konversi_item`
--

INSERT INTO `konversi_item` (`konversi_id`, `item_id`, `satuan_utama`, `jumlah`, `satuan_konversi`, `jumlah_satuan_konversi`) VALUES
(1, 1, 6, 1, 5, 10),
(3, 1, 6, 1, 7, 2),
(4, 1, 6, 1, 8, 5),
(5, 40, 5, 10000, 6, 15000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE IF NOT EXISTS `members` (
`member_id` int(11) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_dateofbirth` date NOT NULL,
  `member_phone` varchar(100) NOT NULL,
  `member_alamat` varchar(30) NOT NULL,
  `member_email` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`member_id`, `member_name`, `member_dateofbirth`, `member_phone`, `member_alamat`, `member_email`) VALUES
(1, 'member 12', '2017-07-24', '089657345765', 'jl lontar', 'member1@gmail.com'),
(2, 'member 2', '2017-07-26', '088329134198', 'jl lontar ', 'member2@gmail.com'),
(6, 'Arif', '2017-07-24', '88855', 'banyuwangi', 'email@yahoo.com'),
(8, 'Arif', '2017-07-24', '777', 'banyuwangi', 'email@yahoo.com'),
(9, 'Suroso', '2017-08-02', '081515141619', 'Wonsalam', 'lutfi@dr.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member_items`
--

CREATE TABLE IF NOT EXISTS `member_items` (
`member_item_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `office`
--

CREATE TABLE IF NOT EXISTS `office` (
  `office_id` int(11) NOT NULL,
  `office_name` varchar(200) NOT NULL,
  `office_img` text NOT NULL,
  `office_desc` text NOT NULL,
  `office_address` text NOT NULL,
  `office_phone` varchar(100) NOT NULL,
  `office_email` varchar(300) NOT NULL,
  `office_city` varchar(100) NOT NULL,
  `office_owner` varchar(100) NOT NULL,
  `office_owner_phone` varchar(100) NOT NULL,
  `office_owner_address` varchar(100) NOT NULL,
  `office_owner_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `office`
--

INSERT INTO `office` (`office_id`, `office_name`, `office_img`, `office_desc`, `office_address`, `office_phone`, `office_email`, `office_city`, `office_owner`, `office_owner_phone`, `office_owner_address`, `office_owner_email`) VALUES
(1, 'ZEE HOLISTIC LIVING', '1491902225_1491894433_spa 6.jpg', '', '																																																																																																																																																																																																																																																																				JL. RAYA LONTAR 226 SURABAYA																																																																																																																																																																																																																																																																								', '(031)-04408-0-02', 'zeeholistic@gmail.com', 'SURABAYA', 'Danu Ariska', '0856-3435-4233', 'Surabaya', 'pemilik@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`order_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `branch` int(11) NOT NULL,
  `member` int(11) NOT NULL,
  `order_sub_total` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `change` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `bank` int(11) NOT NULL,
  `bank_account_number` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_tmp`
--

CREATE TABLE IF NOT EXISTS `order_tmp` (
`order_id` int(11) NOT NULL,
  `member` int(11) NOT NULL,
  `reservasi` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `branch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_pijat`
--

CREATE TABLE IF NOT EXISTS `paket_pijat` (
`paket_pijat_id` int(11) NOT NULL,
  `paket_pijat_name` varchar(200) NOT NULL,
  `paket_pijat_harga` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `paket_pijat`
--

INSERT INTO `paket_pijat` (`paket_pijat_id`, `paket_pijat_name`, `paket_pijat_harga`) VALUES
(1, 'Pijat Enak', 1500000),
(3, 'Pijat Ples Ples', 2500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_pijat_details`
--

CREATE TABLE IF NOT EXISTS `paket_pijat_details` (
`paket_pijat_detail_id` int(11) NOT NULL,
  `paket_pijat` int(11) NOT NULL,
  `pijat` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `paket_pijat_details`
--

INSERT INTO `paket_pijat_details` (`paket_pijat_detail_id`, `paket_pijat`, `pijat`) VALUES
(2, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
`partner_id` int(11) NOT NULL,
  `partner_name` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `partners`
--

INSERT INTO `partners` (`partner_id`, `partner_name`) VALUES
(1, 'Bakmi Gili');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
`payment_id` int(11) NOT NULL,
  `registration_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_jumlah` int(11) NOT NULL,
  `payment_sisa` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_methods`
--

CREATE TABLE IF NOT EXISTS `payment_methods` (
`payment_method_id` int(11) NOT NULL,
  `payment_method_name` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `payment_method_name`) VALUES
(1, 'Cash'),
(2, 'Debit'),
(3, 'Credit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemijat`
--

CREATE TABLE IF NOT EXISTS `pemijat` (
`pemijat_id` int(11) NOT NULL,
  `pemijat_name` varchar(100) NOT NULL,
  `pemijat_dateofbirth` date NOT NULL,
  `pemijat_phone` varchar(100) NOT NULL,
  `pemijat_alamat` varchar(30) NOT NULL,
  `available` varchar(2) NOT NULL,
  `branch_id` varchar(3) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `pemijat`
--

INSERT INTO `pemijat` (`pemijat_id`, `pemijat_name`, `pemijat_dateofbirth`, `pemijat_phone`, `pemijat_alamat`, `available`, `branch_id`) VALUES
(1, 'Dina', '1992-02-14', '318951232', 'Banyuwangi1', '90', '5'),
(4, 'Mbak Mbak', '2017-08-02', '1234', 'Sana', '', '5'),
(5, 'Mbak 1', '2017-08-03', '1234', 'situ', '1', '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permits`
--

CREATE TABLE IF NOT EXISTS `permits` (
`permit_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `side_menu_id` int(11) NOT NULL,
  `permit_acces` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=769 ;

--
-- Dumping data untuk tabel `permits`
--

INSERT INTO `permits` (`permit_id`, `user_type_id`, `side_menu_id`, `permit_acces`) VALUES
(706, 1, 1, '0'),
(707, 1, 2, 'c,r,u,d'),
(708, 1, 3, '0'),
(709, 1, 4, '0'),
(710, 1, 5, '0'),
(711, 1, 6, '0'),
(712, 1, 7, 'c,r,u,d'),
(713, 1, 8, 'c,r,u,d'),
(714, 1, 9, 'c,r,u,d'),
(715, 1, 10, 'c,r,u,d'),
(716, 1, 11, '0'),
(717, 1, 12, '0'),
(718, 1, 13, 'c,r,u,d'),
(719, 1, 14, 'c,r,u,d'),
(720, 1, 16, 'c,r,u,d'),
(721, 1, 17, 'c,r,u,d'),
(722, 1, 18, 'c,r,u,d'),
(723, 1, 19, 'c,r,u,d'),
(724, 1, 20, 'c,r,u,d'),
(725, 1, 21, 'c,r,u,d'),
(726, 1, 22, 'c,r,u,d'),
(727, 1, 23, 'c,r,u,d'),
(728, 1, 24, 'c,r,u,d'),
(729, 1, 25, 'c,r,u,d'),
(730, 1, 26, ''),
(731, 1, 27, 'c,r,u,d'),
(732, 1, 28, ''),
(733, 1, 30, 'c,r,u,d'),
(734, 1, 31, 'c,r,u,d'),
(735, 1, 32, 'c,r,u,d'),
(736, 5, 1, '0'),
(737, 5, 2, ''),
(738, 5, 3, '0'),
(739, 5, 4, '0'),
(740, 5, 5, '0'),
(741, 5, 6, '0'),
(742, 5, 7, ''),
(743, 5, 8, ''),
(744, 5, 9, ''),
(745, 5, 10, ''),
(746, 5, 11, '0'),
(747, 5, 12, '0'),
(748, 5, 13, ''),
(749, 5, 14, ''),
(750, 5, 16, ''),
(751, 5, 17, ''),
(752, 5, 18, ''),
(753, 5, 19, 'c,r,u,d'),
(754, 5, 20, 'c,r,u,d'),
(755, 5, 21, ''),
(756, 5, 22, ''),
(757, 5, 23, ''),
(758, 5, 24, ''),
(759, 5, 25, ''),
(760, 5, 26, ''),
(761, 5, 27, ''),
(762, 5, 28, ''),
(763, 5, 30, ''),
(764, 5, 31, ''),
(765, 5, 32, ''),
(766, 1, 33, 'c,r,u,d'),
(767, 1, 34, 'c,r,u,d'),
(768, 1, 36, 'c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pijat`
--

CREATE TABLE IF NOT EXISTS `pijat` (
`pijat_id` int(11) NOT NULL,
  `pijat_name` varchar(200) NOT NULL,
  `pijat_waktu` int(11) NOT NULL,
  `pijat_harga` int(11) NOT NULL,
  `infrastruktur` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `pijat`
--

INSERT INTO `pijat` (`pijat_id`, `pijat_name`, `pijat_waktu`, `pijat_harga`, `infrastruktur`) VALUES
(1, 'Pijat Tungkak', 60, 32000, 1),
(2, 'Pijat Jempol', 30, 32000, 0),
(3, 'Pijat Geger', 45, 23000, 0),
(4, 'Pijat Geger 2', 35, 23500, 0),
(5, 'pijat kepala', 45, 400000, 4),
(6, 'Pijat Testing 1', 60, 1500000, 6),
(7, 'lala', 10, 14000, 5),
(9, 'coba', 12, 12000, 5),
(10, 'nama paket', 1, 75000, 5),
(11, 'Pijat Testing 2', 60, 300000, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pijat_details`
--

CREATE TABLE IF NOT EXISTS `pijat_details` (
`pijat_detail_id` int(11) NOT NULL,
  `pijat` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `satuan` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `pijat_details`
--

INSERT INTO `pijat_details` (`pijat_detail_id`, `pijat`, `item`, `satuan`, `item_qty`) VALUES
(2, 6, 38, 5, 10),
(3, 7, 1, 5, 150),
(4, 5, 2, 6, 10),
(5, 9, 1, 6, 10),
(6, 1, 1, 8, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
`purchase_id` int(11) NOT NULL,
  `purchase_code` varchar(200) NOT NULL,
  `purchase_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `purchase_qty` int(11) NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `purchase_total` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `purchase_code`, `purchase_date`, `item_id`, `purchase_qty`, `purchase_price`, `purchase_total`, `supplier_id`, `branch_id`, `satuan_id`) VALUES
(1, '21492756883', '2017-04-21', 1, 3, 10000, 30000, 9, 5, 5),
(2, '21500542401', '2017-07-20', 38, 50, 8000, 400000, 12, 8, 5),
(3, '21501042949', '2017-07-25', 41, 1, 10000, 10000, 7, 10, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE IF NOT EXISTS `reservasi` (
`reservasi_id` int(11) NOT NULL,
  `reservasi_code` varchar(200) NOT NULL,
  `reservasi_date1` datetime NOT NULL,
  `reservasi_date2` datetime NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reserved`
--

CREATE TABLE IF NOT EXISTS `reserved` (
`reserved_id` int(11) NOT NULL,
  `member_id` varchar(200) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `hour` time DEFAULT NULL,
  `pijat` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data untuk tabel `reserved`
--

INSERT INTO `reserved` (`reserved_id`, `member_id`, `phone`, `address`, `date`, `hour`, `pijat`, `status`) VALUES
(27, '3', '085467234756', 'jl lontar 226', '2017-04-27', '08:00:00', 2, 0),
(29, '6', '123456', 'alamat', '2017-05-24', '05:07:00', 1, 0),
(30, '7', '12345678', 'Jl. ABCDE', '2017-07-20', '09:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
`ruangan_id` int(11) NOT NULL,
  `ruangan_name` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `available` varchar(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`ruangan_id`, `ruangan_name`, `branch_id`, `available`) VALUES
(9, 'Ruang 1', 6, '1'),
(10, 'Ruang Anggrek', 5, ''),
(12, 'Ruang 3', 7, '1'),
(14, 'Ruang 1', 8, '1'),
(15, 'Ruang 2', 8, '1'),
(18, 'Ruang coba', 10, '1'),
(27, 'Ruang Melati', 5, '1'),
(28, 'Ruang coba', 10, '1'),
(29, 'Ruang coba coba', 5, '1'),
(30, 'Ruang 1', 8, '1'),
(31, 'Ruang Kepsek', 5, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan_infrastruktur`
--

CREATE TABLE IF NOT EXISTS `ruangan_infrastruktur` (
`ruangan_infrastruktur_id` int(10) unsigned NOT NULL,
  `ruangan` int(11) NOT NULL,
  `branch` int(11) NOT NULL,
  `infrastruktur` int(11) NOT NULL,
  `infrastruktur_name` varchar(200) NOT NULL,
  `koordinat_x` int(11) NOT NULL,
  `koordinat_y` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `ruangan_infrastruktur`
--

INSERT INTO `ruangan_infrastruktur` (`ruangan_infrastruktur_id`, `ruangan`, `branch`, `infrastruktur`, `infrastruktur_name`, `koordinat_x`, `koordinat_y`, `status`) VALUES
(11, 9, 7, 1, 'Kursi Pijat 2', 450, 283, 0),
(12, 9, 7, 1, 'Kursi Pijat 1', 574, 173, 0),
(17, 0, 7, 0, '', 0, 0, 0),
(19, 0, 7, 0, '', 0, 0, 0),
(20, 0, 7, 0, '', 0, 0, 0),
(21, 9, 7, 6, 'Tes1', 94, 130, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
`satuan_id` int(11) NOT NULL,
  `satuan_name` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`satuan_id`, `satuan_name`) VALUES
(5, 'ml'),
(6, 'liter'),
(7, 'Botol 300 ml'),
(8, 'Botol 100 ml'),
(9, 'Botol 600 ml');

-- --------------------------------------------------------

--
-- Struktur dari tabel `side_menus`
--

CREATE TABLE IF NOT EXISTS `side_menus` (
`side_menu_id` int(11) NOT NULL,
  `side_menu_name` varchar(100) NOT NULL,
  `side_menu_url` varchar(100) NOT NULL,
  `side_menu_parent` int(11) NOT NULL,
  `side_menu_icon` varchar(100) NOT NULL,
  `side_menu_level` int(11) NOT NULL,
  `side_menu_type_parent` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data untuk tabel `side_menus`
--

INSERT INTO `side_menus` (`side_menu_id`, `side_menu_name`, `side_menu_url`, `side_menu_parent`, `side_menu_icon`, `side_menu_level`, `side_menu_type_parent`) VALUES
(1, 'Master', '#', 0, 'fa fa-edit', 1, 0),
(2, 'Order', 'transaction.php', 0, 'fa fa-leaf', 1, 1),
(3, 'Transaksi', '#', 0, 'fa fa-shopping-cart', 1, 0),
(4, 'Accounting', '#', 0, 'fa fa-list-alt', 1, 0),
(5, 'Laporan', '#', 0, 'fa fa-list-alt', 1, 0),
(6, 'Setting', '#', 0, 'fa fa-cog', 1, 0),
(7, 'Cabang', 'branch.php', 1, '', 2, 1),
(8, 'Ruangan', 'building.php', 1, '', 2, 1),
(9, 'Infrastruktur', 'infrastruktur.php', 1, '', 2, 1),
(10, 'Pijat', 'pijat.php', 1, '', 2, 1),
(11, 'Paket Pijat', 'paket_pijat.php', 0, '', 0, 0),
(12, 'Partner', 'partner.php', 0, '', 0, 0),
(13, 'Member', 'member.php', 1, '', 2, 1),
(14, 'Supplier', 'supplier.php', 1, '', 2, 1),
(16, 'Appointment', 'reserved.php', 3, '', 2, 1),
(17, 'Pembelian', 'purchase.php', 3, '', 2, 1),
(18, 'Stok', 'stock.php', 3, '', 2, 1),
(19, 'Arus Kas', 'arus_kas.php', 4, '', 2, 1),
(20, 'Pemasukan Dan Pengeluaran Lainnya', 'jurnal_umum.php', 4, '', 2, 1),
(21, 'Laporan Detail', 'report_detail.php', 5, '', 2, 1),
(22, 'Laporan Harian', 'report_harian.php', 5, '', 2, 1),
(23, 'Infrastruktur', 'infrastruktur_setting.php', 6, '', 2, 1),
(24, 'User', 'user.php', 6, '', 2, 1),
(25, 'Type User', 'user_type.php', 6, '', 2, 1),
(26, 'Penyesuaian Stock', 'penyesuaian_stock.php', 0, '', 0, 1),
(27, 'Laporan Penyesuaian Stock', 'report_penyesuaian_stock.php', 5, '', 2, 1),
(28, 'Kategori Menu', 'kategori_menu.php', 0, '', 0, 1),
(30, 'Profil', 'office.php', 6, '', 2, 1),
(31, 'Item', 'item.php', 3, '', 2, 1),
(32, 'Satuan', 'satuan.php', 1, '', 2, 1),
(33, 'Laporan Terapis', 'report_terapis.php', 5, '', 2, 1),
(34, 'pemijat', 'pemijat.php', 1, '', 2, 1),
(36, 'Kasir', 'kasir.php', 0, 'fa fa-money', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statement`
--

CREATE TABLE IF NOT EXISTS `statement` (
`statement_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `tekanan` int(11) NOT NULL,
  `asma` int(11) NOT NULL,
  `inhaler` int(11) NOT NULL,
  `leher` int(11) NOT NULL,
  `kulit` int(11) NOT NULL,
  `kulit_jabarkan` varchar(100) NOT NULL,
  `selain_diatas` int(11) NOT NULL,
  `selain_jabarkan` varchar(100) NOT NULL,
  `alergi` int(11) NOT NULL,
  `alergi_jabarkan` varchar(100) NOT NULL,
  `hamil` int(11) NOT NULL,
  `usia_kandungan` varchar(100) NOT NULL,
  `kontak_lens` int(11) NOT NULL,
  `melepas_lens` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `spesial` int(11) NOT NULL,
  `jawaban` int(11) NOT NULL,
  `tidak_menyembunyikan` int(11) NOT NULL,
  `tanggung_jawab` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `statement`
--

INSERT INTO `statement` (`statement_id`, `member_id`, `tekanan`, `asma`, `inhaler`, `leher`, `kulit`, `kulit_jabarkan`, `selain_diatas`, `selain_jabarkan`, `alergi`, `alergi_jabarkan`, `hamil`, `usia_kandungan`, `kontak_lens`, `melepas_lens`, `level`, `spesial`, `jawaban`, `tidak_menyembunyikan`, `tanggung_jawab`) VALUES
(1, 1, 2, 1, 1, 2, 2, '', 2, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(2, 3, 2, 2, 2, 2, 2, '', 2, '', 2, '', 2, '', 2, 2, 3, 2, 1, 1, 1),
(3, 0, 2, 2, 2, 2, 2, '', 2, '', 2, '', 2, '', 1, 1, 3, 1, 1, 1, 1),
(4, 0, 2, 2, 2, 2, 2, '', 2, '', 2, '', 2, '', 2, 2, 3, 2, 1, 1, 1),
(5, 7, 2, 1, 2, 1, 2, '', 2, '', 2, '', 2, '', 2, 2, 1, 2, 1, 1, 1),
(6, 0, 2, 1, 2, 1, 2, '', 1, '', 2, '', 2, '', 2, 2, 1, 2, 1, 1, 1),
(7, 0, 2, 2, 2, 2, 2, '', 2, '', 2, '', 2, '', 2, 2, 3, 2, 1, 1, 1),
(8, 6, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0),
(9, 2, 2, 1, 2, 2, 1, 'lala', 2, '', 2, '', 2, '', 2, 2, 1, 1, 1, 1, 1),
(10, 0, 1, 1, 2, 2, 2, '', 2, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(11, 0, 1, 1, 2, 2, 2, '', 2, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(12, 0, 1, 1, 2, 2, 2, '', 2, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(13, 0, 1, 1, 2, 2, 2, '', 2, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(14, 0, 1, 1, 2, 2, 2, '', 2, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(15, 0, 1, 1, 2, 2, 2, '', 2, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(16, 0, 1, 1, 2, 2, 2, '', 2, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(17, 0, 1, 1, 2, 2, 2, '', 0, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(18, 0, 1, 1, 2, 2, 2, '', 0, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(19, 9, 2, 1, 2, 2, 2, '', 2, '', 2, '', 2, '', 2, 1, 3, 2, 2, 2, 2),
(20, 0, 2, 1, 2, 2, 2, '', 0, '', 2, '', 2, '', 2, 1, 3, 2, 2, 2, 2),
(21, 0, 2, 1, 2, 2, 2, '', 0, '', 2, '', 2, '', 2, 1, 3, 2, 2, 2, 2),
(22, 0, 2, 1, 1, 2, 2, '', 0, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1),
(23, 0, 2, 1, 1, 2, 2, '', 0, '', 2, '', 2, '', 1, 2, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statement_order`
--

CREATE TABLE IF NOT EXISTS `statement_order` (
`statement_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `tekanan` int(11) NOT NULL,
  `asma` int(11) NOT NULL,
  `inhaler` int(11) NOT NULL,
  `leher` int(11) NOT NULL,
  `kulit` int(11) NOT NULL,
  `kulit_jabarkan` varchar(100) NOT NULL,
  `selain_diatas` int(11) NOT NULL,
  `selain_jabarkan` varchar(100) NOT NULL,
  `alergi` int(11) NOT NULL,
  `alergi_jabarkan` varchar(100) NOT NULL,
  `hamil` int(11) NOT NULL,
  `usia_kandungan` varchar(100) NOT NULL,
  `kontak_lens` int(11) NOT NULL,
  `melepas_lens` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `spesial` int(11) NOT NULL,
  `jawaban` int(11) NOT NULL,
  `tidak_menyembunyikan` int(11) NOT NULL,
  `tanggung_jawab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`status_id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
`supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `supplier_phone` int(11) NOT NULL,
  `supplier_email` varchar(100) NOT NULL,
  `supplier_addres` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `supplier_phone`, `supplier_email`, `supplier_addres`) VALUES
(10, 'Supplier 3', 2147483647, 'supplier3@gmail.com', 'Jl.Embong Malang'),
(7, 'Supplier 1', 2147483647, 'supplier1@gmail.com', 'Jl.majapahit'),
(9, 'Supplier 2', 2147483647, 'suppliler2@gmail.com', 'Jl.Sudirman\r\n'),
(12, 'Supplier Testing 1', 123456789, 'suppliertesting1@gmail.com', 'Jl. Gubernur Suryo, Surabaya'),
(13, 'Toko A', 123, 'a@d.c', 'a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
`transaction_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_discount` int(11) NOT NULL,
  `disc_member` int(11) NOT NULL,
  `transaction_grand_total` int(11) NOT NULL,
  `transaction_payment` int(11) NOT NULL,
  `transaction_change` int(11) NOT NULL,
  `transaction_disc_nominal` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_account_number` varchar(100) NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `flag_code` int(1) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `branch_id`, `member_id`, `transaction_date`, `transaction_total`, `transaction_discount`, `disc_member`, `transaction_grand_total`, `transaction_payment`, `transaction_change`, `transaction_disc_nominal`, `payment_method_id`, `bank_id`, `user_id`, `bank_account_number`, `transaction_code`, `flag_code`) VALUES
(1, 9, 9, '2017-08-02 00:00:00', 9, 9, 9, 9, 9, 9, 99, 9, 9, 9, '9', 9, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions_tmp`
--

CREATE TABLE IF NOT EXISTS `transactions_tmp` (
`transaction_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `pijat` int(11) NOT NULL,
  `pijat_price` int(11) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `rombongan` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Dumping data untuk tabel `transactions_tmp`
--

INSERT INTO `transactions_tmp` (`transaction_id`, `member_id`, `branch_id`, `pijat`, `pijat_price`, `transaction_date`, `transaction_code`, `rombongan`) VALUES
(1, 26, 7, 0, 0, '2017-04-17 00:00:00', 0, 0),
(2, 26, 7, 0, 0, '2017-04-17 00:00:00', 0, 0),
(3, 26, 7, 0, 0, '2017-04-17 00:00:00', 0, 0),
(4, 26, 7, 0, 0, '2017-04-17 00:00:00', 0, 0),
(5, 26, 7, 0, 0, '2017-04-17 00:00:00', 0, 0),
(6, 26, 7, 0, 0, '2017-04-17 00:00:00', 0, 0),
(7, 26, 7, 0, 0, '2017-04-17 00:00:00', 0, 0),
(8, 26, 7, 2, 32, '2017-04-17 00:00:00', 0, 0),
(9, 26, 7, 2, 32, '2017-04-17 00:00:00', 0, 0),
(10, 1, 7, 4, 24, '2017-04-17 00:00:00', 0, 0),
(11, 2, 7, 4, 24, '2017-04-17 00:00:00', 0, 0),
(12, 3, 7, 3, 23, '2017-04-17 00:00:00', 0, 0),
(13, 2, 7, 2, 32, '2017-04-17 00:00:00', 0, 0),
(14, 1, 7, 2, 32, '2017-04-17 00:00:00', 0, 0),
(15, 2, 7, 2, 32, '2017-04-17 00:00:00', 0, 0),
(16, 2, 7, 2, 32, '2017-04-17 00:00:00', 0, 0),
(17, 3, 7, 3, 23, '2017-04-17 00:00:00', 0, 0),
(18, 2, 7, 1, 32, '2017-04-17 00:00:00', 0, 0),
(19, 2, 7, 1, 32, '2017-04-17 00:00:00', 0, 0),
(20, 3, 7, 2, 32, '2017-04-17 00:00:00', 0, 0),
(21, 1, 7, 2, 32, '2017-04-17 00:00:00', 0, 0),
(22, 1, 7, 3, 23, '2017-04-18 00:00:00', 0, 0),
(23, 1, 7, 3, 23, '2017-04-18 00:00:00', 0, 0),
(24, 1, 7, 3, 23, '2017-04-18 00:00:00', 0, 0),
(25, 1, 7, 3, 23, '2017-04-18 00:00:00', 0, 0),
(26, 2, 6, 4, 24, '2017-04-18 00:00:00', 0, 0),
(27, 2, 6, 4, 24, '2017-04-18 00:00:00', 0, 0),
(28, 3, 7, 2, 32, '2017-04-18 00:00:00', 0, 0),
(29, 0, 7, 2, 32, '2017-04-18 00:00:00', 0, 0),
(30, 2, 7, 2, 32, '2017-04-18 00:00:00', 0, 0),
(31, 1, 5, 3, 23, '2017-04-18 00:00:00', 0, 0),
(32, 3, 7, 2, 32, '2017-04-18 00:00:00', 0, 0),
(33, 3, 7, 2, 32, '2017-04-18 00:00:00', 0, 0),
(34, 1, 7, 3, 23, '2017-04-18 00:00:00', 0, 0),
(35, 0, 7, 2, 32, '2017-04-18 00:00:00', 0, 0),
(36, 0, 7, 0, 0, '1970-01-01 00:00:00', 0, 0),
(37, 1, 7, 3, 0, '1970-01-01 00:00:00', 0, 0),
(38, 6, 7, 1, 0, '1970-01-01 00:00:00', 0, 0),
(39, 1, 7, 3, 0, '1970-01-01 00:00:00', 0, 0),
(40, 1, 7, 2, 32000, '2017-05-27 00:00:00', 0, 0),
(41, 3, 7, 0, 0, '2017-05-28 00:00:00', 0, 0),
(42, 3, 7, 0, 0, '2017-05-28 00:00:00', 0, 0),
(43, 1, 7, 1, 32000, '2017-07-20 00:00:00', 0, 0),
(44, 7, 8, 6, 1500000, '2017-07-20 00:00:00', 0, 0),
(45, 3, 5, 1, 32000, '2017-07-23 00:00:00', 0, 0),
(46, 1, 11, 1, 0, '2017-07-29 00:00:00', 0, 0),
(47, 1, 7, 6, 0, '2017-07-31 00:00:00', 0, 0),
(48, 1, 11, 5, 0, '2017-07-31 00:00:00', 0, 0),
(49, 1, 7, 1, 0, '2017-08-01 00:00:00', 0, 0),
(50, 1, 11, 1, 0, '2017-08-01 00:00:00', 0, 0),
(51, 1, 11, 1, 0, '2017-08-01 00:00:00', 0, 0),
(52, 1, 5, 1, 0, '2017-08-01 00:00:00', 0, 0),
(53, 1, 6, 1, 0, '2017-08-01 00:00:00', 0, 0),
(54, 1, 7, 5, 0, '2017-08-01 00:00:00', 0, 0),
(55, 1, 11, 2, 0, '2017-08-02 00:00:00', 0, 0),
(56, 9, 5, 0, 0, '2016-08-23 00:00:00', 0, 0),
(57, 1, 6, 0, 0, '2017-08-04 00:00:00', 0, 0),
(58, 1, 6, 0, 0, '2017-08-04 00:00:00', 0, 0),
(59, 1, 5, 0, 0, '2017-08-04 00:00:00', 0, 0),
(60, 9, 5, 0, 0, '2017-08-04 14:26:00', 0, 0),
(61, 1, 5, 0, 55000, '2017-08-05 11:25:00', 0, 0),
(62, 1, 5, 0, 55000, '2017-08-05 11:25:00', 0, 0),
(63, 9, 5, 0, 87000, '2017-08-05 11:35:00', 0, 0),
(64, 1, 5, 0, 64000, '2017-08-05 12:33:00', 0, 0),
(65, 1, 5, 0, 64000, '2017-08-05 12:33:00', 0, 2),
(66, 1, 5, 0, 64000, '2017-08-05 12:33:00', 0, 2),
(67, 1, 5, 0, 64000, '2017-08-05 12:39:00', 0, 2),
(68, 1, 5, 0, 64000, '2017-08-05 12:39:00', 0, 2),
(69, 1, 5, 0, 64000, '2017-08-05 12:39:00', 0, 2),
(70, 1, 5, 0, 64000, '2017-08-05 12:39:00', 0, 2),
(71, 1, 8, 0, 64000, '2017-08-05 12:45:00', 0, 2),
(72, 1, 8, 0, 64000, '2017-08-05 12:45:00', 0, 2),
(73, 1, 8, 0, 64000, '2017-08-05 12:45:00', 0, 2),
(74, 1, 8, 0, 64000, '2017-08-05 12:45:00', 0, 2),
(75, 1, 6, 0, 64000, '2017-08-05 12:52:00', 0, 2),
(76, 1, 6, 0, 64000, '2017-08-05 12:52:00', 0, 2),
(77, 1, 6, 0, 64000, '2017-08-05 12:52:00', 0, 2),
(78, 1, 6, 0, 64000, '2017-08-05 12:52:00', 0, 2),
(79, 1, 6, 0, 64000, '2017-08-05 12:52:00', 0, 2),
(80, 1, 6, 0, 64000, '2017-08-05 12:52:00', 0, 2),
(81, 1, 6, 0, 87000, '2017-08-05 12:52:00', 0, 3),
(82, 1, 6, 0, 87000, '2017-08-05 12:52:00', 0, 3),
(83, 1, 7, 0, 64000, '2017-08-05 14:49:00', 0, 2),
(84, 1, 7, 0, 64000, '2017-08-05 14:49:00', 0, 2),
(85, 1, 7, 0, 64000, '2017-08-05 14:49:00', 0, 2),
(86, 1, 7, 0, 64000, '2017-08-05 14:49:00', 0, 2),
(87, 1, 7, 0, 64000, '2017-08-05 14:49:00', 0, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_bills`
--

CREATE TABLE IF NOT EXISTS `transaction_bills` (
  `transaction_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `tot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE IF NOT EXISTS `transaction_details` (
`transaction_detail_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `transaction_detail_original_price` int(11) NOT NULL,
  `transaction_detail_margin_price` int(11) NOT NULL,
  `transaction_detail_price` int(11) NOT NULL,
  `transaction_detail_price_discount` int(11) NOT NULL,
  `transaction_detail_grand_price` int(11) NOT NULL,
  `transaction_detail_qty` int(11) NOT NULL,
  `transaction_detail_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_histories`
--

CREATE TABLE IF NOT EXISTS `transaction_histories` (
  `transaction_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_discount` int(11) NOT NULL,
  `transaction_grand_total` int(11) NOT NULL,
  `transaction_payment` int(11) NOT NULL,
  `transaction_change` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_account_number` varchar(100) NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `user_delete` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_order_types`
--

CREATE TABLE IF NOT EXISTS `transaction_order_types` (
`tot_id` int(11) NOT NULL,
  `tot_name` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `transaction_order_types`
--

INSERT INTO `transaction_order_types` (`tot_id`, `tot_name`) VALUES
(1, 'Dining'),
(2, 'Take away'),
(3, 'Delivery');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_summary`
--

CREATE TABLE IF NOT EXISTS `transaction_summary` (
`id_transaction_summary` int(11) NOT NULL,
  `transaction_grtotal_summary` varchar(45) NOT NULL,
  `transaction_summarycol` varchar(45) NOT NULL,
  `transaction_total` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_tmp_details`
--

CREATE TABLE IF NOT EXISTS `transaction_tmp_details` (
`transaction_detail_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `pijat_id` int(11) NOT NULL,
  `transaction_detail_item_qty` int(11) NOT NULL,
  `transaction_detail_original_price` int(11) NOT NULL,
  `transaction_detail_margin_price` int(11) NOT NULL,
  `transaction_detail_price` int(11) NOT NULL,
  `transaction_detail_price_discount` int(11) NOT NULL,
  `transaction_detail_grand_price` int(11) NOT NULL,
  `transaction_detail_qty` int(11) NOT NULL,
  `transaction_detail_total` int(11) NOT NULL,
  `transaction_detail_status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data untuk tabel `transaction_tmp_details`
--

INSERT INTO `transaction_tmp_details` (`transaction_detail_id`, `transaction_id`, `pijat_id`, `transaction_detail_item_qty`, `transaction_detail_original_price`, `transaction_detail_margin_price`, `transaction_detail_price`, `transaction_detail_price_discount`, `transaction_detail_grand_price`, `transaction_detail_qty`, `transaction_detail_total`, `transaction_detail_status`) VALUES
(1, 40, 0, 2, 1, 30000, 0, 0, 0, 0, 30000, 0),
(2, 40, 0, 3, 1, 40000, 0, 0, 0, 0, 40000, 0),
(3, 40, 0, 4, 1, 30000, 0, 0, 0, 0, 30000, 0),
(4, 41, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(5, 41, 0, 2, 1, 30000, 0, 0, 0, 0, 30000, 0),
(6, 42, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(7, 42, 0, 2, 1, 30000, 0, 0, 0, 0, 30000, 0),
(8, 43, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(9, 44, 0, 38, 5, 20000, 0, 0, 0, 0, 100000, 0),
(10, 45, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(11, 45, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(12, 46, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(13, 46, 0, 2, 2, 25000, 0, 0, 0, 0, 50000, 0),
(14, 47, 0, 1, 5, 15000, 0, 0, 0, 0, 75000, 0),
(15, 48, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(16, 48, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(17, 49, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(18, 49, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(19, 49, 0, 3, 1, 40000, 0, 0, 0, 0, 40000, 0),
(20, 50, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(21, 51, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(22, 51, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(23, 52, 0, 1, 1, 15000, 0, 0, 0, 0, 15000, 0),
(24, 52, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(25, 53, 0, 2, 4, 25000, 0, 0, 0, 0, 100000, 0),
(26, 54, 0, 1, 3, 15000, 0, 0, 0, 0, 45000, 0),
(27, 55, 0, 1, 1, 21000, 0, 0, 0, 0, 21000, 0),
(28, 56, 0, 39, 4, 0, 0, 0, 0, 0, 0, 0),
(29, 56, 0, 40, 4, 25000, 0, 0, 0, 0, 100000, 0),
(30, 57, 0, 39, 4, 0, 0, 0, 0, 0, 0, 0),
(31, 57, 0, 40, 4, 25000, 0, 0, 0, 0, 100000, 0),
(32, 58, 0, 39, 4, 0, 0, 0, 0, 0, 0, 0),
(33, 58, 0, 40, 4, 25000, 0, 0, 0, 0, 100000, 0),
(34, 59, 0, 39, 4, 0, 0, 0, 0, 0, 0, 0),
(35, 59, 0, 40, 4, 25000, 0, 0, 0, 0, 100000, 0),
(36, 60, 0, 39, 4, 0, 0, 0, 0, 0, 0, 0),
(37, 60, 0, 40, 4, 25000, 0, 0, 0, 0, 100000, 0),
(38, 0, 0, 1, 1, 21000, 0, 0, 0, 0, 21000, 0),
(39, 0, 0, 1, 1, 21000, 0, 0, 0, 0, 21000, 0),
(40, 0, 0, 1, 1, 21000, 0, 0, 0, 0, 21000, 0),
(41, 0, 0, 1, 1, 21000, 0, 0, 0, 0, 21000, 0),
(42, 0, 0, 1, 1, 21000, 0, 0, 0, 0, 21000, 0),
(43, 0, 0, 1, 1, 21000, 0, 0, 0, 0, 21000, 0),
(44, 63, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(45, 63, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(46, 63, 0, 4, 1, 30000, 0, 0, 0, 0, 30000, 0),
(47, 64, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(48, 64, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(49, 67, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(50, 67, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(51, 69, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(52, 69, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(53, 70, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(54, 70, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(55, 71, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(56, 71, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(57, 73, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(58, 73, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(59, 74, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(60, 74, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(61, 75, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(62, 75, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(63, 78, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(64, 78, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(65, 79, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(66, 79, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(67, 80, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(68, 80, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(69, 81, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(70, 81, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(71, 82, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(72, 82, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(73, 83, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(74, 83, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(75, 84, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(76, 84, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(77, 85, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(78, 85, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(79, 86, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(80, 86, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0),
(81, 87, 0, 2, 1, 25000, 0, 0, 0, 0, 25000, 0),
(82, 87, 0, 3, 1, 75000, 0, 0, 0, 0, 75000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_tmp_details_cs`
--

CREATE TABLE IF NOT EXISTS `transaction_tmp_details_cs` (
`detail_trans_cs_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `member_id` int(11) NOT NULL,
  `pijat_id` int(11) NOT NULL,
  `ruangan_id` int(11) NOT NULL,
  `statement_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data untuk tabel `transaction_tmp_details_cs`
--

INSERT INTO `transaction_tmp_details_cs` (`detail_trans_cs_id`, `transaction_id`, `customer_id`, `nama_customer`, `member_id`, `pijat_id`, `ruangan_id`, `statement_id`) VALUES
(1, 3, 73, 'ojds', 0, 1, 14, 0),
(2, 3, 73, 'cc', 0, 1, 15, 0),
(3, 78, 0, 'sdj', 0, 1, 9, 0),
(4, 78, 1, 'dsjd', 0, 2, 9, 0),
(5, 79, 0, 'sdj', 0, 1, 9, 0),
(6, 79, 1, 'dsjd', 0, 2, 9, 0),
(7, 80, 0, 'sdj', 0, 1, 9, 0),
(8, 80, 1, 'dsjd', 0, 2, 9, 0),
(9, 81, 0, 'xkknjx', 0, 1, 9, 0),
(10, 81, 1, 'xkmx', 0, 3, 9, 0),
(11, 81, 2, 'lmsks', 0, 1, 9, 0),
(12, 82, 1, 'xkknjx', 0, 1, 9, 0),
(13, 82, 2, 'xkmx', 0, 3, 9, 0),
(14, 82, 3, 'lmsks', 0, 1, 9, 0),
(15, 83, 1, 'qwe', 0, 1, 12, 0),
(16, 83, 2, 'wret', 0, 2, 12, 0),
(17, 84, 1, 'qwe', 0, 1, 12, 0),
(18, 84, 2, 'wret', 0, 2, 12, 0),
(19, 85, 1, 'qwe', 0, 1, 12, 0),
(20, 85, 2, 'wret', 0, 2, 12, 0),
(21, 86, 1, 'qwe', 0, 2, 12, 0),
(22, 86, 2, 'wret', 0, 2, 12, 0),
(23, 87, 1, 'qwe', 0, 2, 12, 0),
(24, 87, 2, 'wret', 0, 2, 12, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `user_login` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_code` varchar(100) DEFAULT NULL,
  `user_phone` varchar(100) DEFAULT NULL,
  `user_img` text NOT NULL,
  `user_active_status` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_type_id`, `user_login`, `user_password`, `user_name`, `user_code`, `user_phone`, `user_img`, `user_active_status`, `branch_id`) VALUES
(11, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '', '03125435432', '', 1, 7),
(32, 3, 'maria', 'fe01ce2a7fbac8fafaed7c982a04e229', 'maria', '', '1111', '', 1, 4),
(34, 1, 'budi', '101eb6ad45137d043a8e3f8fb3990135', 'budi', '', '3232', '', 1, 3),
(39, 2, 'dita', 'fe01ce2a7fbac8fafaed7c982a04e229', 'Dita', '', '085731404513', '', 1, 3),
(40, 4, 'elina', 'fe01ce2a7fbac8fafaed7c982a04e229', 'Lina', '', '085852731314', '', 1, 4),
(41, 1, 'admin12', '21232f297a57a5a743894a0e4a801fc3', 'admin', '', '01491241', '', 1, 6),
(42, 5, 'testing1', '6b7330782b2feb4924020cc4a57782a9', 'User Testing 1', '', '12345678', '', 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_types`
--

CREATE TABLE IF NOT EXISTS `user_types` (
`user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `user_types`
--

INSERT INTO `user_types` (`user_type_id`, `user_type_name`) VALUES
(1, 'Administrator'),
(2, 'Kasir'),
(3, 'Owner'),
(4, 'Waitress'),
(5, 'Accounting');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
 ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
 ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `infrastruktur`
--
ALTER TABLE `infrastruktur`
 ADD PRIMARY KEY (`infrastruktur_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_stocks`
--
ALTER TABLE `item_stocks`
 ADD PRIMARY KEY (`item_stock_id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
 ADD PRIMARY KEY (`journal_id`);

--
-- Indexes for table `journal_types`
--
ALTER TABLE `journal_types`
 ADD PRIMARY KEY (`journal_type_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kategori_paket_pijat`
--
ALTER TABLE `kategori_paket_pijat`
 ADD PRIMARY KEY (`kategori_paket_pijat_id`);

--
-- Indexes for table `konversi_item`
--
ALTER TABLE `konversi_item`
 ADD PRIMARY KEY (`konversi_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `member_items`
--
ALTER TABLE `member_items`
 ADD PRIMARY KEY (`member_item_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
 ADD PRIMARY KEY (`office_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_tmp`
--
ALTER TABLE `order_tmp`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `paket_pijat`
--
ALTER TABLE `paket_pijat`
 ADD PRIMARY KEY (`paket_pijat_id`);

--
-- Indexes for table `paket_pijat_details`
--
ALTER TABLE `paket_pijat_details`
 ADD PRIMARY KEY (`paket_pijat_detail_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
 ADD PRIMARY KEY (`partner_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
 ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
 ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `pemijat`
--
ALTER TABLE `pemijat`
 ADD PRIMARY KEY (`pemijat_id`);

--
-- Indexes for table `permits`
--
ALTER TABLE `permits`
 ADD PRIMARY KEY (`permit_id`);

--
-- Indexes for table `pijat`
--
ALTER TABLE `pijat`
 ADD PRIMARY KEY (`pijat_id`);

--
-- Indexes for table `pijat_details`
--
ALTER TABLE `pijat_details`
 ADD PRIMARY KEY (`pijat_detail_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
 ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
 ADD PRIMARY KEY (`reservasi_id`);

--
-- Indexes for table `reserved`
--
ALTER TABLE `reserved`
 ADD PRIMARY KEY (`reserved_id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
 ADD PRIMARY KEY (`ruangan_id`);

--
-- Indexes for table `ruangan_infrastruktur`
--
ALTER TABLE `ruangan_infrastruktur`
 ADD PRIMARY KEY (`ruangan_infrastruktur_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
 ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `side_menus`
--
ALTER TABLE `side_menus`
 ADD PRIMARY KEY (`side_menu_id`);

--
-- Indexes for table `statement`
--
ALTER TABLE `statement`
 ADD PRIMARY KEY (`statement_id`);

--
-- Indexes for table `statement_order`
--
ALTER TABLE `statement_order`
 ADD PRIMARY KEY (`statement_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
 ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
 ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transactions_tmp`
--
ALTER TABLE `transactions_tmp`
 ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_bills`
--
ALTER TABLE `transaction_bills`
 ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
 ADD PRIMARY KEY (`transaction_detail_id`);

--
-- Indexes for table `transaction_histories`
--
ALTER TABLE `transaction_histories`
 ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_order_types`
--
ALTER TABLE `transaction_order_types`
 ADD PRIMARY KEY (`tot_id`);

--
-- Indexes for table `transaction_summary`
--
ALTER TABLE `transaction_summary`
 ADD PRIMARY KEY (`id_transaction_summary`);

--
-- Indexes for table `transaction_tmp_details`
--
ALTER TABLE `transaction_tmp_details`
 ADD PRIMARY KEY (`transaction_detail_id`);

--
-- Indexes for table `transaction_tmp_details_cs`
--
ALTER TABLE `transaction_tmp_details_cs`
 ADD PRIMARY KEY (`detail_trans_cs_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
 ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `infrastruktur`
--
ALTER TABLE `infrastruktur`
MODIFY `infrastruktur_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `item_stocks`
--
ALTER TABLE `item_stocks`
MODIFY `item_stock_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `journal_types`
--
ALTER TABLE `journal_types`
MODIFY `journal_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kategori_paket_pijat`
--
ALTER TABLE `kategori_paket_pijat`
MODIFY `kategori_paket_pijat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `konversi_item`
--
ALTER TABLE `konversi_item`
MODIFY `konversi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `member_items`
--
ALTER TABLE `member_items`
MODIFY `member_item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_tmp`
--
ALTER TABLE `order_tmp`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paket_pijat`
--
ALTER TABLE `paket_pijat`
MODIFY `paket_pijat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `paket_pijat_details`
--
ALTER TABLE `paket_pijat_details`
MODIFY `paket_pijat_detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
MODIFY `partner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pemijat`
--
ALTER TABLE `pemijat`
MODIFY `pemijat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permits`
--
ALTER TABLE `permits`
MODIFY `permit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=769;
--
-- AUTO_INCREMENT for table `pijat`
--
ALTER TABLE `pijat`
MODIFY `pijat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pijat_details`
--
ALTER TABLE `pijat_details`
MODIFY `pijat_detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
MODIFY `reservasi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reserved`
--
ALTER TABLE `reserved`
MODIFY `reserved_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
MODIFY `ruangan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `ruangan_infrastruktur`
--
ALTER TABLE `ruangan_infrastruktur`
MODIFY `ruangan_infrastruktur_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
MODIFY `satuan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `side_menus`
--
ALTER TABLE `side_menus`
MODIFY `side_menu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `statement`
--
ALTER TABLE `statement`
MODIFY `statement_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `statement_order`
--
ALTER TABLE `statement_order`
MODIFY `statement_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transactions_tmp`
--
ALTER TABLE `transactions_tmp`
MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
MODIFY `transaction_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaction_order_types`
--
ALTER TABLE `transaction_order_types`
MODIFY `tot_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction_summary`
--
ALTER TABLE `transaction_summary`
MODIFY `id_transaction_summary` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaction_tmp_details`
--
ALTER TABLE `transaction_tmp_details`
MODIFY `transaction_detail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `transaction_tmp_details_cs`
--
ALTER TABLE `transaction_tmp_details_cs`
MODIFY `detail_trans_cs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
