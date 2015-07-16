<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if IE 7 ]> <html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8 ]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="resources/autolinx/images/favicon.ico">
<title>Automotive Car Dealership &amp; Business HTML Template</title>
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
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key&amp;sensor=false"></script>
<script type="text/javascript" src="resources/autolinx/js/angular.min.js"></script>
<script type="text/javascript" src="resources/autolinx/scripts/app.js"></script>
<script type="text/javascript" src="resources/autolinx/scripts/controller.js"></script>

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
				window.location.href="http://glivr.com/mobile/";
				return false;
		}
	
}); 
				
</script>

<!-- Twitter Feed Scripts 
     Uncomment to activate

<script type="text/javascript" src="resources/autolinx/js/twitter/jquery.tweet.js"></script>
<script type="text/javascript" src="resources/autolinx/js/twitter/twitter_feed.js"></script> -->

</head>

<body>
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
            <li><a href="tel:18005670123"><i class="fa fa-phone"></i> (707) 552-5469</a></li>
            <li class="address"><a href="contact.html"><i class="fa fa-map-marker"></i>3300 Sonoma Blvd Vallejo, California 94590 </a></li>
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
            <a class="logo" href="#"><img src="resources/autolinx/images/autolinxwhite11.png" alt></a> </div>
          
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav pull-right">
              <li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
              <li><a href="inventory">Inventory</a></li>
              <li><a href="warranty.html">Warranty</a></li>
              <li><a href="about.html">About Us</a></li>
              <li><a href="blog.html">Blog</a></li>
              <li><a href="contact.html">Contact Us</a></li>
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

<div class="clearfix"></div>
<section class="banner-wrap">
    <div class="banner">
        <div class="tp-banner-container">
            <div class="tp-banner" >
                <ul>
                
                    <!-- SLIDE  -->
                    <c:forEach var="row" items="${sliderImages}">
                    <li data-transition="fade" data-slotamount="5" data-masterspeed="700" > 
                        <!-- MAIN IMAGE --> 
                        <img src="/glivrImg/images${row}"   alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat"> 
                        
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
						data-endspeed="300">DOMINATE </div>
                        
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
						style="z-index: 6; letter-spacing: -3px;">THE INTERNET </div>
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
						style="z-index: 6; top: 371px; ">Attract, Engage, &amp; Convert </div>
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
						style="z-index: 6; left:186px;">more </div>
                        <!-- LAYER NR. 4 -->
                        <div class="tp-caption qualified skewfromright"
						data-x="0"
						data-y="476"
						data-speed="800"
						data-start="2600"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6">qualified vehicle shoppers </div>
                    </li>
                    </c:forEach>
                    <!-- <li data-transition="fade" data-slotamount="5" data-masterspeed="700" > 
                        MAIN IMAGE 
                        <img src="/glivrImg/images/336920057/SliderImages/Slider2.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat"> 
                        
                        LAYERS
                        <div class="tp-caption mediumlarge_light_white_center invest start"
						data-x="543"
						data-hoffset="0"
						data-y="160"
                        
						data-speed="1000"
						data-start="500"
						data-easing="Back.easeInQuart"
						data-endspeed="300">Time to invest in a website built to </div>
                        
                        LAYER NR. 1
                        <div class="tp-caption move mediumlarge_light_white_center fade"
						data-x="480"
						data-y="230"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; letter-spacing: -3px;">MOVE </div>
                        LAYER NR. 2
                        <div class="tp-caption light_brown mediumlarge_light_white_center sfl"
						data-x="615"
						data-y="230"
						data-speed="500"
						data-start="1200"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; top: 371px; ">YOUR </div>
                        LAYER NR. 3
                        <div class="tp-caption dark_brown mediumlarge_light_white_center skewfromright "
						data-x="735"
						data-y="230"
						data-speed="800"
						data-start="1900"
						data-easing="Elastic.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; left:186px;">INVENTORY </div>
                        LAYER NR. 4
                        <div class="tp-caption faster mediumlarge_light_white_center skewfromright"
						data-x="960"
						data-y="230"
						data-speed="800"
						data-start="2600"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6">FASTER </div>
                        LAYER NR. 5
                        <div class="tp-caption brown_line skewfromright"
						data-x="482"
						data-y="261"
						data-speed="800"
						data-start="2600"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6"><img src="http://demo.themesuite.com/automotive/images/brown_line.jpg" alt="underline"> </div>
                    </li>
                    <li data-transition="fade" data-slotamount="5" data-masterspeed="700" > 
                        MAIN IMAGE 
                        <img src="/glivrImg/images/336920057/SliderImages/Slider3.jpg"   alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat"> 
                        
                        LAYERS
                        <div class="tp-caption customin customout start green"
						data-x="40"
						data-hoffset="0"
						data-y="510"
					
						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000"
						data-start="500"
						data-easing="Back.easeInOut"
						data-endspeed="300">Wow Factor?</div>
                        
                        LAYER NR. 1
                        <div class="tp-caption big_white fade"
						data-x="40"
						data-y="560"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6;">STANDARD. </div>
                    </li>
                    <li data-transition="fade" data-slotamount="5" data-masterspeed="700" > 
                        MAIN IMAGE 
                        <img src="/glivrImg/images/336920057/SliderImages/Slider4.jpg"   alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat"> 
                        
                        LAYERS
                        <div class="tp-caption customin customout start big_white"
						data-x="0"
						data-hoffset="0"
						data-y="235"

						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000"
						data-start="500"
						data-easing="Back.easeInOut"
						data-endspeed="300">UNLOCK</div>
                        
                        LAYER NR. 1
                        <div class="tp-caption thin_red fade"
						data-x="300"
						data-y="235"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6;">THE POTENTIAL</div>
                        
                        LAYER NR. 2
                        <div class="tp-caption thin_white skewfromright"
						data-x="0"
						data-y="510"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6;">business from your</div>
                        
                        LAYER NR. 3
                        <div class="tp-caption cursive skewfromright"
						data-x="400"
						data-y="570"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6;">website</div>
                    </li>
                    SLIDE 
                    <li data-transition="fade" data-slotamount="5" data-masterspeed="700" > 
                        MAIN IMAGE 
                        <img src="/glivrImg/images/336920057/SliderImages/Slider5.jpg"   alt="slidebg1"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat"> 
                        
                        LAYERS
                        <div class="tp-caption mediumlarge_light_white_center domainate customin customout start"
						data-x="0"
						data-hoffset="0"
						data-y="199"

						data-customin="x:0;y:0;z:0;rotationX:90;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:200;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1000"
						data-start="500"
						data-easing="Back.easeInOut"
						data-endspeed="300">REALITY </div>
                        
                        LAYER NR. 1
                        <div class="tp-caption thin_dark_blue fade"
						data-x="270"
						data-y="210"
						data-speed="500"
						data-start="800"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; letter-spacing: 0;">IS JUST</div>
                        LAYER NR. 2
                        <div class="tp-caption thinner_white sfl"
						data-x="05"
						data-y="270"
						data-speed="500"
						data-start="1200"
						data-easing="Power4.easeOut"
						data-endspeed="300"
						data-endeasing="Power1.easeIn"
						data-captionhidden="off"
						style="z-index: 6; top: 371px; ">your perception</div>
                    </li> -->
                </ul>
            </div>
        </div>
        <script type="text/javascript">

				var revapi;

				jQuery(document).ready(function() {

					   revapi = jQuery('.tp-banner').revolution(
						{
							delay:8000,
							startwidth:1170,
							startheight:645,
							hideThumbs:10,
							fullWidth:"off",
							fullScreen:"off",
							fullScreenOffsetContainer: "",
							hideTimerBar: "on",
							navigationType:"none",
							stopAtSlide: 1

						});

				});	//ready

			</script> 
        
        <!-- END REVOLUTION SLIDER --> 
        
        <!-- Content End --> 
        
    </div>
</section>
<section class="message-wrap">
  <div class="container">
    <div class="row">
      <h2 class="col-lg-9 col-md-8 col-sm-12 col-xs-12 xs-padding-left-15"><strong style="color:#ff0000;">LUXURY</strong> WITHIN REACH </h2>
      <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12 "> 
      	<a class="default-btn pull-right action_button lg-button mainBoxIn1" href="#">Schedule a Test Drive</a>
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
                  <div class="face front"><img class="img-responsive" src="/glivrImg/images${featuredImages[0]}" alt=""></div>
                  <div class="face back">
                    <div class='hover_title'>New Arrivals</div>
                    <a href="inventory-listing.html"><i class="fa fa-link button_icon"></i></a> <a href="resources/autolinx/images/car1-lrg.jpg" class="fancybox"><i class="fa fa-arrows-alt button_icon"></i></a> </div>
                </div>
              </div>
              <h4><a href="#">New Arrivals</a></h4>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 margin-bottom-none">
              <div class="flip horizontal margin-bottom-30">
                <div class="card">
                  <div class="face front"><img class="img-responsive" src="/glivrImg/images${featuredImages[1]}" alt=""></div>
                  <div class="face back">
                    <div class='hover_title'>Hybrids Collection</div>
                    <a href="inventory-listing.html"><i class="fa fa-link button_icon"></i></a> <a href="resources/autolinx/images/car2-lrg-200x150-200x150.jpg-200x150-200x150.jpg-200x150-200x150.jpg" class="fancybox"><i class="fa fa-arrows-alt button_icon"></i></a> </div>
                </div>
              </div>
              <h4><a href="#">ECO Friendly</a></h4>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 margin-bottom-none">
              <div class="flip margin-bottom-30">
                <div class="card">
                  <div class="face front"><img class="img-responsive" src="/glivrImg/images${featuredImages[2]}" alt=""></div>
                  <div class="face back">
                    <div class='hover_title'>Aston Martin DBS</div>
                    <a href="inventory-listing.html"><i class="fa fa-link button_icon"></i></a> <a href="resources/autolinx/images/car3.jpg" class="fancybox"><i class="fa fa-arrows-alt button_icon"></i></a> </div>
                </div>
              </div>
              <h4><a href="#">Luxury Chic</a></h4>
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
                  <p>From amazing hybrid, to luxurious sedan, all terrain SUV’s, and blazing fast sports cars, our cars go the distance.</p>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 xs-margin-bottom-none xs-padding-top-30 scroll_effect bounceInRight" data-wow-delay=".2s"> <span class="align-center"><i class="fa fa-6x fa-flag-checkered"></i></span>
                  <h3>Winning Culture</h3>
                  <p>The Autolinx Inc. team has over 30 years of combined experience in the areas of automotive and online sales and strives to provide you with the greatest experience possible when purchasing your new pre-owned vehicle.</p>
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
      
      <div class="recent-vehicles-wrap margin-top-30 sm-padding-left-none padding-bottom-40 classBlock">
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
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/mercedes-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0002-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz E350 Bluetech</strong></h6>
                    <h6></h6>
                    <h5>$29800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-b7-alpha/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0810-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW B7 Alpina</strong></h6>
                    <h6></h6>
                    <h5>$58800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-jaguar-xf/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0004-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Jaguar XF Portfolio</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-lexus-gs350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00221-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Lexus GS350</strong></h6>
                    <h6></h6>
                    <h5>$33800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-m3-white/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0544-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW M3</strong></h6>
                    <h6></h6>
                    <h5>$44800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-m3-black/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0419-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW M3</strong></h6>
                    <h6></h6>
                    <h5>$43800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-ml-350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0721-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz ML 350</strong></h6>
                    <h6></h6>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mini-cooper-hardtop-base/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00712-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mini Cooper Hardtop Base</strong></h6>
                    <h6></h6>
                    <h5>$13800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport-3/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/120-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-c-250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/127-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz C 250</strong></h6>
                    <h6></h6>
                    <h5>$25800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport-2/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-ml-350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz ML 350</strong></h6>
                    <h6></h6>
                    <h5>$28500</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-s-550/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/130-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz S 550</strong></h6>
                    <h6></h6>
                    <h5>$54800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mini-cooper-countryman/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mini Cooper Countryman</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/118-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-e-350-luxury/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/129-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz E 350 Luxury</strong></h6>
                    <h6></h6>
                    <h5>$33800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6131/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW X5 xDrive50i</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6130/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/114-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 550i</strong></h6>
                    <h6></h6>
                    <h5>$38800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6129/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/112-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 535i</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6128/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 535i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6126/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/116-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 535i xDrive Gran Turismo</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6124/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/110-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 528i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$28800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6122/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0832-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Land Rover Range Rover Sport HSE</strong></h6>
                    <h6></h6>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6092/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0985-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2007 Land Rover Range Rover Supercharged</strong></h6>
                    <h6></h6>
                    <h5>$24500</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6059/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0746-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Infiniti G 37 Sport</strong></h6>
                    <h6></h6>
                    <h5>$24800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6029/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0132-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti G 37 Sport</strong></h6>
                    <h6></h6>
                    <h5>$24800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5997/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0459-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti FX 35</strong></h6>
                    <h6></h6>
                    <h5>$33800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5974/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0647-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 GMC Yukon</strong></h6>
                    <h6></h6>
                    <h5>$47800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5933/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0951-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Audi A8 L</strong></h6>
                    <h6></h6>
                    <h5>$53800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5894/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0006-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi A8 L</strong></h6>
                    <h6></h6>
                    <h5>$51800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5879/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0219-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi A7 Premium Plus</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5839/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0274-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Audi A6</strong></h6>
                    <h6></h6>
                    <h5>$38800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5628/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0406-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz ML350</strong></h6>
                    <h6></h6>
                    <h5>$27800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-bmw-550i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00041-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 550i</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/used-2004-lamborghini-gallardo/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/lambo-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2007 Lamborghini Gallardo</strong></h6>
                    <h6></h6>
                    <h5>$114800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4938/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1_10-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Volkswagen GTI</strong></h6>
                    <h6></h6>
                    <h5>$16800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4933/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0004-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz CLS 63 AMG</strong></h6>
                    <h6></h6>
                    <h5>$63800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4930/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1_109-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Lincoln Navigator</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/12-infiniti-m37/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2012-Infinity-M37_1-167x119_002-200x150-200x150.jpg-200x150-200x150.jpg-200x150-200x150.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti M37</strong></h6>
                    <h6></h6>
                    <h5>$25800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-bmw-328i-xdrive/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-BMW-335i-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 328i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2005-bmw-645ci/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/11-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2005 BMW 645CI</strong></h6>
                    <h6></h6>
                    <h5>$25800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4817/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1_95-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW Alpina B7</strong></h6>
                    <h6></h6>
                    <h5>$62800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4815/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0187-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 Mercedes-Benz CLA 250</strong></h6>
                    <h6></h6>
                    <h5>$29800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-jaguar-xf-supercharged/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Jaguar XF Supercharged</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4613/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/Audi-Q71-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Cadillac SRX Luxury</strong></h6>
                    <h6></h6>
                    <h5>$19800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4604/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0002-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2009 Mercedes-Benz ML550</strong></h6>
                    <h6></h6>
                    <h5>$24800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-audi-a7/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0451-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi A7</strong></h6>
                    <h6></h6>
                    <h5>$48800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/12-audi-a7/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/12-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi A7</strong></h6>
                    <h6></h6>
                    <h5>$45800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/audi-q7/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/Audi-Q7-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi Q7 S</strong></h6>
                    <h6></h6>
                    <h5>$40800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-audi-q5/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2013-Audi-Q5-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Audi Q5 Premium</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-sl-class-sl550/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1_28-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz SL550</strong></h6>
                    <h6></h6>
                    <h5>$54800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-infiniti-m37/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2012-Infinity-M37_1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti M37</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-bmw-x6-m/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0139-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW X6M</strong></h6>
                    <h6></h6>
                    <h5>$58800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2003-bmw-3-series-335i-convertible/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2008-BMW-3-series-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2008 BMW 335i Convertible</strong></h6>
                    <h6></h6>
                    <h5>$22800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2010-audi-s5-prestige/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2010-Audi-S5-convertible-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Audi S5 Prestige</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2010-mercedes-benz-s-class-s550-sports/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00712-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Mercedes-Benz S-Class S550 Sports</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2009-suzuki-gsx1300r-hayabusa/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2009-Suzuki-GSX1300R-1-549b54c9c248a-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2009 Suzuki GSX1300R Hayabusa</strong></h6>
                    <h6></h6>
                    <h5>$11500</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2005-vespa-px150-scooter/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_04731-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2005 Vespa PX150 Scooter</strong></h6>
                    <h6></h6>
                    <h5>$4500</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-s65-amg/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00043-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz S65 AMG</strong></h6>
                    <h6></h6>
                    <h5>$118800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-cls550-sport/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-CLS550-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz CLS550 Sport</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-lexus-is-f/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/213-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Lexus IS F</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-lexus-is-250c-f-sport/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_08932-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Lexus IS 250C F Sport</strong></h6>
                    <h6></h6>
                    <h5>$35800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2010-lexus-hs250-hybrid/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2010-Lexus-250H-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Lexus HS250 Hybrid</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2008-lexus-gs-450-hybrid/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2008-Lexus-GS450h-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2008 Lexus GS 450 Hybrid</strong></h6>
                    <h6></h6>
                    <h5>$20800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-land-rover-sport-supercharged/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-Land-Rover-Range-Rover-Sport-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Land Rover Sport Supercharged</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2009-land-rover-range-rover-sport-supercharged/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-Land-Rover-Range-Rover-Sport-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2009 Land Rover Range Rover Sport Supercharged</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-land-rover-range-rover-hse-luxury/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-Land-Rover-Blue-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Land Rover Range Rover HSE Luxury</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2014-infiniti-q50-premium/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2014-Infinity-Q50s-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 Infiniti Q50 Premium</strong></h6>
                    <h6></h6>
                    <h5>$35800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-infiniti-m35-hybrid/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2012-Infinity-M35-Hybrid-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti M35 Hybrid</strong></h6>
                    <h6></h6>
                    <h5>$22800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-infiniti-g37-sport/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-Infinity-G37-Sedan-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Infiniti G37 Sport</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2005-hummer-h2-suv/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/Hammer-H2-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2005 Hummer H2</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-bmw-750i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0203-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 750i Active Hybrid</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/11-jaguar-xjl/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_07881-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Jaguar XJ XJL</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/3293/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_04091-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Lexus LS 460</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-bmw-x5-xdrive35i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/BMW-X5-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW X5 xDrive35i</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-bmw-6-series-650i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_06261-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 BMW 650 GranCoupe</strong></h6>
                    <h6></h6>
                    <h5>$62800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-bmw-5-series-535i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2012-BMW-535i-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 535i</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-bmw-5-series-528i-xdrive/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_09083-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 528i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$29800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-bmw-3-series-335i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-BMW-335i-167x119_002-200x150-200x150.jpg-200x150-200x150.jpg-200x150-200x150.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 335i</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-bmw-3-series-328i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2013-BMW-328i-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 BMW 328i</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2010-audi-a5-2-0t-quattro-tiptronic/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2010-Audi-A5-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Audi A5 2.0T Quattro Tiptronic</strong></h6>
                    <h6></h6>
                    <h5>$22800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2876/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0956-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 MINI Clubman S</strong></h6>
                    <h6></h6>
                    <h5>$19800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2820/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_05723-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 BMW 335i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$38800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2749/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_02382-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 328i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2704/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_04201-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz CLS550</strong></h6>
                    <h6></h6>
                    <h5>$45800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-jaguar-xf-premium/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0275_1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Jaguar XF Premium</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2595/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_05902-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 640i Coupe</strong></h6>
                    <h6></h6>
                    <h5>$45800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2584/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/aston-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Aston Martin DBS</strong></h6>
                    <h6></h6>
                    <h5>$172800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-bmw-640i-white/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_02833-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 BMW 640 GranCoupe</strong></h6>
                    <h6></h6>
                    <h5>$62800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-ml350-2/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00031-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz ML350</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0737-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz E350</strong></h6>
                    <h6></h6>
                    <h5>$31800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2014-mercedes-benz-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0794-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 Mercedes-Benz E350</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-s550/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz S550</strong></h6>
                    <h6></h6>
                    <h5>$52800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-c250-coupe-black/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0645-copy-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz C250 Coupe</strong></h6>
                    <h6></h6>
                    <h5>$27800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-bmw-750-li/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0485-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 BMW 750 Li</strong></h6>
                    <h6></h6>
                    <h5>$51800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0419-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz E350</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0597-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C250</strong></h6>
                    <h6></h6>
                    <h5>$24800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-s550/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0767-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz S550</strong></h6>
                    <h6></h6>
                    <h5>$44800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/mercedes-cls550-2/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0581-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz CLS550 Sport</strong></h6>
                    <h6></h6>
                    <h5>$45800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-i650/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/BMW-650i-silver-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 650i</strong></h6>
                    <h6></h6>
                    <h5>$49800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/maserati/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0739-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2008 Maserati Quattroporte Executive GT</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/lexus-rx350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0959-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Lexus RX350</strong></h6>
                    <h6></h6>
                    <h5>$31800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/mercedes-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_01901-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz E350 Bluetech</strong></h6>
                    <h6></h6>
                    <h5>$29800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-b7-alpha/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0810-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW B7 Alpina</strong></h6>
                    <h6></h6>
                    <h5>$58800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-jaguar-xf/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_02441-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Jaguar XF Portfolio</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-lexus-gs350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00221-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Lexus GS350</strong></h6>
                    <h6></h6>
                    <h5>$33800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-m3-white/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0544-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW M3</strong></h6>
                    <h6></h6>
                    <h5>$44800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-m3-black/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_05411-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW M3</strong></h6>
                    <h6></h6>
                    <h5>$43800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-ml-350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/pixel.gif" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz ML 350</strong></h6>
                    <h6></h6>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mini-cooper-hardtop-base/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0721-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mini Cooper Hardtop Base</strong></h6>
                    <h6></h6>
                    <h5>$13800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport-3/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/120-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-c-250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/127-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz C 250</strong></h6>
                    <h6></h6>
                    <h5>$25800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport-2/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="bx-controls"></div>
        </div>
      </div>
      
      
      <section class="welcome-wrap padding-top-30 sm-horizontal-15">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 welcome padding-left-none padding-bottom-40 scroll_effect fadeInUp">
          <h4 class="margin-bottom-25 margin-top-none"><strong>WELCOME</strong> TO AUTOLINX</h4>
          <p><span class="firstcharacter">T</span>he Autolinx Inc. team has over 30 years of combined experience in the areas of automotive and online sales and strives to provide you with the greatest experience possible when purchasing your new pre-owned vehicle. Our experienced advisors are handpicked for their courtesy, knowledge and enthusiasm. They will make every effort to procure the best selection of quality, pre-owned vehicles on the market. Autolinx offers an upscale car buying experience, supported behind the scenes by some of the industry’s most innovative technology solutions to bring our customers the best quality vehicles at the most competitive prices.</p>
          <p>Visit our showroom today and drive away with your new pre-owned quality car. Contact us via phone or email to set up a time convenient for you, or simply drop by for a great cup of coffee.</p>
        </div>
        <!--welcome ends-->
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 padding-right-none sm-padding-left-none md-padding-left-15 xs-padding-left-none padding-bottom-40 scroll_effect fadeInUp" data-wow-delay='.2s' style="z-index:100">
          <h4 class="margin-bottom-25 margin-top-none"><strong>SEARCH</strong> OUR INVENTORY</h4>
          <div class="search-form margin-top-20 padding-vertical-20">
            <form method="post" action="#">
              <div class="select-wrapper clearfix">
                <div class="col-md-6">
                  <div class="min-price select-dropdown">
                    <div class="my-dropdown min-price-dropdown min-dropdown">
                      <select name="min-year" class="css-dropdowns" tabindex="1" >
                        <option value="">Min Year</option>
                        <option>2015</option>
                        <option>2014</option>
                        <option>2013</option>
                        <option>2012</option>
                        <option>2011</option>
                        <option>2010</option>
                        <option>2009</option>
                        <option>2008</option>
                        <option>2007</option>
                        <option>2006</option>
                        <option>2005</option>
                        <option>2004</option>
                      </select>
                    </div>
                    <span class="my-dropdown">to</span>
                    <div class="my-dropdown max-price-dropdown min-dropdown">
                      <select name="max-year" class="css-dropdowns" tabindex="1" >
                        <option value="">Max Year</option>
                        <option>2015</option>
                        <option>2014</option>
                        <option>2013</option>
                        <option>2012</option>
                        <option>2011</option>
                        <option>2010</option>
                        <option>2009</option>
                        <option>2008</option>
                        <option>2007</option>
                        <option>2006</option>
                        <option>2005</option>
                        <option>2004</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="min-price select-dropdown">
                    <div class="my-dropdown min-price-dropdown min-dropdown">
                      <select name="min-price" class="css-dropdowns" tabindex="1" >
                        <option value="">Min Mileage</option>
                        <option>0</option>
                        <option>&lt; 10,000</option>
                        <option>&lt; 20,000</option>
                        <option>&lt; 30,000</option>
                        <option>&lt; 40,000</option>
                        <option>&lt; 50,000</option>
                        <option>&lt; 60,000</option>
                        <option>&lt; 70,000</option>
                        <option>&lt; 80,000</option>
                        <option>&lt; 90,000</option>
                        <option>&lt; 100,000</option>
                        <option>&lt; 120,000</option>
                        <option>&lt; 150,000</option>
                      </select>
                    </div>
                    <span class="my-dropdown">to</span>
                    <div class="my-dropdown max-price-dropdown min-dropdown">
                      <select name="max-price" class="css-dropdowns" tabindex="1" >
                        <option value="">Max Mileage</option>
                        <option>0</option>
                        <option>&lt; 10,000</option>
                        <option>&lt; 20,000</option>
                        <option>&lt; 30,000</option>
                        <option>&lt; 40,000</option>
                        <option>&lt; 50,000</option>
                        <option>&lt; 60,000</option>
                        <option>&lt; 70,000</option>
                        <option>&lt; 80,000</option>
                        <option>&lt; 90,000</option>
                        <option>&lt; 100,000</option>
                        <option>&lt; 120,000</option>
                        <option>&lt; 150,000</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="select-wrapper clearfix">
                <div class="col-md-6">
                  <div class="my-dropdown make-dropdown">
                    <select name="body_style" class="css-dropdowns" tabindex="1" >
                      <option value="">Make</option>
                      <option>Cargo</option>
                      <option>Compact</option>
                      <option>Convertible</option>
                      <option>Coupe</option>
                      <option>Hatchback</option>
                      <option>Minivan</option>
                      <option>Sedan</option>
                      <option>SUV</option>
                      <option>Truck</option>
                      <option>Van</option>
                      <option>Wagon</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="my-dropdown make-dropdown">
                    <select name="body_style" class="css-dropdowns" tabindex="1" >
                      <option value="">Transmission</option>
                      <option>Cargo</option>
                      <option>Compact</option>
                      <option>Convertible</option>
                      <option>Coupe</option>
                      <option>Hatchback</option>
                      <option>Minivan</option>
                      <option>Sedan</option>
                      <option>SUV</option>
                      <option>Truck</option>
                      <option>Van</option>
                      <option>Wagon</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="select-wrapper clearfix">
                <div class="col-md-6">
                  <div class="my-dropdown make-dropdown">
                    <select name="model" class="css-dropdowns" tabindex="1" >
                      <option value="">Model</option>
                      <option>Lorem</option>
                      <option>ipsum</option>
                      <option>dolor</option>
                      <option>sit</option>
                      <option>amet</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="min-price select-dropdown">
                    <div class="my-dropdown min-price-dropdown min-dropdown">
                      <select name="min-mileage" class="css-dropdowns" tabindex="1" >
                        <option value="">Min Price</option>
                        <option>0</option>
                        <option>&lt; 10,000</option>
                        <option>&lt; 20,000</option>
                        <option>&lt; 30,000</option>
                        <option>&lt; 40,000</option>
                        <option>&lt; 50,000</option>
                        <option>&lt; 60,000</option>
                        <option>&lt; 70,000</option>
                        <option>&lt; 80,000</option>
                        <option>&lt; 90,000</option>
                        <option>&lt; 100,000</option>
                        <option>&lt; 120,000</option>
                        <option>&lt; 150,000</option>
                      </select>
                    </div>
                    <span class="my-dropdown">to</span>
                    <div class="my-dropdown max-price-dropdown min-dropdown">
                      <select name="max-mileage" class="css-dropdowns" tabindex="1" >
                        <option value="">Max Price</option>
                        <option>0</option>
                        <option>&lt; 10,000</option>
                        <option>&lt; 20,000</option>
                        <option>&lt; 30,000</option>
                        <option>&lt; 40,000</option>
                        <option>&lt; 50,000</option>
                        <option>&lt; 60,000</option>
                        <option>&lt; 70,000</option>
                        <option>&lt; 80,000</option>
                        <option>&lt; 90,000</option>
                        <option>&lt; 100,000</option>
                        <option>&lt; 120,000</option>
                        <option>&lt; 150,000</option>
                      </select>
                    </div>
                  </div>
                </div>
              </div>
              <div class="select-wrapper clearfix">
                <div class="col-md-6">
                  <div class="my-dropdown make-dropdown">
                    <select name="make" class="css-dropdowns" tabindex="1" >
                      <option value="">Body Style</option>
                      <option>Lorem</option>
                      <option>ipsum</option>
                      <option>dolor</option>
                      <option>sit</option>
                      <option>amet</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="my-dropdown">
                    <input class="full-width" type="search" value="" placeholder="Refine with keywords">
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
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/mercedes-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0002-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz E350 Bluetech</strong></h6>
                    <h6></h6>
                    <h5>$29800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-b7-alpha/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0810-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW B7 Alpina</strong></h6>
                    <h6></h6>
                    <h5>$58800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-jaguar-xf/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0004-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Jaguar XF Portfolio</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-lexus-gs350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00221-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Lexus GS350</strong></h6>
                    <h6></h6>
                    <h5>$33800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-m3-white/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0544-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW M3</strong></h6>
                    <h6></h6>
                    <h5>$44800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-m3-black/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0419-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW M3</strong></h6>
                    <h6></h6>
                    <h5>$43800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-ml-350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0721-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz ML 350</strong></h6>
                    <h6></h6>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mini-cooper-hardtop-base/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00712-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mini Cooper Hardtop Base</strong></h6>
                    <h6></h6>
                    <h5>$13800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport-3/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/120-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-c-250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/127-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz C 250</strong></h6>
                    <h6></h6>
                    <h5>$25800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport-2/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-ml-350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz ML 350</strong></h6>
                    <h6></h6>
                    <h5>$28500</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-s-550/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/130-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz S 550</strong></h6>
                    <h6></h6>
                    <h5>$54800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mini-cooper-countryman/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mini Cooper Countryman</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/118-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-e-350-luxury/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/129-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz E 350 Luxury</strong></h6>
                    <h6></h6>
                    <h5>$33800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6131/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW X5 xDrive50i</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6130/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/114-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 550i</strong></h6>
                    <h6></h6>
                    <h5>$38800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6129/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/112-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 535i</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6128/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 535i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6126/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/116-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 535i xDrive Gran Turismo</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6124/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/110-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 5 Series 528i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$28800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6122/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0832-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Land Rover Range Rover Sport HSE</strong></h6>
                    <h6></h6>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6092/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0985-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2007 Land Rover Range Rover Supercharged</strong></h6>
                    <h6></h6>
                    <h5>$24500</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6059/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0746-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Infiniti G 37 Sport</strong></h6>
                    <h6></h6>
                    <h5>$24800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/6029/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0132-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti G 37 Sport</strong></h6>
                    <h6></h6>
                    <h5>$24800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5997/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0459-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti FX 35</strong></h6>
                    <h6></h6>
                    <h5>$33800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5974/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0647-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 GMC Yukon</strong></h6>
                    <h6></h6>
                    <h5>$47800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5933/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0951-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Audi A8 L</strong></h6>
                    <h6></h6>
                    <h5>$53800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5894/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0006-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi A8 L</strong></h6>
                    <h6></h6>
                    <h5>$51800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5879/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0219-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi A7 Premium Plus</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5839/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0274-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Audi A6</strong></h6>
                    <h6></h6>
                    <h5>$38800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/5628/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0406-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz ML350</strong></h6>
                    <h6></h6>
                    <h5>$27800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-bmw-550i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00041-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 550i</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/used-2004-lamborghini-gallardo/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/lambo-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2007 Lamborghini Gallardo</strong></h6>
                    <h6></h6>
                    <h5>$114800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4938/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1_10-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Volkswagen GTI</strong></h6>
                    <h6></h6>
                    <h5>$16800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4933/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0004-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz CLS 63 AMG</strong></h6>
                    <h6></h6>
                    <h5>$63800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4930/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1_109-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Lincoln Navigator</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/12-infiniti-m37/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2012-Infinity-M37_1-167x119_002-200x150-200x150.jpg-200x150-200x150.jpg-200x150-200x150.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti M37</strong></h6>
                    <h6></h6>
                    <h5>$25800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-bmw-328i-xdrive/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-BMW-335i-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 328i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2005-bmw-645ci/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/11-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2005 BMW 645CI</strong></h6>
                    <h6></h6>
                    <h5>$25800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4817/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1_95-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW Alpina B7</strong></h6>
                    <h6></h6>
                    <h5>$62800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4815/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0187-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 Mercedes-Benz CLA 250</strong></h6>
                    <h6></h6>
                    <h5>$29800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-jaguar-xf-supercharged/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Jaguar XF Supercharged</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4613/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/Audi-Q71-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Cadillac SRX Luxury</strong></h6>
                    <h6></h6>
                    <h5>$19800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/4604/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0002-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2009 Mercedes-Benz ML550</strong></h6>
                    <h6></h6>
                    <h5>$24800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-audi-a7/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0451-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi A7</strong></h6>
                    <h6></h6>
                    <h5>$48800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/12-audi-a7/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/12-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi A7</strong></h6>
                    <h6></h6>
                    <h5>$45800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/audi-q7/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/Audi-Q7-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Audi Q7 S</strong></h6>
                    <h6></h6>
                    <h5>$40800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-audi-q5/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2013-Audi-Q5-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Audi Q5 Premium</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-sl-class-sl550/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/1_28-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz SL550</strong></h6>
                    <h6></h6>
                    <h5>$54800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-infiniti-m37/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2012-Infinity-M37_1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti M37</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-bmw-x6-m/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0139-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW X6M</strong></h6>
                    <h6></h6>
                    <h5>$58800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2003-bmw-3-series-335i-convertible/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2008-BMW-3-series-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2008 BMW 335i Convertible</strong></h6>
                    <h6></h6>
                    <h5>$22800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2010-audi-s5-prestige/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2010-Audi-S5-convertible-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Audi S5 Prestige</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2010-mercedes-benz-s-class-s550-sports/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00712-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Mercedes-Benz S-Class S550 Sports</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2009-suzuki-gsx1300r-hayabusa/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2009-Suzuki-GSX1300R-1-549b54c9c248a-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2009 Suzuki GSX1300R Hayabusa</strong></h6>
                    <h6></h6>
                    <h5>$11500</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2005-vespa-px150-scooter/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_04731-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2005 Vespa PX150 Scooter</strong></h6>
                    <h6></h6>
                    <h5>$4500</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-s65-amg/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00043-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz S65 AMG</strong></h6>
                    <h6></h6>
                    <h5>$118800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-cls550-sport/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-CLS550-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz CLS550 Sport</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-lexus-is-f/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/213-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Lexus IS F</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-lexus-is-250c-f-sport/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_08932-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Lexus IS 250C F Sport</strong></h6>
                    <h6></h6>
                    <h5>$35800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2010-lexus-hs250-hybrid/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2010-Lexus-250H-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Lexus HS250 Hybrid</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2008-lexus-gs-450-hybrid/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2008-Lexus-GS450h-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2008 Lexus GS 450 Hybrid</strong></h6>
                    <h6></h6>
                    <h5>$20800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-land-rover-sport-supercharged/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-Land-Rover-Range-Rover-Sport-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Land Rover Sport Supercharged</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2009-land-rover-range-rover-sport-supercharged/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-Land-Rover-Range-Rover-Sport-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2009 Land Rover Range Rover Sport Supercharged</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-land-rover-range-rover-hse-luxury/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-Land-Rover-Blue-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Land Rover Range Rover HSE Luxury</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2014-infiniti-q50-premium/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2014-Infinity-Q50s-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 Infiniti Q50 Premium</strong></h6>
                    <h6></h6>
                    <h5>$35800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-infiniti-m35-hybrid/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2012-Infinity-M35-Hybrid-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Infiniti M35 Hybrid</strong></h6>
                    <h6></h6>
                    <h5>$22800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-infiniti-g37-sport/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-Infinity-G37-Sedan-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Infiniti G37 Sport</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2005-hummer-h2-suv/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/Hammer-H2-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2005 Hummer H2</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-bmw-750i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0203-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 750i Active Hybrid</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/11-jaguar-xjl/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_07881-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Jaguar XJ XJL</strong></h6>
                    <h6></h6>
                    <h5>$39800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/3293/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_04091-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Lexus LS 460</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-bmw-x5-xdrive35i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/BMW-X5-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW X5 xDrive35i</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-bmw-6-series-650i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_06261-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 BMW 650 GranCoupe</strong></h6>
                    <h6></h6>
                    <h5>$62800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-bmw-5-series-535i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2012-BMW-535i-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 535i</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-bmw-5-series-528i-xdrive/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_09083-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 528i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$29800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-bmw-3-series-335i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2011-BMW-335i-167x119_002-200x150-200x150.jpg-200x150-200x150.jpg-200x150-200x150.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 335i</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-bmw-3-series-328i/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2013-BMW-328i-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 BMW 328i</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2010-audi-a5-2-0t-quattro-tiptronic/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/2010-Audi-A5-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2010 Audi A5 2.0T Quattro Tiptronic</strong></h6>
                    <h6></h6>
                    <h5>$22800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2876/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0956-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 MINI Clubman S</strong></h6>
                    <h6></h6>
                    <h5>$19800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2820/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_05723-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 BMW 335i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$38800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2749/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_02382-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW 328i xDrive</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2704/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_04201-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz CLS550</strong></h6>
                    <h6></h6>
                    <h5>$45800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-jaguar-xf-premium/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0275_1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Jaguar XF Premium</strong></h6>
                    <h6></h6>
                    <h5>$32800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2595/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_05902-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 640i Coupe</strong></h6>
                    <h6></h6>
                    <h5>$45800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2584/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/aston-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Aston Martin DBS</strong></h6>
                    <h6></h6>
                    <h5>$172800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-bmw-640i-white/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_02833-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 BMW 640 GranCoupe</strong></h6>
                    <h6></h6>
                    <h5>$62800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-ml350-2/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00031-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz ML350</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0737-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz E350</strong></h6>
                    <h6></h6>
                    <h5>$31800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2014-mercedes-benz-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0794-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2014 Mercedes-Benz E350</strong></h6>
                    <h6></h6>
                    <h5>$41800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-s550/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz S550</strong></h6>
                    <h6></h6>
                    <h5>$52800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-c250-coupe-black/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0645-copy-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz C250 Coupe</strong></h6>
                    <h6></h6>
                    <h5>$27800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-bmw-750-li/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0485-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 BMW 750 Li</strong></h6>
                    <h6></h6>
                    <h5>$51800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0419-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz E350</strong></h6>
                    <h6></h6>
                    <h5>$26800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0597-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C250</strong></h6>
                    <h6></h6>
                    <h5>$24800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2011-mercedes-benz-s550/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0767-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 Mercedes-Benz S550</strong></h6>
                    <h6></h6>
                    <h5>$44800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/mercedes-cls550-2/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0581-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz CLS550 Sport</strong></h6>
                    <h6></h6>
                    <h5>$45800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-i650/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/BMW-650i-silver-opt-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 BMW 650i</strong></h6>
                    <h6></h6>
                    <h5>$49800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/maserati/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0739-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2008 Maserati Quattroporte Executive GT</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/lexus-rx350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0959-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Lexus RX350</strong></h6>
                    <h6></h6>
                    <h5>$31800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/mercedes-e350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_01901-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz E350 Bluetech</strong></h6>
                    <h6></h6>
                    <h5>$29800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-b7-alpha/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0810-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW B7 Alpina</strong></h6>
                    <h6></h6>
                    <h5>$58800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-jaguar-xf/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_02441-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Jaguar XF Portfolio</strong></h6>
                    <h6></h6>
                    <h5>$36800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-lexus-gs350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_00221-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Lexus GS350</strong></h6>
                    <h6></h6>
                    <h5>$33800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-m3-white/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0544-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW M3</strong></h6>
                    <h6></h6>
                    <h5>$44800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/bmw-m3-black/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_05411-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2011 BMW M3</strong></h6>
                    <h6></h6>
                    <h5>$43800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-ml-350/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/pixel.gif" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz ML 350</strong></h6>
                    <h6></h6>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mini-cooper-hardtop-base/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/DSC_0721-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mini Cooper Hardtop Base</strong></h6>
                    <h6></h6>
                    <h5>$13800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250</strong></h6>
                    <h6></h6>
                    <h5>$34800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport-3/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/120-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$23800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2013-mercedes-benz-c-250/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/127-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2013 Mercedes-Benz C 250</strong></h6>
                    <h6></h6>
                    <h5>$25800</h5>
                  </div>
                </div>
              </div>
              <div class="slide">
                <div class="car-block">
                  <div class="img-flex"><a href="resources/autolinx/images/2012-mercedes-benz-c-250-sport-2/"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="resources/autolinx/images/no-image1-167x119.jpg" alt="" class="img-responsive no_border"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>2012 Mercedes-Benz C 250 Sport</strong></h6>
                    <h6></h6>
                    <h5>$21800</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="bx-controls"></div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Footer Map -->
  <div class='fullwidth_element_parent margin-top-30 padding-bottom-40'>
    <div id='google-map-listing' class='fullwidth_element' data-longitude='-79.38' data-latitude='43.65' data-zoom='12' style='height: 390px;' data-scroll='false' data-style='[{"featureType":"landscape","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"water","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"stylers":[{"hue":"#F0F0F0"},{"saturation":-100},{"gamma":2.15},{"lightness":12}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"visibility":"on"},{"lightness":24}]},{"featureType":"road","elementType":"geometry","stylers":[{"lightness":57}]}]'></div>
  </div>
  <div class="car-rate-block clearfix margin-top-30 padding-bottom-40">
    <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none padding-left-none scroll_effect bounceInLeft">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">Financing.</h4>
        <a href="#"><span class="align-center"><i class="fa fa-tag fa-7x"></i></span></a> </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none scroll_effect bounceInLeft" data-wow-delay=".2s">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">Warranty.</h4>
        <a href="#"><span class="align-center"><i class="fa fa-cogs fa-7x"></i></span></a> </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 padding-left-none padding-right-none hours_operation">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">What are our Hours of Operation?</h4>
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-40 md-margin-bottom-none scroll_effect bounceInUp" data-wow-delay=".4s">
            <table class="table table-bordered no-border font-13px margin-bottom-none">
              <thead>
                <tr>
                  <td colspan="2"><strong>Sales Department</strong></td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Mon:</td>
                  <td>8:00am - 5:00pm</td>
                </tr>
                <tr>
                  <td>Tue:</td>
                  <td>8:00am - 9:00pm</td>
                </tr>
                <tr>
                  <td>Wed:</td>
                  <td>8:00am - 5:00pm</td>
                </tr>
                <tr>
                  <td>Thu:</td>
                  <td>8:00am - 9:00pm</td>
                </tr>
                <tr>
                  <td>Fri:</td>
                  <td>8:00am - 6:00pm</td>
                </tr>
                <tr>
                  <td>Sat:</td>
                  <td>9:00am - 5:00pm</td>
                </tr>
                <tr>
                  <td>Sun:</td>
                  <td>Closed</td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none scroll_effect bounceInUp" data-wow-delay=".4s">
            <table class="table table-bordered no-border font-13px margin-bottom-none">
              <thead>
                <tr>
                  <td colspan="2"><strong>Service Department</strong></td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Mon:</td>
                  <td>8:00am - 5:00pm</td>
                </tr>
                <tr>
                  <td>Tue:</td>
                  <td>8:00am - 9:00pm</td>
                </tr>
                <tr>
                  <td>Wed:</td>
                  <td>8:00am - 5:00pm</td>
                </tr>
                <tr>
                  <td>Thu:</td>
                  <td>8:00am - 9:00pm</td>
                </tr>
                <tr>
                  <td>Fri:</td>
                  <td>8:00am - 6:00pm</td>
                </tr>
                <tr>
                  <td>Sat:</td>
                  <td>9:00am - 5:00pm</td>
                </tr>
                <tr>
                  <td>Sun:</td>
                  <td>Closed</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none scroll_effect bounceInRight" data-wow-delay=".2s">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">About Us.</h4>
        <a href="#"><span class="align-center"><i class="fa fa-users fa-7x"></i></span></a> </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12 xs-margin-bottom-40 sm-margin-bottom-none padding-right-none scroll_effect bounceInRight">
      <div class="small-block clearfix">
        <h4 class="margin-bottom-25 margin-top-none">Find Us.</h4>
        <a href="#"><span class="align-center"><i class="fa fa-map-marker fa-7x"></i></span></a> </div>
    </div>
  </div>
  <div class="vc_row wpb_row vc_row-fluid">
    <div class="vc_col-sm-12 wpb_column vc_column_container ">
      <div class="wpb_wrapper">
        <div class=""><!--Testimonials Start-->
          <div class="testimonial">
            <div class="bx-wrapper" style="max-width: 100%; margin: 0px auto;">
              <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 109px;">
                <ul class="testimonial_slider" style="width: 515%; position: relative; transition-duration: 0s; transform: translate3d(-1121px, 0px, 0px);">
                  <li style="float: left; list-style: outside none none; position: relative; width: 1118px; margin-right: 3px;" class="bx-clone">
                    <blockquote class="style1"><span>I just bought a Jaguar from Autolinx. The experience was fantastic! &nbsp;I worked with Nick and Ed. Courteous and professional. &nbsp;They offered a very fair price. &nbsp;The car was detailed; the paperwork swift. Soup to nuts, 2 hours. &nbsp;They did not have one of the key fobs on the day of the sale, so Nick delivered it to me the next day. &nbsp;Next used car I buy will be from Autolinx!</span><strong>R M.</strong> </blockquote>
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
                  </li>
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
        <h4>Subscribe to the official AutoLinx newsletter – Vehi-Linx</h4>
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
            <li><i class="fa fa-map-marker"></i> <strong>Address:</strong> 3300 Sonoma Blvd,Vallejo, California, 94590</li>
            <li><i class="fa fa-phone"></i> <strong>Phone:</strong> (707) 552-5469 </li>
            <li><i class="fa fa-envelope-o"></i> <strong>Email:</strong><a href="#">info@autolinxinc.com</a></li>
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
        <div class="logo-footer margin-bottom-20 md-margin-bottom-20 sm-margin-bottom-10 xs-margin-bottom-20"><a href="#"> <a class="logo-f" href="#"><img src="resources/autolinx/images/autolinxwhite11.png" alt></a> </div>
        <p>Website developed by <a href="#">Glider, LLC</a> with partnership of Vivid Concept, Inc.</p>
      </div>
      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <ul class="social clearfix">
          <li><a target="_blank" href="https://www.facebook.com/AutoLinxVallejo" class="facebook"></a></li>
          <li><a target="_blank" href="https://plus.google.com/b/100362181731377676567/100362181731377676567/about" class="google"></a> </li>
          <li><a target="_blank" href="https://twitter.com/autolinxvallejo" class="twitter"></a></li>
          <li><a target="_blank" href="http://www.yelp.com/biz/autolinx-luxury-pre-owned-vallejo" class="yelp"></a></li>
          <li><a target="_blank" href="https://instagram.com/autolinxinc/" class="instagram"></a></li>
          <li><a target="_blank" href="https://www.pinterest.com/autolinx0344/" class="pinterest"></a></li>
        </ul>
        <div class="clear"></div>
        <ul class="f-nav">
          <li><a href="index.html">Home</a></li>
          <li><a href="demo.html">Inventory</a></li>
          <li><a href="services.html"> Warranty</a></li>
          <li><a href="our-team.html"> About Us</a></li>
          <li><a href="blog.html">Blog</a></li>
          <li><a href="contact.html">Contact</a></li>
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