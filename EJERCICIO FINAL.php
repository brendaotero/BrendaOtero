
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <script type="text/javascript">
    function ejselect(str){ 
      var conexion;
      if(str==""){
        document.getElementById("txtHint").innerHTML=""; 
        return;
      }
      if (window.XMLHttpRequest){
        conexion = new XMLHttpRequest();  
      }
      conexion.onreadystatechange=function(){  
        if(conexion.readyState==4 && conexion.status==200){
          document.getElementById("div").innerHTML=conexion.responseText; 
        }
      }
      conexion.open("GET", "provincias.php?r="+str, true);
      conexion.send();
    }
      
  </script>
</head>
<body>

        <div class="badge badge-primary text-wrap" style="width: 28rem;">
          Ejercicio Ajax y PHP
        </div>
        <hr>
        <div class="form-group">
             <h3>Pais</h3>
            <select name="select" id="selectpais" class="col-4 form-control" onchange="ejselect(this.value)">
              <option>seleccione</option>
              <?php include "trabajo.php" ?>
            </select>
            <br>
            <h3>Provincia</h3>
            <div id="div">
              <select name="select" id="select" class="col-4 form-control">
                <option value="" class="col-4 form-control">Selecione</option>
              </select>
            </div>
         </div>   
</body>
</html>