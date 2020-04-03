-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 03 2020 г., 11:52
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project2`
--
CREATE DATABASE IF NOT EXISTS `project2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `project2`;

-- --------------------------------------------------------

--
-- Структура таблицы `mailback`
--

CREATE TABLE IF NOT EXISTS `mailback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mailback`
--

INSERT INTO `mailback` (`id`, `name`, `email`, `time`) VALUES
(1, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '2020-03-23 10:23:42'),
(2, 'Назарова Светлана', 'lanka45@ya.ru', '2020-03-23 10:24:24'),
(3, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '2020-03-23 10:26:54'),
(23, '\"Студицкий Михаил Викторович\"', '\"cayman2312@gmail.com\"', '2020-04-03 12:41:48');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `fio`, `email`, `message`, `time`) VALUES
(1, 'fgfg', 'fgfg', 'ffgfg', '0000-00-00 00:00:00'),
(2, 'fgfg', 'fgfgfggfgw', 'ereqwweq', '2020-03-23 12:37:10'),
(3, 'fgfg', 'fgfgfggfgw', 'ereqwweq', '2020-03-23 12:39:16'),
(4, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', 'fsfs', '2020-03-23 12:43:34'),
(5, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', 'Мое сообщение\r\n', '2020-03-23 12:44:38'),
(22, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', 'rrrr', '2020-03-23 13:40:56'),
(23, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', 'gbbv', '2020-04-03 12:42:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
