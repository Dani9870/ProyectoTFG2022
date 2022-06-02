<?php
    $servidor="mysql:dbname=".BD.";host=".SERVIDOR;
    try{
        $pdo = new PDO($servidor,USUARIO,PASSWORD);
        //echo "<script>alert('Conectado')</script>";

    }catch(PDOException $e){
        //echo "<script>alert('Error')</script>";
    }
?>