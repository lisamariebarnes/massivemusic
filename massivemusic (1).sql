-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 03:35 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `massivemusic`
--
CREATE DATABASE IF NOT EXISTS `massivemusic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `massivemusic`;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Gary Moore', 6, 11, 'assets/images/artwork/garymoore.jpg'),
(2, 'Stevie Ray Vaughan', 13, 11, 'assets/images/artwork/stevieray.jpg'),
(3, 'Chris Stapleton', 30, 11, 'assets/images/artwork/twhiskey.jpg'),
(4, 'BB King', 7, 11, 'assets/images/artwork/bbking.jpg'),
(5, 'Etta James', 31, 11, 'assets/images/artwork/etta.jpg'),
(6, ' Joe Bonamassa', 32, 11, 'assets/images/artwork/joebon.jpg'),
(7, 'Muddy Waters-After The Rain', 33, 11, 'assets/images/artwork/muddy.jpg'),
(8, 'Etta James-Try a Little Tenderness', 31, 11, 'assets/images/artwork/etta2.jpg'),
(9, 'Guitar Backing Tracks', 1, 19, 'assets\\images\\artwork\\guitarjam-aminorcmajor.jpg'),
(10, 'Best Rock Songs Of All Time _ Greatest Classic Rock Songs The 60\'s 70\'s 80\'s 90\'s.<h6><p>Dream On<br>Sultans of Swing <br>Hotel California<br>Thunderstruck<br>Back in Black <br>Paint it Black <br>Smoke on the Water<br>Imagine and more\r\n</h6>', 1, 1, 'assets/images/artwork/classicrock.jpg'),
(11, 'Led Zeppelin Greatest Hits', 10, 1, 'assets\\images\\artwork/ledzep.jpg'),
(12, 'Metallica Playlist', 35, 13, 'assets/images/artwork/metallica.jpg'),
(13, 'Nora Jones Greatest Hits', 36, 1, 'assets/images/artwork/norajones.jpg'),
(14, 'Greatest Hits  Full Album - Best Of Scorpions 2018.mp3', 37, 13, 'assets\\images\\artwork\\scorpions.jpg'),
(15, 'Soft Jazz Sexy  Instrumental Relaxation Saxophone Music', 38, 8, 'assets\\images\\artwork/sax.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Jamtracks'),
(2, 'Funny'),
(3, 'Royalty Free Music'),
(4, 'Funky Groove'),
(5, 'Free Groove'),
(6, 'Gary Moore'),
(7, 'BB King'),
(8, 'ZZ Top'),
(9, 'KISS'),
(10, 'Led Zeppelin'),
(11, 'Guns N Roses'),
(12, 'Motown'),
(13, 'Stevie Ray Vaughan'),
(14, 'Pink Floyd'),
(15, 'Stray Cats'),
(16, 'Jeff Beck'),
(17, 'Punk Rock'),
(18, 'Reggae'),
(19, 'Ben Webster'),
(20, 'Journey'),
(21, 'Van Halen'),
(22, 'AC/DC'),
(23, 'Alice Cooper'),
(24, 'Judas Priest'),
(25, 'Moody Blues'),
(28, 'Blues Mix'),
(29, 'Rock Mix'),
(30, 'Chris Stapleton'),
(31, 'Etta James'),
(32, ' Joe Bonamassa'),
(33, 'Muddy Waters'),
(35, 'metallica'),
(36, 'Nora Jones'),
(37, 'Scorpions'),
(38, 'Tenor Sax');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Blues'),
(12, 'Jazz Piano'),
(13, 'Heavy Metal'),
(14, 'Thrash'),
(15, 'Drum & Bass'),
(16, 'Drum & Guitar'),
(17, 'Drums'),
(18, 'Bass'),
(19, 'Guitar Backing Tracks');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(3, 'NEW', 'lisamarie', '2018-07-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

DROP TABLE IF EXISTS `playlistsongs`;
CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 2, 3, 0),
(2, 13, 3, 1),
(3, 37, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Little Wing', 13, 2, 11, '6:48', 'assets/music/littlewing.mp4', 7, 62),
(2, 'Still Got The Blues', 6, 1, 11, '2:35', 'assets/music/stillblues.mp4', 15, 52),
(3, 'Tennessee Whiskey', 30, 3, 11, '2:33', 'assets/music/tnwhiskey.mp4', 3, 68),
(5, 'King of the Blues', 32, 6, 11, '1:29', 'assets/music/kingblues.mp3', 55, 62),
(7, 'Guitar Background Track in A minor C Major', 1, 9, 19, '4:44', 'assets/music/gjam.mp3', 233, 64),
(11, 'Stormy Monday', 32, 6, 11, '2:59', 'assets/music/stormy.mp3', 18, 68),
(12, 'I\'d Rather Go Blind', 31, 5, 11, '2:03', 'assets/music/etta.mp4', 39, 69),
(13, 'The Thrill is Gone', 7, 4, 11, '4:21', 'assets/music/B. B. King - The Thrill Is Gone (Live at Montreux 1993).mp3', 5, 51),
(18, 'Best Rock Songs of All Time', 29, 10, 1, '8:43', 'assets/music/Best Rock Songs Of All Time _ Greatest Classic Rock Songs The 60\'s 70\'s 80\'s 90\'s.mp3', 1, 48),
(24, 'Guitar Backing Track in G', 1, 9, 19, '4:44', 'assets/music/Backing Track   Blues in G.mp3', 53, 60),
(27, 'Sexy Blues Compilation', 5, 3, 11, '5:07', 'assets/music/sexyblues.mp4', 22, 61),
(28, 'Try a Little Tenderness ', 31, 8, 11, '2:03', 'assets/music/tend.mp3', 33, 42),
(29, 'After The Rain-Full Album', 33, 7, 11, '4:16', 'assets/music/muddywaters.mp3 ', 13, 53),
(30, 'King of the Blues', 32, 6, 11, '2:26', 'assets/music/kingblues.mp3 ', 12, 66),
(31, 'At Last', 31, 5, 11, '4:54', 'assets/music/atlast.mp3 ', 255, 60),
(32, 'Guitar Background Track in A minor ', 1, 9, 19, '4:44', 'assets/music/Blues in A minor Backing Track.mp3', 2, 59),
(33, 'Led Zeppelin\'s Greatest Hits', 10, 11, 1, '8:43', 'assets/music/Led Zeppelin Greatest Hits -  The Best of Led Zeppelin.mp3', 99, 15),
(34, 'Norah Jones Greatest Hits', 36, 13, 1, '2:03', 'assets/music/Norah Jones Greatest Hits - Norah Jones Full Album 2018.mp3', 54, 14),
(35, 'Metallica', 35, 12, 13, '8:43', 'assets/music/Metallica Playlist.mp3', 114, 54),
(36, 'Greatest Hits  Full Album - Best Of Scorpions ', 37, 14, 13, '8:43', 'assets/music/Scorpions Greatest Hits  Full Album - Best Of Scorpions 2018.mp3', 115, 52),
(37, 'Soft Jazz Sexy-Tenor Sax', 38, 15, 8, '2:59', 'assets/music/Soft Jazz Sexy  Instrumental Relaxation Saxophone Music 2013 Collection.mp3', 18, 74);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'reece-kenney', 'Reece', 'Kenney', 'Reece@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'donkey-kong', 'Donkey', 'Kong', 'Dk@yahoo.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-06-28 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(3, 'lisamarie', 'Lisa', 'Barnes', 'Lisabarnes09@gmail.com', 'bf6bbd7abf91d572b730658646160b57', '2018-07-04 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
