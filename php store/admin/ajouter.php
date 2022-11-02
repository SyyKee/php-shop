<?php

require("../db/commandes.php");
session_start();
if(!isset($_SESSION['user']) && !isset($_SESSION['password'])){
header("Location:login_form.php");

}
?>
<html>
     
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <title>Headers · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/headers/">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="headers.css" rel="stylesheet">
  
  </head>
    
    
    <body>
        <form method="post" action="ajouter_commande.php">
  <div class="mb-3">
    <label name="produit"  class="form-label">Nom du Produit</label>
    <input name="produit" type="text" class="form-control"  aria-describedby="emailHelp">
    <div  class="form-text"></div>
  </div>
  <div class="mb-3">
    <label name ="prix"  class="form-label">Prix</label>
    <input name ="prix" type="text" class="form-control" >
  </div>
        <div class="mb-3">
    <label name ="image"  class="form-label">Image</label>
    <input name ="image" type="text" class="form-control" >
  </div>
        <div class="mb-3">
    <label name ="categorie"  class="form-label">Catégorie</label>
    <input name ="categorie" type="text" class="form-control" >
  </div>
   
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input">
    <label class="form-check-label" >Check me out</label>
  </div>
  <button name="submit" type="submit" class="btn btn-primary">Submit</button>
        
</form>      
        
        
        
    
        </body>
</html>
