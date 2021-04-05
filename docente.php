<?php
error_reporting(0);
include "conexion.inc.php";
$ci=$_GET["ci"];
$deptos = array("LP","CB","SC","OR","PT","CH","TJ","BE","PD",);
$siglas=mysqli_query($con, "SELECT sigla from nota GROUP BY nota.sigla");
$siglasx=mysqli_query($con, "SELECT sigla from nota GROUP BY nota.sigla");
echo "<table>";
echo "<tr>";
echo "<td>Departamento</td>";
while ($siglas2=mysqli_fetch_array($siglas)){
    echo "<td>$siglas2[sigla]</td>";
}
echo "</tr>";

$count = count($deptos);
for ($i = 0; $i < $count; $i++) {
    echo "<tr>";
    echo "<td>$deptos[$i]</td>";
    $siglasx=mysqli_query($con, "SELECT sigla s from nota GROUP BY nota.sigla");
    while ($siglas3=mysqli_fetch_array($siglasx)){
        $nota=mysqli_query($con,"SELECT a.sigla ,AVG(notafinal)d FROM (SELECT n.sigla,n.notafinal,p.departamento 
        FROM nota n ,persona p WHERE p.departamento LIKE '".$deptos[$i]."' AND n.ci=p.ci)a WHERE a.sigla = '".$siglas3[s]."'");
        $nr=mysqli_num_rows($nota);
        $valor=mysqli_fetch_array($nota);
        if($nr>0){
            echo "<td>$valor[d]</td>";
        }
        else if($nr<1){
            echo "<td>0</td>";
        }
        
        
    }
    echo "</tr>";
}


?>

</table>