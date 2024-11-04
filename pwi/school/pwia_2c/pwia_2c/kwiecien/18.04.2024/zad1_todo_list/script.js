


// radio.addEventListener('click', function(){
//     if (radio.innerText == 'radio_button_checked')
//     {
//         radio.innerText = 'radio_button_unchecked'
//     }
//     else{
//         radio.innerText = 'radio_button_checked'
//     }
// })

let btn = document.getElementById('btn');

btn.addEventListener('click', function(){
    const txt = document.getElementById('txt');
    let element = document.createElement('div');
    let icon = document.createElement('span');
    let editIcon = document.createElement('span');
    let text = document.createElement('p');
    text.innerText = txt.value; 
    icon.className= 'material-symbols-outlined checked';
    icon.innerText = 'radio_button_unchecked';
    editIcon.className = 'material-symbols-outlined';
    editIcon.innerText = 'edit';
    element.className = 'list-';
    element.appendChild(text);
    element.appendChild(editIcon);
    element.appendChild(icon);
    console.log(element)
    const main = document.querySelector('main');
    main.appendChild(element);



    let radio = document.querySelectorAll('.check')
    for(let i of radio){
        console.log(i)
    }

})