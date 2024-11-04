<?php

if (isset($_POST['produkt'])){
    $produkty = $_POST['produkt'];
    $ilosci = $_POST['ilosc'];
    $ceny = $_POST['cena'];
    $i = 0;                     //to jest zle i nie powinno byc rowne 0
    $suma = 0;
    foreach($produkty as $x){
        $cenaZaProdukt = $ceny[$i] * $ilosci[$i];
        $suma+=$cenaZaProdukt;
        echo "Produkt: $x. ilosc: $ilosci[$i], cena: $cenaZaProdukt zł <br>";
        $i++;
    }
echo "Cena końcowa: $suma zł";
}
else{
    echo "Noprodukt";
}




?>