<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8' />
<!----- Metas end --------------> 
        
        <link href="css/nav.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/icon.css" rel="stylesheet">
        <link href="css/ingreso.css" rel="stylesheet">
        <link href="css/barralateral.css" rel="stylesheet">
<!----- Estilos de css end -----> 
        
        <script src='js2/jquery-3.4.1.min.js'></script>
<!----- Script de librerias end -->
    </head>
    <body>
        <header>
            <div class="contenedor">
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
            <div class="contenedor--flex">

				<div  class="gg">
					<nav>
						<a href="proveedoreshtml.php"  id="btna">Provedores</a>
						<a href="productoshtml.php" id="btnc">Productos</a>
						<a href="tablaDeIngresos.php"  id="btnb">Ingresos</a>
						<a href="tablaDeEgresos.php" id="btnd">Egresos</a>
						<a href="movimiento.php" id="btne">Movimientos</a> 
					</nav>
				</div>    
			</div>
        </header>
        <main>
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
            <div class="contenedor--flex contenedor">
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
                    <div class="v3 v3active">
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
                <div class="caja-exe" style="margin-top:130px">
                    <h2 class="ti">Cargo de inventario</h2>
                    <div class="factura" id="factura">
                        <div class="contenedor--flex">
                                <div class="cont-input">
                                    <label>Código de proveedor:</label>
                                    <br>
                                    <input type="number" id="codigopro">
                                </div>
                                <div class="cont-input">
                                    <label>Nombre de proveedor:</label>
                                    <br>
                                    <input type="text" list="Proveedores" id="nombrepro">
                                </div>
                                <div class="cont-input">
                                    <label>RIF proveedor:</label>
                                    <br>
                                    <input readonly type="text" id="rifpro">
                                </div>
                                <div class="cont-input">
                                    <label>Cantidad de items:</label>
                                    <br>
                                    <input type="number" name="cantidadproductos" id="cant-prod">
                                </div>
                                <div class="cont-input">
                                    <label>Número de factura:</label>
                                    <br>
                                    <input type="number" id="numeroFactura">
                                </div>
                                <div class="cont-input">
                                    <label>Fecha de Ingreso:</label>
                                    <br>
                                    <input type="date" id="fechadeing">
                                </div>
                                <div class="cont-input2">
                                    <label>Estado</label>
                                    <br>
                                    <div class="ra-espe">
                                        <div>
                                            <input type="radio" id="pago" value="pago" name="pago"><p>Paga</p>
                                        </div>
                                        <div>
                                            <input type="radio" id="porpagar" value="porpagar" name="pago"><p>Por pagar</p>
                                        </div>
                                    </div>
                                </div>
                        </div>
						<div class="panel-3">
							<div class="cont-submit">
								<button class="rojo" value="Limpiar">Limpiar</button>
								<button class="verde" value="Ingresar" id="add2" >Ingresar</button>
							</div>
						</div>
                    </div>
                    <div class="ingresoProductos">
                        <div class="contenedor--flex">
                            <h2 class="ti">Ingreso de productos</h2>
                            <button id="one">Agregar fila <span>+</span></button>
                        </div>
                        
                        <div class="contenedor--t">
                            <table id="mesa">
                                <tr style="background-color: #222" id="reference">
                                    <thead>
                                        <th>Codigo</th>
                                        <th>Producto</th>
                                        <th>Cantidad</th>
                                        <th>Medida en almacén</th>
                                        <th>Unidad a ingresar</th>
                                        <th>Depósito</th>
                                        <th>Ubicación</th>
                                        <th>P/U</th>
                                        <th>Iva</th>
                                        <th>Total</th>
                                        <th>Eliminar</th>     
                                    </thead>
                                </tr>
                                <datalist id="Productos">
                                <?php
                                    include("phpurl/bdacceso.php");
                                    $query="SELECT nombre FROM productos ORDER BY nombre";
                                    $resultado=$conexion->query($query);
                                    while($row=$resultado->fetch_assoc()){
                                ?>
                                    <option value="<?php echo $row['nombre']; ?>"><?php echo $row['nombre']; ?></option>
                                <?php
                                    };
                                ?>
                                </datalist>
                                <datalist id="Proveedores">
                                <?php
                                    include("phpurl/bdacceso.php");
                                    $query="SELECT nombre FROM proveedor ORDER BY nombre";
                                    $resultado=$conexion->query($query);
                                    while($row=$resultado->fetch_assoc()){
                                ?>
                                    <option value="<?php echo $row['nombre']; ?>"><?php echo $row['nombre']; ?></option>
                                <?php
                                    };
                                ?>
                                </datalist>
                                <datalist id="DepositosExistentes">
                                <?php
                                    include("phpurl/bdacceso.php");
                                    $query="SELECT DISTINCT deposito FROM depositos ORDER BY deposito";
                                    $resultado=$conexion->query($query);
                                    while($row=$resultado->fetch_assoc()){
                                ?>
                                    <option><?php echo $row['deposito']; ?></option>
                                <?php
                                    };
                                ?>
                                </datalist>
                                <tfoot>
                                    <tr>
                                        <td colspan="2"  id="totalConIva">Total+Iva:</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td id="TotalIva">0</td>
                                        <td id="totalFinal">0</td>
                                        <td><button class="verde" style="font-weight: bold; color: #fff; background: #11aa11; width: 80px; margin: 0; padding: 8px 15px; border-radius: 5px; border: 2px solid #222222;" id="send" >Enviar</button></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="js/reportes_enlace.js"></script>
        <script src="js/createfornite.js"></script>
    </body>
</html>
