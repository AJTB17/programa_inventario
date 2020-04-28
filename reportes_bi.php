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
            $numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reporteidm");
            $nr = mysqli_fetch_array($numeroR);
            $najuste = $nr[0] + 1;

        
            $fecha=date("d-m-Y");
            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Estancia Los Potros',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(15,10,'',0,0,'C',0);
            $this->Cell(60,10,'Ingresos reporte#',1,0,'C');
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
            $this->Cell(195,10,utf8_decode('Reporte de ingreso del mes inventario'),0,0,'C',0);
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


    $fecha = date("d-m-Y");
	$ext= $_POST['lenght'];
	$extencion= strval($ext); 
    $nuevafecha = strtotime ( "-". $extencion ." day" , strtotime ( $fecha ) ) ;
    $margen_p= date ( "d-m-Y" , $nuevafecha );
    
     
    $resultado1 = mysqli_query($conexion, "SELECT * FROM `kardexingresos` ORDER BY fechadeingreso ASC");
    while ($row = mysqli_fetch_array($resultado1)){
        $originalDate = $row['fechadeingreso'];
        $newDate = date("d-m-Y", strtotime($originalDate));
        
        $margen_p_c= strtotime ($margen_p);
        $newDate_c= strtotime ($newDate);
        
        if($newDate_c < $margen_p_c){
//            echo $newDate." - ".$margen_p." - ";
//            echo "---------------------";

        }
        else{
            $busqueda = mysqli_query($conexion, "SELECT nombre FROM `proveedor` WHERE codigo='$row[codproveedor]'");
            $proveedor = mysqli_fetch_array($busqueda);

            $pdf->Cell(39,8,'Proveedor',1,0,'C',0);
            $pdf->Cell(39,8,'Numero de factura',1,0,'C',0);
            $pdf->Cell(39,8,'Fecha',1,0,'C',0);
            $pdf->Cell(39,8,'total sin iva',1,0,'C',0);
            $pdf->Cell(39,8,'total con iva',1,0,'C',0);
            $pdf->Ln(8);

            $pdf->Cell(39,8,$proveedor['nombre'],1,0,'C',0);
            $pdf->Cell(39,8,$row['numerodefactura'],1,0,'C',0);
            $pdf->Cell(39,8,$row['fechadeingreso'],1,0,'C',0);
            $pdf->Cell(39,8,$row['subtotal'].'$',1,0,'C',0);
            $pdf->Cell(39,8,$row['total'].'$',1,0,'C',0);
            $pdf->Ln(10);


            $pdf->Cell(48.75,8,'Producto',1,0,'C');
            $pdf->Cell(48.75,8,'Deposito',1,0,'C');
            $pdf->Cell(48.75,8,'Cantidad',1,0,'C');
            $pdf->Cell(48.75,8,'Costo',1,0,'C');
            $pdf->Ln(8);

            $productos = mysqli_query($conexion, "SELECT * FROM `movimientoskardexi` WHERE numerodefactura='$row[numerodefactura]'");
            while  ($filas = mysqli_fetch_array($productos)){    

                $pdf->Cell(48.75,8,$filas['producto'],1,0,'C');
                $pdf->Cell(48.75,8,$filas['deposito'],1,0,'C');
                $pdf->Cell(48.75,8,$filas['cantidad']. " " . $filas['und'],1,0,'C');
                $pdf->Cell(48.75,8,$filas['precio'].'$',1,0,'C');
                $pdf->Ln(8);
            }

            $pdf->Ln(15);
        }
    }





    $numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reporteidm");
    $nr = mysqli_fetch_array($numeroR);
    $najuste = $nr[0] + 1;

    $nb_pages = $pdf->PageNo();
    $nombrearc = "reporte-de-entras-al-inventario".$najuste.".pdf";
    $file1=$nombrearc;
    $pdf->Output("F",$file1);
//    print ("  >> File '$file1' generated:  " . "$nb_pages pages  -  " . filesize($file1) . " bytes\n");


// fin de creacion del pdf

//guardado del pdf en bd

$numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reporteidm");
$nr = mysqli_fetch_array($numeroR);
$najuste = $nr[0] + 1;

$fecha=date("d-m-Y");
$nombrearc = "reporte-de-entras-al-inventario".$najuste.".pdf";
$direccion= "./phpurl/reportesEntradasInventario/" .$nombrearc ;


 include('phpurl/bdacceso.php');
        $boolean = true;
        $busqueda="SELECT numerodeReporte FROM reporteidm";
        $result=$conexion->query($busqueda);

        while($conjunto=$result->fetch_assoc()){
            if ($conjunto['numerodeReporte'] == $najuste){
                echo "reporte existente";
                $boolean = false;
                break;
            };
        };
        if($boolean){
            $query="INSERT INTO reporteidm(fecha, nombreArchivo, direccion, numerodeReporte) 
                    VALUES ('$fecha','$nombrearc','$direccion','$najuste')";
            $resultado=$conexion->query($query);
        }

sleep(0.5);
copy( $nombrearc, $direccion );
unlink($nombrearc);
echo $najuste;
?>