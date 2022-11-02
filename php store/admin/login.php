<?php
if(isset($_POST['user']) && isset($_POST['password'])){
       
         $user = $_POST['user'];
         $password = $_POST['password'];
    if($user = "admin" && $password = "admin"){
        session_start();
        $_SESSION['user'] = $user;
        $_SESSION['password'] = $password;
    header("Location:index.php");
    }


}else{
header("Location:login-form.php");
}

?>