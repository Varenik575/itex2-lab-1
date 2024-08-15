-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 15 2024 г., 15:37
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lb_pdo_films`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actor`
--

CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `actor`
--

INSERT INTO `actor` (`id`, `name`) VALUES
(39, ''),
(8, 'Bryce Dallas Howard'),
(10, 'Chris Evans'),
(12, 'Chris Hemsworth'),
(4, 'Chris Pratt'),
(27, 'Claudia Christian'),
(20, 'Cobie Smulders'),
(33, 'Corey Burton'),
(24, 'Cree Summer'),
(30, 'David Ogden Stiers'),
(17, 'Don Cheadle'),
(25, 'Don Novello'),
(18, 'Elizabeth Olsen'),
(48, 'Emma Thompson'),
(29, 'Florence Stanley'),
(28, 'Jacqueline Obradors'),
(23, 'James Garner'),
(21, 'James Spader'),
(46, 'Jemaine Clement'),
(14, 'Jeremy Renner'),
(32, 'Jim Varney'),
(31, 'John Mahoney'),
(42, 'Johnny Knoxville'),
(7, 'Jordana Brewster'),
(45, 'Josh Brolin'),
(51, 'Kumail Nanjiani'),
(41, 'Lara Flynn Boyle'),
(34, 'Leonard Nimoy'),
(53, 'Les Twins'),
(54, 'Liam Neeson'),
(38, 'Linda Fiorentino'),
(11, 'Mark Ruffalo'),
(22, 'Michael J. Fox'),
(47, 'Michael Stuhlbarg'),
(19, 'Paul Bettany'),
(6, 'Paul Walker'),
(26, 'Phil Morris'),
(52, 'Rafe Spall'),
(50, 'Rebecca Ferguson'),
(36, 'Rip Torn'),
(9, 'Robert Downey Jr.'),
(43, 'Rosario Dawson'),
(1, 'Sam Worthington'),
(16, 'Samuel L. Jackson'),
(13, 'Scarlett Johansson'),
(3, 'Sigourney Weaver'),
(49, 'Tessa Thompson'),
(15, 'Tom Hiddleston'),
(35, 'Tommy Lee Jones'),
(44, 'Tony Shalhoub'),
(5, 'Vin Diesel'),
(37, 'Vincent D\'Onofrio'),
(40, 'Will Smith'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Структура таблицы `film`
--

CREATE TABLE `film` (
  `ID_FILM` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `FID_Quality` varchar(10) NOT NULL,
  `director` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `film`
--

INSERT INTO `film` (`ID_FILM`, `name`, `date`, `country`, `FID_Quality`, `director`) VALUES
(1, 'Avatar', '2009-12-18', 'USA', 'FHD', 'James Cameron'),
(2, 'Guardians of the Galaxy', '2014-08-01', 'USA', 'FHD', 'James Gunn'),
(3, 'Fast & Furious', '2009-04-03', 'USA', 'FHD', 'Justin Lin'),
(4, 'Jurassic World', '2015-06-12', 'USA', 'FHD', 'Colin Trevorrow'),
(5, 'The Avengers', '2012-04-11', 'USA', 'FHD', 'Joss Whedon'),
(6, 'Avengers: Age of Ultron', '2015-05-01', 'USA', 'FHD', 'Joss Whedon'),
(7, 'Atlantis: the Lost Empire', '2001-06-03', 'USA', 'HD', 'Gary Trousdale, Kirk Wise'),
(8, 'Men in Black: International', '2019-06-11', 'USA', 'FHD', 'F. Gary Gray'),
(9, 'Men in Black', '1997-07-19', 'USA', 'HD', 'Barry Sonnenfeld'),
(10, 'Men in Black II', '2002-07-03', 'USA', 'FHD', 'Barry Sonnenfeld'),
(11, 'Men in Black 3', '2012-05-14', 'USA', 'FHD', 'Barry Sonnenfeld');

-- --------------------------------------------------------

--
-- Структура таблицы `film_actor`
--

CREATE TABLE `film_actor` (
  `FID_Film` int(11) NOT NULL,
  `FID_Actor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `film_actor`
--

INSERT INTO `film_actor` (`FID_Film`, `FID_Actor`) VALUES
(1, 3),
(1, 1),
(1, 2),
(3, 5),
(3, 6),
(3, 7),
(2, 4),
(2, 2),
(2, 5),
(4, 4),
(4, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 16),
(6, 17),
(6, 18),
(6, 19),
(6, 20),
(6, 21),
(7, 22),
(7, 23),
(7, 24),
(7, 25),
(7, 26),
(7, 27),
(7, 28),
(7, 29),
(7, 30),
(7, 31),
(7, 32),
(7, 33),
(7, 34),
(8, 12),
(9, 35),
(9, 36),
(9, 37),
(9, 38),
(9, 40),
(10, 35),
(10, 40),
(10, 41),
(10, 42),
(10, 43),
(10, 44),
(11, 35),
(11, 40),
(11, 45),
(11, 46),
(11, 47),
(11, 48),
(8, 12),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 12),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54);

-- --------------------------------------------------------

--
-- Структура таблицы `film_genre`
--

CREATE TABLE `film_genre` (
  `FID_Film` int(11) NOT NULL,
  `FID_Genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `film_genre`
--

INSERT INTO `film_genre` (`FID_Film`, `FID_Genre`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 5),
(4, 1),
(4, 2),
(4, 6),
(5, 1),
(5, 6),
(6, 1),
(6, 6),
(7, 2),
(7, 7),
(7, 8),
(7, 3),
(8, 1),
(8, 6),
(8, 4),
(9, 1),
(9, 6),
(9, 4),
(10, 1),
(10, 6),
(10, 4),
(11, 1),
(11, 6),
(11, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(7, 'Animated'),
(4, 'Comedy'),
(3, 'Fantasy'),
(8, 'For Kids'),
(6, 'Sci-Fi'),
(5, 'Thriller');

-- --------------------------------------------------------

--
-- Структура таблицы `quality`
--

CREATE TABLE `quality` (
  `ID_QUALITY` varchar(10) NOT NULL,
  `resolution` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `quality`
--

INSERT INTO `quality` (`ID_QUALITY`, `resolution`) VALUES
('FHD', '1920 x 1080'),
('HD', '1280 x 720'),
('SD', '720 x 480');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`ID_FILM`),
  ADD KEY `FILM_fk0` (`FID_Quality`);

--
-- Индексы таблицы `film_actor`
--
ALTER TABLE `film_actor`
  ADD KEY `FILM_ACTOR_fk0` (`FID_Film`),
  ADD KEY `FILM_ACTOR_fk1` (`FID_Actor`);

--
-- Индексы таблицы `film_genre`
--
ALTER TABLE `film_genre`
  ADD KEY `FILM_GENRE_fk0` (`FID_Film`),
  ADD KEY `FILM_GENRE_fk1` (`FID_Genre`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`name`);

--
-- Индексы таблицы `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`ID_QUALITY`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actor`
--
ALTER TABLE `actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `film`
--
ALTER TABLE `film`
  MODIFY `ID_FILM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FILM_fk0` FOREIGN KEY (`FID_Quality`) REFERENCES `quality` (`ID_QUALITY`);

--
-- Ограничения внешнего ключа таблицы `film_actor`
--
ALTER TABLE `film_actor`
  ADD CONSTRAINT `FILM_ACTOR_fk0` FOREIGN KEY (`FID_Film`) REFERENCES `film` (`ID_FILM`),
  ADD CONSTRAINT `FILM_ACTOR_fk1` FOREIGN KEY (`FID_Actor`) REFERENCES `actor` (`id`);

--
-- Ограничения внешнего ключа таблицы `film_genre`
--
ALTER TABLE `film_genre`
  ADD CONSTRAINT `FILM_GENRE_fk0` FOREIGN KEY (`FID_Film`) REFERENCES `film` (`ID_FILM`),
  ADD CONSTRAINT `FILM_GENRE_fk1` FOREIGN KEY (`FID_Genre`) REFERENCES `genre` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
