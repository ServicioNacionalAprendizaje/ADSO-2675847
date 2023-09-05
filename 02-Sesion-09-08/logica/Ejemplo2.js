// Ejemplo 2
var presupuesto = 0;
var Ginecologia = 0;
var Traumatologia = 0;
var Pediatria = 0;

//Definir el presupuesto del hospital
presupuesto = parseFloat(prompt("Digite el presupuesto del hospital: "));

//Proceso del ejercicio
// Ginecologia = (presupuesto*40)/100;
// Traumatologia = (presupuesto*30)/100;
// Pediatria = (presupuesto*30)/100;
Ginecologia = presupuesto*0.4;
Traumatologia = presupuesto*0.3;
Pediatria = presupuesto*0.3;

//Mostrar los datos 
alert("Presupuesto: "+presupuesto);
alert("Ginecología: "+Ginecologia);
alert("Traumatología: "+Traumatologia);
alert("Pediatría: "+Pediatria);