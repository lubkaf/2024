<?php 


// $tablica = array(1,2,3,4,5,6,7,8,9,10);

// foreach ($tablica as $element)
// {
//     echo $element."<br>";
// }

// print_r($tablica);

// echo count($tablica),"<br>";


// for ($i = 0; $i < count($tablica); $i++){
//     echo $tablica[$i];
// }

$tab = array();

for ($i = 0; $i < 10; $i++) {
    $tab[$i] = $i + 2;
}

for ($i = 0; $i < 10; $i++) {
    echo $tab[$i]." ";
}


?>