<?php
    include('bdacceso.php');
    $boolean = true;
    $filas = $_POST['numero'];
    $busqueda="SELECT * FROM kardexingresos";
    $result=$conexion->query($busqueda);


    for ($x = 1 ; $x <= $filas ; $x++){
        $id = $_POST['id' .$x];
        $deposito = $_POST['deposito' .$x];
        $cantidadactual = $_POST['cantidad' .$x];
        $cantidadnueva = $_POST['cantidad2' .$x];
        $costo2 = $_POST['costo2' .$x];


        $busquedaProducto = mysqli_fetch_array(my_sqli_query($conexion, 
        "SELECT nombre,ctaprevia FROM productos WHERE id='$id'"));

        $producto = $busquedaProducto['nombre'];
        // Actualizando la cantidad actual y costo de los producto
        $query="UPDATE depositos SET cantidad='$cantidadnueva'
                                     WHERE producto='$producto' AND deposito='$deposito'";
        $resultado=$conexion->query($query);
    }
?>