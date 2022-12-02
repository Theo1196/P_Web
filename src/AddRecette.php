<link rel="stylesheet" href="index.css">
<?php
session_start();
include("Database.php");
$db = new Database();
$recttes = $db->getAllRecettes();
foreach($recttes as $rectte){

    echo '<img src="data:image/jpeg;base64,'.base64_encode($rectte['recImage']).'"/><br>';
}
// important d'avoir enctype dans le form
echo "<form method='post' action='checkRecette.php' enctype='multipart/form-data'>";
echo "<label for='recName'>Nom de la recette: </label>";
echo "<input type='text' name='recName' id='recName'><br>";
echo "<label for='recCategorie'>categorie: </label>";
echo "<input type='text' name='recCategorie' id='recCategorie'><br>";
echo "<label for='recPreparation'>preparation: </label>";
echo "<input type='text' name='recPreparation' id='recPreparation'><br>";

echo "<input type='file' name='addFile'>";
echo "<input type='submit' value='upload'></form>";



?>