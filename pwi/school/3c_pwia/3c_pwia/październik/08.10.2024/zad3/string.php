<?php 

//str_contains()
//str_ends_with()
//str_starts_with()
$string = "fristajla makapakafa";
if (str_starts_with($string,"fri")){
    echo "chyba frustajla";
}
else{
    echo"niema";
}



echo "<br><br><br>";
//stripos()   --> zwraca indeks pierwszego wystąpienia szukanego podciągu, flaga i nie zwraca uwagi na wielkosc liter


$findme = 'Ajla';
$pos = stripos($string, $findme);

var_dump($pos);



//strpos()   --> zwraca indeks pierwszej litery pierwszego wystąpienia szukanego podciągu, uwaga na wielkosc liter !!
//strrpos() --> zwraca indeks pierwszej litery ostatniego wystąpienia podciągu

$findme = 'fri';
$pos = strrpos($string, $findme);

var_dump($pos);



//substr() --> można z ciągu zrobić podcią, 1 arg to nasz string, 2 arg to od ktorego indeksu, 3 to ile znakow wycinamy


echo substr("JE/backurwuw" , -10, 10);
echo "<br><br><br>";


//strrev() --> odwraca stringa

echo strrev("JE/backurwuw");
echo "<br><br><br>";




//POLECENIE
// Pobierz od uzytkownika dowolny string a następnie sprawdź czy zawiera on duża literę b, znak spacji, cyfrę 6 i narzucony znak specjalny. Info wypisz w akapitach 

if(isset($_POST["prompt"]) && !empty($_POST["prompt"])){
    $userInput = $_POST["prompt"];
}
if(strpos($userInput, "B") != 0 && strpos($userInput, " " != 0 && strpos($userInput, "#") != 0)){
    echo "Podany ciąg zawiera dużą literę b, znak spacji, cyfrę 6 oraz narzęcony znak specjalny";
}
else{
    echo "Podany ciąg nie spełnia wszystkich warunków";
}

?>
