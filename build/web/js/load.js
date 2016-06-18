$(window).load(function(){
  
  $(".loading .sk-folding-cube").fadeOut(2000,function(){
    
    $(this).parent().fadeOut(2000,function(){
      
      $("body").css("overflow","auto");
      $(this).remove();
      
    });
  });
  
  
});


var scrollbutton = $("#scroll");
$(window).scroll(function(){
  console.log($(this).scrollTop());
  
  if($(this).scrollTop()>=1000){
    scrollbutton.show();
  }
  else{
    scrollbutton.hide();
  }
  
});

scrollbutton.click(function(){
  $("html,body").animate({scrollTop:0},1000);
});

