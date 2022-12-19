<?php
var_dump($_POST);
$valide = 0;
if($_POST["name"] == null || $_POST["surname"] == null || $_POST["localite"] == null || $_POST["email"] == null){
    echo "Veillez remplire les champs obligatoire";
}
?>