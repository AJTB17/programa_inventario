let numero = 0,
    positon = "auditoria",
    n_ajuste = document.getElementById("n-ajuste"),
    max_n,
    dep_a = "negativo",
	usuario = "",
	usuario2 = "";

$('#one').click(onerow);
$('#add2').click(rellebartabla);
$('#actualizarbd').click(actualizarDatos);
$('#clearAll').click(clearall);
window.addEventListener('load', SV, true);
cuadroinfoajuste();


function SV(){
    var est,
        name,
        user;
    
	if (localStorage.length === 0){
		window.open("/inventariogg/index.html", "_self");
	} else {
        est = localStorage.getItem("getvalue4");
        name = localStorage.getItem("getvalue2");
        user = localStorage.getItem("getvalue");
	}
	if(est != "permitido"){
		setTimeout(window.open("/inventariogg/index.html", "_self"), 5000);
	} else if ( est == "permitido"){
		document.getElementsByTagName("body")[0].style.display = "block";
		document.getElementsByTagName("body")[0].classList.add("entrada");
	}
    
    let fechaact = new Date(),
        mes = fechaact.getMonth() + 1,
        mesbd,
        mesPrevbd,
        trued = true;
    
    $.ajax ({
        type: 'POST',
        url: "/inventariogg/phpurl/mesReview.php",
        success:function(data){
            let split = data.split("||");
            
            mesbd = parseInt(split[0]);
            mesPrevbd = parseInt(split[1]);  

            if (mes === mesbd + 1){
                while(trued){
                    let notificación = confirm("ya el mes " + mesbd + " termino. Por favor proceda a hacer el cierre mensual de inventario. Al presionar aceptar se realizara el cierre.");

                    if (notificación === true){
                        trued = false;
                        co();
                    }
                }
            } 
        },
        error: function(){
            alert("No se ha podido establecer conexión con la base de datos");
        }
    });

}
function onerow(){
    var table = document.getElementById("bodyud"); 
               
        
    var elemento = document.createElement("tr"),
        contenido1 = document.createElement("td"),
        contenido2 = document.createElement("td"),
        contenido3 = document.createElement("td"),
        contenido4 = document.createElement("td"),
        contenido5 = document.createElement("td"),
        contenido6 = document.createElement("td"),
        contenido7 = document.createElement("td"),
        contenido8 = document.createElement("td"),
        contenido9 = document.createElement("td"),
        contenido10 = document.createElement("td");
    numero++
        
    var cont1 = document.createElement("input");
    cont1.id = "codigo_" + numero;
    cont1.classList.add("cp");
    cont1.placeholder = "Codigo";
    cont1.addEventListener("dblclick", autocomplete);
	cont1.setAttribute("list", "codigos");
        
    var cont2 = document.createElement("input");
    cont2.id = "descripcion_" + numero;
    cont2.classList.add("desc");
    cont2.placeholder = "Descripción";
    cont2.setAttribute("width", "60%");
    cont2.addEventListener("dblclick", autocomplete);
    cont2.setAttribute("list", "Productos");

    var cont3 = document.createElement("input");
    cont3.id = "deposito_" + numero;
    cont3.classList.add("co");
    cont3.placeholder = "Deposito";
    cont3.addEventListener("keyup", autocomplete);
    
    var cont4 = document.createElement("input");
    cont4.id = "costo_" + numero;
    cont4.readOnly = true;
    cont4.classList.add("co");
    cont4.placeholder = "Costo";
    
    var cont5 = document.createElement("input");
    cont5.id = "coston_" + numero;
    cont5.classList.add("co");
    cont5.placeholder = "Costo";
        
    var cont6 = document.createElement("input");
    cont6.id = "cant_" + numero;
    cont6.classList.add("cap");
    cont6.placeholder = "Ctd";

    var cont7 = document.createElement("input");
	cont7.id = "und_" + numero;
    cont7.classList.add("und");
    cont7.placeholder = "Unidad";
	cont7.readOnly = true;	

    var cont8 = document.createElement("input");
    cont8.id = "cantidadn_" + numero;
    cont8.classList.add("cantn");
    cont8.placeholder = "Ctd";
	
    var cont9 = document.createElement("select");
	cont9.id = "undn_" + numero;
    cont9.classList.add("und");
    cont9.placeholder = "Unidad";
    let options = ["Centímetros",
        "Mililitros",
        "Litros",
        "Metros",
        "Kilogramos",
        "Gramos",
        "Pulgadas",
        "Pies",
        "Yarda",
        "Toneladas",
        "Onzas",
        "Libras",
        "Galones",
        "Docenas",
        "Decenas",
		"Unidades"
    ];
	for (let i = 0; i < options.length; i++) {
        let option = document.createElement("option");
        let text = document.createTextNode(options[i]);
        option.appendChild(text);
        cont9.appendChild(option);
    }
	
    var cont10 = document.createTextNode("X");    
        
    
    contenido1.appendChild(cont1);
    contenido2.appendChild(cont2);
    contenido3.appendChild(cont3);
    contenido4.appendChild(cont4);
    contenido5.appendChild(cont5);   
    contenido6.appendChild(cont6);   
    contenido7.appendChild(cont7); 
    contenido8.appendChild(cont8);
    contenido9.appendChild(cont9);
    contenido10.appendChild(cont10); 
    contenido10.classList.add("clearRow");
        
        
    elemento.id = numero;
    elemento.addEventListener("keyup", actcosto);
    elemento.addEventListener("click", actcosto);

    elemento.appendChild(contenido1);
    elemento.appendChild(contenido2);
    elemento.appendChild(contenido3);
    elemento.appendChild(contenido4);
    elemento.appendChild(contenido5);
    elemento.appendChild(contenido6);
    elemento.appendChild(contenido7);
    elemento.appendChild(contenido8);
    elemento.appendChild(contenido9);
    elemento.appendChild(contenido10);
           
    table.appendChild(elemento);
    $(".clearRow").off();
    $('.clearRow').click(clearRow);
};
function autocomplete() {
    var num = parseFloat(numero),
        tbody = document.getElementById("bodyud"),
        negativoparce = true;
	
	// verificacion de existencia
	if(this.id == "descripcion_" + this.parentNode.parentNode.id){
		for(var n = 1; n <= numero; n++){
			if(n != this.parentNode.parentNode.id){
				if(document.getElementById(this.id).value === document.getElementById("descripcion_" + n).value){
					alert("codigo ya ingresado");
					return
				}	
			}
		}
	}
	else if (this.id === "codigo_" + this.parentNode.parentNode.id){
		for(var n = 1; n <= numero; n++){
			if(n != this.parentNode.parentNode.id){
				if(document.getElementById(this.id).value === document.getElementById("codigo_"+ n).value){
					alert("codigo ya ingresado");
					return
				}	
			}
		}
	}
	
    //variables de auto completado por td-codigo o td-descripcion por ajax
    let codigo = this.parentNode.parentNode.id,
        descripcion = "descripcion_" + codigo,
        codi = "codigo_" + codigo,
        deposito = "deposito_" + codigo,
        id = this.id,
        cadena = "id=" + this.value + "&numero=" + numero,
        fakeson = this.parentNode.parentNode;
    
    
    if (id === codi || id === descripcion){
        $.ajax({
            type:'POST',
            url:"/inventariogg/phpurl/traerDatos.php",
            data:cadena,
            success:function(data){
				var everything = JSON.parse(data);
				if(everything.codigo == "" || everything.producto == ""){
					alert("Error, información de producto no encontrada. La información pudo ser borrada o manipulada");
				}
                if (negativoparce === false){
                    borrar();
                } 
				else if (id === codi){
                    document.getElementById("descripcion_" + codigo).value = everything.producto;
                } 
				else if (id === descripcion){
                    document.getElementById("codigo_" + codigo).value = everything.codigo;     
				}
				
				document.getElementById("costo_" + codigo).value = everything.costo;
				document.getElementById("und_" + codigo).value = everything.und;
				document.getElementById("undn_" + codigo).innerHTML = "";
				
				var und = everything.und;					
				if(und == "Unidades" || und == "Decenas" || und == "Docenas"){

					let options = ["Unidades","Decenas","Docenas"];
					for (let i = 0; i < options.length; i++) {
						let option = document.createElement("option");
						let text = document.createTextNode(options[i]);

						option.appendChild(text);
						document.getElementById("undn_" + codigo).appendChild(option);
					}
				} 
				else if(und == "Mililitros" || und == "Litros" || und == "Galones"){

					let options = ["Mililitros","Litros","Galones"];
					for (let i = 0; i < options.length; i++) {
						let option = document.createElement("option");
						let text = document.createTextNode(options[i]);

						option.appendChild(text);
						document.getElementById("undn_" + codigo).appendChild(option);
					}
				} 
				else if(und == "Centímetros" || und == "Metros" || und == "Pulgadas" || und == "Pies" || und == "Yarda"){

					let options = ["Centímetros","Metros","Pulgadas","Pies","Yarda"];
					for (let i = 0; i < options.length; i++) {
						let option = document.createElement("option");
						let text = document.createTextNode(options[i]);

						option.appendChild(text);
						document.getElementById("undn_" + codigo).appendChild(option);
					}
				} 
				else if(und == "Kilogramos" || und == "Gramos" || und == "Toneladas" || und == "Onzas" || und == "Libras"){

					let options = ["Kilogramos","Gramos","Toneladas","Onzas","Libras"];
					for (let i = 0; i < options.length; i++) {
						let option = document.createElement("option");
						let text = document.createTextNode(options[i]);

						option.appendChild(text);
						document.getElementById("undn_" + codigo).appendChild(option);
					}
				}

				document.getElementById("undn_" + codigo).value = everything.und;
				
				camino = "hermanos";
                buscar_deposito();
                if (everything.numero != null){
					numero = everything.numero;
				}
				if (numero > 1 && everything.con > 1){
					var prueba = document.createElement("tbody");
					prueba.innerHTML = everything.html;

					var hijo = prueba.childNodes,
						ref = document.getElementById("descripcion_" + codigo).parentNode.parentNode;

					for (var i = 0; i < hijo.length; i++){
						tbody.insertBefore(hijo[i], ref.nextSibling);
						i--;
					}
					var num1 = parseInt(ref.id);
					var num2 = parseInt(ref.nextSibling.id);
					
					for (var i = num1; i < numero ; i++){
						var x = i + 1;
						if(num2 !== x){
							document.getElementById(x).id = num2;
							document.getElementById("codigo_" + x).id = "codigo_" + num2;
							document.getElementById("descripcion_" + x).id = "descripcion_" + num2;
							document.getElementById("deposito_" + x).id = "deposito_" + num2;
							document.getElementById("costo_" + x).id = "costo_" + num2;
							document.getElementById("coston_" + x).id = "coston_" + num2;
							document.getElementById("cant_" + x).id = "cant_" + num2;
							document.getElementById("cantidadn_" + x).id = "cantidadn_" + num2;
							document.getElementById("und_" + x).id = "und_" + num2;
							document.getElementById("undn_" + x).id = "undn_" + num2;

							document.getElementById(num2).id = x;
							document.getElementById("codigo_" + num2).id = "codigo_" + x;
							document.getElementById("descripcion_" + num2).id = "descripcion_" + x;
							document.getElementById("deposito_" + num2).id = "deposito_" + x;
							document.getElementById("costo_" + num2).id = "costo_" + x;
							document.getElementById("coston_" + num2).id = "coston_" + x;
							document.getElementById("cant_" + num2).id = "cant_" + x;
							document.getElementById("cantidadn_" + num2).id = "cantidadn_" + x;
							document.getElementById("und_" + num2).id = "und_" + x;
							document.getElementById("undn_" + num2).id = "undn_" + x;

							var ref_i = document.getElementById(x);
							if(i !== numero -1){
							   num2 = ref_i.nextSibling.id;
							}
						}
						else {
							var ref_i = document.getElementById(x);
							num2 = ref_i.nextSibling.id;
						}
					}
					for (var i = 1; i <= numero; i++){
						document.getElementById(i).addEventListener("keyup", actcosto);
						document.getElementById(i).addEventListener("click", actcosto);
						
						document.getElementById("codigo_" + i).addEventListener("dblclick", autocomplete);
						document.getElementById("descripcion_" + i).addEventListener("dblclick", autocomplete);
						
						$(".clearRow").off();
						$('.clearRow').click(clearRow);

					}
					var cuenta = parseInt(codigo);
					for (var i = cuenta + 1; i <= numero; i++){
						document.getElementById("undn_" + i).value = document.getElementById("und_" + i).value;
					}
				}
				actcosto();
            },
            error:function(){
                alert("Error, producto no encontrado");
            }
        })
    } 
	else if (id === deposito){
        camino = "deposito";
        let descripcion = "descripcion=" + document.getElementById("descripcion_" + codigo).value + "&deposito=" + this.value + "&camino=" + camino;
            
        $.ajax({
            type:'POST',
            url:"/inventariogg/phpurl/traerDeposito.php",
            data:descripcion,
            success:function(data){
                var everything = JSON.parse(data);
                document.getElementById("cant_" + codigo).value = everything.cantidad;
                max_n = everything.contador;
                camino = "";
            },
            error:function(){
                alert("Error, producto no encontrado");
            }
        });
    } 
    function borrar(){
        fakeson.childNodes[0].childNodes[0].value = "";
        fakeson.childNodes[1].childNodes[0].value = "";
        fakeson.childNodes[2].childNodes[0].value = "";
        fakeson.childNodes[3].childNodes[0].value = "";
        fakeson.childNodes[4].childNodes[0].value = "";
        fakeson.childNodes[5].childNodes[0].value = "";
    }
    function buscar_deposito(){
        let descripcion = "descripcion=" + document.getElementById("descripcion_" + codigo).value + "&camino=" + camino + "&depa=" + dep_a ;
        $.ajax({
            type:'POST',
            url:"/inventariogg/phpurl/traerDeposito.php",
            data:descripcion,
            success:function(data){

                var everything = JSON.parse(data);
                if (data === '{"vacio":"vacio"}'){
                    alert("producto ya ingresado totalmente");
                    borrar();
                } else{
                    document.getElementById("deposito_" + codigo).value = everything.deposito;
                    document.getElementById("cant_" + codigo).value = everything.cantidad;      
                    camino = "";

                    dep_a = everything.deposito;
                }
            },
            error:function(){
                alert("Error, producto no encontrado");
            }
        })    

    }
}
function rellebartabla(){
    let department = document.getElementById("tipoproducto-input").value;
    let deposit = document.getElementById("deposito-input").value;
    let order = document.getElementById("ordenar-input").value;
    let cadena = "department=" + department +
                 "&deposit=" + deposit +
                 "&order=" + order;
    let tbody = document.getElementById("bodyud"),
        num;
    
    if (tbody != null){
        tbody.innerHTML = "";
    }
        
    $.ajax({
        type:'POST',
        url:"/inventariogg/phpurl/ingresardatostable.php",
        data: cadena,
        success:function(data){
            let split = data.split("||");
            tbody.innerHTML += split[0];
            numero = split[1];
            
            for (var i = 1; i <= numero; i++){
                var cuerpo = document.getElementById(i);       
                cuerpo.addEventListener("keyup", actcosto);
                cuerpo.addEventListener("click", actcosto);
                $(".clearRow").off();
                $('.clearRow').click(clearRow);
                
            };
			for (var i = 1; i <= numero; i++){
				document.getElementById("undn_" + i).value = document.getElementById("und_" + i).value;
			}
			actcosto();
        },
        error:function(){
            alert("Error, productos no encontrado");
        }
    })
}
function actcosto(){
    let m1= document.getElementById("costo1"),
        m2 = document.getElementById("costo2"),
        m3 = document.getElementById("prodM"),
        num = parseFloat(numero),
        result = 0,
        resulto = 0;
        
    for (var i = 1 ; i <= num ; i++){
        let c3 = document.getElementById("costo_" + i).value;
        
        
        if (c3 != ""){
            var num1 = parseFloat(c3);
            result = result + num1;
        }
    };
    
    for (var i = 1 ; i <= num ; i++){
        let c4 = document.getElementById("coston_" + i).value;
        
        
        if (c4 != ""){
            var num1 = parseFloat(c4);
            resulto = resulto + num1;
        }
    };
    
    
    m1.innerHTML = result;
    m2.innerHTML = resulto;
    m3.innerHTML = numero;
        
}
function reporte(){
    let cadenar = "";
    
    for(var n = 1; n<=numero; n++) {
        let costoN = document.getElementById("coston_" + n).value,
            cantidadN = document.getElementById("cantidadn_" + n).value;
            
		if(costoN != "" && cantidadN != ""){
        	if(n==1){
            	cadenar = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&Producto" + n + "=" + document.getElementById("descripcion_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value +
                         "&und" + n + "=" + document.getElementById("und_" + n).value +
                         "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            } else{
                cadenar = cadenar +
                         "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&Producto" + n + "=" + document.getElementById("descripcion_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value +
						 "&und" + n + "=" + document.getElementById("und_" + n).value +
						 "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            };
        } else if (costoN === "" && cantidadN != ""){
        	if(n==1){
            	cadenar = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&Producto" + n + "=" + document.getElementById("descripcion_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("costo_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value +
                         "&und" + n + "=" + document.getElementById("und_" + n).value +
                         "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            } else{
                cadenar = cadenar +
                         "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&Producto" + n + "=" + document.getElementById("descripcion_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("costo_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value +
                         "&und" + n + "=" + document.getElementById("und_" + n).value +
                         "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            };
        } else if (costoN != "" && cantidadN === ""){
        	if(n==1){
            	cadenar = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&Producto" + n + "=" + document.getElementById("descripcion_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cant_" + n).value +
                         "&und" + n + "=" + document.getElementById("und_" + n).value +
                         "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            } else{
                cadenar = cadenar +
                         "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&Producto" + n + "=" + document.getElementById("descripcion_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cant_" + n).value +
                         "&und" + n + "=" + document.getElementById("und_" + n).value +
                         "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            };
		}
    }
    cadenar = cadenar + "&numero=" + numero + "&n_ajuste=" + n_ajuste.innerHTML + "&usuario=" + usuario + "&usuario2=" + usuario2;
    
    $.ajax({
            type: 'POST',
            url: "/inventariogg/modeloreporte.php",
            data:cadenar,
            success: function(){
                moverarchivo();
            },
            error: function(){
                alert("Reporte no realizado");
            }
    });
}
function moverarchivo(){
    let dato = "n_ajuste=" + n_ajuste.innerHTML +
               "&posicion=" + positon;
    
    setTimeout(function(){
    $.ajax({
        type: 'POST',
        url: "/inventariogg/phpurl/moverarchivo.php",
        data:dato,
        success: function(){
            window.open("./phpurl/comprobantesauditoria/auditoria-comprobante" + n_ajuste.innerHTML + ".pdf", '_blank');
//            location.reload();
			
        },
        error: function(){
            alert("movimiento no realizado");
        }
    });
 } ,1000);

}
function actualizarDatos(){
    let cadena = "",
        thereAreChange = true;
        
    
    for(var n = 1; n<=numero; n++) {
        let costoN = document.getElementById("coston_" + n).value,
            cantidadN = document.getElementById("cantidadn_" + n).value;
            
        
        if(costoN != "" && cantidadN != ""){
            if(n==1){
            cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
						 "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).val +
                         "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            } else{
                cadena = cadena +
                         "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                         "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                         "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
						 "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                         "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                         "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value +
                         "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            };
        } else if (costoN === "" && cantidadN != ""){
            if(n==1){
                cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                            "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                            "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                            "&costo2" + n + "=" + document.getElementById("costo_" + n).value +
                            "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                            "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value +
                        	"&undN" + n + "=" + document.getElementById("undn_" + n).value;
                } else{
                    cadena = cadena +
                             "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                             "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                             "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                             "&costo2" + n + "=" + document.getElementById("costo_" + n).value +
                             "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                             "&cantidad2" + n + "=" + document.getElementById("cantidadn_" + n).value +
                        	 "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            };
        } else if (costoN != "" && cantidadN === ""){
            if(n==1){
                cadena = "id" + n + "=" + document.getElementById("codigo_" + n).value +
                            "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                             "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
							 "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                             "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                             "&cantidad2" + n + "=" + document.getElementById("cant_" + n).value +
                        	 "&undN" + n + "=" + document.getElementById("undn_" + n).value;
                } else{
                    cadena = cadena +
                             "&id" + n + "=" + document.getElementById("codigo_" + n).value +
                             "&deposito" + n + "=" + document.getElementById("deposito_" + n).value +
                             "&costo2" + n + "=" + document.getElementById("coston_" + n).value +
							 "&costo1" + n + "=" + document.getElementById("costo_" + n).value +
                             "&cantidad" + n + "=" + document.getElementById("cant_" + n).value +
                             "&cantidad2" + n + "=" + document.getElementById("cant_" + n).value +
                        	 "&undN" + n + "=" + document.getElementById("undn_" + n).value;
            };     
        } else if (costoN === "" && cantidadN === ""){
            alert("Valores sin rellenar. Por favor rellenar para continuar");
            thereAreChange = false;
        };
    };

    if (thereAreChange){
        cadena = cadena + "&numero=" + numero;
        
        
        
        $.ajax({
            type: 'POST',
            url: "/inventariogg/phpurl/audiroria-actualizadatos.php",
            data:cadena,
            success: function(){
                reporte();
            },
            error: function(){
                alert("No se ha podido establecer conexión con la base de datos");
            }
        });
    }
}
function cuadroinfoajuste(){  
    $.ajax({
        type:'POST',
        url:"/inventariogg/phpurl/numerodeajuste.php",
        success:function(data){
            n_ajuste.innerHTML = parseInt(data) + 1;           
        },
        error:function(){
                    alert("Error, productos no encontrado");
        }
    })
}
function clearRow(){
    var mensaje = confirm("¿Desea eliminar ésta fila?");
    if(this.parentNode.id == numero && mensaje == true){
        var column = this.parentNode,
            rowx = column.parentNode;
        rowx.removeChild(column);
        numero--;
        actcosto();
        
    } else if (mensaje == true){
        var num1 = parseInt(this.parentNode.nextSibling.id),
            column = this.parentNode,
            rowx = column.parentNode;
        rowx.removeChild(column);
        for (var i = num1 ; i <= numero ; i++){
            var x = i-1;
            document.getElementById(i).id = x;
            document.getElementById("codigo_" + i).id = "codigo_" + x;
            document.getElementById("descripcion_" + i).id = "descripcion_" + x;
            document.getElementById("deposito_" + i).id = "deposito_" + x;
            document.getElementById("costo_" + i).id = "costo_" + x;
            document.getElementById("coston_" + i).id = "coston_" + x;
            document.getElementById("cant_" + i).id = "cant_" + x;
            document.getElementById("cantidadn_" + i).id = "cantidadn_" + x;
            document.getElementById("und_" + i).id = "und_" + x;
            document.getElementById("undn_" + i).id = "undn_" + x;
        };
        numero--;
        actcosto();
    };
}
function clearall(){
    var mensaje = confirm("¿Desea eliminar todo");
    if(mensaje == true){
        let aborto = document.getElementById("bodyud");

        if (aborto != null){
            aborto.innerHTML = "";
            $('#one').off();
            $('#one').click(onerow);
            numero = 0;
            actcosto();
        }
    }
}
function usuarioT() {
//	console.log(localStorage.getItem("getvalue"));
//	console.log(localStorage.getItem("getvalue2"));
	usuario = localStorage.getItem("getvalue2");
	usuario2 = localStorage.getItem("getvalue");
}
usuarioT();
