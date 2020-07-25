$(".add").click(abrirFormulario);
$("#proveedorCancelButton").click(quitarFormulario);

var inputs = new Array (),
    muestra = new Array ();
for (var i=0; i<11 ; i++){
    muestra[i] = document.getElementsByClassName("muestraModal")[i];
}
for (var i=11; i<23 ; i++){
    if(i === 11){
        inputs[i] = document.getElementById("idInput");
    }else {
        inputs[i] = document.getElementsByClassName("formularioInput")[i-1];  
    }
}
console.log(inputs)
function abrirFormulario(){
    for (var i=11; i<inputs.length ;i++){
        inputs[i].value = "";
    }
    $("#proveedorAcceptButton").click(aceptarDatos);
    document.getElementById("GrayBackground").classList.remove("hidden");
}
function quitarFormulario(){
    document.getElementById("GrayBackground").classList.add("hidden");
}
function aceptarDatos(){
    var cadena;
    for (var i=12; i<inputs.length ; i++){
        var split = inputs[i].id.split("In"),
            part1 = split[0],
            datos = inputs[i].value;

        if (datos === "" || datos === null || datos === undefined){
            alert("Datos no reyenados completamente");
            return;
        }
        if(i === 11){
            cadena = part1 + "=" + datos;
        } else {
            cadena += "&"+ part1 + "=" + datos;  
        }
    }
    $.ajax({
        type:'POST',
        url:'/inventariogg/phpurl/agregarProveedor.php',
        data:cadena,
        success: function(data){
            if(data === "Existe"){
                alert("Este codigo proveedor ya esta asignado en la base de datos.");
            } else {
                location.reload();   
            }
        },
        error: function(){
            alert("Hubo un error al conectar con la base de datos");
        }
    });
    
    $(".add").click(abrirFormulario);
    $("#proveedorCancelButton").click(quitarFormulario);
}
function clearUser(datos){
    let d= datos.split("||"),
        cadena= "codigo=" + d[0] + "&id=" + d[1] + "&usuario=" + localStorage.getItem("getvalue");
    if(confirm("Desea eliminar el proveedor " + d[0] + "?")){
        $.ajax({
            type:'POST',
            url:'/inventariogg/phpurl/eliminarProveedor.php',
            data:cadena,
            success: function(data){
                if(data === "negativo"){
                    alert("Este proveedor tiene movimientos presentes no puede ser eliminado.");
                } else{  
                    location.reload();
                }
            },
            error: function(){
                alert("Hubo un error al conectar con la base de datos")
            }
        })
    } 
}
function modifiDatos(datos){
    $("#proveedorAcceptButton").click(modDatos);
    document.getElementById("GrayBackground").classList.remove("hidden");
    
    var split = datos.split("||");
    
    for(var i=0; i<inputs.length ;i++){
        inputs[i+11].value = split[i]; 
    }
}
function modDatos(){
    var cadena;
    for (var i=12; i<inputs.length ; i++){
        var split = inputs[i].id.split("In"),
            part1 = split[0],
            datos = inputs[i].value;
        
        if(i === 12){
            cadena = part1 + "=" + datos;
        } else {
            cadena += "&"+ part1 + "=" + datos;  
        }
    }
    $.ajax({
        type:'POST',
        url:'/inventariogg/phpurl/modificarProveedor.php',
        data:cadena,
        success: function(){
           location.reload();
        },
        error: function(){
            alert("Hubo un error al conectar con la base de datos")
        }
    });
    quitarFormulario();
}
function desplegarMovimientos(datos) {
    document.getElementById("ventanaDeDepositos").classList.remove("hidden");
    let split = datos.split("||");

    for (var i=0; i<muestra.length ;i++){
        muestra[i].value = split[i+1];
    }
    
    document.getElementById("depositCancelButton").addEventListener("click", cerrarInformacion);
}
function cerrarInformacion() {
    for (var i=0; i<muestra.length ;i++){
        muestra[i].value = "";
    }
    document.getElementById("ventanaDeDepositos").classList.add("hidden");
}
