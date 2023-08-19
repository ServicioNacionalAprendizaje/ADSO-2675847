function Calcular(){
    alert("Buenas noches.");

    let numPul = 0;
    let edad = 0;
    let genero = "";
    let bandera = true;

    //Captudad la edad de la persona.
    while(edad<=0 || edad >= 130){        
        edad = parseInt(prompt("Digite su edad, datos permitidos 1/130 años:"));
        if(edad<=0 || edad >= 130){
            alert("Dato no válido, favor ingresar una edad entre 1-130 años.");
        }
    }

    do{
        genero = prompt("Digite su genero M/F: ");
        if(genero=="M" || genero=="F"){
           bandera = false; 
        }
    }while(bandera!=false);

    //Generar el resultado
    if(genero=='F'){
        numPul = (220-edad)/10;
    }else{
        numPul = (210-edad)/10;
    }

    //Mostrar el resultado
    alert("La cantidad de pulsaciones es: "+numPul)

}