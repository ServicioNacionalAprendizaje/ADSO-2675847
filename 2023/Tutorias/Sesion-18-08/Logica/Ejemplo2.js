function Ejecutar() {
    alert("Buenas noches");

    let numPul = 0;
    let edad = 0;
    let genero = "";
    let bandera = true;


    //Captudad la edad de la persona.
    edad = parseInt(document.getElementById('txtEdad').value);
    if (edad <= 0 || edad >= 130) {
        alert("Dato no válido, favor ingresar una edad entre 1-130 años.");
        document.getElementById('txtEdad').value = "";
        bandera = false;
    } 

    genero = document.getElementById('txtGenero').value;
    if (!(genero == "M" || genero == "F")) {
        alert("Dato no válido, favor ingresar M/F.");
        document.getElementById('txtGenero').value = "";
        bandera = false;
    }

    //Generar el resultado
    if (bandera == true) {
        if (genero == 'F') {
            numPul = (220 - edad) / 10;
        } else {
            numPul = (210 - edad) / 10;
        }
        //Mostrar el resultado
        document.getElementById('txtNumPul').value = "La cantidad de pulsaciones es: " + numPul;
    }


}

function Limpiar(){
    document.getElementById('txtGenero').value = "";
    document.getElementById('txtEdad').value = "";
    document.getElementById('txtNumPul').value = "";
}