--SELECT nombre_cat AS "Categoría", nombre_prod AS "Producto",
-- precio AS "Precio Unitario" FROM productos INNER JOIN categorias
-- ON productos.id_categoria = categorias.id_categoria;

--Unimos las tablas productos y categoria ordenadas por el nombre del producto.
 --SELECT nombre_cat AS "Categoría", nombre_prod AS "Producto",
 --precio AS "Precio Unitario", stock AS "Existencia" 
 --FROM productos p INNER JOIN categorias c
 --ON p.id_categoria = c.id_categoria ORDER BY p.nombre_prod;

 --Mostramos los productos que valgan menos de $50.00.
 --SELECT nombre_cat AS "Categoría", nombre_prod AS "Producto",
 --precio AS "Precio Unitario", stock AS "Existencia" 
 --FROM productos p INNER JOIN categorias c
 --ON p.id_categoria = c.id_categoria WHERE p.precio < 50.00 ORDER BY p.nombre_prod;

 --DELETE FROM productos WHERE id_producto = 8;

 --SELECT id_producto FROM productos;