(function($) {
    "use strict";
    $(document).ready(function() {
        /*  [ Back to top ]
         - - - - - - - - - - - - - - - - - - - - */
        $(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
                $('.back-to-top').addClass('show');
            } else {
                $('.back-to-top').removeClass('show');
            }
        });
        $('.back-to-top').on( 'click', function(e) {
            e.preventDefault();
            $("html, body").animate({
                scrollTop: 0
            }, 500);
        });
        $( '.main-slider .owl-carousel' ).owlCarousel({
            items: 1,
            loop: true,
            nav: true,
            dots: true,
            autoplay: 3000,
            autoplaySpeed: 3000,
        });
        $( '.feed-back-slide .owl-carousel' ).owlCarousel({
            items: 1,
            responsive: true,
            nav: false,
            dots: true,
            autoplay: false,
            autoplaySpeed: 3000,
        });
        


        var slider = null;
        $( window ).load(function() {
            /*  [ Sticky Header ]
             - - - - - - - - - - - - - - - - - - - - */
            if( $(window).width() > 495){
                if( $( 'body.header2' ).length == 0 ) {
                    $( '.site-header' ).sticky({ topSpacing: 0 });
                    $( window ).resize(function(event) {
                        $( '.sticky-wrapper' ).css( 'height', $( '.site-header' ).height() );
                        $( '.site-header' ).css( 'width', '100%' );
                    });
                }
                $( '.header-sticky' ).each(function() {
                    function bg_header() {
                        var slider = $( '.header-sticky' ).find( '.main-slider' ).outerHeight();
                        if( $(window).scrollTop() > slider ) {
                            $( 'body' ).addClass('sticky-bg');
                        } else {
                            $( 'body' ).removeClass('sticky-bg');
                        }
                    }
                    bg_header();
                    $ (window ).scroll(function (event) {
                        bg_header();
                    });
                    $( window ).resize(function(event) {
                        bg_header();
                    });
                });
            }
        });

        // RES MENU
        $( '.sub-menu' ).each(function() {
            $( this ).parent().addClass( 'has-child' ).find( '> a' ).append( '<span class="arrow"><i class="fa fa-caret-down"></i></span>' );
        });
        $( '.main-menu .arrow' ).on( 'click', function(e) {
            e.preventDefault();
            $( this ).parents( 'li' ).find( '> .sub-menu' ).slideToggle( 'fast' );
        });
        /*$( '.mobile-menu' ).on( 'click', function() {
            //$( this ).parents( '.main-menu' ).toggleClass('open');
        });*/

        $( '.mobile-menu' ).on( 'click', function() {
            
            $('#menu-list').css("display","block");
            $('#menu-list').css("display","block");
            $("#menu-list").stop().animate({"left":"0"},100);
            $("#wrapper").stop().animate({"left":"240px"},100);
            $('#wrapper').css("position","fixed");
            $('#wrapper').css("overflow","hidden");
            $('.close-menu').css("display","block");
            $('.mobile-menu').css("display","none");
            $('.header-right').removeClass("menu_fixed");

          
            //$( this ).parents( '.main-menu' ).toggleClass('open');
        });
        $('.close-menu').on( 'click', function() {
            
           $('#wrapper').removeAttr("style");

           $("#menu-list").stop().animate({"left":"-240px"},100,function()
            {
                $("#menu-list").css({"display":"none"});
            });

            $("#wrapper").stop().animate({"left":"0"},100);
            $('.mobile-menu').css("display","block");
            $('.close-menu').css("display","none");

             if ($(window).scrollTop() >= 76) 
             {

                $('.header-right').addClass('menu_fixed');
                $('.hd-hotline').addClass('margin_menu');
               
            }
            else
            {
                 $('.header-right').removeClass('menu_fixed');
                 $('.hd-hotline').removeClass('margin_menu');
            }
            
           
        });
        var demo = $(".service-ct");
        var customer_slider = $ ('.customer-slider');
        var dataImg = $('.service-ct-mid').clone();
        if ($(window).width() < 496) {

            demo.addClass('owl-carousel');
            customer_slider.addClass('owl-carousel');
            $('.service-ct-mid').remove();
            slider = $('.service-ct.owl-carousel').owlCarousel({
                items: 1,
                responsive: true,
                nav: false,
                dots: true,
                autoplay: false,
                autoplaySpeed: 3000,
            });
            $('.customer-slider.owl-carousel').owlCarousel({
                items: 1,
                responsive: true,
                nav: true,
                navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                dots: false,
                autoplay: false,
                autoplaySpeed: 3000
            });
            $(window).scroll(function () {
           
            if ($(this).scrollTop() >= 76) {

                    if($("#menu-list").css("display")=="none")
                    {
                        $('.header-right').addClass('menu_fixed');
                        $('.hd-hotline').addClass('margin_menu');
                    }
                   
                
                
            }else{
                 $('.header-right').removeClass('menu_fixed');
                 $('.hd-hotline').removeClass('margin_menu');
            }
            });

        }
        else{
            if($('.service-ct-mid').length == 0){
                $('.service-ct-left').after(dataImg);
            }
        }

    $( window).resize(function(){
            var checkWidth = $(window).width();
            var demo = $(".service-ct");
            var customer_slider = $ ('.customer-slider');
            if (checkWidth < 496) {
                demo.addClass('owl-carousel');
                customer_slider.addClass('owl-carousel');
                $('.service-ct-mid').remove();
                $('.service-ct.owl-carousel').owlCarousel({
                    items: 1,
                    responsive: true,
                    nav: false,
                    dots: true,
                    autoplay: false,
                    autoplaySpeed: 3000
                });
                $('.customer-slider.owl-carousel').owlCarousel({
                    items: 1,
                    responsive: true,
                    nav: true,
                    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
                    dots: false,
                    autoplay: false,
                    autoplaySpeed: 3000
                });
            }
            else{
                if($('.service-ct-mid').length == 0){
                    $('.service-ct-left').after(dataImg);
                }
                $( demo ).trigger('destroy.owl.carousel');
                $( demo).removeClass('owl-carousel');
                $( customer_slider ).trigger('destroy.owl.carousel');
                $( customer_slider).removeClass('owl-carousel');
            }
        });
    });

})(jQuery);

$(document).ready(function() {
    $('.owl-carousel').owlCarousel({
    loop:false,
    margin:0,
    nav:true,
    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    responsive:{
        0:{
            items:2
        },
        600:{
            items:3
        },
        750:{
            items:3
        },
        950:{
            items:4
        },
        1200:{
            items:5
        }
    }
    
});
$('.owl-menu').owlCarousel({
    loop:false,
    margin:0,
    nav:false,
    navText: ['', ''],
    responsive:{
        0:{
            items:2
        },
        600:{
            items:2
        },
        750:{
            items:2
        },
        950:{
            items:2
        },
        1200:{
            items:2
        }
    }
    
});

$('.owl-menu-5').owlCarousel({
    loop:false,
    margin:0,
    nav:true,
    navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    responsive:{
        0:{
            items:2
        },
        600:{
            items:3
        },
        750:{
            items:3
        },
        950:{
            items:4
        },
        1200:{
            items:5
        }
    }
    
});

/* search */
	$("#searchSubmit").click(function(){
		var id = $("#keyword").val();
		if(id=='')
		{
			sweetAlert(
                          'Thông Báo!',
                          'Vui Lòng Nhập Từ Khoá Cần Tìm Kiếm!',
                          'error'
                        );
			return false;
		}
		 window.location="/tim-kiem-"+id+".html";
	 });

	$("#keyword").keypress(function(event){
	 if ( event.which == 13 ) {
			var id = $("#keyword").val();
			if(id=='')
			{
				sweetAlert(
                          'Thông Báo!',
                          'Vui Lòng Nhập Từ Khoá Cần Tìm Kiếm!',
                          'error'
                        );
				return false;
			}
			 window.location="/tim-kiem-"+id+".html";
	}
	});
    
    /* goi modal goi giai phap và ajax goi giai phap */
    $("#price-table").click(function(){
        $("#gpModal").modal()
    });
    /* Chi cho phep nhap so */
    $('#sdt').keydown(function(event) {
                // Allow special chars + arrows 
                if (event.keyCode == 46 || event.keyCode == 8 || event.keyCode == 9 
                    || event.keyCode == 27 || event.keyCode == 13 
                    || (event.keyCode == 65 && event.ctrlKey === true) 
                    || (event.keyCode >= 35 && event.keyCode <= 39)){
                        return;
                }else {
                    // If it's not a number stop the keypress
                    if (event.shiftKey || (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )) {
                        event.preventDefault(); 
                    }   
                }
            });
    
    $("#guiyeucau").click(function(){
        
        var sdt=$("#sdt").val();
        var goigp = $( "#goigp option:selected" ).text();
        alert("Chức năng đang cập nhật tạm thời chưa dùng được");
        
    });

    
});