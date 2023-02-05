-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 31 jan. 2023 à 09:58
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliothèque`
--
CREATE DATABASE IF NOT EXISTS `bibliothèque` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bibliothèque`;

-- --------------------------------------------------------

--
-- Structure de la table `abonnes`
--

CREATE TABLE `abonnes` (
  `id_abonne` int(3) NOT NULL,
  `prenom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `abonnes`
--

INSERT INTO `abonnes` (`id_abonne`, `prenom`) VALUES
(1, 'Guillaume'),
(2, 'Benoît'),
(3, 'Chloé'),
(4, 'Laura'),
(5, 'Alex');

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `id_emprunt` int(3) NOT NULL,
  `id_livre` int(3) DEFAULT NULL,
  `id_abonne` int(3) DEFAULT NULL,
  `date_sortie` date NOT NULL,
  `date_rendu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id_emprunt`, `id_livre`, `id_abonne`, `date_sortie`, `date_rendu`) VALUES
(1, 100, 1, '2014-12-17', '2014-12-18'),
(2, 101, 2, '2014-12-18', '2014-12-20'),
(3, 100, 3, '2014-12-19', '2014-12-22'),
(4, 103, 4, '2014-12-19', '2014-12-22'),
(5, 104, 1, '2014-12-19', '2014-12-28'),
(6, 105, 2, '2015-03-20', '2015-03-26'),
(7, 105, 3, '2015-06-13', NULL),
(8, 100, 2, '2015-06-15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id_livre` int(3) NOT NULL,
  `Auteur` varchar(20) DEFAULT NULL,
  `Titre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id_livre`, `Auteur`, `Titre`) VALUES
(100, 'GUY DE MAUPASSANT', 'Une vie'),
(101, 'GUY DE MAUPASSANT', 'Bel ami'),
(102, 'HONORE DE BALZAC', 'Le père Goriot'),
(103, 'ALPHONSE DAUDET', 'Le petit chose'),
(104, 'ALEXANDRE DUMAS', 'La Reine Margot'),
(105, 'ALEXANDRE DUMAS', 'Les Trois Mousquetai');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnes`
--
ALTER TABLE `abonnes`
  ADD PRIMARY KEY (`id_abonne`);

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`id_emprunt`),
  ADD KEY `id_livre` (`id_livre`),
  ADD KEY `id_abonne` (`id_abonne`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id_livre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnes`
--
ALTER TABLE `abonnes`
  MODIFY `id_abonne` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `id_emprunt` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id_livre` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`id_livre`) REFERENCES `livres` (`id_livre`),
  ADD CONSTRAINT `emprunt_ibfk_2` FOREIGN KEY (`id_abonne`) REFERENCES `abonnes` (`id_Abonne`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
