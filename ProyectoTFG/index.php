<?php
include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
include 'php/cabecera.php';
?>


        <div class="contenedor_slider">
            <div class="slider" id="slider">
                <div class="slider_secciones">
                    <img src="img/imagen1.jpg" alt="" class="slider_imagenes">
                    <div class="contenido_slider">
                        <h2 class="titulo_slider">Portátiles</h2>
                        <p class="texto_slider"></p>
                        <a href="pagTienda.php" class="slider_btn_comprar">COMPRAR AHORA</a>
                    </div>
                </div>
                <div class="slider_secciones">
                    <img src="img/imagen2.jpg" alt="" class="slider_imagenes">
                    <div class="contenido_slider">
                        <h2 class="titulo_slider">Sobremesa</h2>
                        <p class="texto_slider"></p>
                        <a href="pagTienda.php" class="slider_btn_comprar">COMPRAR AHORA</a>
                    </div>
                </div>
                <div class="slider_secciones">
                    <img src="img/imagen3.jpg" alt="" class="slider_imagenes">
                    <div class="contenido_slider">
                        <h2 class="titulo_slider">Monitores</h2>
                        <p class="texto_slider"></p>
                        <a href="pagTienda.php" class="slider_btn_comprar">COMPRAR AHORA</a>
                    </div>
                </div>
                <div class="slider_secciones">
                    <img src="img/imagen4.jpg" alt="" class="slider_imagenes">
                    <div class="contenido_slider">
                        <h2 class="titulo_slider">Tarjetas Gráficas</h2>
                        <p class="texto_slider"></p>
                        <a href="pagTienda.php" class="slider_btn_comprar">COMPRAR AHORA</a>
                    </div>
                </div>
                <div class="slider_secciones">
                    <img src="img/imagen5.jpg" alt="" class="slider_imagenes">
                    <div class="contenido_slider">
                        <h2 class="titulo_slider">Procesadores</h2>
                        <p class="texto_slider"></p>
                        <a href="pagTienda.php" class="slider_btn_comprar">COMPRAR AHORA</a>
                    </div>
                </div>
            </div>
            <div class="slider_btn slider_btn_derecha" id="btn_derecha">&#62;</div>
            <div class="slider_btn slider_btn_izquierda" id="btn_izquierda">&#60;</div>
        </div>
        <div class="container">
            <div class="row">
                <h2 class="titulo_principal_productos">Productos Destacados Recientemente</h2>
                <br>
                <?php
                    $sentenciaprod=$pdo->prepare("SELECT * FROM `tproductos`");
                    $sentenciaprod->execute();
                    $listaProductos=$sentenciaprod->fetchAll(PDO::FETCH_ASSOC);
                    //print_r($listaProductos);
                ?>

                <?php foreach($listaProductos as $producto){ ?>
                    <div class="col-3">
                        <br>
                        <div class="card">
                            <img src="<?php echo $producto['Imagen'];?>" 
                            title="<?php echo $producto['Nombre'];?>" 
                            alt="<?php echo $producto['Nombre'];?>" 
                            class="productos_imagenes"
                            data-bs-toggle="popover"
                            data-bs-trigger="hover"
                            data-bs-content="<?php echo $producto['Descripcion'];?>"

                            >
                            <div class="card-body">
                                <h3 class="card-title"><span><?php echo $producto['Nombre'];?></span></h3>
                                <h4 style="color: green;" class="card-title"><?php echo $producto['Precio'];?>€</h4>
                                <!--<p class="card-text">Descripción</p>-->
                                
                                <form action="" method="post">
                                    <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['id'],COD,KEY);?>">
                                    <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['Nombre'],COD,KEY);?>">
                                    <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['Precio'],COD,KEY);?>">
                                    <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1,COD,KEY);?>">

                                    <button class="agregar_carrito" 
                                    name="btnAccion" 
                                    value="Agregar" 
                                    type="submit">Comprar</button>

                                </form>
                                
                                
                            </div>
                        </div>
                    </div>

                <?php } ?>
            </div>
        </div>
<?php include 'php/footer.php'; ?>
        