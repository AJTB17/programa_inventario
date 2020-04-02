<?php

$accion=(isset($_GET['accion']))?$_GET['accion']:'leer';

switch($accion){
    case 'agregar':
        include('bdacceso.php');
        $codigo = $_POST['codigo'];
        $nombre=$_POST['nombre'];
        $rif=$_POST['rif'];
        $direccionfis=$_POST['direccionfis'];
        $direccionofi=$_POST['direccionofi'];
        $telefonoofi=$_POST['telefonoofi'];
        $telefonocel=$_POST['telefonocel'];
        $correo=$_POST['correo'];
        $contacto=$_POST['contacto'];
        $cargocon=$_POST['cargocon'];
        $telefonocon=$_POST['telefonocon'];

        $query="INSERT INTO proveedor
        (codigo,
        nombre,
        rif,
        direccionfiscal,
        direccionoficina,
        telefonooficina,
        telefonocelular,
        correo,
        contacto,
        cargocontacto,
        telefonocontacto) VALUES 
        ('$codigo',
        '$nombre',
        '$rif',
        '$direccionfis',
        '$direccionofi',
        '$telefonoofi',
        '$telefonocel',
        '$correo',
        '$contacto',
        '$cargocon',
        '$telefonocon')";
        $resultado=$conexion->query($query);
        if($resultado){
            echo "funciona " .$query;
        } else {
            echo $query;
        }
        break;
    default:
        echo json_encode("default pase");
        break;
}
?>