-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 16. 11:50
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `minikifir`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felvetelizok`
--

CREATE TABLE `felvetelizok` (
  `OM_azonosito` varchar(11) COLLATE utf8_hungarian_ci NOT NULL,
  `Nev` varchar(45) COLLATE utf8_hungarian_ci NOT NULL,
  `Ert_cim` varchar(120) COLLATE utf8_hungarian_ci NOT NULL,
  `Szul_datum` date NOT NULL,
  `Email` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `Matek_pont` int(11) DEFAULT NULL,
  `Magyar_pont` int(11) DEFAULT NULL,
  `Telefon` int(11) NOT NULL,
  `Iskola` varchar(120) COLLATE utf8_hungarian_ci NOT NULL,
  `Konnyites` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felvetelizok`
--
ALTER TABLE `felvetelizok`
  ADD PRIMARY KEY (`OM_azonosito`),
  ADD KEY `index` (`Nev`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
