<?php
        include('bdacceso.php');
        $id=$_POST['id'];
        $codigo = $_POST['codigo'];
        $nombre=$_POST['nombre'];
        $rif=$_POST['rif'];
        $direccionfis=$_POST['direccionfis'];
        $direccionofi=$_POST['direccionofi'];
        $telefonoofi=$_POST['telefonoofi'];
        $telefonocel=$_POST['telefonocel'];
        $correo=$_POST['correo'];
        $contacto=$_POST['contacto'];
        $cargocon=$_POST['cargocon'];
        $telefonocon=$_POST['telefonocon'];
        if($id > 0){
            $query="UPDATE proveedor SET codigo='$codigo',
            nombre='$nombre',
            rif='$rif',
            direccionfiscal='$direccionfis',
            direccionoficina='$direccionofi',
            telefonooficina='$telefonoofi',
            telefonocelular='$telefonocel',
            correo='$correo',
            contacto='$contacto',
            cargocontacto='$cargocon',
            telefonocontacto='$telefonocon'
            WHERE id='$id'";
            $resultado=$conexion->query($query);
            if($resultado){
                echo "inserción Exitosa";
                } else {
                echo "inserción NO Exitosa";
            }
        }
?>