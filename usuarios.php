<!-- BDSUusuariomant.php  -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1, minimum-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/googleapis.css" rel="stylesheet">
        <link href="css/proveedorescs.css" rel="stylesheet">
        <link href="css/ingreso.css" rel="stylesheet">
        <title>Estancia Los Potros</title>
        <link rel="icon"  href="img/logos/logo0.ico">
    </head>
 <body>
     <header class="header">
            <div class="contenedor index">
                <div class="contenedor--flex">
                    <div class="clm-33">
                        <img class="img" src="img/logos/logo0.png">
                    </div>
                    <div align="center" class="clm-33">
                        <h1 class="logo">Estancía los Potros <br><h5 class="logo">Modulo de Mantenimiento de Base de Datos</h5> </h1>
                        
                    </div>
                    <div class="clm-33">
                        <input type="checkbox" id="menu-bar">
                        <label class="icon-menu" for="menu-bar"></label>
                        <br>
                        <nav class="menu">
                            <a href="istmant01p.php">Inicio</a>
                            
                                                                              
                        </nav>
                    </div>
                </div>
                
    
            </div>
    </header>
    <main style="margin:auto; width: 80%; margin-top: 130px;">
    	<h1>MODULO DE MANTENIMIENTO BD USUARIO</h1>
        <table>
			<thead class="ext">
				<th><a href="istmant01p1-1.php">Nuevo</a></th>
				<th colspan="4">Lista de Usuarios</th>
                <th colspan="6">Nivel de Acceso</th>
                <th colspan="2">Accion</th>
			</thead>
            <thead>
                
            </thead>
            <thead>
                <tr>
                    <td>Id</td>
                    <td>Usuario</td>
                    <td>Nombres</td>
                    <td>Apellidos</td>
                    <td>Correo</td>
                    <td> 1</td>
                    <td> 2</td>
                    <td> 3</td>
                    <td> 4</td>
                    <td> 5</td>
                    <td> Ubicación</td>
                    <td colspan="2">Operaciones</td>
                </tr>
			</thead>
            <?php
                include("phpurl/bdacceso.php");
                $query="SELECT * FROM usuarios";
                $resultado=$conexion->query($query);
                while($row=$resultado->fetch_assoc()){
            ?>
            <tbody>     
                <tr>
                    <td><?php echo $row['id']; ?></td>
                    <td><?php echo $row['usuario']; ?></td>
                    <td><?php echo $row['nombres']; ?></td>
                    <td><?php echo $row['apellidos']; ?></td>
                    <td><?php echo $row['correo']; ?></td>
                    <td><?php echo $row['nivel1']; ?></td>
                    <td><?php echo $row['nivel2']; ?></td>
                    <td><?php echo $row['nivel3']; ?></td>
                    <td><?php echo $row['nivel4']; ?></td>
                    <td><?php echo $row['nivel5']; ?></td>
                    <td><?php echo $row['ubicacion']; ?></td>
                    <td><a href="istmant01p1-2.php?id=<?php echo $row['id']; ?>">Modificar</a>
                    </td>
                    <td><a href="istmant01p1-3.php?id=<?php echo $row['id']; ?>">Eliminar</a></td>
                </tr>        
                <?php
                }
                ?>
            </tbody>
        	<tfoot>
        		<tr>
        			<td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td colspan="2"></td>
        		</tr>
        	</tfoot>
        </table>
    </main>
      <footer>
            <div class="contenedor contenedor--flex">
                <p class="copy" style="margin: auto">&copy; 2019 IngSoftTelecom@gmail.com| Todos los derechos reservados.</p>
            </div>
        </footer> 
</body>
</html>