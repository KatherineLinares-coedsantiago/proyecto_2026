<?php 
    require_once("includes/config.php");
    include 'includes/header.php';
?>
    <h1>Gestión de usuarios</h1>
    <?php
        if($db_conn) {echo "Conexión exitosa a la BD";}
     ?>

<?php include 'includes/footer.php'; ?>
