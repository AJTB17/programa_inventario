<?php
    $id=$_POST['id'];
    $html="";
    $arr = array("codigo"=>"","producto"=>"","departamento"=>"","unidad"=>"","iva"=>"","costo"=>"","cantidad"=>"");
    include('bdacceso.php');

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

    echo json_encode($arr);
?>