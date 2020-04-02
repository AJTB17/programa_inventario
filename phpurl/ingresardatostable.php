<?php
    include("bdacceso.php");
    $query="SELECT * FROM productos ORDER BY codigo";
    $resultado=$conexion->query($query);
    $numero=0;
    $html="";
    while($row=$resultado->fetch_assoc()){
        $numero++;
        $html = $html.
            "<tr id='$numero'>
                <td><input class='cp'  id='codigo_$numero' placeholder='Codigo' value='".$row['codigo']."'></td>
                <td><input class='desc' id='descripcion_$numero' width='60%' placeholder='Descripción' value='".$row['nombre']."'></td>
                <td><input class='co' id='costo_$numero' readonly='true' placeholder='Precio' value='".$row['costo']."'></td>
                <td><input class='co' id='coston_$numero' placeholder='Precio'></td>
                <td><input class='cap' id='cant_$numero' placeholder='Ctd' value='".$row['cta']."'></td>
                <td><input class='cantn' id='cantidadn_$numero' placeholder='Ctd'></<td>
                <td class='clearRow'>X</td>
            </tr>";
    }
    echo $html ."||". $numero;
    
?>