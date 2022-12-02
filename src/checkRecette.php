<?php
include("database.php");
$db = new Database();

$file = $_FILES["addFile"]["tmp_name"];
$image = file_get_contents($file);

var_dump($_POST);
$addrecette = $db->addOneRecette($_POST["recName"],$_POST["recCategorie"],$_POST["recPreparation"],$image);
header("Location: ./Addrecette.php");
die();
?>