-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 01:14 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(2, 'admin', 'admin', 'Admin', 'M', 'Nistrator'),
(4, 'admino', 'admino', 'admino', '', 'strator');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_administrasi_save`
--

CREATE TABLE `antrian_administrasi_save` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian_administrasi_save`
--

INSERT INTO `antrian_administrasi_save` (`id`, `nomor_antrian`, `nama`, `jenis_kelamin`, `no_telpon`, `created_by`, `created`) VALUES
(1, 'A321', 'tes', 'LAKI-LAKI', '798798', '1', '2015-12-19 23:02:07'),
(2, 'A322', 'test2', 'LAKI-LAKI', '779789', '1', '2015-12-19 23:04:54'),
(3, 'A323', 'testw', 'LAKI-LAKI', '79789787', '', '2015-12-19 23:05:50'),
(4, 'A324', '77', 'PEREMPUAN', '6876767', 'admin', '2015-12-19 23:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `antrian_transaksi_save`
--

CREATE TABLE `antrian_transaksi_save` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `antrian_transaksi_save`
--

INSERT INTO `antrian_transaksi_save` (`id`, `nomor_antrian`, `nama`, `jenis_kelamin`, `no_telpon`, `created_by`, `created`) VALUES
(1, 'A321', 'tes', 'LAKI-LAKI', '798798', '1', '2015-12-19 23:02:07'),
(2, 'A322', 'test2', 'LAKI-LAKI', '779789', '1', '2015-12-19 23:04:54'),
(3, 'A323', 'testw', 'LAKI-LAKI', '79789787', '', '2015-12-19 23:05:50'),
(4, 'A324', '77', 'PEREMPUAN', '6876767', 'admin', '2015-12-19 23:07:27'),
(5, 'T$', 'dkdakj', 'LAKI-LAKI', '67878', '1', '2015-12-20 09:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appoint_id` int(11) NOT NULL,
  `itr_no` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `servtype` varchar(50) NOT NULL,
  `tdate` date NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `status` enum('pending','accepted','done') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appoint_id`, `itr_no`, `firstname`, `lastname`, `contact`, `servtype`, `tdate`, `dtime`, `status`) VALUES
(10, 20, 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2020-07-21', '5:00 PM', 'accepted'),
(11, 19, 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2020-08-31', '8:30 PM', 'accepted'),
(12, 20, 'Alvin', 'Gumatay', '09462886584', 'Xray Lombo-sacral-Sen: PHP640', '2021-02-08', '11:30 PM', 'accepted'),
(13, 20, 'Alvin', 'Gumatay', '09462886584', '', '2021-02-08', '9:00 PM', 'accepted'),
(14, 19, 'Alvin', 'Gumatay', '09462886584', 'Urinalysys - Senior: Php 50', '2021-06-22', '11:00 AM', 'accepted'),
(15, 19, 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2021-06-09', '11:00 AM', 'accepted'),
(16, 19, 'Alvin', 'Gumatay', '09462886584', 'Hematology - Senior: Php 100', '2021-06-09', '11:00 AM', 'accepted'),
(18, 20, 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2022-02-11', '9:00 PM', 'accepted'),
(19, 20, 'Alvin', 'Gumatay', '09462886584', 'Consultation - Regular: Php 300', '2022-03-04', '11:00 AM', 'done'),
(20, 21, 'bukas', 'laba', '09606100779', 'Hematology - Regular: Php 175', '2022-03-18', '7:00 PM', 'pending'),
(21, 22, 'borgart', 'gahaman', '09462886584', 'Urinalysys - Senior: Php 50', '2022-03-18', '7:00 PM', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `com_id` int(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`com_id`, `date`, `complaints`, `remark`, `itr_no`, `section`, `status`) VALUES
(2, '03/18/2022', 'cssvsfs', 'csssss', '19', 'Rehabilitation', 'Pending'),
(3, '03/18/2022', '', '', '19', 'Rehabilitation', 'Pending'),
(4, '03/18/2022', '', '', '19', 'Rehabilitation', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `dislocation`
--

CREATE TABLE `dislocation` (
  `dislocation_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `medical_doctor` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fecalisys`
--

CREATE TABLE `fecalisys` (
  `fecalysis_id` int(11) NOT NULL,
  `date_of_request` date NOT NULL,
  `price` int(11) NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `color` varchar(15) NOT NULL,
  `consistency` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `RBC` varchar(15) NOT NULL,
  `fat_globules` varchar(15) NOT NULL,
  `occult_blood` varchar(15) NOT NULL,
  `others_chem` varchar(15) NOT NULL,
  `ova` varchar(15) NOT NULL,
  `larva` varchar(15) NOT NULL,
  `adult_forms` varchar(15) NOT NULL,
  `cyst` varchar(15) NOT NULL,
  `trophozoites` varchar(15) NOT NULL,
  `others_pro` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `date_reported` date NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hematology`
--

CREATE TABLE `hematology` (
  `hem_id` int(11) NOT NULL,
  `date_requested` date NOT NULL,
  `price` int(10) NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `hemoglobin` varchar(15) NOT NULL,
  `hematocrit` varchar(15) NOT NULL,
  `RBC_count` varchar(15) NOT NULL,
  `WBC_count` varchar(15) NOT NULL,
  `platelet` varchar(15) NOT NULL,
  `bleeding_time` varchar(15) NOT NULL,
  `clotting_time` varchar(15) NOT NULL,
  `neutrophil` varchar(15) NOT NULL,
  `segmenters` varchar(15) NOT NULL,
  `stabs` varchar(15) NOT NULL,
  `lymphocytes` varchar(15) NOT NULL,
  `monocyte` varchar(15) NOT NULL,
  `eosinophil` varchar(15) NOT NULL,
  `basophil` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL,
  `ABO_group` varchar(15) NOT NULL,
  `Rh_group` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itr`
--

CREATE TABLE `itr` (
  `itr_no` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phil_health_no` varchar(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `age` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` text NOT NULL,
  `civil_status` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bp` varchar(10) NOT NULL,
  `temp` varchar(10) NOT NULL,
  `pr` varchar(10) NOT NULL,
  `rr` varchar(10) NOT NULL,
  `wt` varchar(10) NOT NULL,
  `ht` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itr`
--

INSERT INTO `itr` (`itr_no`, `email`, `password`, `phil_health_no`, `firstname`, `middlename`, `lastname`, `birthdate`, `age`, `address`, `contact`, `civil_status`, `gender`, `bp`, `temp`, `pr`, `rr`, `wt`, `ht`) VALUES
(20, 'alvingumatay13@gmail.com', '123', '0', 'Alvin', 'Tumbokon', 'Gumatay', '02/13/1992', '28', '7 orovista village,  concepcion ', '09462886584', 'Single', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0'),
(19, 'alvingumatay@gmail.com', '12345678', '0', 'Alvin', 'Tumbokon', 'Gumatay', '07/13/1992', '28', '7 orovista village,  concepcion ', '09462886584', 'Single', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0'),
(21, 'bukas@laba.com', '123', '0', 'bukas', 'm', 'laba', '03/02/1994', '28', 'village st., cpncusbcus', '09606100779', 'Single', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0'),
(22, 'hiwagaalias@gmail.com', '123', '0', 'borgart', 't', 'gahaman', '03/03/2022', '0', 'village st., cpncusbcus', '09462886584', 'Married', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `LEVEL_ID` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` datetime DEFAULT NULL,
  `CREATED_BY` tinyint(4) DEFAULT NULL,
  `MODIFIED_BY` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`LEVEL_ID`, `NAME`, `CREATED`, `MODIFIED`, `CREATED_BY`, `MODIFIED_BY`) VALUES
(1, 'admin', '2014-05-10', NULL, 1, NULL),
(2, 'loket administrasi', '2014-05-10', '2014-07-18 02:20:13', 1, NULL),
(3, 'loket pas', '2014-05-12', '2014-07-18 06:27:14', 1, NULL),
(4, 'print', '2014-07-26', NULL, 1, NULL),
(4, 'loket consultation', '2019-10-21', '2019-10-21 01:45:00', 1, 4),
(5, 'loket hematology', '2019-10-21', '2019-10-21 00:00:00', 1, 5),
(6, 'loket urinalysis', '2019-10-21', '2019-10-21 04:09:00', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `loket`
--

CREATE TABLE `loket` (
  `id` int(11) NOT NULL,
  `no_loket` varchar(255) NOT NULL,
  `nama_loket` varchar(255) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loket`
--

INSERT INTO `loket` (`id`, `no_loket`, `nama_loket`, `aktif`) VALUES
(1, 'xray', 'TRANSAKSI', 1),
(2, 'fecalysis', 'ADMINISTRASI', 1),
(3, 'consultation', 'CONSULTATION', 1),
(4, 'urinalysis', 'URINALYSIS', 1),
(5, 'hematology', 'HEMATOLOGY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menus_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `enable` tinyint(4) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menus_id`, `name`, `url`, `title`, `enable`, `parent_id`, `lft`, `created`, `created_by`) VALUES
(2, 'pengguna akun', 'system.php?link=pengguna-akun', 'pengguna akun', 1, 1, 0, 2015, 1),
(3, 'Pengaturan Menu', 'system.php?link=menus', 'Setting Menu', 1, 1, 0, 2015, 1),
(4, 'Pengaturan Video LCD', 'system.php?link=video', 'Pengaturan Video LCD', 1, 1, 0, 2015, 1),
(5, 'Pengaturan Running Text', 'system.php?link=running-text', 'Pengaturan Running Text', 1, 1, 1, 2015, 1),
(8, 'Counter Fecalysis', 'system.php?link=menu-antrian-administrasi', 'Counter Fecalysis', 1, 10, 1, 2015, 1),
(9, 'Loket', 'system.php?link=loket', 'loket', 1, 1, 0, 2015, 1),
(10, 'OPTION MENU', '#', 'OPTION MENU', 1, 0, 1, 2015, 1),
(12, 'Counter Xray', 'system.php?link=menu-antrian-transaksi', 'Counter Xray', 1, 10, 1, 2015, 1),
(14, 'Counter  Consultation', 'system.php?link=menu-antrian-consultation', 'Counter Consultation', 1, 10, 1, 2019, 1),
(15, 'Counter Hematology', 'system.php?link=menu-antrian-hematology ', 'Counter Hematology', 1, 10, 1, 2019, 1),
(17, 'Counter Urinalysis', 'system.php?link=menu-antrian-urinalysis ', 'Counter Urinalysis', 1, 10, 1, 2019, 1);

-- --------------------------------------------------------

--
-- Table structure for table `minor_surgery`
--

CREATE TABLE `minor_surgery` (
  `surgery_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `medical_doctor` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `radiological`
--

CREATE TABLE `radiological` (
  `rad_id` int(11) NOT NULL,
  `case_no` varchar(12) NOT NULL,
  `referred_by` varchar(30) NOT NULL,
  `clinical_impression` varchar(100) NOT NULL,
  `room_bed_no` varchar(11) NOT NULL,
  `type_of_examination` varchar(30) NOT NULL,
  `date_taken` date NOT NULL,
  `remark` varchar(255) NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rehabilitation`
--

CREATE TABLE `rehabilitation` (
  `rehab_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `medical_doctor` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `running_text`
--

CREATE TABLE `running_text` (
  `id` int(11) NOT NULL,
  `isi_text` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `running_text`
--

INSERT INTO `running_text` (`id`, `isi_text`) VALUES
(1, 'Welcome To MOSC clinic we serve you to care !!!... |'),
(2, 'Please wait while you stay and before you call a number.... |'),
(3, ' Thank you for understanding while wait god bless us .... |');

-- --------------------------------------------------------

--
-- Table structure for table `secretary`
--

CREATE TABLE `secretary` (
  `sec_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secretary`
--

INSERT INTO `secretary` (`sec_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(2, 'secretary', '123', 'sec', 'R', 'Tary'),
(3, 'secxs', 'secx', 'secx', 'secx', 'secx');

-- --------------------------------------------------------

--
-- Table structure for table `temp_administrasi`
--

CREATE TABLE `temp_administrasi` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_administrasi`
--

INSERT INTO `temp_administrasi` (`id`, `nomor_antrian`, `time`) VALUES
(1, '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_consultation`
--

CREATE TABLE `temp_consultation` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_consultation`
--

INSERT INTO `temp_consultation` (`id`, `nomor_antrian`, `time`) VALUES
(1, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_hematology`
--

CREATE TABLE `temp_hematology` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_hematology`
--

INSERT INTO `temp_hematology` (`id`, `nomor_antrian`, `time`) VALUES
(1, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_transaksi`
--

CREATE TABLE `temp_transaksi` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_transaksi`
--

INSERT INTO `temp_transaksi` (`id`, `nomor_antrian`, `time`) VALUES
(1, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `temp_urinalysis`
--

CREATE TABLE `temp_urinalysis` (
  `id` int(11) NOT NULL,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_urinalysis`
--

INSERT INTO `temp_urinalysis` (`id`, `nomor_antrian`, `time`) VALUES
(1, '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `urinalysis`
--

CREATE TABLE `urinalysis` (
  `urinalysis_id` int(11) NOT NULL,
  `date_of_request` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `color` varchar(15) NOT NULL,
  `transparency` varchar(15) NOT NULL,
  `specific_gravity` varchar(15) NOT NULL,
  `ph` varchar(15) NOT NULL,
  `sugar` varchar(15) NOT NULL,
  `protein` varchar(15) NOT NULL,
  `pregnancy_test` varchar(15) NOT NULL,
  `pus_cells` varchar(15) NOT NULL,
  `rbc` varchar(15) NOT NULL,
  `cast` varchar(15) NOT NULL,
  `urates` varchar(15) NOT NULL,
  `uric_acid` varchar(15) NOT NULL,
  `cal_ox` varchar(15) NOT NULL,
  `epith_cells` varchar(15) NOT NULL,
  `mucus_threads` varchar(15) NOT NULL,
  `others` varchar(15) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `section`) VALUES
(29, 'doctorc', '123', 'Albert', 'T', 'Fernia', 'DoctorApp'),
(30, 'doctorh', 'doctorh', 'doctorh', 'H', 'Hematology', 'Hematology'),
(31, 'doctord', 'doctord', 'doctord', 'doctord', 'doctord', 'DoctorApp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(40) DEFAULT NULL,
  `NIP` varchar(20) DEFAULT NULL,
  `NAMA_LENGKAP` varchar(50) DEFAULT NULL,
  `JENIS_KELAMIN_ID` tinyint(4) DEFAULT NULL,
  `TEMPAT_LAHIR` varchar(100) NOT NULL,
  `TGL_LAHIR` date NOT NULL,
  `FOTO` varchar(200) DEFAULT NULL,
  `ALAMAT` varchar(20) DEFAULT NULL,
  `TELPON` varchar(20) DEFAULT NULL,
  `LEVEL_ID` tinyint(4) DEFAULT NULL,
  `BLOKIR` tinyint(4) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` datetime DEFAULT NULL,
  `CREATED_BY` tinyint(4) DEFAULT NULL,
  `MODIFIED_BY` tinyint(4) DEFAULT NULL,
  `session_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `USERNAME`, `PASSWORD`, `NIP`, `NAMA_LENGKAP`, `JENIS_KELAMIN_ID`, `TEMPAT_LAHIR`, `TGL_LAHIR`, `FOTO`, `ALAMAT`, `TELPON`, `LEVEL_ID`, `BLOKIR`, `CREATED`, `MODIFIED`, `CREATED_BY`, `MODIFIED_BY`, `session_id`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'xxxxxxxxxxxx', 'administrator', 1, 'AMDMAD', '1991-06-09', '23Photo_00004.jpg', 'makassar', '81243324689', 1, 0, '2014-05-10', '2014-07-18 21:13:53', 1, 1, ''),
(20, 'myprint', 'bebaec246afd2b4ccd42b6f977a4a25a2baedb8f', 'xxxx', 'printer', 1, 'jakarta', '2013-11-05', '9CPU-icon.png', 'MAKASSAR', '0808707779', 4, 0, '2014-07-26', NULL, 1, NULL, ''),
(19, 'administrasi', 'e5c6ba3abff1db4479bb60c5d79cc1c2a0689dcb', 'xxxxxx', 'admin administrasi', 1, 'JAKARTA', '1991-06-12', '94guard-icon.png', 'MAKASSAR', '093729272', 2, 0, '2014-07-18', '2014-07-18 22:22:39', 1, 1, ''),
(18, 'pas', '19c2a0dbd8e3a41b25d504744c57df8853e36677', 'xxxxx', 'admin pas', 1, 'JAKARTA', '1991-06-09', '12acid.MP4', 'MAKASSAR', '08927638282', 3, 0, '2014-07-18', '2014-07-20 21:14:03', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(1, 'my video e', 'video1.mp4', '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `antrian_administrasi_save`
--
ALTER TABLE `antrian_administrasi_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `antrian_transaksi_save`
--
ALTER TABLE `antrian_transaksi_save`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appoint_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `dislocation`
--
ALTER TABLE `dislocation`
  ADD PRIMARY KEY (`dislocation_id`);

--
-- Indexes for table `fecalisys`
--
ALTER TABLE `fecalisys`
  ADD PRIMARY KEY (`fecalysis_id`);

--
-- Indexes for table `hematology`
--
ALTER TABLE `hematology`
  ADD PRIMARY KEY (`hem_id`);

--
-- Indexes for table `itr`
--
ALTER TABLE `itr`
  ADD PRIMARY KEY (`itr_no`),
  ADD UNIQUE KEY `itr_no` (`itr_no`);

--
-- Indexes for table `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menus_id`);

--
-- Indexes for table `minor_surgery`
--
ALTER TABLE `minor_surgery`
  ADD PRIMARY KEY (`surgery_id`);

--
-- Indexes for table `radiological`
--
ALTER TABLE `radiological`
  ADD PRIMARY KEY (`rad_id`);

--
-- Indexes for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  ADD PRIMARY KEY (`rehab_id`);

--
-- Indexes for table `running_text`
--
ALTER TABLE `running_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secretary`
--
ALTER TABLE `secretary`
  ADD PRIMARY KEY (`sec_id`);

--
-- Indexes for table `temp_administrasi`
--
ALTER TABLE `temp_administrasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_consultation`
--
ALTER TABLE `temp_consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_hematology`
--
ALTER TABLE `temp_hematology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_transaksi`
--
ALTER TABLE `temp_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_urinalysis`
--
ALTER TABLE `temp_urinalysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urinalysis`
--
ALTER TABLE `urinalysis`
  ADD PRIMARY KEY (`urinalysis_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `antrian_administrasi_save`
--
ALTER TABLE `antrian_administrasi_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `antrian_transaksi_save`
--
ALTER TABLE `antrian_transaksi_save`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appoint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `com_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dislocation`
--
ALTER TABLE `dislocation`
  MODIFY `dislocation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fecalisys`
--
ALTER TABLE `fecalisys`
  MODIFY `fecalysis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hematology`
--
ALTER TABLE `hematology`
  MODIFY `hem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `itr`
--
ALTER TABLE `itr`
  MODIFY `itr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `loket`
--
ALTER TABLE `loket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `minor_surgery`
--
ALTER TABLE `minor_surgery`
  MODIFY `surgery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radiological`
--
ALTER TABLE `radiological`
  MODIFY `rad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  MODIFY `rehab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `running_text`
--
ALTER TABLE `running_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `secretary`
--
ALTER TABLE `secretary`
  MODIFY `sec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_administrasi`
--
ALTER TABLE `temp_administrasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_consultation`
--
ALTER TABLE `temp_consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_hematology`
--
ALTER TABLE `temp_hematology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_transaksi`
--
ALTER TABLE `temp_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_urinalysis`
--
ALTER TABLE `temp_urinalysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `urinalysis`
--
ALTER TABLE `urinalysis`
  MODIFY `urinalysis_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
