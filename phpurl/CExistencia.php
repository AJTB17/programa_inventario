<?php
include('bdacceso.php');
$boolean = true;
$boolean2 = false;
$codProveedor = $_POST['codProveedor'];
$numFactura = $_POST['numFactura'];
$fechaDeIng = $_POST['fechaDeIng'];
$busqueda="SELECT * FROM kardexingresos";
$result=$conexion->query($busqueda);
// Comprobación de existencia de la factura

if ($numFactura == "" || $codProveedor == "" || $fechaDeIng == "") {
    echo "Rellene el número de factura, el código de proveedor y la fecha";
    $boolean = false;
};

while($conjunto=$result->fetch_assoc()){
    if ($conjunto['numerodefactura'] == $numFactura &&
        $conjunto['codproveedor'] == $codProveedor){
        echo "Factura existente";
        $boolean = false;
        break;
    };
};

$confirmaciónDeProveedor = mysqli_query($conexion, "SELECT rif FROM proveedor WHERE codigo = '$codProveedor'");
$existeProveedor = mysqli_num_rows($confirmaciónDeProveedor);
if ($existeProveedor == 0) {
    echo "Proveedor inexistente";
    $boolean = false;
};

//
?>