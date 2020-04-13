$('#Reporte_1').click(reporte_1);
$('#Reporte_2').click(reporte_2);
$('#Reporte_3').click(reporte_3);


function reporte_1(){
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/reportes_bi.php",
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
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/reporte_be.php",
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