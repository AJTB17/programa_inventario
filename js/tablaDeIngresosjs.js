let numero = 0;

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

function cambiarEstado() {
    var title = document.getElementById("depositosTitle").innerHTML,
        split = title.split("--"),
        fact = "fact=" + split[0];

    $.ajax({
        type: 'POST',
        url: "/inventariogg/phpurl/cambiarEstado.php",
        data: fact,
        success: function(dato) {
            if (dato != "") {
                alert(dato);
            } else {
                location.reload();
            }
        },
        error: function() {
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });
}