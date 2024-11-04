
const osoby = [];

function dodaj()
{   
    var imie = tekst.value;
    osoby.push(imie);
    let main = document.querySelector("main");
    let dziecko = document.createElement("div");
    dziecko.innerText = imie
    main.appendChild(dziecko)
    osoby.sort();
    console.log(osoby);

}

function showstats()
{

    for(let i=1; i<osoby.length; i+=1)
    {
        let x = 0;
        if (osoby[i-1] == osoby [i])
        {
            x+=1;
        }
        else
        {
            document.write("osob o imieniu" + osoby[i-1] + "jest" + x);
            x = 0;
        }
    }
}
