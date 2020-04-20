<?php
    include("bdacceso.php");
    $solicitante = $_POST['solicitante'];
    $razon = $_POST['razon'];
    $accion = $_POST['accion'];
    $numero = $_POST['numero'];
    $fecha = date("Y-m-d");
    $numRef = $_POST['numRef'];
    $boolean3 = true;
    $usuario = $_POST['usuario'];

    /* Determinación de acción */

    if ($accion == "egreso"){
        $boolean = true;
        $query = "SELECT id FROM kardexsalidas";
        $resultado = $conexion->query($query);
        while($row=$resultado->fetch_assoc()){
            if ($row['id'] == $numRef){
                $boolean3 = false;
                echo "Número de movimiento existente";
            }
        }
    } else if ($accion == "traslado"){
        $boolean = false;
        $query = "SELECT id FROM kardextraslados";
        $resultado = $conexion->query($query);
        while($row=$resultado->fetch_assoc()){
            if ($row['id'] == $numRef){
                $boolean3 = false;
                echo "Número de movimiento existente";
            }
        }
    };
    
    /*  Confirmación de datos correctos  */
    if ($boolean3){
        for ($n = 1 ; $n <= $numero ; $n++){
            $codigo = $_POST['id' .$n];
            $cantidad = $_POST['cantidad' .$n];
            $deposito = $_POST['deposito' .$n];
            $ubicacion = $_POST['ubicacion' .$n];
            $busquedaNombre = mysqli_fetch_array(mysqli_query($conexion, "SELECT nombre FROM productos 
                                                                         WHERE codigo='$codigo'"));
            $producto = $busquedaNombre['nombre'];
            $busquedaDepositos="SELECT producto,deposito,cantidad FROM depositos";
            $result=$conexion->query($busquedaDepositos);
            while($conjunto=$result->fetch_assoc()){
                if ($conjunto['producto'] == $producto &&
                    $conjunto['deposito'] == $deposito &&
                    $conjunto['cantidad'] >= $cantidad){
                    $boolean2 = true;
                } else if ($conjunto['producto'] == $producto &&
                           $conjunto['deposito'] == $deposito &&
                           $conjunto['cantidad'] < $cantidad){
                    $boolean2 = false;
                    echo "Cantidad en depósito insuficiente para producto " .$codigo;
                    break;
                };
            };
            $variable = mysqli_query($conexion, "SELECT * FROM depositos WHERE deposito='$deposito' 
                                                 AND producto='$producto'");
            $contar = mysqli_num_rows($variable);
            if($contar == 0){
                $boolean2 = false;
                echo "Producto " .$codigo ." no existe en deposito " .$deposito;
            };
        };
        if ($boolean2){
            if(!$boolean){
                $query = "INSERT INTO kardextraslados(id,
                                                      solicitante,
                                                      usuario,
                                                      razon,
                                                      fechadetraslado,
                                                      movimiento) VALUES 
                                                      ('$numRef',
                                                      '$solicitante',
                                                      '$usuario',
                                                      '$razon',
                                                      '$fecha',
                                                      'Traslado')";
                $resultado = $conexion->query($query);
            } else if ($boolean){
                $query = "INSERT INTO kardexsalidas(id,
                                                    solicitante,
                                                    usuario,
                                                    razon,
                                                    fechadesalida,
                                                    movimiento) VALUES 
                                                    ('$numRef',
                                                    '$usuario',
                                                    '$solicitante',
                                                    '$razon',
                                                    '$fecha',
                                                    'Salida')";
                $resultado = $conexion->query($query);
            }
            for ($n = 1 ; $n <= $numero ; $n++){
                $codigo = $_POST['id' .$n];
                $cantidad = $_POST['cantidad' .$n];
                $deposito = $_POST['deposito' .$n];
                $ubicacion = $_POST['ubicacion' .$n];
                $doDepositExist = false;
                $busquedaNombre = mysqli_fetch_array(mysqli_query($conexion, "SELECT und,nombre FROM
                productos WHERE codigo='$codigo'"));
                $producto = $busquedaNombre['nombre'];
                $unidad = $busquedaNombre['und'];
                $busquedaDepositos="SELECT producto,deposito,cantidad FROM depositos";
                $result=$conexion->query($busquedaDepositos);
                while($conjunto=$result->fetch_assoc()){
                    if ($conjunto['producto'] == $producto &&
                        $conjunto['deposito'] == $deposito){
                        $doDepositExist = true;
                    };
                };
                if($boolean){

                    /* Actualización de cantidad en depósitos */

                    $busquedaCantidad = mysqli_fetch_array(mysqli_query($conexion,
                                    "SELECT cantidad FROM depositos WHERE producto='$producto'
                                    AND deposito='$deposito'"));
                    $cantidadActual = $busquedaCantidad['cantidad'];
                    $nuevaCantidad = $cantidadActual - $cantidad;
                    $query = "UPDATE depositos SET cantidad='$nuevaCantidad' WHERE
                    producto='$producto' AND deposito='$deposito'";
                    $resultado = $conexion->query($query);

                    /* Actualización de cantidad en base de datos de productos */

                    $busquedaCantidad = mysqli_fetch_array(mysqli_query($conexion,
                                    "SELECT cta FROM productos WHERE codigo='$codigo'"));
                    $cantidadActual = $busquedaCantidad['cta'];
                    $nuevaCantidad = $cantidadActual - $cantidad;
                    $query = "UPDATE productos SET cta='$nuevaCantidad',
                    ctaprevia='$cantidadActual' WHERE codigo='$codigo'";
                    $resultado = $conexion->query($query);

                    /* Inserción de datos en movimientoskardexs */

                    $query= "INSERT INTO
                    movimientoskardexs(id,producto,cantidad,und,antiguodeposito,motivo) VALUES
                    ('$numRef',
                    '$producto',
                    '$cantidad',
                    '$unidad',
                    '$deposito',
                    '$ubicacion')";
                    $resultado = $conexion->query($query);

                } else if (!$boolean){

                    /* Actualización de cantidad en depósitos, proceso de resta */

                    $busquedaCantidad = mysqli_fetch_array(mysqli_query($conexion,
                                "SELECT cantidad FROM depositos WHERE producto='$producto'
                                AND deposito='$deposito'"));
                    $cantidadActual = $busquedaCantidad['cantidad'];
                    $nuevaCantidad = $cantidadActual - $cantidad;
                    $query = "UPDATE depositos SET cantidad='$nuevaCantidad' WHERE producto='$producto'
                    AND deposito='$deposito'";
                    $resultado = $conexion->query($query);

                    /* Actualización de cantidad en depósitos, proceso de suma */

                    if($doDepositExist){
                        $busquedaCantidad = mysqli_fetch_array(mysqli_query($conexion,
                                "SELECT cantidad FROM depositos WHERE producto='$producto' AND
                                deposito='$ubicacion'"));
                        $cantidadActual = $busquedaCantidad['cantidad'];
                        $nuevaCantidad = $cantidadActual + $cantidad;
                        $query = "UPDATE depositos SET cantidad='$nuevaCantidad' WHERE producto='$producto'
                        AND deposito='$ubicacion'";
                        $resultado = $conexion->query($query);
                    } else if (!$doDepositExist) {
                        $query = "INSERT INTO depositos(producto,deposito,ubicacion,cantidad) VALUES
                        ('$producto','$ubicacion','Estante 9','$cantidad')";
                        $resultado= $conexion->query($query);
                    }

                    /* Incersión de datos en movimientoskardext */

                    $query= "INSERT INTO
                    movimientoskardext(id,producto,cantidad,und,antiguodeposito,nuevodeposito) VALUES
                    ('$numRef',
                    '$producto',
                    '$cantidad',
                    '$unidad',
                    '$deposito',
                    '$ubicacion')";
                    $resultado = $conexion->query($query);

                };
            };  
        };
    };
?>