const liczby = new Array(10)

for(let i=0 ; i<10 ; i++)
{
    
    do{
        liczby[i] = prompt("podaj liczbe");
    }
    while(!isNaN(liczby[i]))
    liczby[i].toUpperCase;
}
console.log(liczby)

