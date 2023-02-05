-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 31 jan. 2023 à 10:00
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
-- Base de données : `entreprise`
--
CREATE DATABASE IF NOT EXISTS `entreprise` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `entreprise`;

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `id_employes` int(3) NOT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `genre` enum('f','m') NOT NULL,
  `service` varchar(30) DEFAULT NULL,
  `date_embauche` date DEFAULT NULL,
  `salaire` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id_employes`, `prenom`, `nom`, `genre`, `service`, `date_embauche`, `salaire`) VALUES
(350, 'Jean-Pierre', 'Laborde', 'm', 'direction', '1999-12-09', 5000),
(388, 'Clement', 'Gallet', 'm', 'commercial', '2000-01-15', 2500),
(415, 'Thomas', 'Winter', 'm', 'commercial', '2000-05-03', 3750),
(417, 'Chloe', 'Dubar', 'f', 'production', '2001-09-05', 2100),
(491, 'Elodie', 'Fellier', 'f', 'secretariat', '2002-02-22', 1800),
(509, 'Fabrice', 'Grand', 'm', 'comptabilite', '2003-02-20', 2100),
(547, 'Melanie', 'Collier', 'f', 'commercial', '2004-09-08', 3300),
(592, 'Laura', 'Blanchet', 'f', 'direction', '2005-06-09', 4700),
(627, 'Guillaume', 'Miller', 'm', 'commercial', '2006-07-02', 2100),
(655, 'Celine', 'Perrin', 'f', 'commercial', '2006-09-10', 2900),
(699, 'Julien', 'Cottet', 'm', 'secretariat', '2007-01-18', 1590),
(701, 'Mathieu', 'Vignal', 'm', 'informatique', '2008-12-03', 2200),
(739, 'Thierry', 'Desprez', 'm', 'secretariat', '2009-11-17', 1700),
(780, 'Amandine', 'Thoyer', 'f', 'communication', '2010-01-23', 1700),
(802, 'Damien', 'Durand', 'm', 'informatique', '2010-07-05', 2450),
(854, 'Daniel', 'Chevel', 'm', 'informatique', '2011-09-28', 1900),
(876, 'Nathalie', 'Martin', 'f', 'juridique', '2012-01-12', 3400),
(900, 'Benoit', 'Lagarde', 'm', 'production', '2013-01-03', 2750),
(933, 'Emilie', 'Sennard', 'f', 'commercial', '2014-09-11', 2000),
(990, 'Stephanie', 'Lafaye', 'f', 'assistant', '2015-06-02', 2000);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id_livre` int(3) NOT NULL,
  `Auteur` varchar(20) NOT NULL,
  `Titre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id_employes`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id_livre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `id_employes` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=992;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id_livre` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
