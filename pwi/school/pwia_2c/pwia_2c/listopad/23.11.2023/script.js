const zakupy = ["cukier", "woda" , "ser" ,"nie", "gumka do włosów"];
let napis = document.createElement("h1");
document.body.append(napis);
napis.innerHTML = "Lista zakupów";

//document.write("<h1>Lista zakupów</h1>") -----> sposób nubka

let lista = document.createElement("ol");
document.body.appendChild(lista);


for(let i=0; i<zakupy.length ; i++)
{
    let punkt = document.createElement("Li");
    lista.appendChild(punkt);
    punkt.innerText = zakupy[i];
    

}


