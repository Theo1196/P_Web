<?php
session_start();
include("Database.php");
$db = new Database();
$recttes = $db->getAllRecettes();
foreach($recttes as $rectte){

    echo '<img src="data:image/jpeg;base64,'.base64_encode($rectte['recImage']).'"/>';
}
// important d'avoir enctype dans le form
echo "<form method='post' action='checkRecette.php' enctype='multipart/form-data'>";
echo "<input type='file' name='addFile'>";
echo "<input type='submit' value='upload'>";


?>