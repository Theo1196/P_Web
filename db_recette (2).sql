-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 12 déc. 2022 à 10:01
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
  `recTemps` varchar(10) NOT NULL,
  `recIngredients` varchar(500) NOT NULL,
  `recPreparation` varchar(500) NOT NULL,
  `recImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_recette`
--

INSERT INTO `t_recette` (`idRecette`, `recTitre`, `recCategorie`, `recTemps`, `recIngredients`, `recPreparation`, `recImage`) VALUES
(34, 'Fajitas poulet poivron', 'Plât principal', '45min', 'Tortillas 4,\r\nEscalopes de poulet 2,\r\nPoivrons (rouge et vert) 3;\r\nGuacamole 1 pot;\r\nCrème fraîche 15 cl;\r\nGros oignon 1;\r\nFromage râpé 50 g;\r\nHuile d’olive 3 cuillères à soupe;\r\nChili en poudre 1 cuillère à soupe;\r\nCumin 1 cuillère à café;\r\nAil en poudre 1 cuillère à café;\r\nVinaigre 1 cuillère à café;\r\nSucre 1 cuillère à thé;\r\nTortillas 4;\r\nEscalopes de poulet 2;\r\nPoivrons (rouge et vert) 3;\r\nGuacamole 1 pot;\r\nCrème fraîche 15 cl;\r\nGros oignon 1;\r\nFromage râpé 50 g;\r\nHuile d’olive 3 cuillères à', 'Découpez les poivrons en lamelles. Épluchez et émincez l’oignon.\r\nDans une poêle, faites revenir l’oignon dans l’huile d’olive chaude. Ajoutez le sucre et le vinaigre rouge, puis laissez caraméliser à feu moyen en mélangeant de temps en temps.\r\nAjoutez ensuite les lamelles de poivrons. Faites revenir pendant quelques minutes avant d’incorporer le poulet préalablement coupé en petits dés. Assaisonnez avec du sel, du poivre et les épices.\r\nAjoutez un peu d’eau avant de laisser cuire à petit feu.', './img/fajitas-poulet-poivron-dcj3.jpg'),
(35, 'Gratin de patates douces', 'Plât principal', '45min', 'Patates douces 1 kg;\r\nŒufs 2;\r\nFromage râpé 100 g;\r\nLait 200 ml;\r\nCrème fraîche 200 ml;\r\nAil 1 gousse;\r\nCurry 1 cuillère à café;\r\nNoix de muscade râpée 1 pincée;\r\nSel, poivre;', '\"Mettez le four à chauffer à 180 °C.\r\nPelez les patates douces avant de les découper en fines tranches à l’aide d’une mandoline.\r\nMettez à cuire les morceaux de patates douces dans une grande casserole d’eau bouillante pendant 3 à 5 minutes.\r\nDans un plat à gratin graissé, frottez la gousse d’ail pelée et coupée en deux contre les parois. Disposez ensuite les tranches de patate douce.\r\nDans un bol, battez les œufs en omelette. Ajoutez le lait et la crème fraîche, puis assaisonnez avec du sel, du', './img/gratin-patate-douce-l553.jpg'),
(36, 'Penne au thon et au citro', 'Plât principal', '20min', 'Penne 500 g;\r\nThon à l’huile d’olive 2 boîtes;\r\nCitrons jaunes 2;\r\nCrème liquide 200 ml;\r\nOignon 1;\r\nHuile d’olive 2 cuillères à soupe;\r\nSel, poivre;', '\"Pour commencer, mettez à cuire les pâtes dans une casserole d’eau bouillante salée suivant les indications sur l’emballage.\r\nÉgouttez les pâtes et réservez une louche d’eau de cuisson.\r\nÉpluchez et émincez l’oignon. Lavez et prélevez le zeste du citron. Pressez-le ensuite pour en extraire le jus.\r\nÀ feu moyen, chauffez de l’huile d’olive dans une grande poêle. Faites revenir l’oignon pendant 3 minutes avant d’ajouter les zestes de citron. Laissez cuire pendant 1 minute supplémentaire en remuant', './img/penne-au-thon-et-citron-zre3.jpg'),
(37, 'Hamburger Maison', 'Plât principal', '10min', 'Pains pour hamburger 4;\r\nSteaks hachés 4;\r\nCheddar 4 tranches;\r\nOignon 1;\r\nTomate 1;\r\nMoutarde 4 cuillères à café;\r\nKetchup 4 cuillères à café;\r\nSalade quelques feuilles;', '\"Mélangez le ketchup et la moutarde. Tartinez les pains à hamburger avec ce mélange.\r\nLavez la salade et la tomate. Coupez la tomate en tranches. Pelez et coupez l\'oignon en lamelles.\r\nFaites revenir l\'oignon à la poêle à feu doux. Ajoutez les steaks.\r\nQuand la viande est saisie, couvrez chaque steak d\'une tranche de cheddar et laissez fondre le fromage.\r\nmettez un steak dans chaque pain.\r\nGarnissez de salade et de tomate.\r\nRecouvrez le tout avec le chapeau des pains et dégustez vos hamburgers m', './img/hamburgers-maison-ncd3.jpg'),
(38, 'Sushi Maison', 'Plât principal', '90min', '\"300 g Riz vinaigré\r\n200 g Poisson (saumon, maquereau ou sole)\r\n200 ml Eau froide\r\n3 Feuilles de nori\r\n2 cuillères à soupe Vinaigre de riz\r\nWasabi 1 cuillère à café\"\r\n', '\"Pour commencer, découpez des lamelles de poisson d’environ 1 cm d’épaisseur. Coupez-les ensuite dans le sens de la longueur.\r\nRéunissez l’eau froide et le vinaigre dans un bol. Disposez ensuite une feuille de nori sur une natte de bambou. Avec les doigts humectés dans le mélange eau/vinaigre, étalez environ 75 g de riz vinaigré en s’arrêtant à environ 2 cm sur le bord du haut.\r\nAjoutez une ligne de wasabi au centre, sur la largeur du riz. Disposez ensuite des lamelles de poisson.\r\nÀ l’aide de l', './img/sushis-maison-2rh3.jpg'),
(39, 'Paella traditinnelle', 'Plât principal', '80min', '\"Bouillon de volaille 1,5 l\r\nMoules 600 g\r\nRiz long grain 400 g\r\nPetit poulet en morceaux 1\r\nGambas 12\r\nAnneaux de calamars 250 g\r\nPetits pois écossés 250 g\r\nVin blanc sec 200 ml\r\nChorizo 1\r\nHuile d\'olive 100 ml\r\nPoivrons rouges 2\r\nSafran 1 dose\r\nSel, poivre \"\r\n', '\"Bouillon de volaille 1,5 l\r\nMoules 600 g\r\nRiz long grain 400 g\r\nPetit poulet en morceaux 1\r\nGambas 12\r\nAnneaux de calamars 250 g\r\nPetits pois écossés 250 g\r\nVin blanc sec 200 ml\r\nChorizo 1\r\nHuile d\'olive 100 ml\r\nPoivrons rouges 2\r\nSafran 1 dose\r\nSel, poivre \"\r\n', './img/paella-traditionnelle-2.jpg'),
(40, 'Choucroute', 'Plât principal', '130min', '\"Choucroute crue 2,2 kg\r\nPalette fumée 1 kg\r\nLard fumé en bande 500 g\r\nVin blanc d’alsace 500 ml\r\nSaucisses Montbéliard 3\r\nPommes de terre 5\r\nOignons 2\r\nHuile 1 cuillère à soupe\r\nBaies de genièvre 8\r\nClous de girofle 8\r\nPoivre \"\r\n', '\"Placez la choucroute dans une grande casserole d’eau. Portez à ébullition et faites blanchir pendant 5 minutes. Au bout de ce délai, égouttez et passez sous l’eau froide pour la rafraîchir.\r\nPelez et émincez les oignons. Faites-les revenir dans une grande cocotte avec une cuillère à soupe d’huile pendant 2 minutes. Ajoutez la choucroute en alternant avec les viandes. Placez les pommes de terre au-dessus.\r\nAjoutez les clous de girofle et les baies de genièvre. Assaisonnez avec du poivre avant d’', './img/choucroute-maison-2.jpg'),
(41, 'Poulet à la crème', 'Plât principal', '20min', 'Blancs de poulet 4\r\nCrème fraîche 5 cuillères à soupe\r\nMoutarde 2 cuillères à soupe\r\nThym séché 1 cuillère à café\r\nBeurre 10 g\r\nSel\r\n', '\"Découpez les blancs de poulet en gros cubes.\r\nMettez à fondre le beurre dans une poêle. Faites-y revenir les cubes de poulet à feu moyen pendant environ 8 minutes.\r\nAjoutez ensuite la crème fraîche et la moutarde. Assaisonnez à votre convenance avec du sel. Mélangez et laissez cuire pendant 2 minutes supplémentaires.\r\nParsemez de thym séché avant de déguster votre poulet à la crème.\"\r\n', './img/poulet-a-la-creme-7bd3.jpg'),
(42, 'Boulettes de viande à l\'a', 'Plât principal', '25min', '\"Boeuf haché 500 g\r\npulpe de tomates 200 g\r\noignon 1\r\nOeuf 1\r\nCoriandre fraîche 2 brins\r\nFarine 20 g\r\nharissa 1 cuillère à café\r\nHuile d\'olive 1 filet\r\nSel, poivre 1 pincée\"\r\n', '\"Épluchez et émincez l\'oignon. Lavez et ciselez la coriandre.\r\nMélanger la viande hachée avec l\'oignon, la coriandre, l’œuf, du sel et du poivre.\r\nFaites des boulettes de viande et roulez-les dans la farine.\r\nFaites chauffer un peu d\'huile d\'olive dans une sauteuse pour faire revenir les boulettes de viande.\r\nAjoutez les tomates et la harissa et mélangez.\r\nFaites mijoter à couvert 10 minutes et dégustez vos boulettes de viande à l\'algérienne. \"\r\n', './img/boulettes-de-viande-a-l-algerienne-3g63.jpg'),
(43, 'Steak au poivre', 'Plât principal', '30min', '\"\r\nVin blanc 125 ml\r\nCrème fraîche 125 ml\r\nBouillon de boeuf 125 ml\r\nBeurre 60 g\r\nPavés de boeuf épais 4\r\nBrandy 2 cuillères à soupe\r\nHuile d\'olive 1 cuillère à soupe\r\nGrains de poivre rose 1 cuillère à soupe\r\nGrains de poivre noir 1 cuillère à soupe\"\r\n', '\"Faites chauffer l\'huile et le beurre dans une grande poêle et saisissez les pavés de bœuf à feu vif. Laissez cuire 3 minutes de chaque côté afin qu\'ils restent saignants. Retirez de la poêle, couvrez et réservez au chaud.\r\nVersez le vin et le brandy dans la poêle et laissez mijoter 4 minutes jusqu\'à ce que le liquide ait réduit de moitié.\r\nAjoutez le bouillon et laissez réduire de nouveau de moitié.\r\nÉcrasez la moitié des grains de poivre.\r\nIncorporez la crème et tous les grains de poivre à la ', './img/steaks-au-poivre-2.jpg'),
(44, 'Fondu neuchâtloise', 'Plât principal', '25min', '\"\r\nGruyère 400 g\r\nEmmental 400 g\r\nVin blanc sec 35 cl\r\nMaïzena 30 g\r\nKirsch 20 ml\r\nAil 1 gousse\r\nJus de citron 5 ml\r\nNoix de muscade râpée 1 pincée\r\nPoivre \"\r\n', '\"Pelez la gousse d\'ail puis frottez-la contre les parois et le fond du caquelon. \r\nDans un bol, mélangez la Maïzena à une cuillère à soupe de vin blanc.\r\nFaites chauffer le caquelon à feu doux, râpez le gruyère et l\'emmental dedans\r\nVersez le reste du vin blanc sur le fromage. Ajoutez le bol de Maïzena, le kirsch et le jus de citron. \r\nPortez le tout à petits bouillons tout en remuant à l\'aide d\'une cuillère en bois jusqu\'à ce que la fondue neuchâteloise soit prête. \r\nDéposez le caquelon sur la ', './img/fondue-neuchateloise-2.jpg'),
(45, 'Nems', 'Plât principal', '55min', '\"Thon au naturel en boîte 400 g\r\nOignon blanc 1\r\nTomate 1\r\nCitrons 2\r\nBeurre 40 g\r\nFeuilles de brick 8\r\nHuile d\'olive 5 cuillères à soupe\r\nMayonnaise 3 cuillères à soupe\r\nAil 1 gousse\r\nGingembre 2 cm\r\nCoriandre 10 brins\r\nTabasco \r\nSel, Poivre \"\r\n', '\"Râpez le zeste d\'un citron et pressez-le. Pelez l\'oignon et l\'ail, émincez l\'oignon blanc et écrasez l\'ail. Ciselez la coriandre et coupez la tomate en petits dés.\r\nMélangez dans un bol le zeste et le jus de citron, l\'oignon, l\'ail, la tomate et la moitié de la coriandre. Versez l\'huile et quelques gouttes de Tabasco, salez, poivrez et mélangez. Zestez le citron restant et pressez son jus. Pelez et râpez le gingembre.\r\nÉgouttez et émiettez le thon dans un récipient. Ajoutez le zeste, 2 cuillère', './img/nems-thon-2.jpg'),
(46, 'Frite Maison', 'Plât principal', '40min', 'Pommes de terre Bintje 600 g\r\nHuile d\'olive 2 cuillères à soupe\r\nSel 1 pincée\"\r\n', 'Préchauffez le four à 220°C.\r\nLavez les pommes de terre puis épluchez-les.\r\nCoupez les pommes de terre en lamelles d\'1 cm d\'épaisseur puis débitez-les en bâtonnets.\r\nMettez les frites dans un saladier, arrosez-les avec l\'huile d\'olive et salez-les.\r\nMélangez pour bien répartir les ingrédients.\r\nCouvrez une plaque de papier cuisson et étalez les frites.\r\nEnfournez les frites 30 minutes.\r\n', './img/frites-maison-sans-friteuse-2.jpg'),
(47, 'Pâtes au chorizo et à la ', 'Plât principal', '20min', 'Pâtes 200 g\r\nCrème liquide 180 g\r\nChorizo 80 g\"\r\n', 'Plongez les pâtes dans une casserole d\'eau bouillante salée pour les faire cuire, en respectant le temps de cuisson indiqué sur l\'emballage.\r\nPendant ce temps, découpez le chorizo en rondelles.\r\nFaites revenir les rondelles de chorizo à la poêle jusqu\'à ce qu\'elles deviennent légèrement dorées.\r\nBaissez le feu, ajoutez la crème, mélangez et laissez revenir quelques minutes.\r\nÉgouttez les pâtes et mélangez-les à la crème au chorizo. Servez aussitôt les pâtes au chorizo et à la crème.\r\n', './img/pates-a-la-creme-et-au-chorizo-2.jpg'),
(48, 'Pavé au saumon', 'Plât principal', '19min', 'Pavés de saumon (avec la peau) 4\r\nMayonnaise 4 cuillères à soupe\r\nPesto 2 cuillères à soupe\r\nBasilic 1 botte\r\nCiboulette 1 botte\r\nHuile d\'olive 1 filet\r\nSel, Poivre\r\n', 'Préchauffez le four à 180°C.\r\nDéposez les pavés de saumon dans un plat creux, peau en dessous, avec un filet d\'huile d\'olive.\r\nSalez, poivrez, et enfournez 9 minutes. Laissez refroidir.\r\nMélangez la mayonnaise avec le pesto, lavez et découpez les herbes aux ciseaux.\r\nDressez les pavés de saumon sur un lit d\'herbes, ajoutez la sauce et servez sans attendre.\r\n', './img/shutterstock-1348530932-2.jpg'),
(49, 'Lasagne au boeuf et au co', 'Plât principal', '35min', 'Boeuf haché 700 g\r\nOignons 2\r\nLasagnes précuites 9 feuilles\r\nComté rapé 100 g\r\nBeurre 70 g\r\nFarine 50 g\r\nLait 50 cl\r\nCoulis de tomate 40 cl\r\nAil 1 gousse\r\nEstragon 4 brins\r\nNoix de muscade râpée 3 pincées\r\nOrigan 3 pincées\r\nSel, poivre 1 pincée\r\n', 'Préchauffez le four à 200°C.\r\nÉpluchez et émincez les oignons. Épluchez et hachez l\'ail.\r\nFaire revenir l\'oignon avec une noisette de beurre 4 à 5 minutes dans une grande poêle. Ajoutez l\'ail puis le bœuf haché et laissez cuire 6 à 7 minutes en remuant régulièrement.\r\nLavez et émincez l\'estragon et ajoutez-le à la viande en fin de cuisson.\r\nPréparez une béchamel en faisant fondre 50 g de beurre dans une casserole. Retirez la casserole du feu, ajoutez la farine et mélangez au fouet. Remettez la c', './img/lasagnes-au-boeuf-et-au-comte-2.jpg'),
(50, 'Kebab Maison', 'Plât principal', '15min', 'Pains pita 6\r\nÉpaule d’agneau 3 morceaux\r\nSalade verte 1\r\nTomates 4\r\nConcombre 1\r\nOignons 2\r\nSauce blanche 1 bol\r\nHuile d’olive ½ bol\r\nCitrons 2\r\nPiment doux 1\r\nAil 3 gousses\r\nPoudre aux 4 épices \r\n½ cuillère à café\r\nPaprika ½ cuillère à café\r\nSel, poivre', 'Remplissez un bol à moitié d’huile d’olive. Pelez et écrasez l’ail dans un saladier. Ajoutez-le à l’huile avec la poudre aux 4 épices et le piment doux découpé en petits morceaux. Assaisonnez avec du sel et du poivre. Ajoutez ensuite le jus de citron et mélangez.\r\nStriez la viande à l’aide d’un couteau. Faites-la ensuite mariner dans le mélange précédent. Recouvrez le récipient de film plastique et réservez au frais pendant une demi-journée.\r\nPassé ce délai, découpez la viande en fines lamelles.', './img/kebab-2.jpg'),
(51, 'Crispy tenders façon KFC', 'Plât principal', '20min', 'Huile de friture 500 ml\r\nFilets de poulet 4\r\nPétales de maïs 1 paquet\r\nFarine 100 g\r\nKetchup 1 petit bol\r\nŒuf 1\r\nAil séché 1 cuillère à café\r\nPaprika 1 cuillère à café\r\nLait 1 cuillère à café\r\nSel, poivre\r\n', 'Découpez les blancs de poulet en grosses lanières. Placez-les dans un saladier. Ajoutez le paprika et l’ail séché. Malaxez pour enrober les morceaux de poulet.\r\nDans une assiette, mélangez la farine avec une petite quantité de sel et de poivre. Placez-les pétales de maïs dans une assiette et écrasez-les légèrement. Dans une autre assiette, battez l’œuf avec le lait.\r\nRoulez ensuite les lanières de poulet dans la farine. Passez-les ensuite dans l’œuf battu avant de les rouler dans les pétales de ', './img/crispy-tenders-facon-kfc-2.jpg'),
(52, 'Gigot de mouton provençal', 'Plât principal', '50min', 'Gigot d\'agneau 1 kg\r\nOlives noires 100 g\r\nBeurre 50 g\r\nTomates cerises 10 (grosses)\r\nGousses d\'ail 4\r\nOignons 2\r\nHuile 2 cuillères à soupe\r\nVin blanc 1 grand verre\r\nSel, Poivre \r\nThym, laurier, sauge, basilic, persil', 'Préchauffez le four à 220°C.\r\nÉpluchez l\'ail et piquez deux gousses dans le gigot. Assaisonnez de sel et de poivre. Hachez les deux autres et réservez.\r\nÉpluchez et émincez les oignons en lamelles. Faites rôtir le gigot avec un oignon, le beurre, et ajoutez les fines herbes sur le dessus. Enfournez-le en l\'arrosant très régulièrement de son jus de cuisson.\r\nFaites revenir dans une sauteuse un oignon et deux gousses d\'ail hachés dans de l\'huile. Mouillez avec le vin blanc et laissez réduire. Ajou', './img/gigot-de-mouton-provencale-2.jpg'),
(53, 'Rôti de porc', 'Plât principal', '50min', 'Rôti de porc 600 g\r\nBeurre 25 g\r\nAil 1 gousse\r\nEau 5 cl\r\nHuile d\'olive \r\nSel, poivre', 'Préchauffez le four à 210°C. \r\nDéposez le rôti de porc dans un plat allant au four. Versez un filet d\'huile sur toute la longueur et déposez des noisettes de beurre sur la viande. Mettez l\'ail à côté du rôti et versez l\'eau. Salez et poivrez.  \r\nEnfournez 45 minutes en surveillant la cuisson. Au bout de 25 minutes, et régulièrement, sortez le rôti du four pour le mouiller avec le jus de cuisson. En cas d\'évaporation de la sauce, ajoutez un peu d\'eau. A la fin de la cuisson, le rôti de porc doit ', './img/roti-de-porc-2.jpg'),
(54, 'Spaghettis bolognaise', 'Plât principal', '50min', 'Tomates pelées 800 g\r\nSpaghetti 600 g\r\nBoeuf haché (5 % mat gr) 250 g\r\nFilet de poulet 150 g\r\nConcentré de tomates 2 cuillères à soupe\r\nCarotte 1\r\nOignon 1\r\nAil 1 gousse\r\nBranche de céleri 1/2\r\nOrigan 3 brins\r\nHuile d\'olive 3 cuillères à soupe\r\nSel, poivre', 'Hachez le filet de poulet, pelez et émincez l\'oignon et l\'ail. Pelez, lavez et coupez la carotte en tout petits dés. Lavez le céleri et coupez-le également en tout petits dés.\r\nFaites chauffer 2 cuillères à soupe d\'huile dans une sauteuse, faites-y revenir le bœuf et le poulet hachés. Quand la viande est dorée, réservez-la dans un saladier.\r\nVersez une cuillère d\'huile dans la sauteuse et faites-y revenir ail, oignon, carottes et céleri. Laissez dorer 2 minutes, puis remettez la viande. Mélangez', './img/spaghettis-bolognese-allegees-2.jpg'),
(55, 'Pancakes salés de Noël', 'Plât principal', '30min', 'Farine 250 g\r\nOeufs 3\r\nBacon 100 g\r\nBeurre 60 g\r\nLait 25 cl\r\nPomme de terre 1\r\nTomates cerises 1 poignée\r\nMayonnaise 4 cuillères à café\r\nLevure chimique 1/2 sachet\r\nOlives 1 poignée\r\nSel 1 pincée', 'Faites griller le bacon quelques minutes dans une poêle chaude sans ajouter de gras. Réservez-le.\r\nRâpez finement la pomme de terre et réservez-la. Mélangez dans un saladier la farine, le sel et la levure. Versez-y le lait et mélangez bien. Incorporez les oeufs et mélangez à nouveau.\r\nFaites fondre le beurre au micro-ondes. Versez-le sur la pâte à pancakes et fouettez vigoureusement pour obtenir une préparation bien homogène. Ajoutez la pomme de terre râpée.\r\nBeurrez une poêle anti-adhésive et p', './img/pancake-de-noel-sale-2.jpg'),
(56, 'Burger au Mont d\'or et au', 'Plât principal', '35min', 'Tranches de bacon 8\r\nSteaks hachés 4\r\nPains à burger 4\r\nOignon rouge 1\r\nMont d\'Or 4 cuillères à soupe\r\nConfit d\'oignon 4 cuillères à café\r\nSel, poivre', 'Coupez les pains à burgers en deux et faites-les griller sous le grill du four ou au grille-pain.\r\nMettez les tranches de bacon dans une poêle à feu moyen et faites-les griller jusqu\'à ce qu\'elles soient bien croustillantes et dorées. Une fois grillées, retirez-les de la poêle et réservez.\r\nToujours à feu moyen, ajoutez les steaks hachés dans la poêle et faites-les cuire environ 5 minutes de chaque côté, jusqu\'à obtenir la cuisson que vous souhaitez.\r\nEn fin de cuisson, versez 1 cuillère à soupe', './img/burger-mont-dor-bacon-2.jpg'),
(57, 'Curry d\'agneau', 'Plât principal', '115min', 'Épaule d\'agneau coupé en morceaux 1,2 kg\r\nTomates mûres 300 g\r\nLait de coco 1 boîte\r\nOignons 3\r\nPoivron rouge 1\r\nGousses d\'ail 4\r\nThym frais 1 bouquet\r\nCurry en poudre 2 cuillères à café\r\nHuile de tournesol 1 cuillère à soupe', 'Coupez l\'agneau en morceaux de taille moyenne. Farinez-les et retirez le surplus de farine puis réservez. \r\nÉpluchez et émincez l\'oignon et l\'ail. Lavez les tomates et coupez-les en petits morceaux. Lavez le poivron rouge, épépinez-le puis coupez-le en lanières. \r\nDans une casserole, faites revenir les morceaux d\'agneaux dans de l\'huile à feu moyen. \r\nAjoutez les légumes, le thym et 1 cuillère à café de curry. Mélangez le tout pendant 3 minutes puis ajoutez les tomates. \r\nCouvrez la casserole et', './img/curry-d-agneau-2.jpg'),
(58, 'Raclette halal', 'Plât principal', '30min', 'Pommes de terre 1 kg\r\nFromage à raclette 800 g\r\nViande des Grisons 8 tranches\r\nJambon de dinde 4 tranches\r\nJambon de poulet 4 tranches', 'Faites cuire les pommes de terre pendant 20 minutes dans un grand volume d\'eau bouillante. \r\nSortez le fromage à raclette du réfrigérateur 15 minutes avant de démarrer la raclette.\r\nDans un grand plat, disposez la charcuterie halal, et mettez le fromage à raclette dans une assiette.\r\nBranchez votre appareil à raclette, faites fondre le fromage à raclette et régalez-vous avec cette raclette halal !', './img/raclette-hallal-2.jpg'),
(59, 'Pizza margherita', 'Plât principal', '15min', 'Pâte à pizza 1\r\nCoulis de tomates 200 ml\r\nMozzarella 2 boules\r\nTomates cerises 5\r\nBasilic frais Quelques feuilles', 'Préchauffez le four à 240°C.\r\nEtalez la pâte à pizza (vous pouvez utiliser notre recette pour la réaliser vous-même) sur une plaque de cuisson recouverte de papier de cuisson, et étalez le coulis de tomate sur toute la surface.\r\nCoupez la mozzarella en fines tranches et disposez-les sur la pizza, puis ajoutez les tomates cerises coupées en 2.\r\nEnfournez pour 10 minutes en surveillant la cuisson, et déposez les feuilles de basilic avant de servir.', './img/pizzamargarita-280x200.jpg'),
(60, 'Couscous d\'agneau aux lég', 'Plât principal', '165min', 'Semoule fine 600 g\r\nGigot d\'agneau 6 tranches\r\nPois chiches 300 g\r\nBeurre 90 g\r\nTomates 4\r\nCarottes 3\r\nPommes de terre 3\r\nCourgettes 3\r\nOignons 3\r\nAil 3 gousses\r\nChou blanc 1 quartier\r\nCoulis de tomate 1 cuillère à soupe\r\nPaprika 1 cuillère à soupe\r\nPiment en poudre 1 cuillère à café\r\nCoriandre 1 cuillère à café\r\nNoix de muscade 2 pincées\r\nCannelle 1 pincée\r\nHuile d\'olive \r\nHarissa \r\nSel, Poivre', 'Préchauffez le four à 180°C. Dans un plat creux allant au four, étalez la viande, salez, saupoudrez de paprika, arrosez d\'un généreux filet d\'huile d\'olive, et répétez l\'opération sur la deuxième face du gigot. Enfournez et faites cuire une heure en retournant régulièrement les tranches de viande.\r\nPendant ce temps, plongez les tomates dans l\'eau bouillante 1 minute, pelez-les et écrasez-les.\r\nPelez et hachez l\'ail et les oignons. Faites chauffer 2 cuillères à soupe d\'huile dans la partie basse ', './img/couscous-d-agneau-aux-legumes-2.jpg'),
(61, 'Gratin de pâtes', 'Plât principal', '25min', 'Penne 400 g\r\nFromage râpé 100 g\r\nBeurre 50 g\r\nCrème fraîche liquide 10 cl\r\nAil Une gousse\r\nSel, poivre', 'Préchauffez votre four à 200 °C. \r\nPelez et émincez la gousse d\'ail. Coupez le beurre en petits morceaux.\r\nFaites bouillir une grande casserole d\'eau salée et faites cuire les pâtes. Suivez les indications du sachet pour la cuisson. Egouttez-les.\r\nVersez les pâtes dans un plat à gratin. Versez la crème fraîche et le fromage râpé sur les pâtes. Parsemez de petits morceaux d\'ail. Mélangez le tout dans le plat à gratin. Déposez les morceaux de beurre au-dessus des pâtes. \r\nMettez au four pendant 20', './img/gratin-de-pates-2.jpg'),
(62, 'Coquillettes au jambon', 'Plât principal', '22min', 'Coquillettes 250 g\r\nTomates pelées 250 g\r\nJambon 200 g\r\nEau 150 g\r\nOignon 1\r\nParmesan râpé 50 g\r\nHuile 15 g\r\nSel, poivre', 'Pelez et émincez l’oignon.\r\nMettez à chauffer l’huile et faites-y revenir l’oignon pendant quelques minutes. Ajoutez les tomates pelées et l’eau avant d’assaisonner avec du sel et du poivre. Laissez mijoter pendant environ 10 minutes.\r\nPendant ce temps, cuisez les coquillettes dans une casserole d’eau bouillante selon les instructions du paquet. Découpez le jambon en morceaux.\r\nMixez ensuite la préparation à la tomate. Incorporez les coquillettes et le jambon. Mélangez et laissez cuire pendant 2', './img/coquillettes-au-jambon-ckz3.jpg');

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
  MODIFY `idRecette` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
