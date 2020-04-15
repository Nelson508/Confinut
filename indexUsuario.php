<?php  
include 'global/config.php';
include "global/sesiones.php";
include 'global/conexion.php';
include 'Carrito.php';
include 'templates/cabeceraUsuario.php';
include 'templates/sidebarUsuario.php';
?>

    <div class="content-wrapper" style="padding: 1%">

        <?php if($mensaje!="") { ?>
        <div class="alert alert-success" role="alert">
            <?php echo $mensaje;?>


            <a href="mostrarCarrito.php" class="badge badge-success">Ver carrito</a>
        </div>
        <?php } ?>

        <div class="row">
            
            <?php 
            
               $response = json_decode(file_get_contents('http://localhost/confinut/productos/api-productos.php?Elementos=verdadero'),true); 
                if($response['statuscode'] == 200){
                    foreach($response['items'] as $item){
                        include('layout/items.php');
                    }

                }
                 ?>
  
        </div>
        <script>

        $(function () {
            $('[data-toggle="popover"]').popover()
        });

        </script>

    </div>
<?php
include 'templates/piePagina.php';
?>

