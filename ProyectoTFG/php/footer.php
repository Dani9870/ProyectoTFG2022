<footer class="principal_footer">
            <div class="footer_secciones">
                <h2 class="footer_titulo">Sobre Nosotros</h2>
                <p class="footer_texto">Fucusia es una empresa creada en 2022, que se dedica a la venta online de diversos productos informáticos.
                    Entre ellos se encuentran ordenadores de sobremesa, portátiles, monitores, tarjetas gráficas y procesadores.
                    Somos una empresa que ha comenzado desde abajo, y que llegará a lo más alto.
                </p>
            </div>
            <div class="footer_secciones">
                <h2 class="footer_titulo">Localización</h2>
                <p class="footer_texto"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3039.5150203970493!2d-3.751701684294741!3d40.375276766082884!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd418832fe8df625%3A0x492caf410bb703df!2sSanta%20Mar%C3%ADa%20de%20los%20Ap%C3%B3stoles!5e0!3m2!1ses!2ses!4v1653409622978!5m2!1ses!2ses" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
            </div>
            <div class="footer_secciones">
                <h2 class="footer_titulo">Contacto</h2>
                <p class="footer_texto">Teléfono: 650650650</p>
                <p class="footer_texto">Email: danielnevado11@gmail.com</p>
            </div>
            <div class="footer_secciones">
                <h2 class="footer_titulo">Links Directos</h2>
                <a href="index.php" class="footer_link">Inicio</a>
                <a href="pagTienda.php" class="footer_link">Tienda</a>
                <a href="contactar.php" class="footer_link">Contáctanos</a>
            </div>
            <div class="footer_secciones">
                <h2 class="footer_titulo">Suscríbete para nuestras ofertas</h2>
                <form action="https://formspree.io/f/mzboodjy" method="POST">
                    <input type="email" name="email" class="footer_input" placeholder="Ingresa tu email">
                    <br>
                    <input type="submit" value="Enviar" class="form_btn_email">
                </form>
            </div>
        </footer>
        <script src="js/slider.js"></script>    
        <script src="js/menu.js"></script>
        <script>
            var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
            var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
                return new bootstrap.Popover(popoverTriggerEl)
            })
        </script>
    </body>
</html>