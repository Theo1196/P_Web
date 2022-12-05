<?php
include("database.php");
$db = new Database();

$file = $_FILES["addFile"]["name"];
$image = $_FILES["addFile"]["tmp_name"];
$path = "./img/" . $file;
move_uploaded_file($image, $path);
var_dump($_POST);
$addrecette = $db->addOneRecette($_POST["recName"],$_POST["recCategorie"],$_POST["recPreparation"],$path);
header("Location: ./Addrecette.php");
die();
?>