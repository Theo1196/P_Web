<?php
include("Database.php");
$db = new Database();
$valide = 1;
$strIngredient = "";
// var_dump($_POST);
for($nb = 1; $nb <= $_GET["nbIngredients"]; $nb++){
    if($_POST["ingredient". $nb] == null){
        echo "pas bien";
        $valide = 0;
    }
    echo $_POST["ingredient". $nb] . "<br>";
    if($valide == 1){
        $strIngredient = $strIngredient . $_POST["ingredient". $nb] . ";";
    }
}
$strIngredient = substr($strIngredient,0,-1);
echo $strIngredient;
$update = $db->updateRecette($strIngredient, $_GET["idRecette"]);
header("Location: ./Listrecette.php");
die();
?>