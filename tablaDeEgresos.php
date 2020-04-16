<html lang="en">
    <head>
        <meta charset='utf-8' />
<!----- Metas end --------------> 
        
        <link href="css/nav.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/icon.css" rel="stylesheet">
        <link href="css/proveedorescs.css" rel="stylesheet">
        <link href="css/barralateral.css" rel="stylesheet">
        <link href="css/BF.css" rel="stylesheet">
<!----- Estilos de css end -----> 
        
        <link href='packages/core/main.css' rel='stylesheet' />
        <link href='packages-premium/timeline/main.css' rel='stylesheet' />
        <link href='packages-premium/resource-timeline/main.css' rel='stylesheet' />
        <link href="js2/jquery-ui.min.css" rel="stylesheet">

<!----- Estilos de bootstrap end -->    
    
        <script src='packages/core/main.js'></script>
        <script src='packages/interaction/main.js'></script>
        <script src='packages-premium/timeline/main.js'></script>
        <script src='packages-premium/resource-common/main.js'></script>
        <script src='packages-premium/resource-timeline/main.js'></script>
<!--        <script src='moment-timezone/main.js'></script>-->
        <script src='js2/jquery-3.4.1.min.js'></script>
        <script src='js2/jquery-ui.min.js'></script>
        <script src='js2/popper.min.js'></script>
        <script src='js2/moment.min.js'></script>
        <script src='js2/bootstrap.min.js'></script>
        <script src='js2/jquery.maskedinput.js'></script>
        <script src='packages/core/locales/es.js'></script>
        <script src="js2/date-and-time.min.js"></script>
<!----- Script de librerias end -->
    </head>
    <body>
        <header>
            <div class="contenedor index">
                <div class="contenedor--flex">
                        <div class="clm-33">
                            <img class="img" src="img/logos/logo0.PNG">
                        </div>
                        <div align="center" class="clm-33">
                            <h1 class="logo">Estancía los Potros <br><h5 class="logo">Un lugar para soñar</h5> </h1>
                        </div>
                        <div class="clm-33">

                        </div>
                </div>
            </div>
             <!-- Cabecera End -->
             <div  class="gg">
                <nav>
                    <a href="proveedoreshtml.php" id="btna">Provedores</a>
                    <a href="productoshtml.php" id="btnc">Productos</a>
                    <a href="tablaDeIngresos.php"id="btnb">Ingresos</a>
                    <a href="tablaDeEgresos.php" class="active" id="btnd">Egresos</a>
                    <a href="movimiento.php" id="btne">Movimientos</a> 
                </nav>
            </div>   
                    
                
        </header>
        <main>
            <div id="ventanaDeDepositos" class="GrayBackground hidden">
                <div id="muestraDeDepositos">
                    <h1 id="depositosTitle" class="titlemodal">Muestra</h1>
                    <table id="depositos">
                        <thead id="tableHeader">
                            <th>Producto</th><th>Cantidad</th><th>Antiguo Depósito</th>
                            <th id="tableHeaderVariable">Nuevo Depósito</th>
                        </thead>
                    </table>
                    <button id="depositCancelButton" class="productCancelButton 
                    formularioButton">Cerrar</button>
                </div>
            </div>
            <div id="menuvertical" class="cuerpa">
				<div class="v1">
					<div class="u1cont"><img class="u1" src="img/logos/bu.jpg"></div>
					<div class="ut1">
						<h3>Hola <span style="display: none" id="txtusuario"></span><span id="txtusuarionombre">usuario</span></h3>
					</div>
				</div>
				<div class="v3">
					<label for="maa" onclick="ovejo">Reportes</label>
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
					<a href="index.html">Cerrar sesión</a>
				</div>
            </div>
            <div style="margin-top:130px">
                <div class="ban"><h2>Egresos</h2></div>
                <div class="contenedor--flex">
                    <div class="back2">
                        <h2>Busqueda filtrada</h2>
                        <div class="contenedor--flex">
                            <div class="Cinput">
                                <label for="nameFilter">Nombre:</label><br>
                                <input type="text" placeholder="Producto nombre" id="nameFilter">
                            </div>
                            <div class="Cinput">
                                <label for="movementNumberFilter">Número de Movimiento</label><br>
                                <input type="number" placeholder="Codigo producto" id="movementNumberFilter">
                            </div>
                            <div class="Cinput">
                                <label for="solicitanteFilter">Solicitante:</label><br>
                                <input type="text" placeholder="Solicitante" id="solicitanteFilter">
                            </div>
                            <div class="Cinput">
                                <label for="fechaFilter">Fecha:</label><br>
                                <input type="date" placeholder="fecha de entrada" id="fechaFilter">
                            </div>
                            <div class="Cinput">
                                <label for="departmentFilter">Departamento:</label><br>
                                <input type="text" placeholder="Departamento" id="departmentFilter">
                            </div>
                            <div class="Cinput">
                                <label for="orderFilter">Ordenar por:</label><br>
                                <select name="orden" id="orderFilter">
                                    <option>Más recientes</option>
                                    <option>Más antiguos</option>
                                </select>
                            </div>
                            <div class="Cinput">
                                <label for="depositFilter">Deposito:</label><br>
                                <input type="number" placeholder="numero de deposito" id="depositFilter">
                            </div>
                            <div class="Cinput">
                                <label for="movementFilter">Movimiento:</label><br>
                                <select name="movement" id="movementFilter">
                                    <option>Todos</option>
                                    <option>Salida</option>
                                    <option>Ingreso</option>
                                    <option>Traslado</option>
                                </select>
                            </div>
                        </div>
                        <div class="contenedor--flex">
                            <div class="eb">
                                <button id="filterButton">Buscar</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="contenedor--t">
                    <table>
                        <tr style="background-color: #222">
                            <thead>
                                <th>Solicitante</th><th>Fecha De Acción</th>
                                <th>Movimiento</th><th>Razón</th>
                            </thead>
                        </tr>
                        <?php
                        include("phpurl/bdacceso.php");
                        $query="SELECT * FROM kardexsalidas UNION ALL SELECT * FROM kardextraslados ORDER BY fechadesalida DESC";
                        $resultado=$conexion->query($query);
                        while($row=$resultado->fetch_assoc()){
                            $cadena = "";
                            if ($row['movimiento'] === "Traslado") {
                                $query2 = "SELECT * FROM movimientoskardext WHERE id=".$row['id']."";
                                $resultado2=$conexion->query($query2);
                                while ($row2 = $resultado2->fetch_assoc()) {
                                    $cadena = $cadena.$row2['producto']."||".
                                              $row2['cantidad']."||".
                                              $row2['antiguodeposito']."||".
                                              $row2['nuevodeposito']."--";
                                }
                            } else {
                                $query2 = "SELECT * FROM movimientoskardexs WHERE id=".$row['id']."";
                                $resultado2=$conexion->query($query2);
                                while ($row2 = $resultado2->fetch_assoc()) {
                                    $cadena = $cadena.$row2['producto']."||".
                                              $row2['cantidad']."||".
                                              $row2['antiguodeposito']."||".
                                              $row2['motivo']."||".
											  $row2['und']."--";
                                }
                            }
                        ?>
                        <tr onclick="desplegarInformacion('<?php echo $cadena ?>','<?php echo $row['movimiento'] ?>')">
                            <td> <?php echo $row["solicitante"]; ?></td>
                            <td> <?php echo $row["fechadesalida"]; ?></td>
                            <td> <?php echo $row['movimiento']?> </td>
                            <td> <?php echo $row["razon"]; ?></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </table>
                </div>
            </div>
        </main>
        <script src="js/reportes_enlace.js"></script>
        <script src="js/tablaDeEgresosjs.js"></script>
    </body>
</html>