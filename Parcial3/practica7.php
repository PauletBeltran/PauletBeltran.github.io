<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 7</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .casilla{
            height: 50px;
            font-weight:bold;
        }
        .escalera{
            background-image: url('Escalerilla.png');
            background-size: cover;
        }
        .serpiente{
            background-image: url('serpiente.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position:center;
        }
        .ficha{
            background-image: url('ficha.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position:center;
        }
    </style>
</head>
<body>
    <div class="container">
         <h1>Tablero de serpientes y escaleras</h1>
            <form action="practica7.php" method="POST"> 
               <center><input type="submit" value="jugar" class="btn btn-primary"><hr></center> 
                <div class="row">
                    <?php
                    $colores = ["#a62ba2", "#1480de", "#9ee344", "#033845", "#bf452c", "#6908a1", "#b50954"];
                    if(isset($_POST["casilla"])){
                        $dado = rand(1, 6);
                        echo "<h2> Resultado del dado = ".$dado."</h2>";
                        $casilla = $dado + intval($_POST["casilla"]);
                        echo"<h3> El jugador estaba en la casilla ".intval($_POST["casilla"])." y pasó a la casilla ".$casilla."</h3>";
                        if($casilla >=100){
                            echo "<h2> El jugador ganó </h2>";
                            $casilla = 100;
                        }
                        if($casilla == 4){
                            $casilla = 15;
                            echo "<h2> El jugador cayó en una <img src='Escalerilla.png' width='50px'> y subió a la 15 </h2>";
                        }
                        if($casilla == 9){
                            $casilla = 31;
                            echo "<h2> El jugador cayó en una <img src='Escalerilla.png' width='50px'> y subió a la 31 </h2>";
                        }
                        if($casilla == 20){
                            $casilla = 31;
                            echo "<h2> El jugador cayó en una <img src='Escalerilla.png' width='50px'> y subió a la 31 </h2>";
                        }
                        if($casilla == 28){
                            $casilla = 39;
                            echo "<h2> El jugador cayó en una <img src='Escalerilla.png' width='50px'> y subió a la 39 </h2>";
                        }
                        if($casilla == 63){
                            $casilla = 74;
                            echo "<h2> El jugador cayó en una <img src='Escalerilla.png' width='50px'> y subió a la 74 </h2>";
                        }
                        if($casilla == 71){
                            $casilla = 82;
                            echo "<h2> El jugador cayó en una <img src='Escalerilla.png' width='50px'> y subió a la 81 </h2>";
                        }
                        if($casilla == 89){
                            $casilla = 100;
                            echo "<h2> El jugador cayó en una <img src='Escalerilla.png' width='50px'> y subió a la 100 </h2>";
                        }
                        if($casilla == 17){
                            $casilla = 7;
                            echo "<h2> El jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a la 7 </h2>";
                        }
                        if($casilla == 54){
                            $casilla = 44;
                            echo "<h2> El jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a la 44 </h2>";
                        }
                        if($casilla == 62){
                            $casilla = 52;
                            echo "<h2> El jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a la 52 </h2>";
                        }
                        if($casilla == 64){
                            $casilla = 44;
                            echo "<h2> El jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a la 44 </h2>";
                        }
                        if($casilla == 87){
                            $casilla = 77;
                            echo "<h2> El jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a la 77 </h2>";
                        }
                        if($casilla == 93){
                            $casilla = 83;
                            echo "<h2> El jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a la 83 </h2>";
                        }
                        if($casilla == 95){
                            $casilla = 85;
                            echo "<h2> El jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a la 83 </h2>";
                        }
                        if($casilla == 97){
                            $casilla = 77;
                            echo "<h2> El jugador cayó en una <img src='serpiente.png' width='50px'> y bajó a la 83 </h2>";
                        }
                    } else{
                        $casilla=0;
                    }
                    for($i=100; $i>0; $i--){
                        if($casilla == $i){
                            echo"<div class='col-1 card m-1 casilla ficha' style='background-color:".$colores[rand(0,6)].";'>".$i."</div>";
                        } else if($i==4||$i==9||$i==20||$i==28||$i==40||$i==63||$i==71||$i==89){
                            echo"<div class='col-1 card m-1 casilla escalera' style='background-color:".$colores[rand(0,6)].";'>".$i."</div>";
                        }else if($i==17||$i==54||$i==62||$i==64||$i==87||$i==93||$i==95||$i==97){
                            echo"<div class='col-1 card m-1 casilla serpiente' style='background-color:".$colores[rand(0,6)].";'>".$i."</div>";
                        }else{
                            echo"<div class='col-1 card m-1 casilla' style='background-color:".$colores[rand(0,6)].";'>".$i."</div>";
                        }
                    }
                    ?>
                </div>
                <input type="hidden" name="casilla" value="<?php echo $casilla; ?>">
            </form>

    </div>
   
  
</body>
</html>