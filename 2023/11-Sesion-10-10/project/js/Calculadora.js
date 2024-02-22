function Calculadora(){
    var numero = document.getElementById('numero').value;
    var i;
    var html = "";
    for(i=1; i<=10; i++ ){
        html+=`<tr><td colspan="2">`+numero+`  *  `+i+` = `+(numero*i)+`</td></tr>`
    }

    //Mostrar en el HTML
    document.getElementById('dataResul').innerHTML = html;

}