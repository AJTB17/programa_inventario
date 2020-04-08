<?php
//header('Content-Type: application/json');
define('FPDF_FONTPATH','phpmailer/font');
require('phpmailer/fpdf.php');

 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';




class PDF extends FPDF{
// Cabecera de página
    function Header(){
            $najuste = $_POST['numRef'];
            $accion_base= $_POST['accion'];
            $accion="";
            
            if($accion_base === "egreso"){
                $accion= "Egreso";
            }
            else if($accion_base === "traslado"){
                $accion= "Traslado";
            }
        
        
            $fecha=date("d-m-Y");
            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Estancia Los Potros',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(15,10,'',0,0,'C',0);
            $this->Cell(60,10, $accion.' de inventario #',1,0,'C');
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
            $this->Cell(195,10,utf8_decode( $accion.' de inventario'),0,0,'C',0);
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


$fi = 0;        
$fs = 0;

$solicitante= $_POST['solicitante'];
$razon= $_POST['razon']; 

    $pdf->Ln(10);
    $pdf->SetFont('Times','B',10);
    //preguntar 
    $pdf->SetFillColor(0, 0, 255);
    //
    $pdf->cell(32.5,8,'Solicitante',1,0,'C',0);
    $pdf->cell(162.5,8,'Razon',1,0,'C',0);
    $pdf->Ln(8);
    $pdf->cell(32.5,8,$solicitante,1,0,'L',0);
    $pdf->cell(162.5,8,$razon,1,0,'L',0);
    $pdf->Ln(10);

    $pdf->Cell(39,8,'Codigo',1,0,'C',0);
    $pdf->Cell(39,8,'Producto',1,0,'C');
    $pdf->Cell(39,8,'Cantidad',1,0,'C');
    $pdf->Cell(39,8,'Deposito',1,0,'C');
    $pdf->Cell(39,8,'Destino',1,0,'C');
    $pdf->Ln(8);


    $filas = $_POST['numero'];
    for ($x = 1 ; $x <= $filas ; $x++){
        $id = $_POST['id' .$x];
        $producto = $_POST['producto' .$x];
        $cantidad = $_POST['cantidad' .$x];
        $deposito = $_POST['deposito' .$x];
        $ubicacion = $_POST['ubicacion' .$x];      

        $pdf->Cell(39,8,$id,1,0,'L',0);
        $pdf->Cell(39,8,$producto,1,0,'L');
        $pdf->Cell(39,8,$cantidad,1,0,'l');
        $pdf->Cell(39,8,$deposito,1,0,'l');
        $pdf->Cell(39,8,$ubicacion,1,0,'l');
        $pdf->Ln(8);
    }


    $najuste = $_POST['numRef'];
    $accion= $_POST['accion'];
    $nb_pages = $pdf->PageNo();
    $nombrearc = $accion."-reporte".$najuste.".pdf";
    $file1=$nombrearc;
    $pdf->Output("F",$file1);
    print ("  >> File '$file1' generated:  " . "$nb_pages pages  -  " . filesize($file1) . " bytes\n");


// fin de creacion del pdf


//guardado del pdf en bd

$najuste = $_POST['numRef'];
$accion= $_POST['accion'];
$fecha=date("d-m-Y");
$nombrearc = $accion."-reporte".$najuste.".pdf";
$direccion= "C:/wamp/www/inventariogg/phpurl/reportes".$accion."/" .$nombrearc ;


 include('phpurl/bdacceso.php');
        $boolean = true;
        $busqueda="SELECT numerodeAjuste FROM " .$accion. "reporte";
        $result=$conexion->query($busqueda);

        while($conjunto=$result->fetch_assoc()){
            if ($conjunto['numerodeAjuste'] == $najuste){
                echo "reporte existente";
                $boolean = false;
                break;
            };
        };
        if($boolean){
            $query="INSERT INTO ".$accion."reporte(fecha, nombreArchivo, direccion, numerodeAjuste) 
                    VALUES ('$fecha','$nombrearc','$direccion','$najuste')";
            $resultado=$conexion->query($query);
        }

?>