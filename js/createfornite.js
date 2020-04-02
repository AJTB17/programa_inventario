var numero = 0;

$('#add2').click(createTable);
$('#one').click(onerow);
document.querySelector("#codigopro").addEventListener("keyup", autocompletePro);
document.querySelector("#send").addEventListener("click", enviarDatos);

function createTable(){
    var table = document.getElementById("mesa"),
        fornite = document.getElementById("cant-prod").value,
        pata = document.getElementById("reference");
        
        
    for(var i=0; i<fornite; i++){
        onerow();
        
    }
    $(".clearRow").off();
    $('.clearRow').click(clearRow);
};
function onerow(){
    var table = document.getElementById("mesa"),
        fornite = document.getElementById("cant-prod").value,
        pata = document.getElementById("reference");
        
        
    var elemento = document.createElement("tr"),
        contenido1 = document.createElement("td"),
        contenido2 = document.createElement("td"),
        contenido3 = document.createElement("td"),
        contenido4 = document.createElement("td"),
        contenido5 = document.createElement("td"),
        contenido6 = document.createElement("td"),
        contenido7 = document.createElement("td"),
        contenido8 = document.createElement("td"),
        contenido9 = document.createElement("td"),
        contenido10 = document.createElement("td"),
        contenido11 = document.createElement("td");
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
    cont4.addEventListener("keyup", calc);
    
    var cont5 = document.createElement("input");
    cont5.id = "unidad_" + numero;
    cont5.classList.add("und");
    cont5.placeholder = "Unidad";
        
    var cont6 = document.createElement("input");
    cont6.id = "deposito_" + numero;
    cont6.classList.add("depp");
    cont6.placeholder = "Deposito";
    cont6.setAttribute("list", "DepositosExistentes");
        
    var cont7 = document.createElement("input");
    cont7.id = "ubicacion_" + numero;
    cont7.classList.add("ubip");
    cont7.placeholder = "Ubicación";
        
    var cont8 = document.createElement("input");
    cont8.id = "p/u_" + numero;
    cont8.classList.add("pup");
    cont8.placeholder = "Precio unidad";
    cont8.addEventListener("keyup", calc);
        
    var cont9 = document.createElement("input");
    cont9.id = "iva_" + numero;
    cont9.placeholder = "Iva";
    cont9.classList.add("ip");
    cont9.readOnly = true;
    
    var cont10 = document.createTextNode("0");
        
    var cont11 = document.createTextNode("X");
        
        
    contenido1.appendChild(cont1);
    contenido2.appendChild(cont2);
    contenido3.appendChild(cont3);
    contenido4.appendChild(cont4);
    contenido5.appendChild(cont5);
    contenido6.appendChild(cont6);
    contenido7.appendChild(cont7);
    contenido8.appendChild(cont8);
    contenido9.appendChild(cont9);
    contenido10.appendChild(cont10);
    contenido10.id = "total_" + numero;
    contenido10.classList.add("top");
    contenido11.appendChild(cont11);
    contenido11.classList.add("clearRow");
        
        
        
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
    elemento.appendChild(contenido10);
    elemento.appendChild(contenido11);
    
        
        
    table.appendChild(elemento, pata);
    
    $(".clearRow").off();
    $('.clearRow').click(clearRow);
};
function clearRow(){
    var mensaje = confirm("¿Desea eliminar ésta fila?");
    if(this.parentNode.id == numero && mensaje == true){
        var column = this.parentNode,
            rowx = column.parentNode;
        rowx.removeChild(column);
        numero--;
        calculate();
    } else if (mensaje == true){
        var num1 = parseInt(this.parentNode.nextSibling.id);
        var column = this.parentNode,
            rowx = column.parentNode;
        rowx.removeChild(column);
        for (var i = num1 ; i <= numero ; i++){
            var x = i-1;
            document.getElementById(i).id = x;
            document.getElementById("codigo_" + i).id = "codigo_" + x;
            document.getElementById("producto_" + i).id = "producto_" + x;
            document.getElementById("departamento_" + i).id = "departamento_" + x;
            document.getElementById("cant_" + i).id = "cant_" + x;
            document.getElementById("unidad_" + i).id = "unidad_" + x;
            document.getElementById("deposito_" + i).id = "deposito_" + x;
            document.getElementById("ubicacion_" + i).id = "ubicacion_" + x;
            document.getElementById("p/u_" + i).id = "p/u_" + x;
            document.getElementById("iva_" + i).id = "iva_" + x;
            document.getElementById("total_" + i).id = "total_" + x;
        };
        numero--;
        calculate();
    };
};
function calc(){
    let result = 0,
        id = this.id,
        variableId = id.split("_")[1],
        dato2;
    
    if(this.id == "cant_" + variableId){
        dato2 = document.getElementById("p/u_" + variableId).value;
    } else if (this.id == "p/u_" + variableId) {
        dato2 = document.getElementById("cant_" + variableId).value;
    }
    
    let dato1 = this.value,
        resultado = dato1 * dato2;
    
    
    document.getElementById("total_" + variableId).innerHTML = resultado;
    calculate();
};
function autocomplete() {
    var cadena = "id=" + this.value;
    var codigo = this.parentNode.parentNode.id;
    var producto = "producto_" + codigo;
    var codi = "codigo_" + codigo;
    var id = this.id;
    $.ajax({
        type:'POST',
        url:"/inventariogg/phpurl/traerDatos.php",
        data:cadena,
        success:function(data){
            if (id === producto){
                var everything = JSON.parse(data);
                document.getElementById("codigo_" + codigo).value = everything.codigo;
                document.getElementById("departamento_" + codigo).value = everything.departamento;
                document.getElementById("iva_" + codigo).value = everything.iva;

                calculate();
            } 
            else if(id === codi){
                var everything = JSON.parse(data);
                document.getElementById("producto_" + codigo).value = everything.producto;
                document.getElementById("departamento_" + codigo).value = everything.departamento;
                document.getElementById("iva_" + codigo).value = everything.iva;

                calculate();
            }
        },
        error:function(){
                    alert("Error, producto no encontrado");
        }
    })
};
function autocompletePro(){
    var cadena = "codigo=" + this.value;
    $.ajax({
        type:"POST",
        url:"/inventariogg/phpurl/traerProveedor.php",
        data:cadena,
        success:function(data){
            var todo = JSON.parse(data);
            document.getElementById("nombrepro").value = todo.nombre;
            document.getElementById("rifpro").value = todo.rif;
        }, error: function(){
            alert("Error, código de proveedor no encontrado.");
        }
    })
};
function enviarDatos(){
    var cadena = "",
        total = "",
        variante = document.getElementById("totalConIva").innerHTML,
        codProveedor = document.getElementById("codigopro").value,
        numFactura = document.getElementById("numeroFactura").value,
        fechaDeIng = document.getElementById("fechadeing").value;
    
    for (var z = 10; z < variante.length ; z++){
        total = total + variante[z]
    };
    for(var n = 1; n<=numero; n++) {
        if(n==1){
            cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                     "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                     "&preciou" + n + "=" + document.getElementById("p/u_" + n).value +
                     "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                     "&ubicacion" + n + "=" + document.getElementById("ubicacion_" + n).value;

        } else{
            cadena = cadena +
                     "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                     "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                     "&preciou" + n + "=" + document.getElementById("p/u_" + n).value +
                     "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                     "&ubicacion" + n + "=" + document.getElementById("ubicacion_" + n).value;
        };
    }
    cadena = cadena +
             "&total=" + total +
             "&codProveedor=" + codProveedor + 
             "&numFactura=" + numFactura +
             "&fechaDeIng=" + fechaDeIng +
             "&numero=" + numero +
             "&subtotal=" + document.getElementById("totalFinal").innerHTML +
             "&subtotalIva=" + document.getElementById("TotalIva").innerHTML;
    $.ajax({
        type: 'POST',
        url: "/inventariogg/phpurl/actualizacionDeDatos.php",
        data:cadena,
        success: function(dato){
            if (dato == "Factura existente"){
                alert("Factura existente");
            } else {
                location.reload();
            }
        },
        error: function(){
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });
};
function calculate(){
    var num = parseFloat(numero);
    var result = 0;
    for (var i = 1 ; i <= num ; i++){
        var num1 = parseFloat(document.getElementById("total_" + i).innerHTML);
        result = result + num1;
    };
    document.getElementById("totalFinal").innerHTML = result;
    var resultadoIva = 0;
    for (var i = 1 ; i <= num ; i++){
        var IvaValor = document.getElementById("iva_" + i).value;
        var totalValor = document.getElementById("total_" + i).innerHTML;
        if(IvaValor != 0){
            resultadoIva = resultadoIva + (totalValor * IvaValor)/100;
        };
    };
    var number1 = parseFloat(document.getElementById("totalFinal").innerHTML),
        number2 = parseFloat(resultadoIva),
        final = number1 + number2;
    document.getElementById("TotalIva").innerHTML = resultadoIva;
    document.getElementById("totalConIva").innerHTML = "Total+Iva:" + final; 
};