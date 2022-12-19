<!-- 
Auteur : Théo Dormond
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
                <li><a class="nav-btn" href="AddRecette.php" ><h1>Ajouter une recette</h1></a></li>
                <li><a class="nav-btn" href="ListRecette.php"><h1>Liste des recettes</h1></a></li>
                <li><a class="nav-btn" href="" style=" text-decoration: underline;"><h1>Contact</h1></a></li>
            </ul>
        </div>
    </header>
    <main>
        <h1 class="titleContact">Page pour nous contacter</h1>

        <?php
        echo "<form action='checkContact.php' class='Form-contact' method='POST'>";
        ?>
            <label for="name">Nom :</label>
            <input type="text" id="name" name="name" placeholder="Votre nom...">
            <label for="surname">Prénom :</label>
            <input type="text" name="surname" id="surname" placeholder="Votre prénom...">
            <label for="email">Mail :</label>
            <input type="text" name="email" id="email" placeholder="Votre adresse mail...">
            <label for="localite">Localité :</label>
            <input type="text" name="localite" id="localite" placeholder="Votre localité...">
            <label for="info">Autre information :</label>
            <textarea name="info" id="" cols="30" rows="2"></textarea>
            <input type="submit" name="submitContact" id="submitContact" value="Envoyer">
        <?php
        echo "<form>";
        ?>
    </main>
    <footer>
        <hr>
        <p class="copyright">Copyright © - Luca, Veprim, Théo</p>
    </footer>
</body>

</html>