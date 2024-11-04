const zwierzeta = [

    czlowiek = {
        gromada: 1,
        rasa: 'czlowiek',
        wystepowanie: 'wszedzie'
    },

    pies = {
        gromada: 1,
        rasa: 'pies',
        wystepowanie: 'wszedzie'
    },

    zaba = {
        gromada: 4,
        rasa: 'zaba',
        wystepowanie: 'w wodzie'
    },

    ryba = {
        gromada: 5,
        rasa: 'ryba',
        wystepowanie: 'w wodzie'
    }

];
window.addEventListener('load',function(){
    let div = document.querySelector('.right');
    let element = document.createElement('p');
    for(let i=0; i<zwierzeta.length; i++){
        console.log(zwierzeta[i])
        element.innerHTML += `<li>gatunek: ${zwierzeta[i].rasa},<br> występowanie: ${ zwierzeta[i].wystepowanie}</li>`;
        div.appendChild(element);
    }
})

pokaz.addEventListener('click', function(){
    let div = document.querySelector('.middle');
    div.innerHTML = '';
    let element = document.createElement('p');
    
    let chosen = number.value;
    for(let i=0; i<zwierzeta.length; i++){
        if(zwierzeta[i].gromada == chosen){
            console.log(zwierzeta[i])
            element.innerHTML += `<li>gatunek: ${zwierzeta[i].rasa},<br> występowanie: ${ zwierzeta[i].wystepowanie}</li>`;
            div.appendChild(element);
        }
    }
    div.appendChild(list);



});