<?php
	$servidor="localhost";
	$usuario="root";
	$clave="";
	$baseDedatos="trabajo";

	$link = mysqli_connect($servidor, $usuario, $clave, $baseDedatos);

	if(!$link){
		echo"Error";
	}

	$consulta = "SELECT * FROM provincia";
	$ejecutarConsulta = mysqli_query($link, $consulta);
	
	echo'<select name="select" id="select">';
		while($fila=mysqli_fetch_array($ejecutarConsulta)){
			if($fila['id']==$_GET['r']){
				echo "<option value='".$fila['id']."'>".$fila['nombre']."</option>";
			}
		}

	echo'</select>';
?>