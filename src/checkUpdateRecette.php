<!-- 
Auteur : Luca Paul 
Date : 25.11.2022
Lieu : ETML 
Description : Page pour vérifier la page des recette
-->

<?php
include("Database.php");
$db = new Database();
$valide = 1;
$strIngredient = "";
// var_dump($_POST);
for ($nb = 1; $nb <= $_GET["nbIngredients"]; $nb++) {
    if ($_POST["ingredient" . $nb] == null) {
        echo "pas bien";
        $valide = 0;
    }
    if ($valide == 1) {
        $strIngredient = $strIngredient . $_POST["ingredient" . $nb] . ";";
    }
}
if ($_POST["name"] == null || $_POST["categorie"] == null || $_POST["Temps"] == null || $_POST["preparation"] == null) {
    $valide = 0;
}
if ($valide == 1) {
    $strIngredient = substr($strIngredient, 0, -1);
    $update = $db->updateRecette($strIngredient, $_GET["idRecette"]);
    header("Location: ./Listrecette.php");
    die();
}
if ($valide == 0) {
    echo "veuillez renseigner tous les champs.";
}
?>