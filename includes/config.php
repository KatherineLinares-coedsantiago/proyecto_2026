<?php 
    //Configuración de conexión de Melody Flowers.
    $host = "localhost";
    $port = "5432";
    $db_name = "db_inventario_empresa";
    $user = "postgres";
    $password = "auronplay12";

    //Cadena de conexión.
    $cadenaConexion = "host=$host port=$port dbname=$db_name user=$user password=$password";

    //Establecer conexión.
    $db_conn = pg_connect($cadenaConexion);

    //Conprobar conexión.
    if (!$db_conn){
        die("Error de conexión con la Base de Datos".preg_last_error());
    }else{echo "Conexión exitosa a Melody Flowers";}

?>