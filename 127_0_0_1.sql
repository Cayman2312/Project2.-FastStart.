-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 23 2020 г., 11:43
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
-- База данных: `03.12.2019_21`
--
DROP DATABASE IF EXISTS `03.12.2019_21`;
CREATE DATABASE IF NOT EXISTS `03.12.2019_21` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `03.12.2019_21`;

-- --------------------------------------------------------

--
-- Структура таблицы `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `active`, `priority`) VALUES
(5, 'Что может путешествовать по миру, оставаясь в одном и том же углу?', 'Почтовая марка на конверте', 1, 5),
(6, 'Вы находитесь в самолете, перед вами лошадь, сзади вас - автомобиль. Где вы находитесь?', 'На карусели', 1, 10),
(7, 'Когда беззубый чувствует боль от зубов? ', 'Когда его укусила собака', 1, 50),
(8, 'Чем заканчивается ночь и день?', 'Мягким знаком', 1, 60),
(9, 'Как сорвать ветку, не спугнув птицу, которая на ней сидит?', 'Подождать пока птица улетит', 1, 35),
(10, 'В каком году люди едят больше обычного?', 'В високосном', 1, 25),
(11, 'Под каким деревом сидит заяц, когда идет дождь? ', 'Под мокрым', 1, 70);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `text`, `url`, `active`, `priority`) VALUES
(1, 'Главная', '/', 1, 40),
(2, 'О нас', '/about.php', 1, 30),
(3, 'Контакты', '#footer', 1, 20),
(4, 'Задать вопрос', '#', 1, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `user_connect` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `fio`, `email`, `phone`, `message`, `user_connect`, `country`, `gender`) VALUES
(1, 'Петров Василий Альбертович', 'PetrovVA@mail.ru', '8 499 999 99 99', 'Мой первый текст в таблице', 'email', 'южная америка', 'm'),
(2, 'Иванов Иван Иванович', 'IvanovII@bk.ru', '8-499-555-56-56', 'Мой второй текст', 'phone', 'россия', 'm'),
(3, 'Петров Василий Сергеевич', 'PetrovVS', '+79265685623', 'Мой третий текст', 'email', 'австралия', 'm'),
(4, 'Студицкий Михаил Викторович', 'SMV@mail.ru', '+1234567891', 'привет из php', 'phone', 'россия', 'm'),
(7, 'Михаил Студицкий', 'cayman2312@gmail.com', '89260563017', 'dtdg', 'phone', 'африка', 'm'),
(11, 'Светлана Назарова', 'lanka@mail.ru', '112', 'ПРивет', 'phone', 'европа', 'f'),
(12, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '89260563017', 'cv vcb', 'phone', 'северная америка', 'm'),
(13, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '89260563017', 'mjh', 'phone', 'россия', 'm'),
(14, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '89260563017', 'f', 'phone', 'россия', 'm'),
(15, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '89260563017', 'f', 'phone', 'россия', 'm'),
(16, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '89260563017', 'sd', 'phone', 'россия', 'm'),
(17, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '89260563017', 't', 'phone', 'россия', 'm'),
(18, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', 'd', 'juh', '', 'россия', ''),
(19, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '', '', 'email', '', ''),
(20, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '', '', 'email', 'россия', 'm'),
(21, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '89260563017', 'df', 'phone', 'россия', 'm'),
(22, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '89260563017', '', 'phone', 'россия', 'm');

-- --------------------------------------------------------

--
-- Структура таблицы `trips`
--

CREATE TABLE IF NOT EXISTS `trips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `trips`
--

INSERT INTO `trips` (`id`, `img_url`, `title`, `description`, `active`) VALUES
(1, 'images/icons/moscow.png', 'ПУТЕШЕСТВИЯ ПО РОССИИ', 'Самые интересные уголки России Самые необычные маршруты', 'y'),
(2, 'images/icons/big-ben.png', 'ПУТЕШЕСТВИЯ ПО ЕВРОПЕ', 'Разные страны, разные культуры, исторические места и все самое интересное в современной Европе!', 'y'),
(3, 'images/icons/pyramids.png', 'ПУТЕШЕСТВИЯ ПО АФРИКЕ', 'Дикая природа, крокодилы, обезьяны, сафари на джипах, гостиницы на деревьях и самые опасные приключения ждут тебя!', 'y'),
(4, 'images/icons/north-america.png', 'ПУТЕШЕСТВИЯ ПО СЕВЕРНОЙ АМЕРИКЕ', 'Конечно, мы проедем через всю Америку и побываем как в главных туристических местах, так и в уголках, где почти не ступала нога человека!', 'y'),
(5, 'images/icons/south-america.png', 'ПУТЕШЕСТВИЯ ПО ЮЖНОЙ АМЕРИКЕ', 'Южная Америка – место, где хочет побывать каждый. Богатые районы и заброшенные фавелы, опасности и приключения, темпераментные люди и многое другое на страницах наших путешествий', 'y'),
(6, 'images/icons/kangaroo.png', 'ПУТЕШЕСТВИЯ ПО АВСТРАЛИИ', 'Мы побываем на отдельном континенте, Почему-то думая об Австралии, сразу представляешь кенгуру, хотя это совершенно не символ страны', 'y');
--
-- База данных: `03122019_21_shop`
--
DROP DATABASE IF EXISTS `03122019_21_shop`;
CREATE DATABASE IF NOT EXISTS `03122019_21_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `03122019_21_shop`;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `img_url`, `name`, `description`, `price`) VALUES
(1, '/images/catalog/1.jpg', 'Куртка', 'Ой какая красивая куртка', 4500),
(2, '/images/catalog/9.jpg', 'Кеды', 'Хорошие кеды', 999);
--
-- База данных: `fructcode`
--
DROP DATABASE IF EXISTS `fructcode`;
CREATE DATABASE IF NOT EXISTS `fructcode` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fructcode`;

-- --------------------------------------------------------

--
-- Структура таблицы `music`
--

CREATE TABLE IF NOT EXISTS `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `music`
--

INSERT INTO `music` (`id`, `name`, `author`) VALUES
(1, 'from yesturday', '30 seconds to mars'),
(2, 'bring me to life', 'evanescence'),
(4, 'poison', 'Bullet for my valentive'),
(5, 'Temper temper', 'Bullet for my valentive'),
(6, '10 years today', 'Bullet for my valentive'),
(7, 'dream', 'imagine dragons'),
(8, 'dream', 'imagine dragons'),
(9, 'dream', 'imagine dragons'),
(10, 'in the end', 'linking park'),
(11, 'in the end', 'linking park'),
(12, 'in the end', 'linking park'),
(13, 'in the end', 'linking park'),
(14, 'in the end', 'linking park'),
(15, 'in the end', 'linking park'),
(16, 'poison', 'Bullet for my valentive'),
(17, 'poison', 'Bullet for my valentive');
--
-- База данных: `phpmyadmin`
--
DROP DATABASE IF EXISTS `phpmyadmin`;
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE IF NOT EXISTS `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE IF NOT EXISTS `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE IF NOT EXISTS `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE IF NOT EXISTS `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE IF NOT EXISTS `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE IF NOT EXISTS `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE IF NOT EXISTS `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Дамп данных таблицы `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"project2\",\"table\":\"mailback\"},{\"db\":\"project2\",\"table\":\"messages\"},{\"db\":\"project2\",\"table\":\"mailBack\"},{\"db\":\"03122019_21_shop\",\"table\":\"products\"},{\"db\":\"03.12.2019_21\",\"table\":\"questions\"},{\"db\":\"03.12.2019_21\",\"table\":\"trips\"},{\"db\":\"03.12.2019_21\",\"table\":\"faq\"},{\"db\":\"03.12.2019_21\",\"table\":\"menu\"},{\"db\":\"fructcode\",\"table\":\"music\"},{\"db\":\"project1\",\"table\":\"questions\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-03-23 10:43:26', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ru\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE IF NOT EXISTS `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE IF NOT EXISTS `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';
--
-- База данных: `project1`
--
DROP DATABASE IF EXISTS `project1`;
CREATE DATABASE IF NOT EXISTS `project1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `project1`;

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fio` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `fio`, `email`, `phone`, `message`) VALUES
(1, 'Михаил Студицкий', 'cayman2312@gmail.com', '89260563017', 'jjjj'),
(4, 'Вася Пупкин', 'Vasya@rambler.ru', 'no phone', 'Привет!'),
(5, 'Иванов Иван Иванович', 'IvanovII@yandex.ru', '+7(916)-111-12-13', 'Прошу со мной связаться!'),
(6, 'Петров Петр Петрович', 'PPP@gmail.com', 'no phone', 'Прошу написать'),
(7, 'Петров Петр Петрович', 'PPP@gmail.com', 'no phone', 'Прошу написать'),
(8, 'Михаил Петров', 'MP@mail.ru', 'no phone', 'Очень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщение'),
(9, 'Михаил Петров', 'MP@mail.ru', 'no phone', 'Очень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщениеОчень длинное сообщение'),
(10, 'Михаил Студицкий', 'cayman2312@gmail.com', '89260563017', 'Привет');
--
-- База данных: `project2`
--
DROP DATABASE IF EXISTS `project2`;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mailback`
--

INSERT INTO `mailback` (`id`, `name`, `email`, `time`) VALUES
(1, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '2020-03-23 10:23:42'),
(2, 'Назарова Светлана', 'lanka45@ya.ru', '2020-03-23 10:24:24'),
(3, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', '2020-03-23 10:26:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `fio`, `email`, `message`, `time`) VALUES
(1, 'fgfg', 'fgfg', 'ffgfg', '0000-00-00 00:00:00'),
(2, 'fgfg', 'fgfgfggfgw', 'ereqwweq', '2020-03-23 12:37:10'),
(3, 'fgfg', 'fgfgfggfgw', 'ereqwweq', '2020-03-23 12:39:16'),
(4, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', 'fsfs', '2020-03-23 12:43:34'),
(5, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', 'Мое сообщение\r\n', '2020-03-23 12:44:38'),
(22, 'Студицкий Михаил Викторович', 'cayman2312@gmail.com', 'rrrr', '2020-03-23 13:40:56');
--
-- База данных: `test`
--
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
