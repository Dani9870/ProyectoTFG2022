<?php

    session_start();

    session_unset();

    session_destroy();

    header('Location: /ProyectoTFG/index.php');

?>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Cerrar Sesión</title>
        <link rel="stylesheet" href="../css/estilos.css">
    </head>
    <body>
        <div class="pagina_usuarios">
            
        </div>
    </body>
</html>