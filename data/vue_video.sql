-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2018 at 02:49 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_video`
--

-- --------------------------------------------------------

--
-- Table structure for table `moreinfo`
--

CREATE TABLE `moreinfo` (
  `id` int(10) NOT NULL,
  `more_thumb` varchar(100) NOT NULL,
  `synopsis` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `moreinfo`
--

INSERT INTO `moreinfo` (`id`, `more_thumb`, `synopsis`) VALUES
(1, 'TA2.jpg', 'When Thor\'s evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Sam L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. Joining Fury\'s \"dream team\" are Iron Man (Robert Downey Jr.), Captain America (Chris Evans), The Hulk (Mark Ruffalo), Thor (Chris Hemsworth), Black Widow (Scarlett Johansson) and Hawkeye (Jeremy Renner).'),
(2, 'TFA-poster.jpg', 'Thirty years after the defeat of the Galactic Empire, the galaxy faces a new threat from the evil Kylo Ren (Adam Driver) and the First Order. When a defector named Finn (John Boyega) crash-lands on a desert planet, he meets Rey (Daisy Ridley), a tough scavenger whose droid contains a top-secret map. Together, the young duo joins forces with Han Solo (Harrison Ford) to make sure the Resistance receives the intelligence concerning the whereabouts of Luke Skywalker (Mark Hamill), the last of the Jedi Knights.'),
(3, 'ST2.jpg', 'Stranger Things is set in the fictional rural town of Hawkins, Indiana, during the early 1980s. The nearby Hawkins National Laboratory ostensibly performs scientific research for the United States Department of Energy, but secretly does experiments into the paranormal and supernatural, including those that involve human test subjects. Inadvertently, they have created a portal to an alternate dimension called \"the Upside Down\". The influence of the Upside Down starts to affect the unknowing residents of Hawkins in calamitous ways.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_moreinfo`
--

CREATE TABLE `tbl_video_moreinfo` (
  `id` int(10) NOT NULL,
  `video_id` int(10) NOT NULL,
  `moreinfo_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_video_moreinfo`
--

INSERT INTO `tbl_video_moreinfo` (`id`, `video_id`, `moreinfo_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_genre` int(11) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `vid_name`, `vid_path`, `vid_desc`, `vid_genre`, `vid_thumb`) VALUES
(1, 'Marvel\'s Avengers', 'avengers.mp4', 'This action movie was created in 2012 and is based on the Marvel Comics superhero team.', 1, 'avengers.jpg'),
(2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'This movie was filmed in 2015 and directed by J.J. Abrams.', 2, 'forceawakens.jpg'),
(3, 'Stranger Things', 'strangerthings.mp4', 'Stranger Things is a TV series that began on July 15, 2016, and there are currently 17 episodes.', 3, 'strangerthings.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
