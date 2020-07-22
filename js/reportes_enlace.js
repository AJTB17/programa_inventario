$('#Reporte_1').click(reporte_1);
$('#Reporte_2').click(reporte_2);
$('#Reporte_3').click(reporte_3);
$('#Reporte_4').click(reporte_4);
$('#co').click(co);
$('#backup').click(BDfun);
$('#file_label').click(loadfile);
$('#restaura').click(BDfun);
$('#adminWindow').click(modaladmin);
$('#cerrarAdmin').click(modaladmin);
$('#cerrarS').click(cerrar);
window.addEventListener('load', SV, true);

let admin;

function SV(){
    var est,
        name,
        user;
    
	if (localStorage.length === 0){
		window.open("/inventariogg/index.html", "_self");
	} else {
        est = localStorage.getItem("getvalue4");
        name = localStorage.getItem("getvalue2");
        user = localStorage.getItem("getvalue");
	}
	if(est != "permitido"){
		setTimeout(window.open("/inventariogg/index.html", "_self"), 5000);
	} else if ( est == "permitido"){
		document.getElementsByTagName("body")[0].style.display = "block";
		document.getElementsByTagName("body")[0].classList.add("entrada");
	}
    
    let fechaact = new Date(),
        mes = fechaact.getMonth() + 1,
        mesbd,
        mesPrevbd,
        trued = true;
    
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/phpurl/mesReview.php",
        success:function(data){
            let split = data.split("||");
            
            mesbd = parseInt(split[0]);
            mesPrevbd = parseInt(split[1]);  

            if (mes === mesbd + 1){
                while(trued){
                    let notificación = confirm("ya el mes " + mesbd + " termino. Por favor proceda a hacer el cierre mensual de inventario. Al presionar aceptar se realizara el cierre.");

                    if (notificación === true){
                        trued = false;
                        co();
                    }
                }
            } 
        },
        error: function(){
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });

}
function reporte_1(){
	let dia_cant = prompt("¿Cuantos dias de hoy hacia atras, quiere que cubra el reporte? (por favor solo ingresas la cantidad de dias en numeros)");
		
	if(isNaN(dia_cant)){
	   alert("ingrese solo la cantidad en numeros, o si no el reporte no se realizara.");
	} else{
		var data = "lenght=" + dia_cant;
	}
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/reportes_bi.php",
		data: data,
        success: function(n_ajus) {
            if (n_ajus === "") {
                alert(n_ajus);
            } else {
                window.open("./phpurl/reportesEntradasInventario/reporte-de-entras-al-inventario" + n_ajus + ".pdf", '_blank');
            }
        },
        error: function() {
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });
}
function reporte_2(){
	let dia_cant = prompt("¿Cuantos dias de hoy hacia atras, quiere que cubra el reporte? (por favor solo ingresas la cantidad de dias en numeros)");
		
	if(isNaN(dia_cant)){
	   alert("ingrese solo la cantidad en numeros, o si no el reporte no se realizara.");
	} else{
		let data = "lenght=" + dia_cant;
	}
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/reporte_be.php",
		data:data,
        success: function(n_ajus) {
            if (n_ajus === "") {
                alert(n_ajus);
            } else {
                window.open("./phpurl/reportesEgresosInventario/reporte-de-egresos-del-inventario" + n_ajus + ".pdf", '_blank');
            }
        },
        error: function() {
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });
}
function reporte_3(){
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/reporte_br.php",
        success: function(n_ajus) {
            if (n_ajus === "") {
                alert(n_ajus);
            } else {
                window.open("./phpurl/reportesProductosenReorden/reporte-de-producto-en-cta-de-reorden" + n_ajus + ".pdf", '_blank');
            }
        },
        error: function() {
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });
}
function reporte_4(){
	let producto = prompt("Escriba el codigo del producto del cual quiere hacer el reporte"),
		dia_cant = prompt("¿Cuantos dias de hoy hacia atras, quiere que cubra el reporte? (por favor solo ingresas la cantidad de dias en numeros)"),
		data;
	console.log(producto);
	if(isNaN(producto)){
	   alert("codigo erroneo");
	} else if( producto === ""){
		alert("Campo o campos vacios");
		return;
	} else{
		if(isNaN(dia_cant)){
	   		alert("ingrese solo la cantidad en numeros, o si no el reporte no se realizara.");
		} else{
			alert("entre");
			data = "lenght=" + dia_cant + "&codigo=" + producto;
		}
	} 
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/reporte_pp.php",
		data:data,
        success: function() {
            window.open("./phpurl/reportep.pdf", '_blank');
        },
        error: function() {
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });
}
function usuario(){
	document.getElementById("txtusuarionombre").innerHTML = localStorage.getItem("getvalue2");
	admin = localStorage.getItem("getvalue10");
}
function cerrar(){
	var varibles = document.clear(localStorage);
	window.open("/inventariogg/index.html", "_self");
    
    varibles;
}
function modaladmin(){
    if (admin === "no"){
        alert("Usted no tiene el nivel necesario para reaizar esta operación");
    } else {
       var modal = document.getElementById("modal_admin");

        if (modal.className === "GrayBackground-2 hidden"){
            document.getElementById("modal_admin").classList.remove("hidden");
        }
        else {
            document.getElementById("modal_admin").classList.add("hidden");
        } 
    }
}
function loadfile(){
    var obj = this;
    setTimeout(function(){
        obj.style.background = "#f60";
        obj.innerHTML = "Archivo cargado";
    }, 3000);
}
function BDfun(){
    if (this.id === "backup"){
        $.ajax ({
            type: 'POST',
            url: "phpurl/backoutBD.php",
            success: function(){
                alert("Se a guardado un archivo de respaldo con exito en los archivos del programa.");
            },
            error: function() {
                alert("No se ha podido establecer conexión con la base de datos");
            }
        });	 
    } else if (this.id === "restaura"){
        var arc = document.getElementById("arc").value,
            spliter = arc.split('b'),
            name = spliter[1],
            data = "archivo=b" + name;
        console.log(data);
        
        if(name === undefined){
            alert("archivo de respado no seleccionado");
            return;
        } else { 
            var confirn = confirm("¿Esta seguro de que desea realizar esta operación? el contenido actual de la base de datos sera borrado y cambiado por el respaldo")
            
            if (confirn === true){
                    $.ajax ({
                    type: 'POST',
                    data: data,
                    url: "phpurl/bdrestauracion.php",
                    success: function(){
                        alert("Se a respaldado la información de la base de datos con exito en los archivos del programa.");
                    },
                    error: function() {
                        alert("No se ha podido establecer conexión con la base de datos");
                    }
                });	
            } else {
                return
            }
        }
    }

}
function co(){
    let accion = confirm("Se procedera a realizar un cierre de operaciones, que vaciara las bases de datos de historiales de movimientos y se realizara un informe de estado de todos los productos en inventario y del sistema. ¿Esta seguro que desea continuar con esta operación?");

    if (accion === true){	
    $.ajax ({
        type: 'POST',
        url: "cierre_operacional.php",
        success: function(data) {
            let split2 = data.split("||"),
                fechar = split2[1];

            window.open("./phpurl/cierresOperacion/reporte_cierre_mensual_de" + fechar + ".pdf", '_blank');
        },
        error: function() {
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });	
    } else {
        return;
    }
}
usuario();
