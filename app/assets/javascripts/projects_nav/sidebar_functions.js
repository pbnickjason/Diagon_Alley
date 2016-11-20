$(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;

    trigger.click(function () {
      hamburger_cross();
    });

    function hamburger_cross() {

      if (isClosed == true) {          
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
      } else {   
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
      }
  }
  $('[data-toggle="offcanvas"]').click(function () {
        $('#wrapper').toggleClass('toggled');
  });
    
    $(document).scroll(setTrigger);
    setTrigger();
    trigger.css("visibility", "visible");
    function setTrigger(){
        if($(document).scrollTop() > 50){
            trigger.css("top",10);
            $('#sidebar-wrapper').css("top", 0);
        }else{
            trigger.css("top",60 - $(document).scrollTop());
            $('#sidebar-wrapper').css("top", 51 - $(document).scrollTop());
        }
    }
    
});



$(function() {
  $('#ex2').slider({ticks: [0, 1, 2, 3, 4,5,6,7,8,9,10,11,12], ticks_labels: ['K', '1', '2', '3', '4','5','6','7','8','9','10','11','12']});
  
});


$('#price-filter').focus(function(e){
    if(this.value==this.defaultValue){
        this.value=""; this.style.color="#000"; 
        $(this).css("text-align", "right");
    }
});
$('#price-filter').blur(function(e){
    if(this.value==""){
        this.value=this.defaultValue; this.style.color="#888";
        $(this).css("text-align", "left");
    }
});
