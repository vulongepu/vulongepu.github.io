
(function($, window, document, undefined) {
    'use strict';

    // init cubeportfolio
    $('#js-grid-lightbox-gallery').cubeportfolio({
       
    });
})(jQuery, window, document);

$('.image-link').magnificPopup({
    type: 'image',
    closeBtnInside: false,
    closeOnContentClick: false,
  
    callbacks: {
      open: function() {
        var self = this;
        self.wrap.on('click.pinhandler', 'img', function() {
          self.wrap.toggleClass('mfp-force-scrollbars');
        });
      },
      beforeClose: function() {
            this.wrap.off('click.pinhandler');
        this.wrap.removeClass('mfp-force-scrollbars');
      }
    },
     
    image: {
      verticalFit: false
    }
  
  });



if ($('#back-to-top').length) {
    var scrollTrigger = 100, // px
        backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('#back-to-top').addClass('show');
            } else {
                $('#back-to-top').removeClass('show');
            }
        };
    backToTop();
    $(window).on('scroll', function () {
        backToTop();
    });
    $('#back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 700);
    });
}

 // This is a functions that scrolls to #{blah}link
function goToByScroll(id){
      // Remove "link" from the ID
    id = id.replace("link", "");
      // Scroll
    $('html,body').animate({
        scrollTop: $("#"+id).offset().top},
        'slow');
}

// $("#about > a").click(function(e) { 
//       // Prevent a page reload when a link is pressed
//     e.preventDefault(); 
//       // Call the scroll function
//     goToByScroll(this.id);           
// });

$(function() {
  $('a[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});