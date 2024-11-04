function wycen()
{
    let powierzchnia = dane.value;
    let  cena = Math.ceil(powierzchnia/4);
    let x = document.querySelector("div.form");
    x.querySelector("p").innerText =`Liczba potrzebnych puszek: ${cena}`;
}



dane.addEventListener("keypress", function(event) {
    if (event.key === "Enter") {
      document.getElementById("wynik").click();
    }
  })