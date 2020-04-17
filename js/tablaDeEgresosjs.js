let numero = 0;
let movementNumberFilter = document.getElementById("movementNumberFilter"),
    solicitanteFilter = document.getElementById("solicitanteFilter"),
    fechaFilter = document.getElementById("fechaFilter"),
    movementFilter = document.getElementById("movementFilter"),
    nameFilter = document.getElementById("nameFilter"),
    departmentFilter = document.getElementById("departmentFilter"),
    depositFilter = document.getElementById("depositFilter"),
    orderFilter = document.getElementById("orderFilter");

function desplegarInformacion(datos, movimiento) {
    document.getElementById("ventanaDeDepositos").classList.remove("hidden");
    if (datos != "") {
        let cantidadDeDatos = datos.split("--");
        let tabla = document.getElementById("depositos");
        let tableHeader = document.getElementById("tableHeader");
        for (let i = 0; i < cantidadDeDatos.length - 1; i++) {
            let dato = cantidadDeDatos[i].split("||");

            let element = document.createElement("tr"),
                contenido1 = document.createElement("td"),
                contenido2 = document.createElement("td"),
                contenido3 = document.createElement("td"),
                contenido4 = document.createElement("td");

            let cont1 = document.createTextNode(dato[3]),
                cont2 = document.createTextNode(dato[2]),
                cont3 = document.createTextNode(dato[1] + " " + dato[4]),
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
        };
    };
    if (movimiento === "Traslado") {
        document.getElementById("tableHeaderVariable").innerHTML = "Nuevo Depósito";
    } else {
        document.getElementById("tableHeaderVariable").innerHTML = "Razón";
    };
    document.getElementById("depositCancelButton").addEventListener("click", cerrarInformacion);
};

function cerrarInformacion() {
    if (numero != 0) {
        let rows = document.getElementsByClassName("row");
        let tabla = document.getElementById("depositos");
        for (let i = 0; i < numero; i++) {
            tabla.removeChild(rows[0]);
        };
    };
    document.getElementById("ventanaDeDepositos").classList.add("hidden");
    numero = 0;
};

function filter() {
    let cadena = "movementNumber=" + movementNumberFilter.value +
        "&solicitante=" + solicitanteFilter.value +
        "&fecha=" + fechaFilter.value +
        "&movement=" + movementFilter.value +
        "&name=" + nameFilter.value +
        "&department=" + departmentFilter.value +
        "&deposit=" + depositFilter.value +
        "&order=" + orderFilter.value;
    $.ajax({
        type: 'POST',
        url: '/inventariogg/phpurl/filtradoDeEgresos.php',
        data: cadena,
        success: function(data) {
            let table = document.getElementById("expensesTableBody");
            table.innerHTML = data;
        }
    })
}

movementNumberFilter.addEventListener("input", filter);
solicitanteFilter.addEventListener("input", filter);
fechaFilter.addEventListener("input", filter);
movementFilter.addEventListener("input", filter);
nameFilter.addEventListener("input", filter);
departmentFilter.addEventListener("input", filter);
depositFilter.addEventListener("input", filter);
orderFilter.addEventListener("input", filter);