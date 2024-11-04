<?php

function kontynent(){
if (isset($_POST["afryka"])) {
    $choice = 1;
}
if (isset($_POST["europa"])) {
    $choice = 2;
}
if (isset($_POST["australia"])) {
    $choice = 3;
}
if (isset($_POST["azja"])) {
    $choice = 4;

}
if (isset($_POST["ameryka pół"])) {
    $choice = 5;

}
if (isset($_POST["ameryka płd"])) {
    $choice = 6;

}
if (isset($_POST["antarktyka"])) {
    $choice = 7;

}
switch ($choice) 
{
    case 1;
    echo "Afryka";;
        break;
    case 2;
    echo "europa";
        break;
    case 3;
    echo "australia";
        break;
    case 4;
    echo "azja";
        break;
    case 5;
    echo "ameryka północna";
        break;
    case 6;
    echo "ameryka południowa";
        break;
    case 7;
    echo "antarktyka";
        break;

}

}

kontynent();





?>