<?php
require("../db/commandes.php");
require("../db/connexion.php");

            if(isset($_POST['submit'])){
          if( isset($_POST['produit']) && isset($_POST['prix']) && isset($_POST['image']) && isset($_POST['categorie'])){
              
              $nom = $_POST['produit'];
              $prix = $_POST['prix'];
              $categorie = $_POST['categorie'];
              $image = $_POST['image'];
              
             ajouter($nom,$categorie,$prix,$image);
           header("Location:ajouter.php");
              
               }else 
                      {header("Location:ajouter.php");}
            }
        ?>