function Calcular(){
    alert("Buenas noches!, welcome JavaScript")

    var acumulador=0;
    var i=0;
    var valorUnitario=0;
    var cantidadProducto=0;
    var bandera = "SI";
    var nombreProducto="";
    var valorPagar=0;

    //Capturar los datos 
    while(bandera=="SI" || bandera == "Si" || bandera == "si" ){
        nombreProducto = prompt("Digite el nombre del producto: ");
        valorUnitario = prompt("Digite el valor unitario de "+nombreProducto+": ");
        cantidadProducto = prompt("Digite la cantidad que va a llevar de "+nombreProducto+": ")

        //Calcular el valor a pagar de uno producto.
        valorPagar = valorUnitario*cantidadProducto;

        //Mostrar resultado
        alert("El usuario  debe pagar $"+valorPagar+ " por el producto "+nombreProducto+".");
        bandera = prompt("¿Desea agregar otro producto?, digite SI para contuinuar, de lo contrario finaliza.")

        //acumular las ventas de cada producto.
        acumulador+=valorPagar;
    }
    //Mostara el valor total a pagar por parte del cliente
    alert("El cliente debe pagar un total de: $"+acumulador);
}