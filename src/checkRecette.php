<?php
$valide = 0;
include("database.php");
$db = new Database();

$date = new date("y");
$date->format('Y');
$file = $_FILES["addFile"][];
$image = $_FILES["addFile"]["tmp_name"];
$path = "./img/" . $file;
if($_POST["recName"] == null || $_POST["recCategorie"] == null || $_POST["recPreparation"] == null){
    echo "veuiller remplire tout les champs";
    $valide = 0;
}
else{
    $valide = 1;
}

if($valide == 1){
    move_uploaded_file($image, $path);
    var_dump($_POST);
    $addrecette = $db->addOneRecette($_POST["recName"],$_POST["recCategorie"],$_POST["recPreparation"],$path);
    // header("Location: ./Addrecette.php");
    // die();

}
?>