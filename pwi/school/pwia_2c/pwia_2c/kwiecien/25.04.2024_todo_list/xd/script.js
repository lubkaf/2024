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

function deleteElement()
{
    let list = document.querySelectorAll('li');
    list.forEach(function(listElement){
        let spanElement = listElement.querySelector('span:nth-of-type(2)');

        spanElement.addEventListener('click', function(){
            listElement.remove();
        });
    })      
}


function checkElement()
{
    let list = document.querySelectorAll('li');
    list.forEach(function(listElement){
        let spanElement = listElement.querySelector('span:nth-of-type(3)');

        spanElement.addEventListener('click', function(){

            editedParagraph = listElement.querySelector('p');
            console.log(spanElement);
            if(spanElement.innerText == 'radio_button_unchecked'){
                spanElement.innerText = 'radio_button_checked';
                editedParagraph.style.textDecoration = 'line-through';
                editedParagraph.style.backgroundColor = '#14000069'
            }    
            else{
                spanElement.innerText = 'radio_button_unchecked';
                editedParagraph.style.textDecoration = 'none';
                editedParagraph.style.backgroundColor = 'azure';
            }
                
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
    let checkIcon = document.createElement('span');
    let editIcon = document.createElement('span');
    let binIcon = document.createElement('span');
    let text = document.createElement('p');

    text.innerText = txt.value; 
    txt.value = '';
    text.id = x;
    x+=1;
    
    checkIcon.className= 'material-symbols-outlined checked';
    checkIcon.innerText = 'radio_button_unchecked';
    // checkIcon.setAttribute('type', 'checkbox')
    editIcon.className = 'material-symbols-outlined';
    editIcon.innerText = 'edit';

    binIcon.className = 'material-symbols-outlined';
    binIcon.innerText = 'delete';

    element.className = 'list';
    element.appendChild(text);
    element.appendChild(editIcon);
    element.appendChild(binIcon);
    element.appendChild(checkIcon);
    
    
    const main = document.querySelector('ol');
    main.appendChild(element);

    console.log(element, t)
    
    deleteElement()
    showEditWindow()
    checkElement()

})
