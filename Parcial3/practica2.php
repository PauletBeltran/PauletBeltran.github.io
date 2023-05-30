<?php
$nombre = $_GET ["nombre"];
echo "Nombre: " .$nombre . "<br><br>";

$edad = $_GET ["edad"];
echo "Edad: " .$edad . "<br><br>";

$escuela = $_GET ["escuela"];
echo "Escuela: " .$escuela . "<br><br>";

$fecha = $_GET ["fecha"];
echo "Fecha de ingreso: " .$fecha . "<br><br>";

$direccion = $_GET ["direccion"];
echo "Dirección: " .$direccion . "<br><br>";

if($edad >= 18){
    echo "Es mayor de edad" . "<br><br>";
} else{
    echo "Es menor de edad" . "<br><br>";
}

if($escuela == "CETis107"){
    echo "<div style='background-color:blue;'> CETis107 </div>";
} else if($escuela == "CBTIS 224"){
    echo "<div style='background-color:red;'> CBTIS 224 </div>";
} else if($escuela == "COBAES"){
    echo "<div style='background-color:green;'> COBAES </div>";
}
?>