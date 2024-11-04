<?php

if(isset($_POST["nickname"]) && !empty( $_POST["nickname"]))
{
    $nickname = $_POST["nickname"];
    echo "nick: ".$nickname."<br>";

}

$comment = $_POST["comment"];
if(isset($_POST["comment"]) && !empty( $_POST["comment"]))
{
    echo "komentarz: ".$comment."<br>";
    echo strip_tags($comment);
}



?>