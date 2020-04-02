<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
        <meta name="description" content="Estancia los otros">
        <meta name="keywords" content="campamento hotel restaurant eventos campestre">
        <meta name="author" content="Estancia los otros">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta http-equiv="pragma" content="no-cache" />
<!----- metas end ----------->
        
        <link href="css/nav.css" rel="stylesheet">
        <link href="css/icon.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/menuacceso.css" rel="stylesheet">
        <link href="img/logos/logo0.ico" rel="icon">
        <link href="css/iconobienvenida.css" rel="stylesheet">
        <link href="css/proveedorescs.css" rel="stylesheet">
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

        <title>Estancia Los Potros</title>
     </head>

    <body>
        <header>
            <div class="contenedor index">
                <div class="contenedor--flex">
                        <div class="clm-33">
                            <img class="img" src="img/logos/logo0.PNG">
                        </div>
                        <div align="center" class="clm-33">
                            <h1 class="logo">Estancía los Potros <br><h5 class="logo">Un lugar para soñar</h5></h1>
                        </div>
                        <div class="clm-33">

                        </div>
                </div>
            </div>
            <nav class="menu">
                <ul>
                    <li id="btna">Provedores</li>
                    <li id="btnb">Ingresos</li>
                    <li id="btnc">Productos</li>
                    <li id="btnd">Traslados</li>
                    <li id="btne">Movimientos</li>
                </ul>
            </nav>
        </header>
        <main>
            
            <!---ventana modal proveedores start-->
            <div id="GrayBackground" class="hidden GrayBackground">
                    <div id="ContenedorDeFormulario">

                        <h1 class="titlemodal">Proveedores</h1>

                        <div id="ContenedorDePeticiones" class="contenedor--flex">
                            <input type="text" hidden="" id="idInput" name="">
                            <div class="inpcont" style="width: 50%">
                                <label id="nombreLabel"     class="formularioLabel">Nombre</label><br>
                                <input id="nombreInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="rifLabel" class="formularioLabel">RIF</label><br>
                                <input id="rifInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="direccionfisLabel" class="formularioLabel">Dirección Fiscal</label><br>
                                <input id="direccionfisInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="direccionofiLabel" class="formularioLabel">Dirección de Oficina</label><br>
                                <input id="direccionofiInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="telefonoofiLabel" class="formularioLabel">Teléfono de Oficina</label> <br>
                                <input id="telefonoofiInput" class="formularioInput">  
                            </div>

                            <div class="inpcont" style="width: 50%">
                               <label id="teléfonocelLabel" class="formularioLabel">Teléfono Celular</label><br>
                                <input id="telefonocelInput" class="formularioInput"> 
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="correoLabel" class="formularioLabel">Correo</label><br>
                                <input id="correoInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="contactoLabel" class="formularioLabel">Contacto</label><br>
                                <input id="contactoInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="cargoconLabel" class="formularioLabel">Cargo del Contacto</label><br>
                                <input id="cargoconInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="telefonoconLabel" class="formularioLabel">Teléfono del contacto</label><br>
                                <input id="telefonoconInput" class="formularioInput">
                            </div>

                            <div class="cont-formularioButton">
                                <button id="proveedorAcceptButton" class="formularioButton">Aceptar</button>
                                <button id="proveedorCancelButton" class="formularioButton">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div>
            <!--ventana modal end-->
            
            <!---ventana modal productos start-->
            <div id="GrayBackgroundProduct" class="hidden GrayBackground">
                    <div id="ContenedorDeFormulario">

                        <h1 class="titlemodal">Productos</h1>

                        <div id="ContenedorDePeticiones" class="contenedor--flex">
                            <input type="text" hidden="" id="idProductInput" name="">
                            <div class="inpcont" style="width: 50%">
                                <label id="nombreProductLabel"     class="formularioLabel">Nombre</label><br>
                                <input id="nombreProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="unidadesProductLabel" class="formularioLabel">Unidades</label><br>
                                <input id="unidadesProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="costoProductLabel" class="formularioLabel">Costo</label><br>
                                <input id="costoProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="descuentoProductLabel" class="formularioLabel">Descuento</label><br>
                                <input id="descuentoProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="precio1ProductLabel" class="formularioLabel">Precio 1</label> <br>
                                <input id="precio1ProductInput" class="formularioInput">  
                            </div>

                            <div class="inpcont" style="width: 50%">
                               <label id="descuento1ProductLabel" class="formularioLabel">Descuento 1</label><br>
                                <input id="descuento1ProductInput" class="formularioInput"> 
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="precio2ProductLabel" class="formularioLabel">Precio 2</label><br>
                                <input id="precio2ProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="descuento2ProductLabel" class="formularioLabel">Descuento 2</label><br>
                                <input id="descuento2ProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="precio3ProductLabel" class="formularioLabel">Precio 3</label><br>
                                <input id="precio3ProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="descuento3ProductLabel" class="formularioLabel">Descuento 3</label><br>
                                <input id="descuento3ProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="depositoProductLabel" class="formularioLabel">Depósito</label><br>
                                <input id="depositoProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="departamentoProductLabel" class="formularioLabel">Departamento</label><br>
                                <input id="departamentoProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="ctaProductLabel" class="formularioLabel">Cuenta por pagar</label><br>
                                <input id="ctaProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="reordenProductLabel" class="formularioLabel">Reorden</label><br>
                                <input id="reordenProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="ubicacionProductLabel" class="formularioLabel">Ubicación</label><br>
                                <input id="ubicacionProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="fechaultProductLabel" class="formularioLabel">Fecha de último pedido</label><br>
                                <input type="date" id="fechaultProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="nroultimopedidoProductLabel" class="formularioLabel">Nro de último pedido</label><br>
                                <input id="nroultimopedidoProductInput" class="formularioInput">
                            </div>

                            <div class="inpcont" style="width: 50%">
                                <label id="IVAlabel" class="formularioLabel">IVA</label><br>
                                <input id="IVAinput" class="formularioInput">
                            </div>

                            <div class="cont-formularioButton">
                                <button id="productAcceptButton" class="formularioButton">Aceptar</button>
                                <button id="productCancelButton" class="formularioButton">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ventana modal end-->
            
            <div id="provedor" class="hidden" style="margin-top: 150px">  
                    <div class="ban"><h2>Proveedores</h2></div>
                    <div class="contenedor--t">
                        <table>
                            <tr style="background-color: #222">
                                <thead class="ext">
                                    <th class="add"><a style="text-decoration: none; color: #fff">Agregar</a></th><th></th><th></th><th></th><th></th><th></th><th></th>
                                </thead>
                                <thead>
                                    <th>ID</th><th>Nombre</th><th>Dirección de Oficina</th><th>Teléfono Oficina</th><th>Correo</th><th>Editar</th><th>Eliminar</th>     
                                </thead>
                            </tr>
                            <?php
                            $conexion = mysqli_connect("localhost", "root", "", "bdlospotros");
                            $query="SELECT * FROM proveedor ORDER BY codigo";
                            $resultado=$conexion->query($query);
                            while($row=$resultado->fetch_assoc()){

                                 $datos=$row['codigo']."||".
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
                                <td><?php echo $row['codigo']; ?></td>
                                <td><?php echo $row["nombre"]; ?></td>
                                <td><?php echo $row["direccionoficina"]; ?></td>
                                <td><?php echo $row["telefonooficina"]; ?></td>
                                <td><?php echo $row["correo"]; ?></td>
                                <td class="mod" onclick=" modUser('<?php echo $datos ?>')">Modificar</td>
                                <td class="clear" onclick="clearUser('<?php echo $datos ?>')">X</td>
                            </tr>
                            <?php
                            }
                            ?>
                        </table>
                    </div>
            </div>
            
            <div id="ingreso" class="hidden">
            
            </div>
            
            <div id="producto" style="margin-top: 150px">
                    <div class="ban"><h2>Productos</h2></div>
                    <div class="contenedor--t">
                        <table>
                            <thead class="ext">
                                    <th id="addProducto"><a style="text-decoration: none; color: #fff">Agregar</a></th><th></th><th></th><th></th><th></th><th></th><th></th>
                                </thead>
                            <tr style="background-color: #222">
                                <thead>
                                    <th>ID</th><th>Nombre</th><th>Unidades</th><th>Depósito</th><th>Ubicación</th><th>Editar</th><th>Eliminar</th>     
                                </thead>
                            </tr>
                            <?php
                            $conexion = mysqli_connect("localhost", "root", "", "bdlospotros");
                            $query="SELECT * FROM productos ORDER BY id";
                            $resultado=$conexion->query($query);
                            while($row=$resultado->fetch_assoc()){

                                 $productos=$row['id']."||".
                                        $row["nombre"]."||".
                                        $row['und']."||".
                                        $row['costo']."||".
                                        $row["descuento"]."||".
                                        $row["precio1"]."||".
                                        $row["descp1"]."||".
                                        $row["precio2"]."||".
                                        $row["descp2"]."||".
                                        $row["precio3"]."||".
                                        $row["descp3"]."||".
                                        $row["deposito"]."||".
                                        $row["departamento"]."||".
                                        $row["cta"]."||".
                                        $row["reorden"]."||".
                                        $row["ubicacion"]."||".
                                        $row["fechaultpedido"]."||".
                                        $row["noultimopedido"]."||".
                                        $row["IVA"]."||";
                            ?>
                            <tr>
                                <td><?php echo $row['id']; ?></td>
                                <td><?php echo $row["nombre"]; ?></td>
                                <td><?php echo $row["und"]; ?></td>
                                <td><?php echo $row["deposito"]; ?></td>
                                <td><?php echo $row["ubicacion"]; ?></td>
                                <td class="modProducto" onclick=" modProducto('<?php echo $productos ?>')">Modificar</td>
                                <td class="clearProducto" onclick="clearProduct('<?php echo $productos ?>')">X</td>
                            </tr>
                            <?php
                            }
                            ?>
                        </table>
                    </div>
            </div>
            
            <div id="traslado" class="hidden"></div>
            
            <div id="movimiento" class="hidden"></div>
        </main>
        <!----- Script de librerias end -->        

        <script src="js/proveedoresjsC.js"></script>
        <script src="js/productosjs.js"></script>
        <!----- Script de funciones end -->
    </body>
</html>