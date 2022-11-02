<?php
require("../db/commandes.php");
require("../db/connexion.php");

            if(isset($_POST['submit'])){
          if( isset($_POST['id'])){
              
              $id = $_POST['id'];
              
              
             supprimer($id);
             header("Location:supprimer.php");
              
               }else 
                      {header("Location:supprimer.php");}
            }
        ?>