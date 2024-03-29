<html lang="en">
    <head>
        <meta charset="utf-8">>
<!----- metas end ----------->
        
        <link href="css/nav.css" rel="stylesheet">
        <link href="css/icon.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <link href="img/logos/logo0.ico" rel="icon">
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
        <title>Estancia Los Potros</title>
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
                    <a href="proveedoreshtml.php"  class="active" id="btna">Provedores</a>
                    <a href="productoshtml.php" id="btnc">Productos</a>
                    <a href="tablaDeIngresos.php"  id="btnb">Ingresos</a>
                    <a href="tablaDeEgresos.php" id="btnd">Egresos</a>
                    <a href="movimiento.php" id="btne">Movimientos</a> 
                </nav>
            </div>    
                    
                
        </header>
        <main>
           <!---ventana modal start-->
            <div id="ventanaDeDepositos" class="GrayBackground hidden">
                <div id="muestraDeDepositos">
                    <h1 id="depositosTitle" class="titlemodal">Información</h1>
                    <div id="ContenedorDePeticiones" class="contenedor--flex">
                        <div class="inpcont" style="width: 50%">
                            <label id="codigoLabel" class="formularioLabel">Código</label><br>
                            <input readonly id="codigoModal" class="formularioInput muestraModal">
                        </div>
                           
                        <div class="inpcont" style="width: 50%">
                            <label id="nombreLabel" class="formularioLabel">Nombre</label><br>
                            <input readonly id="nombreModal" class="formularioInput muestraModal">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="rifLabel" class="formularioLabel">RIF</label><br>
                            <input readonly id="rifModal" class="formularioInput muestraModal">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="direccionfisLabel" class="formularioLabel">Dirección Fiscal</label><br>
                            <input readonly id="direccionfisModal" class="formularioInput muestraModal">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="direccionofiLabel" class="formularioLabel">Dirección de Oficina</label><br>
                            <input readonly id="direccionofiModal" class="formularioInput muestraModal">
                        </div>
                         
                        <div class="inpcont" style="width: 50%">
                            <label id="telefonoofiLabel" class="formularioLabel">Teléfono de Oficina</label> <br>
                            <input readonly id="telefonoofiModal" class="formularioInput muestraModal">  
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                           <label id="teléfonocelLabel" class="formularioLabel">Teléfono Celular</label><br>
                            <input readonly id="telefonocelModal" class="formularioInput muestraModal"> 
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="correoLabel" class="formularioLabel">Correo</label><br>
                            <input readonly id="correoModal" class="formularioInput muestraModal">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="contactoLabel" class="formularioLabel">Contacto</label><br>
                            <input readonly id="contactoModal" class="formularioInput muestraModal">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="cargoconLabel" class="formularioLabel">Cargo del Contacto</label><br>
                            <input readonly id="cargoconModal" class="formularioInput muestraModal">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="telefonoconLabel" class="formularioLabel">Teléfono del contacto</label><br>
                            <input readonly id="telefonoconModal" class="formularioInput muestraModal">
                        </div>
                    </div>
                    <button id="depositCancelButton" class="productCancelButton 
                    formularioButton">Cerrar</button>
                </div>
            </div>
            <div id="GrayBackground" class="hidden GrayBackground" style="margin-top:60px">
                <div id="ContenedorDeFormulario">
                    
                    <h1 class="titlemodal">Proveedores</h1>
                    
                    <div id="ContenedorDePeticiones" class="contenedor--flex">
                        <input type="text" hidden="" id="idInput" name="">
                        <div class="inpcont" style="width: 50%">
                            <label id="codigoLabel" class="formularioLabel">Código</label><br>
                            <input autocomplete="off" required id="codigoInput" class="formularioInput">
                        </div>
                           
                        <div class="inpcont" style="width: 50%">
                            <label id="nombreLabel" class="formularioLabel">Nombre</label><br>
                            <input autocomplete="off" required id="nombreInput" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="rifLabel" class="formularioLabel">RIF</label><br>
                            <input autocomplete="off" required id="rifInput" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="direccionfisLabel" class="formularioLabel">Dirección Fiscal</label><br>
                            <input autocomplete="off" required id="direccionfisInput" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="direccionofiLabel" class="formularioLabel">Dirección de Oficina</label><br>
                            <input autocomplete="off" required id="direccionofiInput" class="formularioInput">
                        </div>
                         
                        <div class="inpcont" style="width: 50%">
                            <label id="telefonoofiLabel" class="formularioLabel">Teléfono de Oficina</label> <br>
                            <input autocomplete="off" required id="telefonoofiInput" class="formularioInput">  
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                           <label id="teléfonocelLabel" class="formularioLabel">Teléfono Celular</label><br>
                            <input autocomplete="off" required id="telefonocelInput" class="formularioInput"> 
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="correoLabel" class="formularioLabel">Correo</label><br>
                            <input autocomplete="off" required id="correoInput" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="contactoLabel" class="formularioLabel">Contacto</label><br>
                            <input autocomplete="off" required id="contactoInput" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="cargoconLabel" class="formularioLabel">Cargo del Contacto</label><br>
                            <input autocomplete="off" required id="cargoconInput" class="formularioInput">
                        </div>
                        
                        <div class="inpcont" style="width: 50%">
                            <label id="telefonoconLabel" class="formularioLabel">Teléfono del contacto</label><br>
                            <input autocomplete="off" required id="telefonoconInput" class="formularioInput">
                        </div>
                        
                        <div class="cont-formularioButton">
                            <button id="proveedorAcceptButton" class="formularioButton">Aceptar</button>
                            <button id="proveedorCancelButton" class="formularioButton">Cancelar</button>
                        </div>
                    </div>
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
            <!--ventana modal end-->
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
                <div class="ban"><h2>Proveedores</h2></div>
                <div class="contenedor--t">
                    <table>
                        <tr style="background-color: #222">
                            <thead class="ext">
                                <th class="add"><p style="text-decoration: none; color: #fff">Agregar</p></th><th></th><th></th><th></th><th></th><th></th><th></th>
                            </thead>
                            <thead>
                                <th>Código</th><th>Nombre</th><th>Dirección de Oficina</th>
                                <th>Teléfono Oficina</th><th>Correo</th><th>Editar</th>
                                <th>Eliminar</th>     
                            </thead>
                        </tr>
                        <?php
                        include('phpurl/bdacceso.php');
                        $query="SELECT * FROM proveedor";
                        $resultado=$conexion->query($query);
                        while($row=$resultado->fetch_assoc()){
                            
                             $datos=$row['id']."||".
                                    $row["codigo"]."||".
                                    $row["nombre"]."||".
                                    $row['rif']."||".
                                    $row['direccionfiscal']."||".
                                    $row["direccionoficina"]."||".
                                    $row["telefonooficina"]."||".
                                    $row["telefonocelular"]."||".
                                    $row["correo"]."||".
                                    $row["contacto"]."||".
                                    $row["cargocontacto"]."||".
                                    $row["telefonocontacto"]."||";
                        ?>
                        <tr>
                            <td onclick="desplegarMovimientos('<?php echo $datos ?>')"><?php echo $row['codigo']; ?></td>
                            <td onclick="desplegarMovimientos('<?php echo $datos ?>')"><?php echo $row["nombre"]; ?></td>
                            <td onclick="desplegarMovimientos('<?php echo $datos ?>')"><?php echo $row["direccionoficina"]; ?></td>
                            <td onclick="desplegarMovimientos('<?php echo $datos ?>')"><?php echo $row["telefonooficina"]; ?></td>
                            <td onclick="desplegarMovimientos('<?php echo $datos ?>')"><?php echo $row["correo"]; ?></td>
                            <td class="mod" onclick="modifiDatos('<?php echo $datos ?>')">Modificar</td>
                            <td class="clear" onclick="clearUser('<?php echo $datos ?>')">X</td>
                        </tr>
                        <?php
                        }
                        ?>
                    </table>
                </div>
            </div>
        </main>
        <script src="js/reportes_enlace.js"></script>
        <script src="js/proveedoresjsC.js"></script>
    </body>
</html>