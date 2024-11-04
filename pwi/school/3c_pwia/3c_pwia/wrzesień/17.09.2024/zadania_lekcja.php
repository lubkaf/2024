<?php 

//ZAD1
for ($i = 1; $i <= 10; $i++) {
    echo $i." ";
}

echo"<br>";

//ZAD2
for( $i = 10; $i > 0; $i--){
    echo $i." ";
}

echo "<br>";

//ZAD3
$wynik=0;
for ($i = 1; $i <= 10; $i++) {
    $wynik+= $i;
}
echo $wynik;    
echo "<br>";

//ZAD4

for ($i = 0, $k = 2; $i <10 ; $i++, $k+=2) {
    echo $k." ";
}

//ZAD5
$x = 12;
$y = 100;
$wynik =0;
while ($x > 0)
{
    $wynik += $y;
    $x--;
    $wynik = $wynik + 0.08*$wynik;
}
echo "<br>".$wynik;


//ZAD6
echo "<br>";
echo "<br>";
echo "<br>";
$rok = 1601;
if($rok % 400 == 0  || $rok % 4 == 0 && $rok %100 != 0){
        echo "29";
}
else{
    echo "28";
}


//ZAD9
$i = 0;

while ($i <= 10)
{
    echo"<br>";
    ++$i;
}
echo $i;


$i = 0;
while ($i <= 10)
{
    echo"<br>";
    $i++;
}
echo $i;

?>