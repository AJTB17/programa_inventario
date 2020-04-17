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
            $numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reporteedm");
            $nr = mysqli_fetch_array($numeroR);
            $najuste = $nr[0] + 1;

        
            $fecha=date("d-m-Y");
            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Estancia Los Potros',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(15,10,'',0,0,'C',0);
            $this->Cell(60,10,'Egresos reporte#',1,0,'C');
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
            $this->Cell(195,10,utf8_decode('Reporte de egresos del mes de inventario'),0,0,'C',0);
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


    $fecha = date("d-m-Y");
    $nuevafecha = strtotime ( "-30 day" , strtotime ( $fecha ) ) ;
    $margen_p= date ( "d-m-Y" , $nuevafecha );
    
    
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(195,10,utf8_decode('Salidas'),0,0,'L',0);

    $pdf->Ln(10);
    $pdf->SetFont('Times','B',9);

    $resultado1 = mysqli_query($conexion, "SELECT * FROM `kardexsalidas` ORDER BY fechadesalida ASC");
    while ($row = mysqli_fetch_array($resultado1)){
        $originalDate = $row['fechadesalida'];
        $newDate = date("d-m-Y", strtotime($originalDate));
        
        $margen_p_c= strtotime ($margen_p);
        $newDate_c= strtotime ($newDate);
        
        if($newDate_c < $margen_p_c){
//            echo $newDate." - ".$margen_p." - ";
//            echo "---------------------";

        }
        else{
            $pdf->Cell(48.75,8,'Solicitante',1,0,'C',0);
            $pdf->Cell(48.75,8,'Numero de referencia',1,0,'C',0);
            $pdf->Cell(24.375,8,'Fecha',1,0,'C',0);
            $pdf->Cell(73.125,8,'razon',1,0,'C',0);
            $pdf->Ln(8);

            $pdf->Cell(48.75,8,$row['solicitante'],1,0,'C',0);
            $pdf->Cell(48.75,8,$row['id'],1,0,'C',0);
            $pdf->Cell(24.375,8,$row['fechadesalida'],1,0,'C',0);
            $pdf->Cell(73.125,8,$row['razon'],1,0,'C',0);
            $pdf->Ln(10);


            $pdf->Cell(48.75,8,'Producto',1,0,'C');
            $pdf->Cell(24.375,8,'Cantidad',1,0,'C');
            $pdf->Cell(24.375,8,'Deposito antiguo',1,0,'C');
            $pdf->Cell(97.5,8,'Motivo',1,0,'C');
            $pdf->Ln(8);

            $productos = mysqli_query($conexion, "SELECT * FROM `movimientoskardexs` WHERE id='$row[id]'");
            while  ($filas = mysqli_fetch_array($productos)){    

                $pdf->Cell(48.75,8,$filas['producto'],1,0,'L');
                $pdf->Cell(24.375,8,$filas['cantidad'],1,0,'C');
                $pdf->Cell(24.375,8,$filas['antiguodeposito'],1,0,'C');
                $pdf->Cell(97.5,8,$filas['motivo'],1,0,'C');
                $pdf->Ln(8);
            }

            $pdf->Ln(10);
        }
    }


    $pdf->Ln(10);
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(195,10,utf8_decode('Traslados'),0,0,'L',0);

    $pdf->Ln(10);
    $pdf->SetFont('Times','B',9);


    $resultado2 = mysqli_query($conexion, "SELECT * FROM `kardextraslados` ORDER BY fechadetraslado ASC");
    while ($row2 = mysqli_fetch_array($resultado2)){
        $originalDate2 = $row2['fechadetraslado'];
        $newDate2 = date("d-m-Y", strtotime($originalDate2));
        
        $margen_p_c= strtotime ($margen_p);
        $newDate_c2= strtotime ($newDate2);
        
        if( $newDate_c2 < $margen_p_c){
//            echo $newDate." - ".$margen_p." - ";
//            echo "---------------------";

        }
        else{
            $pdf->Cell(48.75,8,'Solicitante',1,0,'C',0);
            $pdf->Cell(48.75,8,'Numero de referencia',1,0,'C',0);
            $pdf->Cell(24.375,8,'Fecha',1,0,'C',0);
            $pdf->Cell(73.125,8,'razon',1,0,'C',0);
            $pdf->Ln(8);

            $pdf->Cell(48.75,8,$row2['solicitante'],1,0,'C',0);
            $pdf->Cell(48.75,8,$row2['id'],1,0,'C',0);
            $pdf->Cell(24.375,8,$row2['fechadetraslado'],1,0,'C',0);
            $pdf->Cell(73.125,8,$row2['razon'],1,0,'C',0);
            $pdf->Ln(10);


            $pdf->Cell(97.5,8,'Producto',1,0,'C');
            $pdf->Cell(48.75,8,'Cantidad',1,0,'C');
            $pdf->Cell(24.375,8,'Deposito antiguo',1,0,'C');
            $pdf->Cell(24.375,8,'Deposito nuevo',1,0,'C');
            $pdf->Ln(8);

            $productos2 = mysqli_query($conexion, "SELECT * FROM `movimientoskardext` WHERE id='$row2[id]'");
            while  ($filas = mysqli_fetch_array($productos2)){    

                $pdf->Cell(97.5,8,$filas['producto'],1,0,'L');
                $pdf->Cell(48.75,8,$filas['cantidad'],1,0,'C');
                $pdf->Cell(24.375,8,$filas['antiguodeposito'],1,0,'C');
                $pdf->Cell(24.375,8,$filas['nuevodeposito'],1,0,'C');
                $pdf->Ln(8);
            }

            $pdf->Ln(10);
        }
    }



    $numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reporteedm");
    $nr = mysqli_fetch_array($numeroR);
    $najuste = $nr[0] + 1;

    $nb_pages = $pdf->PageNo();
    $nombrearc = "reporte-de-egresos-del-inventario".$najuste.".pdf";
    $file1=$nombrearc;
    $pdf->Output("F",$file1);
//    print ("  >> File '$file1' generated:  " . "$nb_pages pages  -  " . filesize($file1) . " bytes\n");


// fin de creacion del pdf

//guardado del pdf en bd

$numeroR = mysqli_query($conexion, "SELECT MAX(numerodeReporte) FROM reporteedm");
$nr = mysqli_fetch_array($numeroR);
$najuste = $nr[0] + 1;

$fecha=date("d-m-Y");
$nombrearc = "reporte-de-egresos-del-inventario".$najuste.".pdf";
$direccion= "./phpurl/reportesEgresosInventario/" .$nombrearc ;


 include('phpurl/bdacceso.php');
        $boolean = true;
        $busqueda="SELECT numerodeReporte FROM reporteedm";
        $result=$conexion->query($busqueda);

        while($conjunto=$result->fetch_assoc()){
            if ($conjunto['numerodeReporte'] == $najuste){
                echo "reporte existente";
                $boolean = false;
                break;
            };
        };
        if($boolean){
            $query="INSERT INTO reporteedm(fecha, nombreArchivo, direccion, numerodeReporte) 
                    VALUES ('$fecha','$nombrearc','$direccion','$najuste')";
            $resultado=$conexion->query($query);
        }

sleep(0.5);
copy( $nombrearc, $direccion );
unlink($nombrearc);
echo $najuste;
?>