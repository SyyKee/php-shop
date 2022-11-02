<?php
include("./db/connexion.php");


    $bd= connectMaBasi();

     if(isset($_POST['submit'])){
       session_start();
          
            $user = $_POST['user'];
            $password = $_POST['password'] ;  
            $_SESSION['user']= $user;
         
         $sql="SELECT * FROM users WHERE login = '$user' AND motDePasse = '$password'";
         if ($resultat =mysqli_query($bd,$sql)){
         $resultat = mysqli_query($bd,$sql);  
          $total = mysqli_num_rows($resultat);
             
             
    if($total =='1'){
        while($row = mysqli_fetch_array($resultat)){
         $_SESSION['ID'] = $row['ID'];
        }
        header("Location:index.php") ;
}else{
    header("Location:login_form");
        
    echo '<h1>user ou mot de passe incorrect</h1>';
        
    }

         }
}
?>


