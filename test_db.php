<?php
if (extension_loaded(extension: 'pgsql')) {
    echo "¡operativo! El stack PHP-Postgres funciona.";
} else {
    echo "Error: Revisa la activación en php.ini";
}
?>