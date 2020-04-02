<?php
    $id=$_POST['id'];
    $arr = array("codigo"=>"","producto"=>"","departamento"=>"","unidad"=>"","iva"=>"","costo"=>"","cantidad"=>"");
    include('bdacceso.php');
    $resultado = mysqli_query($conexion, "SELECT * FROM productos WHERE nombre='$id' OR codigo='$id'");
    While ($row = mysqli_fetch_array($resultado)) {
                $arr = array("codigo"=>$row['codigo'],
                "producto"=>$row['nombre'],
                "departamento"=>$row['departamento'],
                "unidad"=>$row['und'],
                "iva"=>$row['IVA'],
                "costo"=>$row['costo'],
                "cantidad"=>$row['cta']);
    }
    echo json_encode($arr);
?>