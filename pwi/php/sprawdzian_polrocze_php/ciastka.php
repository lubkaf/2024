<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<?php

    $nazwa_ciasteczka = "szkola";
    $licznik = 1;
    $zasieg_ciasteczka = "/";
    $czas_ciasteczka = time() + 1; // = minuta;

    

    if(isset($_COOKIE['szkola'])){

        setcookie($nazwa_ciasteczka, $_COOKIE['szkola']+1, $czas_ciasteczka, "/" );
        echo "witaj w szkole ". $_COOKIE['szkola']. " raz.";
    }
    else{
        setcookie($nazwa_ciasteczka, 2, $czas_ciasteczka, "/" );
        echo"witaj w szkole 1 raz";

    }

?>


</body>
</html>