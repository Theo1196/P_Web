<!-- 
Auteur : Luca Paul 
Date : 25.11.2022
Lieu : ETML 
Description : Page pour vérifier la page des contacte
-->
<?php
var_dump($_POST);
$valide = 0;
if($_POST["name"] == null || $_POST["surname"] == null || $_POST["localite"] == null || $_POST["email"] == null){
    echo "Veuillez renseigner tous les champs obligatoire";
}
?>