<?php

include_once '../global/conexion.php';

class Productos extends DB{

    function __construct()
    {
        parent::__construct();
    }

    public function get(){

        $query = $this->connect()->prepare("SELECT * FROM cfntipoproducto, cfnproducto 
                                            WHERE IDtipoproducto = IDproducto");
        $query->execute();

        $row = $query->fetchAll(PDO::FETCH_ASSOC);

        return $row;
    }

    public function getItemsByCategory($category){

        $query = $this->connect()->prepare("SELECT * FROM cfntipoproducto, cfnproducto 
                                                      WHERE IDtipoproducto = IDproducto
                                                      AND Categoria = :cat");
        $query->execute(['cat'=>$category]);

        $items = [];

        while ($row = $query->fetch(PDO::FETCH_ASSOC)) {

            $item = [
                'IDtipoproducto' => $row['IDtipoproducto'],
                'NombreProducto' => $row['NombreProducto'],
                'Categoria'      => $row['Categoria'],
                'PrecioNetoKG'   => $row['PrecioNetoKG'],
                'Descripcion'    => $row['Descripcion'],
                'imagen'         => $row['imagen'],
                ];

                array_push($items,$item);
            
        }

        return $items;

        
    }



}



?>