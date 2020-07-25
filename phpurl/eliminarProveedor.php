<?php
    include('bdacceso.php');
	$codigo=$_POST['codigo'];
	$id=$_POST['id'];
	$fecha= date("Y-m-d");
	$usuario=$_POST['usuario'];
	if($codigo>0){
		$busqueda="SELECT nombre FROM proveedor WHERE id='$codigo'";
        $busqueda2="SELECT `numerodefactura` FROM `movimientoskardexi` WHERE codigoproveedor='$id'";
		$result=$conexion->query($busqueda);
		$result2=$conexion->query($busqueda2);
		$conjunto=$result->fetch_assoc();
		$con=$result2->fetch_assoc();

		$nombre= $conjunto['nombre'];
		
        if (!is_null($con)){
            echo "negativo";
            return;
        } else {
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
	}
?>