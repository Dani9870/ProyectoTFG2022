<?php
    require 'basedatos.php';

    $mensaje = '';

    if (!empty($_POST['email']) && !empty($_POST['password'])){
        $sql = "INSERT INTO usuarios (email, password) VALUES (:email, :password)";
        $stmt = $conexion->prepare($sql);
        $stmt->bindParam(':email',$_POST['email']);
        $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $stmt->bindParam(':password', $password);
        
        if ($stmt->execute()){
            $mensaje = 'El usuario se ha creado correctamente';
        } else{
            $mensaje = 'Ha ocurrido un error creando su usuario';
        }
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Crear Cuenta</title>
        <link rel="stylesheet" href="../css/estilos.css">
    </head>
    <body>
        <div class="pagina_usuarios">
            
            <?php if(!empty($mensaje)):  ?>
                <p><strong><?= $mensaje ?></strong></p>
            <?php endif;  ?>
            
           <h1>Crear Cuenta</h1>
            <span>o <a href="login.php">Inicia sesión</a></span>
            <form action="registro.php" method="post">
                <input type="text" name="email" class="input_usuarios" placeholder="Ingrese su email">
                <input type="password" name="password" class="input_usuarios" placeholder="Ingrese su contraseña">
                <input type="submit" class="btn_usuarios" value="Enviar">
            </form>
        </div>
        <p class="volver_pagina"><a href="..//index.php">Volver a la página principal</a></p>
    </body>
</html>