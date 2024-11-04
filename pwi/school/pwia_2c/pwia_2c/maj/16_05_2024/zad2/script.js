let btn = document.getElementById('show_result')

btn.addEventListener('click', function(){

    let slowo1 = document.getElementById('slowo1').value
    let result = document.getElementById('result')

    if(slowo1.length >= 6){
        if(slowo1.endsWith('kot')){
            result.innerText = "jest kot"
        }
        else{
            result.innerText = "nie ma kota"
        }
    }
    else{
        result.innerText = "za krótkie"
    }



})