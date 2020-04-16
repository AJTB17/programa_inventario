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
	if(movimiento === "Auditoria"){
		document.getElementById("ventanaDeDepositos_auditoria").classList.remove("hidden");
	} else {
		document.getElementById("ventanaDeDepositos").classList.remove("hidden");
	}
	
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
    }
	else if (movimiento === "Auditoria"){
        let cantidadDeDatos = datos.split("--");
        let tabla = document.getElementById("depositos_auditoria");
        for (let i = 0; i < cantidadDeDatos.length - 1; i++) {
            let dato = cantidadDeDatos[i].split("||");
            let html = `<tbody class="tableBody_auditoria">
                            <tr>
                                <td>${dato[0]}</td>
                                <td>${dato[1]}</td>
                                <td>${dato[2]}</td>
                                <td>${dato[3]}</td>
                                <td>${dato[4]}</td>
                                <td>${dato[5]}</td>
                            </tr>
                        </tbody>`
            document.getElementById("depositos_auditoria").innerHTML += html;
            numero++
        };
        let html = `<tfoot id="depositTableFoot_auditoria">
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tfoot>`;
        document.getElementById("depositos_auditoria").innerHTML += html;
		document.getElementById("depositCancelButton_auditoria").addEventListener("click", cerrarInformacion);
		document.getElementById("descargar_auditoria").addEventListener("click", downfile)
	}
    document.getElementById("depositCancelButton").addEventListener("click", cerrarInformacion);
	document.getElementById("descargar").addEventListener("click", downfile);
	link_click = link;
}
function cerrarInformacion() {
    let tabla = document.getElementById("depositos");
    let tabla2 = document.getElementById("depositos_auditoria");
    let tableFoot = document.getElementById("depositTableFoot");
    let tableFoot2 = document.getElementById("depositTableFoot_auditoria");
    if (numero != 0) {
        let tableBody = document.getElementsByClassName("tableBody");
        let tableBody2 = document.getElementsByClassName("tableBody_auditoria");
        for (let i = 0; i < numero; i++) {
			console.log(tableBody[i]);
			if(tableBody[i] !== undefined){
				tabla.removeChild(tableBody[0]);
			} else {
				tabla2.removeChild(tableBody2[0]);
			}
            
        }
    };
	if(tableFoot !== null){
		tabla.removeChild(tableFoot);
	} else if (tableFoot2 !== null){
		tabla2.removeChild(tableFoot2);
	}
	
    var ventanaapagada = document.getElementsByClassName("hidden")[0].id;
	console.log(ventanaapagada);
	if(ventanaapagada === "ventanaDeDepositos_auditoria"){
		document.getElementById("ventanaDeDepositos").classList.add("hidden");
		document.getElementById("descargar").removeEventListener("click", downfile);
	}
	else if(ventanaapagada === "ventanaDeDepositos"){
		document.getElementById("ventanaDeDepositos_auditoria").classList.add("hidden");
		document.getElementById("descargar_auditoria").removeEventListener("click", downfile);
	}
    numero = 0;
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
}
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