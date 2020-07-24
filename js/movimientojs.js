let numero = 0;
let filterFields = [document.getElementById("nameFilter"),
    document.getElementById("movementNumberFilter"),
    document.getElementById("solicitanteFilter"),
    document.getElementById("fechaFilter"),
    document.getElementById("departmentFilter"),
    document.getElementById("orderFilter"),
    document.getElementById("depositFilter"),
    document.getElementById("movementFilter")
]

let link_click = "";

function cerrarInformacion() {
    let tabla = document.getElementById("depositos"),
        tabla2 = document.getElementById("depositos_auditoria"),
        tableFoot = document.getElementById("depositTableFoot"),
        tableFoot2 = document.getElementById("depositTableFoot_auditoria"),
        ventanaapagada = document.getElementsByClassName("hidden")[0].id;

    if (numero != 0) {
        let tableBody = document.getElementById("tb");
        let tableBody2 = document.getElementById("tb2");
        for (let i = 0; i < numero; i++) {

            if (ventanaapagada === "ventanaDeDepositos_auditoria") {
                tableBody.innerHTML = "";
            } else if (ventanaapagada === "ventanaDeDepositos") {
                tableBody2.innerHTML = "";
            }

        }
    };
    if (tableFoot !== null) {
        tabla.removeChild(tableFoot);
    } else if (tableFoot2 !== null) {
        tabla2.removeChild(tableFoot2);
    }



    if (ventanaapagada === "ventanaDeDepositos_auditoria") {
        document.getElementById("ventanaDeDepositos").classList.add("hidden");
        document.getElementById("descargar").removeEventListener("click", downfile);
    } else if (ventanaapagada === "ventanaDeDepositos") {
        document.getElementById("ventanaDeDepositos_auditoria").classList.add("hidden");
        document.getElementById("descargar_auditoria").removeEventListener("click", downfile);
    }
    numero = 0;
    link_click = "";
}

function desplegarInformacion(datos, movimiento, calculos, link) {
    if (movimiento === "Auditoria") {
        document.getElementById("ventanaDeDepositos_auditoria").classList.remove("hidden");
    } else {
        document.getElementById("ventanaDeDepositos").classList.remove("hidden");
    }

    if (datos != "" && movimiento === "Traslado" || movimiento === "Salida") {
        let cantidadDeDatos = datos.split("--");
        let tabla = document.getElementById("depositos");
        for (let i = 0; i < cantidadDeDatos.length - 1; i++) {
            let dato = cantidadDeDatos[i].split("||");
            let html = `<tr>
							<td>${dato[0]}</td>
							<td>${dato[1]}</td>
							<td>${dato[2]}</td>
							<td>${dato[3]}</td>
						</tr>`
            document.getElementById("tb").innerHTML += html;
            numero++
        };
        let html;
        if (movimiento === "Traslado" || movimiento === "Salida") {
            html = `<tfoot id="depositTableFoot">
                        <tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
                        </tr>
                    </tfoot>`;
        }

        document.getElementById("depositos").innerHTML += html;
        document.getElementById("tableHeaderVariable2").innerHTML = "Antiguo Depósito";
    } else if (movimiento === "Ingreso") {
        let cantidadDeDatos = datos.split("--"),
            tabla = document.getElementById("depositos"),
            calcs = calculos.split("!!");

        for (let i = 0; i < cantidadDeDatos.length - 1; i++) {
            let dato = cantidadDeDatos[i].split("||");
            let html = `<tr>
							<td>${dato[0]}</td>
							<td>${dato[1]}</td>
							<td>${dato[2] + "$"}</td>
							<td>${dato[3]}</td>
                        </tr>`
            document.getElementById("tb").innerHTML += html;
            numero++
        };
        let html = `<tfoot id="depositTableFoot">
                        <tr>
                            <td></td>
                            <td id="subtotal">Subtotal:${calcs[0] + "$"}</td>
                            <td id="iva">IVA:${calcs[1] + "$"}</td>
                            <td id="total">Total:${calcs[2] + "$"}</td>
                        </tr>
                    </tfoot>`;
        document.getElementById("depositos").innerHTML += html;
        document.getElementById("tableHeaderVariable").innerHTML = "Depósito de entrada";
        document.getElementById("tableHeaderVariable2").innerHTML = "Precio unitario";
    };
    if (movimiento === "Traslado") {
        document.getElementById("tableHeaderVariable").innerHTML = "Nuevo Depósito";
    } else if (movimiento === "Salida") {
        document.getElementById("tableHeaderVariable").innerHTML = "Razón";
    } else if (movimiento === "Auditoria") {
        let cantidadDeDatos = datos.split("--");
        let tabla = document.getElementById("depositos_auditoria");
        for (let i = 0; i < cantidadDeDatos.length - 1; i++) {
            let dato = cantidadDeDatos[i].split("||");
            let html = `<tr>
							<td>${dato[0]}</td>
							<td>${dato[1]}</td>
							<td>${dato[2] + " " + dato[7]}</td>
							<td>${dato[3] + " " + dato[6]}</td>
							<td>${dato[4] + "$"}</td>
							<td>${dato[5] + "$"}</td>
						</tr>`
            document.getElementById("tb2").innerHTML += html;
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

function downfile() {
    window.open(link_click, '_blank');
}