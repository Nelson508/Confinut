<?php

include_once 'productos.php';

if(isset($_GET['Categoria'])){
    $categoria = $_GET['Categoria'];

    if($categoria==''){
        echo json_encode(['statuscode' => 400, 'response' => 'No existe esa categoria']);
    }else{
        $productos = new Productos();
        $items = $productos->getItemsByCategory($categoria);

        echo json_encode(['statuscode' => 200, 'items' => $items]);
    }
}elseif($_GET['Elementos'] == 'verdadero'){
    
    $categoria = $_GET['Elementos'];

    if($categoria==''){
        echo json_encode(['statuscode' => 400, 'response' => 'No hay productos']);
    }else{
        $productos = new Productos();
        $items = $productos->get();

        echo json_encode(['statuscode' => 200, 'items' => $items]);
    }
 
}else{
    echo json_encode(['statuscode' => 400, 'response' => 'No hay accion']);

}

?>