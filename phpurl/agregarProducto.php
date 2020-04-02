<?php
        include('bdacceso.php');
        $boolean = true;
        $id=$_POST['id'];
        $codigo=$_POST['codigo'];
        $nombre=$_POST['nombre'];
        $unidades=$_POST['unidades'];
        $descuento=$_POST['descuento'];
        $departamento=$_POST['departamento'];
        $reorden=$_POST['reorden'];
        $IVA=$_POST['IVA'];
        $busqueda="SELECT codigo FROM productos";
        $result=$conexion->query($busqueda);
        while($conjunto=$result->fetch_assoc()){
            if ($conjunto['codigo'] == $codigo){
                echo "Codigo existente";
                $boolean = false;
                break;
            };
        };
        if($boolean){
            $query="INSERT INTO
            productos(codigo,nombre,und,costo,descuento,departamento,cta,ctaprevia,reorden,
            fechaultpedido,noultimopedido,IVA) VALUES
            ('$codigo',
            '$nombre',
            '$unidades',
            '0',
            '$descuento',
            '$departamento',
            '0',
            '0',
            '$reorden',
            '0000-00-00',
            '0',
            '$IVA')";
            $resultado=$conexion->query($query);

            $query = "INSERT INTO depositos(producto,
                                            deposito,
                                            ubicacion,
                                            cantidad) 
                       VALUES ('$nombre','1','No especificada','0')";
            $resultado=$conexion->query($query);
        }
?>