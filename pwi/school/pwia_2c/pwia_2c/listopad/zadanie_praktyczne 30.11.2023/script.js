/*1. Przypisz zmiennej o nazwie liczba zmienna wartość liczbową 12,      wyświetl jej wartość w konsoli.
 2. Zdefiniuj zmienną a o wartości 2 i b o wartości 112. W oknie alert() wypisz działanie mnożenie tych zmiennych    
 3. Do treści strony wstaw div-a z id="info". Zdefiniuj dwie zmienne: a o wartości 75 i b o wartości 123. Do div-a z id="info" wstrzyknij
    działanie dodawania zmiennych jako nagłówek 1 stopnia.  
 4. Zdefiniuj zmienną nazwij ją num. Jeśli będzie ujemna w div-ie z id="opis"ma się wyświetlić np. tekst "ujemna". 
    Jeśli nie ma się pokazać np. tekst: "0/ujemna". Wykorzystaj instrukcję warunkową if ze składnią wykorzystującą symbole ? :
 5. Stwórz element div o id="klocek" za pomocą js wystyluj go w dowolny sposób na zdarzenie dblclick*/ 

 var liczba = Number(12);
 console.log(liczba);

 let a1 = 2;
 let b1 = 112;

 alert(a1*b1);

 let a2 = 75;
 let b2 = 123;

 info.innerText = a2 + b2;

 let num = Number(prompt("podaj wartość liczby num"));

 num < 0 ? opis.innerText = "ujemna": opis.innerText = "0/ujemna";

 let kloc = document.createElement("div");
    kloc.setAttribute("id","klocek")
    document.body.appendChild(kloc);
    
    kloc.innerText = "kliknij 2 razy"
    kloc.style.width = "200px";
    kloc.style.height = "200px";
    kloc.style.border = "1px solid black";
 kloc.ondblclick = () =>
 {
    
    kloc.style.backgroundColor = "lightgreen";
    kloc.style.display = "flex";
    kloc.style.justifyContent = "center";
    kloc.style.alignItems = "center";
    kloc.style.flexDirection = "column";
    kloc.style.flexWrap = "wrap";
    kloc.style.textAlign = "center";

    kloc.innerText = "dziekuje za skorzystanie z programu"

 }


