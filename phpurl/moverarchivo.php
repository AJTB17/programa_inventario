<?php

$n_ajuste = $_POST['n_ajuste'];
$archivo = 'C:\wamp/www/inventariogg/auditoria-reporte'.$n_ajuste.'.pdf';
$direccion = 'C:/wamp/www/inventariogg/phpurl/reportesauditoria/auditoria-reporte'.$n_ajuste.'.pdf';

copy( $archivo, $direccion );
unlink($archivo);

?>