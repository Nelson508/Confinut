<?php

include_once('config.php');

class DB{
    private $host;
    private $db;
    private $user;
    private $password;
    private $charset;

    public function __construct(){
        $this->host     = SERVIDOR;
        $this->db       = DB;
        $this->user     = USUARIO;
        $this->password = PASSWORD;
        //$this->charset  = 'utf8mb4';
        $this->charset  = 'utf8';
    }

    //mysql -e "USE todolistdb; select*from todolist" --user=azure --password=6#vWHD_$ --port=49175 --bind-address=52.176.6.0

    function connect(){
    
        try{
            $connection = "pgsql:host=".$this->host.";dbname=" . $this->db . ";charset=" . $this->charset;
            //$connection = "mysql:host=".$this->host.";dbname=" . $this->db . ";charset=" . $this->charset;
            $options = [
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_EMULATE_PREPARES   => false,
            ];
            //$pdo = new PDO($connection, $this->user, $this->password, $options);
            $pdo = new PDO($connection,$this->user,$this->password);
            return $pdo;


        }catch(PDOException $e){
            print_r('Error connection: ' . $e->getMessage());
        }   
    }
}






?>





<?php
/*
$servidor="mysql:dbname=".DB.";host=".SERVIDOR;

try{

    $pdo= new PDO($servidor,USUARIO,PASSWORD,
            array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8")
        );
    //echo "<script>alert('Conectado...')</script>";

}catch(PDOException $e){

    //echo "<script>alert('Conectado...')</script>";
}
*/
?>