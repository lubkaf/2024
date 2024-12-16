<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

    <?php
    
    $mysqli = new mysqli('localhost', 'root', '123', 'kino');
    
    if($mysqli -> connect_error){
        die("nie udalo sie polaczyc");
    }

    $query = 'SELECT * FROM film where 1=1 order by 1 asc';
    $result = $mysqli->query($query);

    while($row = $result -> fetch_assoc()){
        echo $row['id_filmu']." ".$row['tytul']."<br>";
    }

    
    
    ?>
</body>
</html>