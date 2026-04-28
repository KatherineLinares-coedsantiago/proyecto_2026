<?php 
    //Modulo de conexión.
    require_once("includes/config.php");
    include 'includes/header.php';
?>
    <h1>Gestión de productos</h1>

<?php
//Comprobamos si nos conectamos a la BD.
        if($db_conn) {echo "Conexión exitosa a la BD";}
?>

<?php include 'includes/footer.php'; ?>
