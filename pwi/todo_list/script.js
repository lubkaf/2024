var editedParagraph;
function showEditWindow()
{
    let list = document.querySelectorAll('li');
    list.forEach(function(listElement){
        let spanElement = listElement.querySelector('span');

        spanElement.addEventListener('click', function(){
            let editWindow = document.getElementById('edit-window')
            editWindow.style.display = 'inline-flex';
            editedParagraph = listElement.querySelector('p');
        });
    })
    
    
        
}

function edit()
{
        console.log(x)
        let text = document.getElementById('editinput');
        editedParagraph.innerText = text.value;
        text.value = '';
}


let done = document.getElementById('done');

done.addEventListener('click', function(){
    let editWindow = document.getElementById('edit-window');

    editWindow.style.display = 'none';
    edit();

})

let cancel = document.getElementById('cancel');

cancel.addEventListener('click', function(){
    let editWindow = document.getElementById('edit-window');
    editWindow.style.display = 'none'
})



let btn = document.getElementById('btn');

var x = 0;
var t = [];
btn.addEventListener('click', function(){
    const txt = document.getElementById('txt');
    let element = document.createElement('li');
    let icon = document.createElement('input');
    let editIcon = document.createElement('span');
    let text = document.createElement('p');

    text.innerText = txt.value; 
    text.id = x;
    x+=1;
    
    // icon.className= 'material-symbols-outlined checked';
    // icon.innerText = 'radio_button_unchecked';
    icon.setAttribute('type', 'checkbox')
    editIcon.className = 'material-symbols-outlined';
    editIcon.innerText = 'edit';

    element.className = 'list';
    element.appendChild(text);
    element.appendChild(editIcon);
    element.appendChild(icon);
    
    const main = document.querySelector('ol');
    main.appendChild(element);

    console.log(element, t)
    

    showEditWindow()
})


