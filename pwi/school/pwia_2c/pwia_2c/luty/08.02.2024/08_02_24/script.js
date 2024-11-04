const imgs=['squirrel.jpg', 'zdj.jpg','pustynia.jpg', 'car.jpg', 'car1.jpg'];
const loading = ['|----', '-|---', '--|--', '---|-', '----|'];
var x=0;

function changeslide()
{   
    let image = document.querySelector("img");
    image.setAttribute('src','/zdjecia/' + imgs[x]);
    load.innerText = loading[x];
    x += 1;
    if(x == imgs.length)
    {
    x=0;
    }
    image.style.transition = '0.5s';
}

var interval = setInterval(changeslide, 1000);
var czaszkownik = 0;


function stop()
{
    
    if(czaszkownik % 2 == 0){
        clearInterval(interval);
    }
    else{
        interval = setInterval(changeslide, 1000);
    }
    czaszkownik++;
    
}

function zegar(){
    let date = new Date();
    let godzina = date.getHours();
    let minuta = date.getMinutes();
    let sekunda = date.getSeconds();
    if(godzina < 10){
        godzina = "0" + godzina;
    }
    if(minuta < 10){
        minuta = "0" + minuta;
    }
    if(sekunda < 10){
        sekunda = "0" + sekunda;
    }
    let czasy = godzina + "-" + minuta + "-" + sekunda;
    czas.innerHTML = czasy;
}


interval = setInterval(zegar, 1000);
    //interval = setInterval(interval);

