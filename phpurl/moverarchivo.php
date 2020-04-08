<?php
$posicion= $_POST['posicion'];
$n_ajuste= $_POST['n_ajuste'];

if($posicion === "auditoria"){
    $archivo = 'C:\wamp/www/inventariogg/auditoria-reporte'.$n_ajuste.'.pdf';
    $direccion = 'C:/wamp/www/inventariogg/phpurl/reportesauditoria/auditoria-reporte'.$n_ajuste.'.pdf';

    copy( $archivo, $direccion );
    unlink($archivo);
}

else if($posicion === "ingreso"){
    $archivo = 'C:\wamp/www/inventariogg/ingreso-reporte'.$n_ajuste.'.pdf';
    $direccion = 'C:/wamp/www/inventariogg/phpurl/reportesingresos/ingreso-reporte'.$n_ajuste.'.pdf';

    copy( $archivo, $direccion );
    unlink($archivo);
}

else if($posicion === "egresos"){
    $accion= $_POST['accion'];
    
    if($accion === "egreso"){
        $archivo = 'C:\wamp/www/inventariogg/egreso-reporte'.$n_ajuste.'.pdf';
        $direccion = 'C:/wamp/www/inventariogg/phpurl/reportesegreso/egreso-reporte'.$n_ajuste.'.pdf';

        copy( $archivo, $direccion );
        unlink($archivo);  
    }
    else if($accion === "traslado"){
        $archivo = 'C:\wamp/www/inventariogg/traslado-reporte'.$n_ajuste.'.pdf';
        $direccion = 'C:/wamp/www/inventariogg/phpurl/reportestraslado/traslado-reporte'.$n_ajuste.'.pdf';

        copy( $archivo, $direccion );
        unlink($archivo);
    }
}

?>