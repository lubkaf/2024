<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    


    <form method="post" action="">

    <input type="number" name="a" id="" min="1">
    <input type="number" name="b" id="" min="1">
    <input type="number" name="c" id="" min ="1">
    <input type="submit" value="sprawdź">

    </form>



    <?php

    if(isset($_POST["a"]) && !empty($_POST["a"]))
    {
        $a= $_POST["a"];
    }
    if(isset($_POST["b"]) && !empty($_POST["b"]))
    {
        $b= $_POST["b"];
    }
    if(isset($_POST["c"]) && !empty($_POST["c"]))
    {
        $c= $_POST["c"];
    }

    function isTriangle($a, $b, $c):bool
    {
        return $a+$b > $c && $a+$c > $b && $b+$c > $a;
    }

    if(isTriangle($a, $b, $c)){
        echo"MOżna stworzyć trójkąt";
    }
    else{
        echo "nie można stworzyć trójkąta";
    }

    ?>


</body>
</html>