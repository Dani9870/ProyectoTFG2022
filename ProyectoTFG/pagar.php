<?php
include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
include 'php/cabecera.php';
?>


<?php
    if($_POST){
        $total = 0;
        $SID=session_id();
        $Correo = $_POST['email'];
        foreach($_SESSION['CARRITO'] as $indice=>$producto){

            $total = $total + ($producto['PRECIO']*$producto['CANTIDAD']);

        }

        $sentencia=$pdo->prepare("INSERT INTO 
        `tventas` (`id`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `EstadoPago`) 
        VALUES (NULL, :ClaveTransaccion, '', NOW(), :Correo, :Total, 'pendiente');");

        $sentencia->bindParam(":ClaveTransaccion",$SID);
        $sentencia->bindParam(":Correo",$Correo);
        $sentencia->bindParam(":Total",$total);
        $sentencia->execute();
        $idVenta = $pdo->lastInsertId();

        foreach($_SESSION['CARRITO'] as $indice=>$producto){

            $sentencia = $pdo->prepare("INSERT INTO 
            `tdetallesventas` (`id`, `idVenta`, `idProducto`, `PrecioUnico`, `Cantidad`, `Descarga`) 
            VALUES (NULL, :idVenta, :idProducto, :PrecioUnico, :Cantidad, '0');");

            $sentencia->bindParam(":idVenta",$idVenta);
            $sentencia->bindParam(":idProducto",$producto['ID']);
            $sentencia->bindParam(":PrecioUnico",$producto['PRECIO']);
            $sentencia->bindParam(":Cantidad",$producto['CANTIDAD']);
            $sentencia->execute();

        }

        //echo "<h3>".$total."</h3>";
    }

?>

<div class="row">
    <div class="pagoFinal text-center">
        <h1 class="display-4">Pagar productos</h1>
        <hr class="my-4">
        <p class="lead">Realizar pago con paypal con cantidad de: 
            <h4><?php echo number_format($total,2);?>€</h4>
        </p>
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
            <input type="hidden" name="cmd" value="_s-xclick">
            <input type="hidden" name="hosted_button_id" value="NFS7ZDQYS7SQS">
            <input type="image" src="https://www.paypalobjects.com/es_ES/ES/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal, la forma rápida y segura de pagar en Internet.">
            <img alt="" border="0" src="https://www.paypalobjects.com/es_ES/i/scr/pixel.gif" width="1" height="1">
        </form>
        <p><strong>Contacto: danielnevado11@gmail.com</strong></p>
    </div>

</div>






<?php include 'php/footer.php'; ?>