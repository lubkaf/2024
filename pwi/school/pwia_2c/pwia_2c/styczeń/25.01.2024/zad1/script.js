function generuj()
{
    let a = Number(one.value);
    let r = Number(two.value);
    let n = Number(three.value);

    console.log(a,r,n)

    let result = document.createElement("p");
    result.innerHTML = "Elementy ciągu to: "
    for(let i=0 ; i < n ; i++)
    {   
        result.innerHTML += a + " , ";
        a+= r;
        
        
    } 
    console.log(result)
    // document.getElementsByClassName("right").appendChild(result);
    document.getElementById("wynik").appendChild(result);

    
}


// an=a1+(n-1)r