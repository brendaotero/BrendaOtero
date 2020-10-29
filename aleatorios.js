<!DOCTYPE html>
<html>
<head>
	<title>ejercicio 7</title>
	<script type="text/javascript">
		function changeColor1(obj) {
            if (obj.style.color == 'red') {
                obj.style.color = 'black';
            } else {
                obj.style.color = 'red';
            }
        }
        function changeColor2(obj) {
            if (obj.style.color == 'blue') {
                obj.style.color = 'black';
            } else {
                obj.style.color = 'blue';
            }
            document.getElementById('color').innerHTML=changecolor1;
        }
        function changeColor3(obj) {
            if (obj.style.color == 'green') {
                obj.style.color = 'black';
            } else {
                obj.style.color = 'green';
            }
        }
	</script>



</head>
<body>
	<input type="button" value="rojo" onclick="changecolor1()">
	<input type="button" value="verde" onclick="changecolor2()">
	<input type="button" value="azul" onclick="changecolor3()">

	<li id="color">COLORES</li>

</body>
</html>
