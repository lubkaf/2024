var list = document.getElementById('lista');



var pies = {
    zwierze: 'pies',
    gatunek: 'ssak',
    klasa: 'drapieznik'
}
var kot = {
    zwierze: 'kot',
    gatunek:'ssak',
    klasa: 'drapieznik'
}
var wieloryb = {
    zwierze: 'wieloryb',
    gatunek:'ssak',
    klasa: 'drapieznik'
}
var czlowiek = {    
    zwierze: 'czlowiek',
    gatunek:'ssak',
    klasa: 'drapieznik'
}
var okon = {
    zwierze: 'okon',
    gatunek: 'ryba',
    klasa: 'drapieznik'
}
var szczupak = {
    zwierze: 'szczupak',
    gatunek: 'ryba',
    klasa: 'drapieznik'
}
var rekin = {
    zwierze:'rekin',
    gatunek:'ryba',
    klasa: 'drapieznik'
}
var kaczka = {
    zwierze: 'kaczka',
    gatunek: 'ptak',
    klasa: 'drapieznik'
}
var dodo = {
    zwierze: 'dodo',
    gatunek: 'ptak',
    klasa: 'umarł'
}
var orzel = {
    zwierze:'orzeł',
    gatunek: 'ptak',
    klasa: 'drapieznik'
}




const zwierzeta = [pies, kot, wieloryb, czlowiek];
var kropki = document.createElement('ol');
list.addEventListener('change', function(){
    
    
    
       let dzieci = kropki.children;
            for(let i = 0;i<dzieci.length ;i++){
                kropki.removeChild(dzieci[i])
            }


    const zwierzeta = [pies, kot, wieloryb, czlowiek, okon, szczupak,rekin, kaczka, dodo, orzel];
    let wybor = list.value;
    
   
    cont.appendChild(kropki);

    
    for(let i=0; i< zwierzeta.length; i++){
        if(zwierzeta[i].gatunek == wybor){

            let podpunkt = document.createElement('li')
            podpunkt.innerText = zwierzeta[i].zwierze + ' | ' + zwierzeta[i].gatunek + ' | ' + zwierzeta[i].klasa
            kropki.appendChild(podpunkt);
            console.log(zwierzeta[i]);
            

        }
    }
 
   
});


