const dane = ["imie" , "nazwisko" , "klasa" , "numer" , "email"];

let napis = document.createElement("h1");
document.body.append(napis);
napis.innerHTML = "Twoje dane";


var tabela = document.createElement("table");
document.body.appendChild(tabela);

//dane[i] = prompt
for(let i=0 ; i<dane.length ; i++)
{
    let info = document.createElement("td");
    tabela.appendChild(info);
    info.innerText = dane[i];
}


function dodaj()
{

    let wiersz = document.createElement("tr");
    document.querySelector("table").appendChild(wiersz);

    for(let i=0 ; i<dane.length ; i++)
    {
        dane[i] = prompt("podaj dane");
        let info = document.createElement("td");
        tabela.appendChild(info);
        info.innerText = dane[i];
    }
}
