$(function(){
var ww = document.body.clientWidth;

$(document).ready(function() {
	$(".menu li a").each(function() {
		if ($(this).next().length > 0) {
			$(this).addClass("parent");
		};
	})
	
	$(".toggleMenu").click(function(e) {
		e.preventDefault();
		$(this).toggleClass("active");
		$(".menu").toggle();
	});
	adjustMenu();
})

$(window).bind('resize orientationchange', function() {
	ww = document.body.clientWidth;
	adjustMenu();
});

var adjustMenu = function() {
	if (ww < 800) {
		$(".toggleMenu").css("display", "inline-block");
		if (!$(".toggleMenu").hasClass("active")) {
			$(".menu").hide();
		} else {
			$(".menu").show();
		}
		$(".menu li").unbind('mouseenter mouseleave');
		$(".menu li a.parent").unbind('click').bind('click', function(e) {
			// must be attached to anchor element to prevent bubbling
			e.preventDefault();
			$(this).parent("li").toggleClass("hover");
		});
	} 
	else if (ww >= 800) {
		$(".toggleMenu").css("display", "none");
		$(".menu").show();
		$(".menu li").removeClass("hover");
		$(".menu li a").unbind('click');
		$(".menu li").unbind('mouseenter mouseleave').bind('mouseenter mouseleave', function() {
		 	// must be attached to li so that mouseleave is not triggered when hover over submenu
		 	$(this).toggleClass('hover');
		});
	}
}




    $(".menu li").on('mouseenter mouseleave', function (e) {

        var elm = $('ul:first', this);
        var off = elm .offset();
        var l = off.left;
        var w = elm.width();
        var docH = $(".container").height();
        var docW = $(".container").width();

        var isEntirelyVisible = (l+ w <= docW);
                 
        if ( ! isEntirelyVisible ) {
            $(this).addClass('edge');
        } else {
            $(this).removeClass('edge');
        }
    });

});//]]>  

