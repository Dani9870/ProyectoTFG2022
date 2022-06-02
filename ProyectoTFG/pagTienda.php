<?php
include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
include 'php/cabecera.php';
?>


<div class="container">
    <div class="row">
        <h2 class="titulo_principal_productos">Sobremesa</h2>
        <br>
        <?php
            $sentenciaprod=$pdo->prepare("SELECT * FROM `tproductossobremesa`");
            $sentenciaprod->execute();
            $listaProductos=$sentenciaprod->fetchAll(PDO::FETCH_ASSOC);
            //print_r($listaProductos);
        ?>

        <?php foreach($listaProductos as $producto){ ?>
            <div class="col-3">
                <br>
                <div class="card">
                    <img src="<?php echo $producto['ImagenSobremesa'];?>" 
                    title="<?php echo $producto['NombreSobremesa'];?>" 
                    alt="<?php echo $producto['NombreSobremesa'];?>" 
                    class="productos_imagenes"
                    data-bs-toggle="popover"
                    data-bs-trigger="hover"
                    data-bs-content="<?php echo $producto['DescripcionSobremesa'];?>"

                    >
                    <div class="card-body">
                        <h3 class="card-title"><span><?php echo $producto['NombreSobremesa'];?></span></h3>
                        <h4 style="color: green;" class="card-title"><?php echo $producto['PrecioSobremesa'];?>€</h4>
                        <!--<p class="card-text">Descripción</p>-->
                                
                        <form action="" method="post">
                            <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['idSobremesa'],COD,KEY);?>">
                            <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['NombreSobremesa'],COD,KEY);?>">
                            <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['PrecioSobremesa'],COD,KEY);?>">
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
        <h2 class="titulo_principal_productos">Monitores</h2>
        <br>
        <?php
            $sentenciaprod=$pdo->prepare("SELECT * FROM `tproductosmonitores`");
            $sentenciaprod->execute();
            $listaProductos=$sentenciaprod->fetchAll(PDO::FETCH_ASSOC);
            //print_r($listaProductos);
        ?>

        <?php foreach($listaProductos as $producto){ ?>
            <div class="col-3">
                <br>
                <div class="card">
                    <img src="<?php echo $producto['ImagenMonitores'];?>" 
                    title="<?php echo $producto['NombreMonitores'];?>" 
                    alt="<?php echo $producto['NombreMonitores'];?>" 
                    class="productos_imagenes"
                    data-bs-toggle="popover"
                    data-bs-trigger="hover"
                    data-bs-content="<?php echo $producto['DescripcionMonitores'];?>"

                    >
                    <div class="card-body">
                        <h3 class="card-title"><span><?php echo $producto['NombreMonitores'];?></span></h3>
                        <h4 style="color: green;" class="card-title"><?php echo $producto['PrecioMonitores'];?>€</h4>
                        <!--<p class="card-text">Descripción</p>-->
                                
                        <form action="" method="post">
                            <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['idMonitores'],COD,KEY);?>">
                            <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['NombreMonitores'],COD,KEY);?>">
                            <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['PrecioMonitores'],COD,KEY);?>">
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
        <h2 class="titulo_principal_productos">Tarjetas Gráficas</h2>
        <br>
        <?php
            $sentenciaprod=$pdo->prepare("SELECT * FROM `tproductostarjetasgraficas`");
            $sentenciaprod->execute();
            $listaProductos=$sentenciaprod->fetchAll(PDO::FETCH_ASSOC);
            //print_r($listaProductos);
        ?>

        <?php foreach($listaProductos as $producto){ ?>
            <div class="col-3">
                <br>
                <div class="card">
                    <img src="<?php echo $producto['ImagenTarjetasGraficas'];?>" 
                    title="<?php echo $producto['NombreTarjetasGraficas'];?>" 
                    alt="<?php echo $producto['NombreTarjetasGraficas'];?>" 
                    class="productos_imagenes"
                    data-bs-toggle="popover"
                    data-bs-trigger="hover"
                    data-bs-content="<?php echo $producto['DescripcionTarjetasGraficas'];?>"

                    >
                    <div class="card-body">
                        <h3 class="card-title"><span><?php echo $producto['NombreTarjetasGraficas'];?></span></h3>
                        <h4 style="color: green;" class="card-title"><?php echo $producto['PrecioTarjetasGraficas'];?>€</h4>
                        <!--<p class="card-text">Descripción</p>-->
                                
                        <form action="" method="post">
                            <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['idTarjetasGraficas'],COD,KEY);?>">
                            <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['NombreTarjetasGraficas'],COD,KEY);?>">
                            <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['PrecioTarjetasGraficas'],COD,KEY);?>">
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
        <h2 class="titulo_principal_productos">Procesadores</h2>
        <br>
        <?php
            $sentenciaprod=$pdo->prepare("SELECT * FROM `tproductosprocesadores`");
            $sentenciaprod->execute();
            $listaProductos=$sentenciaprod->fetchAll(PDO::FETCH_ASSOC);
            //print_r($listaProductos);
        ?>

        <?php foreach($listaProductos as $producto){ ?>
            <div class="col-3">
                <br>
                <div class="card">
                    <img src="<?php echo $producto['ImagenProcesadores'];?>" 
                    title="<?php echo $producto['NombreProcesadores'];?>" 
                    alt="<?php echo $producto['NombreProcesadores'];?>" 
                    class="productos_imagenes"
                    data-bs-toggle="popover"
                    data-bs-trigger="hover"
                    data-bs-content="<?php echo $producto['DescripcionProcesadores'];?>"

                    >
                    <div class="card-body">
                        <h3 class="card-title"><span><?php echo $producto['NombreProcesadores'];?></span></h3>
                        <h4 style="color: green;" class="card-title"><?php echo $producto['PrecioProcesadores'];?>€</h4>
                        <!--<p class="card-text">Descripción</p>-->
                                
                        <form action="" method="post">
                            <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['idProcesadores'],COD,KEY);?>">
                            <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['NombreProcesadores'],COD,KEY);?>">
                            <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['PrecioProcesadores'],COD,KEY);?>">
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
        <h2 class="titulo_principal_productos">Portátiles</h2>
        <br>
        <?php
            $sentenciaprod=$pdo->prepare("SELECT * FROM `tproductosportatiles`");
            $sentenciaprod->execute();
            $listaProductos=$sentenciaprod->fetchAll(PDO::FETCH_ASSOC);
            //print_r($listaProductos);
        ?>

        <?php foreach($listaProductos as $producto){ ?>
            <div class="col-3">
                <br>
                <div class="card">
                    <img src="<?php echo $producto['ImagenPortatiles'];?>" 
                    title="<?php echo $producto['NombrePortatiles'];?>" 
                    alt="<?php echo $producto['NombrePortatiles'];?>" 
                    class="productos_imagenes"
                    data-bs-toggle="popover"
                    data-bs-trigger="hover"
                    data-bs-content="<?php echo $producto['DescripcionPortatiles'];?>"

                    >
                    <div class="card-body">
                        <h3 class="card-title"><span><?php echo $producto['NombrePortatiles'];?></span></h3>
                        <h4 style="color: green;" class="card-title"><?php echo $producto['PrecioPortatiles'];?>€</h4>
                        <!--<p class="card-text">Descripción</p>-->
                                
                        <form action="" method="post">
                            <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['idPortatiles'],COD,KEY);?>">
                            <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['NombrePortatiles'],COD,KEY);?>">
                            <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['PrecioPortatiles'],COD,KEY);?>">
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