<?php  
include 'global/config.php';
include 'global/conexion.php';
include 'templates/cabeceraVisita.php';
include 'templates/sidebarVisita.php';
?>

    <div class="content-wrapper">

        <div class="row">
           

            <?php 
            
                $response = json_decode(file_get_contents('http://localhost/confinut/productos/api-productos.php?Categoria=colorantes_y_esencias'),true);
                if($response['statuscode'] == 200){
                    foreach($response['items'] as $item){
                        include('layout/itemsVisita.php');
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

