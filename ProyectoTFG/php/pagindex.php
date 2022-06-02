<?php
    session_start();

    require 'basedatos.php';

    if (isset($_SESSION['user_id'])){
        $consulta = $conexion->prepare('SELECT id, email, password FROM usuarios where id=:id');
        $consulta->bindParam(':id', $_SESSION['user_id']);
        $consulta->execute();
        $resultados = $consulta->fetch(PDO::FETCH_ASSOC);
        
        $usuario = null;
        
        if (count($resultados) > 0){
            $usuario = $resultados;
        }
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Bienvenido</title>
        <link rel="stylesheet" href="../css/estilos.css">
    </head>
    <body>
        <div class="pagina_usuarios">
            
            <?php if(!empty($usuario)): ?>
            <br>Bienvenido <?= $usuario['email'] ?>
            <br>Has iniciado sesión correctamente
            <a href="logout.php">Cerrar Sesión</a>
        <?php else: ?>
            
            <h1>Por favor Inicia sesión o Crea una cuenta</h1>

            <a href="login.php">Iniciar Sesión</a> o
            <a href="registro.php">Crear Cuenta</a>
        <?php endif; ?>
        </div>
        <p class="volver_pagina"><a href="..//index.php">Volver a la página principal</a></p>
    </body>
</html>