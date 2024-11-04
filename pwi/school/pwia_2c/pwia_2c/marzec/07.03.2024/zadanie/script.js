

document.getElementById("btn").addEventListener('click',function(){
    let wiersz = document.createElement('tr');   
        document.querySelector('table').appendChild(wiersz);
        i=0;
    
    let kom = document.createElement('td');
    let kom2 = document.createElement('td');
    
    document.querySelector('table').appendChild(kom);
    document.querySelector('table').appendChild(kom2);


    let k = kolor.value;

    kom.innerText = k;
    kom.style.color = k;

    kom2.style.backgroundColor = k;
    kom2.style.height = '100%';
    kom2.colSpan = 2;
    
    console.log(i);
} );