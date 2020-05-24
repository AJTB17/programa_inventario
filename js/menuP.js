window.addEventListener("load", nivel);

function nivel(){ 
	var niv1 = localStorage.getItem("getvalue5"),
	    niv2 = localStorage.getItem("getvalue6"),
	    niv3 = localStorage.getItem("getvalue7"),
	    niv4 = localStorage.getItem("getvalue8"),
	    niv5 = localStorage.getItem("getvalue9"),
		bohio = document.getElementById("bohio"),
		man = document.getElementById("mantenimiento"),
		hotel = document.getElementById("hotelero"),
		rest = document.getElementById("restaurant"),
		inv = document.getElementById("inventario");
	
	if(niv1=="0"){
		bohio.href="";
		bohio.innerHTML="Reservas Bohio No Autorizado";
		bohio.classList="box noauto";
		man.href="";
		man.innerHTML="Mantenimiento No Autorizado";
		man.classList="box noauto";
	}
	if(niv2=="0"){
		hotel.href="";
		hotel.innerHTML="Modulo Hotelero No Autorizado";
		hotel.classList="box noauto";
	}
	if(niv3=="0"){
		rest.href="";
		rest.innerHTML="Modulo Restaurant No Autorizado";
		rest.classList="box noauto";
	}
	if(niv4=="0"){
		inv.href="";
		inv.innerHTML="Modulo Inventario No Autorizado";
		inv.classList="box noauto";
	}
	if(niv5=="0"){
		man.href="";
		man.innerHTML="Modulo Mantenimiento No Autorizado";
		man.classList="box noauto";
	} 	
}
