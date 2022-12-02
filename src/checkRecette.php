<?php
include("database.php");
$db = new Database();

$file = $_FILES["addFile"]["tmp_name"];
$image = file_get_contents($file);
$addrecette = $db->addOneRecette("test","test","test",$image);
header("Location: ./Addrecette.php");
die();
?>