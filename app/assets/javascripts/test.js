jQuery(function($){

  $(".plane").on("mouseover",function(){
    $(this).css("font-size","40px");
  });
  $(".plane").on("mouseout",function(){
    $(this).css("font-size","24px");
  });

  $('.okzoom').okzoom({
      width: 250,  // ルーペの幅
      height:250,  // ルーペの高さ
      round:true,  // ルーペの形
      border: "1px solid black", // ルーペのボーダー指定
      shadow: "0 0 5px #000"  // ルーペの影指定
  });

  $('#about-app').on("click",function(){
    $(this).next().animate({opacity:1},"slow");
  });

  $('#functions').on("click",function(){
    $(this).next().animate({opacity:1},"slow");
  });

  $('#difficulty').on("click",function(){
    $(this).next().animate({opacity:1},"slow");
  });

  $('#devisial').on("click",function(){
    $(this).next().animate({opacity:1},"slow");
  });

  $('#amelioration').on("click",function(){
        $(this).next().animate({opacity:1},"slow");
  });
});
