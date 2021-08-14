-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2020 at 01:04 PM
-- Server version: 5.6.47-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proconfl_medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(50) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `submit_date` varchar(20) NOT NULL,
  `submit_time` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `doctor_id`, `name`, `email`, `phone`, `date`, `time`, `status`, `submit_date`, `submit_time`) VALUES
(13, 17, 'mokbul', 'mokbul@gmail.com', '01778207719', '2018-11-16', '8:00-9:00 AM', 'Approve', '2018-11-29', '12:01:52am'),
(14, 15, 'mokbul', 'mokbul@gmail.com', '01778207719', '2018-11-23', '8:00-9:00 AM', 'Pending', '2018-11-29', '12:08:13am'),
(15, 15, 'Mizan', 'tanvirulcse480@gmail.com', '7272737', '2019-07-31', '8:00-9:00 AM', 'Approve', '2019-07-30', '01:30:24pm'),
(16, 30, 'hhhh', 'tanvirulcse480@gmail.com', '7272737', '2019-08-15', '8:00-9:00 AM', 'Reject', '2019-08-03', '08:17:10am'),
(17, 30, 'hhhh', 'tanvirulcse480@gmail.com', '7272737', '2019-08-15', '8:00-9:00 AM', 'Pending', '2019-08-03', '09:58:19am'),
(18, 31, 'mokbul ', 'mokbul@gmail.com', '014455666', '2019-09-27', '8:00-9:00 AM', 'Approve', '2019-09-16', '07:59:19pm'),
(19, 15, 'saif', 'shelpyjahan@gmail.com', '11223344', '2019-09-17', '8:00-9:00 AM', 'Approve', '2019-09-16', '08:21:52pm'),
(20, 15, 'Mohim', 'mohim@gmail.com', '123456', '2019-09-18', '8:00-9:00 AM', 'Pending', '2019-09-17', '12:28:07pm'),
(21, 27, 'dfsds', 'myname@email.com', '01567356773', '2019-10-02', '8:00-9:00 AM', 'Pending', '2019-10-05', '08:57:06pm'),
(22, 10, 'a', 'a@gmail.com', 'aaa', '2020-03-12', '8:00-9:00 AM', 'Pending', '2020-03-05', '12:27:37am');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `msg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `msg`) VALUES
(4, 'mamun', 'saifulcse95@gmail.com', '019384573', 'Help Me'),
(5, 'kamal', 'hbd@hbd.com', '01777777777', 'jamal');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`) VALUES
(2, 'khulna'),
(6, 'Dhaka'),
(7, 'Chattogram'),
(10, 'Rajshahi'),
(11, 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `doctorf`
--

CREATE TABLE `doctorf` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `specialty` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `reg` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorf`
--

INSERT INTO `doctorf` (`id`, `name`, `title`, `specialty`, `gender`, `phone`, `reg`, `description`, `email`, `password`, `image`) VALUES
(7, 'saiful ', 'profesor', 'Dermatoliigst', 'Female', '4567890', '456789', 'ajdfhjh akjdfasj', 'saifulcse95@gmail.com', NULL, ''),
(8, 'saiful ', 'profesor', 'Dermatoliigst', 'Female', '4567890', '456789', 'ajdfhjh akjdfasj', 'saifulcse95@gmail.com', NULL, ''),
(9, 'saiful ', 'profesor', 'Dermatoliigst', 'Female', '4567890', '456789', 'ajdfhjh akjdfasj', 'saifulcse95@gmail.com', NULL, ''),
(10, 'saiful islam ', 'consultent', 'Dermatoliigst', 'Male', '01954678', '1234655', ' amader deshe hobe sei chele kobe ', 'sajib.cse95@gmail.com', NULL, ''),
(11, 'sajib', '', 'Medicine Specilist', 'Male', '', '', '', '', NULL, 'img.jpg'),
(12, 'Dr kamal', 'profesor', 'Dermatoliigst', 'Male', '01936197990', '65437', 'hi', 'kamal@gmail.com', NULL, ''),
(14, 'mokbul', 'professor', 'Dermatoliigst', 'Male', '00000000', '12364', 'sdsdsdfsdf', 'mokbul@gmail.com', '123456', '80X80.png');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_info`
--

CREATE TABLE `doctor_info` (
  `doctor_id` int(55) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `degree` varchar(200) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `tell_number` varchar(15) DEFAULT NULL,
  `hospital_name` varchar(250) DEFAULT NULL,
  `doctor_location` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `doctor_summery` varchar(200) DEFAULT NULL,
  `lati` double DEFAULT NULL,
  `longi` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_info`
--

INSERT INTO `doctor_info` (`doctor_id`, `email`, `password`, `name`, `image`, `degree`, `experience`, `tell_number`, `hospital_name`, `doctor_location`, `address`, `doctor_summery`, `lati`, `longi`) VALUES
(1, NULL, NULL, 'Dr. Khaled Mshanot', NULL, 'MBBS,FCPS', '', '9876543', 'City Hospital,Saver,Dhaka', '   saver', '', '', 23.8479, 90.2576),
(2, NULL, NULL, 'Dr. AktanuJaman', '', 'MBBS,FCPS', '', '1928506306', 'Populer  Hospital,Saver,Dhaka', 'saver', '', '', 23.8479, 90.2576),
(3, NULL, NULL, 'Dr. Mahbubur Rhaaman', '', 'MBBS,DDsc(UK),MDsc(USA) ', '', '1711298607', 'City Hospital,Saver,Dhaka', 'saver', '', '', 23.8479, 90.2576),
(4, NULL, NULL, 'Dr. Rabeya Chowdury', '', 'MBBS,FCPS', '', '1711298607', 'Amena Hospital,Mirpur,Dhaka', 'Dhaka', 'Road No-7 ,Baitol Aman Masjid ,Dhanmondi', 'Medical doctors examine, diagnose and treat patients. They can specialize in a number of medical areas, such as pediatrics, anesthesiology or cardiology.', 23.8103, 90.4125),
(5, NULL, NULL, 'Dr. Simla Rahaman', '', 'MBBS,DDsc(UK),MDsc(USA) ', '', '1854543357', 'City Hospital,Saver,Dhaka', 'saver', '', '', 23.8479, 90.2576),
(6, NULL, NULL, 'Dr. shahana Khatun', '', 'MBBS,DDsc(UK),MDsc(USA)', '', '1714766099', 'Dhaka Medical Collage,Dhaka', 'Dhaka', 'Road No-10 ,Priton School,Dhanmondi.', 'This is to inform you that we have an Urgent Requirement for Medical Officer/GP (Part Time) at our own Medical Research Centre.', 23.8103, 90.4125),
(8, NULL, NULL, 'Dr. Saiful Islam', '', 'MBBS,DDsc(UK),MDsc(USA) ', '', '1928506306', 'City Hospital,Saver<dhaka', 'saver', '', '', 23.8479, 90.2576),
(9, NULL, NULL, 'Dr. Khalek Akbar', NULL, 'BDS,DCD(USSR),FADI(USA)', '', '1711298607', 'Dhaka Medical Collage,Dhaka', 'Dhaka', 'Pan Pacific Hospital Training & Research Institute Ltd., Main Br., 24, Outer Circular Road, Motijheel, Dhaka ', 'He previously had a small role in the BBC\'s animated Doctor Who webcast Scream of . Tennant filmed the second series of Broadchurch during summer 2018', 23.8103, 90.4125),
(10, NULL, NULL, 'Dr. Farhan Kobir', '', 'MBBS,MCPS,MD', '', '1721877623', 'Amena Hospital,Dhaka', 'Dhaka', 'Panthapath (near Samorita Hospital), 3rd Floor of BRAC Bank Ltd., Panthapath, Dhaka', 'He previously had a small role in the BBC\'s animated Doctor Who webcast Scream of .Tennant filmed the second series of Broadchurch during summer 2014', 23.8103, 90.4125),
(11, NULL, NULL, 'Dr. Nadia Afroz', '', 'MBBS,DDsc(UK),MDsc(USA) ', '', '1854543357', 'City Hospital,Saver,Dhaka', 'saver', '', '', 23.8479, 90.2576),
(12, NULL, NULL, 'Dr. Md. Abdullah Khan', '', 'Dentist, BDS, PGT ( Japan )', '', '1936197990', 'Metropolitan Dental,cumilla', 'comilla', '', '', 23.4607, 91.1809),
(13, NULL, NULL, 'Professor Dr. Khandaker Abdul Azim', '', ' BDS, Dip, OMS ( Australia )\r\nConsultant, Dentist', '', '91288357', ' Ibn Sina Dental Center,Natore', 'Natore', '', '', 24.4079, 88.9749),
(14, NULL, NULL, 'Professor Dr. Md. Saleh Uddin', '', 'MBBS, FCPS, MS, PhD ( Australia ), FICS, FCPS', '', '171848692', 'Northern International Medical College & Hospital', 'gazipur', '', '', 23.9999, 90.4203),
(15, NULL, NULL, 'Dr.Mahamad Nuruzzaman', '', 'MBBS,FCPS,DCH,MCPS', '', '1936033125', 'Dhaka Medical Collage', 'Dhaka', 'Anwar Khan Modern Medical College, Main Branch, House # 17, Road # 8, Dhanmondi, Dhaka', '', 23.8103, 90.4125),
(17, NULL, NULL, 'Dr. Samsul Alam', '', 'MBBS,FCPS(USA)', '', '1936033127', 'Dhaka Medical Collage', 'Dhaka', '11, Farmgate over Bridge East Side, Dhaka, Bangladesh', '', 23.8103, 90.4125),
(18, NULL, NULL, 'Dr.Jasmin Manzoor', '', 'MBBS,DDsc(UK),MDsc(USA)', '', '1841276556', 'Apollo Hospital Dhaka ', 'Dhaka', '2/A, Golden Street, Ring Road, Shamoli, Dhaka, Bangladesh', '', 23.8103, 90.4125),
(19, NULL, NULL, 'Dr.M.Nurul Alam', '', 'MBBS,PCPS,DDB', '', '28836000', 'United Hospital Ltd', 'Dhaka', '5/4, Block-F, Lalmatia, Dhaka- 1207, Bangladesh', '', 23.8103, 90.4125),
(20, NULL, NULL, 'Professor Dr. Fazlul Hoque', NULL, 'FRCP ( Glasgow ), FACP ( USA ), FCPS ( Pak )', '', '1674058435', 'Dhaka Medical College & Hospital', 'Dhaka', '21/17, Babur Road, Mohammadpur. Dhaka - 1207', '', 23.8103, 90.4125),
(21, NULL, NULL, 'Dr. A.K.M. Rafique Uddin', '', 'MBBS, MD ( USA ), FCPS ( Medicine ), FACP ( USA )', '', '1553341060', 'Enam Medical College & Hospital', 'Dhaka', 'House # 11, Road # 2, Shamoli, Dhaka, Bangladesh', '', 23.8103, 90.4125),
(22, NULL, NULL, 'Prof. Dr. Sabera Khatun', '', 'MBBS (Dhaka), FCPS (Obs & Gynae) FICS', '', '862451418', 'Central Hospital Ltd.', 'Dhaka', 'Plot No - M-1/C, Section -14, Mirpur, Dhaka -1206', '', 23.8103, 90.4125),
(23, NULL, NULL, ' Dr. Khadiza Nazneen', '', 'MBBS, FCPS (Gynae), MRCOG (London)', '', '1819213262', 'Labaid Cardiac Hospital', 'Dhaka', 'House No. 33, Road No. 12. Nikunja-2, Dhaka', '', 23.8103, 90.4125),
(24, NULL, NULL, 'Dr. M. A. Sikder', '', ' BDS, Ph.D ( Japan )', '', '1914553088', 'Smile Specialized Dental & Research Center', 'Dhaka', '', '', 23.8103, 90.4125),
(25, NULL, NULL, 'Professor Dr. Md. Shamsul Alam', '', 'BDS, DCD(USSR), FADI(USA)', '', '1961541276', ' Green Life Hospital Limited', 'Dhaka', '5/17 Humayun Road, College Gate, Dhaka - 1207, Bangladesh', '', 23.8103, 90.4125),
(26, NULL, NULL, 'Professor Dr. Shah Alam', '', 'MBBS, FCPS ( Ophthalmology )', '', '1713377773', 'SQUARE Hospitals Ltd.', 'Dhaka', 'House # 13, Eshakha Avenue, Sector # 6, Uttara, Dhaka,', '', 23.8103, 90.4125),
(27, NULL, NULL, 'Professor Dr. Jalal Ahmed', '', 'MBBS, FCPS, FICS', '', '1553341060', 'Popular Diagnostic Centre Ltd – Dhanmondi Branch', 'Dhaka', 'House # 71/1, Road # 15/A, Dhanmondi R/A, (Shankar Bus Stand)', '', 23.8103, 90.4125),
(28, NULL, NULL, 'Asst. Prof. Dr. Mohammad Salahuddin', '', 'MBBS,MD(Nero Medicine- BSMMU)', '', '1936197990', 'Chittagong Medical College', 'Chattogram', '', '', 22.3569, 91.7832),
(29, NULL, NULL, 'Dr. Md. Ruhul Kuddus', '', 'MBBS, FCPS (Medicine)', '', '1936197990', 'Shaheed Sheikh Abu Naser Specialized Hospital.', 'Khulna', '', '', 22.8456, 89.5403),
(30, NULL, NULL, 'Dr. Raseul Kobir Polash', '', 'MBBS,MD(Neuro Medicine),FCPS(Medicine) ', '', '1936197990', 'Amana Hospital Ltd. Rajshahi', 'Rajshahi', '', '', 24.3745, 88.6042),
(31, NULL, NULL, 'Dr. Rama Biswas', '', 'MBBS, FCPS (Medicine), MD (Neurology)', '', '1936789882', 'Square Hospital Ltd', 'Sylhet', '', '', 24.8949, 91.8687),
(32, NULL, NULL, 'Dr. Md. Habibur Rahman', '', 'MBBS (RMCH), MS (Neurosurgery)', '', '1936874567', ' Rangpur Medical College and Hospital', 'Rangpur', '', '', 25.7439, 89.2752),
(33, NULL, NULL, 'Dr. Sabbir Ahmed Dhali', '', 'MBBS, FCPS', '', '1936197990', 'Mymensingh Medical Colleg', 'Mymensingh', '', '', 24.7471, 90.4203),
(34, NULL, NULL, 'Prof. Dr. Hasibur Rahman', '', 'MBBS,FCPS', '', '1934776436', 'Community Based Medical College Bangladesh', 'Mymensingh', '', '', 24.7471, 90.4203),
(35, NULL, NULL, 'Dr. Samira Jamal(MBBS)', '', 'MBBS,MD(Dermatology)', '', '1854543357', 'Agrabad American Hospital, Chittagong', 'Chattogram', '', '', 22.3569, 91.7832),
(36, NULL, NULL, 'Dr. Parthosarothi Sikdar', '', 'MBBS, BCS, MCPS (Medicine)', '', '1731510028', 'Khulna Medical College, Khulna\r\nChamber: Devnath Pharmacy, Morolgang, Bagerhat', 'Khulna', '', '', 22.8456, 89.5403),
(37, NULL, NULL, 'Dr. Utpal Kumar Chanda', '', 'MBBS, FCPS(Medicine)', '', '1772473060', 'Consultant, Sadar Hospital Khulna\r\nChamber: 10 Fire Bridget Road, Khulna (Besides Pioneer Mohila College)', 'Khulna', '', '', 22.8456, 89.5403),
(38, NULL, NULL, 'Dr. Nazrul Islam', '', 'MBBS, DDV(DU)', '', '1710616936', 'Khulna Medical Collage Hospital', 'Khulna', '', '', 22.8456, 89.5403),
(39, NULL, NULL, 'Dr Romes Chandra Sorkar', '', 'DDV(DU), DCDD(Bangkok, Thailand)', '', '1786511206', 'Gazi Medical Collage Hospital', 'Khulna', '', '', 22.8456, 89.5403),
(40, NULL, NULL, 'Dr. Samsun Nahar Lucky', '', 'MBBS, FCPS, MS (Obs & Gyne)', '', '1711443587', 'Khulna Medical College Hospital, Khulna\r\n\r\nChamber: Victory Nursing and Infertility Management Center\r\n58/1, Ahsan Ahamed Road, Khulna', 'Khulna', '', '', 22.8456, 89.5403),
(41, NULL, NULL, 'Dr. Nasrin Kabir', '', ' (Khulna Gynecologist and Laparoscopic Surgeon)\r\nMBBS, BCS, DGO, FCPS (Gyne)', '', '1786214737', 'Khulna Medical College Hospital, Khulna\r\n\r\nChamber 1: House-84, Road-02, Sonadanga, Khulna', 'Khulna', '', '', 22.8456, 89.5403),
(42, NULL, NULL, 'Dr. M A Malek Khan', '', 'MBBS, FCPS (Eye)\r\n\r\nEye Specialist & Phaco Surgeon', '', '41733802', 'Khulna Medical College & Hospital, Khulna\r\n\r\nChamber: Orbit Eye Care Center, 60, Babu Khan Road, Khulna\r\n\r\nVisiting Time: 5-8pm (Close Thursday & Friday)', 'Khulna', '', '', 22.8456, 89.5403),
(43, NULL, NULL, 'Dr. Monjo Kumar Das', '', 'MBBS, MPH (DU), DO (NIO, DU)\r\n\r\nFellow, WHO (India & Indonesia)', '', '1714766099', 'Khulna Medical College\r\n\r\nChamber: Unique Diagnostic Center, 41/1 Khan Jahan Ali Road, Kakolibag Mor (Royal Mor) Khulna\r\n\r\nVisiting Time: 10am-2pm\r\n\r\n5pm-9pm (Close Thursday & Friday)', 'Khulna', '', '', 22.8456, 89.5403),
(44, NULL, NULL, 'Dr Tamanna Jabrin', '', 'BDS (Dhaka)', '', '1711298607', 'Islami Bank Hospital', 'Khulna', '', '', 22.8456, 89.5403),
(45, NULL, NULL, 'Dr Dipannita Das', '', 'BDS(DU)', '', '41723966', 'Gazi Medical Collage Hospital', 'Khulna', '', '', 22.8456, 89.5403),
(46, NULL, NULL, 'Dr. Alok Kumar Raha', '', 'MBBS,MCPS,MD', '', '1928506306', 'Chittagong Medical College & Hospital\r\nMetro Diagnostic Centre Ltd', 'Chattogram', '', '', 22.3569, 91.7832),
(47, NULL, NULL, 'Assoc. Prof. Dr. Adiba Malik', '', 'MBBS, MS (CMCH).', '', '1936197990', 'Chattagram Maa-O-Shishu Hospital Medical College -Shahjalal Diagnostic Centre, Opposite to badamtoli jame moshzid, Agrabad, Chittagong', 'Chattogram', '', '', 22.3569, 91.7832),
(48, NULL, NULL, 'Dr. Sheikh Mohammad Zahed', '', 'BDS(CMC),FDIP(New Delhi)', '', '1936197990', 'Zahed\'s Dental Care, Bahaddarhat, Chittagong', 'Chattogram', '', '', 22.3569, 91.7832),
(49, NULL, NULL, 'Dr. Utpal Sen', '', 'MBBS, FCPS (Eye), MCPS (Eye), FICO (USA)', '', '1936197990', ' Bangladesh Eye Hospital,Chittagong Br., Probartak Sangha Building (4th & 5th Floor) Chittagong', 'Chattogram', '', '', 22.3569, 91.7832),
(50, NULL, NULL, 'Prof. Dr. B. Zaman', '', 'MBBS, DDV (Thailand), FAAD (America), M-phil, Phd', '', '1936197990', 'Rajshahi Medical College Hospital-Apollo Clinic & Diagnostic Center, Main Branch, Madrasa More, Sadar, Natore', 'Rajshahi', '', '', 24.3745, 88.6042),
(51, NULL, NULL, 'Dr. Fahmida Sirin Nila', '', 'MBBS, BCS (Health)', '', '1936197990', 'Rajshahi Model Hospital-Main Branch, Bornali More, Laksmipur, Rajshahi', 'Rajshahi', '', '', 24.3745, 88.6042),
(52, NULL, NULL, 'Dr. A. K. M. Asad (Polash)', '', 'MBBS,DDsc(UK),MDsc(USA) ', '', '1936197990', 'Rajshahi Metropolitan Hospital Ltd., Main Branch, C & B Moor, Kazihata, Sadar, Rajshahi', 'Rajshahi', '', '', 24.3745, 88.6042),
(53, NULL, NULL, 'Asst. Prof. Dr. A. M. Yousuf', '', 'MBBS, DO, MS, FCPS', '', '1936197990', 'Rajshahi Medical College-Orbit Eye Care, House-51, Greater Road, Laksmipur, Rajshahi', 'Rajshahi', '', '', 24.3745, 88.6042),
(54, NULL, NULL, 'Dr. Dhrubajyoti Roy Chowdhury', '', 'MBBS, FCPS (Skin & VD), DDV', '', '1936197990', 'The Nova Skin Care, 54, 1st floor, Stadium Market, Sadar, Sylhet', 'Sylhet', '', '', 24.8949, 91.8687),
(55, NULL, NULL, 'Dr. Khursheda Tahmeen (Shimu)', '', 'MBBS, MS (Gynaecology and Obstetrics)', '', '1936197990', 'Green View Diagnostic Complex, Main Branch, Dorgah Moholla (South), Sadar, Sylhet', 'Sylhet', '', '', 24.8949, 91.8687),
(56, NULL, NULL, 'DR. RANJON ROY', '', 'MBBS,FCPS(Medicine)', '', '1710263588', 'Asst.Prof M.A.G Osmani Medical College.', 'Sylhet', '', '', 24.8949, 91.8687),
(57, NULL, NULL, 'Asst. Prof. Dr. Md. Zahirul Islam', '', 'MBBS,MS', '', '1936197990', 'Saleha Eye Care, Rikabi Bazar, Near Auditorium & Stadium , Sadar, Sylhet', 'Sylhet', '', '', 24.8949, 91.8687),
(58, NULL, NULL, 'Dr. m. a kashem', '', 'BDS, DCD', '', '1936197990', 'Doctor in Sylhet Sadar-022, Madhushahid. Sylhet Sadar.. P.C. 3100, Sylhet Sadar, Sylhet.', 'Sylhet', '', '', 24.8949, 91.8687),
(59, NULL, NULL, 'Prof. Dr. Md. Mahamudul Hoq Sarker', '', 'MBBS, DDV (BSMMU)', '', '1936197990', 'Prime Diagnostic Centre, Dhap, Jail Road, Sadar, Rangpur', 'Rangpur', '', '', 25.7439, 89.2752),
(60, NULL, NULL, 'Prof. Dr. Md. Zakir Hossain', '', 'MBBS, FCPS (Medicine), MD (Internal Medicine), FACP (USA), FRCP (UK)', '', '1936197990', 'Hypertension & Research Centre, Dhap, Jail Road, Sadar, Rangpur\r\n\r\n', 'Rangpur', '', '', 25.7439, 89.2752),
(61, NULL, NULL, 'DR. MAHABUBA KHATUN KONA', '', 'MBBS FCPS ', '', '1936197990', 'POPULAR DIAGNOSTIC CENTRE HOUSE-77/1 ROAD-1 JAIL ROAD DHAP RANGPUR.', 'Rangpur', '', '', 25.7439, 89.2752),
(70, 'mokbul@gmail.com', '123456', 'mokbul', '300X300.jpg', 'asdasda', NULL, '00000000', 'anam', ' ', '', 'sfsfsdfs', 0, 0),
(72, 'shamimahmedsujon4126@gmail.com', '12345', 'sujon', '', 'BCS', NULL, '01516160125', NULL, NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `psw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `fname`, `lname`, `email`, `psw`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `specialist_type`
--

CREATE TABLE `specialist_type` (
  `specialist_id` int(250) NOT NULL,
  `specialist_type_name` varchar(250) NOT NULL,
  `doctor_id` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialist_type`
--

INSERT INTO `specialist_type` (`specialist_id`, `specialist_type_name`, `doctor_id`) VALUES
(4, 'Medicine Specialist', 1),
(5, 'Medicine Specialist', 2),
(6, 'Medicine Specialist', 3),
(10, 'Gaynecologist', 4),
(11, 'Gaynecologist', 5),
(12, 'Gaynecologist', 6),
(17, 'Medicine Specialist', 8),
(18, 'Medicine Specialist', 9),
(21, 'Skin Specialist', 10),
(22, 'Dermatologist', 11),
(24, 'teeth', 12),
(25, 'teeth', 13),
(26, 'eye', 14),
(27, 'Brain & Spine', 15),
(28, 'Brain & Spine', 17),
(29, 'Skin Specialist ', 18),
(30, 'Skin Specialist', 19),
(31, 'Medicine Specialist', 20),
(32, 'Medicine Specialist', 21),
(33, 'Gynecologist', 22),
(34, 'Gynecologist', 23),
(35, 'Dentist', 24),
(36, 'Dentist', 25),
(37, 'Ophthalmology', 26),
(38, 'Ophthalmology', 27),
(40, 'Neuromedicine (Brain, Spina)', 28),
(41, 'Neuromedicine (Brain, Spinal)', 29),
(42, 'Neuromedicine (Brain,Spinal)', 30),
(43, 'Neuromedicine (Brain,Nerve)', 31),
(44, 'Neurosurgery (Surgery of Brain)', 32),
(45, ' Neuromedicine(Brain,Nerve)', 33),
(46, 'Dermatology (Skin,Hair,Sexual)', 34),
(47, 'Dermatology (Skin,Hair)', 35),
(52, 'Medicine Specialist', 36),
(53, 'Medicine Specialist', 37),
(54, 'Dermatologist', 38),
(55, 'Dermatologist', 39),
(57, 'Gynecologist', 41),
(58, 'Gynecologist', 40),
(59, 'Eye Specialist', 42),
(60, 'Eye Specialist', 43),
(61, 'Dentist', 44),
(62, 'Dentist', 45),
(63, 'Medicine Specialist', 46),
(64, 'Gynaecology and Obstetrics', 47),
(65, 'Dentistry(Dental, Surgery,Scaling)', 48),
(66, 'Ophthalmology (Eye, Vision)', 49),
(67, 'MBBS,DDV FAAD,M-phil,Phd', 50),
(68, 'Gynaecology and Obstetrics', 51),
(69, 'Dentistry(Dental,Surgery,Scaling)', 52),
(70, 'Ophthalmology (Eye, Vision,)', 53),
(71, 'Dermatology(Skin, Sexual)', 54),
(72, 'Gynaecology and Obstetrics (Pregnancy, Menstrual, Uterus,)', 55),
(73, 'Medicine specialist ', 56),
(74, 'Ophthalmology(Eye,Vision)', 57),
(75, 'Dental Specialist', 58),
(76, 'Dermatology (Skin, Venereology, Sexual, Hair, Allergy)', 59),
(77, 'Medicine specialist', 60),
(78, 'Gynecologist Obstetrics', 61);

-- --------------------------------------------------------

--
-- Table structure for table `symptom`
--

CREATE TABLE `symptom` (
  `symptom_id` int(245) NOT NULL,
  `symptom_name` varchar(245) CHARACTER SET utf8 DEFAULT NULL,
  `symptom_type` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptom`
--

INSERT INTO `symptom` (`symptom_id`, `symptom_name`, `symptom_type`) VALUES
(1, 'Headache', 'brain'),
(2, 'Brain Headaches With Vomiting', 'brain'),
(3, 'Changes In Vision', 'brain'),
(4, 'Pain in the Back of the Head', 'brain'),
(5, 'Neck Stiffness', 'brain'),
(6, ' Headaches In Center', 'brain'),
(7, 'Changing Mole', 'Skin'),
(8, 'Acne', 'Skin'),
(9, 'Hives', 'Skin'),
(10, 'Rosacea', 'Skin'),
(11, 'Posriasis', 'Skin'),
(12, 'Ulcen', 'Skin'),
(13, 'Irregular Bordem', 'Skin'),
(14, 'Swollen Glands', 'Body'),
(15, 'Fever and Night Sweats', 'Body'),
(16, 'Skin Rashes and Skin Sores', 'Body'),
(17, 'Joint Pain', 'Body'),
(18, 'Weight Loss', 'Body'),
(19, 'Stomach Pain in Woman', 'woman'),
(20, 'Chest Pain in Woman', 'woman'),
(21, 'Heart Palpitations in Woman', 'woman'),
(22, 'Over Sweating', 'woman'),
(23, 'Shortness Of Breath', 'woman'),
(24, 'Menstrual Changes', 'woman'),
(25, 'Toothache', 'teeth'),
(26, 'Sensitive Teeth', 'teeth'),
(27, 'Bleeding ', 'teeth'),
(28, 'Bad Breath', 'teeth'),
(29, 'Jaw Pain', 'teeth'),
(30, 'Broken Teeth', 'teeth'),
(31, 'Sudden eye pain', 'eye'),
(32, 'Double vision', 'eye'),
(33, 'Seeing rainbows', 'eye'),
(34, 'White areas in the pupil of the eye', 'eye'),
(35, 'Sensitivity to light or glare', 'eye'),
(36, 'Burning', 'Body');

-- --------------------------------------------------------

--
-- Table structure for table `symptom_doctor`
--

CREATE TABLE `symptom_doctor` (
  `id` int(250) NOT NULL,
  `symptom_id` int(55) NOT NULL,
  `doctor_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptom_doctor`
--

INSERT INTO `symptom_doctor` (`id`, `symptom_id`, `doctor_id`) VALUES
(7, 19, 1),
(8, 2, 1),
(9, 3, 1),
(10, 4, 1),
(11, 5, 1),
(12, 6, 1),
(13, 1, 2),
(14, 2, 2),
(15, 3, 2),
(16, 4, 2),
(17, 5, 2),
(18, 6, 2),
(19, 1, 3),
(20, 2, 3),
(21, 3, 3),
(22, 4, 3),
(23, 5, 3),
(24, 6, 3),
(25, 19, 10),
(58, 8, 10),
(59, 9, 10),
(60, 10, 10),
(61, 11, 10),
(62, 12, 10),
(63, 13, 10),
(64, 19, 11),
(65, 8, 11),
(66, 9, 11),
(67, 10, 11),
(68, 11, 11),
(69, 12, 11),
(70, 13, 11),
(76, 14, 8),
(77, 15, 8),
(78, 16, 8),
(79, 17, 8),
(80, 18, 8),
(81, 14, 9),
(82, 15, 9),
(83, 16, 9),
(84, 17, 9),
(85, 18, 9),
(86, 19, 4),
(87, 20, 4),
(88, 21, 4),
(89, 22, 4),
(90, 23, 4),
(91, 24, 4),
(92, 19, 5),
(93, 20, 5),
(94, 21, 5),
(95, 22, 5),
(96, 23, 5),
(97, 24, 5),
(98, 19, 6),
(99, 20, 6),
(100, 21, 6),
(101, 22, 6),
(102, 23, 6),
(103, 24, 6),
(104, 25, 12),
(105, 25, 13),
(106, 26, 12),
(107, 26, 13),
(108, 27, 12),
(109, 27, 13),
(110, 28, 12),
(111, 28, 13),
(112, 29, 12),
(113, 29, 13),
(114, 30, 12),
(115, 30, 13),
(116, 31, 14),
(117, 32, 14),
(118, 33, 14),
(119, 34, 14),
(120, 35, 14),
(121, 28, 9),
(122, 1, 15),
(123, 2, 15),
(124, 3, 15),
(125, 4, 15),
(126, 5, 15),
(127, 5, 15),
(128, 6, 15),
(135, 1, 17),
(136, 2, 17),
(137, 3, 17),
(138, 4, 17),
(139, 5, 17),
(140, 6, 17),
(141, 19, 18),
(142, 8, 18),
(143, 9, 18),
(144, 10, 18),
(145, 10, 18),
(146, 11, 18),
(147, 12, 18),
(148, 13, 18),
(149, 19, 19),
(150, 8, 19),
(151, 9, 19),
(152, 10, 19),
(153, 11, 19),
(154, 12, 19),
(155, 13, 19),
(156, 14, 20),
(157, 15, 20),
(158, 16, 20),
(159, 17, 20),
(160, 18, 20),
(161, 36, 20),
(162, 14, 21),
(163, 15, 21),
(164, 16, 21),
(165, 17, 21),
(166, 18, 21),
(167, 36, 21),
(168, 19, 22),
(169, 20, 22),
(170, 21, 22),
(171, 22, 22),
(172, 23, 22),
(173, 24, 22),
(174, 19, 23),
(175, 20, 23),
(176, 21, 23),
(177, 22, 23),
(178, 24, 23),
(179, 23, 23),
(180, 25, 24),
(181, 26, 24),
(182, 27, 24),
(183, 29, 24),
(184, 28, 24),
(185, 28, 25),
(186, 27, 25),
(187, 26, 25),
(188, 29, 25),
(189, 25, 25),
(190, 31, 26),
(191, 33, 26),
(192, 32, 26),
(193, 34, 26),
(194, 35, 26),
(195, 32, 27),
(196, 31, 27),
(197, 33, 27),
(198, 34, 27),
(199, 1, 28),
(200, 2, 28),
(201, 3, 28),
(202, 3, 28),
(203, 4, 28),
(204, 5, 28),
(205, 6, 28),
(206, 1, 29),
(207, 2, 29),
(208, 3, 29),
(209, 4, 29),
(210, 5, 29),
(211, 6, 29),
(212, 1, 30),
(213, 2, 30),
(214, 3, 30),
(215, 4, 30),
(216, 5, 30),
(217, 6, 30),
(218, 1, 31),
(219, 2, 31),
(220, 3, 31),
(221, 4, 31),
(222, 5, 31),
(223, 6, 31),
(224, 1, 32),
(225, 2, 32),
(226, 3, 32),
(227, 4, 32),
(228, 5, 32),
(229, 6, 32),
(230, 1, 33),
(231, 2, 2),
(232, 3, 33),
(233, 4, 33),
(234, 5, 33),
(235, 6, 33),
(236, 19, 34),
(237, 8, 34),
(238, 9, 34),
(239, 10, 34),
(240, 11, 34),
(241, 12, 34),
(242, 13, 34),
(243, 14, 34),
(244, 19, 35),
(245, 8, 35),
(246, 9, 35),
(247, 10, 35),
(248, 11, 35),
(249, 12, 35),
(250, 13, 35),
(265, 14, 36),
(266, 15, 36),
(267, 16, 36),
(268, 17, 36),
(269, 18, 36),
(270, 14, 37),
(271, 15, 37),
(272, 16, 37),
(273, 17, 37),
(274, 18, 37),
(275, 19, 38),
(276, 8, 38),
(277, 9, 38),
(278, 10, 38),
(279, 11, 38),
(280, 12, 38),
(281, 13, 38),
(282, 19, 39),
(283, 8, 39),
(284, 9, 39),
(285, 10, 39),
(286, 11, 39),
(287, 12, 39),
(288, 13, 39),
(289, 19, 40),
(290, 19, 41),
(291, 20, 40),
(292, 20, 41),
(293, 21, 40),
(294, 21, 41),
(295, 22, 40),
(296, 22, 41),
(297, 23, 40),
(298, 24, 40),
(299, 24, 41),
(300, 31, 42),
(301, 31, 43),
(302, 32, 42),
(303, 32, 43),
(304, 33, 42),
(305, 33, 43),
(306, 34, 42),
(307, 33, 43),
(308, 34, 42),
(309, 34, 43),
(310, 35, 42),
(311, 35, 43),
(312, 25, 44),
(313, 25, 45),
(314, 26, 44),
(315, 26, 45),
(316, 27, 44),
(317, 27, 45),
(318, 28, 44),
(319, 28, 45),
(320, 29, 44),
(321, 29, 45),
(322, 30, 44),
(323, 30, 45),
(324, 14, 46),
(325, 15, 46),
(326, 16, 46),
(327, 17, 46),
(328, 18, 46),
(329, 36, 46),
(330, 19, 47),
(331, 20, 47),
(332, 21, 47),
(333, 22, 47),
(334, 23, 47),
(335, 24, 47),
(336, 25, 48),
(337, 26, 48),
(338, 27, 48),
(339, 28, 48),
(340, 29, 48),
(341, 30, 48),
(342, 31, 49),
(343, 32, 49),
(344, 33, 49),
(345, 34, 49),
(346, 35, 49),
(347, 19, 50),
(348, 8, 50),
(349, 9, 50),
(350, 10, 50),
(351, 11, 50),
(352, 12, 50),
(353, 13, 50),
(354, 19, 51),
(355, 20, 51),
(356, 21, 51),
(357, 22, 51),
(358, 23, 51),
(359, 24, 51),
(360, 25, 52),
(361, 26, 52),
(362, 27, 52),
(363, 28, 52),
(364, 29, 52),
(365, 30, 52),
(366, 31, 53),
(367, 32, 53),
(368, 33, 53),
(369, 33, 53),
(370, 34, 53),
(371, 35, 53),
(372, 19, 54),
(373, 8, 54),
(374, 9, 54),
(375, 10, 54),
(376, 11, 54),
(377, 12, 54),
(378, 13, 54),
(379, 19, 55),
(380, 20, 55),
(381, 21, 55),
(382, 22, 55),
(383, 22, 55),
(384, 23, 55),
(385, 24, 55),
(386, 14, 56),
(387, 15, 56),
(388, 16, 56),
(389, 17, 56),
(390, 18, 56),
(391, 36, 56),
(392, 31, 57),
(393, 32, 57),
(394, 33, 57),
(395, 34, 57),
(396, 35, 57),
(397, 25, 58),
(398, 26, 58),
(399, 27, 58),
(400, 28, 58),
(401, 29, 58),
(402, 30, 58),
(403, 19, 59),
(404, 8, 59),
(405, 9, 59),
(406, 9, 59),
(407, 10, 59),
(408, 11, 59),
(409, 11, 59),
(410, 12, 59),
(411, 13, 59),
(412, 14, 60),
(413, 15, 60),
(414, 16, 60),
(415, 17, 60),
(416, 18, 60),
(417, 36, 60),
(418, 19, 61),
(419, 20, 61),
(420, 21, 61),
(421, 22, 61),
(422, 23, 61),
(423, 24, 61),
(424, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tell_number` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `email`, `password`, `tell_number`) VALUES
(1, 'mokbul', 'mokbul@gmail.com', '123456', '00000000'),
(2, 'saif', 'shelpyjahan@gmail.com', '123456', '112233'),
(3, 'Mohim', 'mohim@gmail.com', '123456', '123456'),
(4, 'md ferdous hassan', 'ferdues15-918@diu.edu.bd', '161-15-918', '01703797191'),
(5, 'sujon', 'shamimahmedsujon4126@gmail.com', '12345', '01516160125');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorf`
--
ALTER TABLE `doctorf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_info`
--
ALTER TABLE `doctor_info`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialist_type`
--
ALTER TABLE `specialist_type`
  ADD PRIMARY KEY (`specialist_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `symptom`
--
ALTER TABLE `symptom`
  ADD PRIMARY KEY (`symptom_id`);

--
-- Indexes for table `symptom_doctor`
--
ALTER TABLE `symptom_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `symptom_id` (`symptom_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorf`
--
ALTER TABLE `doctorf`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctor_info`
--
ALTER TABLE `doctor_info`
  MODIFY `doctor_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `specialist_type`
--
ALTER TABLE `specialist_type`
  MODIFY `specialist_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `symptom`
--
ALTER TABLE `symptom`
  MODIFY `symptom_id` int(245) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `symptom_doctor`
--
ALTER TABLE `symptom_doctor`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `specialist_type`
--
ALTER TABLE `specialist_type`
  ADD CONSTRAINT `specialist_type_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_info` (`doctor_id`);

--
-- Constraints for table `symptom_doctor`
--
ALTER TABLE `symptom_doctor`
  ADD CONSTRAINT `symptom_doctor_ibfk_1` FOREIGN KEY (`symptom_id`) REFERENCES `symptom` (`symptom_id`),
  ADD CONSTRAINT `symptom_doctor_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_info` (`doctor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
