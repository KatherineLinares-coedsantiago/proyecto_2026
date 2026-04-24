-- Aquí se unen las tablas.
SELECT nombre_cat AS "Categoría", nombre_prod AS "Producto",
precio AS "Precio Unitario", stock AS "Existencia"
FROM productos p INNER JOIN categorias c 
ON p.id_categoria = c.id_categoria ORDER BY p.nombre_prod;

--Aquí se modifican los nombres con AS para mostrar los nombres de las columnas como queremos.
SELECT nombre_cat AS "Categoría", nombre_prod AS "Producto",
precio AS "Precio Unitario" FROM productos INNER JOIN categorias
ON productos.id_categoria = categorias.id_categoria;

