<?php
    $codigo=$_POST['codigo'];
    $arr= array("nombre"=>'',"rif"=>'');

    include('bdacceso.php');
    $resultado = mysqli_query($conexion, "SELECT * FROM proveedor WHERE codigo='$codigo'");
    While ($row = mysqli_fetch_array($resultado)) {
                $arr = array("nombre"=>$row['nombre'],"rif"=>$row['rif']);
    }
    echo json_encode($arr);
?>