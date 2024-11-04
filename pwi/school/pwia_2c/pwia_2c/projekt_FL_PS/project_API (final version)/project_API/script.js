
let search = document.querySelector(".search");
//funkcja która wyświetla wyniki
search.addEventListener('click', function () {
    let resultCont = document.querySelector(".exercisesContainer")
    resultCont.style.display = "inline-flex"
    resultCont.innerHTML = "";
    let muscle = document.getElementById("muscle_choice").value;
    //wykorzystanie API
    $.ajax({
        method: 'GET',
        url: 'https://api.api-ninjas.com/v1/exercises?muscle=' + muscle,
        headers: { 'X-Api-Key': 'vhQsSIuL1w0c7RZy1t/5dA==oH4w9jeoi9gVvePi' },
        contentType: 'application/json',
        success: function (result) {
            console.log(result);
            console.log(result[0].name)
            for(let i = 0 ; i < result.length ; i ++){
                let list_element = document.createElement('li')
                list_element.style.margin = "5px"
                list_element.innerHTML = `Name: ${result[i].name} | Type: ${result[i].type} | Equipment: ${result[i].equipment} | Difficulty: ${result[i].difficulty}`;   //wyniki
                resultCont.appendChild(list_element)
                // resultCont.innerHTML += result[i].name + result[i].type + result[i].equipment + result[i].difficulty + '<br>'
            }
        },
        error: function ajaxError(jqXHR) {
            console.error('Error: ', jqXHR.responseText);
        }
    });
})
