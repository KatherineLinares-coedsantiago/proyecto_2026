SELECT * FROM categorias;

SELECT * FROM productos;

-- Aquí se insertan las 3 categorias nuevas.
INSERT INTO categorias(nombre_cat, descripcion) VALUES ('Plantas', 'Plantas de interior y exterior');
INSERT INTO categorias(nombre_cat, descripcion) VALUES ('Decoración', 'Elementos decorativos para el hogar');
INSERT INTO categorias(nombre_cat, descripcion) VALUES ('Flores', 'Arreglos de flores para toda ocasión');

-- Aquí se agregan los productos nuevos.
--Categoría Flores.
INSERT INTO productos(nombre_prod,precio,stock,fecha_ingreso,id_categoria)
VALUES ('Flor de Loto',15.00,30,'2026-04-24',9),
('Heliconia',20.00,25,'2026-04-24',9),
('Ranúnculo Cloni',25.00,30,'2026-04-24',9),
('Anturio Negro',15.00,25,'2026-04-24',9),
('Banksia',30.00,30,'2024-04-24',9),
('Gloriosa',15.50,25,'2024-04-24',9),
('Vanda',25.00,30,'2024-04-24',9);

--Categoría Decoración.
INSERT INTO productos (nombre_prod,precio,stock,fecha_ingreso,id_categoria)
VALUES ('Medinilla Magnífica',35.00,15,'2026-04-24',10),
('Alocasia Black Velvet',25.00,10,'2026-04-24',10),
('Calathea Ornata',16.00,20,'2026-04-24',10),
('Cymbidium',50.00,10,'2026-04-24',10),
('Tillandsia Xerographica',35.50,15,'2026-04-24',10),
('Calla Lily',25.50,10,'2026-04-24',10);

--Categoría Plantas.
INSERT INTO productos (nombre_prod,precio,stock,fecha_ingreso,id_categoria)
VALUES ('Sanseveria',25.50,12,'2026-04-24',11),
('Monstera Deliciosa',34.50,10,'2026-04-24',11),
('Ficus Lyrata',59.99,10,'2026-04-24',11),
('Lirio de la Paz',34.99,15,'2026-04-24',11),
('Anturio',35.00,10,'2026-04-24',11),
('Palma Areca',60.00,5,'2026-04-24',11),
('Pothos',18.00,20,'2026-04-24',11);


--Aqui se insertan los nuevos usuarios.
INSERT INTO usuarios (nombre_usuario,pass,email) VALUES
('Administrador','12345','administrador@gmail.com'),
('Vendedor','12345','vendedor@gmail.com'),
('Invitado','12345','invitado@gmail.com');

SELECT * FROM usuarios;