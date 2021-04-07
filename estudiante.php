<?php
include "conexion.inc.php";
include "cabecera.inc.php";
include "menu.inc.php";
$ci=$_GET["ci"];
$resultado = mysqli_query($con, "select * from nota WHERE ci = '".$ci."'");
?>
<table>
<tr>
    <td>sigla</td>
	<td>nota1</td>
	<td>nota2</td>
	<td>nota3</td>
    <td>notafinal</td>
    	
</tr>
<?php
while ($fila = mysqli_fetch_array($resultado))
{
echo "<tr>";
echo "<td>$fila[sigla]</td>";
echo "<td>$fila[nota1]</td>";
echo "<td>$fila[nota2]</td>";
echo "<td>$fila[nota3]</td>";
echo "<td>$fila[notafinal]</td>";

#echo "<td>$fila[nota1]</td>";
#echo "<td>$fila[nota2]</td>";
#echo "<td>$fila[nota3]</td>";
#$n1="nota1";
#$n2="nota2";
#$n3="nota3";

#$suma=$fila[$n1]+$fila[$n2]+$fila[$n3];
#echo "<td>$suma</td>";

echo "</tr>";
}
?>
</table>
<?php
include "pie.inc.php";
?>