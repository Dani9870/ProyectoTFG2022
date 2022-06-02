const slider = document.querySelector("#slider");
let sliderSeccion = document.querySelectorAll(".slider_secciones");
let sliderSeccionFinal = sliderSeccion[sliderSeccion.length -1];

const btnIzquierda = document.querySelector("#btn_izquierda");
const btnDerecha = document.querySelector("#btn_derecha");

slider.insertAdjacentElement('afterbegin', sliderSeccionFinal);

function Siguiente(){
    let sliderSeccionPrimera = document.querySelectorAll(".slider_secciones")[0];
    slider.style.marginLeft = "-200%";
    slider.style.transition = "all 0.5s";
    setTimeout(function(){
        slider.style.transition = "none";
        slider.insertAdjacentElement('beforeend', sliderSeccionPrimera);
        slider.style.marginLeft = "-100%";
    }, 500);
}

function Anterior(){
    let sliderSeccion = document.querySelectorAll(".slider_secciones");
    let SliderSeccionFinal = sliderSeccion[sliderSeccion.length -1];
    slider.style.marginLeft = "0";
    slider.style.transition = "all 0.5s";
    setTimeout(function(){
        slider.style.transition = "none";
        slider.insertAdjacentElement('afterbegin', sliderSeccionFinal);
        slider.style.marginLeft = "-100%";
    }, 500);
}

btnDerecha.addEventListener('click', function(){
    Siguiente();
});

btnIzquierda.addEventListener('click', function(){
    Anterior();
});

setInterval(function(){
    Siguiente();
}, 5000);