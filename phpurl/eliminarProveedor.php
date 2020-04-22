<?php
    include('bdacceso.php');
	$codigo=$_POST['codigo'];
	$fecha= date("Y-m-d");
	$usuario=$_POST['usuario'];
	if($codigo>0){
		$busqueda="SELECT nombre FROM proveedor WHERE id='$codigo'";
		$result=$conexion->query($busqueda);
		$conjunto=$result->fetch_assoc();
		$nombre= $conjunto['nombre'];
		
		$query1="INSERT INTO pypeliminados(nombre,POoPR,fecha,usuario) 
			    VALUES ('$nombre','Proveedor','$fecha','$usuario')";
    	$resultado1=$conexion->query($query1);
		
		$query="DELETE FROM proveedor WHERE id='$codigo'";
		$resultado=$conexion->query($query);
		if($resultado){ 
			echo "insercila Exitosa"; 
		} else { 
			echo "insercila NO Exitosa"; 
		} 
	}
?>