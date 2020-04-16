<?php

if(isset($_POST["btnLogin"])){

    include "global/conexion.php";

    $txtEmail = ($_POST['txtEmail']);
    $txtPassword=($_POST['txtPassword']);

    $conn= new DB;

    $sentenciaSQL=$conn->connect()->prepare("SELECT * FROM cfnusuario 
                                              WHERE email=:email
                                              AND password=:password");

    $sentenciaSQL->bindParam("email",$txtEmail,PDO::PARAM_STR);
    $sentenciaSQL->bindParam("password",$txtPassword,PDO::PARAM_STR);
    $sentenciaSQL->execute();

    $registro=$sentenciaSQL->fetch(PDO::FETCH_ASSOC);
           
            
    $numerRegistros=$sentenciaSQL->rowCount();

    if($numerRegistros>=1){
        session_start();
        $_SESSION['usuario']=$registro;
        echo "Bienvenido...";
       if($registro['tipo_usuario']='Administrador'){
        header('Location:Vistapanel.php');

       }else if($registro['tipo_usuario']=="Persona"){
        header('Location:indexUsuario.php');

       }
        

    }else{
        echo "No se encontraron registros";

    }

    echo "<br/> hay que validar el correo y la cotraseña";
}
        

?>