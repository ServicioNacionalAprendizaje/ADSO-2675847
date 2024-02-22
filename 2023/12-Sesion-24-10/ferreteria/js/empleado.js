function Add() {
    alert("Agregar datos....");
}

function Edit() {
    alert("Editar datos....");
}

function Delete() {
    alert("Eliminar datos....");
}

function LoadData() {
    var html = "";
    var i // Cantodad de iteraciones de prueba
    var registros = [
        { "nombre": "Jesús Ariel", "apellido": "González Bonilla", "fechaIngreso": "12/11/2013", "salario": 1250000 },
        { "nombre": "Karen", "apellido": "Palacios", "fechaIngreso": "11/10/2015", "salario": 1750000 },
        { "nombre": "Miguel Ángel", "apellido": "Ramírez", "fechaIngreso": "05/09/2014", "salario": 1350000 },
        { "nombre": "María", "apellido": "López", "fechaIngreso": "03/08/2016", "salario": 1450000 },
        { "nombre": "Carlos", "apellido": "Fernández", "fechaIngreso": "08/06/2017", "salario": 1550000 },
        { "nombre": "Andrea", "apellido": "Martínez", "fechaIngreso": "02/07/2019", "salario": 1650000 },
        { "nombre": "Pablo", "apellido": "Gómez", "fechaIngreso": "04/04/2018", "salario": 1850000 },
        { "nombre": "Isabel", "apellido": "Rodríguez", "fechaIngreso": "06/12/2020", "salario": 2050000 },
        { "nombre": "Luis", "apellido": "Hernández", "fechaIngreso": "05/03/2014", "salario": 1350000 },
        { "nombre": "Laura", "apellido": "García", "fechaIngreso": "02/05/2020", "salario": 1850000 }
    ];


    dataResul = "";
    tipoRowBandera = true;
    tipoRow = "";
    for (i = 0; i <= 5; i++) {
        tipoRow = tipoRowBandera == true ? "table-success" : "table-secondary";
        html += `<tr class="`+tipoRow+`">
                    <td>Jesus</td>
                    <td>González Bonilla</td>
                    <td>12/11/2013</td>
                    <td>1.250.000</td>
                    <td><button type="button" class="btn btn-success" onclick="Edit();"><img
                                src="../asset/icon/pencil.svg"></button></td>
                    <td><button type="button" class="btn btn-danger" onclick="Delete();"><img
                                src="../asset/icon/trash3.svg"></button></td>
                </tr>`;
        tipoRowBandera = tipoRowBandera==true?false:true;
        
    }
    document.getElementById('resultData').innerHTML = html;
}