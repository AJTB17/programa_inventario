<?php
    include('bdacceso.php');
    $filas = $_POST['numero'];
    $cantidad_total= 0;
    $cantidadpre_total= 0;

    for($x = 1 ; $x <= $filas ; $x++){
        $cantidadnueva = (float)$_POST['cantidad2' .$x];
        $cantidadpre = (float)$_POST['cantidad' .$x];
        
        $cantidad_total= $cantidad_total + $cantidadnueva;
        $cantidadpre_total= $cantidadpre_total + $cantidadpre;
    }

    for ($x = 1 ; $x <= $filas ; $x++){
        $id = $_POST['id' .$x];
        $deposito = $_POST['deposito' .$x];
        $cantidadactual = $_POST['cantidad' .$x];
        $cantidadnueva = $_POST['cantidad2' .$x];
        $und = $_POST['und' .$x];
        $costo2 = $_POST['costo2' .$x];
      
        $query="UPDATE productos SET cta='$cantidad_total',
                                     ctaprevia='$cantidadpre_total',
                                     und='$und',
                                     costo='$costo2'
                WHERE codigo='$id'";
        $resultado=$conexion->query($query);
        
        
//      Actualizando la cantidad actual y costo de los producto
        $busquedaProducto = mysqli_fetch_array(mysqli_query($conexion, "SELECT nombre FROM productos WHERE codigo='$id'"));
        $producto = $busquedaProducto['nombre'];
        
        $query="UPDATE depositos SET cantidad='$cantidadnueva'
                WHERE producto='$producto' AND deposito='$deposito'";
        $resultado=$conexion->query($query);        
    }
?>