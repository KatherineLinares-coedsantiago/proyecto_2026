//
const formulario = document.getElementById('agregar_producto');
console.log("Sistema de validación activa");
formulario.addEventListener('submit',function(e){
    e.preventDefault();
    const inputNombre = document.getElementById('txtNombre');
    const inputStock = document.getElementById('numStock');
    const inputCategoria = document.getElementById('selCat');
    const inputFecha = document.getElementById('fecha');
    const inputPrecio = document.getElementById('precio');
});