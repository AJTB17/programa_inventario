<?php
    include('bdacceso.php');
    $html = "";

    $movementNumber = $_POST['movementNumber'];
    $solicitante = $_POST['solicitante'];
    $fecha = $_POST['fecha'];
    if ($_POST['movement'] == "Todos"){
        $movement = "";
    } else {
        $movement = $_POST['movement'];
    }
    $name = $_POST['name'];
    $department = $_POST['department'];
    $deposit = $_POST['deposit'];
    if ($_POST['order'] == "Más recientes"){
        $order = "DESC";
    } elseif ($_POST['order'] == "Más antiguos"){
        $order = "ASC";
    };
    $query = "SELECT * FROM `kardexsalidas` WHERE id LIKE '%$movementNumber%' AND 
                solicitante LIKE '%$solicitante%' AND 
                fechadesalida LIKE '%$fecha%' AND 
                movimiento LIKE '%$movement%'
            UNION ALL 
            SELECT * FROM `kardextraslados` WHERE id LIKE '%$movementNumber%' AND
                solicitante LIKE '%$solicitante%' AND
                fechadetraslado LIKE '%$fecha%' AND
                movimiento LIKE '%$movement%' ORDER BY fechadesalida $order";
    $result = $conexion->query($query);
    while ($row = $result->fetch_assoc()) {
        $doExist = false;
        $cadena = "";
        if ($row['movimiento'] == "Salida") {
            $query2 = "SELECT movimientoskardexs.id,
                            movimientoskardexs.producto,
                            productos.departamento,
                            movimientoskardexs.cantidad,
                            movimientoskardexs.und,
                            movimientoskardexs.antiguodeposito,
                            movimientoskardexs.motivo FROM movimientoskardexs INNER JOIN
                            productos ON movimientoskardexs.producto = productos.nombre 
                                WHERE movimientoskardexs.id LIKE '%$movementNumber%' AND
                                producto LIKE '%$name%' AND
                                departamento LIKE '%$department%' AND
                                antiguodeposito LIKE '%$deposit%'";
            $result2 = $conexion->query($query2);
            if(mysqli_num_rows($result2) != 0) {
                $doExist = true;
            };
            while ($row2 = $result2->fetch_assoc()) {
                $cadena = $cadena.$row2['producto']."||".
                          $row2['cantidad']." ".$row2['und']."||".
                          $row2['antiguodeposito']."||".
                          $row2['motivo']."--";
            }
        } elseif ($row['movimiento'] == "Traslado") {
            $query2 = "SELECT movimientoskardext.id,
                            movimientoskardext.producto,
                            productos.departamento,
                            movimientoskardext.cantidad,
                            movimientoskardext.und,
                            movimientoskardext.antiguodeposito,
                            movimientoskardext.nuevodeposito FROM movimientoskardext INNER JOIN
                            productos ON movimientoskardext.producto = productos.nombre 
                                WHERE movimientoskardext.id LIKE '%$movementNumber%' AND
                                producto LIKE '%$name%' AND
                                departamento LIKE '%$department%' AND
                                (antiguodeposito LIKE '%$deposit%' OR
                                nuevodeposito LIKE '%$deposit%')";
            $result2 = $conexion->query($query2);
            if(mysqli_num_rows($result2) != 0) {
                $doExist = true;
            };
            while ($row2 = $result2->fetch_assoc()) {
                $cadena = $cadena.$row2['producto']."||".
                          $row2['cantidad']." ".$row2['und']."||".
                          $row2['antiguodeposito']."||".
                          $row2['nuevodeposito']."--";
            }
        }
        if ($doExist) {
            $html = $html  ."<tr onclick='desplegarInformacion(`$cadena`,`".$row['movimiento']."`)'>
                                <td>".$row['id']."</td>
                                <td>".$row['usuario']."</td>
                                <td>".$row["solicitante"]."</td>
                                <td>".$row["fechadesalida"]."</td>
                                <td>".$row["movimiento"]."</td>
                                <td>".$row["razon"]."</td>
                            </tr>";
        }
    }
    echo $html;
?>