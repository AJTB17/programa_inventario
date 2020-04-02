let numero = 0;

function desplegarMovimientos(datos){
    document.getElementById("ventanaDeDepositos").classList.remove("hidden");
    if (datos.length > 8) {
        let datosSeparados = datos.split("!!");
        let facturaProveedor = datosSeparados[0];
        let datosDeFactura = datosSeparados[1].split("--");
        let tabla = document.getElementById("depositos");
        let tableHeader = document.getElementById("tableHeader");
        for(let i = 0; i < datosDeFactura.length - 1 ; i++) {
            let dato = datosDeFactura[i].split("||");
            let element = document.createElement("tr"),
                contenido1 = document.createElement("td"),
                contenido2 = document.createElement("td"),
                contenido3 = document.createElement("td"),
                contenido4 = document.createElement("td");

            let cont1 = document.createTextNode(dato[3]),
                cont2 = document.createTextNode(dato[2]),
                cont3 = document.createTextNode(dato[1]),
                cont4 = document.createTextNode(dato[0]);

            contenido1.appendChild(cont1);
            contenido2.appendChild(cont2);
            contenido3.appendChild(cont3);
            contenido4.appendChild(cont4);

            element.appendChild(contenido4);
            element.appendChild(contenido3);
            element.appendChild(contenido2);
            element.appendChild(contenido1);

            element.classList.add("row");

            tabla.appendChild(element, tableHeader);
            
            numero++
        }
        document.getElementById("depositosTitle").innerHTML = facturaProveedor;
    };
    document.getElementById("depositCancelButton").addEventListener("click", cerrarDepositos);
}
function cerrarDepositos(){
    if (numero != 0){
        let rows = document.getElementsByClassName("row");
        let tabla = document.getElementById("depositos");
        for (let i = 0 ; i < numero ; i++){
            tabla.removeChild(rows[0]);
        };
    };
    document.getElementById("ventanaDeDepositos").classList.add("hidden");
    numero = 0;
};