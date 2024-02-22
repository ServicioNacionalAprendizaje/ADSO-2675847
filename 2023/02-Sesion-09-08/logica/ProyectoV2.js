let i;
let persona= new Array();
let musica= new Array();
//capturar datos
for(i=0; i<2; i++){
    persona[i] = new Array()
    persona[i][0]=prompt("Digitar nombre de la persona "+(i+1)+": ");
    persona[i][1]=prompt("Digitar documento de la persona "+(i+1)+": ");
    persona[i][2]=prompt("Digitar fecha de la persona "+(i+1)+": ");
    persona[i][3]=prompt("Digitar correo de la persona "+(i+1)+": ");
    persona[i][4]=prompt("Digitar ciudad residencia de la persona "+(i+1)+": ");
    persona[i][5]=prompt("Digitar ciudad nacimiento de la persona "+(i+1)+": ");
} 

for(i=0; i<2; i++){
    alert("Información musical para la persona: "+persona[i][0]+".")
    musica[i] = new Array();
    musica[i][0] = prompt("Nombre del artista: ");
    musica[i][1] = prompt("Canción 1: ");
    musica[i][2] = prompt("Canción 2: ");
    musica[i][3] = prompt("Canción 3: ");
}

//mostar el resultado
var html="";
for(i=0; i<2; i++){
    html+=`<tr>
            <td>`+persona[i][0]+`</td>
            <td>`+persona[i][1]+`</td>
            <td>`+persona[i][2]+`</td>
            <td>`+persona[i][3]+`</td>
            <td>`+persona[i][4]+`</td>
            <td>`+persona[i][5]+`</td>
        </tr>`;
}
document.getElementById('dataResult').innerHTML  = html;