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

    } //Mensaje de conexión exitosa.
        else{echo "Conexión exitosa a la BD";
    }
// Denegamos el acceso a usuarios.
    //define(!defined('ACCESO')) die('Acceso denegado');

?>