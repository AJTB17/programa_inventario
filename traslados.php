<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8' />
<!----- Metas end --------------> 
        
        <link href="css/nav.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/iconobienvenida.css" rel="stylesheet">
        <link href="css/icon.css" rel="stylesheet">
        <link href="css/ingreso.css" rel="stylesheet">
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
                    <a href="proveedoreshtml.php"  id="btna">Provedores</a>
                    <a href="productoshtml.php" id="btnc">Productos</a>
                    <a href="tablaDeIngresos.php"  id="btnb">Ingresos</a>
                    <a href="tablaDeEgresos.php" id="btnd">Traslados</a>
                    <a href="movimiento.php" id="btne">Movimientos</a> 
                </nav>
            </div>    
                    
                
        </header>
        <main>
            <div class="contenedor--flex contenedor">
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
                        <div class="v3 v3active">
                            <a href="traslados.php">Salidas o traslados</a>
                        </div>
                        <div class="v3">
                            <a href="auditoria.php">Auditoria de inventario</a>
                        </div>
                        <div class="v3">
                            <a href="#">Cerrar sesión</a>
                        </div>
                </div>
                <div class="caja-exe" style="margin-top:140px">
                    <h2 class="ti" style="margin-top: 0">Traslados y salidas del inventario</h2>
                    <div class="factura" id="factura">
                        <div class="contenedor--flex">
                            <div class="">
                                <h2>¿Que acción desea realizar?</h2>
                                <div class="">
                                    <input type="radio" id="trasp">Trasladar producto
                                </div>
                                <div class="">
                                    <input type="radio" id="sacarp">Sacar producto
                                </div>
                            </div>
                            <div id="ventanaDeTraslados" class="panel-2b hidden">
                                <h2>Traslados</h2>
                                <div class="contenedor--flex">
                                    <div class="panel-2b-a">
                                       <div class="cont-input">
                                            <label for="numref1">Número de referencia:</label>
                                            <br>
                                            <input type="number" class="inputEgr1" id="numref1"
                                            placeholder="Número de referencia">
                                        </div>
                                        <div class="cont-input">
                                            <label for="solicitanteTras1">Solicitante de traslado:</label>
                                            <br>
                                            <input type="text" id="solicitanteTras1" class="inputEgr1"
                                            placeholder="Solicitante de traslado">
                                        </div>
                                        <div class="cont-input">
                                            <label for="cantpro1">Cantidad de items:</label>
                                            <br>
                                            <input type="number" class="inputEgr1" id="cantpro1"
                                            placeholder="Cantidad de productos diferentes">
                                        </div>
                                    </div>
                                        <div class="panel-2b-a">
                                            <div class="cont-input">
                                            <label for="razpro1">Razón del traslado</label>
                                            <br>
                                            <textarea type="number" class="inputEgr1" id="razpro1"
                                            placeholder="Justifique la razon del movimiento de dichos productos o producto"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-3">
                                    <div class="cont-submit">
                                        <button class="rojo" value="Limpiar" id="clean1">Limpiar</button>
                                        <button class="verde" value="Ingresar" id="add1" >Ingresar</button>
                                    </div>
                                </div>
                            </div>
                            <div id="ventanaDeSalidas" class="panel-2c hidden">
                                <h2>Salidas</h2>
                                <div class="contenedor--flex">
                                    <div class="panel-2c-a">
                                       <div class="cont-input">
                                            <label for="numref2">Número de referencia:</label>
                                            <br>
                                            <input type="number" class="inputEgr2" id="numref2"
                                            placeholder="Número de referencia">
                                        </div>
                                        <div class="cont-input">
                                            <label for="solicitanteTras2">Solicitante de salida:</label>
                                            <br>
                                            <input type="text" id="solicitanteTras2"
                                            class="inputEgr2" 
                                            placeholder="Solicitante de salida">
                                        </div>
                                        <div class="cont-input">
                                            <label for="cantpro2">Cantidad de items:</label>
                                            <br>
                                            <input type="number" class="inputEgr2"
                                            id="cantpro2" placeholder="Cantidad de productos diferentes">
                                        </div>
                                    </div>
                                        <div class="panel-2c-a">
                                            <div class="cont-input">
                                            <label for="razpro2">Razón del traslado</label>
                                            <br>
                                            <textarea type="number" class="inputEgr2"
                                            id="razpro2" placeholder="Justifique la razon del movimiento de dichos productos o producto"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-3">
                                    <div class="cont-submit">
                                        <button class="rojo" value="Limpiar" id="clean2">Limpiar</button>
                                        <button class="verde" value="Ingresar" id="add2" >Ingresar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ingresoProductos">
                        <div class="contenedor--flex">
                            <h2 class="ti">Productos a sacar</h2>
                            <button id="one">Agregar fila <span>+</span></button>
                        </div>
                        
                        <div class="contenedor--t">
                            <table id="mesa">
                                <tr style="background-color: #222" id="reference">
                                    <thead>
                                        <th>Código</th><th>Producto</th><th>Departamento</th><th>Cantidad</th>
                                        <th>Depósito</th><th id="changer">Nuevo depósito</th><th>Eliminar</th>     
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
                                <datalist id="Motivos">
                                    <option>Consumo Restaurant</option>
                                    <option>Consumo Piscina playita</option>
                                    <option>Consumo Piscina pequeña</option>
                                    <option>Consumo Hotel</option>
                                    <option>Daño</option>
                                    <option>Robo</option>
                                </datalist>
                                <tfoot>
                                    <tr>
                                        <td></td><td></td><td></td><td></td><td></td><td></td><td><button class="verde" style="font-weight: bold; color: #fff; background: #11aa11; width: 80px; margin: 0; padding: 8px 15px; border-radius: 5px; border: 2px solid #222222;" id="send" >Enviar</button></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="js/Egresojs.js"></script>
    </body>
</html>
