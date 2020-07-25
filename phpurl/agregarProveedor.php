<?php
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

$busqueda="SELECT codigo FROM proveedor WHERE codigo='$codigo'";
$result=$conexion->query($busqueda);
$conjunto=$result->fetch_assoc();

if(!is_null($conjunto) > 0){
    echo "Existe";
    return;
} else {
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
}
?>