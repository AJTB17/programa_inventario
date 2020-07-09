<?php
	include('bdacceso.php');
	$clave=$_POST['clave'];
    $user=$_POST['user'];
    $status="denegado";
    $arr = array("Usuario"=>'',
				 "Clave"=>'',
				 "Nombres"=>'',
				 "Apellidos"=>'',
				 "Admin"=>'',
				 "Correo"=>'',
				 "Estatus"=>'denegado',
				 "Nivel1"=>'',
				 "Nivel2"=>'',
				 "Nivel3"=>'',
				 "Nivel4"=>'',
				 "Nivel5"=>'',
				 "Ubicacion"=>'');

    $resultado= mysqli_query($conexion, "SELECT * FROM usuarios WHERE (usuario='$user' AND clave='$clave' ) OR (correo='$user' AND clave='$clave') ");
	while($row= mysqli_fetch_array($resultado)) {
				$status="permitido";
				$arr = array("Usuario"=>$row['usuario'],
							 "Clave"=>$row['clave'],
							 "Nombres"=>$row['nombres'],
							 "Apellidos"=>$row['apellidos'],
							 "Admin"=>$row['admin'],
							 "Correo"=>$row['correo'],
							 "Nivel1"=>$row['nivel1'],
							 "Estatus"=>$status,"Nivel2"=>$row['nivel2'],
							 "Nivel3"=>$row['nivel3'],
							 "Nivel4"=>$row['nivel4'],
							 "Nivel5"=>$row['nivel5'],
							 "Ubicacion"=>$row['ubicacion']);
	}
	echo json_encode($arr);
?>
