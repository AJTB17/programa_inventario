let numero = 0;
let movementNumberFilter = document.getElementById("movementNumberFilter"),
    fechaFilter = document.getElementById("fechaFilter"),
    proveedorCodeFilter = document.getElementById("proveedorCodeFilter"),
    nameFilter = document.getElementById("nameFilter"),
    productNameFilter = document.getElementById("productNameFilter"),
    departmentFilter = document.getElementById("departmentFilter"),
    orderFilter = document.getElementById("orderFilter"),
    depositFilter = document.getElementById("depositFilter");

function desplegarMovimientos(datos) {
    document.getElementById("ventanaDeDepositos").classList.remove("hidden");
    if (datos.length > 8) {
        let datosSeparados = datos.split("!!");
        let facturaProveedor = datosSeparados[0];
        let datosDeFactura = datosSeparados[1].split("--");
        let tabla = document.getElementById("depositos");
        let tableHeader = document.getElementById("tableHeader");
        for (let i = 0; i < datosDeFactura.length - 1; i++) {
            let dato = datosDeFactura[i].split("||");
            let html = `<tr>
							<td>${dato[0]}</td>
							<td>${dato[1] + " " + dato[4]}</td>
							<td>${dato[2] + "$"}</td>
							<td>${dato[3]}</td>
						</tr>`
            document.getElementById("tb").innerHTML += html;
            numero++;
        }
		let html = `<tfoot id="depositTableFoot">
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tfoot>`;
			document.getElementById("depositos").innerHTML += html;
        document.getElementById("depositosTitle").innerHTML = facturaProveedor;
    };     

    document.getElementById("depositCancelButton").addEventListener("click", cerrarInformacion);
}
function cerrarInformacion() {
    let tabla = document.getElementById("depositos"),
        tableFoot = document.getElementById("depositTableFoot");
	
    if (numero != 0) {
        let tableBody = document.getElementById("tb");
        for (let i = 0; i < numero; i++) {
			tableBody.innerHTML = "";  
        }
    };
	tabla.removeChild(tableFoot);
	document.getElementById("ventanaDeDepositos").classList.add("hidden");
    numero = 0;
}
function filter() {
    let cadena = "movementNumber=" + movementNumberFilter.value +
        "&fecha=" + fechaFilter.value +
        "&proveedorCode=" + proveedorCodeFilter.value +
        "&name=" + nameFilter.value +
        "&productName=" + productNameFilter.value +
        "&department=" + departmentFilter.value +
        "&order=" + orderFilter.value +
        "&deposit=" + depositFilter.value;
    $.ajax({
        type: "POST",
        url: "/inventariogg/phpurl/filtradoDeIngresos.php",
        data: cadena,
        success: function(data) {
            let table = document.getElementById("incomesTableBody");
            table.innerHTML = data;
        }
    })
}

movementNumberFilter.addEventListener("input", filter);
fechaFilter.addEventListener("input", filter);
proveedorCodeFilter.addEventListener("input", filter);
nameFilter.addEventListener("input", filter);
productNameFilter.addEventListener("input", filter);
departmentFilter.addEventListener("input", filter);
orderFilter.addEventListener("input", filter);
depositFilter.addEventListener("input", filter);