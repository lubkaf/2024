<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>


    <form action="" method="post">

        <input type="text" placeholder="wpisz tekst" name="tekst">
        <input type="submit" value="wypisz">


    </form>

    <?php
    if (isset($_POST['tekst']) && !empty($_POST['tekst'])) {
        $t = $_POST['tekst'];

        $wzor = "/^[a-z]{1}/";                                  //wyrażenie regularne


        if (preg_match($wzor, $t)) {
            echo "dobrze: $t";
        } 
        else {
            echo "zły tekst";
        }
    } 
    else {
        echo "pole nei może być puste";
    }



    ?>


</body>

</html>