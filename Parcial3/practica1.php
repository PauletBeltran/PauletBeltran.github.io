<?php
echo "<h1> hola mundo </h1>";
echo "<hr>";

$nombre = "Piolina ";
$edad = 15;

if($edad >= 18){
    echo $nombre . "es mayor de edad";
} else {
    echo $nombre . "es menor de edad";
}
echo "<br><br>";

for($i=0; $i<10; $i++){
    echo $i . "<br>";
}
?>