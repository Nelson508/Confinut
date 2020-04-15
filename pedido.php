<?php  
include 'global/config.php';
include 'global/conexion.php';
include "global/sesiones.php";
include 'Carrito.php';
include 'templates/cabeceraUsuario.php';
include 'templates/sidebarUsuario.php';
?>

<div class="content-wrapper" style="padding: 1%">
<?php
 
 $conn= new DB;

if($_POST){
    $total=0;
    $SID=session_id();
    $Correo=$_POST['email'];
    foreach($_SESSION['CARRITO'] as $indice=>$producto){

        $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);

    }
        $sentencia=$conn->connect()->prepare("INSERT INTO `cfnpedido` 
        (`IDordendecompras`,`ClavePedido`,`Correo`, `Totalfinal`, `Comentario`, `Fecha`,`status`) 
        VALUES (NULL, :ClavePedido,:Correo, :Totalfinal,'', NOW(),'pendiente');");

        $sentencia->bindParam(":ClavePedido",$SID);
        $sentencia->bindParam(":Correo",$Correo);
        $sentencia->bindParam(":Totalfinal",$total);  
        $sentencia->execute();
        $idPedido=$conn->connect()->lastInsertId();

        foreach($_SESSION['CARRITO'] as $indice=>$producto){

            $sentencia=$conn->connect()->prepare("INSERT INTO `cfncarritocompras` 
            (`ID_CarritoCompras`, `IDPedido`, `IDProducto`, `PrecuiUnitario`, `Cantidad`, `Detalle`) 
            VALUES (NULL, :IDPedido, :IDProducto, :PrecuiUnitario, :Cantidad, NULL);");

            $sentencia->bindParam(":IDPedido",$idPedido);
            $sentencia->bindParam(":IDProducto",$producto['CANTIDAD']);
            $sentencia->bindParam(":PrecuiUnitario",$producto['PRECIO']);  
            $sentencia->bindParam(":Cantidad",$producto['CANTIDAD']); 
            $sentencia->execute();
            $idVenta=$conn->connect()->lastInsertId();

        }

    //echo "<h3>".$total."<h3>";

    unset($_SESSION['CARRITO']);

}
?>

<div class="jumbotron text-center">
    <h1 class="display-4">¡Pedido en Camino!</h1>
    <hr class="my-4">
    <p class="lead"> Su monto del pedido es: 
        <h4>$<?php echo number_format($total); ?> </h4>    
    </p>
</div>
</div>

<?php
include 'templates/piePagina.php';
?>
