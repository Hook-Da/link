-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2019 at 04:17 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(54, NULL, 'chess', 'Французкая защита разменный вариант', 'http://chesswood.ru/debyuty/poluotkrytye/francuzskaya-zashhita.html', 3),
(55, NULL, 'SQL', 'Sql Tutorials', 'https://www.w3schools.com/sql/sql_and_or.asp', 15),
(56, NULL, 'chess', 'Франц.защита вариант Нимцовича', 'https://www.youtube.com/watch?time_continue=3&v=iJZpfL_u49I', 3),
(57, NULL, 'Git', 'Git lessons', 'https://www.youtube.com/watch?v=K9fkejaywBM&list=PLmRNNqEA7JoM77hOJkPrLOfJQGizCLR3P&index=2', 16),
(58, NULL, 'ECMA', 'Reference type', 'https://tc39.github.io/ecma262/#sec-reference-specification-type', 17),
(59, NULL, 'Photoshop', '200 lessons', 'https://www.youtube.com/watch?v=givuYd_cKm0&list=PL6gx4Cwl9DGD25IGk9Xf7oC3wiT9gC75x', 18),
(60, NULL, 'My Project', 'How to clone all remote branches in Git?', 'https://stackoverflow.com/questions/67699/how-to-clone-all-remote-branches-in-git', 19),
(61, NULL, 'My Project', 'Header to get and post Request', 'http://masteringionic.com/blog/2016-12-18-parsing-xml-csv-and-tsv-files-with-ionic/', 19),
(62, NULL, 'My Project', 'Responsive css background images', 'https://stackoverflow.com/questions/12609110/responsive-css-background-images', 19),
(63, NULL, 'My Project', 'Creating a Music Player Interface in Ionic 2 & 3', 'https://www.joshmorony.com/creating-a-music-player-interface-in-ionic-2/', 19),
(64, NULL, 'My Project', 'How to design circle progress bar in ionic ', 'https://stackoverflow.com/questions/45735895/how-to-design-circle-progress-bar-in-ionic-3', 19),
(65, NULL, 'My Project', 'Beautifully crafted open source icons', 'https://ionicons.com/', 19),
(66, NULL, 'My Project', 'Open & Download PDF Files with Ionic', 'https://www.youtube.com/watch?v=kM4cCQn8Bz4&list=PLNFwX8PVq5q5SuSRwwEunXLuz6ZBzz6YG', 19),
(67, NULL, 'JoshMorony', 'Tabs and Sounds', 'https://www.joshmorony.com/sound-effects-using-html5-and-native-audio-in-ionic/', 20),
(68, NULL, 'JoshMorony', 'Creating a Music Player Interface in Ionic 2 & 3', 'https://www.joshmorony.com/creating-a-music-player-interface-in-ionic-2/', 20),
(69, NULL, 'php Manual', '$_SERVER', 'http://php.net/manual/en/reserved.variables.server.php', 21),
(70, NULL, 'w3School', 'JavaScript Window Location', 'https://www.w3schools.com/js/js_window_location.asp', 22),
(71, NULL, 'Ionic', 'Ionic Media', 'https://ionicframework.com/docs/native/media/', 24),
(72, NULL, 'Progress bar', 'Circle progressbar', 'https://www.youtube.com/watch?v=isMmrOyz8gM&t=767s', 25),
(73, NULL, 'JoshMorony', 'Provider adding globally', 'https://www.joshmorony.com/an-in-depth-explanation-of-providers-in-ionic-2/', 20),
(74, NULL, 'Ionic', 'Ionic side menu with Multiple Tabs', 'https://www.youtube.com/watch?v=IzUip9UEqV0', 24),
(75, NULL, 'Ionic', 'Refresher. Refresh on pull', 'https://ionicframework.com/docs/api/components/refresher/Refresher/', 24),
(76, NULL, 'SQL', 'SQL wildCard Characters', 'https://www.w3schools.com/sql/sql_wildcards.asp', 15),
(77, NULL, 'SQL', 'Sql In', 'https://www.w3schools.com/sql/sql_in.asp', 15),
(78, NULL, 'Git', 'Git remote', 'https://www.youtube.com/watch?v=Gg4bLk8cGNo', 16),
(80, NULL, 'TypeScript', 'InterFaces', 'https://www.typescriptlang.org/docs/handbook/interfaces.html', 27),
(81, NULL, 'Adam Khoury', 'Channel', 'https://www.youtube.com/user/flashbuilding', 28),
(82, NULL, 'php', 'Alex Garett second Channel', 'https://www.youtube.com/channel/UCZasAPol8tLLQExcLBudgpg/videos', 1),
(83, NULL, 'Ionic', 'Run Ionic Cordova on virtual device', 'https://forum.ionicframework.com/t/run-ionic-cordova-app-on-device-emulator/106377', 24),
(84, NULL, 'laravel', 'laravel + vue', 'https://www.youtube.com/watch?v=s347k3JfqUI&list=PLe30vg_FG4OSl8zlikYc_RLkfueqAMUb_&index=5', 2),
(85, NULL, 'Vue', 'Event modifiers', 'https://vuejs.org/v2/guide/', 29),
(86, NULL, 'Ethical hacking', '90 lessons', 'https://www.youtube.com/watch?v=tHd8k54kVs8&list=PLBf0hzazHTGOEuhPQSnq-Ej8jRyXxfYvl', 30),
(87, NULL, 'Ethical hacking', '96 lessons', 'https://www.youtube.com/watch?v=O90lSMmTjjo&list=PL5M9PV7jzdcVjz0WYZQaTHy1gqPmU44Jh', 30),
(88, NULL, 'CSS', 'Advanced CSS', 'https://www.youtube.com/watch?v=Awr0PcuDiNM&list=PLJFQaBvGIKsIvYocA2S19_9ypV8pK1aXI', 14),
(89, NULL, 'CSS', 'Css for beginers', 'https://www.youtube.com/watch?v=qKoajPPWpmo&list=PLr6-GrHUlVf8JIgLcu3sHigvQjTw_aC9C', 14),
(90, NULL, 'Ionic', 'Larse Bilde', 'https://www.youtube.com/channel/UCz25VbXwsbFsd3ynkNGok2w', 24),
(91, NULL, 'Assembly', 'Writing NES Games! With Assembly!!', 'https://www.youtube.com/watch?v=kXbMCKMJXXQ', 31),
(92, NULL, 'Espanyol', 'Спряжение глагола читаьт', 'http://27espanol.com/s/leer/', 32),
(93, NULL, 'CSS', 'Css positioning tutorial net ninja', 'https://www.youtube.com/watch?v=nE9lIRbIfI0&index=5&list=PL4cUxeGkcC9hudKGi5o5UiWuTAGbxiLTh', 14),
(94, NULL, 'JoshMorony', 'Custom Pipe', 'https://www.youtube.com/watch?v=Z1g1iroNHK0', 20),
(95, NULL, 'Ionic', 'Apk file ionic', 'https://ionicframework.com/docs/v1/guide/publishing.html', 24),
(96, NULL, 'JavaScript', 'program like pro', 'https://www.youtube.com/watch?v=Mus_vwhTCq0', 4),
(97, NULL, 'Promises JS', 'part 1', 'https://www.youtube.com/watch?v=QO4NXhWo_NM', 33),
(98, NULL, 'Promises JS', 'part 2', 'https://www.youtube.com/watch?v=AwyoVjVXnLk', 33),
(99, NULL, 'Promises JS', 'Series of promises', 'https://www.youtube.com/watch?v=QO4NXhWo_NM&list=PLRqwX-V7Uu6bKLPQvPRNNE65kBL62mVfx', 33),
(100, NULL, 'Dev Mozilla', 'Blob', 'https://developer.mozilla.org/en-US/docs/Web/API/Blob', 34),
(101, NULL, 'Dev Mozilla', 'Fetch', 'https://developer.mozilla.org/ru/docs/Web/API/Fetch_API/Using_Fetch', 34),
(102, NULL, 'Dev Mozilla', 'Body.blob()', 'https://developer.mozilla.org/en-US/docs/Web/API/Body/blob', 34),
(103, NULL, 'JavaScript', 'New features', 'https://www.youtube.com/watch?v=vExLi5bTt3k&list=PLWKjhJtqVAbljtmmeS0c-CEl2LdE-eR_F&index=5', 4),
(104, NULL, 'Ionic', 'Ionic build.glader fix', 'https://github.com/facebook/react-native/issues/19485', 24),
(105, NULL, 'chess', 'Chesswood', 'https://www.youtube.com/watch?v=UJdHXwj3sas&list=PLN3gWvpTr68xyqS3lSkBxTPeIkEEeFCB-', 3),
(106, NULL, 'laravel', 'File System', 'https://laravel.com/docs/5.2/filesystem', 2),
(107, NULL, 'CSS', 'Css framefork materialize', 'https://materializecss.com/', 14),
(108, NULL, 'php', 'oop php ', 'https://www.youtube.com/watch?v=PUAXNG8N5T8&list=PLe30vg_FG4OSEHH6bRF8FrA7wmoAMUZLv', 1),
(109, NULL, 'JavaScript', 'js game', 'https://www.youtube.com/channel/UCzQvgRgjjxhzEORvefubDPw/playlists', 4),
(110, NULL, 'php', 'Traits', 'http://php.net/manual/ru/language.oop5.traits.php', 1),
(111, NULL, 'php', 'XML stuff', 'http://php.net/manual/en/book.xmlwriter.php', 1),
(112, NULL, 'DataBases', 'MariaDB tutorials', 'https://www.youtube.com/watch?v=OxLH86Q69jo&list=PLWf6TEjiiuICzBqlOtk8miOhPAzIrm-mG', 35),
(113, NULL, 'DataBases', 'MongoDB', 'https://www.youtube.com/watch?v=9OPP_1eAENg&list=PL4cUxeGkcC9jpvoYriLI0bY8DOgWZfi6u', 35),
(114, NULL, 'JavaScript', 'Equality Table', 'https://dorey.github.io/JavaScript-Equality-Table/', 4),
(115, NULL, 'JavaScript', 'logical operators', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Expressions_and_Operators#Logical_operators', 4),
(116, NULL, 'php', 'Reflection', 'http://php.net/manual/en/book.reflection.php', 1),
(117, NULL, 'php', 'Возвращаемый тип', 'http://php.net/manual/ru/functions.returning-values.php', 1),
(118, NULL, 'CSS', 'Заголовок с линиями по бокам', 'http://dimox.name/verstka-zagolovka-s-gorizontalnoj-liniej-sleva-i-sprava-ot-teksta/', 14),
(119, NULL, 'C++', 'C++ OOP', 'https://www.youtube.com/watch?v=rZcTaRU7AAw&list=PLQOaTSbfxUtBm7DxblJZShqBQnBAVzlXX', 36),
(120, NULL, 'Рисование', 'Урок по рисование головы фронт', 'https://www.youtube.com/watch?v=2lLP_L2nFlI', 37);

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
(27, 'https://mail.ru/', 'Mail.ru', 'mail.ico'),
(28, 'https://duckduckgo.com/', 'Duck-Duck', 'duckduckgo.com.ico'),
(32, 'https://www.rapidtables.com/web/color/RGB_Color.html', 'RGB', 'www.rapidtables.com.ico'),
(33, 'https://p5js.org/reference/', 'p5.js reference', 'p5js.org.ico'),
(79, 'https://ufa.hh.ru/', 'HeadHunt', 'hh.png'),
(80, 'https://poufe.ru/', 'по Уфе', 'poufe.ru.ico'),
(84, 'https://getbootstrap.com/', 'BootStrap', 'bootstrap.png'),
(85, 'https://www.gismeteo.ru/weather-ufa-4588/', 'Gismeteo', 'gism.ico'),
(92, 'https://2gis.ru/ufa', 'ДубльГис', '2gis.ico'),
(96, 'https://www.youtube.com/user/Yarsanych983/videos', 'Яр саныч 2', 's.ytimg.com.ico'),
(97, 'https://www.codewars.com/', 'Code War', 'codewars.png'),
(100, 'http://php.net/manual/ru/function.preg-match.php', 'Preg_Match', 'php.net.ico'),
(101, 'https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Operators/Assignment_Operators', 'операторы присваивания', 'developer.mozilla.org.jpg'),
(102, 'https://proxybay.bz/', 'list of PB', 'proxybay.bz.ico'),
(114, 'https://lichess.org/', 'liChess.', 'lichess.org.png'),
(115, 'https://www.w3schools.com/jsref/prop_style_backgroundcolor.asp', 'w3school', 'www.w3schools.com.ico'),
(118, 'https://jsfiddle.net/', 'JsFiddle', 'jsfiddle.net.ico'),
(121, 'http://php.net/manual/ru/function.substr.php', 'substr_fn', 'php.net.ico'),
(128, 'https://www1.putlockerfit.net/', 'New_Putlocker', 'www1.putlockerfit.net.ico'),
(133, 'https://www.youtube.com/watch?v=-3u3pJaf2V8', 'Turkish', 'www.youtube.com.ico'),
(138, 'https://unblocked.vet/', 'torrent_sites', 'unblocked.vet.ico'),
(139, 'https://learn.javascript.ru/document', 'Продолжить', 'learn.javascript.ru.ico'),
(140, 'http://myblaze.ru/urok-20-rabota-s-curl-v-php/', 'cURL', 'myblaze.ru.ico'),
(142, 'https://www.ibm.com/developerworks/ru/library/x-xpathphp/index.html', 'XpaTh_with_Php', 'www.ibm.com.ico'),
(143, 'https://www.youtube.com/watch?v=z1xtFbO9jgQ&list=PLRd0zhQj3CBmusDbBzFgg3H20VxLx2mkF', 'Yii_tutorials', 'www.youtube.com.ico'),
(144, 'https://www.youtube.com/watch?v=5LYrN_cAJoA&list=PL4cUxeGkcC9gQcYgjhBoeQH7wiAyZNrYa', 'Vue.js', 'www.youtube.com.ico'),
(145, 'https://codecourse.com/', 'Alex_Garett', 'codecourse.com.ico'),
(146, 'https://evilinside.ru/parsing-s-pomoshhyu-domcrawler-v-laravel-5-6/', 'парсинг_сайта_с_помощью_Laravel', 'evilinside.ru.ico'),
(147, 'https://www.youtube.com/channel/UCSJbGtTlrDami-tDGPUV9-w', 'Academind', 'www.youtube.com.ico'),
(148, 'https://www.youtube.com/watch?v=XTSc2mPF4II', 'WireShark', 'www.youtube.com.ico'),
(150, 'https://1chess.org/#/id224090998', 'france', '1chess.org.ico'),
(151, 'https://vse10.ru/main/', 'Trauner-Rus', 'vse10.ru.ico'),
(152, 'https://www.ratatype.com/u850128/?new_registered#_=_', 'Trainer-Eng', 'www.ratatype.com.ico'),
(153, 'https://laravel.ru/docs/v5/eloquent-relationships', 'Отношения', 'laravel.ru.ico'),
(154, 'https://github.com/Hook-Da', 'ГитХаб', 'github.com.ico'),
(155, 'https://laravel.ru/docs/v5/eloquent', 'Eloquent', 'laravel.ru.ico'),
(156, 'https://laravel.ru/docs/v5/queries', 'Конструктор_запросов_', 'laravel.ru.ico'),
(157, 'https://laravel.ru/docs/v5/eloquent-collections#%D0%B4%D0%BE%D1%81%D1%82%D1%83%D0%BF%D0%BD%D1%8B%D0%B5', 'Collection._Available_methods._Eloquent', 'laravel.ru.ico'),
(158, 'http://php.net/manual/ru/language.oop5.traits.php', 'Trait_php', 'php.net.ico'),
(161, 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment', 'Destructuring_assignment', 'developer.mozilla.org.ico'),
(162, 'https://www.youtube.com/watch?v=0eWrpsCLMJQ&list=PLC3y8-rFHvwhBRAgFinJR8KHIrCdTkZcZ&index=1', 'Angular', 'www.youtube.com.ico'),
(163, 'https://www.youtube.com/watch?v=YPShu0H3RbM&list=PLqq-6Pq4lTTanfgsbnFzfWUhhAz3tIezU', 'TypeScript', 'www.youtube.com.ico'),
(164, 'http://php.net/manual/ru/language.oop5.overloading.php', 'Reload_php', 'php.net.ico'),
(165, 'https://code.visualstudio.com/', 'WindCodeEditor', 'code.visualstudio.com.ico'),
(167, 'https://habr.com/post/133363/', 'Angular_CLI', 'habr.com.ico'),
(168, 'https://proglib.io/p/git-github-gitflow/', 'read_up', 'proglib.io.ico'),
(171, 'https://danielkummer.github.io/git-flow-cheatsheet/index.ru_RU.html', 'Git-flow_tips', 'danielkummer.github.io.ico'),
(174, 'https://www.youtube.com/watch?v=TPtv3Sj87KE&list=PLvLBrJpVwC7piPgR6u165HAnr-2Z80etB', 'Ionic_tuts', 'www.youtube.com.ico'),
(176, 'https://www.youtube.com/watch?v=sXFmkdhOEVc&list=PLvLBrJpVwC7piPgR6u165HAnr-2Z80etB&index=4', 'Hacking', 'www.youtube.com.ico'),
(181, 'https://bitbucket.org/account/user/Hook_Banner/', 'BitBucket', 'bitbucket.org.png'),
(182, 'https://www.youtube.com/watch?v=ruieT3Nkg2M', 'Commiting_changes', 'www.youtube.com.ico'),
(183, 'https://www.youtube.com/watch?v=igJFPu6RrJ0&list=PLNFwX8PVq5q6CHLk0tLCiyh96nALzi3_x', 'Ionic_advanced_tuts', 'www.youtube.com.ico'),
(184, 'https://ionicframework.com/docs/api/components/grid/Grid/', 'Ionic_doc', 'ionicframework.com.png'),
(185, 'https://www.youtube.com/watch?v=ei7FsoXKPl0&list=PLuCVssMJ_UI0ERHV9C0UIAo7SJmRNOrrj', 'RxJS_Observable', 'www.youtube.com.ico'),
(186, 'https://www.youtube.com/watch?v=g-DzyBv2Ndg&list=PLtKjv92L0ihD_Hre-d12JihnQ_BanTD7c', 'Ionic_67_tuts', 'www.youtube.com.ico'),
(187, 'https://drive.google.com/drive/folders/18FiTdKnG0wAGBqQqn_e_TeqKtp31J6qr', 'Эскизы', 'drive.google.com.om/'),
(189, 'https://nodejs.org/dist/', 'Node_Versions', 'nodejs.org.png'),
(190, 'https://www.w3.org/TR/CSS2/visudet.html', 'Visual_formating', 'www.w3.org.ico'),
(191, 'https://www.w3schools.com/jsref/prop_audio_playbackrate.asp', 'Html_audio', 'www.w3schools.com.ico'),
(192, 'https://www.youtube.com/watch?v=r2UFy0FW8wc', 'Android_SDK_tools', 'www.youtube.com.ico'),
(193, 'https://gradle.org/install/', 'Gradle_install', 'gradle.org.ico'),
(194, 'https://www.youtube.com/watch?v=1rw9MfIleEg', 'Gulp_Crash_Course', 'www.youtube.com.ico'),
(195, 'https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects', 'developer_moz', 'developer.mozilla.org.jpg'),
(201, 'http://w3c.github.io/html-reference/elements.html', 'HTML_element', 'w3c.githubio.ico'),
(202, 'https://html.spec.whatwg.org/multipage/input.html#htmlinputelement', 'HTML_standart', 'html.spec.whatwg.org.svg'),
(206, 'http://huzlek.bashqort.com/index.php?id=home', 'Башкирский', 'Русско-башкирский онлайн словарь.png'),
(207, 'https://www.youtube.com/watch?v=F_kSJ3uz2-Q&list=PL3ZhWMazGi9IommUd5zQmjyNeF7s1sP7Y', 'Laravel_+_Vue', 'www.youtube.com.ico'),
(208, 'https://www.youtube.com/watch?v=eq--V9P4rmM&list=PLxIXIaLcdFwD_gbMXHUOYqQtXTIPrys8L', 'French', 'www.youtube.com.ico'),
(210, 'https://docs.google.com/document/d/1Fyk6FkSprhpiZh2P307JMpMDMJwsd_tqqGor3LRjrL0/edit', 'Тех._задание', 'Вход – Google Аккаунты.png'),
(211, 'https://thenounproject.com/search/?q=cloud-download', 'Icons', 'thenounproject.com.png'),
(212, 'https://www.youtube.com/watch?v=aircAruvnKk&t=391s', 'NN_II', 'www.youtube.com.ico'),
(213, 'https://www.youtube.com/watch?v=u-Idt0lIsw0&list=PLIcAMDxr6tprlJD1uUXo8-1R3RMqoEPjT', 'Lodash', 'www.youtube.com.ico'),
(214, 'https://www.youtube.com/watch?v=T9wOu11uU6U&list=PL55RiY5tL51pHpagYcrN9ubNLVXF8rGVi', 'RxJS', 'www.youtube.com.ico'),
(215, 'https://www.youtube.com/channel/UCdQ_ZkYaMe6qPoueUyPQgpQ', 'New_Photoshop_siries', 'www.youtube.com.ico'),
(216, 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys', 'Object_obj', 'developer.mozilla.org.jpg'),
(217, 'https://www.fullindir.co/eset-nod32-antivirus-guncel-lisans-anahtarlari/', 'Est_Nod_32_keys', 'www.fullindir.co.png'),
(218, 'http://image.intervention.io/', 'Laravel_img_libr', 'Intervention Image - Introduction.png'),
(219, 'https://www.youtube.com/watch?v=2Vf1D-rUMwE&list=PLl-K7zZEsYLmnJ_FpMOZgyg6XcIGBu2OX', 'Get_start_firebase', 'www.youtube.com.ico'),
(220, 'https://www.youtube.com/watch?v=J_ayfPetE2M&list=PLe30vg_FG4OSl8zlikYc_RLkfueqAMUb_', 'Laravel_5.5_Vuejs_Phonebook_App', 'www.youtube.com.ico'),
(221, 'https://www.youtube.com/watch?v=CowsopJhX3M&list=PLB4AdipoHpxaHDLIaMdtro1eXnQtl_UvE&index=2', 'Multi-Purpose_Laravel', 'www.youtube.com.ico'),
(222, 'https://www.youtube.com/watch?v=u6CwVxcyfD0&list=PLe30vg_FG4OQsCOAzymRY5GkQpFqc1U-D', 'Laravel_Real_Time_Chat', 'www.youtube.com.ico'),
(223, 'https://fontawesome.com/v4.7.0/icon/pencil', 'Font_awesome', 'fontawesome.com.png'),
(224, 'https://www.w3schools.com/tags/ref_canvas.asp', 'Canvas_funcs', 'www.w3schools.com.ico'),
(225, 'http://php.net/manual/en/book.xmlwriter.php', 'XML_Manipulation', 'php.net.ico'),
(226, 'https://yandex.ru/internet/', 'Yandex_Speed', 'yandex.ru.png'),
(227, 'https://www.youtube.com/watch?v=wM4L_yDGqpo&list=PLB4AdipoHpxaHDLIaMdtro1eXnQtl_UvE', 'Laravel_+_admin', 'www.youtube.com.ico'),
(228, 'https://vk.com/@proglib-podborka-statei-po-data-science', 'Data_analyse', 'vk.com.ico'),
(229, 'https://www.youtube.com/watch?v=fpD8_fJ2VUA&list=PL9XdPIVgBVVmYWGF3BFZwHu4Fz9fa6GJd', 'Yii2_Russian', 'www.youtube.com.ico');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme`) VALUES
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
(14, 'CSS'),
(15, 'SQL'),
(16, 'Git'),
(17, 'ECMA'),
(18, 'Photoshop'),
(19, 'My Project'),
(20, 'JoshMorony'),
(21, 'php Manual'),
(22, 'w3School'),
(23, 'Angular'),
(24, 'Ionic'),
(25, 'Progress bar'),
(27, 'TypeScript'),
(28, 'Adam Khoury'),
(29, 'Vue'),
(30, 'Ethical hacking'),
(31, 'Assembly'),
(32, 'Espanyol'),
(33, 'Promises JS'),
(34, 'Dev Mozilla'),
(35, 'DataBases'),
(36, 'C++'),
(37, 'Рисование');

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
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `popular`
--
ALTER TABLE `popular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
