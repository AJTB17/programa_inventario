<?php
include('bdacceso.php');
$busqueda = mysqli_query($conexion, "SELECT * FROM `controlcierre`");
$row = mysqli_fetch_array($busqueda);

$mes = $row['MesAct'];
$mes2 = $row['MesPrev'];

echo $mes ."||". $mes2;
?>