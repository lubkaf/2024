<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>

    td,tr{
        border:1px solid black;
        
    }
    table{
        width:300px;
        height:200px;
        border-collapse: collapse;
    }

    </style>
</head>

<body>


    <?php
    #ZAD1//stworz zmienną a, przypisz wartość 2 a następnie wyświetl funkcją echo 10 kolejnych parzystych liczb
    $a = 2;
    for($i = 0, $x = $a; $i <= 10; $i++, $x+=2)
    {
        echo $x." ";
    }



    #ZAD2//do zmienne tekst przypisz string odpowiednią funkcją sprawdz typ danych i wyświetl informacje o nim

    echo"<br>";
    $tekst = "nie";
    var_dump($tekst);



    #ZAD3//za pomocą pętli stworz tabele składającą się z 2 wierszy i 3 kolumn

    echo"<table>";
    for ($i = 0; $i < 2; $i++) {
        echo "<tr>";
             for($j=0;$j < 3;$j++){
                echo"<td></td>";
             }   
        echo"</tr>";
    }
    echo"</table>";
    ?>

</body>

</html>