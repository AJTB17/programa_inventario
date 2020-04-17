let numero = 0,
    positon = "egresos",
    numRef = "",
    accion = "";

document.getElementById("trasp").addEventListener("click", desplegarTraslados);
document.getElementById("sacarp").addEventListener("click", desplegarSalidas);
document.getElementById("add1").addEventListener("click", createTable);
document.getElementById("add2").addEventListener("click", createTable);
document.getElementById("one").addEventListener("click", onerow);
document.getElementById("send").addEventListener("click", enviarDatos);

function desplegarTraslados() {
    document.getElementById("changer").innerHTML = "Nuevo depósito";
    document.getElementById("sacarp").checked = false;
    document.getElementById("sacarp").addEventListener("click", desplegarSalidas);
    document.getElementById("trasp").removeEventListener("click", desplegarTraslados);
    document.getElementById("ventanaDeTraslados").classList.remove("hidden");
    document.getElementById("ventanaDeSalidas").classList.add("hidden");
    for (let n = 1; n <= numero; n++) {
        document.getElementById("ubicacion_" + n).placeholder = "Nuevo depósito";
        document.getElementById("ubicacion_" + n).value = "";
        document.getElementById("ubicacion_" + n).removeAttribute("list");
        document.getElementById("ubicacion_" + n).setAttribute("list", "DepositosExistentes");
    }
}

function desplegarSalidas() {
    document.getElementById("changer").innerHTML = "Motivo";
    document.getElementById("trasp").checked = false;
    document.getElementById("trasp").addEventListener("click", desplegarTraslados);
    document.getElementById("sacarp").removeEventListener("click", desplegarSalidas);
    document.getElementById("ventanaDeSalidas").classList.remove("hidden");
    document.getElementById("ventanaDeTraslados").classList.add("hidden");
    for (let n = 1; n <= numero; n++) {
        document.getElementById("ubicacion_" + n).placeholder = "Motivo";
        document.getElementById("ubicacion_" + n).value = "";
        document.getElementById("ubicacion_" + n).removeAttribute("list");
        document.getElementById("ubicacion_" + n).setAttribute("list", "Motivos");

    }
}

function createTable() {
    if (document.getElementById("sacarp").checked) {
        var table = document.getElementById("mesa"),
            fornite = document.getElementById("cantpro2").value,
            pata = document.getElementById("reference");
    } else if (document.getElementById("trasp").checked) {
        var table = document.getElementById("mesa"),
            fornite = document.getElementById("cantpro1").value,
            pata = document.getElementById("reference");
    };
    for (var i = 0; i < fornite; i++) {
        onerow()
    }
    $(".clearRow").off();
    $('.clearRow').click(clearRow);
}

function onerow() {
    if (document.getElementById("sacarp").checked) {
        var table = document.getElementById("mesa"),
            fornite = document.getElementById("cantpro2").value,
            pata = document.getElementById("reference");
    } else if (document.getElementById("trasp").checked) {
        var table = document.getElementById("mesa"),
            fornite = document.getElementById("cantpro1").value,
            pata = document.getElementById("reference");
    };
    var elemento = document.createElement("tr"),
        contenido1 = document.createElement("td"),
        contenido2 = document.createElement("td"),
        contenido3 = document.createElement("td"),
        contenido4 = document.createElement("td"),
        contenido5 = document.createElement("td"),
        contenido6 = document.createElement("td"),
        contenido7 = document.createElement("td");
    numero++

    var cont1 = document.createElement("input");
    cont1.id = "codigo_" + numero;
    cont1.classList.add("cp");
    cont1.placeholder = "Codigo";
    cont1.addEventListener("keyup", autocomplete);

    var cont2 = document.createElement("input");
    cont2.id = "producto_" + numero;
    cont2.classList.add("pp");
    cont2.placeholder = "Producto";
    cont2.addEventListener("keyup", autocomplete);
    cont2.setAttribute("list", "Productos");

    var cont3 = document.createElement("input");
    cont3.id = "departamento_" + numero;
    cont3.classList.add("dp");
    cont3.placeholder = "Departamento";
    cont3.readOnly = true;

    var cont4 = document.createElement("input");
    cont4.id = "cant_" + numero;
    cont4.classList.add("cap");
    cont4.placeholder = "Cantidad";

    var cont5 = document.createElement("input");
    cont5.id = "deposito_" + numero;
    cont5.classList.add("depp");
    cont5.placeholder = "Deposito";
    cont5.setAttribute("list", "DepositosExistentes");

    var cont6 = document.createElement("input");
    cont6.id = "ubicacion_" + numero;
    cont6.classList.add("ubip");
    if (document.getElementById("sacarp").checked) {
        cont6.placeholder = "Motivo";
        cont6.setAttribute("list", "Motivos");
    } else {
        cont6.placeholder = "Nuevo depósito";
        cont6.setAttribute("list", "DepositosExistentes");

    };

    var cont7 = document.createTextNode("X");


    contenido1.appendChild(cont1);
    contenido2.appendChild(cont2);
    contenido3.appendChild(cont3);
    contenido4.appendChild(cont4);
    contenido5.appendChild(cont5);
    contenido6.appendChild(cont6);
    contenido7.appendChild(cont7);
    contenido7.classList.add("clearRow");



    elemento.id = numero;
    elemento.classList.add("Eliminar");
    elemento.appendChild(contenido1);
    elemento.appendChild(contenido2);
    elemento.appendChild(contenido3);
    elemento.appendChild(contenido4);
    elemento.appendChild(contenido5);
    elemento.appendChild(contenido6);
    elemento.appendChild(contenido7);


    table.appendChild(elemento, pata);


    $(".clearRow").off();
    $('.clearRow').click(clearRow);
}

function clearRow() {
    var mensaje = confirm("¿Desea eliminar ésta fila?");
    if (this.parentNode.id == numero && mensaje == true) {
        var column = this.parentNode,
            rowx = column.parentNode;
        rowx.removeChild(column);
        numero--;
    } else if (mensaje == true) {
        var num1 = parseInt(this.parentNode.nextSibling.id);
        var column = this.parentNode,
            rowx = column.parentNode;
        rowx.removeChild(column);
        for (var i = num1; i <= numero; i++) {
            var x = i - 1;
            document.getElementById(i).id = x;
            document.getElementById("codigo_" + i).id = "codigo_" + x;
            document.getElementById("producto_" + i).id = "producto_" + x;
            document.getElementById("departamento_" + i).id = "departamento_" + x;
            document.getElementById("cant_" + i).id = "cant_" + x;
            document.getElementById("deposito_" + i).id = "deposito_" + x;
            document.getElementById("ubicacion_" + i).id = "ubicacion_" + x;
        };
        numero--;
    };
}

function autocomplete() {
    var cadena = "id=" + this.value;
    var codigo = this.parentNode.parentNode.id;
    var producto = "producto_" + codigo;
    var codi = "codigo_" + codigo;
    var id = this.id;
    $.ajax({
        type: 'POST',
        url: "/inventariogg/phpurl/traerDatos_i.php",
        data: cadena,
        success: function(data) {
            if (id === producto) {
                var everything = JSON.parse(data);
                document.getElementById("codigo_" + codigo).value = everything.codigo;
                document.getElementById("departamento_" + codigo).value = everything.departamento;
            } else if (id === codi) {
                var everything = JSON.parse(data);
                document.getElementById("producto_" + codigo).value = everything.producto;
                document.getElementById("departamento_" + codigo).value = everything.departamento;
            };
        },
        error: function() {
            alert("Error, producto no encontrado");
        }
    })
}

function enviarDatos() {
    var cadena = "";
    for (var n = 1; n <= numero; n++) {
        if (n == 1) {
            cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                "&ubicacion" + n + "=" + document.getElementById("ubicacion_" + n).value;
        } else {
            cadena = cadena +
                "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                "&ubicacion" + n + "=" + document.getElementById("ubicacion_" + n).value;
        };
    };
    if (document.getElementById("sacarp").checked) {
        var solicitante = document.getElementById("solicitanteTras2").value;
        var razon = document.getElementById("razpro2").value;
        var accion = "egreso";
        let numRef = document.getElementById("numref2").value;
        cadena = cadena +
            "&solicitante=" + solicitante +
            "&razon=" + razon +
            "&accion=" + accion +
            "&numero=" + numero +
            "&numRef=" + numRef;
    } else if (document.getElementById("trasp").checked) {
        var solicitante = document.getElementById("solicitanteTras1").value;
        var razon = document.getElementById("razpro1").value;
        var accion = "traslado";
        let numRef = document.getElementById("numref1").value;
        cadena = cadena +
            "&solicitante=" + solicitante +
            "&razon=" + razon +
            "&accion=" + accion +
            "&numero=" + numero +
            "&numRef=" + numRef;
    };
    $.ajax({
        type: 'POST',
        url: "/inventariogg/phpurl/movilizarProductos.php",
        data: cadena,
        success: function(dato) {
            if (dato != "") {
                alert(dato);
            } else {
                reporte();
            }
        },
        error: function() {
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });
}

function reporte() {
    var cadena = "";
    for (var n = 1; n <= numero; n++) {
        if (n == 1) {
            cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value;
        } else {
            cadena = cadena +
                "&id" + n + "=" + document.getElementById("codigo_" + n).value;
        };
        cadena = cadena +
            "&producto" + n + "=" + document.getElementById("producto_" + n).value +
            "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
            "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
            "&ubicacion" + n + "=" + document.getElementById("ubicacion_" + n).value;
    };

    if (document.getElementById("sacarp").checked) {
        var solicitante = document.getElementById("solicitanteTras2").value,
            razon = document.getElementById("razpro2").value;
        accion = "egreso";
        numRef = document.getElementById("numref2").value;
        cadena = cadena +
            "&solicitante=" + solicitante +
            "&razon=" + razon +
            "&accion=" + accion +
            "&numero=" + numero +
            "&numRef=" + numRef;
        for (var n = 1; n <= numero; n++) {
            cadena = cadena +
                "&ubicacion" + n + "=" + document.getElementById("ubicacion_" + n).value;
        }
    } else if (document.getElementById("trasp").checked) {
        var solicitante = document.getElementById("solicitanteTras1").value,
            razon = document.getElementById("razpro1").value;
        accion = "traslado";
        numRef = document.getElementById("numref1").value;
        cadena = cadena +
            "&solicitante=" + solicitante +
            "&razon=" + razon +
            "&accion=" + accion +
            "&numero=" + numero +
            "&numRef=" + numRef;
        for (var n = 1; n <= numero; n++) {
            cadena = cadena +
                "&ubicacion" + n + "=" + " Deposito " + document.getElementById("ubicacion_" + n).value;
        }
    };
    $.ajax({
        type: 'POST',
        url: "/inventariogg/modeloreporte_egresos.php",
        data: cadena,
        success: function() {
            moverarchivo();
        },
        error: function() {
            alert("Reporte no realizado");
        }
    });
}

function moverarchivo() {
    let dato = "n_ajuste=" + numRef +
        "&posicion=" + positon +
        "&accion=" + accion;

    setTimeout(function() {
        $.ajax({
            type: 'POST',
            url: "/inventariogg/phpurl/moverarchivo.php",
            data: dato,
            success: function() {
                window.open("./phpurl/comprobantes" + accion + "/" + accion + "-comprobante" + numRef + ".pdf", '_blank');
            },
            error: function() {
                alert("movimiento no realizado");
            }
        });
    }, 1000);

}