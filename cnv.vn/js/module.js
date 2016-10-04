function ResizeModule() {

	/*resize detail*/
	var Wdetail=$('#owl-detail-slide').width();
	var Hdetail=Wdetail;
	$('#owl-detail-slide .img, #owl-detail-slide .img a').height(Hdetail);
	$('#owl-detail-slide .img img').css({'max-height':Hdetail});
	/*resize detail thumb*/
	var Wthumb=$('#owl-detail-slide-thumb .img').width();
	var Hthumb=Wthumb;
	$('#owl-detail-slide-thumb .img, #owl-detail-slide-thumb .img a').height(Hthumb);
	$('#owl-detail-slide-thumb .img img').css({'max-height':Hthumb});	
}



$(function () {

    /*
	$(window).scroll(function () {
		if ($(this).scrollTop() > 300) {
			$('.back-top').fadeIn();
		} else {
			$('.back-top').fadeOut();
		}
	}); */

	// scroll body to 0px on click
	$('.back-top').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 500);
		return false;
	});
	
	$('.fancybox').fancybox();
	
	var Xwidth=$(window).width();
	if(Xwidth>990) {
		new WOW().init();
	}
	
	/* slide detail start */
	var sync1 = $("#owl-detail-slide");
	var sync2 = $("#owl-detail-slide-thumb");

	sync1.owlCarousel({
		singleItem : true,
		slideSpeed : 1000,
		navigation : true,
		navigationText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
		pagination:false,
		afterAction : syncPosition,
		responsiveRefreshRate : 200,
	});

	sync2.owlCarousel({
		items : 4,
		itemsDesktop      : [1199,4],
		itemsDesktopSmall     : [979,4],
		itemsTablet       : [768,4],
		itemsMobile       : [479,4],
		pagination:false,
		responsiveRefreshRate : 100,
		afterInit : function(el){
			el.find(".owl-item").eq(0).addClass("synced");
		},
		afterAction: function(){
			setTimeout(function() { ResizeModule() },200);	
		}
	});

	function syncPosition(el){
		var current = this.currentItem;
		sync2
		.find(".owl-item")
		.removeClass("synced")
		.eq(current)
		.addClass("synced")
		if(sync2.data("owlCarousel") !== undefined){
			center(current)
		}
	}

	sync2.on("click", ".owl-item", function(e){
		e.preventDefault();
		var number = $(this).data("owlItem");
		sync1.trigger("owl.goTo",number);
	});

	function center(number){
		var sync2visible = sync2.data("owlCarousel").owl.visibleItems;
		var num = number;
		var found = false;
		for(var i in sync2visible){
			if(num === sync2visible[i]){
				var found = true;
			}
		}

		if(found===false){
			if(num>sync2visible[sync2visible.length-1]){
				sync2.trigger("owl.goTo", num - sync2visible.length+2)
			}else{
				if(num - 1 === -1){
					num = 0;
				}
				sync2.trigger("owl.goTo", num);
			}
		} else if(num === sync2visible[sync2visible.length-1]){
			sync2.trigger("owl.goTo", sync2visible[1])
		} else if(num === sync2visible[0]){
			sync2.trigger("owl.goTo", num-1)
		}

	}
	
	/* slide detail end */
	

	
	$("#other-carousel").owlCarousel({

		items : 3,
		itemsDesktop : [1199, 3],
		itemsDesktopSmall : [979, 3],
		itemsTablet : [768, 2],
		itemsTabletSmall : false,
		itemsMobile : [479, 2],
		navigation : true,
        navigationText : ["<img src='/templates/skins/images/prev_home.png' alt='prev' />", "<img src='/templates/skins/images/next_home.png' alt='next' />"],
		pagination:false,
		lazyLoad : true,
		autoPlay:true,
		afterAction: function(){
			setTimeout(function() { ResizeWindows() },200);
		}

	});	
	

	

	$(".refresh_capcha").click(function(){
		$.ajax({
			url: "/captcha/ajax.php",
			type:"POST",
			success:function(result){
				$(".img_capcha").attr('src','/captcha/captcha_code_file.php?rand='+result)
				$("#val_capcha").attr('value',result)
				
				$(".recode").val(result);
			}
		})
	});

	$("#form_register #email_val").focus(function() {
		$("#email-avalible").hide();
	})

	$("#form_register #email_check").focus(function() {
		var user=$('#email_val').val();
		$.ajax({
			   url:"/iadmin/check_ajax.php",
			   data:"do=check_email&str="+user,
			   type:"POST",
			   success:function(result){
				  if(result!="")
				  {
					   $("#email-avalible").show();
				  }
				  else
				  {
					   $("#email-avalible").hide();
				  }
			   }
		})
	})
	
	
	
	
});