--Mostramos todos los productos.
--SELECT * FROM productos;

--Actualizamos el primer id.
--UPDATE productos SET nombre_prod = 'Ramos' WHERE id_producto = 3;

--Modificamos el precio de un producto.
--UPDATE productos SET precio = 25.00 WHERE id_producto = 3;

--Mostramos el producto que tiene un id_producto igual a 3.
--SELECT * FROM productos WHERE id_producto = 3;

--Modificamos todos los precios de la tabla a causa de la inflación.
--UPDATE productos SET precio = precio*1.10;

--Actualizamos el precio y el stock de un producto.
--UPDATE productos SET precio = 15.00, stock = 50 WHERE id_producto = 3;

--UPDATE productos SET stock = 0 WHERE id_producto = 3;

--DELETE FROM productos WHERE stock = 0;

--DELETE FROM categorias WHERE id_categoria = 1;

--DELETE FROM usuarios WHERE id_usuario = 3;

--SELECT * FROM usuarios;

--UPDATE productos SET stock = 4 WHERE id_producto = 5;

--SELECT * FROM productos;

SELECT nombre_prod AS Producto, stock AS Existencia FROM productos WHERE stock < 5;