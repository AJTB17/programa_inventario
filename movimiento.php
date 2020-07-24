<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset='utf-8' />
<!----- Metas end --------------> 
        
        <link href="css/nav.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/icon.css" rel="stylesheet">
        <link href="css/proveedorescs.css" rel="stylesheet">
        <link href="css/BF.css" rel="stylesheet">
        <link href="css/barralateral.css" rel="stylesheet">
<!----- Estilos de css end -----> 
        
        <script src='js2/jquery-3.4.1.min.js'></script>
<!----- Script de librerias end -->
       <title>movimientos</title>
    </head>

    <body>
        <header>
            <div class="contenedor index">
                <div class="contenedor--flex">
                        <div class="clm-33">
                            <img class="img" src="img/logos/logoIST.jpg">
                        </div>
                        <div align="center" class="clm-33 mid">
                            <h1 class="logo">Sistema de control de inventario<br></h1>
                        </div>
                        <div class="clm-33">
							<img class="img2" src="img/logos/logo0.PNG">
                        </div>
                </div>
            </div>
             <!-- Cabecera End -->
                <div  class="gg">
                    <nav>
                        <a href="proveedoreshtml.php"  id="btna">Provedores</a>
                        <a href="productoshtml.php" id="btnc">Productos</a>
                        <a href="tablaDeIngresos.php"  id="btnb">Ingresos</a>
                        <a href="tablaDeEgresos.php" id="btnd">Egresos</a>
                        <a href="movimiento.php" class="active" id="btne">Movimientos</a> 
                    </nav>
                </div>    
        </header>
        <main>
            <div id="ventanaDeDepositos" class="GrayBackground hidden">
                <div id="muestraDeDepositos">
                    <h1 id="depositosTitle" class="titlemodal">Muestra</h1>
                    <table id="depositos">
                        <thead id="tableHeader">
                            <th>Producto</th><th>Cantidad</th><th id="tableHeaderVariable2">Antiguo Depósito</th>
                            <th id="tableHeaderVariable">Nuevo Depósito</th>
                        </thead>
                        <tbody class="tableBody" id="tb"></tbody>
                    </table>
                    <button id="descargar" class="descargar">Descargar comprobante</button>
                    <button id="depositCancelButton" class="productCancelButton 
                    formularioButton">Cerrar</button>
                </div>
            </div>
            <div id="ventanaDeDepositos_auditoria" class="GrayBackground hidden">
                <div id="muestraDeDepositos_auditoria">
                    <h1 id="depositosTitle" class="titlemodal">Auditoria</h1>
                    <table id="depositos_auditoria">
                        <thead id="tableHeader">
                            <th>Producto</th><th>Deposito</th><th>Cantidad pasada</th><th>Cantidad actual</th><th>Precio pasado</th><th>Precio actual</th>
                        </thead>
                        <tbody class="tableBody" id="tb2"></tbody>
                    </table>
                    <button id="descargar_auditoria" class="descargar">Descargar comprobante</button>
                    <button id="depositCancelButton_auditoria" class="productCancelButton 
                    formularioButton">Cerrar</button>
                </div>
            </div>
            <div id="modal_admin" class="GrayBackground-2 hidden">
                <div class="cuadro-1">
                    <div class="contF">
                        <h2>funciones administrativas</h2><div class="cerrar" id="cerrarAdmin">X</div>
                    </div>
                    <ul>
                        <li id="backup" class="ind1"><p>Respaldar base de datos</p></li>
                        <li>
                            <label for="arc" id="file_label">Cargar archivo</label>
                            <label class="mid" id="restaura">Restaurar base de datos</label>
                            <input type="file" id="arc" style="display: none">
                        </li>
                        <li id="co" class="ind2"><p>Cierre mensual</p></li>
                    </ul>
                </div>
            </div>
            <div class="contenedor--flex">
                <div id="menuvertical" class="cuerpa">
                    <div class="v1">
                        <div class="u1cont"><img class="u1" src="img/logos/bu.jpg"></div>
                        <div class="ut1">
                            <h3>Hola <span style="display: none" id="txtusuario"></span><span id="txtusuarionombre">usuario</span></h3>
                        </div>
                    </div>
                    <div class="v3">
                        <label for="maa">Reportes</label>
                    </div> 
                    <input class="checkeo" type="checkbox" id="maa">
                    <ul class="menuext">
                        <li>
                           <div class="v4">
                                <a id="Reporte_1"><hr><span>Ingresos del mes</span></a>
                            </div>
                        </li>
                        <li>
                           <div class="v4">
                                <a id="Reporte_2"><hr><span>Egresos del mes</span></a>
                            </div>
                        </li>
                        <li>
                           <div class="v4">
                                <a id="Reporte_3"><hr><span>Productos  en cta de reorden</span></a>
                            </div>
                        </li>
                        <li>
                           <div class="v4">
                                <a id="Reporte_4"><hr><span>Producto especifico</span></a>
                            </div>
                        </li>
                    </ul>
                    <div class="v3">
                        <a href="ingreso.php">Entradas</a>
                    </div>
                    <div class="v3">
                        <a href="traslados.php">Salidas o traslados</a>
                    </div>
                    <div class="v3">
                        <a href="auditoria.php">Auditoria de inventario</a>
                    </div>
                    <div class="v3">
                        <a id="adminWindow">funciones de admin</a>
                    </div>                       
                    <div class="v3" style="background: #a11">
                        <a id="cerrarS">Cerrar sesión</a>
                    </div>
                </div> 
                <div style="margin-top: 130px">
                    <div class="ban"><h2>Control administrativo de los movimientos</h2></div>
                    <div class="contenedor--flex">
                        <div class="back2">
                            <h2>Busqueda filtrada</h2>
                            <div class="contenedor--flex">
                                <div class="Cinput">
                                    <label for="nameFilter">Nombre:</label><br>
                                    <input type="text" placeholder="Producto nombre" id="name" class="filterField">
                                </div>
                                <div class="Cinput">
                                    <label for="movementNumberFilter">Número de Movimiento</label><br>
                                    <input type="number" placeholder="Número Movimiento" id="movementNumber" class="filterField">
                                </div>
                                <div class="Cinput">
                                    <label for="solicitanteFilter">Solicitante:</label><br>
                                    <input type="text" placeholder="Solicitante" id="solicitante" class="filterField">
                                </div>
                                <div class="Cinput">
                                    <label for="fechaFilter">Fecha:</label><br>
                                    <input type="date" placeholder="fecha de entrada" id="fecha" class="filterField">
                                </div>
                                <div class="Cinput">
                                    <label for="departmentFilter">Departamento:</label><br>
                                    <input type="text" placeholder="Departamento" id="department" class="filterField">
                                </div>
                                <div class="Cinput">
                                    <label for="orderFilter">Ordenar por:</label><br>
                                    <select name="orden" id="order" class="filterField">
                                        <option>Más recientes</option>
                                        <option>Más antiguos</option>
                                    </select>
                                </div>
                                <div class="Cinput">
                                    <label for="depositFilter">Deposito:</label><br>
                                    <input type="number" placeholder="numero de deposito" id="deposit" class="filterField">
                                </div>
                                <div class="Cinput">
                                    <label for="movementFilter">Movimiento:</label><br>
                                    <select name="movement" id="movement" class="filterField">
                                        <option>Todos</option>
                                        <option>Salida</option>
                                        <option>Ingreso</option>
                                        <option>Traslado</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contenedor--t">
                        <table id="movementsTable">
                            <thead>
                               <tr>
                                    <th>Número de Movimiento</th>
                                    <th>Usuario</th>
                                    <th>Solicitante / origen</th>
                                    <th>Fecha de Acción</th>
                                    <th>Movimiento</th>                                   
                               </tr>
                            </thead>
                            <tbody id="tableBody">
                                <?php
                                include('phpurl/bdacceso.php');
								
                                $query="SELECT id,usuario,solicitante,fechadesalida,movimiento 
										FROM `kardexsalidas` 
										UNION ALL SELECT id,usuario,solicitante,fechadetraslado,movimiento 
										FROM `kardextraslados` 
										UNION ALL SELECT numerodefactura,usuario,codproveedor,fechadeingreso,movimiento 
										FROM `kardexingresos`
										UNION ALL SELECT numerodeAjuste,usercode,usuario,fecha,nombreMovimiento
										FROM `auditoria` 
										UNION ALL SELECT id,usuario,nombre,fecha,POoPR
										FROM `pypeliminados` 
										ORDER BY fechadesalida DESC";
								
                                $resultado=$conexion->query($query);
                                while($row=$resultado->fetch_assoc()){
									$link = "";
                                    $cadena = "";
                                    $calculos = "";
									$nombrep  = "";

                                    if ($row['movimiento'] === "Traslado") {
										$burqueda_link="SELECT direccion FROM `trasladoreporte` WHERE id=".$row['id']."";
										$result=$conexion->query($burqueda_link);
										
										
                                        $query2 = "SELECT * FROM movimientoskardext WHERE id=".$row['id']."";
                                        $resultado2=$conexion->query($query2);
                                        while ($row2 = $resultado2->fetch_assoc()) {
											$row3 = $result->fetch_assoc();
											$link = $row3['direccion'];
												
												
                                            $cadena = $cadena.$row2['producto']."||".
                                                      $row2['cantidad']."||".
                                                      $row2['antiguodeposito']."||".
                                                      $row2['nuevodeposito']."||".
													  $row2['und']."--";

                                        }
                                    } 
									else if ($row['movimiento'] === "Salida"){
										$burqueda_link="SELECT direccion FROM `egresoreporte` WHERE id=".$row['id']."";
										$result=$conexion->query($burqueda_link);
										
										
                                        $query2 = "SELECT * FROM movimientoskardexs WHERE id=".$row['id']."";
                                        $resultado2=$conexion->query($query2);
                                        while ($row2 = $resultado2->fetch_assoc()) {
											$row3 = $result->fetch_assoc();
											$link = $row3['direccion'];

											
                                            $cadena = $cadena.$row2['producto']."||".
                                                      $row2['cantidad']."||".
                                                      $row2['antiguodeposito']."||".
                                                      $row2['motivo']."||".
													  $row2['und']."--";

                                        }
                                    }
									else if ($row['movimiento'] === "Ingreso") {
										$burqueda_link="SELECT direccion FROM `ingresoreporte` WHERE id=".$row['id']."";
										$result=$conexion->query($burqueda_link);
										
                                        $datosDeMovimiento=mysqli_fetch_array(mysqli_query($conexion,
                                        "SELECT subtotal,iva,total FROM kardexingresos WHERE numerodefactura=".$row['id']." AND codproveedor=".$row['solicitante']));
                                        $calculos = $calculos.$datosDeMovimiento['subtotal']."!!".
                                                    $datosDeMovimiento['iva']."!!".
                                                    $datosDeMovimiento['total'];

                                        $query2 = "SELECT * FROM movimientoskardexi WHERE numerodefactura=".$row['id']." AND codigoproveedor=".$row['solicitante'];
                                        $resultado2=$conexion->query($query2);
										
										
                                        while ($row2 = $resultado2->fetch_assoc()) {
											
											$row3 = $result->fetch_assoc();
											$link = $row3['direccion'];

                                            $cadena = $cadena.$row2['producto']."||".
                                                      $row2['cantidad']."||".
                                                      $row2['precio']."||".
                                                      $row2['deposito']."||".
													  $row2['und']."--";

                                        };
                                    } 
									
									else if ($row['movimiento'] === "Auditoria") {
										
										$burqueda_link="SELECT `direccion` FROM `auditoria` WHERE numerodeAjuste =".$row['id']."";
										$result=$conexion->query($burqueda_link);
										
										$row3 = $result->fetch_assoc();
										$link = $row3['direccion'];
										
                                        $query2 = "SELECT * FROM movimientoskardexauditoria WHERE numerodereferencia=".$row['id']."";
                                        $resultado2=$conexion->query($query2);
                                        while ($row2 = $resultado2->fetch_assoc()) {
											
                                            $cadena = $cadena.$row2['producto']."||".
													  $row2['deposito']."||".
                                                      $row2['cantidad']."||".
                                                      $row2['nuevacantidad']."||".
                                                      $row2['precio']."||".
                                                      $row2['nuevoprecio']."||".
                                                      $row2['und']."||".
													  $row2['undN']."--";

                                        }
                                    }
									if ($row['movimiento'] === "Traslado" || $row['movimiento'] === "Salida" || $row['movimiento'] === "Auditoria"){
										if($row['id'] !== "0" ){
								?>
											<tr onclick="desplegarInformacion('<?php echo $cadena ?>', '<?php echo $row["movimiento"]; ?>','<?php echo $calculos; ?>','<?php echo $link; ?>')">
												<td><?php echo $row['id']; ?></td>
												<td><?php echo $row['usuario']; ?></td>
												<td><?php echo $row["solicitante"]; ?></td>
												<td><?php echo $row["fechadesalida"]; ?></td>
												<td><?php echo $row["movimiento"]; ?></td>
											</tr>
								<?php
										}
									}
									else if ($row['movimiento'] === "Ingreso"){
										$pro="SELECT `nombre` FROM `proveedor` WHERE codigo=".$row['solicitante']."";
										$r=$conexion->query($pro);
										
										$nombres = $r->fetch_assoc();
										$nombrep = $nombres['nombre'];
								?>
										<tr onclick="desplegarInformacion('<?php echo $cadena ?>', '<?php echo $row["movimiento"]; ?>','<?php echo $calculos; ?>','<?php echo $link; ?>')">
											<td><?php echo $row['id']; ?></td>
											<td><?php echo $row['usuario']; ?></td>
											<td><?php echo $nombrep; ?></td>
											<td><?php echo $row["fechadesalida"]; ?></td>
											<td><?php echo $row["movimiento"]; ?></td>
										</tr>
								<?php
									}
									else {
										if($row['id'] !== "0" ){
								?>
											<tr>
												<td><?php echo $row["movimiento"]; ?> eliminado</td>
												<td><?php echo $row['usuario']; ?></td>
												<td><?php echo $row["solicitante"]; ?></td>
												<td><?php echo $row["fechadesalida"]; ?></td>
												<td class="clear">Eliminado</td>
											</tr>
								<?php
										}
									}

                                }
                                ?>									
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
        <script type="module" src="js/modules.js"></script>
        <script type="module" src="js/filter.js"></script>
        <script src="js/reportes_enlace.js"></script>
        <script src="js/movimientojs.js"></script> 
    </body>
</html>