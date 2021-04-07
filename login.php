<?php
include "conexion.inc.php";
$nombre=$_POST['txtusuario'];
$pass=$_POST['txtpassword'];
$query=mysqli_query($con, "SELECT * FROM USUARIO WHERE USUARIO='".$nombre."' AND CONTRASENA='".$pass."'");
$nr=mysqli_num_rows($query);
$fila = mysqli_fetch_array($query);
if ($nr==1){
    if ($fila['rol'] == 'DOCENTE'){
        //echo "Bienvenido: ".$nombre."DOCENTE";
        //include "docente.php?ci=$fila[CI]";
        echo "<a href='docente.php?ci=$fila[ci]'>Bienvenido: ".$nombre."DOCENTE</a>";
    }
    else{
        //echo "Bienvenido: ".$nombre."ESTUDIANTE";
        //include "estudiante.php?ci=$fila[CI]";
        echo "<a href='estudiante.php?ci=$fila[ci]'>Bienvenido: ".$nombre."ESTUDIANTE</a>";
    }
}
else if($nr==0){
    echo "USUARIO INEXISTENTE O CONTRASENA INVALIDA";
}
?>
