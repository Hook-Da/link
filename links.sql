-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 12, 2018 at 12:02 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `links`
--

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `user_id`, `theme`, `description`, `link`, `theme_id`) VALUES
(1, NULL, 'php', 'JREAM PHP OOP tutorial', 'https://www.youtube.com/watch?v=R_HSmNiKkII&list=PL75B9D91CD69ED950&index=2', 1),
(2, NULL, 'php', 'PHP OOP INTERFACE', 'http://php.net/manual/ru/language.oop5.interfaces.php', 1),
(3, NULL, 'php', 'Сайт на котором нашел про инкапсуляцию,наследование и полиморфизм', 'http://yapro.ru/web-master/php/php-polimorfizm-i-inkapsulyaciya.html', 1),
(4, NULL, 'php', 'Alex Garett CHANNEL', 'https://www.youtube.com/user/phpacademy/featured', 1),
(5, NULL, 'php', 'функция filter_var', 'http://php.net/manual/ru/function.filter-var.php', 1),
(6, NULL, 'php', 'Короткие и понятные курсы по ИТ', 'https://www.youtube.com/channel/UC5gufuYHPSsJA-jul-iwyXA', 1),
(8, NULL, 'php', 'cURL', 'https://www.youtube.com/watch?v=hMpCsfvi_3c&list=PLliWPavYPve3iodMy_eD0sv_ku33ljFQ7&index=2', 1),
(9, NULL, 'JavaScript', 'JS tutorial', 'https://www.youtube.com/watch?v=PMsVM7rjupU&list=PL6n9fhu94yhUA99nOsJkKXBqokT3MBK0b', 4),
(10, NULL, 'php', 'PDO константы', 'http://php.net/manual/ru/pdo.constants.php', 1),
(12, NULL, 'Дрова M5A97', 'Страница с драйверами', 'https://www.asus.com/us/Motherboards/M5A97_LE_R20/HelpDesk_Download/', 5),
(13, NULL, 'php', 'POSTgreSql tutorials', 'https://www.youtube.com/watch?time_continue=154&v=CkjQSkWl0F0', 1),
(14, NULL, 'Python', 'Python Bucky ', 'https://www.youtube.com/watch?v=HBxCHonP6Ro&list=PL6gx4Cwl9DGAcbMi1sH6oAMk4JHw91mC_', 6),
(15, NULL, 'JavaScript', 'Site for testing java-script', 'http://jsbin.com/?html,output', 4),
(16, NULL, 'php', 'SQL tutorials', 'https://www.w3schools.com/sql/sql_and_or.asp', 1),
(17, NULL, 'php', 'Trim function', 'http://php.net/manual/en/function.trim.php', 1),
(18, NULL, 'WindoWs', 'WindoWs commands', 'https://www.youtube.com/watch?v=JbAyxKjUPs0&list=PL69BE3BF7D0BB69C4', 7),
(19, NULL, 'XmL tutorial', 'XmL', 'https://www.youtube.com/watch?v=p5anxjx8J-o&list=PLTnQNmqSbDI2TYciziQiGGxVsFbd__keg', 8),
(20, NULL, 'JavaScript', 'Ajax tutorials', 'https://www.youtube.com/watch?v=_rz1kgb5PMQ&list=PL7K_NRckWQJb_dzXTojmuVATo0NWIUhY7&index=2', 4),
(21, NULL, 'Regexp', 'Tool for studying Regular Expressions', 'http://ultrapico.com/Expresso.htm', 9),
(22, NULL, 'Regexp', 'Explanation of regular exp in mozilla developer', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions', 9),
(23, NULL, 'Regexp', 'library of Regular Expressions', 'http://www.regexlib.com/?AspxAutoDetectCookieSupport=1', 9),
(24, NULL, 'JavaScript', 'jQuery Alex 200 tutorials', 'https://www.youtube.com/watch?v=GNb8T5NBdQg&list=PL6B08BAA57B5C7810', 4),
(25, NULL, 'JavaScript', 'innerHTML', 'https://stackoverflow.com/questions/10694661/document-getelementbyid-value-return-undefined-in-chrome', 4),
(26, NULL, 'Node.js', 'Node.js tutorials', 'https://www.youtube.com/watch?v=g740J-RyoR4&list=PLsuEohlthXdkRSxJTkmTstWKHgBHsd3Dx&index=5', 10),
(27, NULL, 'Node.js', 'Bucky tutorials', 'https://www.youtube.com/watch?v=KsjrN-T3ZCs&index=4&list=PL6gx4Cwl9DGBMdkKFn3HasZnnAqVjzHn_', 10),
(28, NULL, 'Node.js', 'Net Ninja nodejs tutorials', 'https://www.youtube.com/watch?v=w-7RQ46RgxU&list=PL4cUxeGkcC9gcy9lrvMJ75z9maRw4byYp', 10),
(29, NULL, 'laravel', 'Making websites with October CMS', 'https://www.youtube.com/watch?v=3SmnExVW0Ag&list=PLUBR53Dw-Ef-X-_A1KLy41r2QArCBy4rM', 2),
(30, NULL, 'php', 'ob_start()', 'http://php.net/manual/ru/function.ob-start.php', 1),
(31, NULL, 'Neural Network', 'Нейронная сеть на JS', 'https://www.youtube.com/watch?v=XJ7HLz9VYz0&list=PLRqwX-V7Uu6aCibgK1PTWWu9by6XFdCfh', 11),
(32, NULL, 'The Coding Train', 'Channel', 'https://www.youtube.com/user/shiffman/playlists?shelf_id=0&sort=dd&view=1', 12),
(33, NULL, 'JavaScript', 'Advanced JS tutorails', 'https://www.youtube.com/watch?v=xizFJHKHdHw&list=PL7pEw9n3GkoW5bYOhVAtmJlak3ZK7SaDf', 4),
(34, NULL, 'php', 'Create your own MVC series', 'https://www.youtube.com/watch?v=Aw28-krO7ZM&list=PL7A20112CF84B2229', 1),
(35, NULL, 'The Coding Train', 'p5.js', 'https://www.youtube.com/watch?v=8j0UDiN7my4&list=PLRqwX-V7Uu6Zy51Q-x9tMWIv9cueOFTFA', 12),
(36, NULL, 'The Coding Train', 'Flow', 'https://www.youtube.com/watch?annotation_id=annotation_1553422125&feature=iv&index=1&list=PLRqwX-V7Uu6by61pbhdvyEpIeymlmnXzD&src_vid=RnS0YNuLfQQ&v=o8dffrZ86gs', 12),
(37, NULL, 'JavaScript', 'Learn JS', 'https://learn.javascript.ru/', 4),
(38, NULL, 'JavaScript', 'Web Developer JS (Russia)', 'https://www.youtube.com/user/AlexeySuprun/playlists', 4),
(39, NULL, 'JavaScript', 'FreeCodeCamp', 'https://www.freecodecamp.org/', 4),
(40, NULL, 'laravel', 'Laravel recipes', 'http://laravel-recipes.com/', 2),
(41, NULL, 'JavaScript', 'Arrays Mozilla MDN', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array', 4),
(42, NULL, 'chess', 'Итальянка часть 1 Яр Саныч', 'https://www.youtube.com/watch?v=-VILbPhOAaI&t=480s', 3),
(43, NULL, 'JavaScript', 'Canvas tutorials', 'https://www.youtube.com/watch?v=gOkjNUibcWo&list=PLQw6R3B2BPb29ktkWaiIzB3JBWguN7bER', 4),
(44, NULL, 'JavaScript', 'FireBug.ru', 'http://firebug.ru/', 4),
(45, NULL, 'Another', 'something', '', 13),
(47, NULL, 'chess', 'Будапештский гамбит', 'https://www.youtube.com/watch?v=-I3IRPAgdso&t=304s', 3),
(48, NULL, 'JavaScript', 'Java Script - ядро', 'http://dmitrysoshnikov.com/ecmascript/ru-javascript-the-core/', 4),
(49, NULL, 'php', 'Array_filter', 'http://php.net/manual/ru/function.array-filter.php', 1),
(50, NULL, 'CSS', 'Pseudo-classes', 'https://www.w3schools.com/css/css_pseudo_classes.asp', 14),
(51, NULL, 'JavaScript', 'chess engine in pure JS', 'https://www.youtube.com/watch?v=2eA0bD3wV3Q&list=PLZ1QII7yudbe4gz2gh9BCI6VDA-xafLog', 4),
(52, NULL, 'php', '1c bitrix', 'https://www.youtube.com/watch?v=4pawCupacWo&list=PLY4rE9dstrJyqAWUVlT7PLGjdmPEwhfg6', 1),
(53, NULL, 'chess', 'Французская защита Вариант Тарраша', 'https://www.chess.com/blog/HeavenlyTiger/izuchaem-frantsuzskuiu-zashchitu-variant-tarrasha', 3),
(54, NULL, 'chess', 'Французкая защита разменный вариант', 'http://chesswood.ru/debyuty/poluotkrytye/francuzskaya-zashhita.html', 3);

-- --------------------------------------------------------

--
-- Table structure for table `popular`
--

CREATE TABLE `popular` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(55) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `popular`
--

INSERT INTO `popular` (`id`, `link`, `name`, `img`) VALUES
(1, 'https://www.google.ru/', 'Google', 'google.ico'),
(3, 'https://www.chess.com/', 'Chess.com', 'betacssjs.chesscomfiles.com.ico'),
(4, 'https://www.youtube.com/', 'YouTube', 's.ytimg.com.ico'),
(5, 'https://1chess.org/#/me', 'Шахматы', '1chess.org.ico'),
(21, 'https://vk.com/', 'В контакте', 'vk.com.ico'),
(22, 'https://www.facebook.com/', 'Facebook', 'static.xx.fbcdn.net.ico'),
(23, 'https://www.google.ru/search?q=took+%D0%BF%D0%B5%D1%80%D0%B5%D0%B2%D0%BE%D0%B4&ie=utf-8&oe=utf-8&gws_rd=cr&ei=tXJvWcb3B4iv6AS__5eoDA', 'Vocab-GooGLe', 'google.ico'),
(24, 'https://putlocker7.live/watch/featured-movies', 'Putlocker', 'putlocker7.live.ico'),
(27, 'https://mail.ru/', 'Mail.ru', 'mail.ico'),
(28, 'https://duckduckgo.com/', 'Duck-Duck', 'duckduckgo.com.ico'),
(29, 'https://thepiratebay.org/', 'PirateBay', 'proxybay.bz.ico'),
(32, 'https://www.rapidtables.com/web/color/RGB_Color.html', 'RGB', 'www.rapidtables.com.ico'),
(33, 'https://p5js.org/reference/', 'p5.js reference', 'p5js.org.ico'),
(79, 'https://ufa.hh.ru/', 'HeadHunt', 'hh.png'),
(80, 'https://poufe.ru/', 'По Уфе', 'poufe.ru.ico'),
(84, 'https://getbootstrap.com/', 'BootStrap', 'bootstrap.png'),
(85, 'https://www.gismeteo.ru/weather-ufa-4588/', 'Gismeteo', 'gism.ico'),
(92, 'https://2gis.ru/ufa', 'ДубльГис', '2gis.ico'),
(96, 'https://www.youtube.com/user/Yarsanych983/videos', 'Яр саныч 2', 's.ytimg.com.ico'),
(97, 'https://www.codewars.com/', 'Code War', 'codewars.png'),
(100, 'http://php.net/manual/ru/function.preg-match.php', 'Preg_Match', 'php.net.ico'),
(101, 'https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Operators/Assignment_Operators', 'операторы присваивания', 'developer.mozilla.org.jpg'),
(102, 'https://proxybay.bz/', 'list of PB', 'proxybay.bz.ico'),
(103, 'https://www.indir.vip/guncell-eset-smart-nod32-mobil-premium-serial-key-2018.html', 'keys_NoD32', 'google.ico'),
(114, 'https://lichess.org/', 'liChess.', 'lichess.org.ico'),
(115, 'https://www.w3schools.com/jsref/prop_style_backgroundcolor.asp', 'w3school', 'www.w3schools.com.ico'),
(116, 'https://www.indir.vip/guncell-eset-smart-nod32-mobil-premium-serial-key-2018.html', 'keys_Nod32', 'www.indir.vip.ico'),
(118, 'https://jsfiddle.net/', 'JsFiddle', 'jsfiddle.net.ico'),
(121, 'http://php.net/manual/ru/function.substr.php', 'substr_fn', 'php.net.ico'),
(123, 'https://www.livejournal.com/', 'lifeJournal', 'www.livejournal.com.ico'),
(124, 'https://html.spec.whatwg.org/multipage/input.html#htmlinputelement', 'HTML_Standart', 'html.spec.whatwg.org.ico'),
(125, 'http://w3c.github.io/html-reference/elements.html', 'HTML_Elements', 'w3c.github.io.ico'),
(127, 'http://huzlek.bashqort.com/index.php?id=home', 'Башкирский', 'huzlek.bashqort.com.ico'),
(128, 'https://www1.putlockerfit.net/', 'New_Putlocker', 'www1.putlockerfit.net.ico'),
(129, 'https://thekickasstorrents.com/', 'torrent_kick_', 'thekickasstorrents.com.ico'),
(132, 'https://wikium.ru/', 'training', 'wikium.ru.ico'),
(133, 'https://www.youtube.com/watch?v=-3u3pJaf2V8', 'Turkish', 'www.youtube.com.ico'),
(138, 'https://unblocked.vet/', 'torrent_sites', 'unblocked.vet.ico'),
(139, 'https://learn.javascript.ru/document', 'Продолжить', 'learn.javascript.ru.ico'),
(140, 'http://myblaze.ru/urok-20-rabota-s-curl-v-php/', 'cURL', 'myblaze.ru.ico'),
(142, 'https://www.ibm.com/developerworks/ru/library/x-xpathphp/index.html', 'XpaTh_with_Php', 'www.ibm.com.ico'),
(143, 'https://www.youtube.com/watch?v=z1xtFbO9jgQ&list=PLRd0zhQj3CBmusDbBzFgg3H20VxLx2mkF', 'Yii_tutorials', 'www.youtube.com.ico'),
(144, 'https://www.youtube.com/watch?v=5LYrN_cAJoA&list=PL4cUxeGkcC9gQcYgjhBoeQH7wiAyZNrYa', 'Vue.js', 'www.youtube.com.ico'),
(145, 'https://codecourse.com/', 'Alex_Garett', 'codecourse.com.ico');

-- --------------------------------------------------------

--
-- Table structure for table `Themes`
--

CREATE TABLE `Themes` (
  `id` int(11) NOT NULL,
  `theme` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Themes`
--

INSERT INTO `Themes` (`id`, `theme`) VALUES
(1, 'php'),
(2, 'laravel'),
(3, 'chess'),
(4, 'JavaScript'),
(5, 'Дрова M5A97'),
(6, 'Python'),
(7, 'WindoWs'),
(8, 'XmL tutorial'),
(9, 'Regexp'),
(10, 'Node.js'),
(11, 'Neural Network'),
(12, 'The Coding Train'),
(13, 'Another'),
(14, 'CSS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular`
--
ALTER TABLE `popular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Themes`
--
ALTER TABLE `Themes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `popular`
--
ALTER TABLE `popular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `Themes`
--
ALTER TABLE `Themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
