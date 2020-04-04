<?php
    include('bdacceso.php');
              $codigo=$_POST['codigo'];
              if($codigo>0){
                  $query="DELETE FROM proveedor WHERE id='$codigo'";
                  $resultado=$conexion->query($query);
                  if($resultado){ 

                     echo "insercila Exitosa"; 
                  } else { 
                      echo "insercila NO Exitosa"; 
                  } 
       
              }
?>