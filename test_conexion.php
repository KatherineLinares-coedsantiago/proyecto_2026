<?php 
//Llama al archivo donde donde está la configuración de la base de datos.
    require_once("includes/config.php");

    //Muestra el titulo de la página.
    echo "<h1>Monitor de Base de Datos</h1>";

    //Muestra una línea separada.
    echo "<hr>";

    //Verifica si hay una conexion a la base de datos.
    if($db_conn){

    //Muestra mensaje de sistema activo.
        echo "<p style='color:green'> . SISTEMA ONLINE</p>";

        //Consulta para obtener la versión de la base de datos.
        $sql = "SELECT version();";

        //Ejecuta la consulta.
        $resultado = pg_query($db_conn,$sql);

        //Verifica si la consulta funcionó.
        if($resultado){

            //Obtiene el resultado a la consulta.
            $info = pg_fetch_result($resultado,0,0);

            //Muestra la versión del motor.
            echo "<strong>Motor: </strong>" . $info;
        }
    }else{

    //Muestra mensaje de sistema offline.
        echo "<p style='color:red'> SISTEMA OFFLINE</p>";

        //Botón para recargar la página.
        echo "<button onclick='location.reload()'>Escanear de nuevo</button>";
    }
?>