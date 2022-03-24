CREATE SCHEMA `cinema` ;

CREATE TABLE IF NOT EXISTS `bookingTable` (
  `bookingID` int(11) NOT NULL,
  `movieName` varchar(100) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;



INSERT INTO `bookingTable` (`bookingID`, `movieName`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`) VALUES
(19, 'Captain Marvel', 'main-hall', '3d', '13-3', '15-00', 'Andrew', 'John', '010152658930'),
(22, 'The Lego Movie', 'vip-hall', 'imax', '13-3', '18-00', 'George', 'Bush', '01589965');




CREATE TABLE IF NOT EXISTS `movieTable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) NOT NULL,
  `movieTitle` varchar(100) NOT NULL,
  `movieGenre` varchar(50) NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieActors` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


INSERT INTO `movieTable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`) VALUES
(1, 'img/poster1.jpg', 'Captain Marvel', ' Action, Adventure, Sci-Fi ', 220, '2018-10-18', 'Anna Boden, Ryan Fleck', 'Brie Larson, Samuel L. Jackson, Ben Mendelsohn'),
(2, 'img/poster2.jpg', 'Qarmat Bitamrmat  ', 'Comedy', 110, '2018-10-18', 'Assad Fouladkar', 'Ahmed Adam, Bayyumy Fouad, Salah Abdullah , Entsar, Dina Fouad '),
(3, 'img/poster3.jpg', 'The Lego Movie', 'Animation, Action, Adventure', 110, '2014-02-07', 'Phil Lord, Christopher Miller', 'Chris Pratt, Will Ferrell, Elizabeth Banks'),
(4, 'img/poster4.jpg', 'Nadi Elregal Elserri ', 'Comedy', 105, '2019-01-23', ' Ayman Uttar', 'Karim Abdul Aziz, Ghada Adel, Maged El Kedwany, Nesreen Tafesh, Bayyumy Fouad, Moataz El Tony '),
(5, 'img/poster5.jpg', 'VICE', 'Biography, Comedy, Drama', 132, '2018-12-25', 'Adam McKay', 'Christian Bale, Amy Adams, Steve Carell'),
(6, 'img/poster6.jpg', 'The Vanishing', 'Crime, Mystery, Thriller', 107, '2019-01-04', 'Kristoffer Nyholm', 'Gerard Butler, Peter Mullan, Connor Swindells');




ALTER TABLE `bookingTable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `bookingID_2` (`bookingID`),
  ADD KEY `bookingID_3` (`bookingID`),
  ADD KEY `bookingID_4` (`bookingID`);


ALTER TABLE `movieTable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);


ALTER TABLE `bookingTable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;

ALTER TABLE `movieTable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;



CREATE TABLE IF NOT EXISTS `recommendation` (
  `idrecommendation` int(11) NOT NULL,
  `movie` varchar(100) DEFAULT NULL,
  `director` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `rating` double(50) NOT NULL,
  `year` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;



INSERT INTO `recommendation` (`idrecommendation`, `movie`, `director`, `type`, `rating`, `year`) VALUES
(1, 'Parasite', 'Bong Joon Ho', 'comedy thriller', 2019);

CREATE TABLE IF NOT EXISTS `users` (
  `idUsers` int(11) NOT NULL,
  `nume_utilizator` varchar(100) DEFAULT NULL,
  `parola` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;


INSERT INTO `users` (`idUsers`, `nume_utilizator`, `parola`) VALUES
(1, 'user1', 'user1pass'),
(2, 'admin', 'admin');

CREATE TABLE IF NOT EXISTS `wishlist` (
  `idwishlist` int(11) NOT NULL,
  `Movie` varchar(100) DEFAULT NULL,
  `director` varchar(100) NOT NULL,
  `typem` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;


