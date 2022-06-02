<?php
    session_start();

    if (isset($_SESSION['user_id'])){
        header('Location: /ProyectoTFG/php/pagindex.php');
    }

    require 'basedatos.php';

    if (!empty($_POST['email']) && !empty($_POST['password'])){
        $consulta = $conexion->prepare('SELECT id, email, password FROM usuarios WHERE email=:email');
        $consulta->bindParam(':email', $_POST['email']);
        $consulta->execute();
        $resultados = $consulta->fetch(PDO::FETCH_ASSOC);
        
        $mensaje = '';
        
        if (count($resultados) > 0 && password_verify($_POST['password'], $resultados['password'])){
            $_SESSION['user_id'] = $resultados['id'];
            $_SESSION['email'] = $resultados['email'];
            header('Location: /ProyectoTFG/php/pagindex.php');
        } else{
            $mensaje = 'Las credenciales no coinciden';
        }
    }

?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Iniciar Sesión</title>
        <link rel="stylesheet" href="../css/estilos.css">
    </head>
    <body>
        <div class="pagina_usuarios">
            <h1>Iniciar Sesión</h1>
            <span>o <a href="registro.php">Crea una cuenta</a></span>
            
            <?php if (!empty($mensaje)) : ?>
                <p><?= $mensaje ?></p>
            <?php endif;?>
            
            <form action="login.php" method="post">
                <input type="text" name="email" class="input_usuarios" placeholder="Ingrese su email">
                <input type="password" name="password" class="input_usuarios" placeholder="Ingrese su contraseña">
                <input type="submit" class="btn_usuarios" value="Enviar">
            </form>
        </div>
        <p class="volver_pagina"><a href="..//index.php">Volver a la página principal</a></p>
    </body>
</html>