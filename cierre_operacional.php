<?php
define('FPDF_FONTPATH','phpmailer/font');
require('phpmailer/fpdf.php');

 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';
include('phpurl/bdacceso.php');


class PDF extends FPDF{
// Cabecera de página
    function Header(){       
            $fecha=date("d-m-Y");
            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Estancia Los Potros',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(100,10,'',0,0,'C',0);
            $this->Cell(80,10,'Cierre operacional',1,0,'C');
            $this->Image('img/logos/favicon.png',5,8,20);
            $this->Ln(10);

            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Rif: J-40374164-6',0,0,'C',0);
            $this->Cell(100,8,'',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(30,10,'Fecha: ',1,0,'C'); 
            $this->Cell(50,10,$fecha,1,0,'C'); 
            $this->Ln(20);
    }

    
// Pie de página
    function Footer(){
        // Posición: a 1,5 cm del final
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',10);
        // Número de página
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }
}


$pdf = new PDF('L', 'mm', 'A4');
$pdf->AliasNbPages();
$pdf->AddPage();


$pdf->SetFont('Arial','B',23);
$pdf->Cell(280,10,utf8_decode('Reporte de cierre operacional'),0,0,'C',0);
$pdf->Ln(20);
    
$resultado1 = mysqli_query($conexion, "SELECT * FROM productos ORDER BY fechaultpedido DESC");


$pdf->SetFont('Times','B',9);
 			 	 	 	 	 		 	
$pdf->Cell(65,8,'Nombre',1,0,'C',0);
$pdf->Cell(30,8,'Cant',1,0,'C',0);
$pdf->Cell(25,8,'Cant minima',1,0,'C',0);
$pdf->Cell(17,8,'Oper.Ing',1,0,'C',0);
$pdf->Cell(30,8,'Ingresos',1,0,'C',0);
$pdf->Cell(17,8,'Oper.Egre',1,0,'C',0);
$pdf->Cell(25,8,'Egresos',1,0,'C',0);
$pdf->Cell(18,8,'Auditorias',1,0,'C',0);
$pdf->Cell(26,8,'Ultimo pedido',1,0,'C',0);
$pdf->Cell(27,8,'Numero de pedido',1,0,'C',0);
$pdf->Ln(8);



while($row1 = mysqli_fetch_array($resultado1)){
    $cantI = 0;
    $cantPro = 0;
    $cantPE = 0;
    $cantE = 0;
    $cantA = 0;
    
    
    $resultado2 = mysqli_query($conexion, "SELECT * FROM `movimientoskardexi` WHERE producto ='$row1[nombre]' ORDER BY numerodefactura");
    while($row2 = mysqli_fetch_array($resultado2)){
        $cantPro = $row2['cantidad'] + $cantPro;
        $cantI = $cantI + 1;
    }
    
    $resultado3 = mysqli_query($conexion, "SELECT cantidad FROM `movimientoskardexs` WHERE producto ='$row1[nombre]'");
    while($row3 = mysqli_fetch_array($resultado3)){   
        $cantPE = $row3['cantidad'] + $cantPE;
        $cantE = $cantE + 1;
    }
    
    $resultado4 = mysqli_query($conexion, "SELECT cantidad FROM `movimientoskardexauditoria` WHERE producto ='$row1[nombre]'");
    while($row3 = mysqli_fetch_array($resultado4)){   
        $cantA = $cantA + 1;
    }
    
    
    $pdf->Cell(65,8,$row1['nombre'],1,0,'L',0);
    $pdf->Cell(30,8,$row1['cta']. " " .$row1['und'],1,0,'L',0);
    $pdf->Cell(25,8,$row1['reorden']. " " .$row1['und'],1,0,'L',0);
    $pdf->Cell(17,8,$cantI,1,0,'L',0);
    $pdf->Cell(30,8,$cantPro. " " .$row1['und'],1,0,'L',0);
    $pdf->Cell(17,8,$cantE,1,0,'L',0);
    $pdf->Cell(25,8,$cantPE. " " .$row1['und'],1,0,'L',0);
    $pdf->Cell(18,8,$cantA,1,0,'L',0);
    $pdf->Cell(26,8,$row1['fechaultpedido'],1,0,'L',0);
    $pdf->Cell(27,8,$row1['noultimopedido'],1,0,'L',0);
    $pdf->Ln(8);
    
}
    $fecha = date("d-m-Y");
    $nb_pages = $pdf->PageNo();
    $nombrearc = "reporte_cierre_mensual_de". $fecha .".pdf";
    $file1=$nombrearc;
    $pdf->Output("F",$file1);
    print ("  >> File '$file1' generated:  " . "$nb_pages pages  -  " . filesize($file1) . " bytes\n");



// fin de creacion del pdf

//vaciado de tablas start
        
$vaciado1 = mysqli_query($conexion, "TRUNCATE TABLE auditoria");
$ingerto1 = "INSERT INTO auditoria(id, numerodeAjuste, usercode ,usuario, fecha, nombreMovimiento, direccion) 
             VALUES ('0', '0', ' ', ' ', 'NO BORRAR','NO BORRAR','NO BORRAR')";
$ingerto1R= $conexion->query($ingerto1);
        
$vaciado2 = mysqli_query($conexion, "TRUNCATE TABLE egresoreporte");
$ingerto2 = "INSERT INTO egresoreporte(id, numerodeAjuste, nombreArchivo, fecha, direccion) 
             VALUES ('0', '0', 'NO BORRAR', 'NO BORRAR', 'NO BORRAR')";
$ingerto2R= $conexion->query($ingerto2);
        
$vaciado3 = mysqli_query($conexion, "TRUNCATE TABLE ingresoreporte");
$ingerto3 = "INSERT INTO ingresoreporte(id, numerodeAjuste, nombreArchivo, fecha, direccion) 
             VALUES ('0', '0', 'NO BORRAR', 'NO BORRAR', 'NO BORRAR')";
$ingerto3R= $conexion->query($ingerto3);  


$vaciado4 = mysqli_query($conexion, "TRUNCATE TABLE kardexingresos");
$vaciado5 = mysqli_query($conexion, "TRUNCATE TABLE kardexsalidas");
$vaciado6 = mysqli_query($conexion, "TRUNCATE TABLE kardextraslados");

$vaciado7 = mysqli_query($conexion, "TRUNCATE TABLE movimientoskardexauditoria");
$vaciado8 = mysqli_query($conexion, "TRUNCATE TABLE movimientoskardexi");
$vaciado9 = mysqli_query($conexion, "TRUNCATE TABLE movimientoskardexs");
$vaciado10 = mysqli_query($conexion, "TRUNCATE TABLE movimientoskardext");


$vaciado11 = mysqli_query($conexion, "TRUNCATE TABLE reporteedm");
$ingerto11 = "INSERT INTO reporteedm(numerodeReporte, nombreArchivo, fecha, direccion) 
             VALUES ('0', 'NO BORRAR', 'NO BORRAR', 'NO BORRAR')";
$ingerto11R= $conexion->query($ingerto11);

$vaciado12 = mysqli_query($conexion, "TRUNCATE TABLE reporteidm");
$ingerto12 = "INSERT INTO reporteidm(numerodeReporte, nombreArchivo, fecha, direccion) 
             VALUES ('0', 'NO BORRAR', 'NO BORRAR', 'NO BORRAR')";
$ingerto12R= $conexion->query($ingerto12);

$vaciado13 = mysqli_query($conexion, "TRUNCATE TABLE reportepr");
$ingerto13 = "INSERT INTO reportepr(numerodeReporte, nombreArchivo, fecha, direccion) 
             VALUES ('0', 'NO BORRAR', 'NO BORRAR', 'NO BORRAR')";
$ingerto13R= $conexion->query($ingerto13);  

$vaciado14 = mysqli_query($conexion, "TRUNCATE TABLE trasladoreporte");
$ingerto14 = "INSERT INTO trasladoreporte(id, numerodeAjuste, nombreArchivo, fecha, direccion) 
             VALUES ('0', '0', 'NO BORRAR', 'NO BORRAR', 'NO BORRAR')";
$ingerto14R= $conexion->query($ingerto14); 
        
// Movimiento del archivo start      

$nombrearc = "reporte_cierre_mensual_de". $fecha .".pdf";
$direccion= "./phpurl/cierresOperacion/" .$nombrearc ;


sleep(0.5);
copy( $nombrearc, $direccion );
unlink($nombrearc);
echo "||". $fecha;
?>