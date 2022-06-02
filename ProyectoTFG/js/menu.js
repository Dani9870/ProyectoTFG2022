let btnMenu = document.getElementById('btn_menu');
let navegadorPrincipal = document.getElementById('navegador_principal');
btnMenu.addEventListener('click', function(){
    navegadorPrincipal.classList.toggle('mostrar');
});