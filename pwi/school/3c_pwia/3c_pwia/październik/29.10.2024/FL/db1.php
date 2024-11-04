<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    


    <?php
    
    $conn = mysqli_connect("localhost", "root", "", "try");

    if(mysqli_connect_errno()){
        exit();
    }
    else{
        echo "połączono z bazą danych";
    }

    mysqli_query($conn,"SET CHARACTER SET UTF8");

  /*   $sql = "SELECT * FROM miasta"; */
/* 
    $wynik = mysqli_query($conn,$sql);

    if(mysqli_num_rows($wynik) > 0){
        while($row = mysqli_fetch_assoc($wynik)){
            echo "Miasto: ".$row["nazwa"]."<br>";
        } 
    }
    else{
        echo"brak danych w tabeli";
    }
    
     */

     $sql = "INSERT into pass(user,password) VALUES('"$_POST['user']"', '"$_POST['password']"');"
    ?>

</body>
</html>