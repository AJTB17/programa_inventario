<?php
$posicion= $_POST['posicion'];
$n_ajuste= $_POST['n_ajuste'];

if($posicion === "auditoria"){
    $archivo = 'C:\wamp/www/inventariogg/auditoria-comprobante'.$n_ajuste.'.pdf';
    $direccion = 'C:/wamp/www/inventariogg/phpurl/comprobantesauditoria/auditoria-comprobante'.$n_ajuste.'.pdf';

    copy( $archivo, $direccion );
    unlink($archivo);
}

else if($posicion === "ingreso"){
    $archivo = 'C:\wamp/www/inventariogg/ingreso-comprobante'.$n_ajuste.'.pdf';
    $direccion = 'C:/wamp/www/inventariogg/phpurl/comprobantesingresos/ingreso-comprobante'.$n_ajuste.'.pdf';

    copy( $archivo, $direccion );
    unlink($archivo);
}

else if($posicion === "egresos"){
    $accion= $_POST['accion'];
    
    if($accion === "egreso"){
        $archivo = 'C:\wamp/www/inventariogg/egreso-comprobante'.$n_ajuste.'.pdf';
        $direccion = 'C:/wamp/www/inventariogg/phpurl/comprobantesegreso/egreso-comprobante'.$n_ajuste.'.pdf';

        copy( $archivo, $direccion );
        unlink($archivo);  
    }
    else if($accion === "traslado"){
        $archivo = 'C:\wamp/www/inventariogg/traslado-comprobante'.$n_ajuste.'.pdf';
        $direccion = 'C:/wamp/www/inventariogg/phpurl/comprobantestraslado/traslado-comprobante'.$n_ajuste.'.pdf';

        copy( $archivo, $direccion );
        unlink($archivo);
    }
}

?>