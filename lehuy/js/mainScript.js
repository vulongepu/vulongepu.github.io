(function ($) {


    //document ready
    $(document).ready(function () {
        $('#searchCusId').submit(function (event) {
            event.preventDefault();
            var user = $("#usercustomer").val();
                $.ajax({
                    url: "/News/searchAlbum",
                    type: "get",
                data: { 'q': user },
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    if (data == 0) {
                        alert('Không tồn tại album này');
                    } else {
                        var url = "/News/Album?id=" + data;
                        window.location.href = url;
                    }
                    // data is returning value from controller
                    // use this value any where like following
                    // $("#div_comment").html(data);
                }
            });
   
      
        });

        $("img.lazy").lazyload({ effect: "fadeIn", threshhold: 50 });
        $("img.lazy1").lazyload({ effect: "fadeIn", threshhold: 50 });
        $("img.lazy2").lazyload({ effect: "fadeIn", threshhold: 50 });
        $("img.lazy3").lazyload({ effect: "fadeIn", threshhold: 50 });
        $("img.lazy4").lazyload({ effect: "fadeIn", threshhold: 50 });
        $("img.lazy5").lazyload({ effect: "fadeIn", threshhold: 50 });
        $("img.lazy6").lazyload({ effect: "fadeIn", threshhold: 50 });
        var count1 = 0, count2 = 0;
        //preloader
        var winDow = $(window);
        winDow.load(function () {
            var mainDiv = jQuery('body.hasLoad'),
                preloader = jQuery('#loading-page');
            preloader.stop().delay(1000).fadeOut(800, function () {
                mainDiv.show(function () {
                    $('body.hasLoad #desktop-device').css({ "visibility": "visible" });
                    $('body.hasLoad nav.menu').css({ "visibility": "visible" });
                    $('body.hasLoad #httt').css({ "visibility": "visible" });
                    $('body.hasLoad #dealPanel').css({ "visibility": "visible" });
                    setTimeout(function () { $('body.hasLoad nav.menu').removeClass('active'); }, 1500);
                    $("#layerslider").layerSlider({
                        pauseOnHover: false,
                        autoPlayVideos: false,
                        responsive: true,
                        //layersContainer: 1280,
                        //responsiveUnder:1280,
                        showBarTimer: false,
                        showCircleTimer: false,
                        navButtons: false,
                        navStartStop: false,
                        skinsPath: '/themes/assets/LayerSlider-5.0.2/layerslider/skins/',

                    });
                });
            })
        })
        if ($(window).width() < 768) {

            $('#layerslider').css({ "width": 1280 });
            $('#layerslider').css({ "height": 672 });
        }
        //submenu
        $('.mainMenu li a .subOpen').click(function (event) {

            event.preventDefault();
            $(this).parents('li').addClass('open');
        })
        $('.sub-menu li .back').click(function (e) {
            e.preventDefault();
            $(this).parents('li').removeClass('open');
        })

        jQuery('#btn1ht').click(
        function () {
            count1++;
            var Event = function (someNumber) {
                return (someNumber % 2 == 0) ? true : false;
            };
            if (Event(count1) == false) {
                jQuery('#httt').addClass('in');
            }
            else if (Event(count1) == true) {
                jQuery('#httt').removeClass('in');
            }
        });
        jQuery('#dealPanelbtn').click(
        function () {
            count2++;
            var Event = function (someNumber) {
                return (someNumber % 2 == 0) ? true : false;
            };
            if (Event(count2) == false) {
                jQuery('#dealPanel').addClass('in');
            }
            else if (Event(count2) == true) {
                jQuery('#dealPanel').removeClass('in');
            }
        });
        jQuery('#desktop-device').click(function () {
            if (jQuery('#httt').hasClass("in")) {
                jQuery('#httt').removeClass("in");
                count1--;
            };
            if (jQuery('#dealPanel').hasClass("in")) {
                jQuery('#dealPanel').removeClass("in");
                count2--;
            };
        })
        if ($(window).width() > 992) {
            $('.sm-menu').on("mouseover", function () {
                $('.toggle-push-left').click();
            })
            $('.toggle-push-left').on("mouseover", function () {
                $(this).click();
            })
            $('nav.menu').mouseleave(function () {

                $('.close-menu').click();
            })
        }
        /*timeout show saleoff left panel*/
        //the first after 15 second show popup
        var myVar;
      //  setTimeout(function () { myTimer(); }, 15000);
       // myRunFunction();
        function myRunFunction() {
            console.log('run my funtion');
            myVar = setInterval(function () { myTimer() }, 120000);
        }
        function myTimer() {
            console.log('click button');
            $('#dealPanelbtn').click();
            setTimeout(function () {
                $('#dealPanelbtn').click();
            }, 3000);
        }
        function myStopFunction() {
            clearInterval(myVar);
            myRunFunction();
        }

        //backtotop
        $('.backToTop').click(function () {
            $('.scrollBar').mCustomScrollbar('scrollTo', 'top');
            return false;
        });

    })//end ready

    //window load
    $(window).load(function () {
        $(".scrollBar").mCustomScrollbar({
            scrollButtons: { enable: true },
            scrollInertia: 200,
          //  theme: "rounded-dots-dark",
            scrollbarPosition: "inside",
            callbacks: {
                whileScrolling: function () {
                    var xx = this.mcs.draggerTop;
                    if (xx > 100) {
                        $('.backToTop').addClass("setRight");
                    }
                    else {

                        $('.backToTop').removeClass("setRight");
                    }
                },
            },

        });

        //click link customer album
        $('#cusClick').click(function (e) {
            e.preventDefault();
            $('#searchCusId').addClass('open');
            $('.close-menu').click();
        });
        $('.customerSearch .btn-close').click(function (e) {
            e.preventDefault();
            $('#searchCusId').removeClass('open');

        });
        $("nav.menu .inner").mCustomScrollbar({
            theme: "minimal-dark",
            scrollInertia: 400,
            scrollbarPosition: "outsite"
        });
    })//end load

    $(window).resize(function () {
        if ($(window).width() < 768) {

            $('#layerslider').css({ "width": 1092 });
            $('#layerslider').css({ "height": 672 });
        }
    })


})(jQuery)