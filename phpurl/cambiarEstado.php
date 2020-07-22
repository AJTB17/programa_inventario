<?php
    include('bdacceso.php');
    $fact = $_POST['fact'];
    $busqueda = mysqli_query($conexion, "SELECT estadopago FROM kardexingresos WHERE numerodefactura='$fact'");
    $row = mysqli_fetch_array($busqueda);
    $estado = $row['estadopago'];

    if($estado == "pago"){
        echo "La factura ya esta paga";
    } else if ($estado == "porpagar"){
        $query3="UPDATE kardexingresos SET estadopago='pago' WHERE numerodefactura='$fact'";
        $resultado3=$conexion->query($query3);
    }
?>