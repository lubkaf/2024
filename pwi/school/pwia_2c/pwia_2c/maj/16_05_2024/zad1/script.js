let btn = document.getElementById('show_result')

btn.addEventListener('click', function(){

    let slowo1 = document.getElementById('slowo1').value
    let slowo2 = document.getElementById('slowo2').value
    let result = document.getElementById('result')
    result.innerText = `${slowo2[0]}${slowo1.substring(1)} ${slowo1[0]}${slowo2.substring(1)}`;



})