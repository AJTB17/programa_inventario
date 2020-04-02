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
<!------metas end ----->
        <link href="css/icon.css" rel="stylesheet">
        <link href="css/auditoria.css" rel="stylesheet">
        <link href="img/logos/logo0.ico" rel="icon">
<!------css end ------->

        <script src='js2/jquery-3.4.1.min.js'></script>
        <title>Estancia Los Potros</title>
     </head>

    <body>
        <header>
            <div class="contenedor">
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
        </header>
        <main>
            <div class="cdb">
                <div><h2>Auditoria de inventario</h2></div>
                <div class="go"><a href="movimiento.php">X</a></div>
            </div>
            
            <div class="ofbc">
                <div class="of1">
                    <div class="of1-1">
                        <div>
                            <label>Depósito:</label>
                            <input type="text" list="DepositosExistentes" placeholder="N° deposito" id="deposito-input">
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
                        </div>
                        <div>
                            <label>Proveedor:</label>
                            <input type="text" list="proveedoreslista" placeholder="Proveedor" id="proveedor-input"> 
                                <datalist id="proveedoreslista">
                                        <?php
                                            include("phpurl/bdacceso.php");
                                            $query="SELECT nombre FROM proveedor";
                                            $resultado=$conexion->query($query);
                                            while($row=$resultado->fetch_assoc()){
                                        ?>
                                            <option><?php echo $row['nombre']; ?></option>
                                        <?php
                                            };
                                        ?>
                            </datalist>
                        </div>
                        <div>
                            <label>Tipo producto:</label>
                            <input type="text" list="tiposproductoslista" placeholder="Default" id="tipoproducto-input">
                                <datalist id="tiposproductoslista">
                                        <?php
                                            include("phpurl/bdacceso.php");
                                            $query="SELECT DISTINCT departamento FROM productos";
                                            $resultado=$conexion->query($query);
                                            while($row=$resultado->fetch_assoc()){
                                        ?>
                                            <option><?php echo $row['departamento']; ?></option>
                                        <?php
                                            };
                                        ?>
                            </datalist>
                        </div>
                        <div>
                            <label>Ordenar por:</label>
                            <select id="ordenar-input">
                                <option>Código</option>
                                <option>Nombre</option>                               
                            </select>
                        </div>
                    </div>
                    <div class="of1-3">
                        <button id="add2">Generar</button>
                        <button id="one">Agregar fila <span>+</span></button>
                    </div>
                </div>
                <div class="of2">
                    <table>
                        <thead>
                            <tr>
                                <th>Ajuste de inventario <strong>N°</strong></th>
                                <th style="text-align: right;"><strong id="n-ajuste"></strong></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Costo actual</td>
                                <td id="costo1">0,00</td>
                            </tr>
                            <tr>
                                <td>Costo ajuste</td>
                                <td id="costo2">0,00</td>
                            </tr>
                            <tr>
                                <td>N° de items</td>
                                <td id="prodM">0</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="overtable">
                <table class="tablemain" id="tablaud">
                <thead id="reference">
                    <tr>
                        <th colspan="1">Codigo</th>
                        <th width="60%">Descripción</th>
                        <th colspan="1">Costo actual</th>
                        <th colspan="1">Costo nuevo</th>
                        <th colspan="1">Existencia<br> anterior</th>
                        <th colspan="1">Existencia<br> nueva</th>
                        <th colspan="1">Eliminar</th>
                    </tr>
                </thead>
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
                <tbody id="bodyud">
                </tbody>
                <tfoot>
                    <tr>
                        <td>
                            <button id="clearAll">Borrar</button>
                        </td>
                        <td></td><td></td><td></td><td></td>
                        <td>
                            <button id="actualizarbd">Guardar</button>
                        </td>
                        <td></td>
                    </tr>
                    
                </tfoot>
            </table>
            </div>
            
        </main>
        <script src="js/auditoria.js"></script>
    </body>
</html>