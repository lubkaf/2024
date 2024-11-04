<?php

$firstName = $_POST["imie"];
$lastName = $_POST["nazwisko"];
$opis = $_POST["opis"];
$plec = $_POST["plec"];
$zainteresowania = $_POST["zainteresowania"];


$hasFirstname = !empty($firstName);
echo $hasFirstname."<br>";

$hasLastname = !empty($lastName);
echo $hasLastname."<br>";

$hasDescription = !empty($opis);
echo $hasDescription."<br>";

$hasGender = !empty($plec);
echo $hasGender."<br>";

$hasHobbys = !empty($zainteresowania);
echo $hasHobbys."<br>";

if($hasHobbys){
    foreach($zainteresowania as $check){
        echo"<p>Zainteresowania: $check</p>";
    }
}

?>