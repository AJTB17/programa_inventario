String.prototype.reverse = function() {
    let x = this.length;
    let cadena = "";
    while (x >= 0) {
        cadena += this.charAt(x);
        x--;
    }
    return cadena;
}

var codigoProduct;
let numero = 0;

$("#addProducto").click(addProducto);
$(".modProducto").click(modProducto);
$("#productCancelButton").click(quitarFormularioProductos);

function quitarFormularioProductos() {
    document.getElementById("GrayBackgroundProduct").classList.add("hidden");
}
function desplegarDepositos(caracts, datos, producto) {
    document.getElementById("ventanaDeDepositos").classList.remove("hidden");
    document.getElementById("depositosTitle").innerHTML = producto;
	
	const caract = caracts.split("||");
    if (datos != "") {
        let depositos = datos.split("__");
        let tabla = document.getElementById("depositos");
        let tableHeader = document.getElementById("tableHeader");
        for (let i = 0; i < depositos.length - 1; i++) {
            let d = depositos[i].split("||");
            let element = document.createElement("tr"),
                contenido1 = document.createElement("td"),
                contenido2 = document.createElement("td"),
                contenido3 = document.createElement("td");

            let cont1 = document.createTextNode(d[2] + " " + caract[0]),
                cont2 = document.createTextNode(d[1]),
                cont3 = document.createTextNode(d[0]);


            contenido1.appendChild(cont1);
            contenido2.appendChild(cont2);
            contenido3.appendChild(cont3);

            element.appendChild(contenido3);
            element.appendChild(contenido2);
            element.appendChild(contenido1);


            element.classList.add("row");

            tabla.appendChild(element, tableHeader);

            numero++;
        };
    };

    
    document.getElementById("descuentoInput").value = caract[1] + "%";
    document.getElementById("departamentoInput").value = caract[2];
    document.getElementById("reordenInput").value = caract[3] + " " + caract[0];
    document.getElementById("fechaultpedidoInput").value = caract[4];
    document.getElementById("noultimopedidoInput").value = caract[5];

    document.getElementById("depositCancelButton").addEventListener("click", cerrarDepositos);
}
function cerrarDepositos() {
    if (numero != 0) {
        let rows = document.getElementsByClassName("row");
        let tabla = document.getElementById("depositos");
        for (let i = 0; i < numero; i++) {
            tabla.removeChild(rows[0]);
        };
    };
    numero = 0;
    document.getElementById("ventanaDeDepositos").classList.add("hidden");
}
function addProducto() {
    document.getElementById("GrayBackgroundProduct").classList.remove("hidden");
    $("#productAcceptButton").click(aceptarNuevoProducto);


    $("#idProductInput").val("");
    $("#codigoProductInput").val("");
    $("#nombreProductInput").val("");
    $("#unidadesProductInput").val("");
    $("#descuentoProductInput").val("");
    $("#departamentoProductInput").val("");
    $("#reordenProductInput").val("");
    $("#IVAinput").val("");
}
function aceptarNuevoProducto() {
    cadena = "id=" + $('#idProductInput').val() +
        "&codigo=" + $('#codigoProductInput').val() +
        "&nombre=" + $('#nombreProductInput').val() +
        "&unidades=" + $('#unidadesProductInput').val() +
        "&descuento=" + $('#descuentoProductInput').val() +
        "&departamento=" + $('#departamentoProductInput').val() +
        "&reorden=" + $('#reordenProductInput').val() +
        "&IVA=" + toAngloDecimalNotation($('#IVAinput').val());

    $.ajax({
        type: 'POST',
        url: '/inventariogg/phpurl/agregarProducto.php',
        data: cadena,
        success: function(data) {
            if (data == "Codigo existente") {
                alert("El codigo que ha puesto ya existe");
            } else {
                location.reload();
            }
        },
        error: function() {
            alert("Hubo un error al conectar con la base de datos")
        }
    })
    quitarFormularioProductos();
    $("#addProducto").click(addProducto);
    $(".modProducto").click(modProducto);
    $("#productCancelButton").click(quitarFormularioProductos);
}
function clearProduct(datos) {
    d = datos.split("||");
    cadena = "id=" + d[0] + "&usuario=" + localStorage.getItem("getvalue");
    if (confirm("Desea eliminar el producto " + d[1] + "?")) {
        $.ajax({
            type: 'POST',
            url: '/inventariogg/phpurl/eliminarProducto.php',
            data: cadena,
            success: function() {
                location.reload();
            },
            error: function() {
                alert("Hubo un error al conectar con la base de datos");
            }
        })
    }
}
function modProducto(datos) {
    $("#productAcceptButton").off();
    $("#productAcceptButton").click(modDatosProducto);
    document.getElementById("GrayBackgroundProduct").classList.remove("hidden");

    let d = datos.split("||");

    codigoProduct = d[1];

    $("#idProductInput").val(d[0]);
    $("#codigoProductInput").val(d[1]);
    $("#nombreProductInput").val(d[2]);
    $("#unidadesProductInput").val(d[3]);
    $("#descuentoProductInput").val(d[4]);
    $("#departamentoProductInput").val(d[5]);
    $("#reordenProductInput").val(d[6]);
    $("#IVAinput").val(d[7]);
}
function modDatosProducto() {
    if ($('#codigoProductInput').val() == codigoProduct) {
        cadena = "id=" + $('#idProductInput').val() +
            "&codigo=" + "NotAct" +
            "&nombre=" + $('#nombreProductInput').val() +
            "&unidades=" + $('#unidadesProductInput').val() +
            "&descuento=" + $('#descuentoProductInput').val() +
            "&departamento=" + $('#departamentoProductInput').val() +
            "&reorden=" + $('#reordenProductInput').val() +
            "&IVA=" + toAngloDecimalNotation($('#IVAinput').val());
    } else {
        cadena = "id=" + $('#idProductInput').val() +
            "&codigo=" + $('#codigoProductInput').val() +
            "&nombre=" + $('#nombreProductInput').val() +
            "&unidades=" + $('#unidadesProductInput').val() +
            "&descuento=" + $('#descuentoProductInput').val() +
            "&departamento=" + $('#departamentoProductInput').val() +
            "&reorden=" + $('#reordenProductInput').val() +
            "&IVA=" + toAngloDecimalNotation($('#IVAinput').val());
    }
    $.ajax({
        type: 'POST',
        url: '/inventariogg/phpurl/modificarProducto.php',
        data: cadena,
        success: function(data) {
            if (data === "Codigo existente") {
                alert("El codigo que ha puesto ya existe");
            } else {
                location.reload();
            }
        },
        error: function() {
            alert("Hubo un error al conectar con la base de datos")
        }
    })
    quitarFormularioProductos();
}
function toAngloDecimalNotation(str) {
    if (str.includes(".")) {
        let numberWithoutDots = str.replace(".", "").replace(",", ".");
        return numberWithoutDots;
    }
    return str;
}
function toEspDecimalNotation(str) {
    let stringChanged = str.replace(".", ",");
    if (stringChanged.split(",")[0].length > 3) {
        let inversedString = stringChanged.split(",")[0].reverse();
        let arrayOfStrings = inversedString.match(/.{1,3}/g);
        let cadena = "";
        for (let i = 0; i < arrayOfStrings.length; i++) {
            if (i == 0) {
                cadena += arrayOfStrings[i];
            } else {
                cadena += "." + arrayOfStrings[i];
            }
        }
        return cadena.reverse() + "," + stringChanged.split(",")[1];
    }
}