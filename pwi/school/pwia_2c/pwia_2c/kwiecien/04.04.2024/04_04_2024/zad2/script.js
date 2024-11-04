$(document).ready(function(){
    alerts = ["pokaż tekst", "ukryj tekst"];
    var i = 0
    $('#pokaz').click(function(){
        $(this).prev().slideToggle(function(){
            if($(this).is(':visible'))
            {
                $('#pokaz').text('ukryj tekst');
            }
            else
            {
                $('#pokaz').text('pokaż tekst');
            }
            }) 
    })
});
