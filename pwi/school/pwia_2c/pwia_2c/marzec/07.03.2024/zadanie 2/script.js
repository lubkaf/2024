
let zdj = document.createElement('img');
document.body.appendChild(zdj);

let select = document.querySelector('select');
 select.onchange = () => {
    
    $(zdj).slideUp('1000');
     setTimeout(zmien, '300')
    $(zdj).slideDown('1000');
}

function zmien()
{
    let e = select.value;
    zdj.setAttribute('src', e); 
}

