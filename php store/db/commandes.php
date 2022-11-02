<?php
//require("connexion.php");



function ajouter($nom,$categorie,$prix,$image){
   
    if(connectMaBasi()){
    $bd= connectMaBasi() ;
   $sql = "INSERT INTO produits (nom, categorie, prix,image)VALUES ('$nom','$categorie','$prix','$image')";
    $resultat = mysqli_query($bd,$sql) or die ('Erreur SQL !'.$sql.'<br />'.mysqli_error());
    return $resultat;
    mysqli_close();
    
    }
    
}
  //----------------------------------------------------------------------------------------------------


function afficher_musique(){
    
     
    
    if(connectMaBasi())
    { 
        $bd= connectMaBasi() ;
      $sql = 'SELECT * FROM produits WHERE categorie="musique"';
      $resultat = mysqli_query($bd,$sql) or die ('Erreur SQL !'.$sql.'<br />'.mysqli_error());
        
        return $resultat;
       
        
        mysqli_close();
    }
    
}
      //----------------------------------------------------------------------------------------------------
    function afficher_livre(){
   
     
    
    if(connectMaBasi())
    { 
        $bd= connectMaBasi() ;
      $sql = 'SELECT * FROM produits WHERE categorie="livre" ';
      $resultat = mysqli_query($bd,$sql) or die ('Erreur SQL !'.$sql.'<br />'.mysqli_error());
        
        return $resultat;
       
        
        mysqli_close();
    }
        
    }
          //----------------------------------------------------------------------------------------------------
        function afficher_jouets(){
    
     
    
    if(connectMaBasi())
    { 
        $bd= connectMaBasi() ;
      $sql = 'SELECT * FROM produits WHERE categorie="jouets"';
      $resultat = mysqli_query($bd,$sql) or die ('Erreur SQL !'.$sql.'<br />'.mysqli_error());
       
        return $resultat;
       
        
        mysqli_close();
    }
        }
        
              //----------------------------------------------------------------------------------------------------
            function afficher(){
   
     
    
    if(connectMaBasi())
    { 
        $bd= connectMaBasi() ;
      $sql = 'SELECT * FROM produits';
      $resultat = mysqli_query($bd,$sql) or die ('Erreur SQL !'.$sql.'<br />'.mysqli_error());
        
        return $resultat;
      
        
        mysqli_close();
    }
        
}


          //----------------------------------------------------------------------------------------------------    
            
function supprimer($id){
    if(connectMaBasi())
    {
        $bd= connectMaBasi() ;
    $sql = "DELETE FROM produits WHERE ID=$id";
    $resultat = mysqli_query($bd,$sql) or die ('Erreur SQL !'.$sql.'<br />'.mysqli_error());
    return $resultat;
    mysqli_close();
    
    }

}


//--------------------------------------------------------------------------------------------------------------

function Ajouter_panier($ID_user,$nom,$prix,$image,$ID_produit){
 if(connectMaBasi()){
    $bd= connectMaBasi() ;
   $sql = "INSERT INTO panier ( ID_user , Nom , Prix , image ,ID_produit)VALUES ('$ID_user','$nom','$prix','$image','$ID_produit')";
    $resultat = mysqli_query($bd,$sql) or die ('Erreur SQL !'.$sql.'<br />'.mysqli_error());
    return $resultat;
    mysqli_close();
    
    }
}

//--------------------------------------------------------------------------------------------------------------------

                function afficher_panier($ID){
   
     
    
    if(connectMaBasi())
    { 
        $bd= connectMaBasi() ;
      $sql = "SELECT * FROM panier WHERE ID_user=$ID";
      $resultat = mysqli_query($bd,$sql) or die ('Erreur SQL !'.$sql.'<br />'.mysqli_error());
        
        return $resultat;
      
        
        mysqli_close();
    }
        
}

       
 ?>