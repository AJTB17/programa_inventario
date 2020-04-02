let numero = 0,
    n_ajuste = document.getElementById("n-ajuste");
$('#one').click(onerow);
$('#add2').click(rellebartabla);
$('#actualizarbd').click(actualizarDatos);
$('#clearAll').click(clearall);
cuadroinfoajuste();


function onerow(){
    var table = document.getElementById("bodyud"),
        pata = document.getElementById("reference"); 
        //fornite = document.getElementById("cant-prod").value,
               
        
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
    cont1.addEventListener("dblclick", autocomplete);
        
    var cont2 = document.createElement("input");
    cont2.id = "descripcion_" + numero;
    cont2.classList.add("desc");
    cont2.placeholder = "Descripción";
    cont2.setAttribute("width", "60%");
    cont2.addEventListener("dblclick", autocomplete);
    cont2.setAttribute("list", "Productos");

        
    var cont3 = document.createElement("input");
    cont3.id = "costo_" + numero;
    cont3.readOnly = true;
    cont3.classList.add("co");
    cont3.placeholder = "Costo";
    
    var cont4 = document.createElement("input");
    cont4.id = "coston_" + numero;
    cont4.classList.add("co");
    cont4.placeholder = "Costo";
        
    var cont5 = document.createElement("input");
    cont5.id = "cant_" + numero;
    cont5.classList.add("cap");
    cont5.placeholder = "Ctd";
        
    var cont6 = document.createElement("input");
    cont6.id = "cantidadn_" + numero;
    cont6.classList.add("cantn");
    cont6.placeholder = "Ctd";
    
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
    elemento.addEventListener("keyup", actcosto);
    elemento.addEventListener("click", actcosto);

    elemento.appendChild(contenido1);
    elemento.appendChild(contenido2);
    elemento.appendChild(contenido3);
    elemento.appendChild(contenido4);
    elemento.appendChild(contenido5);
    elemento.appendChild(contenido6);
    elemento.appendChild(contenido7);
           
    table.appendChild(elemento);
    $(".clearRow").off();
    $('.clearRow').click(clearRow);
};
function autocomplete() {
    var num = parseFloat(numero),
        negativoparce = true,
        arreeperro = new Array(num),
        arreegato = new Array(num);
    
    // for para codigo recolecta todos los codigos de productos
    if (this.classList[0] === "cp"){
        for (var i = 1; i<=num ; i++){
            arreeperro[i] = document.getElementById("codigo_" + i).value;
        };
        
    // filtro de productos ya ingresados
        var indices = [];
        var element = this.value;
        var idx = arreeperro.indexOf(element);
        
        while (idx != -1) {
            indices.push(idx);    
            idx = arreeperro.indexOf(element, idx +1);

            if (element === ""){
                alert("ingrese un codigo");
             }
            else if (indices.length > 1) {
                alert("codigo ya ingresado");
                this.value = ""
                negativoparce = false;
                borrar();
                break;
            }
        };
    } else if(this.classList[0] === "desc"){
    //for para descripcion recolecta todos los nombre de productos
        for (var i = 1; i<=num ; i++){
            arreegato[i] = document.getElementById("descripcion_" + i).value;
        };
    
    // filtro de productos ya ingresados
        var indices2 = [];
        var element2 = this.value;
        var idx2 = arreegato.indexOf(element2);

        while (idx2 != -1) {
            indices2.push(idx2);  
            idx2 = arreegato.indexOf(element2, idx2 +1);

            if (indices2.length > 1) {
                alert("codigo ya ingresado");
                this.value = ""
                negativoparce = false;
                borrar();
                break;
            }
        };
    }

    //variables de auto completado por td-codigo o td-descripcion por ajax
    let cadena = "id=" + this.value,
        codigo = this.parentNode.parentNode.id,
        descripcion = "descripcion_" + codigo,
        codi = "codigo_" + codigo,
        id = this.id,
        fakeson = this.parentNode.parentNode;

    
    $.ajax({
        type:'POST',
        url:"/inventariogg/phpurl/traerDatos.php",
        data:cadena,
        success:function(data){
            if (negativoparce === false){
                borrar();
            } else if (id === codi){
                var everything = JSON.parse(data);
                document.getElementById("descripcion_" + codigo).value = everything.producto;
                document.getElementById("cant_" + codigo).value = everything.cantidad;
                document.getElementById("costo_" + codigo).value = everything.costo;
                actcosto();
            } else if (id === descripcion){
                var everything = JSON.parse(data);
                document.getElementById("codigo_" + codigo).value = everything.codigo;
                document.getElementById("cant_" + codigo).value = everything.cantidad;      
                document.getElementById("costo_" + codigo).value = everything.costo;  
                actcosto();
            }
        },
        error:function(){
                    alert("Error, producto no encontrado");
        }
    })
    function borrar(){
        fakeson.childNodes[0].childNodes[0].value = "";
        fakeson.childNodes[1].childNodes[0].value = "";
        fakeson.childNodes[2].childNodes[0].value = "";
        fakeson.childNodes[3].childNodes[0].value = "";
        fakeson.childNodes[4].childNodes[0].value = "";
        fakeson.childNodes[5].childNodes[0].value = "";
    }
};
function rellebartabla(){
    let department = document.getElementById("tipoproducto-input").value;
    let deposit = document.getElementById("deposito-input").value;
    let order = document.getElementById("ordenar-input").value;
    let cadena = "department=" + department +
                 "&deposit=" + deposit +
                 "&order=" + order;
    let tbody = document.getElementById("bodyud"),
        num;
    
    if (tbody != null){
        tbody.innerHTML = "";
    }
        
    $.ajax({
        type:'POST',
        url:"/inventariogg/phpurl/ingresardatostable.php",
        data: cadena,
        success:function(data){
            let split = data.split("||");
            tbody.innerHTML += split[0];
            numero = split[1];
            
            for (var i = 1; i <= numero; i++){
                console.log(i);
                var cuerpo = document.getElementById(i);       
                cuerpo.addEventListener("keyup", actcosto);
                cuerpo.addEventListener("click", actcosto);
                $(".clearRow").off();
                $('.clearRow').click(clearRow);
                
            };
            $('#actualizarbd').click(actualizarDatos);
            $('#clearAll').click(clearall);
        },
        error:function(){
            alert("Error, productos no encontrado");
        }
    })
};
function actcosto(){
    let m1= document.getElementById("costo1"),
        m2 = document.getElementById("costo2"),
        m3 = document.getElementById("prodM"),
        num = parseFloat(numero),
        result = 0,
        resulto = 0;
        
    for (var i = 1 ; i <= num ; i++){
        let c3 = document.getElementById("costo_" + i).value;
        
        
        if (c3 != ""){
            var num1 = parseFloat(c3);
            result = result + num1;
        }
    };
    
    for (var i = 1 ; i <= num ; i++){
        let c4 = document.getElementById("coston_" + i).value;
        
        
        if (c4 != ""){
            var num1 = parseFloat(c4);
            resulto = resulto + num1;
        }
    };
    
    
    m1.innerHTML = result;
    m2.innerHTML = resulto;
    m3.innerHTML = numero;
        
};
function reporte(){
    for(var n = 1; n<=numero; n++) {
        
        let costoN = document.getElementById("coston_" + n).value,
            cantidadN = document.getElementById("cantidadn_" + n).value;
            
        if(n==1){
            cadenar = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&Producto" + n + "=" + document.getElementById("descripcion_" + n).value +
                         "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value;
            } else{
                cadenar = cadenar +
                         "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&Producto" + n + "=" + document.getElementById("descripcion_" + n).value +
                         "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value;
            };
    } console.log(n_ajuste.innerHTML);
    cadenar = cadenar + "&numero=" + numero + "&n_ajuste=" + n_ajuste.innerHTML;
    
    $.ajax({
            type: 'POST',
            url: "/inventariogg/modeloreporte.php",
            data:cadenar,
            success: function(){
                moverarchivo();
            },
            error: function(){
                alert("Reporte no realizado");
            }
    });
};
function moverarchivo(){
    let dato = "n_ajuste=" + n_ajuste.innerHTML;
    setTimeout(function(){
    $.ajax({
        type: 'POST',
        url: "/inventariogg/phpurl/moverarchivo.php",
        data:dato,
        success: function(){
        },
        error: function(){
            alert("movimiento no realizado");
        }
    });
 } ,1000);

};
function actualizarDatos(){
    let cadena = "",
        thereAreChange = true;
        
    
    for(var n = 1; n<=numero; n++) {
        
        let costoN = document.getElementById("coston_" + n).value,
            cantidadN = document.getElementById("cantidadn_" + n).value;
            
        
        if(costoN != "" && cantidadN != ""){
            if(n==1){
            cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value;
            } else{
                cadena = cadena +
                         "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value;
            };
        } else if (costoN === "" && cantidadN != ""){
            if(n==1){
                cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                            "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                            "&costo2" + n + "=" + document.getElementById("costo_" + n).value +
                            "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                            "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value;
                } else{
                    cadena = cadena +
                             "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                             "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                             "&costo2" + n + "=" + document.getElementById("costo_" + n).value +
                             "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                             "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value;
            };
        } else if (costoN != "" && cantidadN === ""){
            if(n==1){
                cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                            "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                             "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                             "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                             "&cantidad2" + n + "=" + document.getElementById("cant_" + n).value;
                } else{
                    cadena = cadena +
                             "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                             "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                             "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                             "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                             "&cantidad2" + n + "=" + document.getElementById("cant_" + n).value;
            };     
        } else if (costoN === "" && cantidadN === ""){
            alert("Valores sin rellenar. Por favor rellenar para continuar");
            thereAreChange = false;
        };
    };

    if (thereAreChange){
        cadena = cadena + "&numero=" + numero;
        
        reporte();
        
        $.ajax({
            type: 'POST',
            url: "/inventariogg/phpurl/audiroria-actualizadatos.php",
            data:cadena,
            success: function(){
                //alert("Operación completa")
                //location.reload();
            },
            error: function(){
                alert("No se ha podido establecer conexión con la base de datos");
            }
        });
    }
};
function cuadroinfoajuste(){  
    $.ajax({
        type:'POST',
        url:"/inventariogg/phpurl/numerodeajuste.php",
        success:function(data){
            n_ajuste.innerHTML = parseInt(data) + 1;           
        },
        error:function(){
                    alert("Error, productos no encontrado");
        }
    })
};
function clearRow(){
    var mensaje = confirm("¿Desea eliminar ésta fila?");
    if(this.parentNode.id == numero && mensaje == true){
        var column = this.parentNode,
            rowx = column.parentNode;
        rowx.removeChild(column);
        numero--;
        actcosto();
        
    } else if (mensaje == true){
        var num1 = parseInt(this.parentNode.nextSibling.id),
            column = this.parentNode,
            rowx = column.parentNode;
        rowx.removeChild(column);
        for (var i = num1 ; i <= numero ; i++){
            var x = i-1;
            document.getElementById(i).id = x;
            document.getElementById("codigo_" + i).id = "codigo_" + x;
            document.getElementById("descripcion_" + i).id = "descripcion_" + x;
            document.getElementById("costo_" + i).id = "costo_" + x;
            document.getElementById("coston_" + i).id = "coston_" + x;
            document.getElementById("cant_" + i).id = "cant_" + x;
            document.getElementById("cantidadn_" + i).id = "cantidadn_" + x;
        };
        numero--;
        actcosto();
    };
};
function clearall(){
    var mensaje = confirm("¿Desea eliminar todo");
    if(mensaje == true){
        let aborto = document.getElementById("bodyud");

        if (aborto != null){
            aborto.innerHTML = "";
            $('#one').off();
            $('#one').click(onerow);
            numero = 0;
            actcosto();
        }
    }
}