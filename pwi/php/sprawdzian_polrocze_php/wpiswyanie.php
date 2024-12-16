<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>


    <form action="" method="post">
        <input type="number" name="id" id="" min="0">   //formularz z polem numerycznym
        <input type="submit" value="">

    </form>

</head>
<body>
    <?php
    if(!isset($_POST['id']) && empty($_POST['id'])){
        die("nie wybrano liczby");                      //jeżeli pole jest nieustawione lub puste, kończy program
    }

    $id = $_POST['id']; //deklaracja zmiennej 'id', która jest pobrana z formularza
    
    //wstawianie do tabeli
    $mysqli = new mysqli('localhost', 'root', '123', 'kino');//połączenie z bazą
    $stmt = $mysqli -> prepare('INSERT INTO `fibonacci`(`agrument`) VALUES (?)');//przygotowanie zapytanie dynamicznego
    $stmt -> bind_param("i", $id);  //przypisanie wartości, którą jest zmienna 'id'
    if($stmt -> execute()){ //wykonanie zapytania
        echo "wpisano do tabeli<br>";//jeżeli jest poprawnie to powiadamia nas o tym
    }
    else{
        echo"błąd przy wpisywaniu: ". $stmt->error."<br>";      //jeśli nie pokazuje nazwę błędu
    }

   //wyświetlanie tabeli
    $query = 'SELECT * FROM fibonacci where 1=1 order by 1 asc';
    $result = $mysqli->query($query);
    while($row = $result -> fetch_assoc()){
        echo $row['agrument']."<br>";
    }


    $mysqli -> close();
    ?>
</body>
</html>