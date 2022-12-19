<!-- 
Auteur : Thibeau Racine
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
            <ul class="nav-bar">
                <li><a class="nav-btn" href="Accueil.php"><h1>Accueil</h1></a></li>
                <li><a class="nav-btn" href="AddRecette.php"><h1>Ajouter une recette</h1></a></li>
                <li><a class="nav-btn" href="ListRecette.php" style=" text-decoration: underline;"><h1>Liste des recettes</h1></a></li>
                <li><a class="nav-btn" href="Contact.php"><h1>Contact</h1></a></li>
            </ul>
        </div>
    </header>
    <main>

        <h1>Liste des recettes</h1>
        <?php
        include("Database.php");
        $db = new Database();
        $recttes = $db->getAllRecettes();
        foreach($recttes as $rectte){
            if($_GET["idRecette"] == $rectte["idRecette"]){
                echo "<img src=". $rectte["recImage"] ." alt='image'><br>";
                echo "Nom du plat: " . $rectte["recTitre"] . "<br><br>";
                echo "Categorie: " . $rectte["recCategorie"] . "<br><br>";
                echo "Temps de préparation: " . $rectte["recTemps"] . "<br><br>";

                $recIngredients = explode(";", $rectte["recIngredients"]);
                foreach($recIngredients as $recIngredient){
                    echo "<ul><li>". $recIngredient ."</li></ul>";
                }

                echo "Preparation: " . $rectte["recPreparation"] . "<br><br>";

            }
        }
        ?>

    </main>
    <footer>
        <hr>
        <p class="copyright">Copyright © - Luca, Veprim, Théo</p>
    </footer>
</body>
</html>
