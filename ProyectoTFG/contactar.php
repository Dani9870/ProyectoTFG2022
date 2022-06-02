<?php
include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
include 'php/cabecera.php';
?>
<div class="texto_contacto">
    <h5>Nuestro teléfono de contacto es: 650650650</h5>
    <h5>Nuestro email de contacto es: danielnevado11@gmail.com</h5>
    <h5>O si desea contactar por un error específico, puede rellenar el formulario de abajo: </h5>
</div>


    <form class="form" action="https://formspree.io/f/xdobbawz" method="POST">
        <div class="form_contenedor">
            <h2 class="form_titulo">Contáctanos</h2>
            <input type="text" class="form_input" placeholder="Nombre" name="name">
            <input type="email" name="email" class="form_input" placeholder="Email">
            <textarea name="message" class="form_input form_input_mensaje" placeholder="Indíquenos su error"></textarea>
            <input class="form_btn" type="submit" value="Enviar">
        </div>
    </form>






<?php include 'php/footer.php'; ?>