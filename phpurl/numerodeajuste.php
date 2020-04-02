<?php
    include("bdacceso.php");
    $query=mysqli_fetch_array(mysqli_query($conexion, "SELECT MAX(numerodeAjuste) FROM auditoria"));
    
    
    echo $query[0];
?>