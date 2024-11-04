<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="" method="post">

<input type="text" placeholder="wpisz tekst" name="haslo">
<input type="submit" value="wypisz">


</form>

<?php


if(isset($_POST['haslo'] )&& !empty($_POST['haslo'])){

    $s = $_POST['haslo'];

    $w= "/^[A-Z{2,}a-z{2,}0-9{2,}]{7,}/";
    
    if (preg_match($w, $s)) {
        echo "dobrze: $s";
    } 
    else {
        echo "zły tekst";
    }

}
else {
    echo "pole nei może być puste";
}
?>
    
</body>
</html>