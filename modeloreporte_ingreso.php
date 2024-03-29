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
            $najuste = $_POST['numFactura'];
        
        
            $fecha=date("d-m-Y");
            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Estancia Los Potros',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(20,10,'',0,0,'C',0);
            $this->Cell(55,10,'Ingreso de inventario #',1,0,'C');
            $this->Cell(20,10,$najuste,1,0,'R');
            $this->Image('img/logos/favicon.png',5,8,20);
            $this->Ln(10);

            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Rif: J-40374164-6',0,0,'C',0);
            $this->Cell(20,8,'',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(25,10,'Fecha: ',1,0,'C'); 
            $this->Cell(50,10,$fecha,1,0,'C'); 
            $this->Ln(10);

            $this->Ln(10);
            $this->SetFont('Arial','B',23);
            $this->Cell(195,10,utf8_decode('Ingreso de inventario'),0,0,'C',0);
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

$pdf = new PDF('P', 'mm', 'A4');
$pdf->AliasNbPages();
$pdf->AddPage();


$fi = 0;        
$fs = 0;



    $pdf->SetFont('Times','B',10);
	$pdf->cell(32.5,8,'Codigo proveedor',1,0,'C',0);
	$pdf->cell(81.25,8,'Proveedor nombre',1,0,'C',0);
	$pdf->cell(81.25,8,'Rif del proveedor',1,0,'C',0);
	$pdf->Ln(8);
	$pdf->Cell(32.5,8,$_POST['codProveedor'],1,0,'C');
	$pdf->Cell(81.25,8,$_POST['Proveedor'],1,0,'C');
	$pdf->Cell(81.25,8,$_POST['rif'],1,0,'C');
	$pdf->Ln(10);
		
    $pdf->Cell(32.5,8,'Codigo',1,0,'C',0);
    $pdf->Cell(32.5,8,'Producto',1,0,'C');
    $pdf->Cell(32.5,8,'Cantidad',1,0,'C');
    $pdf->Cell(24.375,8,'Precio',1,0,'C');
    $pdf->Cell(24.375,8,'IVA',1,0,'C');
    $pdf->Cell(24.375,8,'Deposito',1,0,'C');
    $pdf->Cell(24.375,8,'Ubicacion',1,0,'C');
    $pdf->Ln(8);


    $filas = $_POST['numero'];
    for ($x = 1 ; $x <= $filas ; $x++){
        $id = $_POST['id' .$x];
        $producto = $_POST['producto' .$x];
        $cantidad = $_POST['cantidad' .$x];
        $unidad = $_POST['unidad' .$x];
        $costo = $_POST['preciou' .$x];
        $IVA = $_POST['iva' .$x];
        $deposito = $_POST['deposito' .$x];
        $ubicacion = $_POST['ubicacion' .$x];
        

        $pdf->Cell(32.5,8,$id,1,0,'C',0);
        $pdf->Cell(32.5,8,$producto,1,0,'C');
        $pdf->Cell(32.5,8,$cantidad.' '.$unidad,1,0,'C');
        $pdf->Cell(24.375,8,$costo.'$',1,0,'C');
        $pdf->Cell(24.375,8,$IVA.'%',1,0,'C');
        $pdf->Cell(24.375,8,$deposito,1,0,'C');
        $pdf->Cell(24.375,8,$ubicacion,1,0,'C');
        $pdf->Ln(8);
    }
	
	$pdf->Cell(132.5,8,'Subtotal costo productos',1,0,'L',0);
	$pdf->Cell(62.5,8,$_POST['subtotal'].'$'.' ',1,0,'R',0);
	$pdf->Ln(8);
    $pdf->Cell(132.5,8,'Subtotal del Iva',1,0,'L');
	$pdf->Cell(62.5,8,$_POST['subtotalIva'].'$'.' ',1,0,'R',0);
	$pdf->Ln(8);
    $pdf->Cell(132.5,8,'Total de factura',1,0,'L');
	$pdf->Cell(62.5,8,$_POST['total'].'$'.' ',1,0,'R',0);
	$pdf->Ln(10);

    $najuste = $_POST['numFactura'];
    $nb_pages = $pdf->PageNo();
    $nombrearc = "ingreso-comprobante".$najuste.".pdf";
    $file1=$nombrearc;
    $pdf->Output("F",$file1);
    print ("  >> File '$file1' generated:  " . "$nb_pages pages  -  " . filesize($file1) . " bytes\n");


// fin de creacion del pdf


//guardado del pdf en bd

$fecha=date("d-m-Y");
$nombrearc = "ingreso-comprobante".$najuste.".pdf";
$direccion= "./phpurl/comprobantesingresos/" .$nombrearc ;
$najuste = $_POST['numFactura'];

 include('phpurl/bdacceso.php');
        $boolean = true;
        $busqueda="SELECT numerodeAjuste FROM ingresoreporte";
        $result=$conexion->query($busqueda);

        while($conjunto=$result->fetch_assoc()){
            if ($conjunto['numerodeAjuste'] == $najuste){
                echo "comprobante existente";
                $boolean = false;
                break;
            };
        };
        if($boolean){
            $query="INSERT INTO ingresoreporte(id, fecha, nombreArchivo, direccion, numerodeAjuste) 
					VALUES ('$najuste', '$fecha','$nombrearc','$direccion','$najuste')";
            $resultado=$conexion->query($query);
        }

?>