$(document).ready(function() {
    //countdown

    var now = new Date();
    var nextDay = new Date(now.getFullYear(),now.getMonth(),(parseInt(now.getDate())+1));
    var clock = $('#tovar_of_day').FlipClock((nextDay-now)/1000, {
        clockFace: 'DailyCounter',
        autoStart: false,
        language: 'ru',
        callbacks: {
        	stop: function() {
        		$('#tovar_of_day').html('Акцию завершено')
        	}
        }
    });

    clock.setCountdown(true);
    clock.start();
//countdown END
    //===============Top btn
    jQuery(window).scroll(function(){
            if ( jQuery(document).scrollTop() > 220 ) {
                jQuery('#top').fadeIn('fast');
            } else {
                jQuery('#top').fadeOut('fast');
            }
    });
    $('#top').click(function () {
                $('body,html').animate({scrollTop: 0}, 500); return false;
    });
//===============Top btn end


});

//************InViewPort
function inViewport(elemet){

  //Element view position
var elementOffset = $(elemet).offset().top;
var elementHeight = $(elemet).height();
var elementView = elementOffset+elementHeight;

  //Window view position
var docHeight = $(window).height();
var spyScroll = $(window).scrollTop();
var documentView = docHeight+spyScroll;

return ((elementView <= documentView) && (elementOffset >= spyScroll));
 }

//Slicky Nav
//  $(window).scroll(function () {
//    var block =$('nav');
//    block.each(function () {
//       if (inViewport(this) != true) {
//           $(this).addClass('slicky-nav');
//           $(this).fadeIn('slow');;
//       }
//      else if($(this).offset().top<= 118){
//        $(this).removeClass('slicky-nav');
//      }
//      // else{
//      //   console.log('see');
//      // }
//    });
// });

//mobile nav
$('.menu').click(function(){
  $('.nav-mob').addClass('nav-mob-active');
  $('.drop-nav-ul ul').addClass('show-nav');
	if ($(".top-menu-nav ul").hasClass("slidedown"))
			$(".top-menu-nav ul").removeClass("slidedown").addClass("slideup");
  // $('.drop-nav-ul ul').css({display:'block', left:'100%'});
});
$('.close-nav').click(function(){
  $('.nav-mob').removeClass('nav-mob-active');
  $('.drop-nav-ul ul').addClass('hide-nav');
  // $('.drop-nav-ul ul').css('display','none');
  $('.drop-nav-ul ul').removeClass('ul-active');
});


function desktopVersion(){
      $('.nav-mob .menu-block').removeClass('container-fluid');
      $('.nav-mob .menu-block').addClass('container');
      $('.drop-nav-ul>a').click(function(){
          $(this).parent().find('ul:first').removeClass('ul-active');
          // var link = $(this).attr('href');
          // window.location = link;
          // console.log();
      });
      // console.log('Desktop menu');
  }

function mobVersion(){
        $('.nav-mob .menu-block').removeClass('container');
        $('.nav-mob .menu-block').addClass('container-fluid');
        //Prevent click on mobile
        $('.inner-level-link').click(function(event){
          event.preventDefault();
          $(this).parent().find('ul:first').addClass('ul-active');
          // console.log();
        });
        // console.log('Mobile menu');
  }

function mobContainer(){
  var browserView = $(window).width();

  if  (browserView<=991){
      mobVersion();
  }
  else if(browserView>991){
      desktopVersion();
  }
}

setInterval( function(){ mobContainer() },50);

$(document).mouseup(function (e) {
        var container = $(".nav-mob");
        if (container.has(e.target).length === 0){
        $('.drop-nav-ul ul').addClass('hide-nav');
        $('.drop-nav-ul ul').removeClass('ul-active');
        $(container).removeClass('nav-mob-active');
        }
    });

// $('.drop-nav-ul').click(function(event){
//   event.preventDefault();
//   $(this).find('ul:first').addClass('ul-active');
// });

$('body').on('click', '.nav-back', function(){
    var back = $(this).parent();
    back.parent().removeClass('ul-active');
});
// NAV END

// MOBILE TOP NAV
$(".menu-top").click(function () {
            if ($(".top-menu-nav ul").hasClass("slideup"))
                $(".top-menu-nav ul").removeClass("slideup").addClass("slidedown");
            else
                $(".top-menu-nav ul").removeClass("slidedown").addClass("slideup");
        });

//cart
$('.header-cart-i').on('click', function(){
	$('.cart-bl').slideToggle();
	if  ($(this).find('span').hasClass('chev-up')){
		$(this).find('span').removeClass('chev-up').addClass('chev-down');
	}
	else{
		$(this).find('span').removeClass('chev-down').addClass('chev-up');
	}
});

$(function(){
    $('.product-wrap .buy-btn').on('click', function(){
        var t = $(this).parents('.product-wrap').find('.prod-img'), e = t.clone(), b = $('.header-cart-i'), o = t.position(), po = t.parent().offset(), bo = b.offset();
        e.css({top: o.top+'px', left: o.left+'px', position: 'absolute'});
        t.parent().append(e);
        e.animate({opacity: 0.5,top: -po.top+bo.top+(b.height()-t.height())/2, left: -po.left+bo.left+(b.width()-t.width())/2}, 1500, function(){
            $(this).remove();
        });
    });
});

//filter catalog
$('.h_filter .glyphicon').click(function (){
  $(this).parent().parent().find('.filter_cont').slideToggle(350);
  $(this).toggleClass('glyphicon-plus');
  $(this).toggleClass('glyphicon-minus');
});
//tovar page
$(document).ready(function() {
$('#tovar_slide').lightSlider({
        gallery:true,
        item:1,
        loop:false,
        thumbItem:4,
        slideMargin:4,
        enableDrag: false
    });  

  $('#others_tovar_slider').lightSlider({
        item:6,
        loop:false,
        slideMove:1,
        pager: false,
        easing: 'cubic-bezier(0.25, 0, 0.25, 1)',
        speed:600,
        responsive : [
            {
                breakpoint:800,
                settings: {
                    item:3,
                    slideMove:1,
                    slideMargin:6,
                  }
            },
            {
                breakpoint:480,
                settings: {
                    item:2,
                    slideMove:1
                  }
            }
        ]
    });  
    
//doc ready
});