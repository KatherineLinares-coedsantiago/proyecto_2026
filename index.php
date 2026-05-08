<!-- Encabezado dinámico -->
<?php  include 'includes/header.php'; ?>

  <main>
    <section>
      <h2>Bienvenidos a Melody Flowers</h2>
        <p>Descubre la magia de las flores con nuestra colección única de flores frescas y hermosas.</p>
    </section>
  </main>
  <!--Formulario de registro de productos-->
  <form id="agregar_producto" border="1" action="registro.php" method="post">
    <label for="txtNombre">Nombre:</label>
    <input type="text" id="txtNombre" name="txtNombre"><br><br>
    <label for="numStock">Cantidad:</label>
    <input type="number" id="numStock" name="numStock"><br><br>
    <label for="selCat">Categoría:</label>
    <select name="categoria_prod" id="selCat">
        <option value="1">Decoración</option>
        <option value="2">Ramo</option>
    </select><br><br>
    <label for="fecha">Fecha de ingreso:</label>
    <input type="date" id="fecha" name="fecha"><br><br>
    <label for="precio">Precio Unitario:</label>
    <input type="number" id="precio" name="precio"><br><br>
    <label for="txtEmail">Correo Electronico: </label>
    <input type="text" id = "txtEmail" name = "txtEmail"><br><br>
    <button class="Guardar-Inventario" type="submit">Guardar en Inventario</button>
    <button class="limpiar" type="reset">Limpiar</button>
  </form>
  <!--Tabla de productos en stock-->
  <div class="tabla-responsiva">
    <table id="mitabla" border="1"> 
      <thead>
        <th class="columna-eliminada">Número</th>  
        <th>Producto</th>
        <th>Categoría</th>
        <th>Cantidad</th>
        <th></th>
        <th></th>
        <th>Imagen</th>
    </thead>
    <tbody id="tablainventario">
      <tr>
          <td class="columna-eliminada">1</td>
          <td>Arreglo de flores herberas</td>
          <td>Ramo</td>
          <td>50</td>
          <td><button>Editar</button></td>
          <td><button>Eliminar</button></td>
          <td><img src="assets/img/Herberas.jpg" alt="Imagen del producto" width="100" height="100"></td>
        </tr>
    </tbody>
    </table>
  </div>
  <div class="contenedor-resumen">
    <p>Resumen de productos</p>
    <div class="tarjeta">
      <p>Productos</p>
    </div>
    <div class="tarjeta">
      <p>Ventas</p>
    </div>
    <div class="tarjeta">
      <p>Usuarios</p>
    </div>
  </div>
  <script src="js/validar.js"></script>
  <!-- Pie de página dinámico -->
<?php include 'includes/footer.php'; ?>