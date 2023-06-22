<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practica 8 - Loteria</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <style>
        .ficha{
            background-image: url('fichita.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            z-index: 999;
        }
        .color{
            opacity: 0.3;
        }
    </style>
</head>
<body style="background-color: #F4FAF2">
    <div class="container"><br>
        <center><h1><i>Juego de la Loteria</i></h1></center><hr>
        <form action="Practica8.php" method="POST">
            <?php
                if(isset($_POST["carta1"])){                                     
                    $carta1 = $_POST["carta1"];
                    $carta2 = $_POST["carta2"];
                    //Aquí empieza la lógica del juego
                    $carta = rand(1,54);
                    $cartas_dadas = [];
                    array_push($cartas_dadas, $carta);
                }else{
                    $carta1 = [];
                    $total = 0;
                    while($total < 16){
                    $numero = rand(1,54);
                        if(array_search($numero, $carta1) === false){
                            $carta1[$total] = $numero;
                            $total ++;
                        }
                    }
                    $carta2 = [];
                    $total = 0;
                    while($total < 16){
                    $numero = rand(1,54);
                        if(array_search($numero, $carta2) === false){
                            $carta2[$total] = $numero;
                            $total ++;
                        }
                    }

                }
            ?>
            <center><input type="submit" value="Dar Carta" name="carta" class="btn btn-primary" style="background-color: blueviolet; border-color: blueviolet ;"></center><br>
        <div class="row">
            <div class="col-6">
                <div class="row m-1">
                    <h5><center>Carta #1</center></h5>
                    <?php
                            //Pintar carta 1
                    for($i=0; $i<16; $i++){
                        $numero = rand(1,54);
                        if(array_search($carta1[$i], $cartas_dadas) === false){
                            echo "<div class='col-3 p-0'><img src='fotos_loteria/". $carta1[$i].".jpeg' class='img-thumbnail'></div>";                            
                        }else{
                            echo "<div class='col-3 p-0 fichita'><img src='fotos_loteria/". $carta1[$i].".jpeg' class='img-thumbnail'></div>"; 
                        }
                        echo "<input type='hidden' name='cartas_dadas[]' value=''".$carta . "'>";
                        echo "<input type='hidden' name='carta1[]' value=''".$carta1[$i] . "'>";
                    }
                    ?>                
                </div>
            </div>
            <div class="col-6">
                <div class="row m-1">
            <h5><center>Carta #2</center></h5>
                <?php
                        //Pintar carta 2
                for($i=0; $i<16; $i++){
                    $numero = rand(1,54);
                    echo "<div class='col-3 p-0'><img src='fotos_loteria/". $carta2[$i].".jpeg' class='img-thumbnail'></div>";
                    echo "<input type='hidden' name='carta2[]' value=''".$carta2[$i] . "'>";
                }
                ?> 
                </div>
            </div>
        </div>          
    </form>
    </div><br><br>
</body>
</html>