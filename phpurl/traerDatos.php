<?php
    $id=$_POST['id'];
    $numero=(int)$_POST['numero'];
    $numero_2= 0;
    $contador=0;
    $contador_2=0;
    $contador_3=0;
    $contador_4=0;
    $contador_6=0;
    $html="";
    $arr = array("codigo"=>"","producto"=>"","departamento"=>"","unidad"=>"","iva"=>"","costo"=>"","cantidad"=>"");
    include('bdacceso.php');
    
    $resultado1 = mysqli_query($conexion, "SELECT * FROM productos WHERE nombre='$id' OR codigo='$id'");
    $row = mysqli_fetch_array($resultado1);
    $ref= $row['nombre'];

//    sacar cantidad de depositos del producto
    $producto = mysqli_query($conexion, "SELECT * FROM depositos WHERE producto='$ref'");
        
    while ($row = mysqli_fetch_array($producto)) {
        if($row['producto'] === $ref){
            $contador++;
        }
    };
//

    while ($contador_2 < $contador){
        $contador_2++;
        if($numero_2 === 0){
            $numero_2++;
            
            $resultado1 = mysqli_query($conexion, "SELECT * FROM productos WHERE nombre='$id' OR codigo='$id'");
            while ($row = mysqli_fetch_array($resultado1)) {
                $arr = array("codigo"=>$row['codigo'],
                "producto"=>$row['nombre'],
                "departamento"=>$row['departamento'],
                "unidad"=>$row['und'],
                "iva"=>$row['IVA'],
                "costo"=>$row['costo'],
                "cantidad"=>$row['cta']);
            }
            $numero++;    
        } 
        else {
            $query="SELECT depositos.id, productos.codigo, depositos.producto, productos.departamento, depositos.deposito, productos.costo,                          depositos.cantidad 
                    FROM `depositos` 
                    INNER JOIN `productos` 
                    ON productos.nombre = depositos.producto  
                    WHERE producto='$id' OR codigo='$id'
                    ORDER BY deposito DESC";
            
            $contador_3= $numero;
            $contador_4= $numero_2;
            $resultado2=$conexion->query($query);
            
            while($numero_2 < $contador){
                $numero++;
                $numero_2++;
                $contador_6= $numero - 1;
            }
            
            $contador_5 = $numero;
            $numero= $contador_5 -1;
            $numero_2 = $contador_4;
            
            while($numero_2 < $contador){
                $row=$resultado2->fetch_assoc();
                $html = $html.
                    "<tr id='$numero'>
                        <td><input class='cp'  id='codigo_$numero' placeholder='Codigo' value='".$row['codigo']."'></td>
                        <td><input class='desc' id='descripcion_$numero' placeholder='Descripción' value='".$row['producto']."'></td>
                        <td><input class='co' id='deposito_$numero' placeholder='Depósito' value='".$row['deposito']."'></td>
                        <td><input class='co' id='costo_$numero' readonly='true' placeholder='Precio' value='".$row['costo']."'></td>
                        <td><input class='co' id='coston_$numero' placeholder='Precio'></td>
                        <td><input class='cap' id='cant_$numero' placeholder='Ctd' value='".$row['cantidad']."'></td>
                        <td><input class='cantn' id='cantidadn_$numero' placeholder='Ctd'></<td>
                        <td class='clearRow'>X</td>
                    </tr>";
                $numero_2++;
                $numero--;
            }
            $numero = $contador_6;
        }   
    }
    $arr = $arr + array("html"=>$html) + array("numero"=>$numero);
    
    echo json_encode($arr);
//    echo $html ."||". $numero;
?>