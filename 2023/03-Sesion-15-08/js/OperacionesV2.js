
function Resultado(){
    let numero1;
    let  numero2;
    let resultado;
    let elegir="";
    let tipo ="";
    
    /*while(elegir!=1 || elegir!=2 || elegir!=3 || elegir!=4 || elegir!=5){
        
    }*/
    elegir = parseInt(prompt("Digite 1/Sumar, 2/Restar 3/Multiplicar 4/Dividir 5/Potencia"));

    numero1 = parseFloat(prompt("Digite el primer número: "));
    numero2 = parseFloat(prompt("Digite el segundo número: "));
    
    
    switch(elegir){
        case 1:
            resultado = Sumar(numero1, numero2);
            tipo='suma';            
            break
        case 2:
            resultado = Restar(numero1, numero2);
            tipo='resta';
            break
        case 3:
            resultado = Multiplicar(numero1, numero2);
            tipo='multiplicación';
            break
        case 4:
            resultado = Division(numero1, numero2);
            tipo='división';
            break
        case 5:
            resultado = Potencia(numero1, numero2);
            tipo='potencia';
            break
    }
    
    alert("La "+tipo+" entre "+numero1+" y "+numero2+" es: "+resultado);
}


function Sumar(numero1, numero2){
    let x = numero1 + numero2;
    return x;
}

function Restar(numero1, numero2){
    let x = numero1 - numero2;
    return x;
}

function Multiplicar(numero1, numero2){
    let x = numero1 * numero2;
    return x;
}

function Dividir(numero1, numero2){
    let x = numero1 / numero2;
    return x;
}

function Potencia(numero1, numero2){
    let x = Math.pow(numero1, numero2);
    return x;
}