<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <form action="" method="post">
    <textarea name="opis" id=""></textarea>
    <input type="submit" value="jajko">
    </form>

    <?php
    if(isset($_POST['opis'] )&& !empty($_POST['opis'])){
        $o = $_POST['opis'];
        $o = str_replace(" ", "", $o);
        $o = strtolower($o);
        //$o= trim($o,"A");
        $w="/^a?b+$/";
        echo"Podany tekst: $o";
    }
    
    ?>



</body>
</html>