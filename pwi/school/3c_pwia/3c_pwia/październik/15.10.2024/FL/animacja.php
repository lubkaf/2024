<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>

@keyframes animacja{
        0%{color:blue;
            border:1px solid lightpink;}
        25%{
            color:green;
            border:10px dashed lightblue;
        }
        50%{color:red;
            border:10px dotted lightcyan;}
        75%{
            color:green;
            border:10px solid lightgreen;}
        100%{
            color:blue;
            border:10px solid lightpink;
        }
        };
</style>
<body>
    




    <?php

        function myanimation($prompt,$wielkosc_tekstu,$kolor){
            echo"<div style='animation: animacja 5s infinite linear; font-size: $wielkosc_tekstu; color:$kolor;'>$prompt</div>";

        }

        myanimation("filipllubka12","200px","blue");
        


    ?>
</body>
</html>