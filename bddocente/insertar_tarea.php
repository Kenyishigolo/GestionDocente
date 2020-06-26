<?php
include 'conexion.php';
$IDTarea = $_POST['IDTarea'];
$tarNombre = $_POST['tarNombre'];
$tarDescripcion = $_POST['tarDescripcion'];
$tarRuta = $_POST['tarRuta'];
$tarTipo = $_POST['tarTipo'];
$tarSize = $_POST['tarSize'];

$consulta = "insert into tbltarea values ('".$IDTarea."','".$tarNombre."','".$tarDescripcion."','".$tarRuta."','".$tarTipo."','"$tarSize"',)";
mysql_query($conexion,$consulta) or die (mysql_error());
mysql_close($conexion);
?>