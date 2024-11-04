//let kolor = Math.ceil(Math.random()*255); 
//console.log(kolor.toString(16));

function kolor()
{
    let kolor1 = Math.floor(Math.random()*256).toString(16);
    let kolor2 = Math.floor(Math.random()*256).toString(16);
    let kolor3 = Math.floor(Math.random()*256).toString(16);
    let nazwa_koloru = "#" + kolor1 + kolor2 + kolor3;
    console.log(nazwa_koloru);
    wynik.innerHTML = nazwa_koloru.toUpperCase();
    document.body.onkeyup = function(e)
    {
       /*
        if(e.key == "Enter")
        {
               document.body.style.backgroundColor = nazwa_koloru;
        }
        */
        if(e.keyCode==32)
        {
            document.body.style.backgroundColor = nazwa_koloru;
        }
    }
}


