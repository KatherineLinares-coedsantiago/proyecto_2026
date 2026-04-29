# Diccionario de datos.

### Productos

|  Campo      |  Tipo         | Relación     | Restricciones   | Descripción                |  Llave    |
--------------------------------------------------------------------------------------------------------
|id_producto  | SERIAL        | usuario      | NOT NULL        |Código del producto         | PK        |
---------------------------------------------------------------------------------------------------------
|nombre_prod  |VARCHAR (60)   |              | NOT NULL,UNNIQUE|Nombre de producto          |           |
---------------------------------------------------------------------------------------------------------
|precio       |NUMERIC(10,2)  |              | NOT NULL        |Precio de los productos     |           |
---------------------------------------------------------------------------------------------------------
|stock        |INTEGER        |              | NOT NULL        |Disponibilidad del producto.|           |
---------------------------------------------------------------------------------------------------------
|fecha_ingreso |DATE          |              |NOT NULL         |ingreso del producto.       |           |
---------------------------------------------------------------------------------------------------------
|id_categoria |INTEGER        |categoria     |NOT NULL         |Relación técnica            |FK         |
---------------------------------------------------------------------------------------------------------




### Categorias

|Campo         |Tipo          |Relación       |Restricciones    |Descripción                 |Llave     |
---------------------------------------------------------------------------------------------------------
|id_categoria  |SERIAL        |productos      |NOT NULL         |Código de la categoria      |FK        |
---------------------------------------------------------------------------------------------------------
|nombre_cat    |VARCHAR(60)   |               |NOT NULL,UNIQUE  |Nombre de la categoría      |          |
---------------------------------------------------------------------------------------------------------
|descripcion   |TEXT          |               |NOT NULL         |Descripción de la categoría |          |
---------------------------------------------------------------------------------------------------------


### Usuarios

|Campo         |Tipo          |Relación       |Restricciones     |Descripción                   |Llave    |
-----------------------------------------------------------------------------------------------------------
|id_usuario    |SERIAL        |               |NOT NULL          |Código del usuario            |FK       |
-----------------------------------------------------------------------------------------------------------
|nombre_usuario |VARCHAR(60)  |               |NOT NULL,UNIQUE   |Nombre de los usuarios.       |         | 
-----------------------------------------------------------------------------------------------------------
|pass          |VARCHAR(10)   |               |NOT NULL          |Contraseña del usuario.       |         |
-----------------------------------------------------------------------------------------------------------
|email         |VARCHAR(100)  |               |NOT NULL          |Correo del usuario.           |         |
-----------------------------------------------------------------------------------------------------------
|id_producto   |INTEGER       | productos     |NOT NULL          |Relación entre prod y usuario |FK       |
-----------------------------------------------------------------------------------------------------------
|id_rol        |INTEGER       |roles          |NOT NULL          |Realación entre usuario y rol |         |
-----------------------------------------------------------------------------------------------------------


# Pasos para crear Backup en Postgres

- Primero abrimos el pgAdmin.

- Seleccionamos el servidor.

- Seleccionamos nuestra Base de Datos.

- Hcemos clic derecho y seleccionamos la opción Backup.

- En general, en filename seleccionamos la carpeta donde lo queremos guardar.

- Le colocamos un nombre a nuestro archivo.

- En format seleccionamos Plain.

- En Data Options, en sections seleccionamos Pre-data, Data y Post-data.

- En Query Options seleccionamos Use INSERT Commands, Include DROP DATABASE statement, Include CREATE DATABASE statement y Include IF EXISTS clause.

- Y por ultimo le damos al botón Backup.


# Tipos de usuario

- Administrador.

- Vendedor.

- Invitado.

# Entorno  de desarrollo 

- Windows 11

- Visual Studio Code 1.11.7.0