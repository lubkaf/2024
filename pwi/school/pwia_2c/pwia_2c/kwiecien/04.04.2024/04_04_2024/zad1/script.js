$(document).ready(function(){
    $(".galImg").click(function(){
        if($('#big').attr( "src" ) != $(this).attr('rel')){
            $('.galImg').animate({opacity: '1'}, 30);
            $(this).animate({opacity: '0.5'}, '30');
            var obraz = $(this).attr('rel');
            $("#big").fadeOut(function(){
                $("#big").attr("src" , obraz);
                $("#big").fadeIn();
            });
        }
        
    });
  });