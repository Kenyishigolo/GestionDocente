<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	//RECIBIMOS LA IMAGEN Y EL NOMBRE
    $imagen = $_POST['foto'];
    $nombre = $_POST['nombre'];

    //RUTA DONDE SE GUARDARA LAS IMAGENES

    $path = "uploads/$nombre.png";

    //RUTA COMPLETA
    $actualPath = "http://localhost/prueba/$path";

    //CREAR LA IMAGEN ENVIADA
    file_put_contents($path, base64_decode($imagen));

    echo "SE SUBIO EXITOSAMENTE";

}

?>