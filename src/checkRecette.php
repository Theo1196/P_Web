<!-- 
Auteur : Luca Paul 
Date : 25.11.2022
Lieu : ETML 
Description : Page pour vérifier tous les champs pour ajouter une rectte
-->
<?php
$valide = 0;
include("database.php");
$db = new Database();

$nomImage = date("Ymdhis");
$extention = pathinfo($_FILES["addFile"]["name"], PATHINFO_EXTENSION);
$nomFinal = $nomImage. "." . $extention;

$image = $_FILES["addFile"]["tmp_name"];
$path = "./img/" . $nomFinal;
if($_POST["recName"] == null || $_POST["recCategorie"] == null || $_POST["recPreparation"] == null){
    echo "Veuiller renseigner tous les champs";
    $valide = 0;
}
elseif($extention == "jpg" || $extention == "png" || $extention == "jpeg"){
    $valide = 1;
}
else{
    echo "L'image doit être sous le format 'jpg' ou 'png'";
    $valide = 0;
}

if($valide == 1){
    move_uploaded_file($image, $path);
    var_dump($_POST);
    $addrecette = $db->addOneRecette($_POST["recName"],$_POST["recCategorie"],$_POST["recPreparation"],$path);
    header("Location: ./Addrecette.php");
    die();

}
?>