<?php

session_start();

if(!isset($_SESSION['usuario'])){
    
    echo "redirigir al login";
    header('Location:index.php');
}else{
   // print_r($_SESSION['usuario']);
}

//session_destroy();
?>