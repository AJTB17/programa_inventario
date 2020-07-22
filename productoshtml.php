<html lang="en">
    <head>
        <meta charset='utf-8' />
<!----- Metas end --------------> 
        
        <link href="css/nav.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/icon.css" rel="stylesheet">
        <link href="css/proveedorescs.css" rel="stylesheet">
        <link href="css/barralateral.css" rel="stylesheet">
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
                    <a href="productoshtml.php"  class="active" id="btnc">Productos</a>
                    <a href="tablaDeIngresos.php"  id="btnb">Ingresos</a>
                    <a href="tablaDeEgresos.php" id="btnd">Egresos</a>
                    <a href="movimiento.php" id="btne">Movimientos</a> 
                </nav>
            </div>    
                    
                
        </header>
        <main>
            <!---ventana modal start-->
            <div id="GrayBackgroundProduct" class="hidden GrayBackground" style="margin-top:80px">
                <div id="ContenedorDeFormulario">
                    
                    <h1 class="titlemodal">Productos</h1>
                    
                    <div id="ContenedorDePeticiones" class="contenedor--flex">
                        <input type="text" hidden="" id="idProductInput" name="">
                        <div class="inpcont" style="width: 50%">
                            <label id="codigoProductLabel" for="codigoProductInput" class="formularioLabel">Código</label><br>
                            <input id="codigoProductInput" type="text" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="nombreProductLabel" class="formularioLabel">Nombre</label><br>
                            <input id="nombreProductInput" type="text" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="unidadesProductLabel" class="formularioLabel">Unidad</label>
                            <br>
                            <select value="1" type="text" list="unidadesExistentes" id="unidadesProductInput" class="formularioInput">
                            	<option value="Toneladas">Toneladas</option>
                                <option value="Kilogramos">Kilogramos</option>
                                <option value="Gramos">Gramos</option>
                                <option value="Libras">Libras</option>
                                <option value="Onzas">Onzas</option>
                                <option value="Galones">Galones</option>
                                <option value="Litros">Litros</option>
                                <option value="Mililitros">Mililitros</option>
                                <option value="Yarda">Yarda</option>
                                <option value="Metros">Metros</option>
                                <option value="Centímetros">Centímetros</option>
                                <option value="Pies">Pies</option>
                                <option value="Pulgadas">Pulgadas</option>
                                <option value="Docenas">Docenas</option>
                                <option value="Decenas">Decenas</option>
                                <option value="Unidades">Unidades</option>
                            </select>
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="descuentoProductLabel" class="formularioLabel">Descuento</label><br>
                            <input id="descuentoProductInput" type="text" class="formularioInput">
                        </div>

                        <div class="inpcont" style="width: 50%">
                            <label id="departamentoProductLabel" class="formularioLabel">Departamento</label><br>
                            <input id="departamentoProductInput" type="text"class="formularioInput">
                        </div>

                        <div class="inpcont" style="width: 50%">
                            <label id="reordenProductLabel" class="formularioLabel">Reorden</label><br>
                            <input id="reordenProductInput" type="text" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="IVAlabel" class="formularioLabel">IVA</label><br>
                            <input id="IVAinput" type="text" class="formularioInput">
                        </div>
                        
                        <div class="cont-formularioButton">
                            <button id="productAcceptButton" class="formularioButton">Aceptar</button>
                            <button id="productCancelButton" class="formularioButton
                            productCancelButton">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--ventana modal end-->
            <div id="ventanaDeDepositos" class="GrayBackground hidden">
                <div id="muestraDeDepositos">
                    <h1 id="depositosTitle" class="titlemodal">Muestra</h1>
                    <div class="inpcont-2">
						<div>
							<label id="descuentoLabel" class="formularioLabel">Descuento</label><br>
							<input id="descuentoInput" type="text" readonly class="formularioInput">
						</div>
						<div>
							<label id="departamentoLabel" class="formularioLabel">Departamento</label><br>
							<input id="departamentoInput" type="text" readonly class="formularioInput">
						</div>
						<div>
							<label id="reordenLabel" class="formularioLabel">Reorden</label><br>
							<input id="reordenInput" type="text" readonly class="formularioInput">
						</div>
						<div>
							<label id="fechaultpedidoLabel" class="formularioLabel">Fecha de último pedido</label><br>
							<input id="fechaultpedidoInput" type="text" readonly class="formularioInput">
						</div>
						<div>
							<label id="noultimopedidoLabel" class="formularioLabel">Factura del último pedido</label><br>
							<input id="noultimopedidoInput" type="text" readonly class="formularioInput">
						</div>
                    </div>
                    
                    <table id="depositos">
                        <thead id="tableHeader">
                            <th>Deposito</th><th>Ubicacion</th><th>Cantidad</th>
                        </thead>
                        <tfoot>
                    		<tr>
                    			<td></td>
                    			<td></td>
                    			<td></td>
                    		</tr>
                    	</tfoot>
                    </table>
                    <button id="depositCancelButton" class="productCancelButton 
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
            <div style="margin-top:120px">
                <div class="ban"><h2>Productos</h2></div>
                <div class="contenedor--t">
                    <table>
                        <thead class="ext">
                                <th id="addProducto"><p style="text-decoration: none; color:
                                 #fff">Agregar</p></th>
                                 <th></th>
                                 <th></th>
                                 <th></th>
                                 <th></th>
                                 <th></th>
                                 <th></th>
                                 <th></th>
                                 <th></th>
                        </thead>
						<thead>
							<th>Código</th>
							<th>Nombre</th>
							<th>Cantidad</th>
							<th>Cta previa</th>
							<th>Unidad</th>
							<th>Costo</th>
							<th>IVA</th>
							<th>Editar</th>
							<th>Eliminar</th>
						</thead>
                       	<tbody>
							<?php
							include("phpurl/bdacceso.php");
							include("phpurl/functions.php");
							$query="SELECT * FROM productos ORDER BY codigo";
							$resultado=$conexion->query($query);
							while($row=$resultado->fetch_assoc()){
								$isOnReorder = $row['cta'] <= $row['reorden'];

								$decimalCta = changeDecimalNotation($row['cta']);
								$decimalCosto = changeDecimalNotation($row['costo']);

								$productos=$row['id']."||".
										$row["codigo"]."||".
										$row["nombre"]."||".
										$row['und']."||".
										$row["descuento"]."||".
										$row["departamento"]."||".
										$row["reorden"]."||".
										$row["IVA"]."||";

								$caracts = $row['und']."||".
										$row['descuento']."||".
										$row['departamento']."||".
										$row['reorden']."||".
										$row['fechaultpedido']."||".
										$row['noultimopedido'];

								$nombre = $row['nombre'];

								$query2 = "SELECT deposito,ubicacion,cantidad FROM depositos WHERE
								producto='$nombre' ORDER BY deposito";
								$resultado2=$conexion->query($query2);
								$depositos="";
								while($row2=$resultado2->fetch_assoc()){
									$depositos = $depositos.$row2['deposito']."||".
											$row2['ubicacion']."||".
											$row2['cantidad']."__";
								};
								
							?>
							<tr>
								<td onclick="desplegarDepositos('<?php echo $caracts; ?>','<?php echo $depositos ?>','<?php echo $row['nombre'] ?>')"><?php echo $row['codigo']; ?></td>
								<td onclick="desplegarDepositos('<?php echo $caracts; ?>','<?php echo $depositos ?>','<?php echo $row['nombre'] ?>')"><?php echo $row["nombre"]; ?></td>
								<td onclick="desplegarDepositos('<?php echo $caracts; ?>','<?php echo $depositos ?>','<?php echo $row['nombre'] ?>')" class="<?php echo ($isOnReorder ? "reorden" : ""); ?>"><?php echo $decimalCta; ?></td>
								<td onclick="desplegarDepositos('<?php echo $caracts; ?>','<?php echo $depositos ?>','<?php echo $row['nombre'] ?>')"><?php echo $row['ctaprevia']; ?></td>
								<td onclick="desplegarDepositos('<?php echo $caracts; ?>','<?php echo $depositos ?>','<?php echo $row['nombre'] ?>')"><?php echo $row["und"]; ?></td>
								<td onclick="desplegarDepositos('<?php echo $caracts; ?>','<?php echo $depositos ?>','<?php echo $row['nombre'] ?>')"><?php echo $row['costo']."$"; ?></td>
								<td onclick="desplegarDepositos('<?php echo $caracts; ?>','<?php echo $depositos ?>','<?php echo $row['nombre'] ?>')"><?php echo $row["IVA"]."%"; ?></td>
								<td  onclick="modProducto('<?php echo $productos ?>')"class="modProducto">Modificar</td>
								<td class="clearProducto" onclick="clearProduct('<?php echo $productos
								?>')">X</td>
							</tr>
							<?php
							}
							?>
						</tbody>
                    </table>
                </div>
            </div>
            <datalist id="unidadesExistentes">
                <?php
                    $query = "SELECT DISTINCT und FROM productos";
                    $resultado = $conexion->query($query);
                    while ($row = $resultado->fetch_assoc()){   
                ?>
                   <option><?php echo $row['und'] ?></option>
                <?php
                    }
                ?>
            </datalist>
        </main>
        <script src="js/reportes_enlace.js"></script>
        <script src="js/productosjs.js"></script>
    </body>
</html>