let pe = document.querySelectorAll("p");
function zmianaKoloru (event)
{
    event.target.style.opacity = "1";

}


for(p of pe)
{
    p.addEventListener("mouseover", zmianaKoloru)

}
function zmianaKoloruBack (event)
{
    event.target.style.opacity = "0.5";

}
for(p of pe)
{
    p.addEventListener("mouseout", zmianaKoloruBack)
    
}




