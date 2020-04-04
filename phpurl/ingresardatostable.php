<?php
    include("bdacceso.php");
    $numero=0;
    $html="";
    $department = $_POST['department'];
    $deposit = $_POST['deposit'];
    if ($_POST['order'] === "Código"){
        $order = "codigo";
    } elseif($_POST['order'] === "Nombre") {
        $order = "nombre";
    }
    $query="SELECT depositos.id,
            productos.codigo,
            depositos.producto,
            productos.departamento,
            depositos.deposito,
            productos.costo,
            depositos.cantidad
            FROM `depositos` 
            INNER JOIN `productos`
            ON productos.nombre = depositos.producto
            WHERE departamento LIKE '%$department%' AND
            deposito LIKE '%$deposit%'
            ORDER BY $order";
    $resultado=$conexion->query($query);
    while($row=$resultado->fetch_assoc()){
        $doExist = false;
        $numero++;
        $html = $html.
            "<tr id='$numero'>
                <td><input class='cp'  id='codigo_$numero' placeholder='Codigo' value='".$row['codigo']."'></td>
                <td><input class='desc' id='descripcion_$numero' placeholder='Descripción' value='".$row['producto']."'></td>
                <td><input class='depositosInput' id='deposito_$numero' placeholder='Depósito' value='".$row['deposito']."'></td>
                <td><input class='co' id='costo_$numero' readonly='true' placeholder='Precio' value='".$row['costo']."'></td>
                <td><input class='co' id='coston_$numero' placeholder='Precio'></td>
                <td><input class='cap' id='cant_$numero' placeholder='Ctd' value='".$row['cantidad']."'></td>
                <td><input class='cantn' id='cantidadn_$numero' placeholder='Ctd'></<td>
                <td class='clearRow'>X</td>
            </tr>";
    }
    echo $html ."||". $numero;
    
?>