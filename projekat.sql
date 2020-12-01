-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2019 at 11:03 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekat`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `HotelID` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `drzava` varchar(255) NOT NULL,
  `grad` varchar(255) NOT NULL,
  `adresa` varchar(255) NOT NULL,
  `ocena` float NOT NULL,
  `slika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`HotelID`, `ime`, `drzava`, `grad`, `adresa`, `ocena`, `slika`) VALUES
(1, 'Luxury Resident', 'Francuska', 'Lil', 'Miloja Zakica 93', 8.8, 'images/hoteli/slika1.jpg'),
(2, 'Continental', 'Spanija', 'Madrid', 'Bulevar Oslobodjenja 32', 7.5, 'images/hoteli/slika2.jpg'),
(3, 'Palace', 'Crna Gora', 'Becici', 'Milosa Pocerca 32', 9.5, 'images/hoteli/slika3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `klijent`
--

CREATE TABLE `klijent` (
  `KlijentID` int(11) NOT NULL,
  `korisnicko` varchar(255) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `prezime` varchar(255) NOT NULL,
  `sifra` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `drzava` varchar(255) NOT NULL,
  `uloga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klijent`
--

INSERT INTO `klijent` (`KlijentID`, `korisnicko`, `ime`, `prezime`, `sifra`, `mail`, `drzava`, `uloga`) VALUES
(1, 'Draga', 'Dragutin', 'Dragutinovic', 'drago', 'dragutin@gmail.com', 'Srbija', 'klijent'),
(2, 'Rema', 'Marko', 'Jakobson', 'mare123', 'mare1996@yahoo.com', 'Srbija', 'admin'),
(3, 'Djura', 'Nikola', 'Djurovic', 'djura', 'djura@gmail.com', 'Srbija', 'menadzer'),
(5, 'comi', 'Miodrag', 'Nenadovic', 'mica123', 'comi@gmail.com', 'Srbija', 'klijent');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `rezervacijaID` int(11) NOT NULL,
  `soba` varchar(255) NOT NULL,
  `brojOsoba` varchar(255) NOT NULL,
  `datumOd` varchar(255) NOT NULL,
  `datumDo` varchar(255) NOT NULL,
  `KlijentID_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`rezervacijaID`, `soba`, `brojOsoba`, `datumOd`, `datumDo`, `KlijentID_fk`) VALUES
(2, 'Escort room', '3', '11.12.2018', '11.12.2019.', 5),
(3, 'Relax room', '2', '12.11.2018.', '12.12.2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sobe`
--

CREATE TABLE `sobe` (
  `SobeID` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `tip` varchar(255) NOT NULL,
  `cenaNoc` varchar(255) NOT NULL,
  `slika` varchar(255) NOT NULL,
  `hotel_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sobe`
--

INSERT INTO `sobe` (`SobeID`, `ime`, `tip`, `cenaNoc`, `slika`, `hotel_fk`) VALUES
(111, 'Relax room', '1/2', '70', 'css/images/sobe/slika1.jpg', 1),
(222, 'Escort room', '1/4', '85', 'css/images/sobe/slika2.jpg', 1),
(333, 'Scisor Room', '1/5', '100', 'css/images/sobe/slika3.jpg', 1),
(444, 'Child room', '1/4', '65', 'css/images/sobe/slika4.jpg', 2),
(555, 'Twins room', '1/3', '115', 'css/images/sobe/slika5.jpg', 2),
(666, 'Morthy room', '1/2', '120', 'css/images/sobe/slika6.jpg', 2),
(777, 'Soba sa pogledom', '1/5', '70', 'css/images/sobe/slika7.jpg', 3),
(888, 'Soba proleca', '1/3', '85', 'css/images/sobe/slika8.jpg', 3),
(999, 'Soba leta', '1/4', '100', 'css/images/sobe/slika9.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`HotelID`);

--
-- Indexes for table `klijent`
--
ALTER TABLE `klijent`
  ADD PRIMARY KEY (`KlijentID`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`rezervacijaID`),
  ADD KEY `KlijentID_fk` (`KlijentID_fk`);

--
-- Indexes for table `sobe`
--
ALTER TABLE `sobe`
  ADD PRIMARY KEY (`SobeID`),
  ADD KEY `hotel_fk` (`hotel_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `HotelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `klijent`
--
ALTER TABLE `klijent`
  MODIFY `KlijentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `rezervacijaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sobe`
--
ALTER TABLE `sobe`
  MODIFY `SobeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD CONSTRAINT `rezervacija_ibfk_1` FOREIGN KEY (`KlijentID_fk`) REFERENCES `klijent` (`KlijentID`) ON UPDATE CASCADE;

--
-- Constraints for table `sobe`
--
ALTER TABLE `sobe`
  ADD CONSTRAINT `sobe_ibfk_1` FOREIGN KEY (`hotel_fk`) REFERENCES `hotel` (`HotelID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
