$('#Reporte_1').click(reporte_1);
$('#Reporte_2').click(reporte_2);
$('#Reporte_3').click(reporte_3);
$('#Reporte_4').click(reporte_4);
//console.log(localStorage.getItem("getvalue"));
//console.log(localStorage.getItem("getvalue2"));

function reporte_1(){
	let dia_cant = prompt("¿Cuantos dias de hoy hacia atras, quiere que cubra el reporte? (por favor solo ingresas la cantidad de dias en numeros)");
		
	if(isNaN(dia_cant)){
	   alert("ingrese solo la cantidad en numeros, o si no el reporte no se realizara.")
	} else{
		let data = "lenght=" + dia_cant;
	}
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/reportes_bi.php",
		data:data,
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
	   alert("ingrese solo la cantidad en numeros, o si no el reporte no se realizara.")
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
		
	if(isNaN(producto)){
	   alert("codigo erroneo");
	} else{
		if(isNaN(dia_cant)){
	   		alert("ingrese solo la cantidad en numeros, o si no el reporte no se realizara.")
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
function usuario() {
	document.getElementById("txtusuarionombre").innerHTML = localStorage.getItem("getvalue2");
}
usuario();
