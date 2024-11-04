const week = ["niedziela", "poniedziałek","wtorek", "środa", "czwartek", "piątek", "sobota"];
const przyslowia = ["a dziad wiedział, nie powiedział", "bez pracy nie ma kołaczy", "elektryka prąd nie tyka", "jak się człowiek spieszy to sie diabeł cieszy", "kto podołki kopie ten zakopie", "jak się człowiek spieszy to gdy podołki kopie, diabeł jajami dzwoni "];
const ciekawostka = ["Słonie nie potrafią skakać", "Wombaty to jedyne zwierzę, którego kupa ma kształt sześcianu","Komary są najbardziej śmiercionośnym zwierzęciem na świecie", "Ośmiornice mają trzy serca", "Szwecja ma 267 570 wysp, najwięcej ze wszystkich krajów na świecie"];
const zwierzeta = ["pies", "kot", "kura", "krowa", "słoń", "wiewiórka"];
let kategoria = String(prompt("Podaj kategorię jaką chcesz:"))

var losuj;
let element = document.querySelector("div");
let naglowek = document.querySelector("h1");
let dzien = new Date();


naglowek.style.textAlign = "center";
dzien = dzien.getDay();      
naglowek.innerText = week[dzien];









element.style.textAlign = "center";
switch(kategoria)
{
    case "przysłowia":
        losuj = Math.floor(Math.random() * (przyslowia.length));
        element.innerText = przyslowia[losuj];
        break;
    case "ciekawostki":
        losuj = Math.floor(Math.random() * (ciekawostka.length));
        element.innerText = ciekawostka[losuj];
        break;
    case "zwierzęta":
        losuj = Math.floor(Math.random() * (zwierzeta.length));
        element.innerText = zwierzeta[losuj];
        break;
    default:
        element.innerText = "Nie ma kategorii";
        break;

}