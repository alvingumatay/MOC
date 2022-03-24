# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------


#
# Delete any existing table `admin`
#

DROP TABLE IF EXISTS `admin`;


#
# Table structure of table `admin`
#

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

#
# Data contents of table admin (2 records)
#
 
INSERT INTO `admin` VALUES ('2', 'admin', 'admin', 'Admin', 'M', 'Nistrator') ; 
INSERT INTO `admin` VALUES ('4', 'admino', 'admino', 'admino', '', 'strator') ;
#
# End of data contents of table admin
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------


#
# Delete any existing table `antrian_administrasi_save`
#

DROP TABLE IF EXISTS `antrian_administrasi_save`;


#
# Table structure of table `antrian_administrasi_save`
#

CREATE TABLE `antrian_administrasi_save` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_antrian` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

#
# Data contents of table antrian_administrasi_save (4 records)
#
 
INSERT INTO `antrian_administrasi_save` VALUES ('1', 'A321', 'tes', 'LAKI-LAKI', '798798', '1', '2015-12-19 23:02:07') ; 
INSERT INTO `antrian_administrasi_save` VALUES ('2', 'A322', 'test2', 'LAKI-LAKI', '779789', '1', '2015-12-19 23:04:54') ; 
INSERT INTO `antrian_administrasi_save` VALUES ('3', 'A323', 'testw', 'LAKI-LAKI', '79789787', '', '2015-12-19 23:05:50') ; 
INSERT INTO `antrian_administrasi_save` VALUES ('4', 'A324', '77', 'PEREMPUAN', '6876767', 'admin', '2015-12-19 23:07:27') ;
#
# End of data contents of table antrian_administrasi_save
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------


#
# Delete any existing table `antrian_transaksi_save`
#

DROP TABLE IF EXISTS `antrian_transaksi_save`;


#
# Table structure of table `antrian_transaksi_save`
#

CREATE TABLE `antrian_transaksi_save` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_antrian` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table antrian_transaksi_save (5 records)
#
 
INSERT INTO `antrian_transaksi_save` VALUES ('1', 'A321', 'tes', 'LAKI-LAKI', '798798', '1', '2015-12-19 23:02:07') ; 
INSERT INTO `antrian_transaksi_save` VALUES ('2', 'A322', 'test2', 'LAKI-LAKI', '779789', '1', '2015-12-19 23:04:54') ; 
INSERT INTO `antrian_transaksi_save` VALUES ('3', 'A323', 'testw', 'LAKI-LAKI', '79789787', '', '2015-12-19 23:05:50') ; 
INSERT INTO `antrian_transaksi_save` VALUES ('4', 'A324', '77', 'PEREMPUAN', '6876767', 'admin', '2015-12-19 23:07:27') ; 
INSERT INTO `antrian_transaksi_save` VALUES ('5', 'T$', 'dkdakj', 'LAKI-LAKI', '67878', '1', '2015-12-20 09:42:07') ;
#
# End of data contents of table antrian_transaksi_save
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------


#
# Delete any existing table `appointment`
#

DROP TABLE IF EXISTS `appointment`;


#
# Table structure of table `appointment`
#

CREATE TABLE `appointment` (
  `appoint_id` int(11) NOT NULL AUTO_INCREMENT,
  `itr_no` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `servtype` varchar(50) NOT NULL,
  `tdate` date NOT NULL,
  `dtime` varchar(40) NOT NULL,
  `status` enum('pending','accepted','done') NOT NULL,
  PRIMARY KEY (`appoint_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 ;

#
# Data contents of table appointment (9 records)
#
 
INSERT INTO `appointment` VALUES ('10', '20', 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2020-07-21', '5:00 PM', 'accepted') ; 
INSERT INTO `appointment` VALUES ('11', '19', 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2020-08-31', '8:30 PM', 'accepted') ; 
INSERT INTO `appointment` VALUES ('12', '20', 'Alvin', 'Gumatay', '09462886584', 'Xray Lombo-sacral-Sen: PHP640', '2021-02-08', '11:30 PM', 'accepted') ; 
INSERT INTO `appointment` VALUES ('13', '20', 'Alvin', 'Gumatay', '09462886584', '', '2021-02-08', '9:00 PM', 'accepted') ; 
INSERT INTO `appointment` VALUES ('14', '19', 'Alvin', 'Gumatay', '09462886584', 'Urinalysys - Senior: Php 50', '2021-06-22', '11:00 AM', 'accepted') ; 
INSERT INTO `appointment` VALUES ('15', '19', 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2021-06-09', '11:00 AM', 'accepted') ; 
INSERT INTO `appointment` VALUES ('16', '19', 'Alvin', 'Gumatay', '09462886584', 'Hematology - Senior: Php 100', '2021-06-09', '11:00 AM', 'accepted') ; 
INSERT INTO `appointment` VALUES ('18', '20', 'Alvin', 'Gumatay', '09462886584', 'Fecalysis - Regular: Php 50', '2022-02-11', '9:00 PM', 'pending') ; 
INSERT INTO `appointment` VALUES ('19', '20', 'Alvin', 'Gumatay', '09462886584', 'Consultation - Regular: Php 300', '2022-03-04', '11:00 AM', 'done') ;
#
# End of data contents of table appointment
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------


#
# Delete any existing table `complaints`
#

DROP TABLE IF EXISTS `complaints`;


#
# Table structure of table `complaints`
#

CREATE TABLE `complaints` (
  `com_id` int(50) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `section` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table complaints (0 records)
#

#
# End of data contents of table complaints
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------


#
# Delete any existing table `dislocation`
#

DROP TABLE IF EXISTS `dislocation`;


#
# Table structure of table `dislocation`
#

CREATE TABLE `dislocation` (
  `dislocation_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`dislocation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table dislocation (0 records)
#

#
# End of data contents of table dislocation
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------


#
# Delete any existing table `fecalisys`
#

DROP TABLE IF EXISTS `fecalisys`;


#
# Table structure of table `fecalisys`
#

CREATE TABLE `fecalisys` (
  `fecalysis_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`fecalysis_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table fecalisys (0 records)
#

#
# End of data contents of table fecalisys
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------


#
# Delete any existing table `hematology`
#

DROP TABLE IF EXISTS `hematology`;


#
# Table structure of table `hematology`
#

CREATE TABLE `hematology` (
  `hem_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `year` varchar(20) NOT NULL,
  PRIMARY KEY (`hem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table hematology (0 records)
#

#
# End of data contents of table hematology
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------


#
# Delete any existing table `itr`
#

DROP TABLE IF EXISTS `itr`;


#
# Table structure of table `itr`
#

CREATE TABLE `itr` (
  `itr_no` int(11) NOT NULL AUTO_INCREMENT,
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
  `ht` varchar(10) NOT NULL,
  PRIMARY KEY (`itr_no`),
  UNIQUE KEY `itr_no` (`itr_no`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ;

#
# Data contents of table itr (2 records)
#
 
INSERT INTO `itr` VALUES ('20', 'alvingumatay13@gmail.com', '123', '0', 'Alvin', 'Tumbokon', 'Gumatay', '02/13/1992', '28', '7 orovista village,  concepcion ', '09462886584', 'Single', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0') ; 
INSERT INTO `itr` VALUES ('19', 'alvingumatay@gmail.com', '12345678', '0', 'Alvin', 'Tumbokon', 'Gumatay', '07/13/1992', '28', '7 orovista village,  concepcion ', '09462886584', 'Single', 'Male', '0', '0&deg;C', '0', '0', '0kg', '0') ;
#
# End of data contents of table itr
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------


#
# Delete any existing table `level`
#

DROP TABLE IF EXISTS `level`;


#
# Table structure of table `level`
#

CREATE TABLE `level` (
  `LEVEL_ID` int(11) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `MODIFIED` datetime DEFAULT NULL,
  `CREATED_BY` tinyint(4) DEFAULT NULL,
  `MODIFIED_BY` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 ;

#
# Data contents of table level (7 records)
#
 
INSERT INTO `level` VALUES ('1', 'admin', '2014-05-10', NULL, '1', NULL) ; 
INSERT INTO `level` VALUES ('2', 'loket administrasi', '2014-05-10', '2014-07-18 02:20:13', '1', NULL) ; 
INSERT INTO `level` VALUES ('3', 'loket pas', '2014-05-12', '2014-07-18 06:27:14', '1', NULL) ; 
INSERT INTO `level` VALUES ('4', 'print', '2014-07-26', NULL, '1', NULL) ; 
INSERT INTO `level` VALUES ('4', 'loket consultation', '2019-10-21', '2019-10-21 01:45:00', '1', '4') ; 
INSERT INTO `level` VALUES ('5', 'loket hematology', '2019-10-21', '2019-10-21 00:00:00', '1', '5') ; 
INSERT INTO `level` VALUES ('6', 'loket urinalysis', '2019-10-21', '2019-10-21 04:09:00', '1', '4') ;
#
# End of data contents of table level
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------


#
# Delete any existing table `loket`
#

DROP TABLE IF EXISTS `loket`;


#
# Table structure of table `loket`
#

CREATE TABLE `loket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_loket` varchar(255) NOT NULL,
  `nama_loket` varchar(255) NOT NULL,
  `aktif` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table loket (5 records)
#
 
INSERT INTO `loket` VALUES ('1', 'xray', 'TRANSAKSI', '1') ; 
INSERT INTO `loket` VALUES ('2', 'fecalysis', 'ADMINISTRASI', '1') ; 
INSERT INTO `loket` VALUES ('3', 'consultation', 'CONSULTATION', '1') ; 
INSERT INTO `loket` VALUES ('4', 'urinalysis', 'URINALYSIS', '1') ; 
INSERT INTO `loket` VALUES ('5', 'hematology', 'HEMATOLOGY', '1') ;
#
# End of data contents of table loket
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------


#
# Delete any existing table `menus`
#

DROP TABLE IF EXISTS `menus`;


#
# Table structure of table `menus`
#

CREATE TABLE `menus` (
  `menus_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `enable` tinyint(4) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lft` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`menus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ;

#
# Data contents of table menus (11 records)
#
 
INSERT INTO `menus` VALUES ('2', 'pengguna akun', 'system.php?link=pengguna-akun', 'pengguna akun', '1', '1', '0', '2015', '1') ; 
INSERT INTO `menus` VALUES ('3', 'Pengaturan Menu', 'system.php?link=menus', 'Setting Menu', '1', '1', '0', '2015', '1') ; 
INSERT INTO `menus` VALUES ('4', 'Pengaturan Video LCD', 'system.php?link=video', 'Pengaturan Video LCD', '1', '1', '0', '2015', '1') ; 
INSERT INTO `menus` VALUES ('5', 'Pengaturan Running Text', 'system.php?link=running-text', 'Pengaturan Running Text', '1', '1', '1', '2015', '1') ; 
INSERT INTO `menus` VALUES ('8', 'Counter Fecalysis', 'system.php?link=menu-antrian-administrasi', 'Counter Fecalysis', '1', '10', '1', '2015', '1') ; 
INSERT INTO `menus` VALUES ('9', 'Loket', 'system.php?link=loket', 'loket', '1', '1', '0', '2015', '1') ; 
INSERT INTO `menus` VALUES ('10', 'OPTION MENU', '#', 'OPTION MENU', '1', '0', '1', '2015', '1') ; 
INSERT INTO `menus` VALUES ('12', 'Counter Xray', 'system.php?link=menu-antrian-transaksi', 'Counter Xray', '1', '10', '1', '2015', '1') ; 
INSERT INTO `menus` VALUES ('14', 'Counter  Consultation', 'system.php?link=menu-antrian-consultation', 'Counter Consultation', '1', '10', '1', '2019', '1') ; 
INSERT INTO `menus` VALUES ('15', 'Counter Hematology', 'system.php?link=menu-antrian-hematology ', 'Counter Hematology', '1', '10', '1', '2019', '1') ; 
INSERT INTO `menus` VALUES ('17', 'Counter Urinalysis', 'system.php?link=menu-antrian-urinalysis ', 'Counter Urinalysis', '1', '10', '1', '2019', '1') ;
#
# End of data contents of table menus
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------


#
# Delete any existing table `minor_surgery`
#

DROP TABLE IF EXISTS `minor_surgery`;


#
# Table structure of table `minor_surgery`
#

CREATE TABLE `minor_surgery` (
  `surgery_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`surgery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table minor_surgery (0 records)
#

#
# End of data contents of table minor_surgery
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------


#
# Delete any existing table `radiological`
#

DROP TABLE IF EXISTS `radiological`;


#
# Table structure of table `radiological`
#

CREATE TABLE `radiological` (
  `rad_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`rad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table radiological (0 records)
#

#
# End of data contents of table radiological
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------


#
# Delete any existing table `rehabilitation`
#

DROP TABLE IF EXISTS `rehabilitation`;


#
# Table structure of table `rehabilitation`
#

CREATE TABLE `rehabilitation` (
  `rehab_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`rehab_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table rehabilitation (0 records)
#

#
# End of data contents of table rehabilitation
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------


#
# Delete any existing table `running_text`
#

DROP TABLE IF EXISTS `running_text`;


#
# Table structure of table `running_text`
#

CREATE TABLE `running_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isi_text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table running_text (3 records)
#
 
INSERT INTO `running_text` VALUES ('1', 'Welcome To MOSC clinic we serve you to care !!!... |') ; 
INSERT INTO `running_text` VALUES ('2', 'Please wait while you stay and before you call a number.... |') ; 
INSERT INTO `running_text` VALUES ('3', ' Thank you for understanding while wait god bless us .... |') ;
#
# End of data contents of table running_text
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------


#
# Delete any existing table `secretary`
#

DROP TABLE IF EXISTS `secretary`;


#
# Table structure of table `secretary`
#

CREATE TABLE `secretary` (
  `sec_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table secretary (2 records)
#
 
INSERT INTO `secretary` VALUES ('2', 'secretary', '123', 'sec', 'R', 'Tary') ; 
INSERT INTO `secretary` VALUES ('3', 'secxs', 'secx', 'secx', 'secx', 'secx') ;
#
# End of data contents of table secretary
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------


#
# Delete any existing table `temp_administrasi`
#

DROP TABLE IF EXISTS `temp_administrasi`;


#
# Table structure of table `temp_administrasi`
#

CREATE TABLE `temp_administrasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table temp_administrasi (1 records)
#
 
INSERT INTO `temp_administrasi` VALUES ('1', '2', '') ;
#
# End of data contents of table temp_administrasi
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_consultation`
# --------------------------------------------------------


#
# Delete any existing table `temp_consultation`
#

DROP TABLE IF EXISTS `temp_consultation`;


#
# Table structure of table `temp_consultation`
#

CREATE TABLE `temp_consultation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table temp_consultation (1 records)
#
 
INSERT INTO `temp_consultation` VALUES ('1', '1', '') ;
#
# End of data contents of table temp_consultation
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_consultation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_hematology`
# --------------------------------------------------------


#
# Delete any existing table `temp_hematology`
#

DROP TABLE IF EXISTS `temp_hematology`;


#
# Table structure of table `temp_hematology`
#

CREATE TABLE `temp_hematology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table temp_hematology (1 records)
#
 
INSERT INTO `temp_hematology` VALUES ('1', '1', '') ;
#
# End of data contents of table temp_hematology
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_consultation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_transaksi`
# --------------------------------------------------------


#
# Delete any existing table `temp_transaksi`
#

DROP TABLE IF EXISTS `temp_transaksi`;


#
# Table structure of table `temp_transaksi`
#

CREATE TABLE `temp_transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table temp_transaksi (1 records)
#
 
INSERT INTO `temp_transaksi` VALUES ('1', '1', '') ;
#
# End of data contents of table temp_transaksi
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_consultation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_transaksi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_urinalysis`
# --------------------------------------------------------


#
# Delete any existing table `temp_urinalysis`
#

DROP TABLE IF EXISTS `temp_urinalysis`;


#
# Table structure of table `temp_urinalysis`
#

CREATE TABLE `temp_urinalysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_antrian` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table temp_urinalysis (1 records)
#
 
INSERT INTO `temp_urinalysis` VALUES ('1', '3', '') ;
#
# End of data contents of table temp_urinalysis
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_consultation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_transaksi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_urinalysis`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `urinalysis`
# --------------------------------------------------------


#
# Delete any existing table `urinalysis`
#

DROP TABLE IF EXISTS `urinalysis`;


#
# Table structure of table `urinalysis`
#

CREATE TABLE `urinalysis` (
  `urinalysis_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `year` varchar(10) NOT NULL,
  PRIMARY KEY (`urinalysis_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ;

#
# Data contents of table urinalysis (0 records)
#

#
# End of data contents of table urinalysis
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_consultation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_transaksi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_urinalysis`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `urinalysis`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `user`
# --------------------------------------------------------


#
# Delete any existing table `user`
#

DROP TABLE IF EXISTS `user`;


#
# Table structure of table `user`
#

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 ;

#
# Data contents of table user (2 records)
#
 
INSERT INTO `user` VALUES ('29', 'doctorc', '123', 'Albert', 'T', 'Fernia', 'DoctorApp') ; 
INSERT INTO `user` VALUES ('30', 'doctorh', 'doctorh', 'doctorh', 'H', 'Hematology', 'Hematology') ;
#
# End of data contents of table user
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_consultation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_transaksi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_urinalysis`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `urinalysis`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `user`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------


#
# Delete any existing table `users`
#

DROP TABLE IF EXISTS `users`;


#
# Table structure of table `users`
#

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `session_id` varchar(100) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 PACK_KEYS=0 ;

#
# Data contents of table users (4 records)
#
 
INSERT INTO `users` VALUES ('1', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'xxxxxxxxxxxx', 'administrator', '1', 'AMDMAD', '1991-06-09', '23Photo_00004.jpg', 'makassar', '81243324689', '1', '0', '2014-05-10', '2014-07-18 21:13:53', '1', '1', '') ; 
INSERT INTO `users` VALUES ('20', 'myprint', 'bebaec246afd2b4ccd42b6f977a4a25a2baedb8f', 'xxxx', 'printer', '1', 'jakarta', '2013-11-05', '9CPU-icon.png', 'MAKASSAR', '0808707779', '4', '0', '2014-07-26', NULL, '1', NULL, '') ; 
INSERT INTO `users` VALUES ('19', 'administrasi', 'e5c6ba3abff1db4479bb60c5d79cc1c2a0689dcb', 'xxxxxx', 'admin administrasi', '1', 'JAKARTA', '1991-06-12', '94guard-icon.png', 'MAKASSAR', '093729272', '2', '0', '2014-07-18', '2014-07-18 22:22:39', '1', '1', '') ; 
INSERT INTO `users` VALUES ('18', 'pas', '19c2a0dbd8e3a41b25d504744c57df8853e36677', 'xxxxx', 'admin pas', '1', 'JAKARTA', '1991-06-09', '12acid.MP4', 'MAKASSAR', '08927638282', '3', '0', '2014-07-18', '2014-07-20 21:14:03', '1', '1', '') ;
#
# End of data contents of table users
# --------------------------------------------------------

# MySQL database backup
#
# Generated: Saturday 26. February 2022 15:35 CET
# Hostname: localhost
# Database: `hcpms`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `admin`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_administrasi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `antrian_transaksi_save`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `appointment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `complaints`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `dislocation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `fecalisys`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `itr`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `level`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `loket`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menus`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `minor_surgery`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `radiological`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `rehabilitation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `running_text`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `secretary`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_administrasi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_consultation`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_hematology`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_transaksi`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `temp_urinalysis`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `urinalysis`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `user`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `users`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `video`
# --------------------------------------------------------


#
# Delete any existing table `video`
#

DROP TABLE IF EXISTS `video`;


#
# Table structure of table `video`
#

CREATE TABLE `video` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ;

#
# Data contents of table video (1 records)
#
 
INSERT INTO `video` VALUES ('1', 'my video e', 'video1.mp4', '0000-00-00', '0') ;
#
# End of data contents of table video
# --------------------------------------------------------

