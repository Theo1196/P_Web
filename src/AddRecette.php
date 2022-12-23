<!-- 
Auteur : moi 
Date : 25.11.2022
Lieu : ETML 
Description : Page pour la page d"accueil du site Recettes.
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

        //     echo "<img src=". $rectte["recImage"] ." alt="image'>";
        //     // echo '<img src="data:image/jpeg;base64,'.base64_encode($rectte['recImage']).'"/><br>';
        // }
        // important d'avoir enctype dans le form
        ?>
        <form method="post" class="addrecette" action="checkRecette.php" enctype="multipart/form-data">
            <div class="col-md-4">
                <div class="form-group label-floating">
                    <label class="control-label" for="recName">Nom de la recette: </label>
                    <input class="form-control" type="text" name="recName" id="recName" v-model="Nom"><br>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group label-floating">
                    <label class="control-label" for="recCategorie">Categorie: </label>
                    <select name="recCategorie" id="recCategorie">
                        <option value="default">--Selectioner une catégorie--</option>
                        <option value="Plat">Plât principal</option>
                        <option value="Dessert">Dessert</option>
                        <option value="Entrée">Entrée</option>
                        <option value="sauce">Sauce</option>
                        <option value="boisson">Boisson</option>
                    </select>
                    <br>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group label-floating">
                    <label class="control-label" for="recTemps">Temps de préparation/cuisson: </label>
                    <input class="form-control" type="text" name="recTemps" id="recTemps" v-model="Temps"><br>
                </div>
            </div>
            <div class="formAddRecette">
                <div class="col-md-4">
                    <div class="form-group label-floating">
                        <label class="control-label" for="recIngredient">Ingrédients: </label>
                        <input class="form-control" type="text" name="recIngredient" id="recIngredient" v-model="Ingrédients"><br>
                    </div>
                </div>
                <button type="button" class="addButton" id="clickMe">Ajouter un ingredient</button>
            </div>
            <div class="row" id="addRowsHere">

            </div>
            <div class="formAddRecette">
                <div class="col-md-4">
                    <div class="form-group label-floating">
                        <label class="control-label" for="recPreparation">Étapes de preparation :</label>
                        <input class="form-control" type="text" name="recPreparation" id="recPreparation" v-model="Préparation"><br>
                    </div>
                </div>
                <button type="button" class="addButton" id="clickMe2">Ajouter une étape </button>
            </div>
            <div class="row" id="addRowsHere2">

            </div>
            <label for="addFile">Ajouter une image :</label>
            <input type="file" name="addFile"> <br>
            <input class="addBtn" type="submit" value="Ajouter la recette">
        </form>

        <script>
            document.getElementById("clickMe").onclick = function() {
                //first div
                var newDivCol = document.createElement("div");
                newDivCol.setAttribute("class", "col-md-4");
                //second div
                var newDivForm = document.createElement("div");
                newDivForm.setAttribute("class", "form-group label-floating");
                newDivCol.appendChild(newDivForm);

                //label
                var newlabel = document.createElement("label");
                newlabel.setAttribute("class", "control-label");
                newlabel.innerHTML = "Nouveau ingrédient :";
                newDivForm.appendChild(newlabel);

                //input
                var newInput = document.createElement("input");
                newInput.setAttribute("type", "text");
                newInput.setAttribute("class", "form-control");
                newInput.setAttribute("v-model", "Ingrédients");
                newDivForm.appendChild(newInput);

                var element = document.getElementById("addRowsHere");
                element.appendChild(newDivCol);
            };

            document.getElementById("clickMe2").onclick = function() {
                //first div
                var newDivCol = document.createElement("div");
                newDivCol.setAttribute("class", "col-md-4");
                //second div
                var newDivForm = document.createElement("div");
                newDivForm.setAttribute("class", "form-group label-floating");
                newDivCol.appendChild(newDivForm);

                //label
                var newlabel = document.createElement("label");
                newlabel.setAttribute("class", "control-label");
                newlabel.innerHTML = "Nouvelle étapes de preparation :";
                newDivForm.appendChild(newlabel);

                //input
                var newInput = document.createElement("input");
                newInput.setAttribute("type", "text");
                newInput.setAttribute("class", "form-control");
                newInput.setAttribute("v-model", "Ingrédients");
                newDivForm.appendChild(newInput);

                var element = document.getElementById("addRowsHere2");
                element.appendChild(newDivCol);
            };
        </script>
    </main>
    <footer>
        <hr>
        <p class="copyright">Copyright © - Luca, Veprim, Théo</p>
    </footer>
</body>

</html>