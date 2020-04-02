<?php
    $conexion = mysqli_connect("localhost", "root", "lp12345..", "bdlospotros");

    if (!$conexion){
        echo "Error conexion BD";
    } else {
        //echo "Conectado DB";
    };

?>