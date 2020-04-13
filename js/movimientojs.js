let numero = 0;
let nameFilter = document.getElementById("nameFilter"),
    movementNumberFilter = document.getElementById("movementNumberFilter"),
    solicitanteFilter = document.getElementById("solicitanteFilter"),
    fechaFilter = document.getElementById("fechaFilter"),
    departmentFilter = document.getElementById("departmentFilter"),
    orderFilter = document.getElementById("orderFilter"),
    depositFilter = document.getElementById("depositFilter"),
    movementFilter = document.getElementById("movementFilter"),
	link_click = "";

function desplegarInformacion(datos, movimiento, calculos, link) {
    document.getElementById("ventanaDeDepositos").classList.remove("hidden");
    if (datos != "" && movimiento === "Traslado" || movimiento === "Salida") {
        let cantidadDeDatos = datos.split("--");
        let tabla = document.getElementById("depositos");
        for (let i = 0; i < cantidadDeDatos.length - 1; i++) {
            let dato = cantidadDeDatos[i].split("||");
            let html = `<tbody class="tableBody">
                            <tr>
                                <td>${dato[0]}</td>
                                <td>${dato[1]}</td>
                                <td>${dato[2]}</td>
                                <td>${dato[3]}</td>
                            </tr>
                        </tbody>`
            document.getElementById("depositos").innerHTML += html;
            numero++
        };
        let html = `<tfoot id="depositTableFoot">
                        <tr>
                            <td></td>
                            <td id="subtotal">subtotal:</td>
                            <td id="iva">iva:</td>
                            <td id="total">total:</td>
                        </tr>
                    </tfoot>`;
        document.getElementById("depositos").innerHTML += html;
        document.getElementById("tableHeaderVariable2").innerHTML = "Antiguo Depósito";
    }
	else if (movimiento === "Ingreso") {
		console.log(link);
        let cantidadDeDatos = datos.split("--");
        let tabla = document.getElementById("depositos");
        let calcs = calculos.split("!!");
        for (let i = 0; i < cantidadDeDatos.length - 1; i++) {
            let dato = cantidadDeDatos[i].split("||");
            let html = `<tbody class="tableBody">
                            <tr>
                                <td>${dato[0]}</td>
                                <td>${dato[1]}</td>
                                <td>${dato[2]}</td>
                                <td>${dato[3]}</td>
                            </tr>
                        </tbody>`
            document.getElementById("depositos").innerHTML += html;
            numero++
        };
        let html = `<tfoot id="depositTableFoot">
                        <tr>
                            <td></td>
                            <td id="subtotal">Subtotal:${calcs[0]}</td>
                            <td id="iva">IVA:${calcs[1]}</td>
                            <td id="total">Total:${calcs[2]}</td>
                        </tr>
                    </tfoot>`;
        document.getElementById("depositos").innerHTML += html;
        document.getElementById("tableHeaderVariable").innerHTML = "Depósito de entrada";
        document.getElementById("tableHeaderVariable2").innerHTML = "Precio unitario";
    };
    if (movimiento === "Traslado") {
        document.getElementById("tableHeaderVariable").innerHTML = "Nuevo Depósito";
    }
	else if (movimiento === "Salida") {
        document.getElementById("tableHeaderVariable").innerHTML = "Razón";
    };
    document.getElementById("depositCancelButton").addEventListener("click", cerrarInformacion);
	
	document.getElementById("descargar").addEventListener("click", downfile);
	link_click = link;
}
function cerrarInformacion() {
    let tabla = document.getElementById("depositos");
    let tableFoot = document.getElementById("depositTableFoot");
    if (numero != 0) {
        let tableBody = document.getElementsByClassName("tableBody");
        for (let i = 0; i < numero; i++) {
            tabla.removeChild(tableBody[0]);
        }
    };
	if(tableFoot !== null){
		tabla.removeChild(tableFoot);
	}
    
    document.getElementById("ventanaDeDepositos").classList.add("hidden");
    numero = 0;
	
	document.getElementById("descargar").removeEventListener("click", downfile);
	link_click = "";
}
function filtrado() {
    let cadena = "name=" + nameFilter.value +
        "&movementNumber=" + movementNumberFilter.value +
        "&solicitante=" + solicitanteFilter.value +
        "&fecha=" + fechaFilter.value +
        "&department=" + departmentFilter.value +
        "&order=" + orderFilter.value +
        "&deposit=" + depositFilter.value +
        "&movement=" + movementFilter.value;
    $.ajax({
        type: 'POST',
        url: '/inventariogg/phpurl/filtrar.php',
        data: cadena,
        success: function(data) {
            let tableBody = document.getElementById("movementsTableBody");
            tableBody.innerHTML = data;
        },
        error: function() {
            alert("Not connected");
        }
    });
};
function downfile(){
	console.log(link_click);
	window.open(link_click, '_blank');
}

nameFilter.addEventListener("input", filtrado);
movementNumberFilter.addEventListener("input", filtrado);
solicitanteFilter.addEventListener("input", filtrado);
fechaFilter.addEventListener("input", filtrado);
departmentFilter.addEventListener("input", filtrado);
orderFilter.addEventListener("input", filtrado);
depositFilter.addEventListener("input", filtrado);
movementFilter.addEventListener("input", filtrado);