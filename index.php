<!-- Encabezado dinámico -->
<?php include 'includes/header.php'; ?>
  <main>
    <section>
      <h2>Bienvenidos a Melody Flowers</h2>
        <p>Descubre la magia de las flores con nuestra colección única de flores frescas y hermosas.</p>
    </section>
  </main>
  <!--Formulario de registro de productos-->
  <form id="miformulario" border="1" action="registro.php" method="post">
    <label for="txtNombre">Nombre:</label>
    <input type="text" id="txtNombre" name="nombre_prod" required><br><br>
    <label for="numStock">Cantidad:</label>
    <input type="number" id="numStock" name="stock_prod" min="1" required><br><br>
    <label for="email">Correo electrónico:</label>
    <input type="email" id="email" name="email" required><br><br>
    <label for="selCat">Categoría:</label>
    <select name="categoria_prod" id="selCat">
        <option value="1">Decoración</option>
        <option value="2">Ramo</option>
    </select><br><br>
    <label for="fecha">Fecha de ingreso:</label>
    <input type="date" id="fecha" name="fecha_prod" required><br><br>
    <label for="precio">Precio Unitario:</label>
    <input type="number" id="precio" name="precio_prod" min="0" step="0.01" required><br><br>
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
  <!-- Pie de página dinámico -->
<?php include 'includes/footer.php'; ?>