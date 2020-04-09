<?php
    $codigo=$_POST['codigo'];
    $arr= array("codigo"=>'',"nombre"=>'',"rif"=>'');

    include('bdacceso.php');
    $resultado = mysqli_query($conexion, "SELECT codigo,nombre,rif FROM proveedor WHERE 
                                            codigo='$codigo' OR nombre = '$codigo'");
    While ($row = mysqli_fetch_array($resultado)) {
                $arr = array("codigo"=>$row['codigo'],"nombre"=>$row['nombre'],"rif"=>$row['rif']);
    }
    echo json_encode($arr);
?>