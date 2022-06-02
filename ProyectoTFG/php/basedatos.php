<?php
    $server = 'localhost';
    $nombreusuario = 'root';
    $password = '';
    $basededatos = 'php_usuarios';

    try{
        $conexion = new PDO("mysql:host=$server;dbname=$basededatos;",$nombreusuario, $password);
    } catch (PDOException $error) {
        die('Conexion fallida: '.$error->getMessage());
    }
?>