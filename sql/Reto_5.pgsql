SELECT nombre_cat AS "Categorías", nombre_prod AS "Flores",
precio AS "Precio Unitario" FROM productos INNER JOIN categorias
ON productos.id_categoria = categorias.id_categoria; 