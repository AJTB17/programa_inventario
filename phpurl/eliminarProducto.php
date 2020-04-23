<?php
    include('bdacceso.php');
    $id=$_POST['id'];
	$fecha= date("Y-m-d");
	$usuario=$_POST['usuario'];
    if($id>0){
		$busqueda="SELECT nombre FROM productos WHERE id='$id'";
		$result=$conexion->query($busqueda);
		$conjunto=$result->fetch_assoc();
		$nombre= $conjunto['nombre'];
		
		
		$query1="INSERT INTO pypeliminados(nombre,POoPR,fecha,usuario) 
			    VALUES ('$nombre','Producto','$fecha','$usuario')";
    	$resultado1=$conexion->query($query1);
		
		
	    $query="DELETE FROM productos WHERE id='$id'";
	    $resultado2=$conexion->query($query);
	    if($resultado2){ 
			echo "insercila Exitosa"; 
	    } else { 
			echo "insercila NO Exitosa"; 
	    } 
    }

?>