$(document).ready(function(){
    
	$("li[id=btna]").click(proveter);
    function proveter() {
        document.getElementById("provedor").classList.remove("hidden") ;
        document.getElementById("provedor").classList.add("hiddentry") ;
        document.getElementById("btna").classList.add("active") ; 
        
        document.getElementById("ingreso").classList.add("hidden") ;
        document.getElementById("ingreso").classList.remove("hiddentry");
        document.getElementById("btnb").classList.remove("active") ;
                                        
        document.getElementById("producto").classList.add("hidden") ;
        document.getElementById("producto").classList.remove("hiddentry");
        document.getElementById("btnc").classList.remove("active") ;
                                        
        document.getElementById("traslado").classList.add("hidden") ;
        document.getElementById("traslado").classList.remove("hiddentry");
        document.getElementById("btnd").classList.remove("active") ;
                                        
        document.getElementById("movimiento").classList.add("hidden") ;
        document.getElementById("movimiento").classList.remove("hiddentry");
        document.getElementById("btne").classList.remove("active") ;
                                        
	}
	$("li[id=btnb]").click(function () {
                alert("2");
        document.getElementById("ingreso").classList.remove("hidden") ;
         document.getElementById("ingreso").classList.add("hiddentry") ;
         document.getElementById("btnb").classList.add("active") ;
        
        document.getElementById("provedor").classList.add("hidden") ;
        document.getElementById("provedor").classList.remove("hiddentry");
        document.getElementById("btna").classList.remove("active") ;
                                        
        document.getElementById("producto").classList.add("hidden") ;
        document.getElementById("producto").classList.remove("hiddentry");
        document.getElementById("btnc").classList.remove("active") ;
                                        
        document.getElementById("traslado").classList.add("hidden") ;
        document.getElementById("traslado").classList.remove("hiddentry");
        document.getElementById("btnd").classList.remove("active") ;
                                        
        document.getElementById("movimiento").classList.add("hidden") ;
        document.getElementById("movimiento").classList.remove("hiddentry");
        document.getElementById("btne").classList.remove("active") ;
	});
    
    $("li[id=btnc]").click(function () {
        alert("3");
        document.getElementById("producto").classList.remove("hidden") ;
         document.getElementById("producto").classList.add("hiddentry") ;
         document.getElementById("btnc").classList.add("active") ;
        
        document.getElementById("ingreso").classList.add("hidden") ;
        document.getElementById("ingreso").classList.remove("hiddentry") ;
        document.getElementById("btnb").classList.remove("active") ;
                                        
        document.getElementById("provedor").classList.add("hidden") ;
        document.getElementById("provedor").classList.remove("hiddentry");
        document.getElementById("btna").classList.remove("active") ;
                                        
        document.getElementById("traslado").classList.add("hidden") ;
        document.getElementById("traslado").classList.remove("hiddentry");
        document.getElementById("btnd").classList.remove("active") ;
                                        
        document.getElementById("movimiento").classList.add("hidden") ;
        document.getElementById("movimiento").classList.remove("hiddentry");
        document.getElementById("btne").classList.remove("active") ;
	});
    
	$("li[id=btnd]").click(function () {
        alert("4");
        document.getElementById("traslado").classList.remove("hidden") ;
        document.getElementById("traslado").classList.add("hiddentry") ;
        document.getElementById("btnd").classList.add("active") ;
        
                 
        document.getElementById("producto").classList.add("hidden") ;
        document.getElementById("producto").classList.remove("hiddentry");
        document.getElementById("btnc").classList.remove("active") ;
        
        document.getElementById("ingreso").classList.add("hidden") ;
        document.getElementById("ingreso").classList.remove("hiddentry") ;
        document.getElementById("btnb").classList.remove("active") ;
                                     
        document.getElementById("provedor").classList.add("hidden") ;
        document.getElementById("provedor").classList.remove("hiddentry");
        document.getElementById("btna").classList.remove("active") ;
                      
        document.getElementById("movimiento").classList.add("hidden") ;
        document.getElementById("movimiento").classList.remove("hiddentry");
        document.getElementById("btne").classList.remove("active") ;
	});
    
	$("li[id=btne]").click(function () {
        alert("5");
        document.getElementById("movimiento").classList.remove("hidden") ;
        document.getElementById("movimiento").classList.add("hiddentry") ;
        document.getElementById("btne").classList.add("active") ;
        
        document.getElementById("traslado").classList.add("hidden") ;
        document.getElementById("traslado").classList.remove("hiddentry");
        document.getElementById("btnd").classList.remove("active") ;
        
        document.getElementById("producto").classList.add("hidden") ;
        document.getElementById("producto").classList.remove("hiddentry");
        document.getElementById("btnc").classList.remove("active") ;
        
        document.getElementById("ingreso").classList.add("hidden") ;
        document.getElementById("ingreso").classList.remove("hiddentry") ;
        document.getElementById("btnb").classList.remove("active") ;
                                        
        document.getElementById("provedor").classList.add("hidden") ;
        document.getElementById("provedor").classList.remove("hiddentry");
        document.getElementById("btna").classList.remove("active") ;
	});
    
});

$(".mod").click(modUser);
$(".add").click(abrirFormulario);
$("#proveedorCancelButton").click(quitarFormulario);

function abrirFormulario(){
    $("#idInput").val("");
    $("#nombreInput").val("");
    $("#rifInput").val("");
    $("#direccionfisInput").val("");
    $("#direccionofiInput").val("");
    $("#telefonoofiInput").val("");   
    $("#telefonocelInput").val("");
    $("#correoInput").val("");
    $("#contactoInput").val("");
    $("#cargoconInput").val("");
    $("#telefonoconInput").val("");
    
    $("#proveedorAcceptButton").click(aceptarDatos);
    document.getElementById("GrayBackground").classList.remove("hidden");
};
function quitarFormulario(){
    document.getElementById("GrayBackground").classList.add("hidden");
};
function aceptarDatos(){
    var cadena = "codigo=" + $('#codigoInput').val() +
             "&nombre=" + $('#nombreInput').val() +
             "&rif=" + $('#rifInput').val() +
             "&direccionfis=" + $('#direccionfisInput').val() +
             "&direccionofi=" + $('#direccionofiInput').val() +
             "&telefonoofi=" + $('#telefonoofiInput').val() +
             "&telefonocel=" + $('#telefonocelInput').val() +
             "&correo=" + $('#correoInput').val() +
             "&contacto=" + $('#contactoInput').val() +
             "&cargocon=" + $('#cargoconInput').val() +
             "&telefonocon=" + $('#telefonoconInput').val();
    $.ajax({
        type:'POST',
        url:'/inventariogg/phpurl/agregarProveedor.php?accion=agregar',
        data:cadena,
        success: function(){
            location.reload();
        },
        error: function(){
            alert("Hubo un error al conectar con la base de datos")
        }
    })
    quitarFormulario();
    $(".add").click(abrirFormulario);
    $("#proveedorCancelButton").click(quitarFormulario);
}
function clearUser(datos){
    d=datos.split("||");
    cadena= "codigo=" + d[0]
    if(confirm("Desea eliminar el proveedor " + d[0] + "?")){
        $.ajax({
            type:'POST',
            url:'/inventariogg/phpurl/eliminarProveedor.php',
            data:cadena,
            success: function(){
                location.reload();
            },
            error: function(){
                alert("Hubo un error al conectar con la base de datos")
            }
        })
    } 
}
function modUser(datos){
    $("#proveedorAcceptButton").click(modDatos);
    document.getElementById("GrayBackground").classList.remove("hidden");
    
    d=datos.split("||");
    
    $("#idInput").val(d[0]);
    $("#codigoInput").val(d[1]);
    $("#nombreInput").val(d[2]);
    $("#rifInput").val(d[3]);
    $("#direccionfisInput").val(d[4]);
    $("#direccionofiInput").val(d[5]);
    $("#telefonoofiInput").val(d[6]);   
    $("#telefonocelInput").val(d[7]);
    $("#correoInput").val(d[8]);
    $("#contactoInput").val(d[9]);
    $("#cargoconInput").val(d[10]);
    $("#telefonoconInput").val(d[11]); 
};
function modDatos(){
    cadena = "id=" + $('#idInput').val() +
             "&codigo=" + $('#codigoInput').val() +
             "&nombre=" + $('#nombreInput').val() +
             "&rif=" + $('#rifInput').val() +
             "&direccionfis=" + $('#direccionfisInput').val() +
             "&direccionofi=" + $('#direccionofiInput').val() +
             "&telefonoofi=" + $('#telefonoofiInput').val() +
             "&telefonocel=" + $('#telefonocelInput').val() +
             "&correo=" + $('#correoInput').val() +
             "&contacto=" + $('#contactoInput').val() +
             "&cargocon=" + $('#cargoconInput').val() +
             "&telefonocon=" + $('#telefonoconInput').val();
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
    })
    quitarFormulario();
}
