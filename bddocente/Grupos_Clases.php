<?php

include 'conexion.php';

  $usr_id=$_GET['usr_id'];
//$venta_id = '68320201441222';

$sql = "SELECT `id`, `Nombre_Clase`, `Seccion`, `Asunto` FROM `grupos_clases` WHERE usuario_id=$usr_id";
mysqli_set_charset($conexion, "utf8"); //formato de datos utf8

if(!$result = mysqli_query($conexion, $sql)) die();

$clientes = array(); //creamos un array
$clientes["valores"] = array(); //creamos un array

while($row = mysqli_fetch_array($result))
{
    $IDClase=$row['IDClase'];
    $Nombre_Clase=$row['Nombre_Clase'];
    $Seccion=$row['Seccion'];
    $Asunto=$row['Asunto'];


    $clientes2 = array('IDClase'=> $IDClase, 'Nombre_Clase'=> $Nombre_Clase, 'Seccion'=> $Seccion, 'Asunto'=> $Asunto);
    array_push($clientes["valores"],$clientes2 );

}

//desconectamos la base de datos
$close = mysqli_close($conexion)
or die("Ha sucedido un error inexperado en la desconexion de la base de datos");


//Creamos el JSON
$json_string = json_encode($clientes);
echo $json_string;

//Si queremos crear un archivo json, sería de esta forma:
/*
$file = 'clientes.json';
file_put_contents($file, $json_string);
*/


?>