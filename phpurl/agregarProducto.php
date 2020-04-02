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
        $fechault=$_POST['fechault'];
        $nroultimopedido=$_POST['nroultimopedido'];
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
            '$fechault',
            '$nroultimopedido',
            '$IVA')";
            $resultado=$conexion->query($query);
        }
?>