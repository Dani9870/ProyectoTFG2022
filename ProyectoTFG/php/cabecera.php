<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <title>Tienda Online</title> 
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

    </head>
    <body>
        <header class="header_principal">
            <div class="contenedor_flex">
                <div class="header_principal_contenedor">
                    <h1 class="titulo_principal">FUCUSIA</h1>
                    <i class="icono_menu" id="btn_menu"><i class="fas fa-bars"></i></i>
                    <nav class="navegador_principal" id="navegador_principal">
                        <ul class="menu" id="menu">
                            <li class="menu_apartado"><a href="index.php" class="menu_link">HOME</a></li>
                            <li class="menu_apartado"><a href="pagTienda.php" class="menu_link">TIENDA</a></li>
                            <li class="menu_apartado"><a href="contactar.php" class="menu_link">CONTACTO</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="header_principal_contenedor">
                    <span class="header_principal_texto"><a class="cabecera_link" href="contactar.php">Ayuda</a></span>
                    <p class="header_principal_texto"><i class="fas fa-phone"></i>Llama 650650650</p>
                </div>
                
                <div class="header_principal_contenedor">
                    <a href="php/pagindex.php" class="header_principal_link">Mi cuenta<i class="fa-solid fa-user"></i></a> 
                    <?php 
                      if (isset($_SESSION['email'])!= NULL)
                      {
                       ?>
                      <a>Bienvenido <?=$_SESSION['email']?></a>  
                      <?php
                      }
                    ?>
                    <a href="mostrarCarrito.php" class="header_principal_link">Mi carrito(<?php
                        echo (empty($_SESSION['CARRITO']))?0:count($_SESSION['CARRITO']);
                    ?>)<i class="fa-solid fa-cart-shopping"></i></a>
                    <div><strong>
                        <?php if($mensaje!=""){?>
                        <?php echo $mensaje;?>
                        <?php }?>
                    </strong></div>
                    <!--<div id="ctn-icon-search">
                        <i class="fas fa-search" id="icon-search"></i>
                    </div>-->
                </div>
            </div>
        </header>