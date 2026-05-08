// 1. Expresión regular (Global)
const patronTexto = /^[A-Za-z\s]+$/;
const patronEmail = /^[a-z0-9._-]+@[a-z0-9.-]+\.[a-z]{2,6}$/;
const formulario = document.getElementById('agregar_producto');

//La consola muestra la validación
console.log("Sistema de validación activo");

//Validamos el formulario al intentar enviarlo.
function validarFormulario() {
    
    // Inicializamos el contador cada vez que se intenta enviar
    let errores = 0;

    // CAPTURA DE ELEMENTOS (Referencia al input para cambiar estilos)
    const inputNombre = document.getElementById('txtNombre');
    const inputStock = document.getElementById('numStock');
    const inputFecha = document.getElementById('fecha');
    const inputPrecio = document.getElementById('precio');
    const inputEmail = document.getElementById('txtEmail');
    // CAPTURA DE VALORES
    let valorNombre = inputNombre.value.trim(); // .trim() elimina espacios vacíos al inicio/final
    let valorStock = inputStock.value;
    let valorFecha = inputFecha.value;
    let valorPrecio = inputPrecio.value;
    let valorEmail = inputEmail.value;

    //Bordes cuando los input están vacíos.
    inputNombre.classList.remove('error-borde');
    inputPrecio.classList.remove('error-borde');
    inputStock.classList.remove('error-borde');

    //La consola muestra el valor del nombre para verificar que se captura correctamente.
    console.log("Validando datos de: " + valorNombre);

    // --- VALIDACIÓN DE NOMBRE ---
    if (!patronTexto.test(valorNombre)) {
        //alert("Error: el nombre debe contener letras y espacios");
        //Muestra el error con SweetAlert.
        Swal.fire({
            icon: 'error',
            title: '¡Cuidado!',
            text: 'El nombre de la flor es obligatorio',
           // confirmButtonColor: #dd3
        });
        errores++;
        inputNombre.style.border = "2px solid red";
        //Si el nombre no cumple con el patrón, se agrega la clase de error para mostrar el borde rojo.
    } else if (valorNombre.length < 3) {
        alert("El nombre es muy corto (mínimo 3 caracteres)");
        errores++;
        inputNombre.style.border = "2px solid red";
        inputNombre.classList.add('error-borde');
    } else if (valorNombre.length > 50) {
        alert("El nombre es muy largo (máximo 50 caracteres)");
        errores++;
        inputNombre.style.border = "2px solid red";
    } else {
        //inputNombre.style.border = "2px solid green";
    }

    // --- VALIDACIÓN DE STOCK ---
    if (valorStock === "" || parseInt(valorStock) <= 0) {
        //alert("La existencia debe ser un número mayor a cero");
        inputStock.classList.add('error-borde');
        Swal.fire({
            icon: 'error',
            title: 'Stock',
            text: 'Verifica la cantidad ingresada',
            //confirmButtonColor: #dd3
        });
        errores++;
        inputStock.style.border = "2px solid red";
    } else {
       // inputStock.style.border = "2px solid green";
    }

    // --- VALIDACIÓN DE FECHA ---
    if (valorFecha === "") {
        alert("Por favor, seleccione una fecha");
        errores++;
    }

    // --- VALIDACIÓN DE PRECIO ---
    let precioNum = parseFloat(valorPrecio);
    if (valorPrecio === "" || isNaN(precioNum) || precioNum <= 0) {
        //Borde rojo cuando hay error.
        inputPrecio.classList.add('error-borde');
        alert("El precio debe ser un número mayor a cero");
        errores++;
        inputPrecio.style.border = "2px solid red";
    } else if (precioNum > 1000) {
        alert("Precio fuera de rango (máximo 1000)");
        errores++;
        inputPrecio.style.border = "2px solid red";
    } else {
        inputPrecio.style.border = "2px solid green";
    }

    //Validamos el correo electronico
    if(!patronEmail.test(valorEmail)){
        alert("Error: el email debe llevar el formato adecuado");
        errores++;
        inputEmail.style.border = "2px solid red";
    }else if(valorEmail === ""){
        alert("Por favor, debe especificar un correo");
    }

    // Retornamos true si no hay errores, false si hay al menos uno
    return errores === 0;
}

// 2. ESCUCHADOR DE EVENTO
formulario.addEventListener('submit', function(e) {
    // Si la validación falla (retorna false)
    if (!validarFormulario()) {
        e.preventDefault(); // Detiene el envío a registro.php
        console.log("Envío cancelado: hay errores en el formulario");
    } else {
        console.log("Todo correcto. Enviando datos...");
        // El formulario se enviará normalmente a registro.php
    }
});