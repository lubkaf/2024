const liczby = new Array(5)
let dlugosc = Number(prompt("podaj dlugosc tablicy"))
var x=0;
for(let i=0 ; i<dlugosc ; i++)

{
    liczby[i] = Number(prompt("podaj liczbe"))
    x+=liczby[i]
}
document.write(x)