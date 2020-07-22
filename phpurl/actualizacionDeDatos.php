<?php
    include('bdacceso.php');
    $boolean = true;
    $boolean2 = false;
    $filas = $_POST['numero'];
    $total = $_POST['total'];
    $EstadoPago = $_POST['EstadoPago'];
    $codProveedor = $_POST['codProveedor'];
    $numFactura = $_POST['numFactura'];
    $fechaDeIng = $_POST['fechaDeIng'];
    $subtotal = $_POST['subtotal'];
    $subtotalIva = $_POST['subtotalIva'];
    $user = $_POST['usuario'];
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

    if ($boolean){
        for ($x = 1 ; $x <= $filas ; $x++){
            $id = $_POST['id' .$x];
            $cantidad = (float)$_POST['cantidad' .$x];
            $unidad = $_POST['unidad' .$x];
            $preciou = $_POST['preciou' .$x];
            $iva = $_POST['iva' .$x];
            $deposito = $_POST['deposito' .$x];
            $ubicacion = $_POST['ubicacion' .$x];

            // Creando nuevo registro de producto en depósito
            $boolean2 = false;
			
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
                $und3 = mysqli_query($conexion, "SELECT cantidad 
												 FROM depositos 
												 WHERE producto='$nombreDeProducto' 
												 AND deposito='$deposito'");
				
                $row3 = mysqli_fetch_array($und3);
                $cantidadInStock = (float)$row3['cantidad'];
                $nuevaCantidad2 = $cantidadInStock + $cantidad;
                $query4="UPDATE depositos SET ubicacion='$ubicacion',
                                              cantidad='$nuevaCantidad2'
                                              WHERE producto='$nombreDeProducto'
                                              AND deposito='$deposito'";
                $resultado4=$conexion->query($query4);
            } else {
                $query4 = "INSERT INTO depositos(producto, deposito, ubicacion, cantidad)
                           VALUES ('$nombreDeProducto', '$deposito', '$ubicacion', '$cantidad')";
                $resultado4=$conexion->query($query4);
            }
            
            // Actualizando la cantidad actual del producto
            $und = mysqli_query($conexion, "SELECT * FROM `productos` WHERE codigo='$id'");
            $row = mysqli_fetch_array($und);
            $cantidadAct = $row['cta'];
            $nuevaCantidad = $cantidadAct + $cantidad;
            $query1="UPDATE `productos` SET cta='$nuevaCantidad',
											ctaprevia='$cantidadAct',
											und='$unidad',
											fechaultpedido='$fechaDeIng',
											noultimopedido='$numFactura',
											costo='$preciou',
											IVA='$iva'
											WHERE codigo='$id'";
            $resultado=$conexion->query($query1);
            
            // Creando los movimientos específicos de la factura
            $query2 = "INSERT INTO 
            `movimientoskardexi`(numerodefactura,
            codigoproveedor,
            producto,
            deposito,
            cantidad,
            und,
            precio, iva) 
            VALUES ('$numFactura',
            '$codProveedor',
            '$nombreDeProducto',
            '$deposito',
            '$cantidad',
            '$unidad',
            '$preciou',
			'$iva')";
            $resultado2=$conexion->query($query2);
        };
        
        // Creando el movimiento de entrada en el kardex
        
        $query3="INSERT INTO 
        kardexingresos(numerodefactura, usuario, fechadeingreso, codproveedor, subtotal, iva, total, movimiento, estadopago)
        VALUES('$numFactura', 
		'$user',
        '$fechaDeIng',
        '$codProveedor',
        '$subtotal',
        '$subtotalIva',
        '$total',
        'Ingreso',
        '$EstadoPago')";
        $resultado3=$conexion->query($query3);
    };
?>