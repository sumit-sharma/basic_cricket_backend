-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2020 at 05:35 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

CREATE TABLE `fixtures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team1` bigint(20) UNSIGNED NOT NULL,
  `team2` bigint(20) UNSIGNED NOT NULL,
  `schedule_at` date NOT NULL,
  `winner` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`id`, `team1`, `team2`, `schedule_at`, `winner`, `status`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2020-06-09', NULL, '0', NULL, NULL, NULL),
(2, 1, 9, '2020-06-10', NULL, '3', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_04_144611_create_teams_table', 1),
(4, '2020_06_04_145548_create_players_table', 1),
(6, '2020_06_06_163059_create_points_table', 2),
(8, '2020_06_07_025252_create_fixtures_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `nick_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jersey_number` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `first_name`, `last_name`, `team_id`, `nick_name`, `image_uri`, `jersey_number`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tre', 'Rowe', 1, 'Cheyanne', 'https://lorempixel.com/640/480/?20606', 51, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(2, 'Vincent', 'Cartwright', 2, 'Kathryn', 'https://lorempixel.com/640/480/?80823', 62, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(3, 'Brannon', 'Considine', 3, 'Quincy', 'https://lorempixel.com/640/480/?43414', 69, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(4, 'Alek', 'Kihn', 4, 'Amy', 'https://lorempixel.com/640/480/?79948', 47, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(5, 'Austen', 'Kuhic', 5, 'Allison', 'https://lorempixel.com/640/480/?39884', 50, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(6, 'Gideon', 'Johns', 6, 'Gregory', 'https://lorempixel.com/640/480/?90090', 95, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(7, 'Evan', 'Moen', 1, 'Stephen', 'https://lorempixel.com/640/480/?69284', 47, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(8, 'Rory', 'Farrell', 2, 'Alisha', 'https://lorempixel.com/640/480/?85851', 4, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(9, 'Kellen', 'Mraz', 3, 'Ford', 'https://lorempixel.com/640/480/?29626', 79, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(10, 'Milo', 'Hoeger', 4, 'Glen', 'https://lorempixel.com/640/480/?85926', 86, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(11, 'Pierre', 'Kiehn', 5, 'Norberto', 'https://lorempixel.com/640/480/?87480', 85, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(12, 'Enoch', 'Mertz', 6, 'Zora', 'https://lorempixel.com/640/480/?31343', 50, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(13, 'Nathanial', 'Smith', 6, 'Gerard', 'https://lorempixel.com/640/480/?93503', 21, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(14, 'Angus', 'Rice', 6, 'Kirsten', 'https://lorempixel.com/640/480/?29276', 20, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(15, 'Seamus', 'Prohaska', 6, 'Idell', 'https://lorempixel.com/640/480/?10383', 69, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(16, 'Khalil', 'Bahringer', 6, 'Joany', 'https://lorempixel.com/640/480/?90121', 12, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(17, 'Aaron', 'Schamberger', 6, 'Aliza', 'https://lorempixel.com/640/480/?45683', 12, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(18, 'Adrian', 'Denesik', 6, 'Jovani', 'https://lorempixel.com/640/480/?28601', 21, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(19, 'Alfonso', 'Runte', 6, 'Eldora', 'https://lorempixel.com/640/480/?90552', 80, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(20, 'Ethel', 'Luettgen', 6, 'Rebecca', 'https://lorempixel.com/640/480/?21139', 38, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(21, 'Roy', 'Mayer', 6, 'Brennan', 'https://lorempixel.com/640/480/?87711', 44, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(22, 'Tyrell', 'Miller', 6, 'Maggie', 'https://lorempixel.com/640/480/?41424', 83, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(23, 'Hollis', 'Bednar', 6, 'Andrew', 'https://lorempixel.com/640/480/?80718', 25, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(24, 'Woodrow', 'Hamill', 6, 'Precious', 'https://lorempixel.com/640/480/?47806', 86, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(25, 'Adolf', 'Littel', 6, 'Kayden', 'https://lorempixel.com/640/480/?83304', 74, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(26, 'Brandon', 'Jacobi', 6, 'Justina', 'https://lorempixel.com/640/480/?79433', 30, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(27, 'Braeden', 'Von', 6, 'Anahi', 'https://lorempixel.com/640/480/?23247', 85, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(28, 'Adriel', 'Gutkowski', 6, 'Carole', 'https://lorempixel.com/640/480/?36282', 29, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(29, 'Cyril', 'Barton', 6, 'Ubaldo', 'https://lorempixel.com/640/480/?18672', 29, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(30, 'Weldon', 'Hills', 6, 'Blaise', 'https://lorempixel.com/640/480/?14057', 14, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(31, 'Eric', 'Kovacek', 6, 'Ardith', 'https://lorempixel.com/640/480/?58877', 30, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(32, 'Ahmad', 'Wiegand', 6, 'Destini', 'https://lorempixel.com/640/480/?72875', 50, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(33, 'Noe', 'Lockman', 6, 'Asa', 'https://lorempixel.com/640/480/?45141', 46, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(34, 'Tremayne', 'Terry', 6, 'Christy', 'https://lorempixel.com/640/480/?79238', 47, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(35, 'Reynold', 'Tillman', 6, 'Hazel', 'https://lorempixel.com/640/480/?90968', 34, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(36, 'Waylon', 'Hammes', 6, 'Cecile', 'https://lorempixel.com/640/480/?70520', 79, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(37, 'Guido', 'Willms', 6, 'Vilma', 'https://lorempixel.com/640/480/?99209', 56, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(38, 'Timothy', 'Hamill', 6, 'Jaycee', 'https://lorempixel.com/640/480/?72490', 93, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(39, 'Keshawn', 'Borer', 6, 'Kraig', 'https://lorempixel.com/640/480/?90395', 78, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(40, 'Keyon', 'Heaney', 6, 'Myron', 'https://lorempixel.com/640/480/?55614', 31, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(41, 'Raymond', 'Daugherty', 6, 'Bryana', 'https://lorempixel.com/640/480/?90898', 6, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(42, 'Elton', 'Fahey', 6, 'Ardith', 'https://lorempixel.com/640/480/?42161', 11, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(43, 'Jaylen', 'Johnston', 6, 'Vickie', 'https://lorempixel.com/640/480/?86017', 94, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(44, 'Schuyler', 'Schoen', 6, 'Mathew', 'https://lorempixel.com/640/480/?28358', 38, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(45, 'Cary', 'Mayer', 6, 'Trace', 'https://lorempixel.com/640/480/?79730', 51, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(46, 'Rodger', 'Kohler', 6, 'Alexander', 'https://lorempixel.com/640/480/?81540', 37, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(47, 'Buddy', 'Ruecker', 6, 'Jany', 'https://lorempixel.com/640/480/?64451', 0, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(48, 'Tre', 'Kuphal', 6, 'Brielle', 'https://lorempixel.com/640/480/?70506', 35, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(49, 'Henderson', 'Reynolds', 6, 'Afton', 'https://lorempixel.com/640/480/?95149', 26, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(50, 'Jaylin', 'Marquardt', 6, 'Jayde', 'https://lorempixel.com/640/480/?31335', 17, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(51, 'Henderson', 'Stroman', 6, 'Mireya', 'https://lorempixel.com/640/480/?41815', 46, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(52, 'Leon', 'Koch', 6, 'Kellen', 'https://lorempixel.com/640/480/?63166', 87, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(53, 'Marlin', 'Cummings', 6, 'Rupert', 'https://lorempixel.com/640/480/?21723', 29, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(54, 'Noel', 'Wiegand', 6, 'Cora', 'https://lorempixel.com/640/480/?44787', 57, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(55, 'Isaias', 'Morar', 6, 'Obie', 'https://lorempixel.com/640/480/?75116', 80, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(56, 'Zakary', 'Larson', 6, 'Chad', 'https://lorempixel.com/640/480/?43233', 28, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(57, 'Hoyt', 'Dare', 6, 'Dulce', 'https://lorempixel.com/640/480/?36103', 38, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(58, 'Riley', 'Smith', 6, 'Trey', 'https://lorempixel.com/640/480/?15091', 48, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(59, 'Eldred', 'Senger', 6, 'Loyce', 'https://lorempixel.com/640/480/?90157', 25, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(60, 'Alek', 'Grimes', 6, 'Bessie', 'https://lorempixel.com/640/480/?93834', 32, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(61, 'Salvador', 'Zemlak', 6, 'Roman', 'https://lorempixel.com/640/480/?56415', 88, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(62, 'Ted', 'Stehr', 6, 'Sylvester', 'https://lorempixel.com/640/480/?11515', 91, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(63, 'Keyshawn', 'Steuber', 6, 'Tamara', 'https://lorempixel.com/640/480/?15479', 75, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(64, 'Geovany', 'Kub', 6, 'Zena', 'https://lorempixel.com/640/480/?94071', 93, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(65, 'Jillian', 'Schmitt', 6, 'Vito', 'https://lorempixel.com/640/480/?74103', 67, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(66, 'Kadin', 'Stracke', 6, 'Quincy', 'https://lorempixel.com/640/480/?63862', 4, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(67, 'Coty', 'Quitzon', 6, 'Sven', 'https://lorempixel.com/640/480/?90285', 12, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(68, 'Chesley', 'Kertzmann', 6, 'Demetrius', 'https://lorempixel.com/640/480/?71375', 81, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(69, 'Monty', 'Littel', 6, 'Lazaro', 'https://lorempixel.com/640/480/?62204', 62, 'USA', '1', '2020-06-04 19:35:43', '2020-06-04 19:35:43'),
(70, 'Milford', 'Thompson', 6, 'Brianne', 'https://lorempixel.com/640/480/?91048', 51, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(71, 'Chester', 'Emmerich', 6, 'Eileen', 'https://lorempixel.com/640/480/?66020', 53, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(72, 'Judah', 'Berge', 6, 'Janis', 'https://lorempixel.com/640/480/?24411', 49, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(73, 'Jalen', 'Swaniawski', 6, 'Ceasar', 'https://lorempixel.com/640/480/?83173', 12, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(74, 'Mack', 'Raynor', 6, 'Jacinto', 'https://lorempixel.com/640/480/?51765', 56, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(75, 'Guillermo', 'Schulist', 6, 'Clair', 'https://lorempixel.com/640/480/?31598', 84, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(76, 'Dee', 'Dickens', 6, 'Jake', 'https://lorempixel.com/640/480/?69404', 64, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(77, 'Dameon', 'Mante', 6, 'Dennis', 'https://lorempixel.com/640/480/?63137', 68, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(78, 'Waldo', 'Hilpert', 6, 'Derek', 'https://lorempixel.com/640/480/?55383', 21, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(79, 'Prince', 'Crona', 6, 'Veronica', 'https://lorempixel.com/640/480/?10308', 82, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(80, 'Juston', 'Nienow', 6, 'Adrien', 'https://lorempixel.com/640/480/?40886', 38, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(81, 'Otho', 'Will', 6, 'Monserrat', 'https://lorempixel.com/640/480/?83912', 21, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(82, 'Kip', 'Will', 6, 'Hortense', 'https://lorempixel.com/640/480/?82239', 32, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(83, 'Alvis', 'Cummings', 6, 'Ruth', 'https://lorempixel.com/640/480/?32060', 54, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(84, 'Waylon', 'Williamson', 6, 'Moshe', 'https://lorempixel.com/640/480/?86227', 82, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(85, 'Westley', 'Runolfsson', 6, 'Rusty', 'https://lorempixel.com/640/480/?73272', 61, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(86, 'Javier', 'Kertzmann', 6, 'Joesph', 'https://lorempixel.com/640/480/?50845', 64, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(87, 'Montana', 'McClure', 6, 'Lyda', 'https://lorempixel.com/640/480/?27702', 87, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(88, 'Sherman', 'Collins', 6, 'Maxie', 'https://lorempixel.com/640/480/?59664', 3, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(89, 'Albert', 'Borer', 6, 'Roscoe', 'https://lorempixel.com/640/480/?48935', 40, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(90, 'Uriah', 'Beatty', 6, 'Lexus', 'https://lorempixel.com/640/480/?82219', 29, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(91, 'Sedrick', 'Kessler', 6, 'Wanda', 'https://lorempixel.com/640/480/?62575', 45, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(92, 'Coby', 'Gleason', 6, 'Adelbert', 'https://lorempixel.com/640/480/?91620', 0, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(93, 'Jedediah', 'Luettgen', 6, 'Maritza', 'https://lorempixel.com/640/480/?96215', 45, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(94, 'Mariano', 'Bode', 6, 'Orin', 'https://lorempixel.com/640/480/?43557', 43, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(95, 'Hudson', 'Gutkowski', 6, 'Jaycee', 'https://lorempixel.com/640/480/?96648', 13, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(96, 'Cyril', 'Morar', 6, 'Kiara', 'https://lorempixel.com/640/480/?36777', 26, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(97, 'Deondre', 'Feest', 6, 'Kelsie', 'https://lorempixel.com/640/480/?17222', 13, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(98, 'Sean', 'Upton', 6, 'Erwin', 'https://lorempixel.com/640/480/?49069', 69, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(99, 'Cornell', 'Boehm', 6, 'Abigail', 'https://lorempixel.com/640/480/?27412', 4, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(100, 'Kip', 'Reynolds', 6, 'Florine', 'https://lorempixel.com/640/480/?94816', 2, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(101, 'Kirk', 'Marvin', 6, 'Mavis', 'https://lorempixel.com/640/480/?48334', 77, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(102, 'Jamir', 'Schimmel', 6, 'Lenore', 'https://lorempixel.com/640/480/?29637', 74, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(103, 'Doyle', 'Renner', 6, 'Anastacio', 'https://lorempixel.com/640/480/?43783', 88, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(104, 'Mitchell', 'Kemmer', 6, 'Kaley', 'https://lorempixel.com/640/480/?21241', 70, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(105, 'Alexys', 'Schamberger', 6, 'Lula', 'https://lorempixel.com/640/480/?36458', 85, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(106, 'Travon', 'Douglas', 6, 'Delaney', 'https://lorempixel.com/640/480/?25656', 2, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(107, 'Mauricio', 'Boyle', 6, 'Cristian', 'https://lorempixel.com/640/480/?57523', 15, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(108, 'Stephan', 'Harris', 6, 'Eugene', 'https://lorempixel.com/640/480/?78891', 48, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(109, 'Julius', 'Hand', 6, 'Kylie', 'https://lorempixel.com/640/480/?67392', 78, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44'),
(110, 'Roscoe', 'Hahn', 6, 'Torrey', 'https://lorempixel.com/640/480/?46015', 62, 'USA', '1', '2020-06-04 19:35:44', '2020-06-04 19:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `points` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `team_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 10, 10.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(2, 5, 8.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(3, 7, 4.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(4, 8, 8.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(5, 4, 8.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(6, 1, 4.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(7, 9, 6.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(8, 6, 1.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(9, 3, 2.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35'),
(10, 2, 9.00, '2020-06-06 11:29:35', '2020-06-06 11:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representation_entity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `logo_uri`, `representation_entity`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Madge Thompson DVM', 'madge-thompson-dvm', 'https://lorempixel.com/640/480/?90312', 'Arkansas', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(2, 'Shirley Bernier', 'shirley-bernier', 'https://lorempixel.com/640/480/?51321', 'Utah', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(3, 'Roslyn Aufderhar', 'roslyn-aufderhar', 'https://lorempixel.com/640/480/?26025', 'District of Columbia', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(4, 'Laron Boyer', 'laron-boyer', 'https://lorempixel.com/640/480/?20325', 'Illinois', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(5, 'Coty Mante', 'coty-mante', 'https://lorempixel.com/640/480/?37154', 'Georgia', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(6, 'Ned Koss', 'ned-koss', 'https://lorempixel.com/640/480/?79191', 'Alaska', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(7, 'Dayana Schuster', 'dayana-schuster', 'https://lorempixel.com/640/480/?82805', 'Vermont', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(8, 'Devan Johnson', 'devan-johnson', 'https://lorempixel.com/640/480/?80145', 'South Carolina', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(9, 'Miss Nakia Feil I', 'miss-nakia-feil-i', 'https://lorempixel.com/640/480/?80004', 'Illinois', '2020-06-04 19:35:42', '2020-06-04 19:35:42', '1'),
(10, 'Amiya Effertz', 'amiya-effertz', 'https://lorempixel.com/640/480/?15221', 'Wisconsin', '2020-06-04 19:35:43', '2020-06-04 19:35:43', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fixtures_team1_foreign` (`team1`),
  ADD KEY `fixtures_team2_foreign` (`team2`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_team_id_foreign` (`team_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `points_team_id_unique` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixtures`
--
ALTER TABLE `fixtures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD CONSTRAINT `fixtures_team1_foreign` FOREIGN KEY (`team1`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `fixtures_team2_foreign` FOREIGN KEY (`team2`) REFERENCES `teams` (`id`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
