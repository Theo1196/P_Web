-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 09 déc. 2022 à 07:37
-- Version du serveur : 5.7.11
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_recette`
--
CREATE DATABASE IF NOT EXISTS `db_recette` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_recette`;

-- --------------------------------------------------------

--
-- Structure de la table `t_ingredients`
--

CREATE TABLE `t_ingredients` (
  `idIngredients` int(11) NOT NULL,
  `ingIngredients` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_recette`
--

CREATE TABLE `t_recette` (
  `idRecette` int(11) NOT NULL,
  `recTitre` varchar(25) NOT NULL,
  `recCategorie` varchar(25) NOT NULL,
  `recPreparation` varchar(500) NOT NULL,
  `recImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_recette`
--

INSERT INTO `t_recette` (`idRecette`, `recTitre`, `recCategorie`, `recPreparation`, `recImage`) VALUES
(15, 'queue de castor', '', '', './img/quebec-beaver-tails.jpg'),
(16, 'royal poleto', '', '', './img/OIP.jfif'),
(17, '', '', '', './img/R.png'),
(18, 'put in', '', '', './img/poutine-canadienne.jpeg'),
(19, 'donut sucrer au sucre', '', '', './img/hqdefault.jpg'),
(20, 'tacos', '', '', './img/maxresdefault.jpg'),
(21, 'phillipe', 'cuisto', 'une calvitie', './img/philippe-etchebest-est-connu-pour-son-gros-caractere-e1589565190382.jpg'),
(23, 'le chef', 'cuisto', 'jsp', './img/1a2e4809194af45784dcf2d52d76b5f2.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE `t_user` (
  `idUser` int(11) NOT NULL,
  `useLogin` varchar(20) NOT NULL,
  `usePaswword` varchar(255) NOT NULL,
  `useAdmin` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_ingredients`
--
ALTER TABLE `t_ingredients`
  ADD PRIMARY KEY (`idIngredients`);

--
-- Index pour la table `t_recette`
--
ALTER TABLE `t_recette`
  ADD PRIMARY KEY (`idRecette`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_ingredients`
--
ALTER TABLE `t_ingredients`
  MODIFY `idIngredients` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_recette`
--
ALTER TABLE `t_recette`
  MODIFY `idRecette` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
