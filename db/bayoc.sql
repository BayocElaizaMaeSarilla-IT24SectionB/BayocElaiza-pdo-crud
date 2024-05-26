-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 07:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Shoei', 'Shoei is renowned for its premium quality helmets, known for their exceptional build quality, comfort, and advanced safety features. They offer a wide range of helmets catering to various riding styles, from touring to racing.\r\n\r\n\r\n', 23000, 23000, 100, 'https://imgs.search.brave.com/w9sUWwsEn1bHAKj4W0oKCAhMGILP2vPgDbMNgj8EvZ8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/bW90b3Jwc3ljaG9z/cG9ydC5jb20vY2Ru/L3Nob3AvZmlsZXMv/c2hvZWkteC0xNS1o/ZWxtZXQtbWF0dGUt/YmxhY2stbW90b3It/cHN5Y2hvLXNwb3J0/LmpwZz92PTE3MTQ2/ODIxODcmd2lkdGg9/MTA4MA', '2024-05-12 00:00:00'),
(2, 'Arai', 'Arai helmets are synonymous with meticulous craftsmanship and attention to detail. They prioritize safety above all else and are known for their innovative design features aimed at maximizing protection and comfort for riders.\r\n\r\n', 12000, 12000, 333, 'https://imgs.search.brave.com/q8fIgwqWomWhkxXg6SpEKvcRkQIeQcX96S6ZQxjPwJg/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NzF2cWZYT1BSMkwu/anBn', '2024-05-12 00:00:00'),
(3, 'AGV', 'AGV is a well-respected brand in the motorcycle racing community, favored by many professional riders. Their helmets combine cutting-edge technology with sleek designs, offering excellent protection and aerodynamics', 2600, 2600, 96, 'https://imgs.search.brave.com/AqZHZGnLUxXXA-fvHIZfdNsmdbG4_-8lkD57iMdcaFQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4t/ZmFzdGx5Lm1vdG9y/Y3ljbGUuY29tL21l/ZGlhLzIwMjMvMDMv/MjgvMTEzNDQwNzgv/bW8tdGVzdGVkLWFn/di1waXN0YS1ncC1y/LXJldmlldy5qcGc_/c2l6ZT03MjB4ODQ1/Jm5vY3JvcD0x', '2024-05-12 00:00:00'),
(4, 'Bell Helmets', 'Bell Helmets have a rich history in the motorcycle industry and are known for their stylish designs and solid construction. They offer a wide range of helmets suitable for different types of riding, from street to off-road.', 5600, 5600, 40, 'https://imgs.search.brave.com/zR5kRNsQDMM4nBdfEI9LHA8MJZ_3GAtl-MuUhWtUCSc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/cmV2emlsbGEuY29t/L2ZhY2V0X3NldC9p/bWFnZS82OTc1L2Jl/bGxfc2NvdXRfYWly/X2hlbG1ldF9tYXR0/ZV9ibGFjay5qcGc', '2024-05-12 00:00:00'),
(5, 'HJC Helmets', 'HJC Helmets are known for providing good value for money without compromising on quality. They offer a diverse range of helmets, from budget-friendly options to high-performance models, catering to a wide range of riders.\r\n\r\n', 5000, 5000, 30, 'https://imgs.search.brave.com/Bhb2dTAsHpc6BgGv4QJC1JWA4GiX3m52krT1xq_JpAU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9hbXgt/Y2F0ZWdvcmllcy5z/Yi1hbXguY29tL2Nh/dGVnb3J5LWltYWdl/cy1tYWlucmVzaXpl/ZC9oamMtMTExODgz/Ni0yMDIxMTI3XzEw/NTA1OC5qcGc', '2024-05-12 00:00:00'),
(6, 'Schuberth', 'Schuberth helmets are praised for their advanced aerodynamics, quietness, and premium materials. They are popular among touring riders and commuters who prioritize comfort and technology.', 60000, 60000, 30, 'https://imgs.search.brave.com/N1Oocjd6LGC-V2P0WChA8h5hzhYnS01l8W3lS9Bnwtk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFyVjVKNnlPRkwu/anBn', '2024-05-12 00:00:00'),
(7, 'Nolan', 'Nolan helmets are known for their modular designs, allowing riders to easily switch between full-face and open-face configurations. They offer a balance of comfort, safety, and versatility.', 3000, 3000, 36, 'https://imgs.search.brave.com/wQk0XlH84Pd02tMph4hIrhbwZH39qRnIDpZGyqo3yqg/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/cmV2emlsbGEuY29t/L3Byb2R1Y3RfaW1h/Z2VzLzE5MTgvNDAw/Mi9ub2xhbl9uODA4/X2hlbG1ldF9zb2xp/ZF9ibGFja18zMDB4/MzAwLmpwZw', '2024-05-12 00:00:00'),
(8, 'Shark Helmets', 'Shark Helmets are known for their aggressive designs and high-performance features. They offer a wide range of helmets suitable for various riding styles, from sports riding to adventure touring.', 4597, 4597, 30, 'https://imgs.search.brave.com/gxJfyDcpLfArY1vu1S09Up9iV6DNtTL28hP3k_mcrFA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NzFUK3U0Nmh3WUwu/anBn', '2024-05-12 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
