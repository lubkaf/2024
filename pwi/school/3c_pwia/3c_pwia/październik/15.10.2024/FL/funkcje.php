<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    






    <?php 
    
    function hello()                        //deklaracja funkcji
    {
        echo "Hello world!<br>";
    }

    hello();


    function hello_name($name)              //funkcja z parametrem
    {
        echo "hello $name! <br>";
    }
    hello_name("chris");




    function welcome($name, $surname)       //funkcja z wieloma parametrami
    {
        echo "Welcome $name $surname<br>";
    }
    welcome("Michael", "Jackson");




    function primary_value($primary = 150)      //funkcja z podstawową wartością
    {
        echo "primary value = $primary <br>";
    }
    primary_value(20);          //jeśli nadamy inną wartość to będzie ta inna




    function suma($x, $y)
    {
        $suma = $x + $y;
        echo"Suma liczb: $x + $y = $suma<br>";
    }
    suma(1.3,10.23);




    function sum($a,$b):int             //narzucanie typu zwracanych danych
    {
        return $a+$b;
    };

    echo(sum(1.3,10.23)."<br>");

    $dodaj = "sum";
    echo $dodaj(100,1)."<br>";


    $dodaj = function($a,$b){
        return $a + $b;
    };

    echo $dodaj(90,30)."<br>";




    function sum2(...$numbers)            //funkcja ze zmienną liczbą argumentów
    {
        $sum = 0;
        foreach($numbers as $number)
        {
            $sum+=$number;
        }
        return $sum;
    }   

    echo sum2(1,2,3,4)."<br>";


    $numbers[] = 1;
    $numbers[] = 5;

    echo sum(... $numbers)."<br>";          //nie znamy dlugosci i indeksów tablicy wiec mozemy uzyc ...




                                     
    


    
    
    
    ?>
</body>
</html>