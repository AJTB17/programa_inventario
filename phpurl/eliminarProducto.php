<?php
    include('bdacceso.php');
              $id=$_POST['id'];
              if($id>0){
                  $query="DELETE FROM productos WHERE id='$id'";
                  $resultado=$conexion->query($query);
                  if($resultado){ 

                     echo "insercila Exitosa"; 
                  } else { 
                      echo "insercila NO Exitosa"; 
                  } 
       
              }
?>