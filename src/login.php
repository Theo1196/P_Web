<!-- 
    Auteur: Luca
 -->
 <?php
session_start();
include("Database.php");
$db = new Database();
$user = $db->getUser($_POST);
//crée une session avec l'utilisateur
if ($user) {
    $_SESSION["user"] = $user;
}
//renvois à la page d'avant
header("location: ./Accueil.php");
die();
?>