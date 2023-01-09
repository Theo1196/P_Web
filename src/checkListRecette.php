<!-- 
Auteur : Luca Paul 
Date : 25.11.2022
Lieu : ETML 
Description : Page pour lister toutes les recette
-->

<?php
include("Database.php");
$db = new Database();
$recttes = $db->getAllRecettes();
foreach($recttes as $rectte){
    if($_GET["idRecette"] == $rectte["idRecette"]){
        $delete = $db->deleteOneRecette($rectte["idRecette"]);
        unlink($rectte["recImage"]);
        header("Location: ./Listrecette.php");
        die();
        }
    }
?>