function Calcular(){
    var edad=0;
    var nombre="";
    
    nombre = prompt("Digite su nombre: ");
    while(edad<=0 || edad>130){
        edad= parseInt(prompt(nombre+" digite su edad: "));
    }

    if(edad<18){
        alert(nombre+" usted es menor de edad.");
    }else{
        alert(nombre+" usted es mayor de edad.");
    }

}