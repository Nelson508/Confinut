<?php

if(isset($_POST["btnLogin"])){

    include "global/conexion.php";

    $txtEmail = ($_POST['txtEmail']);
    $txtPassword=($_POST['txtPassword']);

    $conn= new DB;

    $sentenciaSQL=$conn->connect()->prepare("SELECT * FROM cfnusuario 
                                              WHERE Email=:Email
                                              AND Password=:Password");

    $sentenciaSQL->bindParam("Email",$txtEmail,PDO::PARAM_STR);
    $sentenciaSQL->bindParam("Password",$txtPassword,PDO::PARAM_STR);
    $sentenciaSQL->execute();

    $registro=$sentenciaSQL->fetch(PDO::FETCH_ASSOC);
           
            
    $numerRegistros=$sentenciaSQL->rowCount();

    if($numerRegistros>=1){
        session_start();
        $_SESSION['usuario']=$registro;
        echo "Bienvenido...";
       if($registro['Tipo_Usuario']=='Administrador'){
        header('Location:Vistapanel.php');

       }else if($registro['Tipo_Usuario']=='Persona'){
        header('Location:indexUsuario.php');

       }
        

    }else{
        echo "No se encontraron registros";

    }

    echo "<br/> hay que validar el correo y la cotraseña";
}
        

?>