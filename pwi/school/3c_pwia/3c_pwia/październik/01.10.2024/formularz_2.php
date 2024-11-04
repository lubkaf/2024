<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <!-- <form method="post" action="">
        <label>


            Ulubione gry:
            <br>
            <input type="checkbox" name="gry1" id="" value="1" /> DARKSOULS1
            <input type="checkbox" name="gry2" id="" value="1" /> GEOGRAFIA
            <input type="checkbox" name="gry3" id="" value="1" /> FOŁCZNAJT
            <input type="checkbox" name="gry4" id="" value="1" /> JANEK

            
        </label>
        <select name="kolor" id="">
            <option value="czerwony">czerwony</option>
            <option value="zielony">zielony</option>
            <option value="niebieski">niebieski</option>
        </select>
        <input type="submit" value="klik">
    </form> -->

    <form method="post" action="" >
        <input type="password" name="pass" id="">
        <input type="submit" value="klik">
    </form>
    <?php

    // if(isset($_POST['gry1']) && $_POST['gry1'] == 1){
    //     echo"darksouls1";
    // }
    // if(isset($_POST['gry2']) && $_POST['gry2'] == 1){
    //     echo"nielubiszgeografii";
    // }
    // if(isset($_POST['kolor']))
    // {
    //     echo $_POST['kolor'];
    // }

    $p = $_POST["pass"];
    if(isset($p) && !empty($p)){                    //isset sprawdza czy jest w formularzu pole o danej nazwie, empty sprawdza czy puste
        echo "Twoje haslo: $p";
        echo "twoje zaszyfrowane haslo" . sha1($p);      //sha1  szyfruje haslo
    }


    ?>

    


</body>
</html>