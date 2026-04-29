# Sistema de inventario - Melody Flowers

## Requisitos Técnicos

- PHP 8.2.12

- Postgres 18

- Apache 2.4

## Guía de instalación

### Paso 1.  Base de Datos

- En el server, dar clic y elegir create, Database y le escribimos el nombre de la base de datos (db_inventario_empresa).

- Hacemos clic derecho a la Base de datos, seleccionamos la opción Restore.

- En el format seleccionamos la opción Plain.

- En el file name seleccionamos la carpeta con el backup.

- Y por ultimo le damos al botón del Restore.

## Paso 2. Ubicación de config.php

Esta ubicado dentro de carpeta Includes

 Las variables de la conexión a la Base de Datos son:

- $host: Ubicación del servidor (localhost).

- $port: El puerto que estaremos utilizando (5432).

- $db_name: La base de datos que estamos utilizando (db_inventario_empresa).

- $user: El nombre de usuario elegido (Postgres).

- $password: Contraseña que hemos elegido (El administrador se lo proveerá).

Nota: Nunca subas contraseñas reales al repositorio.

## Sección de estructura

- Carpeta Includes: Esta carpeta contiene, config.php (esta carpeta contiene la configuración para conectarnos a nuestra BD), footer.php (esta carpeta contiene nuestras redes sociales), header.php (contiene nuestro encabezado).

- .htaccess: Con esta carpeta ocultamos los archivos que no queremos que los usuarios vean (Deny for all).

- requiere_once: Si el archivo falla se bloquea o falla toda la página.

- include: Llama la carpeta con el archivo que queremos ultilizar (ej. include 'includes/header.php';).

## Registro de cambios.

- Actualmente en v1.0.

- Enlace de GitHub: https://github.com/KatherineLinares-coedsantiago/proyecto_2026.git

- Documentación de configh.php

<?php 
    //Configuración de conexión de Melody Flowers.
    $host = "localhost"; //Servidor local
    $port = "5432"; //Puerto de Postgres
    $db_name = "db_inventario_empresa"; //El nombre de la base de datos
    $user = "postgres"; //Usuario de la base de datos
    $password = "auronplay12"; //Contraseña de nuestro usuario de la base de datos

    //Cadena de conexión.
    $cadenaConexion = "host=$host port=$port dbname=$db_name user=$user password=$password";


    //Proceso de conexión activa.
    $db_conn = @pg_connect($cadenaConexion);

    //Conprobar conexión
    $modo = "prod"; //Aquí nos podemos cambiar a modo programador o modo productor.

    //Aquí se guarda todo sobre nuestra BD.
    if (!$db_conn) {
        //Aquí se encuentra en modo programador.
        if ($modo == "dev"){
            //Si la conexión falla, se muestra el error específico.
            die("Fallo: " .preg_last_error());
        }else{
            //Mensaje para el productor.
        die("Sistema en mantenimiento temporal");
        }
        .
    } //Mensaje de conexión exitosa.
        else{echo "Conexión exitosa a la BD";
    }
// Denegamos el acceso a usuarios.
    define(!defined('ACCESO')) die('Acceso denegado');

?>


















# Katherine Meliza Linares Linares

## Tercer año de bachillerato 

Bloque integrado

**Modulo 3.1**

*Modulo 3.1*

**Listas**

- Elemento 1

- Elemento 2

* [Ir a Google](https://www.google.com)

**Imágenes**

![Kuromi](assets/img/Kuromi.jpg)

#Ahora hablemos de nuestro proyecto

# Sistema de un Blog de notas

## La idea principal seria mejorar la responsabilidad, para organizar mjor tu agenda, llevar tus horarios controlados e una estetica diferente.

**Lista de elementos**

- XAMPP

- PHP

- PostgreSQL

- Java Script

