-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2021 at 07:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(30, 'sports', 2),
(31, 'entertainment', 4),
(32, 'study', 1),
(35, 'sciences', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(68, 'Funny', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt. Nisi est sit amet facilisis magna etiam tempor. Quis hendrerit dolor magna eget. Tincidunt arcu non sodales neque sodales ut etiam. Consequat semper viverra nam libero justo laoreet sit. Nam libero justo laoreet sit. Nunc id cursus metus aliquam eleifend. Sodales ut eu sem integer vitae justo eget magna. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Nunc sed id semper risus in hendrerit gravida rutrum. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Nibh ipsum consequat nisl vel pretium lectus quam id.\r\n\r\nPretium fusce id velit ut. Aliquam purus sit amet luctus. Justo donec enim diam vulputate. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Cursus mattis molestie a iaculis at erat. Integer quis auctor elit sed vulputate mi sit amet mauris. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Luctus accumsan tortor posuere ac ut consequat semper viverra nam. Dui sapien eget mi proin sed.', '31', '02 Jan, 2021', 42, 'josue-soto-NGz25724yf0-unsplash.jpg'),
(69, 'Movie', 'HOLLYWOOD movie content is so good ', '31', '03 Jan, 2021', 43, 'IMG_20190810_230555_594.jpg'),
(63, 'Technology & tech', '                                                                                                                                                                                                                                                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt. Nisi est sit amet facilisis magna etiam tempor. Quis hendrerit dolor magna eget. Tincidunt arcu non sodales neque sodales ut etiam. Consequat semper viverra nam libero justo laoreet sit. Nam libero justo laoreet sit. Nunc id cursus metus aliquam eleifend. Sodales ut eu sem integer vitae justo eget magna. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Nunc sed id semper risus in hendrerit gravida rutrum. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Nibh ipsum consequat nisl vel pretium lectus quam id.\r\n\r\nPretium fusce id velit ut. Aliquam purus sit amet luctus. Justo donec enim diam vulputate. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Cursus mattis molestie a iaculis at erat. Integer quis auctor elit sed vulputate mi sit amet mauris. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Luctus accumsan tortor posuere ac ut consequat semper viverra nam. Dui sapien eget mi proin sed.                                                                                                                                                                                                                                                                ', '31', '02 Jan, 2021', 42, '1609609634-mulyadi-qbeZN5CUQ6U-unsplash.jpg'),
(64, 'Sony Tv', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt. Nisi est sit amet facilisis magna etiam tempor. Quis hendrerit dolor magna eget. Tincidunt arcu non sodales neque sodales ut etiam. Consequat semper viverra nam libero justo laoreet sit. Nam libero justo laoreet sit. Nunc id cursus metus aliquam eleifend. Sodales ut eu sem integer vitae justo eget magna. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Nunc sed id semper risus in hendrerit gravida rutrum. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Nibh ipsum consequat nisl vel pretium lectus quam id.\r\n\r\nPretium fusce id velit ut. Aliquam purus sit amet luctus. Justo donec enim diam vulputate. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Cursus mattis molestie a iaculis at erat. Integer quis auctor elit sed vulputate mi sit amet mauris. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Luctus accumsan tortor posuere ac ut consequat semper viverra nam. Dui sapien eget mi proin sed.', '31', '02 Jan, 2021', 42, 'josue-soto-NGz25724yf0-unsplash.jpg'),
(65, 'English ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt. Nisi est sit amet facilisis magna etiam tempor. Quis hendrerit dolor magna eget. Tincidunt arcu non sodales neque sodales ut etiam. Consequat semper viverra nam libero justo laoreet sit. Nam libero justo laoreet sit. Nunc id cursus metus aliquam eleifend. Sodales ut eu sem integer vitae justo eget magna. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Nunc sed id semper risus in hendrerit gravida rutrum. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Nibh ipsum consequat nisl vel pretium lectus quam id.\r\n\r\nPretium fusce id velit ut. Aliquam purus sit amet luctus. Justo donec enim diam vulputate. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Cursus mattis molestie a iaculis at erat. Integer quis auctor elit sed vulputate mi sit amet mauris. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Luctus accumsan tortor posuere ac ut consequat semper viverra nam. Dui sapien eget mi proin sed.', '32', '02 Jan, 2021', 43, 'marilynjkoo-KmC-s7seTMw-unsplash.jpg'),
(66, 'Cricket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt. Nisi est sit amet facilisis magna etiam tempor. Quis hendrerit dolor magna eget. Tincidunt arcu non sodales neque sodales ut etiam. Consequat semper viverra nam libero justo laoreet sit. Nam libero justo laoreet sit. Nunc id cursus metus aliquam eleifend. Sodales ut eu sem integer vitae justo eget magna. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Nunc sed id semper risus in hendrerit gravida rutrum. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Nibh ipsum consequat nisl vel pretium lectus quam id.\r\n\r\nPretium fusce id velit ut. Aliquam purus sit amet luctus. Justo donec enim diam vulputate. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Cursus mattis molestie a iaculis at erat. Integer quis auctor elit sed vulputate mi sit amet mauris. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Luctus accumsan tortor posuere ac ut consequat semper viverra nam. Dui sapien eget mi proin sed.', '30', '02 Jan, 2021', 43, 'zahaan-khan-BYNK7wHZLJA-unsplash.jpg'),
(67, 'Football', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Risus nec feugiat in fermentum posuere urna nec tincidunt. Nisi est sit amet facilisis magna etiam tempor. Quis hendrerit dolor magna eget. Tincidunt arcu non sodales neque sodales ut etiam. Consequat semper viverra nam libero justo laoreet sit. Nam libero justo laoreet sit. Nunc id cursus metus aliquam eleifend. Sodales ut eu sem integer vitae justo eget magna. Felis eget nunc lobortis mattis aliquam faucibus purus in massa. Nunc sed id semper risus in hendrerit gravida rutrum. Tempor orci eu lobortis elementum nibh tellus molestie nunc non. Nibh ipsum consequat nisl vel pretium lectus quam id.\r\n\r\nPretium fusce id velit ut. Aliquam purus sit amet luctus. Justo donec enim diam vulputate. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Cursus mattis molestie a iaculis at erat. Integer quis auctor elit sed vulputate mi sit amet mauris. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Luctus accumsan tortor posuere ac ut consequat semper viverra nam. Dui sapien eget mi proin sed.', '30', '02 Jan, 2021', 42, 'marilynjkoo-KmC-s7seTMw-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(42, 'swapnil', 'swapnil', 'swapnil', 'b39a5005f03f16e882a911cd34f86043', 1),
(43, 'rifa', 'rifa', 'rifa', '4797a79a801d05ef1bc5345edaa69cd6', 0),
(44, 'emazz', 'emaz', 'emaz', '64e2a4aca6710484708aa778341decef', 0),
(45, 'noman', 'noman', 'noman', '0c1300db57bef58404261cc20c271cd1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
