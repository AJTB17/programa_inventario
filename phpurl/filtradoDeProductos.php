<?php
    include('bdacceso.php');
    include("functions.php");
    $html = "";
    //////////////////////////////////////////////////
    // Hacer un bucle for con la definición de variables
    /////////////////////////////////////////////////
    $name = $_POST['name'];
    $code = $_POST['code'];
    $department = $_POST['department'];
    $lastDate = $_POST['lastDate'];
    $lastRequest = $_POST['lastRequest'];
    /////////////////////////////////////////////////

    $query = "SELECT * FROM productos WHERE codigo LIKE '%$code%' AND
                                            nombre LIKE '%$name%' AND
                                            departamento LIKE'%$department%' AND
                                            fechaultpedido LIKE '%$lastDate%' AND
                                            noultimopedido LIKE '%$lastRequest%' ORDER BY codigo";
    $result = $conexion->query($query);
    while ($row = $result->fetch_assoc()) {
        $isOnReorder = $row['cta'] <= $row['reorden'];

        $decimalCta = changeDecimalNotation($row['cta']);
        $decimalCosto = changeDecimalNotation($row['costo']);

        $productos=$row['id']."||".
                $row["codigo"]."||".
                $row["nombre"]."||".
                $row['und']."||".
                $row["descuento"]."||".
                $row["departamento"]."||".
                $row["reorden"]."||".
                $row["IVA"]."||";

        $caracts = $row['und']."||".
                $row['descuento']."||".
                $row['departamento']."||".
                $row['reorden']."||".
                $row['fechaultpedido']."||".
                $row['noultimopedido'];

        $nombre = $row['nombre'];

        $query2 = "SELECT deposito,ubicacion,cantidad FROM depositos WHERE
        producto='$nombre' ORDER BY deposito";
        $resultado2=$conexion->query($query2);
        $depositos="";
        while($row2=$resultado2->fetch_assoc()){
            $depositos = $depositos.$row2['deposito']."||".
                    $row2['ubicacion']."||".
                    $row2['cantidad']."__";
        };

        $html = $html."<tr>
                    <td onclick='desplegarDepositos(`$caracts`,`$depositos`,`".$row['nombre']."`)'>".$row['codigo']."</td>
                    <td onclick='desplegarDepositos(`$caracts`,`$depositos`,`".$row['nombre']."`)'>".$row["nombre"]."</td>
                    <td onclick='desplegarDepositos(`$caracts`,`$depositos`,`".$row['nombre']."`)' class='($isOnReorder ? 'reorden' : '')'>$decimalCta</td>
                    <td onclick='desplegarDepositos(`$caracts`,`$depositos`,`".$row['nombre']."`)'>".$row['ctaprevia']."</td>
                    <td onclick='desplegarDepositos(`$caracts`,`$depositos`,`".$row['nombre']."`)'>".$row["und"]."</td>
                    <td onclick='desplegarDepositos(`$caracts`,`$depositos`,`".$row['nombre']."`)'>".$row['costo']."$</td>
                    <td onclick='desplegarDepositos(`$caracts`,`$depositos`,`".$row['nombre']."`)'>".$row["IVA"]."%</td>
                    <td onclick='modProducto(`$productos`)' class='modProducto'>Modificar</td>
                    <td class='clearProducto' onclick='clearProduct(`$productos`)'>X</td>
                </tr>";

    }
    echo $html;
?>