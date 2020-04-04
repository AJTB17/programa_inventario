<?php
    include('bdacceso.php');
    $boolean = true;
    $boolean2 = false;
    $filas = $_POST['numero'];
    $total = $_POST['total'];
    $codProveedor = $_POST['codProveedor'];
    $numFactura = $_POST['numFactura'];
    $fechaDeIng = $_POST['fechaDeIng'];
    $subtotal = $_POST['subtotal'];
    $subtotalIva = $_POST['subtotalIva'];
    $busqueda="SELECT * FROM kardexingresos";
    $result=$conexion->query($busqueda);

    // Comprobación de existencia de la factura

    if ($numFactura == "" || $codProveedor == "") {
        echo "Rellene el número de factura y el código de proveedor";
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

    //

    if ($boolean){
        for ($x = 1 ; $x <= $filas ; $x++){
            $id = $_POST['id' .$x];
            $cantidad = $_POST['cantidad' .$x];
            $preciou = $_POST['preciou' .$x];
            $deposito = $_POST['deposito' .$x];
            $ubicacion = $_POST['ubicacion' .$x];

            // Creando nuevo registro de producto en depósito
            
            $und2 = mysqli_query($conexion, "SELECT nombre FROM productos WHERE codigo='$id'");
            $row2 = mysqli_fetch_array($und2);
            $nombreDeProducto = $row2['nombre'];
            $busqueda2="SELECT * FROM depositos";
            $result2=$conexion->query($busqueda2);
            while($conjunto2=$result2->fetch_assoc()){
                if ($conjunto2['producto'] == $nombreDeProducto &&
                    $conjunto2['deposito'] == $deposito){
                    $boolean2 = true;
                    break;
                };
            };
            if ($boolean2){
                $und3 = mysqli_query($conexion, "SELECT cantidad FROM depositos WHERE
                producto='$nombreDeProducto'");
                $row3 = mysqli_fetch_array($und3);
                $cantidadInStock = $row3['cantidad'];
                $nuevaCantidad2 = $cantidadInStock + $cantidad;
                $query4="UPDATE depositos SET ubicacion='$ubicacion',
                                              cantidad='$nuevaCantidad2'
                                              WHERE producto='$nombreDeProducto'
                                              AND deposito='$deposito'";
                $resultado4=$conexion->query($query4);
            } else {
                $query4 = "INSERT INTO 
                            depositos(producto,
                            deposito,
                            ubicacion,
                            cantidad)
                            VALUES ('$nombreDeProducto',
                            '$deposito',
                            '$ubicacion',
                            '$cantidad')";
                $resultado4=$conexion->query($query4);
            }
            
            // Actualizando la cantidad actual del producto
            
            $und = mysqli_query($conexion, "SELECT cta FROM productos WHERE codigo='$id'");
            $row = mysqli_fetch_array($und);
            $cantidadAct = $row['cta'];
            $nuevaCantidad = $cantidadAct + $cantidad;
            $query="UPDATE productos SET cta='$nuevaCantidad',
                                         ctaprevia='$cantidadAct',
                                         fechaultpedido='$fechaDeIng',
                                         noultimopedido='$numFactura',
                                         costo='$preciou'
                                         WHERE codigo='$id'";
            $resultado=$conexion->query($query);
            
            // Creando los movimientos específicos de la factura
            
            $query2 = "INSERT INTO 
            movimientoskardexi(numerodefactura,
            codigoproveedor,
            producto,
            deposito,
            cantidad,
            precio) 
            VALUES ('$numFactura',
            '$codProveedor',
            '$nombreDeProducto',
            '$deposito',
            '$cantidad',
            '$preciou')";
            $resultado2=$conexion->query($query2);
        };
        
        // Creando el movimiento de entrada en el kardex
        
        $query3="INSERT INTO 
        kardexingresos(numerodefactura, fechadeingreso, codproveedor, subtotal, iva, total, movimiento)
        VALUES('$numFactura',
        '$fechaDeIng',
        '$codProveedor',
        '$subtotal',
        '$subtotalIva',
        '$total',
        'Ingreso')";
        $resultado3=$conexion->query($query3);
    };
?>