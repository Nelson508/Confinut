<?php
include "global/sesiones.php";
include "global/conexion.php";

$conn= new DB;

//Pedidos pendientes

$sentenciaSQL=$conn->connect()->prepare("SELECT count(*) VentasPendientes 
                                         FROM cfnpedido WHERE status='Pendiente'");
$sentenciaSQL->execute();
$registro=$sentenciaSQL->fetch(PDO::FETCH_ASSOC);

$VentasPendientes=$registro['VentasPendientes'];

//Pedidos completados

$sentenciaSQL=$conn->connect()->prepare("SELECT count(*) totalVentas, SUM(Totalfinal) as IngresosTotalVentas  
                                         FROM cfnpedido WHERE status='Completada'");
$sentenciaSQL->execute();
$registro=$sentenciaSQL->fetch(PDO::FETCH_ASSOC);

$totalVentas=$registro['totalVentas'];
$IngresosTotalVentas=$registro['IngresosTotalVentas'];

?>