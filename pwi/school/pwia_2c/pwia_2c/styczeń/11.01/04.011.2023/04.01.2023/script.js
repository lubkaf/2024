


function czas(){

    const date =new Date();
    
    let day = date.getDate();
    const months = ['stycznia', 'lutego', 'marca', 'kwietnia', 'maja', 'czerwca', 'lipca', 'sierpnia', 'września', 'peździernika', 'listopada', 'grudnia'];
    let month = date.getMonth() + 1;
    let year = date.getFullYear();
    
    let fullDate = day + '-' + months[month - 1] + '-' + year;
    
    dmr.innerText = fullDate;

    const hours = date.getHours();
    const minutes = date.getMinutes();
    const seconds = date.getSeconds();
    g.innerText = hours;
    m.innerText = minutes;
    s.innerText = seconds;
}


setInterval(czas, 100)


// function napisocena(){
// let wybor = ocena.value;

// }
// }

function ratee(){
    let mark = ocena.value;
    switch(mark)
        {
            case "1":
                ocenka.innerText= "dostałem 1"
                ocenka.style.color= "red"
                break;
            case "2":
                ocenka.innerText= "dostałem 2"
                ocenka.style.color= "red"
                break;
            case "3":
                ocenka.innerText= "dostałem 3"
                ocenka.style.color= "blue"
                break;
            case "4":
                ocenka.innerText= "dostałem 4"
                ocenka.style.color= "blue"
                break;
            case "5":
                ocenka.innerText= "dostałem 5"
                ocenka.style.color= "green"
                break;
            case "6":
                ocenka.innerText= "dostałem 6"
                ocenka.style.color= "green"
                break;    
        }
    }