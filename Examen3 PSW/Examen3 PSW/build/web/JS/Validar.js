
function validare(e) {
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3,4})+$/.test(valor)){
     alert("La dirección de email " + valor + " es correcta.");
    } else {
     alert("La dirección de email es incorrecta.");
    }
  }
  
  
  //Validar en blanco
  function validarblanco(e){
    var correo = document.formulario.email.value; 
var nom = document.formulario.nombre.value;
var ps = document.formulario.password.value;
var ed = document.formulario.edad.value;

if ((correo == "")  (nom == "")  (ps == "") || (ed == "")) {
    alert("Los campos no pueden quedar vacios");
    return false;
}
}

function validar(e) {
 if (e.target.value.trim() == "")
  alert("debe ingresar un valor en el campo");
 else
  alert("ingreso "+e.target.value.trim()+", es correcto!");
}



//Validar solo numeros
function validarn(e){
    var teclado = (document.all)?e.keyCode:e.which;
    if(teclado == 8)return true;

    var patron = /[0-9\d .]/;

    var prueba = String.fromCharCode(teclado);
    return patron.test(prueba);
}

//Validar solo palabras y espcacions

function validarp(e){
    var teclado = (document.all)?e.keyCode:e.which;
    if(teclado == 8)return true;

    var patron = /^[a-zA-Z ]*$/;

    var prueba = String.fromCharCode(teclado);
    return patron.test(prueba);
}



