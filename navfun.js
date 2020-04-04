$(document).ready(function(){
    
	$("li[id=btna]").click(function () {
        alert("1");
        document.getElementById("provedor").classList.remove("hidden") ;
        document.getElementById("provedor").classList.add("hiddentry") ;
        document.getElementById("btna").classList.add("active") ; 
        
        document.getElementById("ingreso").classList.add("hidden") ;
        document.getElementById("ingreso").classList.remove("hiddentry");
        document.getElementById("btnb").classList.remove("active") ;
                                        
        document.getElementById("producto").classList.add("hidden") ;
        document.getElementById("producto").classList.remove("hiddentry");
        document.getElementById("btnc").classList.remove("active") ;
                                        
        document.getElementById("traslado").classList.add("hidden") ;
        document.getElementById("traslado").classList.remove("hiddentry");
        document.getElementById("btnd").classList.remove("active") ;
                                        
        document.getElementById("movimiento").classList.add("hidden") ;
        document.getElementById("movimiento").classList.remove("hiddentry");
        document.getElementById("btne").classList.remove("active") ;
                                        
	});
    
	$("li[id=btnb]").click(function () {
                alert("2");
        document.getElementById("ingreso").classList.remove("hidden") ;
         document.getElementById("ingreso").classList.add("hiddentry") ;
         document.getElementById("btnb").classList.add("active") ;
        
        document.getElementById("provedor").classList.add("hidden") ;
        document.getElementById("provedor").classList.remove("hiddentry");
        document.getElementById("btna").classList.remove("active") ;
                                        
        document.getElementById("producto").classList.add("hidden") ;
        document.getElementById("producto").classList.remove("hiddentry");
        document.getElementById("btnc").classList.remove("active") ;
                                        
        document.getElementById("traslado").classList.add("hidden") ;
        document.getElementById("traslado").classList.remove("hiddentry");
        document.getElementById("btnd").classList.remove("active") ;
                                        
        document.getElementById("movimiento").classList.add("hidden") ;
        document.getElementById("movimiento").classList.remove("hiddentry");
        document.getElementById("btne").classList.remove("active") ;
	});
    
    $("li[id=btnc]").click(function () {
        alert("3");
        document.getElementById("producto").classList.remove("hidden") ;
         document.getElementById("producto").classList.add("hiddentry") ;
         document.getElementById("btnc").classList.add("active") ;
        
        document.getElementById("ingreso").classList.add("hidden") ;
        document.getElementById("ingreso").classList.remove("hiddentry") ;
        document.getElementById("btnb").classList.remove("active") ;
                                        
        document.getElementById("provedor").classList.add("hidden") ;
        document.getElementById("provedor").classList.remove("hiddentry");
        document.getElementById("btna").classList.remove("active") ;
                                        
        document.getElementById("traslado").classList.add("hidden") ;
        document.getElementById("traslado").classList.remove("hiddentry");
        document.getElementById("btnd").classList.remove("active") ;
                                        
        document.getElementById("movimiento").classList.add("hidden") ;
        document.getElementById("movimiento").classList.remove("hiddentry");
        document.getElementById("btne").classList.remove("active") ;
	});
    
	$("li[id=btnd]").click(function () {
        alert("4");
        document.getElementById("traslado").classList.remove("hidden") ;
        document.getElementById("traslado").classList.add("hiddentry") ;
        document.getElementById("btnd").classList.add("active") ;
        
                 
        document.getElementById("producto").classList.add("hidden") ;
        document.getElementById("producto").classList.remove("hiddentry");
        document.getElementById("btnc").classList.remove("active") ;
        
        document.getElementById("ingreso").classList.add("hidden") ;
        document.getElementById("ingreso").classList.remove("hiddentry") ;
        document.getElementById("btnb").classList.remove("active") ;
                                     
        document.getElementById("provedor").classList.add("hidden") ;
        document.getElementById("provedor").classList.remove("hiddentry");
        document.getElementById("btna").classList.remove("active") ;
                      
        document.getElementById("movimiento").classList.add("hidden") ;
        document.getElementById("movimiento").classList.remove("hiddentry");
        document.getElementById("btne").classList.remove("active") ;
	});
    
	$("li[id=btne]").click(function () {
        alert("5");
        document.getElementById("movimiento").classList.remove("hidden") ;
        document.getElementById("movimiento").classList.add("hiddentry") ;
        document.getElementById("btne").classList.add("active") ;
        
        document.getElementById("traslado").classList.add("hidden") ;
        document.getElementById("traslado").classList.remove("hiddentry");
        document.getElementById("btnd").classList.remove("active") ;
        
        document.getElementById("producto").classList.add("hidden") ;
        document.getElementById("producto").classList.remove("hiddentry");
        document.getElementById("btnc").classList.remove("active") ;
        
        document.getElementById("ingreso").classList.add("hidden") ;
        document.getElementById("ingreso").classList.remove("hiddentry") ;
        document.getElementById("btnb").classList.remove("active") ;
                                        
        document.getElementById("provedor").classList.add("hidden") ;
        document.getElementById("provedor").classList.remove("hiddentry");
        document.getElementById("btna").classList.remove("active") ;
	});
    
});

