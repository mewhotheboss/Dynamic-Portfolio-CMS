-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2026 at 08:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `card_title` varchar(255) NOT NULL,
  `card_para` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `para` text NOT NULL,
  `resume` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `card_title`, `card_para`, `title`, `para`, `resume`) VALUES
(1, 'WEB Developer', 'I am a Web Designer and Developer based in Bangladesh. I have a deep passion for the Web platform and a strong commitment to improving it for everyone. I consider it a true privilege to build professional digital solutions that make a difference.', 'Web Developer', 'I am a Web Developer based in Bangladesh, passionate about building accessible and high-performance web applications. I work with clients to create responsive user interfaces and robust backend systems using PHP, MySQL, JavaScript, and Bootstrap. I am deeply committed to writing clean, future-proof code and constantly exploring modern techniques to build scalable full-stack solutions.', '#');

-- --------------------------------------------------------

--
-- Table structure for table `hero_section`
--

CREATE TABLE `hero_section` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `para` text DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hero_section`
--

INSERT INTO `hero_section` (`id`, `name`, `title`, `para`, `image`) VALUES
(1, 'Rahim', 'Web Developer', 'I am a Full Stack Web Developer specializing in building dynamic, user-friendly applications using PHP, MySQL, and JavaScript. I transform complex problems into clean, efficient code.\r\n', '1769004595_profile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `para` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `subtitle`, `para`, `image`, `url`) VALUES
(3, 'Portfolio', 'Personal Portfolio Website', 'This personal portfolio showcases my journey as a Full Stack Web Developer. Built during my internship at Alpha Net, it highlights my skills, education, and projects, and features a fully responsive design with a custom Admin Panel (CMS) built using PHP and MySQL.', '1769019676_Screenshot 2026-01-22 001819.png', 'https://github.com');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `para` text NOT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `para`, `icon`) VALUES
(1, 'Web Design', 'I specialize in creating responsive and visually engaging user interfaces using HTML5, CSS3, and Bootstrap 5. My focus is on designing layouts that look perfect on any device—from mobile phones to desktop screens—ensuring a seamless user experience.', 'fa-solid fa-desktop'),
(2, 'Database', 'I design and manage efficient relational databases using MySQL. My expertise includes structuring complex data schemas, writing optimized SQL queries, and ensuring data integrity to support dynamic applications.', 'fa fa-database'),
(3, 'BackEnd', 'I develop robust server-side logic using Core PHP and Object-Oriented Programming (OOP). I build secure authentication systems, dynamic content management tools, and REST APIs that power the functionality behind modern web applications.', 'fa fa-code');

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `para` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id`, `title`, `subtitle`, `para`) VALUES
(1, '5+', 'Project Done', 'I have worked on 5+ projects. I know how to make designs engaging and eye-catching. Building high-performance websites is my signature.'),
(2, '12+', 'Happy Teams', 'I collaborated with 12+ team members. I prioritize punctuality and consistently complete my tasks before the deadline.'),
(3, '3+', 'Months Experience', 'I have 3 months of intensive professional experience as a Web Developer Intern. During this time, I successfully built dynamic web applications using PHP and MySQL. My priority is writing clean code and completing projects on schedule.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`) VALUES
(4, 'rahim', '$2y$10$98uu5XYKX.owNKnjl.RT/OswPR3dxuyuYQnhLRSAgET5QMI65P7We', 'Rahim Uddin', 'rahim@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_section`
--
ALTER TABLE `hero_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hero_section`
--
ALTER TABLE `hero_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
