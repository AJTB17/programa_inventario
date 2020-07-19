<?php
$posicion= $_POST['posicion'];
$n_ajuste= $_POST['n_ajuste'];

if($posicion === "auditoria"){
    $archivo = '..\auditoria-comprobante'.$n_ajuste.'.pdf';
    $direccion = '.\comprobantesauditoria\auditoria-comprobante'.$n_ajuste.'.pdf';

    copy( $archivo, $direccion );
    unlink($archivo);
}

else if($posicion === "ingreso"){
    $archivo = '..\ingreso-comprobante'.$n_ajuste.'.pdf';
    $direccion = '.\comprobantesingresos\ingreso-comprobante'.$n_ajuste.'.pdf';

    copy( $archivo, $direccion );
    unlink($archivo);
}

else if($posicion === "egresos"){
    $accion= $_POST['accion'];
    
    if($accion === "egreso"){
        $archivo = '..\egreso-comprobante'.$n_ajuste.'.pdf';
        $direccion = '.\comprobantesegreso\egreso-comprobante'.$n_ajuste.'.pdf';

        copy( $archivo, $direccion );
        unlink($archivo);  
    }
    else if($accion === "traslado"){
        $archivo = '..\traslado-comprobante'.$n_ajuste.'.pdf';
        $direccion = '.\comprobantestraslado\traslado-comprobante'.$n_ajuste.'.pdf';

        copy( $archivo, $direccion );
        unlink($archivo);
    }
}

?>