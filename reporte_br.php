<?php
//header('Content-Type: application/json');
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
            include('phpurl/bdacceso.php');
            $numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reportepr");
            $nr = mysqli_fetch_array($numeroR);
            $najuste = $nr[0] + 1;

        
            $fecha=date("d-m-Y");
            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Estancia Los Potros',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(15,10,'',0,0,'C',0);
            $this->Cell(60,10,'Reorden reporte#',1,0,'C');
            $this->Cell(20,10,$najuste,1,0,'R');
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
            $this->Cell(195,10,utf8_decode('Reporte de Productos en cantidad de reorden'),0,0,'C',0);
            $this->Ln(8);
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

$pdf = new PDF('P', 'mm', 'A4');
$pdf->AliasNbPages();
$pdf->AddPage();


    $pdf->Ln(10);
    $pdf->SetFont('Times','B',9);


    $pdf->Cell(48.75,8,'Producto',1,0,'C');
    $pdf->Cell(36.562,8,'Cantidad',1,0,'C');
    $pdf->Cell(24.375,8,'Cta reorden',1,0,'C');
    $pdf->Cell(36.562,8,'numero de pedidos',1,0,'C');
    $pdf->Cell(48.75,8,'Ultimo pedido',1,0,'C');
    $pdf->Ln(8);

    $resultado1 = mysqli_query($conexion, "SELECT * FROM productos ORDER BY fechaultpedido DESC");
    while  ($row = mysqli_fetch_array($resultado1)){
        $n= (float)$row['cta'];
        $n_max= (float)$row['reorden'];
        
        if($n > $n_max){
//            echo $row['cta']. "-------" .$row['reorden'];
        } 
        else {
            $originalDate = $row['fechaultpedido'];
            $newDate = date("d-m-Y", strtotime($originalDate));

            $pdf->Cell(48.75,8,$row['nombre'],1,0,'L');
            $pdf->Cell(36.562,8,$row['cta']. " " .$row['und'],1,0,'C');
            $pdf->Cell(24.375,8,$row['reorden'],1,0,'C');
            $pdf->Cell(36.562,8,$row['noultimopedido'],1,0,'C');
            $pdf->Cell(48.75,8,$newDate,1,0,'C');
            $pdf->Ln(8); 
        }
    }




    $numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reportepr");
    $nr = mysqli_fetch_array($numeroR);
    $najuste = $nr[0] + 1;

    $nb_pages = $pdf->PageNo();
    $nombrearc = "reporte-de-producto-en-cta-de-reorden".$najuste.".pdf";
    $file1=$nombrearc;
    $pdf->Output("F",$file1);
//    print ("  >> File '$file1' generated:  " . "$nb_pages pages  -  " . filesize($file1) . " bytes\n");


// fin de creacion del pdf

//guardado del pdf en bd

$numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reportepr");
$nr = mysqli_fetch_array($numeroR);
$najuste = $nr[0] + 1;

$fecha=date("d-m-Y");
$nombrearc = "reporte-de-producto-en-cta-de-reorden".$najuste.".pdf";
$direccion= "C:/wamp/www/inventariogg/phpurl/reportesProductosenReorden/" .$nombrearc ;


 include('phpurl/bdacceso.php');
        $boolean = true;
        $busqueda="SELECT numerodeReporte FROM reportepr";
        $result=$conexion->query($busqueda);

        while($conjunto=$result->fetch_assoc()){
            if ($conjunto['numerodeReporte'] == $najuste){
                echo "reporte existente";
                $boolean = false;
                break;
            };
        };
        if($boolean){
            $query="INSERT INTO reportepr(fecha, nombreArchivo, direccion, numerodeReporte) 
                    VALUES ('$fecha','$nombrearc','$direccion','$najuste')";
            $resultado=$conexion->query($query);
        }

sleep(0.5);
copy( $nombrearc, $direccion );
unlink($nombrearc);
echo $najuste;
?>