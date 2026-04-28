<?php 
    //Configuración de conexión de Melody Flowers.
    $host = "localhost";
    $port = "5432";
    $db_name = "db_inventario_empresa";
    $user = "postgres";
    $password = "auronplay12";

    //Cadena de conexión.
    $cadenaConexion = "host=$host port=$port dbname=$db_name user=$user password=$password";


    //Proceso de conexión activa.
    $db_conn = @pg_connect($cadenaConexion);

    //Conprobar conexión
    $modo = "prod";

    if (!$db_conn) {
        if ($modo == "dev"){
            die("Fallo: " .preg_last_error());
        }else{
        die("Sistema en mantenimiento temporal");
        }
    }
        else{echo "Conexión exitosa a la BD";
    }

    define(!defined('ACCESO')) die('Acceso denegado');

?>