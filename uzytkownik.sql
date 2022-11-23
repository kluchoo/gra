-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Lis 2022, 17:32
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `uzytkownik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gracz`
--

CREATE TABLE `gracz` (
  `ID` int(11) NOT NULL,
  `nick` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `lvl` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `zloto` int(11) NOT NULL,
  `dni_vip` int(11) NOT NULL,
  `drewno` int(11) NOT NULL,
  `drewnoPlus` int(11) NOT NULL,
  `zelazo` int(11) NOT NULL,
  `zelazoPlus` int(11) NOT NULL,
  `kamien` int(11) NOT NULL,
  `kamienPlus` int(11) NOT NULL,
  `wojownicy` int(11) NOT NULL,
  `obroncy` int(11) NOT NULL,
  `mur` int(11) NOT NULL,
  `koszt_ulepszenia` int(11) NOT NULL,
  `czasdozlota` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `szczescie` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `gracz`
--

INSERT INTO `gracz` (`ID`, `nick`, `lvl`, `exp`, `zloto`, `dni_vip`, `drewno`, `drewnoPlus`, `zelazo`, `zelazoPlus`, `kamien`, `kamienPlus`, `wojownicy`, `obroncy`, `mur`, `koszt_ulepszenia`, `czasdozlota`, `szczescie`) VALUES
(2, 'a', 1, 0, 500, 100, 900, 5, 13, 1, -100, 1, 0, 0, 0, 400, '', 1),
(3, 'b', 1, 0, 4650, 0, 699762, 1, 11, 2, 115, 3, 0, 0, 0, 400, '21:15-17-21-10-2022', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `haslo` varchar(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `login`
--

INSERT INTO `login` (`ID`, `login`, `haslo`, `email`) VALUES
(1, 'krakra', '123', 'dominikzucho@gmail.coms'),
(2, 'a', 'a', 'a@a.a'),
(3, 'b', 'b', 'dominikbzucho@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferty`
--

CREATE TABLE `oferty` (
  `ID` int(11) NOT NULL,
  `sprzedawca` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `towar` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `ilosc` int(11) NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `oferty`
--

INSERT INTO `oferty` (`ID`, `sprzedawca`, `towar`, `ilosc`, `cena`) VALUES
(10, 'a', 'drewno', 50, 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gracz`
--
ALTER TABLE `gracz`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indeksy dla tabeli `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `oferty`
--
ALTER TABLE `oferty`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `oferty`
--
ALTER TABLE `oferty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
