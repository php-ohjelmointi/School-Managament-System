-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 02:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school managament system`
--

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `Room_ID` char(30) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `DateOfAdd` datetime DEFAULT NULL,
  `DateOfUpdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classrooms_cources`
--

CREATE TABLE `classrooms_cources` (
  `Row_ID` char(30) NOT NULL,
  `Room_ID` char(30) NOT NULL,
  `Cource_ID` char(30) NOT NULL,
  `DateOfAdd` date NOT NULL,
  `DateOfUpdate` date NOT NULL,
  `AddByWho` char(30) NOT NULL,
  `UpdateByWho` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countrylanguage`
--

CREATE TABLE `countrylanguage` (
  `CountryCode` char(30) NOT NULL,
  `Language` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countrys`
--

CREATE TABLE `countrys` (
  `CountryCode` char(30) NOT NULL,
  `Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cources`
--

CREATE TABLE `cources` (
  `Cource_ID` char(30) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` int(11) NOT NULL,
  `NumberOfStudent` int(11) NOT NULL,
  `Descripton` varchar(300) NOT NULL,
  `DateOfAdd` date NOT NULL,
  `DateOfUpdate` date NOT NULL,
  `Registration_StartDate` date NOT NULL,
  `Registration_EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cource_subjects`
--

CREATE TABLE `cource_subjects` (
  `Cource_Subjects_Row_ID` char(30) NOT NULL,
  `Subject_ID` char(30) NOT NULL,
  `Cource_ID` char(30) NOT NULL,
  `DateOfAdd` datetime DEFAULT NULL,
  `DateOfUpdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courseattendanse`
--

CREATE TABLE `courseattendanse` (
  `Row_ID` int(30) NOT NULL,
  `Cource_ID` char(30) NOT NULL,
  `Student_ID` char(30) NOT NULL,
  `DateoOFRegistration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gradelines`
--

CREATE TABLE `gradelines` (
  `Row_ID` int(30) NOT NULL,
  `Grade_Code` char(30) NOT NULL,
  `Cource_ID` char(30) NOT NULL,
  `Student_ID` char(30) NOT NULL,
  `Staff_ID` char(30) NOT NULL,
  `DateOfMarkAdded` date NOT NULL,
  `DateOfMarkUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `Grade_Code` char(30) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leavespourpose`
--

CREATE TABLE `leavespourpose` (
  `LeavesPourppose_ID` char(30) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Descripton` varchar(300) NOT NULL,
  `DateOfAdd` date NOT NULL,
  `DateOfUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logintransaction`
--

CREATE TABLE `logintransaction` (
  `Row_ID` int(30) NOT NULL,
  `User_ID` char(30) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postalcodes`
--

CREATE TABLE `postalcodes` (
  `PostNumber` int(10) NOT NULL,
  `District` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffcources`
--

CREATE TABLE `staffcources` (
  `Row_ID` int(10) NOT NULL,
  `Staff_ID` char(30) NOT NULL,
  `Cource_ID` char(30) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffleaves`
--

CREATE TABLE `staffleaves` (
  `Row_ID` int(10) NOT NULL,
  `Staff_ID` char(30) NOT NULL,
  `VD_Credits` int(30) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `NumbrOFleaveDays` int(30) NOT NULL,
  `DateOfAdd` date NOT NULL,
  `DateOfUpdate` date NOT NULL,
  `LeavesPourppose_ID` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `Staff_ID` char(30) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `PlaceOfBirth` char(30) NOT NULL,
  `Sex` enum('Male','Female') NOT NULL,
  `Telephone` varchar(30) NOT NULL,
  `MobilePhone` varchar(30) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `PostNumber` int(10) NOT NULL,
  `DateOfHiring` date NOT NULL,
  `DateOfResign` date NOT NULL,
  `YearsOfServing` int(10) NOT NULL,
  `Specialty` varchar(50) NOT NULL,
  `Img` varchar(300) NOT NULL,
  `Title_ID` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffsalary`
--

CREATE TABLE `staffsalary` (
  `Staff_ID` char(30) NOT NULL,
  `salary` int(30) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `DateOfAdd` date NOT NULL,
  `DateOfUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stafftitle`
--

CREATE TABLE `stafftitle` (
  `Title_ID` char(30) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `DateOfAdd` date NOT NULL,
  `DateOfUpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stafftypes`
--

CREATE TABLE `stafftypes` (
  `StaffType_ID` char(30) NOT NULL,
  `Staff_ID` varchar(30) NOT NULL,
  `Name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studentleaves`
--

CREATE TABLE `studentleaves` (
  `Row_ID` char(30) NOT NULL,
  `Student_ID` char(30) NOT NULL,
  `From_Date` date NOT NULL,
  `To_Date` date NOT NULL,
  `NumbrOFleaveDays` int(10) NOT NULL,
  `DateOfAdd` date NOT NULL,
  `DateOfUpdate` date NOT NULL,
  `LeavesPourppose_ID` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` char(30) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstNameFather` varchar(50) NOT NULL,
  `FirstNameMother` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `PlaceOfBirth` char(30) NOT NULL,
  `Sex` enum('Male','Female') NOT NULL,
  `Telephone` varchar(30) NOT NULL,
  `MobilePhone` varchar(30) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `PostNumber` int(10) NOT NULL,
  `LastNameFather` varchar(50) NOT NULL,
  `LastNameMother` varchar(50) NOT NULL,
  `FatherMobilePhone` varchar(30) NOT NULL,
  `MotherMobilePhone` varchar(30) NOT NULL,
  `FatherProfessional` varchar(50) NOT NULL,
  `MotherProfessional` varchar(50) NOT NULL,
  `FatherPlaceOfWork` varchar(30) NOT NULL,
  `MotherPlaceOfWork` varchar(30) NOT NULL,
  `DareOFCreate` date NOT NULL,
  `DareOFUpdate` date NOT NULL,
  `Sibling` int(10) NOT NULL,
  `Img` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `Subject_ID` char(30) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `NumberOfCourceInc` int(11) DEFAULT NULL,
  `DateOfAdd` datetime DEFAULT NULL,
  `DateOfUpdate` datetime DEFAULT NULL,
  `Descripton` varchar(300) DEFAULT NULL,
  `IsLangauge` tinyint(4) DEFAULT NULL,
  `Language` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usernames`
--

CREATE TABLE `usernames` (
  `User_ID` char(30) NOT NULL,
  `Student_ID` char(30) NOT NULL,
  `Staff_ID` char(30) NOT NULL,
  `Username` varchar(150) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`Room_ID`),
  ADD KEY `Room_ID` (`Room_ID`);

--
-- Indexes for table `classrooms_cources`
--
ALTER TABLE `classrooms_cources`
  ADD PRIMARY KEY (`Row_ID`);

--
-- Indexes for table `countrylanguage`
--
ALTER TABLE `countrylanguage`
  ADD PRIMARY KEY (`CountryCode`,`Language`),
  ADD KEY `CountryCode` (`CountryCode`),
  ADD KEY `Language` (`Language`);

--
-- Indexes for table `countrys`
--
ALTER TABLE `countrys`
  ADD PRIMARY KEY (`CountryCode`),
  ADD KEY `CountryCode` (`CountryCode`);

--
-- Indexes for table `cources`
--
ALTER TABLE `cources`
  ADD PRIMARY KEY (`Cource_ID`);

--
-- Indexes for table `cource_subjects`
--
ALTER TABLE `cource_subjects`
  ADD PRIMARY KEY (`Cource_Subjects_Row_ID`),
  ADD KEY `Cource_Subjects_Row_ID` (`Cource_Subjects_Row_ID`),
  ADD KEY `Subject_ID` (`Subject_ID`),
  ADD KEY `Cource_ID` (`Cource_ID`);

--
-- Indexes for table `courseattendanse`
--
ALTER TABLE `courseattendanse`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Course_CourseAttendanse` (`Cource_ID`),
  ADD KEY `Student_CourseAttendanse` (`Student_ID`);

--
-- Indexes for table `gradelines`
--
ALTER TABLE `gradelines`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Fk_Grade_Code_GradeLine` (`Grade_Code`),
  ADD KEY `FK_Cource_ID_GradeLine` (`Cource_ID`),
  ADD KEY `Fk_Student_GradeLine` (`Student_ID`),
  ADD KEY `Fk_Staff_GradeLine` (`Staff_ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`Grade_Code`);

--
-- Indexes for table `leavespourpose`
--
ALTER TABLE `leavespourpose`
  ADD PRIMARY KEY (`LeavesPourppose_ID`);

--
-- Indexes for table `logintransaction`
--
ALTER TABLE `logintransaction`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `User_ID` (`Row_ID`),
  ADD KEY `FK_User_ID` (`User_ID`);

--
-- Indexes for table `postalcodes`
--
ALTER TABLE `postalcodes`
  ADD PRIMARY KEY (`PostNumber`);

--
-- Indexes for table `staffcources`
--
ALTER TABLE `staffcources`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Staff_StaffCources` (`Staff_ID`),
  ADD KEY `Course_StaffCources` (`Cource_ID`);

--
-- Indexes for table `staffleaves`
--
ALTER TABLE `staffleaves`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Fk_Staff_ID_4` (`Staff_ID`),
  ADD KEY `Fk_LeavesPourppose_ID_2` (`LeavesPourppose_ID`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD KEY `Fk_Title_ID_1` (`Title_ID`),
  ADD KEY `Fk_PostNumber_1` (`PostNumber`);

--
-- Indexes for table `staffsalary`
--
ALTER TABLE `staffsalary`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `stafftitle`
--
ALTER TABLE `stafftitle`
  ADD PRIMARY KEY (`Title_ID`);

--
-- Indexes for table `stafftypes`
--
ALTER TABLE `stafftypes`
  ADD PRIMARY KEY (`StaffType_ID`),
  ADD KEY `Fk_Staff_ID_2` (`Staff_ID`);

--
-- Indexes for table `studentleaves`
--
ALTER TABLE `studentleaves`
  ADD PRIMARY KEY (`Row_ID`),
  ADD KEY `Student_ID` (`Student_ID`) USING BTREE,
  ADD KEY `LeavesPourppose_ID` (`LeavesPourppose_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `Fk_PostNumber_2` (`PostNumber`),
  ADD KEY `Studdent_ID` (`Student_ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`Subject_ID`),
  ADD KEY `Subject_ID` (`Subject_ID`),
  ADD KEY `Language` (`Language`);

--
-- Indexes for table `usernames`
--
ALTER TABLE `usernames`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courseattendanse`
--
ALTER TABLE `courseattendanse`
  MODIFY `Row_ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gradelines`
--
ALTER TABLE `gradelines`
  MODIFY `Row_ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logintransaction`
--
ALTER TABLE `logintransaction`
  MODIFY `Row_ID` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffcources`
--
ALTER TABLE `staffcources`
  MODIFY `Row_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffleaves`
--
ALTER TABLE `staffleaves`
  MODIFY `Row_ID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
