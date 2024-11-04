const liczby = new Array(5)
let dlugosc = Number(prompt("podaj dlugosc tablicy"))
for(let i=0 ; i<dlugosc ; i++)
{
    liczby[i] = prompt("podaj liczbe")
}

liczby.reverse();

console.log(liczby)