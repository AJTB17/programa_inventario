<?php
    $camino = $_POST['camino'];
    if ($camino === "hermanos"){
        
        $depa=$_POST['depa'];
        $id=$_POST['descripcion'];
        $arr = array("deposito"=>"");
        include('bdacceso.php');
        
        $resultado = mysqli_query($conexion, "SELECT * FROM depositos WHERE producto='$id' ORDER BY deposito DESC");
        While ($row = mysqli_fetch_array($resultado)) {
            
            $arr = array("deposito"=>$row['deposito'],"cantidad"=>$row['cantidad']);
            
        }

        echo json_encode($arr);
    } 
    else if ($camino === "deposito"){
        
        $dep=$_POST['deposito'];
        $id=$_POST['descripcion'];
        $arr = array("cantidad"=>"");
        $numero= 0;
        include('bdacceso.php');
        $resultado = mysqli_query($conexion, "SELECT * FROM depositos WHERE deposito='$dep'");
        
        while ($row = mysqli_fetch_array($resultado)) {
            if($row['producto'] === $id){
                $arr = array("cantidad"=>$row['cantidad']);
            }   
        }
        
        $producto = mysqli_query($conexion, "SELECT * FROM depositos WHERE producto='$id'");
        
        while ($row = mysqli_fetch_array($producto)) {
            if($row['producto'] === $id){
                $numero++;
                
            }
            
        }
        $arr = $arr + array("contador"=>$numero);
        echo json_encode($arr);
    }

?>