document.getElementById("enterbutton").addEventListener("click", prove);
document.getElementById("eyebt").addEventListener("click", mostrarpass);

function mostrarpass() {
    if (this.className == "icon-eye-slash") {
        this.classList.remove("icon-eye-slash");
        this.classList.add("icon-eye");
        document.getElementById("pass-lb").setAttribute("type", "text");
    } else if (this.className == "icon-eye") {
        this.classList.add("icon-eye-slash");
        this.classList.remove("icon-eye");
        document.getElementById("pass-lb").setAttribute("type", "password");
    }
}

function prove() {
    var username = document.getElementById("user-lb"),
        clavei = document.getElementById('pass-lb'),
        usernombre = "",
        userubicacion = "",
        nom = document.getElementById('estatusnombre'),
        ape = document.getElementById('estatusapellido'),
        adm,
        est = document.getElementById('estatusacceso'),
        niv1 = "",
        niv2 = "",
        niv3 = "",
        niv4 = "",
        niv5 = "",
        nombre = "";;

    $.ajax({
        type: 'POST',
        url: '/inventariogg/phpurl/inicioseccion.php?accion=acceso',
        data: ({
            user: username.value,
            clave: clavei.value,
        }),
        success: function(resultado) {
            var javaobj = JSON.parse(resultado);
            console.log(javaobj)
            adm = javaobj.Admin;
            username = javaobj.Usuario;
            usernombre = javaobj.Nombres + " " + javaobj.Apellidos;
            userubicacion = javaobj.Ubicacion;

            nom.innerHTML = javaobj.Nombres;
            ape.innerHTML = javaobj.Apellidos;
            est.innerHTML = javaobj.Estatus;

            niv1 = javaobj.Nivel1;
            niv2 = javaobj.Nivel2;
            niv3 = javaobj.Nivel3;
            niv4 = javaobj.Nivel4;
            niv5 = javaobj.Nivel5;

            localStorage.setItem("getvalue", username);
            localStorage.setItem("getvalue2", usernombre);
            localStorage.setItem("getvalue3", userubicacion);
            localStorage.setItem("getvalue4", est.innerHTML);
            localStorage.setItem("getvalue5", niv1);
            localStorage.setItem("getvalue6", niv2);
            localStorage.setItem("getvalue7", niv3);
            localStorage.setItem("getvalue8", niv4);
            localStorage.setItem("getvalue9", niv5);
            localStorage.setItem("getvalue10", adm);

            for (var i = 0; i < nom.length; i++) {
                nombre = nombre + nom[i];
                if (nom[i] === " ") {
                    // alert(nombre)
                    break
                }
            }
            if (est.innerHTML == "permitido") {
                getout();
            } else if (est.innerHTML == "denegado") {
                alert("No entró");
            }
        },
    });
}

function getout() {
    document.getElementsByTagName("body")[0].classList.add("salida");
    setTimeout(window.open("/inventariogg/menuprincipal.html", "_self"), 675);

}