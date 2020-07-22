<?php
    include("bdacceso.php");
    $html = "";

    $name = $_POST['name'];
    $movementNumber = $_POST['movementNumber'];
    $solicitante = $_POST['solicitante'];
    $fecha = $_POST['fecha'];
    $department = $_POST['department'];
    if ($_POST['order'] == "Más recientes"){
        $order = "DESC";
    } elseif ($_POST['order'] == "Más antiguos"){
        $order = "ASC";
    };
    $deposit = $_POST['deposit'];
    if ($_POST['movement'] == "Todos"){
        $movement = "";
    } else {
        $movement = $_POST['movement'];
    }
    $query = "SELECT id,solicitante,fechadesalida,movimiento,usuario FROM `kardexsalidas`WHERE 
    id LIKE '%$movementNumber%'AND
    solicitante LIKE '%$solicitante%' AND
    fechadesalida LIKE '%$fecha%' AND
    movimiento LIKE '%$movement%'
    UNION ALL 
    SELECT id,solicitante,fechadetraslado,movimiento,usuario FROM `kardextraslados` WHERE 
    id LIKE '%$movementNumber%'AND
    solicitante LIKE '%$solicitante%' AND
    fechadetraslado LIKE '%$fecha%' AND
    movimiento LIKE '%$movement%'
    UNION ALL 
    SELECT numerodefactura,codproveedor,fechadeingreso,movimiento,usuario FROM `kardexingresos` WHERE 
    numerodefactura LIKE '%$movementNumber%'AND
    codproveedor LIKE '%$solicitante%' AND
    fechadeingreso LIKE '%$fecha%' AND
    movimiento LIKE '%$movement%' ORDER BY fechadesalida ".$order;
    $result = $conexion->query($query);
    while($row = $result->fetch_assoc()){
        $doExist = false;
        $cadena = "";
        $calculos = "";
        if ($row['movimiento'] == "Traslado"){
            $query2 = "SELECT movimientoskardext.id,
                       kardextraslados.solicitante,
                       movimientoskardext.producto,
                       movimientoskardext.antiguodeposito,
                       movimientoskardext.nuevodeposito,
                       movimientoskardext.und,
                       kardextraslados.fechadetraslado,
                       productos.departamento FROM ((movimientoskardext INNER JOIN
                       productos ON movimientoskardext.producto = productos.nombre) INNER JOIN
                       kardextraslados ON movimientoskardext.id = kardextraslados.id) WHERE 
                       movimientoskardext.id='".$row['id']."' AND
                       solicitante='".$row['solicitante']."' AND
                       producto LIKE '%$name%' AND
                       departamento LIKE '%$department%' AND
                       fechadetraslado='".$row['fechadesalida']."' AND
                       (antiguodeposito LIKE '%$deposit%' OR
                       nuevodeposito LIKE '%$deposit%')";
            $result2 = $conexion->query($query2);
            if(mysqli_num_rows($result2) != 0){
                $doExist = true;
            };
            $query2 = "SELECT * FROM movimientoskardext WHERE id=".$row['id']."";
            $resultado2=$conexion->query($query2);
            while ($row2 = $resultado2->fetch_assoc()) {

                $cadena = $cadena.$row2['producto']."||".
                          $row2['cantidad']." ".$row2['und']."||".
                          $row2['antiguodeposito']."||".
                          $row2['nuevodeposito']."--";

            }
        } elseif ($row['movimiento'] == "Salida"){
            $query2 = "SELECT movimientoskardexs.id,
                       kardexsalidas.solicitante,
                       movimientoskardexs.producto,
                       movimientoskardexs.antiguodeposito,
                       kardexsalidas.fechadesalida,
                       movimientoskardexs.und,
                       productos.departamento FROM ((movimientoskardexs INNER JOIN
                       productos ON movimientoskardexs.producto = productos.nombre) INNER JOIN
                       kardexsalidas ON movimientoskardexs.id = kardexsalidas.id) WHERE 
                       movimientoskardexs.id='".$row['id']."' AND
                       solicitante='".$row['solicitante']."' AND
                       producto LIKE '%$name%' AND
                       departamento LIKE '%$department%' AND
                       fechadesalida='".$row['fechadesalida']."' AND
                       antiguodeposito LIKE '%$deposit%'";
            $result2 = $conexion->query($query2);
            if(mysqli_num_rows($result2) != 0){
                $doExist = true;
            };
            $query2 = "SELECT * FROM movimientoskardexs WHERE id=".$row['id']."";
            $resultado2=$conexion->query($query2);
            while ($row2 = $resultado2->fetch_assoc()) {

                $cadena = $cadena.$row2['producto']."||".
                          $row2['cantidad']." ".$row2['und']."||".
                          $row2['antiguodeposito']."||".
                          $row2['motivo']."--";

            }
        } elseif ($row['movimiento'] == "Ingreso"){
            $query2 = "SELECT movimientoskardexi.numerodefactura,
            movimientoskardexi.codigoproveedor,
            movimientoskardexi.producto,
            movimientoskardexi.deposito,
            productos.departamento,
            movimientoskardexi.und,
            kardexingresos.fechadeingreso FROM ((movimientoskardexi INNER JOIN
            productos ON movimientoskardexi.producto = productos.nombre) INNER JOIN
            kardexingresos ON movimientoskardexi.numerodefactura = kardexingresos.numerodefactura AND
            movimientoskardexi.codigoproveedor = kardexingresos.codproveedor)
            WHERE 
            movimientoskardexi.numerodefactura='".$row['id']."' AND
            codigoproveedor='".$row['solicitante']."' AND
            producto LIKE '%$name%' AND
            deposito LIKE '%$deposit%' AND
            departamento LIKE '%$department%' AND
            fechadeingreso='".$row['fechadesalida']."'";
            $result2 = $conexion->query($query2);
            if(mysqli_num_rows($result2) != 0){
                $doExist = true;
            };
            $datosDeMovimiento=mysqli_fetch_array(mysqli_query($conexion,
                                        "SELECT subtotal,iva,total FROM kardexingresos WHERE numerodefactura=".$row['id']." AND codproveedor=".$row['solicitante']));
            
            $calculos = $calculos.$datosDeMovimiento['subtotal']."!!".
                        $datosDeMovimiento['iva']."!!".
                        $datosDeMovimiento['total'];

            $query2 = "SELECT * FROM movimientoskardexi WHERE numerodefactura=".$row['id']." AND codigoproveedor=".$row['solicitante'];
            $resultado2=$conexion->query($query2);
            while ($row2 = $resultado2->fetch_assoc()) {

                $cadena = $cadena.$row2['producto']."||".
                          $row2['cantidad']." ".$row2['und']."||".
                          $row2['precio']."||".
                          $row2['deposito']."--";

            };

            $query2 = mysqli_fetch_array(mysqli_query($conexion, "SELECT nombre FROM proveedor WHERE codigo=".$row['solicitante']));
            $row['solicitante'] = $query2['nombre'];
        };
        if($doExist){
            $html = $html  ."<tr onclick='desplegarInformacion(`$cadena`,`".$row['movimiento']."`,`$calculos`)'>
                                <td>".$row['id']."</td>
                                <td>".$row['usuario']."</td>
                                <td>".$row["solicitante"]."</td>
                                <td>".$row["fechadesalida"]."</td>
                                <td>".$row["movimiento"]."</td>
                            </tr>";
        }
    }
    echo $html;
    //onclick='desplegarInformacion('$cadena', '$row["movimiento"]','$calculos')
?>