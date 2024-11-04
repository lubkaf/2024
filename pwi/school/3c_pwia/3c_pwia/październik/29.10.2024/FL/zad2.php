<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="" method="post">

<input type="text" placeholder="wpisz tekst" name="tekst">
<input type="submit" value="wypisz">


</form>


    <?php
    
    if(isset($_POST['tekst'] )&& !empty($_POST['tekst'])){

        $s = $_POST['tekst'];
       // $w_s = "/^(http|https|ftp):\.(([A-Z0-9][A-Z0-9_-]*)(?:.[A-Z0-9])([A-Z0-9][A-Z0-9_-]*)+)$/i" ;         //nawiasy grupują sprawdzany fragment
        
        $w_s = "/^([A-Za-z]+)(-[A-za-z]+)?$/";
        if(preg_match($w_s,$s)){
            echo"dobrze: $s";
        }
        else{
            echo"źle";
        }
    }
    else{
        echo"pusty formularz";
    }

    ?>
</body>
</html>