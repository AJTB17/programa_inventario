<?php
    include('bdacceso.php');
    $html = "";

    $movementNumber = $_POST['movementNumber'];
    $fecha = $_POST['fecha'];
    $proveedorCode = $_POST['proveedorCode'];
    $name = $_POST['name'];
    $productName = $_POST['productName'];
    $department = $_POST['department'];
    if ($_POST['order'] == "Más recientes"){
        $order = "DESC";
    } elseif ($_POST['order'] == "Más antiguos"){
        $order = "ASC";
    };
    $deposit = $_POST['deposit'];
    $query = "SELECT kardexingresos.numerodefactura,
                    kardexingresos.fechadeingreso,
                    kardexingresos.codproveedor,
                    kardexingresos.usuario,
                    proveedor.nombre,
                    kardexingresos.subtotal,
                    kardexingresos.iva,
                    kardexingresos.total FROM `kardexingresos` INNER JOIN `proveedor` ON
                    kardexingresos.codproveedor = proveedor.codigo WHERE numerodefactura LIKE '%$movementNumber%' AND
                                                                        fechadeingreso LIKE '%$fecha%' AND
                                                                        codproveedor LIKE '%$proveedorCode%' 
                                                                        ORDER BY fechadeingreso $order";
    $result = $conexion->query($query);
    while ($row = $result->fetch_assoc()){
        $doExist = false;
        $cadena = "";
        $query2 = "SELECT movimientoskardexi.numerodefactura,
                        movimientoskardexi.codigoproveedor,
                        movimientoskardexi.producto,
                        productos.departamento,
                        movimientoskardexi.deposito,
                        movimientoskardexi.cantidad,
                        movimientoskardexi.precio FROM `movimientoskardexi` 
                        INNER JOIN `productos` ON productos.nombre = movimientoskardexi.producto 
                        WHERE numerodefactura LIKE '%$movementNumber%' AND 
                            codigoproveedor LIKE '%$proveedorCode%' AND
                            producto LIKE '%$productName%' AND
                            departamento LIKE '%$department%' AND
                            deposito LIKE '%$deposit%'";
        $result2 = $conexion->query($query2);
        if(mysqli_num_rows($result2) != 0) {
            $doExist = true;
        };
        while ($row2 = $result2->fetch_assoc()){
            $cadena = $cadena.$row2['producto']."||".
                          $row2['cantidad']."||".
                          $row2['precio']."||".
                          $row2['deposito']."--";
        }
        if ($doExist) {
            $html = $html  ."<tr onclick='desplegarMovimientos(`$cadena`)'>
                                <td>".$row['usuario']."</td>
                                <td>".$row['numerodefactura']."</td>
                                <td>".$row["fechadeingreso"]."</td>
                                <td>".$row["codproveedor"]."</td>
                                <td>".$row["nombre"]."</td>
                                <td>".$row["subtotal"]."$</td>
                                <td>".$row["iva"]."$</td>
                                <td>".$row["total"]."$</td>
                            </tr>";
        }
    }
    echo $html;

?>