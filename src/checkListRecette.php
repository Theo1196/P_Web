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