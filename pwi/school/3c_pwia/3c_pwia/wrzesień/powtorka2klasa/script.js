var wynik = document.querySelector('div');

wielkosc.addEventListener("change", function(){
    wynik.style.fontSize = wielkosc.value + "%";
})

wybor.addEventListener("change", function(){
    wynik.style.fontStyle = wybor.value
})

kolor.addEventListener("change", function(){
    wynik.style.color = kolor.value
})