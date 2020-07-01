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
            $this->Cell(15,10,'',0,0,'C',0);
            $this->Cell(80,10,'Cierre operacional',1,0,'C');
            $this->Image('img/logos/favicon.png',5,8,20);
            $this->Ln(10);

            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Rif: J-40374164-6',0,0,'C',0);
            $this->Cell(15,8,'',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(30,10,'Fecha: ',1,0,'C'); 
            $this->Cell(50,10,$fecha,1,0,'C'); 
            $this->Ln(10);

            $this->Ln(10);
            $this->SetFont('Arial','B',23);
            $this->Cell(195,10,utf8_decode('Reporte de cierre operacional'),0,0,'C',0);
            $this->Ln(10);
            $this->Ln(10);
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
    $pdf->SetFont('Times','B',9);

$resultado1 = mysqli_query($conexion, "SELECT * FROM productos");
$resultado2 = mysqli_query($conexion, "SELECT cantidad FROM `movimientoskardexi` WHERE nombre = '#'");
$resultado3 = mysqli_query($conexion, "SELECT cantidad FROM `movimientoskardexs` WHERE nombre = '#'");
$resultado4 = mysqli_query($conexion, "SELECT cantidad FROM `movimientoskardext ` WHERE nombre = '#'");

while($row1 = mysqli_fetch_array($resultado1)){
	 			 	 	 	 	 		 	
	$pdf->Cell(20,8,'nombre',1,0,'C',0);
	$pdf->Cell(20,8,'departamento ',1,0,'C',0);
	$pdf->Cell(20,8,'und ',1,0,'C',0);
	$pdf->Cell(20,8,'cta ',1,0,'C',0);
	$pdf->Cell(20,8,'cta de reorden ',1,0,'C',0);
	$pdf->Cell(20,8,'cta total en ingresos ',1,0,'C',0);
	$pdf->Cell(20,8,'Nº ingresos realizados',1,0,'C',0);
	$pdf->Cell(20,8,'cta total en salidas ',1,0,'C',0);
	$pdf->Cell(20,8,'Nº salidas realizados',1,0,'C',0);
	$pdf->Cell(20,8,'cta Traslados ',1,0,'C',0);
	$pdf->Cell(20,8,'Nº Traslados realizados',1,0,'C',0);
	$pdf->Cell(20,8,'Nº auditorias realizados',1,0,'C',0);
	$pdf->Cell(20,8,'fechaultpedido  ',1,0,'C',0);
	$pdf->Cell(20,8,'noultimopedido  ',1,0,'C',0);
	$pdf->Ln(8);

//	$pdf->Cell(65,8,$pro['nombre'],1,0,'C',0);
//	$pdf->Cell(65,8,$rowi['numerodefactura'],1,0,'C',0);
//	$pdf->Cell(65,8,$rowi['fechadeingreso'],1,0,'C',0);
//	$pdf->Ln(10);
//
//
//	$pdf->Cell(97.5,8,'Producto',1,0,'C');
//	$pdf->Cell(39,8,'Cantidad',1,0,'C');
//	$pdf->Cell(19.5,8,'Deposito',1,0,'C');
//	$pdf->Cell(19.5,8,'Precio',1,0,'C');
//	$pdf->Cell(19.5,8,'IVA',1,0,'C');
//	$pdf->Ln(8);
//
//	$vueltai = mysqli_query($conexion, "SELECT * FROM `movimientoskardexi` WHERE producto='$rw[nombre]' AND numerodefactura=".$rdi['numerodefactura']."");
//	while($rpi = mysqli_fetch_array($vueltai)){    
////		$pdf->Cell(97.5,8,$rpi['producto'],1,0,'C');
////		$pdf->Cell(39,8,$rpi['cantidad']. " " .$rdi['und'],1,0,'C');
////		$pdf->Cell(19.5,8,$rpi['deposito'],1,0,'C');
////		$pdf->Cell(19.5,8,$rpi['precio']."$",1,0,'C');
////		$pdf->Cell(19.5,8,$rpi['iva']."%",1,0,'C');
////		$pdf->Ln(8);
//	}

	$pdf->Ln(10);
}


    $nb_pages = $pdf->PageNo();
    $nombrearc = "reportep.pdf";
    $file1=$nombrearc;
    $pdf->Output("F",$file1);
    print ("  >> File '$file1' generated:  " . "$nb_pages pages  -  " . filesize($file1) . " bytes\n");


//// fin de creacion del pdf
//
//$nombrearc = "reportep.pdf";
//$direccion= "./phpurl/" .$nombrearc ;
//
//
//sleep(0.5);
//copy( $nombrearc, $direccion );
//unlink($nombrearc);
?>