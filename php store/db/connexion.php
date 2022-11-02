<?php
function connectMaBasi(){
$bd = mysqli_connect ('localhost', 'root', '','ecommerce');
return $bd;
}
?>