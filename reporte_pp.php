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
            $fecha=date("d-m-Y");
            $this->SetFont('Arial','B',18);
            $this->Cell(100,10,'Estancia Los Potros',0,0,'C',0);
            $this->SetFont('Arial','B',14);
            $this->Cell(15,10,'',0,0,'C',0);
            $this->Cell(80,10,'Reporte producto',1,0,'C');
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
            $this->Cell(195,10,utf8_decode('Reporte de movimientos de producto'),0,0,'C',0);
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
    $ext= $_POST['lenght'];
	$extencion= strval($ext); 
    $nuevafecha = strtotime ( "-". $extencion ." day" , strtotime ( $fecha ) ) ;
    $margen_p= date ( "d-m-Y" , $nuevafecha );
	
    
	$CD = $_POST['codigo'];
	$NOM = mysqli_query($conexion, "SELECT nombre FROM `productos` WHERE codigo='$CD'");
	$rw = mysqli_fetch_array($NOM);

	$pdf->SetFont('Arial','B',16);
    $pdf->Cell(195,10,utf8_decode('Ingresos'),0,0,'L',0);

    $pdf->Ln(10);
    $pdf->SetFont('Times','B',9);
	$ante2= 0;

	$productosi = mysqli_query($conexion, "SELECT * FROM `movimientoskardexi` WHERE producto='$rw[nombre]'");
	while($rdi = mysqli_fetch_array($productosi)){
		if($rdi['numerodefactura'] != $ante2){
			
			$resultado1i = mysqli_query($conexion, "SELECT * FROM `kardexingresos` WHERE numerodefactura=".$rdi['numerodefactura']." ORDER BY fechadeingreso ASC");
			
			while($rowi = mysqli_fetch_array($resultado1i)){
				$prob = mysqli_query($conexion, "SELECT nombre FROM `proveedor` WHERE codigo=".$rowi['codproveedor']." ");
				$pro = mysqli_fetch_array($prob);
				
				$originalDatei = $rowi['fechadeingreso'];
				$newDatei = date("d-m-Y", strtotime($originalDatei));

				$margen_p_ci= strtotime ($margen_p);
				$newDate_ci= strtotime ($newDatei);

				if($newDate_ci < $margen_p_ci){
		//            echo $newDate." - ".$margen_p." - ";
		//            echo "---------------------";

				}
				else{
					$pdf->Cell(65,8,'Proveedor',1,0,'C',0);
					$pdf->Cell(65,8,'Numero de factura',1,0,'C',0);
					$pdf->Cell(65,8,'Fecha',1,0,'C',0);
					$pdf->Ln(8);

					$pdf->Cell(65,8,$pro['nombre'],1,0,'C',0);
					$pdf->Cell(65,8,$rowi['numerodefactura'],1,0,'C',0);
					$pdf->Cell(65,8,$rowi['fechadeingreso'],1,0,'C',0);
					$pdf->Ln(10);


					$pdf->Cell(97.5,8,'Producto',1,0,'C');
					$pdf->Cell(39,8,'Cantidad',1,0,'C');
					$pdf->Cell(19.5,8,'Deposito',1,0,'C');
					$pdf->Cell(19.5,8,'Precio',1,0,'C');
					$pdf->Cell(19.5,8,'IVA',1,0,'C');
					$pdf->Ln(8);

					$vueltai = mysqli_query($conexion, "SELECT * FROM `movimientoskardexi` WHERE producto='$rw[nombre]' AND numerodefactura=".$rdi['numerodefactura']."");
					while($rpi = mysqli_fetch_array($vueltai)){    
						$pdf->Cell(97.5,8,$rpi['producto'],1,0,'C');
						$pdf->Cell(39,8,$rpi['cantidad']. " " .$rdi['und'],1,0,'C');
						$pdf->Cell(19.5,8,$rpi['deposito'],1,0,'C');
						$pdf->Cell(19.5,8,$rpi['precio']."$",1,0,'C');
						$pdf->Cell(19.5,8,$rpi['iva']."%",1,0,'C');
						$pdf->Ln(8);
					}

					$pdf->Ln(10);
				};
			}
		}
		else {};
		$ante2 = (int)$rd['numerodefactura'];
	};

    
    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(195,10,utf8_decode('Salidas'),0,0,'L',0);

    $pdf->Ln(10);
    $pdf->SetFont('Times','B',9);
	$ante= 0;

	$productos = mysqli_query($conexion, "SELECT * FROM `movimientoskardexs` WHERE producto='$rw[nombre]'");
	while($rd = mysqli_fetch_array($productos)){
		
		if($rd['id'] != $ante){
			$resultado1 = mysqli_query($conexion, "SELECT * FROM `kardexsalidas` WHERE id=".$rd['id']." ORDER BY fechadesalida ASC");
			while($row = mysqli_fetch_array($resultado1)){
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
					$pdf->Cell(73.125,8,'Razon',1,0,'C',0);
					$pdf->Ln(8);

					$pdf->Cell(48.75,8,$row['solicitante'],1,0,'C',0);
					$pdf->Cell(48.75,8,$row['id'],1,0,'C',0);
					$pdf->Cell(24.375,8,$row['fechadesalida'],1,0,'C',0);
					$pdf->Cell(73.125,8,$row['razon'],1,0,'C',0);
					$pdf->Ln(10);


					$pdf->Cell(48.75,8,'Producto',1,0,'C');
					$pdf->Cell(48.75,8,'Cantidad',1,0,'C');
					$pdf->Cell(24.375,8,'Deposito antiguo',1,0,'C');
					$pdf->Cell(73.125,8,'Motivo',1,0,'C');
					$pdf->Ln(8);

					$vuelta = mysqli_query($conexion, "SELECT * FROM `movimientoskardexs` WHERE producto='$rw[nombre]' AND id=".$rd['id']."");
					while($rp = mysqli_fetch_array($vuelta)){    
						$pdf->Cell(48.75,8,$rp['producto'],1,0,'C');
						$pdf->Cell(48.75,8,$rp['cantidad']. " " .$rd['und'],1,0,'C');
						$pdf->Cell(24.375,8,$rp['antiguodeposito'],1,0,'C');
						$pdf->Cell(73.125,8,$rp['motivo'],1,0,'C');
						$pdf->Ln(8);
					}
					$pdf->Ln(10);	
				}	
			}
		}
		else {};
		$ante = (int)$rd['id'];
	};


    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(195,10,utf8_decode('Traslados'),0,0,'L',0);

    $pdf->Ln(10);
    $pdf->SetFont('Times','B',9);
	$ante3= 0;

	$productost= mysqli_query($conexion, "SELECT * FROM `movimientoskardext` WHERE producto='$rw[nombre]'");
	while($rdt = mysqli_fetch_array($productost)){
		if($rdt['id'] != $ante3){
			$resultado1t = mysqli_query($conexion, "SELECT * FROM `kardextraslados` WHERE id=".$rdt['id']." ORDER BY fechadetraslado ASC");
			while($rowt = mysqli_fetch_array($resultado1t)){
				$originalDatet = $rowt['fechadetraslado'];
				$newDatet = date("d-m-Y", strtotime($originalDatet));

				$margen_p_ct= strtotime ($margen_p);
				$newDate_ct= strtotime ($newDatet);

				if($newDate_ct < $margen_p_ct){
		//            echo $newDate." - ".$margen_p." - ";
		//            echo "---------------------";

				}
				else{
					$pdf->Cell(48.75,8,'Solicitante',1,0,'C',0);
					$pdf->Cell(48.75,8,'Numero de referencia',1,0,'C',0);
					$pdf->Cell(24.375,8,'Fecha',1,0,'C',0);
					$pdf->Cell(73.125,8,'Razon',1,0,'C',0);
					$pdf->Ln(8);

					$pdf->Cell(48.75,8,$rowt['solicitante'],1,0,'C',0);
					$pdf->Cell(48.75,8,$rowt['id'],1,0,'C',0);
					$pdf->Cell(24.375,8,$rowt['fechadetraslado'],1,0,'C',0);
					$pdf->Cell(73.125,8,$rowt['razon'],1,0,'C',0);
					$pdf->Ln(10);


					$pdf->Cell(97.5,8,'Producto',1,0,'C');
					$pdf->Cell(48.75,8,'Cantidad',1,0,'C');
					$pdf->Cell(24.375,8,'Deposito antiguo',1,0,'C');
					$pdf->Cell(24.375,8,'Deposito nuevo',1,0,'C');
					$pdf->Ln(8);

					$productos2 = mysqli_query($conexion, "SELECT * FROM `movimientoskardext` WHERE producto='$rw[nombre]' AND id='$rowt[id]'");
					while  ($filas = mysqli_fetch_array($productos2)){    

						$pdf->Cell(97.5,8,$filas['producto'],1,0,'C');
						$pdf->Cell(48.75,8,$filas['cantidad']. " " .$filas['und'],1,0,'C');
						$pdf->Cell(24.375,8,$filas['antiguodeposito'],1,0,'C');
						$pdf->Cell(24.375,8,$filas['nuevodeposito'],1,0,'C');
						$pdf->Ln(8);
					}

					$pdf->Ln(10);
				}	
			}
		}
		else {};
		$ante3 = (int)$rdt['id'];
	};


    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(195,10,utf8_decode('Auditorias'),0,0,'L',0);

    $pdf->Ln(10);
    $pdf->SetFont('Times','B',9);
	$ante4= 0;

	$productosa= mysqli_query($conexion, "SELECT * FROM `movimientoskardexauditoria` WHERE producto='$rw[nombre]'");
	while($rda = mysqli_fetch_array($productosa)){
		if($rda['numerodereferencia'] != $ante4){
			$resultado1a = mysqli_query($conexion, "SELECT * FROM `auditoria` WHERE numerodeAjuste=".$rda['numerodereferencia']." ORDER BY fecha ASC");
			while($rowa = mysqli_fetch_array($resultado1a)){
				$originalDatea = $rowa['fecha'];
				$newDatea = date("d-m-Y", strtotime($originalDatea));

				$margen_p_ca= strtotime ($margen_p);
				$newDate_ca= strtotime ($newDatea);

				if($newDate_ca < $margen_p_ca){
		//            echo $newDate." - ".$margen_p." - ";
		//            echo "---------------------";

				}
				else{
					$pdf->Cell(65,8,'Usuario',1,0,'C',0);
					$pdf->Cell(65,8,'Numero de auditoria',1,0,'C',0);
					$pdf->Cell(65,8,'Fecha',1,0,'C',0);
					$pdf->Ln(8);

					$pdf->Cell(65,8,$rowa['usuario'],1,0,'C',0);
					$pdf->Cell(65,8,$rowa['numerodeAjuste'],1,0,'C',0);
					$pdf->Cell(65,8,$rowa['fecha'],1,0,'C',0);
					$pdf->Ln(10);

					$pdf->Cell(32.5,8,'Producto',1,0,'C');
					$pdf->Cell(32.5,8,'Deposito',1,0,'C');
					$pdf->Cell(32.5,8,'Costo original',1,0,'C');
					$pdf->Cell(32.5,8,'Costo nuevo',1,0,'C');
					$pdf->Cell(32.5,8,'Cantidad original',1,0,'C');
					$pdf->Cell(32.5,8,'Cantidad nueva',1,0,'C');
					$pdf->Ln(8);

					$productosa = mysqli_query($conexion, "SELECT * FROM `movimientoskardexauditoria` WHERE producto='$rw[nombre]' AND numerodereferencia='$rowa[numerodeAjuste]'");
					while($filasa = mysqli_fetch_array($productosa)){    

					$pdf->Cell(32.5,8,$filasa['producto'],1,0,'C');
					$pdf->Cell(32.5,8,$filasa['deposito'],1,0,'C');
					$pdf->Cell(32.5,8,$filasa['precio']. "$",1,0,'C');
					$pdf->Cell(32.5,8,$filasa['nuevoprecio']. "$",1,0,'C');
					$pdf->Cell(32.5,8,$filasa['cantidad']. " " . $filasa['und'],1,0,'C');
					$pdf->Cell(32.5,8,$filasa['nuevacantidad']. " " . $filasa['und'],1,0,'C');
					$pdf->Ln(8);

					}

					$pdf->Ln(10);
				}	
			}
		}
		else {};
		$ante4 = (int)$rda['numerodereferencia'];
	};
        


    $nb_pages = $pdf->PageNo();
    $nombrearc = "reportep.pdf";
    $file1=$nombrearc;
    $pdf->Output("F",$file1);
    print ("  >> File '$file1' generated:  " . "$nb_pages pages  -  " . filesize($file1) . " bytes\n");


// fin de creacion del pdf

$nombrearc = "reportep.pdf";
$direccion= "./phpurl/" .$nombrearc ;


sleep(0.5);
copy( $nombrearc, $direccion );
unlink($nombrearc);
?>