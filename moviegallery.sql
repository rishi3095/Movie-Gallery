-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2017 at 11:41 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviegallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `value` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `type`, `value`) VALUES
(1, 'genre', 'action'),
(2, 'genre', 'adventure'),
(3, 'genre', 'crime'),
(4, 'genre', 'drama'),
(5, 'genre', 'sci-fi'),
(6, 'language', 'english'),
(7, 'language', 'hindi');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(60) NOT NULL,
  `length` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `image`, `length`, `date`) VALUES
(1, 'Gladiator', 'When a Roman General is betrayed, and his family murdered by an emperor\'s corrupt son, he comes to Rome as a gladiator to seek revenge.', 'images/gladiator.jpg', 155, '2000-05-05'),
(2, 'Bhoot', 'When a married couple moves into a flat that is haunted by a spirit, a series of inexplicable experiences drive the wife to near madness. Now, the husband must protect his wife to save their marriage.', 'images/bhoot.jpg', 113, '2003-05-30'),
(3, 'Bodyguard', 'The daughter of a wealthy nobleman secretly falls in love with her bodyguard.', 'images/bodyguard.jpg', 130, '2011-08-31'),
(4, 'Inception', 'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', 'images/inception.jpg', 148, '2010-07-16'),
(5, 'Jaani Dushman', 'A newly married bride disappears after her marriage.', 'images/jaanidushman.jpg', 154, '1981-11-20'),
(6, 'Judwaa', 'Twin brothers who are separated soon after birth, meet in adulthood and join forces to defeat their common enemy, a notorious criminal.', 'images/judwa.jpg', 138, '1997-02-07'),
(7, 'Khiladiyon Ka Khiladi ', 'Khiladiyon Ka Khiladi is about the deadly game of survival in a ruthless world of crime & sleaze, Akshay (Akshay Kumar) who is an army officer on his way to the USA to attend his brother, Ajay\'s (Inder Kumar) wedding. On the flight meets Priya & Is is love at first sight for both of them but tragedy awaits Akshay in America. His brother is missing and is wanted by the American Police. Akshay\'s search for his brother leads him to the dangers Maya (Rekha) who is above even the American law. An untouchable. This starts a game of life and death. The player involved will have only one chance.', 'images/khiladi.jpg', 162, '1996-06-14'),
(8, 'Main Hoon Na', 'An army major goes undercover as a college student. His mission is both professional and personal: to protect his general\'s daughter from a radical militant, and to find his estranged half-brother.', 'images/mainhuna.jpg', 179, '2004-04-30'),
(9, 'Nagin', 'While hunting in the jungle, one day, Vijay save the life of a young man from the sudden attack of a wild hawk. There and then Vijay realizes that he have just save the life of a miraculous snake who have the powers to take the form of a human and who have been dating his beloved; also a miraculous female snake. Vijay browse this news to his five friends who immediately shoot the male snake to death. Enraged at the brutal killing of her beloved; the female snake begins to take revenge on the six friends, killing them one by one by taking the form of humans. Now the only one who can save the six friends is a sage but it certainly looks like the miraculous snake might as well do away with all her enemies before the sage lay hands on her.', 'images/nagin.jpg', 180, '1976-01-19'),
(10, 'Race 2', 'Ranvir treads through the world of the Indian mafia in Turkey as he looks to avenge the death of his lover and partner in crime.', 'images/race2.jpg', 150, '2013-01-25'),
(11, '3 Idiots', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them "idiots".', 'images/3idiots.jpg', 170, '2009-12-25'),
(12, '12 Angry Men', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'images/12angrymen.jpg', 96, '1957-04-12'),
(13, 'Alag: He Is Different.... He Is Alone...', 'An odd orphan boy is forced to use his secret super powers when his new classmates bully him. A scientist abducts him to use the boy\'s powers for his own evil gains.', 'images/alag.jpg', 123, '2006-06-16'),
(14, 'Anand', 'The story of a terminally ill man who wishes to live life to the full before the inevitable occurs, as told by his best friend.', 'images/anand.jpg', 122, '1971-03-12'),
(15, 'Avatar', 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'images/avatar.jpg', 162, '2009-12-18'),
(16, 'Back to the Future', 'Marty McFly, a seventeen-year-old high school student, is accidentally sent thirty years into the past in a time-travelling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 'images/backtothefuture.jpg', 116, '1985-07-03'),
(17, ' Bahubali 2: The Conclusion', 'When Shiva, the son of Bahubali, learns about his heritage, he begins to look for answers. His story is juxtaposed with past events that unfolded in the Mahishmati Kingdom.', 'images/bahubali2.jpg', 167, '2017-04-28'),
(18, 'Bend It Like Beckham', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'images/beckham.jpg', 112, '2003-08-01'),
(19, 'The Dark Knight', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'images/dark-knight.jpg', 162, '2008-07-18'),
(20, 'Face/Off', 'In order to foil an extortion plot, an FBI agent undergoes a facial transplant surgery and assumes the identity and physical appearance of a terrorist, but the plan turns from bad to worse when the same terrorist impersonates the FBI agent.', 'images/faceoff.jpg', 138, '1997-06-27'),
(21, 'Fight Club', 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more.', 'images/fightclub.jpg', 139, '1999-10-15'),
(22, ' The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'images/godfather.jpg', 175, '1972-03-24'),
(23, 'The Godfather: Part II', 'The early life and career of Vito Corleone in 1920s New York is portrayed while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'images/godfather2.jpg', 202, '1974-12-20'),
(24, 'Interstellar', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'images/interstellar.jpg', 169, '2014-11-07'),
(25, 'Lagaan: Once Upon a Time in India', 'The people of a small village in Victorian India stake their future on a game of cricket against their ruthless British rulers.', 'images/lagaan.jpg', 224, '2002-05-08'),
(26, 'Life of Pi', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.', 'images/lifeofpi.jpg', 127, '2012-11-21'),
(27, ' The Lord of the Rings: The Fellowship of the Ring ', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle Earth from the Dark Lord Sauron.', 'images/lordoftherings.jpg', 178, '2001-12-19'),
(28, ' Newton', 'A government clerk on election duty in the conflict ridden jungle of Central India tries his best to conduct free and fair voting despite the apathy of security forces and the looming fear of guerrilla attacks by communist rebels.', 'images/newton.jpg', 106, '2017-09-22'),
(29, 'Prince', 'A diamond thief loses his memory and is unable to locate a antique coin that he had stolen earlier.', 'images/prince.jpg', 138, '2010-04-09'),
(30, 'Prisoners', 'When Keller Dover\'s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.', 'images/prisoners.jpg', 153, '2013-09-20'),
(31, 'Pulp Fiction', 'The lives of two mob hit men, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'images/pulpfiction.jpg', 164, '1994-10-14'),
(32, 'Queen', 'A Delhi girl from a traditional family sets out on a solo honeymoon after her marriage gets cancelled.', 'images/queen.jpg', 146, '2014-03-07'),
(33, 'Ra.One', 'A video game developer\'s world spirals out of control when his shape-shifting indestructible virtual creation becomes all too real.', 'images/raone.jpg', 156, '2011-10-26'),
(34, 'The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'images/shawshank.jpg', 142, '1994-10-14'),
(35, 'Simran', 'A socially criticized girl who is financially cornered, becomes an outlaw to dodge the situation.', 'images/simran.jpg', 124, '2017-09-15'),
(36, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'images/thematrix.jpg', 136, '1999-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

CREATE TABLE `relationship` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`id`, `category_id`, `movie_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 5),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 36),
(12, 2, 15),
(13, 2, 16),
(14, 2, 17),
(15, 2, 26),
(16, 2, 27),
(17, 2, 32),
(18, 3, 12),
(19, 3, 19),
(20, 3, 20),
(21, 3, 22),
(22, 3, 23),
(23, 3, 30),
(24, 3, 31),
(25, 3, 34),
(26, 3, 35),
(27, 4, 11),
(28, 4, 12),
(29, 4, 14),
(30, 4, 18),
(31, 4, 21),
(32, 4, 1),
(33, 4, 24),
(34, 4, 26),
(35, 4, 28),
(36, 4, 31),
(37, 4, 35),
(38, 5, 13),
(39, 5, 4),
(40, 5, 24),
(41, 5, 29),
(42, 5, 33),
(43, 5, 36),
(44, 6, 1),
(45, 6, 4),
(46, 6, 12),
(47, 6, 15),
(48, 6, 16),
(49, 6, 18),
(50, 6, 19),
(51, 6, 20),
(52, 6, 21),
(53, 6, 22),
(54, 6, 23),
(55, 6, 24),
(56, 6, 26),
(57, 6, 27),
(58, 6, 30),
(59, 6, 31),
(60, 6, 34),
(61, 6, 36),
(63, 7, 2),
(64, 7, 3),
(65, 7, 5),
(66, 7, 6),
(67, 7, 7),
(68, 7, 8),
(69, 7, 9),
(70, 7, 10),
(71, 7, 11),
(72, 7, 13),
(73, 7, 14),
(74, 7, 17),
(75, 7, 25),
(76, 7, 28),
(77, 7, 29),
(78, 7, 32),
(79, 7, 33),
(80, 7, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationship`
--
ALTER TABLE `relationship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `relationship`
--
ALTER TABLE `relationship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `relationship`
--
ALTER TABLE `relationship`
  ADD CONSTRAINT `relationship_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `relationship_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
