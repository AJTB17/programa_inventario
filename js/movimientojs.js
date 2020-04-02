let numero = 0;
let nameFilter = document.getElementById("nameFilter"),
    movementNumberFilter = document.getElementById("movementNumberFilter"),
    solicitanteFilter = document.getElementById("solicitanteFilter"),
    fechaFilter = document.getElementById("fechaFilter"),
    departmentFilter = document.getElementById("departmentFilter"),
    orderFilter = document.getElementById("orderFilter"),
    depositFilter = document.getElementById("depositFilter"),
    movementFilter = document.getElementById("movementFilter");
    
function desplegarInformacion (datos, movimiento, calculos) {
    document.getElementById("ventanaDeDepositos").classList.remove("hidden");
    if(datos != "" && movimiento === "Traslado" || movimiento === "Salida") {
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
    } else if (movimiento === "Ingreso") {
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
    if(movimiento === "Traslado") {
        document.getElementById("tableHeaderVariable").innerHTML = "Nuevo Depósito";
    } else if(movimiento === "Salida") {
        document.getElementById("tableHeaderVariable").innerHTML = "Razón";
    };
    document.getElementById("depositCancelButton").addEventListener("click", cerrarInformacion);
};
function cerrarInformacion() {
    let tabla = document.getElementById("depositos");
    let tableFoot = document.getElementById("depositTableFoot");
    if (numero != 0){
        let tableBody = document.getElementsByClassName("tableBody");
        for (let i = 0; i < numero ; i++) {
            tabla.removeChild(tableBody[0]);
        }
    };
    tabla.removeChild(tableFoot);
    document.getElementById("ventanaDeDepositos").classList.add("hidden");
    numero = 0;
};
function filtrado(){
    let cadena = "name=" + nameFilter.value +
                 "&movementNumber=" + movementNumberFilter.value +
                 "&solicitante=" + solicitanteFilter.value +
                 "&fecha=" + fechaFilter.value +
                 "&department=" + departmentFilter.value +
                 "&order=" + orderFilter.value +
                 "&deposit=" + depositFilter.value +
                 "&movement=" + movementFilter.value;
    $.ajax({
        type:'POST',
        url:'/inventariogg/phpurl/filtrar.php',
        data:cadena,
        success: function(data){
            let table = document.getElementById("movementsTable");
            table.innerHTML = "";
            let tableStructure = `<table id="movementsTable">
                            <thead>
                               <tr>
                                    <th>Número de Movimiento</th>
                                    <th>Solicitante</th>
                                    <th>Fecha de Acción</th>
                                    <th>Movimiento</th>                                   
                                   </tr>
                            </thead>
                            <tbody id="movementsTableBody">
                            </tbody>
                        </table>`
            table.innerHTML = tableStructure;
            let tableBody = document.getElementById("movementsTableBody");
            tableBody.innerHTML = data;
        },
        error: function(){
            alert("Not connected");
        }
    });
};

nameFilter.addEventListener("keyup", filtrado);
movementNumberFilter.addEventListener("keyup", filtrado);
solicitanteFilter.addEventListener("keyup", filtrado);
fechaFilter.addEventListener("change", filtrado);
departmentFilter.addEventListener("keyup", filtrado);
orderFilter.addEventListener("change", filtrado);
depositFilter.addEventListener("keyup", filtrado);
movementFilter.addEventListener("change", filtrado);
