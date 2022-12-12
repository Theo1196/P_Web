<!-- 
Auteur : moi
Date : 25.11.2022
Lieu : ETML 
Description : Page pour la page d'accueil du site Recettes.
-->
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <title>Accueil - Recettes</title>
</head>

<body>
    <header>
        <form action="" class="Form-login">
            <label for="login">Login :</label>
            <input type="text" id="login" name="login" placeholder="Votre login...">
            <label for="password">Mot de passe :</label>
            <input type="password" id="password" name="password" placeholder="Votre mot de passe...">
            <input type="submit" value="Se connecter" name="submit">
        </form>

        <div class="Container-header">
            <ul>
                <li><a class="nav-btn" href="Accueil.php" ><h1>Accueil</h1></a></li>
                <li><a class="nav-btn" href="AddRecette.php" style=" text-decoration: underline;"><h1>Ajouter une recette</h1></a></li>
                <li><a class="nav-btn" href="ListRecette.php"><h1>Liste des recettes</h1></a></li>
                <li><a class="nav-btn" href="Contact.php"><h1>Contact</h1></a></li>

            </ul>
        </div>
    </header>
    <main>
        <?php
        session_start();
        include("Database.php");
        $db = new Database();
        $recttes = $db->getAllRecettes();
        // foreach($recttes as $rectte){
            
        //     echo "<img src=". $rectte["recImage"] ." alt='image'>";
        //     // echo '<img src="data:image/jpeg;base64,'.base64_encode($rectte['recImage']).'"/><br>';
        // }
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
    </main>
    <footer>
        <hr>
        <p class="copyright">Copyright © - Luca, Veprim, Théo</p>
    </footer>
</body>

</html>