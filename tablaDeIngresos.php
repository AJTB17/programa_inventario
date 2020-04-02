<html lang="en">
    <head>
        <meta charset='utf-8' />
<!----- Metas end --------------> 
        
        <link href="css/nav.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/iconobienvenida.css" rel="stylesheet">
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
        <script src='moment-timezone/main.js'></script>
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
            <div class="contenedor--flex">
                <div  class="gg">
                    <nav>
                        <a href="proveedoreshtml.php"  id="btna">Provedores</a>
                        <a href="productoshtml.php" id="btnc">Productos</a>
                        <a href="tablaDeIngresos.php" id="btnb" class="active">Ingresos</a>
                        <a href="tablaDeEgresos.php" id="btnd">Traslados</a>
                        <a href="movimiento.php"  id="btne">Movimientos</a>
                    </nav>
                </div>
            </div>
                    
                
        </header>
        <main>
            <div id="ventanaDeDepositos" class="GrayBackground hidden">
                <div id="muestraDeDepositos">
                    <h1 id="depositosTitle" class="titlemodal">Muestra</h1>
                    <table id="depositos">
                        <thead id="tableHeader">
                            <th>Código De Producto</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                            <th>Depósito de Entrada</th>
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
                                <h3>Hola <span style="display: none" id="txtusuario"></span><span id="txtusuarionombre"></span>usuario</h3>
                            </div>
                        </div>
                        <div class="v3">
                            <label for="maa" onclick="ovejo">Reportes</label>
                        </div> 
                        <input class="checkeo" type="checkbox" id="maa">
                        <ul class="menuext">
                            <li>
                               <div class="v4">
                                    <a href="#"><hr><span>prueba</span></a>
                                </div>
                            </li>
                            <li>
                               <div class="v4">
                                    <a href="#"><hr><span>prueba</span></a>
                                </div>
                            </li>
                            <li>
                               <div class="v4">
                                    <a href="#"><hr><span>prueba</span></a>
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
                            <a href="#">Cerrar sesión</a>
                        </div>
                            <!--  <li><a href="javascript:void(0);" onClick="hrefprueba();" title="Acceso al menu prueba.">Acerca de</a></li>-->
                </div>
            <div style="margin-top:200px">
                <div class="ban"><h2>Ingresos</h2></div>
                <div class="contenedor--t">
                    <table>
                        <tr style="background-color: #222">
                            <thead>
                                <th>Número de Factura</th><th>Fecha de Ingreso</th>
                                <th>Código de Proveedor</th><th>Nombre de proveedor</th><th>Subtotal</th>
                                <th>IVA</th><th>Total</th>
                            </thead>
                        </tr>
                        <?php
                        include("phpurl/bdacceso.php");
                        $query="SELECT kardexingresos.numerodefactura,
                               kardexingresos.fechadeingreso,
                               kardexingresos.codproveedor,
                               proveedor.nombre,
                               kardexingresos.subtotal,
                               kardexingresos.iva,
                               kardexingresos.total
                               FROM kardexingresos INNER JOIN proveedor ON proveedor.codigo = kardexingresos.codproveedor
                               ORDER BY fechadeingreso DESC";
                        $resultado=$conexion->query($query);
                        while($row=$resultado->fetch_assoc()){
                            $numeroDeFactura =$row['numerodefactura'];
                            $codigoDeProveedor = $row['codproveedor'];
                            $query2 = "SELECT * FROM movimientoskardexi WHERE
                            numerodefactura='$numeroDeFactura' AND
                            codigoproveedor='$codigoDeProveedor'";
                            $resultado2=$conexion->query($query2);
                            $movimientos = $numeroDeFactura."--".$codigoDeProveedor."!!";
                            while ($row2=$resultado2->fetch_assoc()){
                                $movimientos = $movimientos.$row2['producto']."||".
                                                $row2['cantidad']."||".
                                                $row2['precio']."||".
                                                $row2['deposito']."--";
                            };
                        ?>
                        <tr>
                            <td onclick='desplegarMovimientos("<?php echo $movimientos; ?>")'>
                            <?php echo $numeroDeFactura; ?></td>
                            <td onclick='desplegarMovimientos("<?php echo $movimientos; ?>")'>
                            <?php echo $row["fechadeingreso"]; ?></td>
                            <td onclick='desplegarMovimientos("<?php echo $movimientos; ?>")'>
                            <?php echo $row["codproveedor"]; ?></td>
                            <td onclick='desplegarMovimientos("<?php echo $movimientos; ?>")'>
                            <?php echo $row["nombre"]; ?></td>
                            <td onclick='desplegarMovimientos("<?php echo $movimientos; ?>")'>
                            <?php echo $row["subtotal"]; ?></td>
                            <td onclick='desplegarMovimientos("<?php echo $movimientos; ?>")'>
                            <?php echo $row["iva"]; ?></td>
                            <td onclick='desplegarMovimientos("<?php echo $movimientos; ?>")'>
                            <?php echo $row["total"]; ?></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </table>
                </div>
            </div>
        </main>
        <script src="js/tablaDeIngresosjs.js"></script>
    </body>
</html>