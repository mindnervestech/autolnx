<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<!--[if IE 7 ]> <html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8 ]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" ng-app="gliderApp">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="google-site-verification" content="9Z8MSVa9CjEuNBRNdXR_BU1sIVo7fRHRxbaHJxL0GZ4" />
<link rel="shortcut icon" href="${hostnameimg}${siteLogo.faviconPath}">
<title>${siteLogo.tabText}</title>
<!-- Bootstrap core CSS -->
<link href="resources/autolinx/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="resources/autolinx/js/html5shiv.js"></script>
      <script src="resources/autolinx/js/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yellowtail%7COpen%20Sans%3A400%2C300%2C600%2C700%2C800" media="screen" />
<!-- Custom styles for this template -->
<link href="resources/autolinx/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="resources/autolinx/css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="resources/autolinx/css/jquery.bxslider.css" type="text/css" media="screen" />
<link href="resources/autolinx/css/jquery.fancybox.css" rel="stylesheet">
<link href="resources/autolinx/css/jquery.selectbox.css" rel="stylesheet">
<link href="resources/autolinx/css/style.css" rel="stylesheet">
<link href="resources/autolinx/css/mobile.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/autolinx/css/settings.css" media="screen" />
<link href="resources/autolinx/css/animate.min.css" rel="stylesheet">
<link href="resources/autolinx/css/ts.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="resources/autolinx/js/jquery.min.js"></script>
<script src="resources/autolinx/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/wow.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript" src="resources/autolinx/js/angular.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/ng-infinite-scroll.js"></script>
<script src="http://www.google.com/recaptcha/api.js?render=explicit&onload=vcRecaptchaApiLoaded" async defer></script>
<script type="text/javascript" src="resources/autolinx/js/angular-recaptcha.js"></script>
<script type="text/javascript" src="resources/autolinx/scripts/app.js"></script>
<script type="text/javascript" src="resources/autolinx/scripts/controller.js"></script>


<link type="text/css" rel="stylesheet" href="resources/autolinx/css/pnotify_css/pnotify.buttons.css"> 
<link type="text/css" rel="stylesheet" href="resources/autolinx/css/pnotify_css/pnotify.core.css"> 


<script src="resources/autolinx/js/pnotify/pnotify.core.js" type="text/javascript"></script>	
<script src="resources/autolinx/js/pnotify/pnotify.buttons.js" type="text/javascript"></script>
<script src="resources/autolinx/js/pnotify/pnotify.confirm.js" type="text/javascript"></script> 
<script src="resources/autolinx/js/pnotify/angular-pnotify.js" type="text/javascript"></script>


<script type="text/javascript">
$(document).ready(function() 
{
		var isMobile = {
			Android: function() {
				return navigator.userAgent.match(/Android/i);
			},
			BlackBerry: function() {
				return navigator.userAgent.match(/BlackBerry/i);
			},
			iOS: function() {
				return navigator.userAgent.match(/iPhone|iPod/i);
			},
			Opera: function() {
				return navigator.userAgent.match(/Opera Mini/i);
			},
			Windows: function() {
				return navigator.userAgent.match(/IEMobile/i);
			},
			any: function() {
				return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
			}
		};
		if(isMobile.any() ) {
				window.location.href="http://glider-autos.com/glivr/mobile/home";
				return false;
		}
	
}); 
			

</script>


<!-- Twitter Feed Scripts 
     Uncomment to activate

<script type="text/javascript" src="resources/autolinx/js/twitter/jquery.tweet.js"></script>
<script type="text/javascript" src="resources/autolinx/js/twitter/twitter_feed.js"></script> -->

</head>

<body ng-controller="HomeController" ng-init='initFunction()'>
<input type="hidden" id="contextpath" value="${pageContext.request.contextPath}">
<input type="hidden" id="vehicleLocation" value="${myprofile.address}">
<!--Header Start-->
<header class="clearfix affix-topno_resize no_header_resize_mobile header-home" no_resize="">
  <section class="toolbar">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <ul class="left-none">
            <li><i class="fa fa-search"></i>
              <input type="search" placeholder="Search" class="search_box">
            </li>
          </ul>
        </div>
        <div class="col-lg-6">
          <ul class="right-none pull-right company_info">
            <li><a href="tel:18005670123"><i class="fa fa-phone"></i> ${myphone}</a></li>
            <li class="address"><a href="http://maps.google.com/?q=${myprofile.address }" target="_blank"><i class="fa fa-map-marker"></i>${myprofile.address} </a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="toolbar_shadow"></div>
  </section>
  <div class="bottom-header" >
    <div class="container">
      <nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid"> 
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <a class="logo" href="${pageContext.request.contextPath}"><img src="${hostnameimg}${siteLogo.logoPath}" alt style="height:100px;"></a> </div>
          
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav pull-right" style="margin-top: 14px;">
              <li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
              <li ng-if="${newCount != 0 && usedCount == 0}"><a href="${pageContext.request.contextPath}/findVehicles/New"">Inventory</a></li>
              <li ng-if="${newCount == 0 && usedCount != 0}"><a href="${pageContext.request.contextPath}/findVehicles/Used">Inventory</a></li>
              <li class="dropdown" ng-if="${newCount != 0 && usedCount != 0}"><a href="" class="dropdown-toggle" data-toggle="dropdown">Inventory <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                      <li><a href="${pageContext.request.contextPath}/findVehicles/New">New</a></li>
                      <li><a href="${pageContext.request.contextPath}/findVehicles/Used">Used</a></li>
                      <li ng-if="${comingSoonCount != 0}"><a href="${pageContext.request.contextPath}/findVehicles/comingSoon" >Coming Soon</a></li>
                  </ul>
              </li>
              <li ng-if="${warHeader.hideMenu == 0}"><a href="${pageContext.request.contextPath}/warranty">Warranty</a></li>
              <li><a href="${pageContext.request.contextPath}/aboutUs">About Us</a></li>
              <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
              <li><a href="${pageContext.request.contextPath}/contactUs">Contact Us</a></li>
            </ul>
          </div>
          <!-- /.navbar-collapse --> 
        </div>
        <!-- /.container-fluid --> 
      </nav>
    </div>
  </div>
</header>
<!--Header End-->

<div class="clearfix imgSet"></div>
<section class="banner-wrap">
	<a href="#" class="scroll-slider-down"></a>
    <div class="banner">
        <div class="tp-banner-container">
            <div class="tp-banner" >
                <ul>
                
                    <!-- SLIDE  -->
                   <%--  <c:forEach var="row" items="${sliderImages}"> --%>
                   <c:choose>
				    <c:when test="${sliderImages.size()>=1}">
				       <li data-transition="fade" data-delay="4000" data-slotamount="10" data-speed="100" data-masterspeed="300" > 
                        <!-- MAIN IMAGE --> 
                        <a href="${sliderImages[0].link}">
                        <img src="${hostnameimg}${sliderImages[0].url}"   alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" style="width:100%;height:100%;"> 
                        </a>
                        <!-- LAYERS -->
                        <div class="tp-caption mediumlarge_light_white_center domainate customin customout start"
						data-x="0"
						data-hoffset="0"
						data-y="214"

						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000"
						data-start="500"
						data-easing="Back.easeInOut"
						data-endspeed="300">${sliderImages[0].slider1} </div>
                        
                        <!-- LAYER NR. 1 -->
                        <div class="tp-caption internet  fade"
						data-x="0"
						data-y="282"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; letter-spacing: -3px;">${sliderImages[0].slider2} ${sliderImages[0].slider3}</div>
                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption attract sfl"
						data-x="0"
						data-y="369"
						data-speed="500"
						data-start="1200"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; top: 371px; ">${sliderImages[0].slider4} ${sliderImages[0].slider5} ${sliderImages[0].slider6} ${sliderImages[0].slider7}</div>
                        <!-- LAYER NR. 3 -->
                        <div class="tp-caption more skewfromright "
						data-x="100"
						data-y="425"
						data-speed="800"
						data-start="1900"
						data-easing="Elastic.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; left:186px;">${sliderImages[0].slider8} </div>
                       <!--  LAYER NR. 4 -->
                        <div class="tp-caption qualified skewfromright"
						data-x="0"
						data-y="476"
						data-speed="800"
						data-start="2600"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6">${sliderImages[0].slider9} ${sliderImages[0].slider10} ${sliderImages[0].slider11}</div>
                    </li>
				    </c:when>    
				    <c:otherwise>
				        
				    </c:otherwise>
					</c:choose>
                    
                    <c:choose>
					    <c:when test="${sliderImages.size()>=2}">
					       <li data-transition="fade" data-delay="4000" data-slotamount="10" data-speed="100" data-masterspeed="300"> 
                        <a href="${sliderImages[1].link}">
                        <img src="${hostnameimg}${sliderImages[1].url}" alt="slidebg1" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" style="width:100%;height:auto;"> 
                        </a>
                        <!-- LAYERS -->
                        <div class="tp-caption mediumlarge_light_white_center invest start"
						data-x="190"
						data-hoffset="0"
						data-y="170"
                        
						data-speed="1000"
						data-start="500"
						data-easing="Back.easeInQuart"
						data-endspeed="300">${sliderImages[1].slider21} ${sliderImages[1].slider22} ${sliderImages[1].slider23} ${sliderImages[1].slider24} ${sliderImages[1].slider25} ${sliderImages[1].slider26} ${sliderImages[1].slider27} ${sliderImages[1].slider28} </div>
                        
                        <!-- LAYER NR. 1 -->
                        <div class="tp-caption move mediumlarge_light_white_center fade"
						data-x="100"
						data-y="230"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; letter-spacing: -3px;width:24%;">${sliderImages[1].slider29} </div>
                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption light_brown mediumlarge_light_white_center sfl"
						data-x="300"
						data-y="230"
						data-speed="500"
						data-start="1200"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; top: 371px;width:24%; ">${sliderImages[1].slider30} </div>
                        <!-- LAYER NR. 3 -->
                        <div class="tp-caption dark_brown mediumlarge_light_white_center skewfromright "
						data-x="500"
						data-y="230"
						data-speed="800"
						data-start="1900"
						data-easing="Elastic.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; left:186px;width:24%;">${sliderImages[1].slider211} </div>
                        <!-- LAYER NR. 4 -->
                        <div class="tp-caption faster mediumlarge_light_white_center skewfromright"
						data-x="800"
						data-y="230"
						data-speed="800"
						data-start="2600"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6;width:24%;">${sliderImages[1].slider212} </div>
						
                        <!-- LAYER NR. 5 -->
                        <!-- <div class="tp-caption brown_line skewfromright"
						data-x="100"
						data-y="261"
						data-speed="800"
						data-start="2600"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6"><img src="http://demo.themesuite.com/automotive/images/brown_line.jpg" alt="underline"> </div> -->
                    </li>
					    </c:when>    
					    <c:otherwise>
					        
					    </c:otherwise>
					</c:choose>
                    
                    
                    <c:choose>
					    <c:when test="${sliderImages.size()>=3}">
					       <li data-transition="fade" data-delay="4000" data-slotamount="10" data-speed="100" data-masterspeed="300"> 
                        <a href="${sliderImages[2].link}">
                        <img src="${hostnameimg}${sliderImages[2].url}"   alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" style="width:100%;height:auto;"> 
                        </a>
                        <!-- LAYERS -->
                        <div class="tp-caption customin customout start green"
						data-x="40"
						data-hoffset="0"
						data-y="460"
					
						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000"
						data-start="500"
						data-easing="Back.easeInOut"
						data-endspeed="300">${sliderImages[2].slider31} ${sliderImages[2].slider32} ${sliderImages[2].slider33} ${sliderImages[2].slider34}</div>
                        
                        <!-- LAYER NR. 1 -->
                        <div class="tp-caption big_white fade"
						data-x="40"
						data-y="510"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6;">${sliderImages[2].slider35} ${sliderImages[2].slider36} ${sliderImages[2].slider37} ${sliderImages[2].slider38}</div>
						
						<div class="tp-caption mediumlarge_light_white_center thirdSlider start"
						data-x="40"
						data-hoffset="0"
						data-y="560"
                        
						data-speed="1000"
						data-start="500"
						data-easing="Back.easeInQuart"
						data-endspeed="300">${sliderImages[2].slider39} ${sliderImages[2].slider40} ${sliderImages[2].slider41} ${sliderImages[2].slider42}</div>
                    </li>
					    </c:when>    
					    <c:otherwise>
					        
					    </c:otherwise>
					</c:choose>
                    
                    
                    <%-- </c:forEach> --%>
                    
                </ul>
            </div>
        </div>
        <script type="text/javascript">
        	(function() {
					jQuery(function() {
						// slider
						var curWidth = jQuery(window).width(),
							revapi,
							offset = jQuery('header'),
							curHeigth,
							imageHeight,
							fullScreenState = false,
							fullScreenRes = 1400;

						if (jQuery(window).width() > fullScreenRes) {
							fullScreenState = true;
						}
						
						revapi = jQuery('.tp-banner').revolution(
						{
							delay:8000,
							startwidth:1170,
							startheight:561, //665 & ori 645 & fw 800
							hideThumbs:10,
							fullWidth:"off",
							fullScreen:'off',
							fullScreenOffsetContainer: "header",
							hideTimerBar: "on",
							navigationType:"none",
							stopAtSlide: 1

						});

						revapi.on('revolution.slide.onchange',function() {
								adjustSlider();
						});

						jQuery(window).resize(function() {
								adjustSlider();
						});

						function adjustSlider() {
							var el = jQuery('.tp-banner-container'),
								slideDownEl = jQuery('.scroll-slider-down');
							curWidth = jQuery(window).width();
							curHeigth = jQuery(window).height() - offset.height();
							imageHeight = jQuery('.tp-banner-container li img').height();
							if (curWidth < fullScreenRes) {
								if (imageHeight > 540) {
									el.height('540');
								} else {
									el.height(imageHeight);
								}
								fullScreenState = false;
								slideDownEl.css('opacity', '0');
							} else {
								el.height(curHeigth);
								fullScreenState = true;
								slideDownEl.css('opacity', '1');
							}
						}

						// slide down init
						var slideDownEl = jQuery('.scroll-slider-down');
						if (fullScreenState === true) {
							slideDownEl.css('opacity', '1');
						} else {
							slideDownEl.css('opacity', '0');
						}

						// slide down click
						slideDownEl.click(function(e) {
							e.preventDefault();
							var scrollFrom = jQuery('.tp-banner-container');
							jQuery('html, body').animate({
								scrollTop: jQuery(window).height() + 20
							}, 2000);
						});
					});
				})(jQuery);
		</script> 
        
        <!-- END REVOLUTION SLIDER --> 
        
        <!-- Content End --> 
        
    </div>
</section>
<section class="message-wrap">
  <div class="container">
    <div class="row">
      <h2 class="col-lg-9 col-md-8 col-sm-12 col-xs-12 xs-padding-left-15"><strong style="color:#ff0000;">${siteContent.heading1}</strong> ${siteContent.heading2} </h2>
      <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12 "> 
      	<a class="default-btn pull-right action_button lg-button mainBoxIn1" style="cursor:pointer;" id="brandBtn" data-toggle="modal" data-target="#carBrandModal">Follow car brand</a>
	  		<div class="boxIn">
            	<ul>
                	<li>
                    	<img src="resources/autolinx/images/image-m-1.jpg" alt="">
                        <a href="#"><span>Inventory</span></a>
                    </li>
                    <li>
                    	<img src="resources/autolinx/images/image-m-2.jpg" alt="">
                        <a href="#"><span>New Arrivals</span></a>
                    </li>
                     <li>
                    	<img src="resources/autolinx/images/image-m-3.jpg" alt="">
                        <a href="#"><span>Directions</span></a>
                    </li>
                     <li>
                    	<img src="resources/autolinx/images/image-m-4.jpg" alt="">
                        <a href="#"><span>About Us</span></a>
                    </li>
                </ul>
            </div>	  
	  </div>
    </div>
  </div>
  <div class="message-shadow"></div>
</section>
<!--message-wrap ends-->
<section class="content">
  <div class="container">
    <div class="inner-page homepage margin-bottom-none">
      <section class="car-block-wrap padding-bottom-40">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 margin-bottom-none">
              <div class="flip margin-bottom-30">
                <div class="card">
                  <div class="face front"><img class="img-responsive" src="${hostnameimg}${featuredImages[0].url}" alt=""></div>
                  <div class="face back">
                    <div class='hover_title' style="line-height:100px;text-align:center;"><a href="${featuredImages[0].link}" style="color:white;display:inline-block;vertical-align: middle;line-height: normal;">${featuredImages[0].description}</a></div>
                    <a href="inventory-listing.html"></a> <a href="resources/autolinx/images/car1-lrg.jpg" class="fancybox"></a> </div>
                </div>
              </div>
              <%-- <h4><a href="${featuredImages[0].link}">${featuredImages[0].description}</a></h4> --%>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 margin-bottom-none">
              <div class="flip horizontal margin-bottom-30">
                <div class="card">
                  <div class="face front"><img class="img-responsive" src="${hostnameimg}${featuredImages[1].url}" alt=""></div>
                  <div class="face back">
                    <div class='hover_title' style="line-height:100px;text-align:center;"><a href="${featuredImages[1].link}" style="color:white;display:inline-block;vertical-align: middle;line-height: normal;">${featuredImages[1].description}</a></div>
                    <a href="inventory-listing.html"></a> <a href="resources/autolinx/images/car2-lrg-200x150-200x150.jpg-200x150-200x150.jpg-200x150-200x150.jpg" class="fancybox"></a> </div>
                </div>
              </div>
              <%-- <h4><a href="${featuredImages[1].link}">${featuredImages[1].description}</a></h4> --%>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 margin-bottom-none">
              <div class="flip margin-bottom-30">
                <div class="card">
                  <div class="face front"><img class="img-responsive" src="${hostnameimg}${featuredImages[2].url}" alt=""></div>
                  <div class="face back">
                    <div class='hover_title' style="line-height:100px;text-align:center;"><a href="${featuredImages[2].link}" style="color:white;display:inline-block;vertical-align: middle;line-height: normal;">${featuredImages[2].description}</a></div>
                    <a href="inventory-listing.html"></a> <a href="resources/autolinx/images/car3.jpg" class="fancybox"></a> </div>
                </div>
              </div>
              <%-- <h4><a href="${featuredImages[2].link}">${featuredImages[2].description}</a></h4> --%>
            </div>
          </div>
        </div>
      </section>
      
      <!--car-block-wrap ends-->
      <div class="row parallax_parent design_2 margin-bottom-40 margin-top-30">
        <div class="parallax_scroll clearfix" data-velocity="-.5" data-offset="-200" data-image="resources/autolinx/images/parallax1.jpg">
          <div class="overlay">
            <div class="container">
              <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 padding-left-none xs-margin-bottom-none xs-padding-top-30 scroll_effect bounceInLeft"> <span class="align-center"><i class="fa fa-6x fa-bar-chart-o"></i></span>
                  <h3>Results Driven</h3>
                  <p>Our experienced advisors are handpicked for their courtesy, knowledge and enthusiasm. They will make every effort to procure the best selection of quality, pre-owned vehicles on the market.</p>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 xs-margin-bottom-none xs-padding-top-30 scroll_effect bounceInLeft" data-wow-delay=".2s"> <span class="align-center"><i class="fa fa-6x fa-road"></i></span>
                  <h3>Proven Technology</h3>
                  <p>From amazing hybrid, to luxurious sedan, all terrain SUV's, and blazing fast sports cars, our cars go the distance.</p>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 xs-margin-bottom-none xs-padding-top-30 scroll_effect bounceInRight" data-wow-delay=".2s"> <span class="align-center"><i class="fa fa-6x fa-flag-checkered"></i></span>
                  <h3>Winning Culture</h3>
                  <p>Our team has over 30 years of combined experience in the areas of automotive and online sales and strives to provide you with the greatest experience possible when purchasing your new pre-owned vehicle.</p>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 xs-margin-bottom-none xs-padding-top-30 padding-right-none scroll_effect bounceInRight"> <span class="align-center"><i class="fa fa-6x fa-dashboard"></i></span>
                  <h3>Top Performance</h3>
                  <p>The brands we sell speak volumes: Mercedes-Benz, BMW, Audi, Jaguar, Land Rover, Lamborghini, Ferrari, Aston Martin, MINI.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--car-info-wrap ends-->
      
            
      
      <section class="welcome-wrap padding-top-30 sm-horizontal-15">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 welcome padding-left-none padding-bottom-40 scroll_effect fadeInUp">
          <h4 class="margin-bottom-25 margin-top-none"><strong>${siteContent.desc_heading1}</strong> ${siteContent.desc_heading2}</h4>
          <p><span class="firstcharacter">${siteContent.descriptionFirstChar}</span>${siteContent.description}</p>
          <!-- <p>Visit our showroom today and drive away with your new pre-owned quality car. Contact us via phone or email to set up a time convenient for you, or simply drop by for a great cup of coffee.</p> -->
        </div>
        <!--welcome ends-->
        
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 padding-right-none sm-padding-left-none md-padding-left-15 xs-padding-left-none padding-bottom-40 scroll_effect fadeInUp" data-wow-delay='.2s' style="z-index:100">
          <h4 class="margin-bottom-25 margin-top-none"><strong>SEARCH</strong> OUR INVENTORY</h4>
          <div class="search-form margin-top-20 padding-vertical-20">
           <form method="post" modelAttribute="userform" action="findVehicle">
              <div class="select-wrapper clearfix">
                <div class="col-md-6">
                  <div class="my-dropdown make-dropdown">
                    <select name="make" ng-model="makeType" class="custom" tabindex="1" ng-change="getModel(makeType)">
                    	<option value="" selected>Makes</option>
						<option ng-repeat="make in makeList" value="{{make}}">{{make}}</option>
                    </select>
                  </div>
                </div> 
                <div class="col-md-6">
                <div class="my-dropdown">
                		<select id="fuelType" name="fuelType" ng-model="fuelType" class="customDis" tabindex="1" ng-change="getBodyStyle(fuelType)" disabled="true">
                    		<option value="" selected>Fuel Type</option>
							<option ng-repeat="fuel in fuelList" value="{{fuel}}">{{fuel}}</option>
                    	</select>
                     </div>
                     </div>
                </div>
              <div class="select-wrapper clearfix">
                <div class="col-md-6">
                  <div class="my-dropdown model-dropdown">
                  	<select id="modelType" name="model" ng-model="modelType" class="customDis" tabindex="1" ng-change="getYear(modelType)" disabled="true">
                    	<option value="" selected>Model</option>
						<option ng-repeat="model in modelList" value="{{model}}">{{model}}</option>
                    </select>
                  </div>
                </div>
                 <div class="col-md-6">
                  <div class="my-dropdown body-styles-dropdownn">
                  		<select id="bodyStyle" name="bodyStyle" ng-model="bodyStyle" class="customDis" tabindex="1"  disabled="true">
                    		<option value="" selected>Body Styles</option>
							<option ng-repeat="bodyStyle in bodyList" value="{{bodyStyle}}">{{bodyStyle}}</option>
                    	</select>
                  </div>
                </div>
              
              </div>
            <div class="select-wrapper clearfix">
                <div class="col-md-6">
                  <div class="my-dropdown make-dropdown">
                  		<select id="year" name="year" ng-model="year" class="customDis" tabindex="1" ng-change="getFeulType(year)" disabled="true">
                    		<option value="" selected>Year</option>
							<option ng-repeat="year in yearList" value="{{year}}">{{year}}</option>
                    	</select>
                     </div>
                </div>
              </div>
              <div class="clear"></div>
              <div class="select-wrapper clearfix">
                <div class="form-element">
                  <input type="submit" value="Find My New Vehicle" class="find_new_vehicle pull-right md-button">
                </div>
              </div>
            </form>
          </div>
        </div>
        <!--invetory ends--> 
      </div>
      <div class="recent-vehicles-wrap margin-top-30 sm-padding-left-none padding-bottom-40 classBlock1">
        <div class="row">
          <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 recent-vehicles padding-left-none">
            <h5 class="margin-top-none">Recent Vehicles</h5>
            <p>Browse through the vast
              selection of vehicles that
              have recently been added
              to our inventory.</p>
            <div class="arrow3 clearfix margin-top-15 xs-margin-bottom-25" id="slideControls3"><span class="prev-btn"></span><span class="next-btn"></span></div>
          </div>
          <div class="col-md-10 col-sm-8 padding-right-none sm-padding-left-none xs-padding-left-none">
            <div class="carasouel-slider3">
            <c:forEach var="option" items='${recentVehicles}'>
            <div class="slide">
           
                    <div class="car-block">
                        <div class="img-flex"> <a href="${pageContext.request.contextPath}/vehicleDetails/${option.vin}"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="${hostnameimg}${option.path}" alt="" class="img-responsive"> </div>
                        <div class="car-block-bottom">
                            <h6><strong>${option.year} ${option.make}</strong></h6>
                            <h6 ng-if="${option.mileage != null}"><strong>Mileage: &nbsp;&nbsp;</strong>${option.mileage}</h6>
                            <h5 ng-if="${option.price!= '$0'}"> <c:set var="string2" value="${fn:split(option.price, '$')}"/> <c:set var="string3" value="${fn:join(string2, '')}" />  $<fmt:formatNumber value="${string3}" type="number"/> </h5>
                            <h5 ng-if="${option.price == '$0'}"> ${option.comingSoonDate} </h5>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
          </div>
          <%-- <div class="col-md-10 col-sm-8 padding-right-none sm-padding-left-none xs-padding-left-none">
            <div class="carasouel-slider3">
            <div class="slide" ng-repeat="recent in recentVehicles" style="float: left; list-style: none; position: relative; margin-right: 30px; width: 170px;">
                <div class="car-block">
               
                href="${pageContext.request.contextPath}/warranty"
                 <!-- <img class="preview" src="${pageContext.request.contextPath}${hostnameimg}{{vehicle.path}}" alt="preview">    <img src="resources/autolinx/images/DSC_0002-167x119.jpg"-->
                  <div class="img-flex"><a href="${pageContext.request.contextPath}/vehicleDetails/{{recent.vin}}"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a>  <img src="${hostnameimg}{{recent.path}}" alt="" class="img-responsive no_border" style="height:121px;"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>{{recent.year}} {{recent.make}} {{recent.model}}</strong></h6>
                    <h6></h6>
                       <h5>{{recent.price}}</h5>
                  </div>
                </div>
              </div>
            </div>
          </div> --%>
          <div class="bx-controls"></div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Footer Map -->
  
  <div class='fullwidth_element_parent margin-top-30 padding-bottom-40'>
    <div id="map-canvas" style="width:100%; height:390px;"></div>
  </div>
  <div class="car-rate-block clearfix margin-top-30 padding-bottom-40">
    <div  class="col-lg-3 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none padding-left-none scroll_effect bounceInLeft">
    <div class="col-lg-6 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none padding-left-none scroll_effect bounceInLeft">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">Financing.</h4>
        <a href="#"><span class="align-center"><i class="fa fa-tag fa-7x"></i></span></a> </div>
    </div>
    <div class="col-lg-6 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none scroll_effect bounceInLeft" data-wow-delay=".2s">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">Warranty.</h4>
        <a href="#"><span class="align-center"><i class="fa fa-cogs fa-7x"></i></span></a> </div>
    </div>
    </div>
    <div class="col-lg-6 col-md-4 col-sm-12 col-xs-12 padding-left-none padding-right-none hours_operation">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">What are our Hours of Operation?</h4>
        <div class="row" style="margin-left: 90px;">
          <div  data-wow-delay=".4s"   ng-class="${saleList1[0].sunCheckValue} !=1 && ${saleList2[0].sunCheckValue} !=1 ?'txtMargin col-lg-4 col-md-4 col-sm-12 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-40 md-margin-bottom-none scroll_effect bounceInUp':'col-lg-4 col-md-4 col-sm-12 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-40 md-margin-bottom-none scroll_effect bounceInUp' ">
            <table class="table table-bordered no-border font-13px margin-bottom-none">
              <thead>
                <tr>
                  <td colspan="2"><strong>Sales Department</strong></td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Mon:</td>
                  <td ng-if="${saleList[0].monFlag} ==1">Closed</td>
                  <td ng-if="${saleList[0].monFlag} !=1"> ${saleList[0].monOpenTime} - ${saleList[0].monCloseTime} </td>
                </tr>
                <tr>
                  <td>Tue:</td>
                  <td ng-if="${saleList[0].tueFlag} ==1">Closed</td>
                  <td ng-if="${saleList[0].tueFlag} !=1">${saleList[0].tueOpenTime} - ${saleList[0].tueCloseTime}</td>
                </tr>
                <tr>
                  <td>Wed:</td>
                  <td ng-if="${saleList[0].wedFlag} ==1">Closed</td>
                  <td  ng-if="${saleList[0].wedFlag} !=1">${saleList[0].wedOpenTime} - ${saleList[0].wedCloseTime}</td>
                </tr>
                <tr>
                  <td>Thu:</td>
                  <td ng-if="${saleList[0].thuFlag} ==1">Closed</td>
                  <td  ng-if="${saleList[0].thuFlag} !=1">${saleList[0].thuOpenTime} - ${saleList[0].thuCloseTime}</td>
                </tr>
                <tr>
                  <td>Fri:</td>
                  <td ng-if="${saleList[0].friFlag} ==1">Closed</td>
                  <td  ng-if="${saleList[0].friFlag}!=1">${saleList[0].friOpenTime} - ${saleList[0].friCloseTime}</td>
                </tr>
                <tr>
                  <td>Sat:</td>
                  <td ng-if="${saleList[0].satFlag}==1">Closed</td>
                  <td  ng-if="${saleList[0].satFlag}!=1"  >${saleList[0].satOpenTime} - ${saleList[0].satCloseTime}</td>
                </tr>
                <tr>
                  <td>Sun:</td>
                  <td ng-if="${saleList[0].sunFlag}==1">Closed</td>
                  <td ng-if="${saleList[0].sunFlag}!=1">${saleList[0].sunOpenTime} - ${saleList[0].sunCloseTime}</td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none scroll_effect bounceInUp" data-wow-delay=".4s"  ng-if="${saleList1[0].sunCheckValue} == 1">
            <table class="table table-bordered no-border font-13px margin-bottom-none">
              <thead>
                <tr>
                  <td colspan="2"><strong>Service Department</strong></td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Mon:</td>
                  <td ng-if="${saleList1[0].monFlag} ==1">Closed</td>
                  <td ng-if="${saleList1[0].monFlag} !=1"> ${saleList1[0].monOpenTime} - ${saleList1[0].monCloseTime} </td>
                </tr>
                <tr>
                  <td>Tue:</td>
                  <td ng-if="${saleList1[0].tueFlag} ==1">Closed</td>
                  <td ng-if="${saleList1[0].tueFlag} !=1">${saleList1[0].tueOpenTime} - ${saleList1[0].tueCloseTime}</td>
                </tr>
                <tr>
                  <td>Wed:</td>
                  <td ng-if="${saleList1[0].wedFlag} ==1">Closed</td>
                  <td  ng-if="${saleList1[0].wedFlag} !=1">${saleList1[0].wedOpenTime} - ${saleList1[0].wedCloseTime}</td>
                </tr>
                <tr>
                  <td>Thu:</td>
                  <td ng-if="${saleList1[0].thuFlag} ==1">Closed</td>
                  <td  ng-if="${saleList1[0].thuFlag} !=1">${saleList1[0].thuOpenTime} - ${saleList1[0].thuCloseTime}</td>
                </tr>
                <tr>
                  <td>Fri:</td>
                  <td ng-if="${saleList1[0].friFlag} ==1">Closed</td>
                  <td  ng-if="${saleList1[0].friFlag}!=1">${saleList1[0].friOpenTime} - ${saleList1[0].friCloseTime}</td>
                </tr>
                <tr>
                  <td>Sat:</td>
                  <td ng-if="${saleList1[0].satFlag}==1">Closed</td>
                  <td  ng-if="${saleList1[0].satFlag}!=1"  >${saleList1[0].satOpenTime} - ${saleList1[0].satCloseTime}</td>
                </tr>
                <tr>
                  <td>Sun:</td>
                  <td ng-if="${saleList1[0].sunFlag}==1">Closed</td>
                  <td ng-if="${saleList1[0].sunFlag}!=1">${saleList1[0].sunOpenTime} - ${saleList1[0].sunCloseTime}</td>
                </tr>
              </tbody>
            </table>
          </div>
          
                 <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none scroll_effect bounceInUp" data-wow-delay=".4s" ng-if="${saleList2[0].sunCheckValue} ==1">
                  <div class="deparment" >
                    <table class="table table-bordered no-border font-12px hours_table ">
                      <thead>
                        <tr>
                          <td colspan="2"><strong>Parts Department</strong></td>
                        </tr>
                      </thead>
                      <tbody>
                          <tr>
                  <td>Mon:</td>
                  <td ng-if="${saleList2[0].monFlag} ==1">Closed</td>
                  <td ng-if="${saleList2[0].monFlag} !=1"> ${saleList1[0].monOpenTime} - ${saleList1[0].monCloseTime} </td>
                </tr>
                <tr>
                  <td>Tue:</td>
                  <td ng-if="${saleList2[0].tueFlag} ==1">Closed</td>
                  <td ng-if="${saleList2[0].tueFlag} !=1">${saleList2[0].tueOpenTime} - ${saleList2[0].tueCloseTime}</td>
                </tr>
                <tr>
                  <td>Wed:</td>
                  <td ng-if="${saleList2[0].wedFlag} ==1">Closed</td>
                  <td  ng-if="${saleList2[0].wedFlag} !=1">${saleList2[0].wedOpenTime} - ${saleList2[0].wedCloseTime}</td>
                </tr>
                <tr>
                  <td>Thu:</td>
                  <td ng-if="${saleList2[0].thuFlag} ==1">Closed</td>
                  <td  ng-if="${saleList2[0].thuFlag} !=1">${saleList2[0].thuOpenTime} - ${saleList2[0].thuCloseTime}</td>
                </tr>
                <tr>
                  <td>Fri:</td>
                  <td ng-if="${saleList2[0].friFlag} ==1">Closed</td>
                  <td  ng-if="${saleList2[0].friFlag}!=1">${saleList2[0].friOpenTime} - ${saleList2[0].friCloseTime}</td>
                </tr>
                <tr>
                  <td>Sat:</td>
                  <td ng-if="${saleList2[0].satFlag}==1">Closed</td>
                  <td  ng-if="${saleList2[0].satFlag}!=1"  >${saleList2[0].satOpenTime} - ${saleList2[0].satCloseTime}</td>
                </tr>
                <tr>
                  <td>Sun:</td>
                  <td ng-if="${saleList2[0].sunFlag}==1">Closed</td>
                  <td ng-if="${saleList2[0].sunFlag}!=1">${saleList2[0].sunOpenTime} - ${saleList2[0].sunCloseTime}</td>
                </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
          
          
          
          
          
        </div>
      </div>
    </div>
    <div class="col-lg-3 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none scroll_effect bounceInRight" data-wow-delay=".2s" >
    <div class="col-lg-6 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none scroll_effect bounceInRight" data-wow-delay=".2s">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">About Us.</h4>
        <a href="#"><span class="align-center"><i class="fa fa-users fa-7x"></i></span></a> </div>
    </div>
    <div class="col-lg-6 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none padding-right-none scroll_effect bounceInRight">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">Find Us.</h4>
        <a href="#"><span class="align-center"><i class="fa fa-map-marker fa-7x"></i></span></a> </div>
    </div>
    </div>
  </div>
   <c:if test="${testimonial.size()>=1}">
  <div class="vc_row wpb_row vc_row-fluid">
    <div class="vc_col-sm-12 wpb_column vc_column_container ">
      <div class="wpb_wrapper">
        <div class=""><!--Testimonials Start-->
          <div class="testimonial">
            <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;">
              <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 109px;">
                
                
                <ul class="testimonial_slider">
                
                   <c:forEach var="option" items='${testimonial}' varStatus="i">
                   <li>
                    <blockquote class="style1"><span>${option.testimonials}</span><strong>${option.signature}</strong> </blockquote>
                  </li>
         
                </c:forEach> 
                
                
                 <!--  <li style="float: left; list-style: outside none none; position: relative; width: 1118px; margin-right: 3px;" class="bx-clone">
                    <blockquote class="style1"><span>11111111111 experience was fantastic! &nbsp;I worked with Nick and Ed. Courteous and professional. &nbsp;They offered a very fair price. &nbsp;The car was detailed; the paperwork swift. Soup to nuts, 2 hours. &nbsp;They did not have one of the key fobs on the day of the sale, so Nick delivered it to me the next day. &nbsp;Next used car I buy will be from Autolinx!</span><strong>R M.</strong> </blockquote>
                  </li>
                  <li style="float: left; list-style: outside none none; position: relative; width: 1118px; margin-right: 3px;">
                    <blockquote class="style1"><span>
                      <div class="biz-rating biz-rating-very-large clearfix">
                        <div>
                          <div class="rating-very-large">Autolinx is awesome!! They didn’t have the car I was looking for but they didn’t give up, they kept looking till they found the perfect car for me with the best price… I was in the dealership in and out with my new car in less than one hour.. Thank you Ed and Autolinx team</div>
                        </div>
                      </div>
                      <p><strong>G N.</strong> </p>
                      </span></blockquote>
                  </li>
                  <li style="float: left; list-style: outside none none; position: relative; width: 1118px; margin-right: 3px;">
                    <blockquote class="style1"><span>I can’t say enough good things about this dealership. I’ve purchased two cars (BMW most recently) and have recommended many friends &ndash; all with great results. Ed and his team are straight shooters, very professional and knowledgable. They only have low mileage, gorgeous cars at very competitive prices &ndash; my biggest issue was which car to buy. If you’re looking for low mileage, honest cars at a great price, make sure to put Autolinx on your list of dealerships to visit.</span><strong>Marco M.</strong> </blockquote>
                  </li>
                  <li style="float: left; list-style: outside none none; position: relative; width: 1118px; margin-right: 3px;">
                    <blockquote class="style1"><span>I just bought a Jaguar from Autolinx. The experience was fantastic! &nbsp;I worked with Nick and Ed. Courteous and professional. &nbsp;They offered a very fair price. &nbsp;The car was detailed; the paperwork swift. Soup to nuts, 2 hours. &nbsp;They did not have one of the key fobs on the day of the sale, so Nick delivered it to me the next day. &nbsp;Next used car I buy will be from Autolinx!</span><strong>R M.</strong> </blockquote>
                  </li>
                  <li style="float: left; list-style: outside none none; position: relative; width: 1118px; margin-right: 3px;" class="bx-clone">
                    <blockquote class="style1"><span>
                      <div class="biz-rating biz-rating-very-large clearfix">
                        <div>
                          <div class="rating-very-large">Autolinx is awesome!! They didn’t have the car I was looking for but they didn’t give up, they kept looking till they found the perfect car for me with the best price… I was in the dealership in and out with my new car in less than one hour.. Thank you Ed and Autolinx team</div>
                        </div>
                      </div>
                      <p><strong>G N.</strong> </p>
                      </span></blockquote>
                  </li> -->
                </ul>
                
              </div>
            </div>
          </div>
          <!--Testimonials End-->
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>
  </c:if>
</section>
<!--welcome-wrap ends-->

<div class="row parallax_parent margin-top-30">
  <div class="parallax_scroll clearfix" data-velocity="-.5" data-offset="-300" data-no-repeat="true" data-image="resources/autolinx/images/parallax2.jpg">
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 padding-left-none margin-vertical-60"> <i class="fa fa-car"></i> <span class="animate_number margin-vertical-15"> <span class="number">2,000</span> </span> Cars Sold </div>
          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-vertical-60"> <i class="fa fa-money"></i> <span class="animate_number margin-vertical-15"> $<span class="number">750,000</span> </span> Amount Sold </div>
          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-vertical-60"> <i class="fa fa-users"></i> <span class="animate_number margin-vertical-15"> <span class="number">100</span>% </span> Customer Satisfaction </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</section>

<!--Footer Start-->
<footer class="design_2">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 padding-left-none md-padding-left-none sm-padding-left-15 xs-padding-left-15">
        <h4>Subscribe to the official  Newsletter and Inventory Updates</h4>
        <form method="post">
          <p>
            <label>Email Address:</label>
            <input type="email" required placeholder="Your email address" name="EMAIL">
          </p>
          <p>
            <label>First Name:</label>
            <input type="text" placeholder="Your first name" name="FNAME">
          </p>
          <p>
            <label>Last Name:</label>
            <input type="text" placeholder="Your last name" name="LNAME">
          </p>
          <p>
            <label>Newsletter:</label>
            <input type="checkbox" name="newsletter" style="width: 15px;height: 15px;margin-left: 5px;position: inherit;">
          </p>
          <p>
            <label>Inventory:</label>
            <input type="checkbox" name="inventory" style="width: 15px;height: 15px;margin-left: 5px;position: inherit;">
          </p>
          <p>
            <input type="submit" value="Sign up">
          </p>
          <input type="hidden" value="" name="_mc4wp_required_but_not_really" style="display: none;">
          <input type="hidden" value="1433735908" name="_mc4wp_timestamp">
          <input type="hidden" value="1" name="_mc4wp_form_submit">
          <input type="hidden" value="1" name="_mc4wp_form_instance">
          <input type="hidden" value="0c197cabe5" name="_mc4wp_form_nonce">
        </form>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
        <h4 class="contact-head">Latest tweets</h4>
        <div class="latest-tweets">
          <ul>
            <li>
              <p class="tweet-text">Buy or Finance My <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23Car&amp;src=hash" class="twitter-hashtag">#Car</a>? - pay cash for your <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23BMW&amp;src=hash" class="twitter-hashtag">#BMW</a>, <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23Lexus&amp;src=hash" class="twitter-hashtag">#Lexus</a>, <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23Audi&amp;src=hash" class="twitter-hashtag">#Audi</a> or finance it over time? <a rel="nofollow" target="_blank" href="http://bit.ly/1KlvYMG">bit.ly/1KlvYMG</a> <a rel="nofollow" target="_blank" href="https://pic.twitter.com/UhxPDIkFvP">pic.twitter.com/UhxPDIkFvP</a></p>
              <p class="tweet-details"><a target="_blank" href="http://twitter.com/AutoLinxVallejo/status/603294804592570368">
                <time datetime="2015-05-26 13:21:04-0700">May 26, 2015 1:21 pm</time>
                </a></p>
            </li>
            <li>
              <p class="tweet-text">AutoLinx Celebrity Profile <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23PaulNewman&amp;src=hash" class="twitter-hashtag">#PaulNewman</a> swept up in the dirt, guts, that make <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23Racing&amp;src=hash" class="twitter-hashtag">#Racing</a> great. <a rel="nofollow" target="_blank" href="http://bit.ly/1HA0Prb">bit.ly/1HA0Prb</a> <a rel="nofollow" target="_blank" href="https://pic.twitter.com/96jzF75KWD">pic.twitter.com/96jzF75KWD</a></p>
              <p class="tweet-details"><a target="_blank" href="http://twitter.com/AutoLinxVallejo/status/601850116639625216">
                <time datetime="2015-05-22 13:40:24-0700">May 22, 2015 1:40 pm</time>
                </a></p>
            </li>
            <li>
              <p class="tweet-text">Which heart do you like the most?! <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23autolinx&amp;src=hash" class="twitter-hashtag">#autolinx</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23cars&amp;src=hash" class="twitter-hashtag">#cars</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23car&amp;src=hash" class="twitter-hashtag">#car</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23engine&amp;src=hash" class="twitter-hashtag">#engine</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23luxury&amp;src=hash" class="twitter-hashtag">#luxury</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23sanfrancisco&amp;src=hash" class="twitter-hashtag">#sanfrancisco</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23bayarea&amp;src=hash" class="twitter-hashtag">#bayarea</a>… <a rel="nofollow" target="_blank" href="https://instagram.com/p/2wBJF8HkbU/">instagram.com/p/2wBJF8HkbU</a></p>
              <p class="tweet-details"><a target="_blank" href="http://twitter.com/AutoLinxVallejo/status/599619277424037888">
                <time datetime="2015-05-16 09:55:50-0700">May 16, 2015 9:55 am</time>
                </a></p>
            </li>
            <li>
              <p class="tweet-text">Which heart do you like the most?! <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23autolinx&amp;src=hash" class="twitter-hashtag">#autolinx</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23cars&amp;src=hash" class="twitter-hashtag">#cars</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23car&amp;src=hash" class="twitter-hashtag">#car</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23engine&amp;src=hash" class="twitter-hashtag">#engine</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23luxury&amp;src=hash" class="twitter-hashtag">#luxury</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23sanfrancisco&amp;src=hash" class="twitter-hashtag">#sanfrancisco</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23bayarea&amp;src=hash" class="twitter-hashtag">#bayarea</a>… <a rel="nofollow" target="_blank" href="https://instagram.com/p/2wA_m4Hka6/">instagram.com/p/2wA_m4Hka6</a></p>
              <p class="tweet-details"><a target="_blank" href="http://twitter.com/AutoLinxVallejo/status/599618951467954176">
                <time datetime="2015-05-16 09:54:33-0700">May 16, 2015 9:54 am</time>
                </a></p>
            </li>
            <li>
              <p class="tweet-text">Which heart do you like the most?! <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23autolinx&amp;src=hash" class="twitter-hashtag">#autolinx</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23cars&amp;src=hash" class="twitter-hashtag">#cars</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23car&amp;src=hash" class="twitter-hashtag">#car</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23engine&amp;src=hash" class="twitter-hashtag">#engine</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23luxury&amp;src=hash" class="twitter-hashtag">#luxury</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23sanfrancisco&amp;src=hash" class="twitter-hashtag">#sanfrancisco</a> <a rel="nofollow" target="_blank" href="https://twitter.com/search?q=%23bayarea&amp;src=hash" class="twitter-hashtag">#bayarea</a>… <a rel="nofollow" target="_blank" href="https://instagram.com/p/2wA3HuHkak/">instagram.com/p/2wA3HuHkak</a></p>
              <p class="tweet-details"><a target="_blank" href="http://twitter.com/AutoLinxVallejo/status/599618660060274688">
                <time datetime="2015-05-16 09:53:23-0700">May 16, 2015 9:53 am</time>
                </a></p>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 padding-right-none md-padding-right-none sm-padding-right-15 xs-padding-right-15">
        <h4 class="contact-head">Contact us</h4>
        <div class="footer-contact">
          <ul>
            <li><i class="fa fa-map-marker"></i> <strong>Address:</strong> ${myprofile.fullAddress}</li>
            <li><i class="fa fa-phone"></i> <strong>Phone:</strong> ${myphone} </li>
            <li><i class="fa fa-envelope-o"></i> <strong>Email:</strong><a href="#">${myprofile.email}</a></li>
          </ul>
          <i class="fa fa-location-arrow back_icon"></i> </div>
      </div>
    </div>
  </div>
</footer>
<div class="clearfix"></div>
<section class="copyright-wrap padding-bottom-10">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
        <div class="logo-footer margin-bottom-20 md-margin-bottom-20 sm-margin-bottom-10 xs-margin-bottom-20"><a href="#"> <a class="logo-f" href="${pageContext.request.contextPath}"><img src="${hostnameimg}${siteLogo.logoPath}" style="height:100px;"></a> </div>
        <p>Powered by <a href="#">GLIDER-AUTOS</a></p>
      </div>
      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <ul class="social clearfix">
         <li  ><a target="_blank" ng-if="${myprofile.facebook != null} && ${myprofile.facebook != ''}"  href="${myprofile.facebook}" class="facebook"></a></li>
          <li><a target="_blank" ng-if="${myprofile.googleplus != null} && ${myprofile.googleplus != ''}"  href="${myprofile.googleplus}" class="google"></a> </li>
          <li><a target="_blank" ng-if="${myprofile.twitter != ''} && ${myprofile.twitter != null} "  href="${myprofile.twitter}" class="twitter"></a></li>
          <li><a target="_blank" ng-if="${myprofile.yelp != ''} && ${myprofile.yelp != null} "   href="${myprofile.yelp}"  class="yelp"></a></li>
          <li><a target="_blank"ng-if="${myprofile.instagram != null} &&  ${myprofile.instagram != ''}"  href="${myprofile.instagram}" class="instagram"></a></li>
          <li><a target="_blank" ng-if="${myprofile.pinterest != null} && ${myprofile.pinterest != ''}" href="${myprofile.pinterest}" class="pinterest"></a></li>
       </ul>
        <div class="clear"></div>
        <ul class="f-nav">
          <li><a href="${pageContext.request.contextPath}">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/findVehicles">Inventory</a></li>
          <li ng-if="${warHeader.hideMenu == 0}"><a href="${pageContext.request.contextPath}/warranty"> Warranty</a></li>
          <li><a href="${pageContext.request.contextPath}/aboutUs"> About Us</a></li>
          <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
          <li><a href="${pageContext.request.contextPath}/contactUs">Contact</a></li>
        </ul>
      </div>
    </div>
  </div>
</section>
<div class="back_to_top"> <img src="http://demo.themesuite.com/automotive/images/arrow-up.png" alt="scroll up" /> </div>
<!-- Bootstrap core JavaScript --> 
<script src="resources/autolinx/js/retina.js"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.parallax.js"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.inview.min.js"></script> 
<script src="resources/autolinx/js/main.js"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.fancybox.js"></script> 
<script src="resources/autolinx/js/modernizr.custom.js"></script> 
<script defer src="resources/autolinx/js/jquery.flexslider.js"></script> 
<script src="resources/autolinx/js/jquery.bxslider.js" type="text/javascript"></script> 
<script src="resources/autolinx/js/jquery.selectbox-0.2.js" type="text/javascript"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.mousewheel.js"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.easing.js"></script>
</body>
</html>

<div class="modal fade" id="carBrandModal" role="dialog">
    <div class="modal-dialog">
     <form name="fome1" ng-submit="saveFollowBrand()"  method="post"> <%--  action="${pageContext.request.contextPath}/requestMore" --%>
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Follow car brand</h4>
        </div>
      
        <div class="modal-body">
           <div class="row">
        	 <div class="col-md-3">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" ng-model="followBrand.name" style="width: 220px !important;border: 1px solid rgb(200, 195, 195) !important;" required>
        	 </div>
        	 </div>
           
        	  <div class="row">
        	 <div class="col-md-3">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" ng-model="followBrand.email" style="width: 220px !important;border: 1px solid rgb(200, 195, 195) !important;" required>
        	 </div>
        	 </div>
        	  <div class="row">
        	 <div class="col-md-3">
        	 	<label style="font-weight: initial;padding: 0px;">Car brand:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<select class="form-control" ng-model="followBrand.brand" style="width: 220px !important;border: 1px solid rgb(200, 195, 195) !important;" required>
        	 		<option value="">Select</option>
        	 		<option ng-repeat="brand in allMakes.make" value="{{brand}}">{{brand}}</option>
        	 	</select>
        	 </div>
        	 </div>
        </div>
       
        <div class="modal-footer">
           <input type="submit" value="Submit">
        </div>
      </div>
      </form>
    </div>
  </div>


<style>
	@media all and (min-width: 800px),(max-width: 1020px) {
    .imgSet {
        margin-top: 150px !important;
    }
    
    .tp-banner ul li div.thirdSlider {
	  background-color:#bcdf5e
}
.custom{
	background: #F7F7F7;
    border: 1px solid rgba(0, 0, 0, 0.0980392);
    border-radius: 4px;
    width: 100%;
    cursor: pointer;
}
.customDis{
	background: #F7F7F7;
    border: 1px solid rgba(0, 0, 0, 0.0980392);
    border-radius: 4px;
    width: 100%;
    cursor: no-drop;
}
</style>
<script type="text/javascript">
function initialize() {
    var mapCanvas = document.getElementById('map-canvas');
    var mapOptions = {
      center: new google.maps.LatLng(44.5403, -78.5463),
      zoom: 14,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(mapCanvas, mapOptions)
    
    map.set('styles', [{"featureType":"landscape","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"stylers":[{"hue":"#F0F0F0"},{"saturation":-100},{"gamma":2.15},{"lightness":12}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"visibility":"on"},{"lightness":24}]},{"featureType":"road","elementType":"geometry","stylers":[{"lightness":57}]}]);
    
    var address = $('#vehicleLocation').val();
    console.log(address);
    geocoder = new google.maps.Geocoder();
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            map.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            });

        }
        else {
            //alert("Geocode was not successful for the following reason: " + status);
        }
    });
  }

  google.maps.event.addDomListener(window, 'load', initialize);

  
  
</script>

 <a title="Real Time Web Analytics" href="http://clicky.com/100875513"><img alt="Real Time Web Analytics" src="//static.getclicky.com/media/links/badge.gif" border="0" /></a>
<script type="text/javascript">
var clicky_site_ids = clicky_site_ids || [];
clicky_site_ids.push(100875513);
(function() {
  var s = document.createElement('script');
  s.type = 'text/javascript';
  s.async = true;
  s.src = '//static.getclicky.com/js';
  ( document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0] ).appendChild( s );
})();
</script>
<noscript><p><img alt="Clicky" width="1" height="1" src="//in.getclicky.com/100875513ns.gif" /></p></noscript>


<style>
      .txtMargin{
         margin-left: 35%;
	
      }
      .none{
      }
       </style>   