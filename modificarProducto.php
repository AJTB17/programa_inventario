<?php
        include('bdacceso.php');
        $boolean = true;
        $id=$_POST['id'];
        $codigo=$_POST['codigo'];
        $nombre=$_POST['nombre'];
        $unidades=$_POST['unidades'];
        $costo=$_POST['costo'];
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
        if($codigo = "NotAct"){
            $boolean = false;
        }
        if($boolean){
            $query="UPDATE productos SET codigo='$codigo',
            nombre='$nombre',
            und='$unidades',
            costo='$costo',
            descuento='$descuento',
            departamento='$departamento',
            reorden='$reorden',
            fechaultpedido='$fechault',
            noultimopedido='$nroultimopedido',
            IVA='$IVA'
            WHERE id='$id'";
            $resultado=$conexion->query($query);
        } else {
            $query="UPDATE productos SET nombre='$nombre',
            und='$unidades',
            costo='$costo',
            descuento='$descuento',
            departamento='$departamento',
            reorden='$reorden',
            fechaultpedido='$fechault',
            noultimopedido='$nroultimopedido',
            IVA='$IVA'
            WHERE id='$id'";
            $resultado=$conexion->query($query);
        }
?>