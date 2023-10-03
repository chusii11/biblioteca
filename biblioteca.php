<?php

$conexion=mysqli_connect("localhost","root","","biblioteca"); /* Creamos variable para simplificar la conexión a la base de datos */
    $result=mysqli_query($conexion,'select * from libros inner join alquileres on libros.id=alquileres.id'); /* Creamos otra variable para simplificar la consulta en la que solicitamos los datos de nuestra base de datos */
    while($array=mysqli_fetch_assoc($result)) /* Con este bucle recorremos todos los datos de nuestra consulta, de esta manera imprimiendo en pantalla dichos resultados */
{
    echo "</br>";
    echo $array['titulo'].'  &nbsp  ';
    echo $array['autor'].'  &nbsp  ';
    echo $array['usuario'].'  &nbsp  ';
    echo $array['fecha_retirada'].'  &nbsp  ';
    echo "</br>";
}

?>