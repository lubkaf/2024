<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <form action="" method="post">
        os1
        <input type="date" name="a" id="">
        os2
        <input type="date" name="b" id="">
        <input type="submit" value="">
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

    if($a > $b){
        echo "osoba 2 jest starsza";
    }
    else if($a == $b){
        echo "osoby mają tyle samo lat";
    }
    else{
        echo "osoba 1 jest starsza";
    }
    
    
    ?>

</body>
</html>