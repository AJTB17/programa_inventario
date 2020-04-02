<?php
    include("phpurl/bdacceso.php");
    $query="SELECT * FROM productos ORDER BY codigo";
    $resultado=$conexion->query($query);
    $numero=0;
    $html="";
    while($row=$resultado->fetch_assoc()){
        $numero++;
        $html = $html."<tr>
                            <td><input class='cp'  id='codigo_$numero' placeholder='codigo' value='".$row['codigo']."'></td>
                            <td><input class='desc' id='descripcion_$numero' width='60%' placeholder='Descripción' value='".$row['nombre']."'></td>
                            <td><input class='co' id='costo_$numero' placeholder='precio'></td>
                            <td><input class='cap' id='cant_$numero' placeholder='ctd' value='".$row['cta']."'></td>
                            <td><input class='cantn' id='cantidadn_$numero' placeholder='ctd'></<td>
                       </tr>";
    }
    echo $html;
?>