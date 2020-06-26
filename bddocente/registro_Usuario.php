<?php
include'conexion.php';
$nombre=$_POST['nombre'];
$usuario=$_POST['Usuario'];
$correo=$_POST['correo'];
$celular=$_POST['celular'];
$password=$_POST['password'];

$consulta="INSERT INTO `usuarios`(`nombre`,`Usuario`, `correo`, `celular`, `password`, `estado`) VALUES ('$nombre','$usuario','$correo','$celular','$password',1)";

if (mysqli_query($conexion,$consulta)) {
    echo '.';
}else{
    echo mysqli_error($conexion);
} 
$conexion->close();	
?>