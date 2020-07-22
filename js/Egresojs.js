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
        var fornite = document.getElementById("cantpro2").value;
    } else if (document.getElementById("trasp").checked) {
        var fornite = document.getElementById("cantpro1").value;
    };
    for (var i = 0; i < fornite; i++) {
        onerow()
    }
}

function onerow() {
    var table = document.getElementById("mesa"),
        elemento = document.createElement("tr"),
        contenido1 = document.createElement("td"),
        contenido2 = document.createElement("td"),
        contenido3 = document.createElement("td"),
        contenido4 = document.createElement("td"),
        contenido5 = document.createElement("td"),
        contenido6 = document.createElement("td"),
        contenido7 = document.createElement("td"),
        contenido8 = document.createElement("td"),
        contenido9 = document.createElement("td");
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
    cont5.id = "medida_" + numero;
    cont5.classList.add("med");
    cont5.placeholder = "Medida";
    cont5.readOnly = true;

    var cont6 = document.createElement("select");
    cont6.id = "unidad_" + numero;
    cont6.classList.add("und");
    cont6.placeholder = "Unidad";
    let options = ["Centímetros",
        "Mililitros",
        "Litros",
        "Metros",
        "Kilogramos",
        "Gramos",
        "Pulgadas",
        "Pies",
        "Yarda",
        "Toneladas",
        "Onzas",
        "Libras",
        "Galones",
        "Docenas",
        "Decenas",
        "Unidades"
    ];
    for (let i = 0; i < options.length; i++) {
        let option = document.createElement("option");
        let text = document.createTextNode(options[i]);
        option.appendChild(text);
        cont6.appendChild(option);
    }

    var cont7 = document.createElement("input");
    cont7.id = "deposito_" + numero;
    cont7.classList.add("depp");
    cont7.placeholder = "Deposito";
    cont7.setAttribute("list", "DepositosExistentes");

    var cont8 = document.createElement("input");
    cont8.id = "ubicacion_" + numero;
    cont8.classList.add("ubip");
    if (document.getElementById("sacarp").checked) {
        cont8.placeholder = "Motivo";
        cont8.setAttribute("list", "Motivos");
    } else {
        cont8.placeholder = "Nuevo depósito";
        cont8.setAttribute("list", "DepositosExistentes");

    };

    var cont9 = document.createTextNode("X");


    contenido1.appendChild(cont1);
    contenido2.appendChild(cont2);
    contenido3.appendChild(cont3);
    contenido4.appendChild(cont4);
    contenido5.appendChild(cont5);
    contenido6.appendChild(cont6);
    contenido7.appendChild(cont7);
    contenido8.appendChild(cont8);
    contenido9.appendChild(cont9);
    contenido9.classList.add("clearRow");



    elemento.id = numero;
    elemento.classList.add("Eliminar");
    elemento.appendChild(contenido1);
    elemento.appendChild(contenido2);
    elemento.appendChild(contenido3);
    elemento.appendChild(contenido4);
    elemento.appendChild(contenido5);
    elemento.appendChild(contenido6);
    elemento.appendChild(contenido7);
    elemento.appendChild(contenido8);
    elemento.appendChild(contenido9);


    table.appendChild(elemento);

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
            document.getElementById("unidad_" + i).id = "unidad_" + x;
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
            }
            document.getElementById("unidad_" + codigo).innerHTML = "";

            var und = everything.unidad;
            if (und == "Unidades" || und == "Decenas" || und == "Docenas") {
                let options = ["Unidades", "Decenas", "Docenas"];
                for (let i = 0; i < options.length; i++) {
                    let option = document.createElement("option");
                    let text = document.createTextNode(options[i]);

                    option.appendChild(text);
                    document.getElementById("unidad_" + codigo).appendChild(option);
                }
            } else if (und == "Mililitros" || und == "Litros" || und == "Galones") {
                let options = ["Mililitros", "Litros", "Galones"];
                for (let i = 0; i < options.length; i++) {
                    let option = document.createElement("option");
                    let text = document.createTextNode(options[i]);

                    option.appendChild(text);
                    document.getElementById("unidad_" + codigo).appendChild(option);
                }
            } else if (und == "Centímetros" || und == "Metros" || und == "Pulgadas" || und == "Pies" || und == "Yarda") {
                let options = ["Centímetros", "Metros", "Pulgadas", "Pies", "Yarda"];
                for (let i = 0; i < options.length; i++) {
                    let option = document.createElement("option");
                    let text = document.createTextNode(options[i]);

                    option.appendChild(text);
                    document.getElementById("unidad_" + codigo).appendChild(option);
                }
            } else if (und == "Kilogramos" || und == "Gramos" || und == "Toneladas" || und == "Onzas" || und == "Libras") {
                let options = ["Kilogramos", "Gramos", "Toneladas", "Onzas", "Libras"];
                for (let i = 0; i < options.length; i++) {
                    let option = document.createElement("option");
                    let text = document.createTextNode(options[i]);

                    option.appendChild(text);
                    document.getElementById("unidad_" + codigo).appendChild(option);
                }
            }
            document.getElementById("unidad_" + codigo).value = everything.unidad;
            document.getElementById("medida_" + codigo).value = everything.unidad;
        },
        error: function() {
            alert("Error, producto no encontrado");
        }
    })
}

function enviarDatos() {
    var cadena = "";
    for (var n = 1; n <= numero; n++) {

        // Datos iniciales: Cantidad, Unidad inicial y Unidad a convertir
        let value = document.getElementById("cant_" + n).value,
            initialUnit = document.getElementById("medida_" + n).value,
            finalUnit = document.getElementById("unidad_" + n).value

        // Convirtiendo de una unidad a otra
        let newValue = convertUnits(initialUnit, finalUnit, value);

        // Sino se puede transformar se detiendo el ciclo
        if (!newValue) {
            return
        }

        // Definiendo el producto que se pasara y sus datos de traslado
        // ----------------------------------------------------------------------------
        if (n == 1) {
            cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value
        } else {
            cadena = cadena + "&id" + n + "=" + document.getElementById("codigo_" + n).value
        };

        "&cantidad" + n + "=" + newValue +
            "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
            "&ubicacion" + n + "=" + document.getElementById("ubicacion_" + n).value;
        // -----------------------------------------------------------------------------

    };

    // Comprobando si es un egreso o un traslado, y dependiendo de ello registramos unos datos u otros
    // -----------------------------------------------------------------------------------------------
    const action = document.getElementById("sacarp").checked ? "egreso" : "Traslado"

    if (action = "egreso") {

        cadena += "&solicitante=" + document.getElementById("solicitanteTras2").value +
            "&razon=" + document.getElementById("razpro2").value +
            "&accion=" + "egreso" +
            "&numero=" + numero +
            "&numRef=" + document.getElementById("numref2").value;

    } else if (document.getElementById("trasp").checked) {

        cadena += "&solicitante=" + document.getElementById("solicitanteTras1").value +
            "&razon=" + document.getElementById("razpro1").value +
            "&accion=" + "traslado" +
            "&numero=" + numero +
            "&numRef=" + document.getElementById("numref1").value;

    };
    // -----------------------------------------------------------------------------------------------
    cadena += "&usuario=" + localStorage.getItem("getvalue");
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
        let value = document.getElementById("cant_" + n).value,
            initialUnit = document.getElementById("medida_" + n).value,
            finalUnit = document.getElementById("unidad_" + n).value,
            newValue = value;
        newValue = convertUnits(initialUnit, finalUnit, value);
        if (!newValue) {
            return;
        }

        if (n == 1) {
            cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value;
        } else {
            cadena = cadena +
                "&id" + n + "=" + document.getElementById("codigo_" + n).value;
        };
        cadena = cadena +
            "&producto" + n + "=" + document.getElementById("producto_" + n).value +
            "&cantidad" + n + "=" + newValue +
            "&undn" + n + "=" + initialUnit +
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

function convertUnits(initialUnit, finalUnit, value) {
    const equivalencies = {
        Centímetros: {
            Centímetros: 1,
            Metros: 100,
            Pulgadas: 2.54,
            Pies: 30.48,
            Yarda: 91.44,
        },
        Metros: {
            Centímetros: 100,
            Metros: 1,
            Pulgadas: 0.0254,
            Pies: 0.3047992424196,
            Yarda: 0.9144,
        },
        Mililitros: {
            Mililitros: 1,
            Litros: 1000,
            Galones: 3785.41,
        },
        Litros: {
            Mililitros: 0.001,
            Litros: 1,
            Galones: 3.78541,
        },
        Kilogramos: {
            Kilogramos: 1,
            Gramos: 0.001,
            Toneladas: 1000,
            Onzas: 0.0283495,
            Libras: 0.453592,
        },
        Gramos: {
            Kilogramos: 1000,
            Gramos: 1,
            Toneladas: 1000000,
            Onzas: 28.3495,
            Libras: 453.592,
        },
        Unidades: {
            Unidades: 1,
            Decenas: 10,
            Docenas: 12,
        },
        Decenas: {
            Unidades: 10,
            Decenas: 1,
            Docenas: 1.2,
        },
        Docenas: {
            Unidades: 12,
            Decenas: 1.2,
            Docenas: 1,
        },
    };
    const newValue = value * equivalencies[initialUnit][finalUnit];
    if (!newValue) {
        alert(`No se puede convertir de ${initialUnit} a ${finalUnit}`);
        return null;
    } else {
        return newValue;
    };
}