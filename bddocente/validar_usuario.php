<?php
include'conexion.php';

$correo =$_POST['correo'];
$password=$_POST['password'];
/*$usuario="321";
$correo = "321";
$password="321";*/

$sentencia=$conexion->prepare("SELECT * FROM usuarios WHERE (Usuario=? OR correo=?) AND password=?");
$sentencia-> bind_param('sss', $correo,$correo,$password);
$sentencia-> execute();

$resultado=$sentencia->get_result();
if($fila=$resultado->fetch_assoc()){
    echo json_encode($fila,JSON_UNESCAPED_UNICODE);
}
$sentencia->close();
$conexion->close();
?>