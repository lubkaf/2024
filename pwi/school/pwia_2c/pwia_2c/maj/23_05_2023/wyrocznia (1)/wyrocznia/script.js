$('#result').hide();

$('#wyrocznia').click(function(){
    let result = document.getElementById('result');
    let szansa = Math.ceil(Math.random() * 100);
    let minka = result.querySelector('span');
    let wynik = result.querySelector('h3');
    if(szansa <= 33)
        {
            result.style.color = 'red';
            wynik.innerText = `Szansa na sepłnienie: ${szansa} %`;
            minka.innerText = 'sentiment_satisfied';
        }
    else if(szansa > 33 && szansa <= 66)
        {
            result.style.color = 'yellow';
            wynik.innerText = `Szansa na sepłnienie: ${szansa} %`;
            minka.innerText = 'sentiment_neutral';
        }
    else
        {
            result.style.color = 'green';
            wynik.innerText = `Szansa na sepłnienie: ${szansa} %`;
            minka.innerText = 'sentiment_dissatisfied';
        }
    $('#result').slideDown();
});