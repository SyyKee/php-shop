-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 03, 2021 at 12:54 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `jouets`
--

DROP TABLE IF EXISTS `jouets`;
CREATE TABLE IF NOT EXISTS `jouets` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prix` int(255) NOT NULL,
  `Quantité` int(255) NOT NULL,
  `Age` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jouets`
--

INSERT INTO `jouets` (`ID`, `Nom`, `Prix`, `Quantité`, `Age`) VALUES
(1, 'Lego Ninjago – Le dragon d’acier de Lloyd', 150, 5, 3),
(2, 'Arène de combat BeyBlade', 50, 2, 7),
(3, 'Le robot mignon Bunchems', 60, 6, 7),
(4, 'Le circuit de nouvelle génération Magic Tracks', 65, 3, 3),
(5, 'Un succès planétaire : le Pic Pirate', 20, 7, 3),
(6, 'La trottinette 3 roues Globber My Free Up', 60, 5, 10),
(7, 'Pistolet jouet Nerf Elite Hyperfire', 100, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prix` int(255) NOT NULL,
  `Auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Note` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`ID`, `Titre`, `Prix`, `Auteur`, `Note`) VALUES
(1, '1984', 15, 'Orwell', 10),
(2, 'Dune', 12, 'Herbert', 8),
(3, 'Fondation', 13, 'Asimov', 9),
(4, 'Le meilleur des mondes', 9, 'Huxley', 6),
(5, 'Ubik', 20, 'K.Dick', 9),
(6, 'La nuit des temps', 10, 'Barjavel', 7),
(7, 'Ravage', 12, 'Barjavel', 10);

-- --------------------------------------------------------

--
-- Table structure for table `musique`
--

DROP TABLE IF EXISTS `musique`;
CREATE TABLE IF NOT EXISTS `musique` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Artiste` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prix` int(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musique`
--

INSERT INTO `musique` (`ID`, `Titre`, `Artiste`, `Prix`) VALUES
(1, 'my.life', 'J. Cole', 15),
(2, 'Levitating', 'Dua Lipa', 10),
(3, 'amari', 'J. Cole\r\n', 13),
(4, 'Peaches', 'Justin Bieber', 10),
(5, '95.south', 'J. Cole', 10),
(6, 'Save Your Tears', 'The Weeknd', 16),
(7, 'Astronaut In The Ocean\r\n', 'Masked Wolf', 14),
(8, 'Blinding Lights', 'The Weeknd', 17),
(9, 'Straightenin', 'Migos', 20);

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_user` int(255) NOT NULL,
  `Nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_produit` int(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_produit` (`ID_produit`),
  KEY `id_user` (`ID_user`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(255) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `categorie`, `prix`, `image`) VALUES
(1, 'Lego Ninjago ', 'jouets', 150, 'https://www.lego.com/cdn/cs/set/assets/bltf4a3058d0197f3fc/71742_alt1.jpg'),
(2, 'BeyBlade', 'jouets', 50, 'https://media.gamestop.com/i/gamestop/11104054/Beyblade-Burst-Rise-Hypersphere-Tournament-Versus-Pack-Only-at-GameStop'),
(3, 'Le robot mignon Bunchems', 'jouets', 60, 'https://media.cultura.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/b/u/n/bunchbot-bunchems-0778988582121_1.JPG?t=1615907129'),
(4, 'Le circuit Magic Tracks', 'jouets', 65, 'https://www.cdiscount.com/pdt2/2/1/1/1/700x700/fwc0735541603211/rw/magic-tracks-circuit-lumineux-voiture-bleue.jpg'),
(5, 'Le Pic Pirate', 'jouets', 20, 'https://www.maxitoys.be/media/catalog/product/cache/fcf6fde2aecaa3a19404630833ab6e02/6/0/6037028-6037028-mt_picture4-17885.jpg'),
(6, 'La trottinette 3 roues Globber My Free Up', 'jouets', 60, 'https://images-na.ssl-images-amazon.com/images/I/711pu%2BC7trL._AC_SL1500_.jpg'),
(7, 'Pistolet jouet Nerf Elite Hyperfire', 'jouets', 100, 'https://images-na.ssl-images-amazon.com/images/I/918S55XlGeL._AC_SY355_.jpg'),
(8, 'my.life', 'musique', 15, 'https://www.booska-p.com/up/images/news/J.-Cole-The-Off-Season.jpg'),
(9, 'Levitating', 'musique', 10, 'https://images-na.ssl-images-amazon.com/images/I/71Ty0nbCCfL._AC_SY450_.jpg'),
(10, 'amari', 'musique', 13, 'https://www.booska-p.com/up/images/news/J.-Cole-The-Off-Season.jpg'),
(12, '95.south', 'musique', 10, 'https://www.booska-p.com/up/images/news/J.-Cole-The-Off-Season.jpg'),
(13, 'Save Your Tears', 'musique', 16, 'https://image.over-blog.com/8FCC2XJ84NUm4KohBMLIuVldO-U=/filters:no_upscale()/image%2F0012560%2F20201112%2Fob_f8d74f_the-weeknd-save-you-tears-1.jpg'),
(14, 'Astronaut In The Ocean\r\n', 'musique', 14, 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/galaxy-astronaut-space-cd-cover-template-design-636763c59f5544f9214fa9b96ae7cb62_screen.jpg?ts=1566606525'),
(15, 'Blinding Lights', 'musique', 17, 'https://image.over-blog.com/8FCC2XJ84NUm4KohBMLIuVldO-U=/filters:no_upscale()/image%2F0012560%2F20201112%2Fob_f8d74f_the-weeknd-save-you-tears-1.jpg'),
(16, 'Straightenin', 'musique', 20, 'https://i.ytimg.com/vi/DWy1HKdPZuQ/maxresdefault.jpg'),
(19, '1984', 'livre', 15, 'data:image/jpeg;base64,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'),
(20, 'Dune', 'livre', 12, 'https://www.syfy.com/sites/syfy/files/styles/1170xauto/public/screen_shot_2017-12-11_at_1.43.06_pm_0.png'),
(21, 'Fondation', 'livre', 13, 'https://images-na.ssl-images-amazon.com/images/I/811zq+9+hNL.jpg'),
(22, 'Le meilleur des mondes', 'livre', 9, 'https://img.livraddict.com/covers/256/256986//couv13268455.jpg'),
(23, 'Ubik', 'livre', 20, 'https://i.pinimg.com/originals/0c/f0/78/0cf078605d4135f1e87d6c8feeded1ec.jpg'),
(24, 'La nuit des temps', 'livre', 10, 'https://www.lisez.com/usuaris/libros/fotos/9782258153/m_libros/9782258152830ORI.jpg'),
(25, 'Ravage', 'livre', 12, 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1468144841l/1214412.jpg'),
(30, '29', 'jouets', 15, 'https://lh3.googleusercontent.com/proxy/doxA6T89TzxKPT8XYxkXT2FvMTPoaRjYSL8sbqqictMeS5wR9g7n8dGdM9U97jfjS_NfD6shASfhi1FhMIrXSyK4rTPy6ot_BWh153vKQAqRpiVkte3BsfgxALdDU5pSgSBO0A53QA2a_8dQ3IpuvIvZeFLjUzd9wL0hrWj6I3zEuRlezZd0FRmxHEiCOIU');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motDePasse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `login`, `motDePasse`, `Nom`) VALUES
(1, 'user1', '123456', 'Anass'),
(2, 'user2', '123456', 'Hamza'),
(3, 'user3', '123456', 'Ayoub');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `id_produit` FOREIGN KEY (`ID_produit`) REFERENCES `produits` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_user` FOREIGN KEY (`ID_user`) REFERENCES `users` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
