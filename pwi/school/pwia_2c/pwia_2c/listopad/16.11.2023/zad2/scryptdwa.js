let lista = document.createElement("ol");

document.body.append(lista);
/*for(i=0; i<10 ; i++)
{
    let li = document.createElement("li");
    li.innerHTML = prompt("Podaj produkt: ");
    document.querySelector("ol").append(li);
}*/
function dodaj()
{
while(true)
    {
        let rzeczy = prompt("Wpisz rzecz do zabrania: ");
        if (!rzeczy)
        {
            break;
        }
        let pozycja = document.createElement("li");
        pozycja.textContent = rzeczy;
        lista.appendChild(pozycja)
    }
}

function zamknij()
{
    dodawanie.removeAttribute("onclick");
}