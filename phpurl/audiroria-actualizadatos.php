<?php
    include('bdacceso.php');
    $boolean = true;
    $filas = $_POST['numero'];
    $busqueda="SELECT * FROM kardexingresos";
    $result=$conexion->query($busqueda);


    for ($x = 1 ; $x <= $filas ; $x++){
        $id = $_POST['id' .$x];
        $cantidadactual = $_POST['cantidad' .$x];
        $cantidadnueva = $_POST['cantidad2' .$x];
        $costo2 = $_POST['costo2' .$x];



        // Actualizando la cantidad actual y costo de los producto
        $query="UPDATE productos SET cta='$cantidadnueva',
                                     ctaprevia='$cantidadactual',
                                     costo='$costo2'
                                     WHERE codigo='$id'";
        $resultado=$conexion->query($query);
    }
?>