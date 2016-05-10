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
<script type="text/javascript" src="resources/autolinx/js/angular.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/ng-infinite-scroll.js"></script>
<script type="text/javascript" src="resources/autolinx/scripts/app.js"></script>
<script type="text/javascript" src="resources/autolinx/scripts/controller.js"></script>


<link type="text/css" rel="stylesheet" href="resources/autolinx/css/pnotify_css/pnotify.buttons.css"> 
<link type="text/css" rel="stylesheet" href="resources/autolinx/css/pnotify_css/pnotify.core.css"> 


<script src="resources/autolinx/js/pnotify/pnotify.core.js" type="text/javascript"></script>	
<script src="resources/autolinx/js/pnotify/pnotify.buttons.js" type="text/javascript"></script>
<script src="resources/autolinx/js/pnotify/pnotify.confirm.js" type="text/javascript"></script> 
<script src="resources/autolinx/js/pnotify/angular-pnotify.js" type="text/javascript"></script>
<script type="text/javascript" src="resources/autolinx/js/angular-recaptcha.js"></script>
<!-- Twitter Feed Scripts 
     Uncomment to activate

<script type="text/javascript" src="resources/autolinx/js/twitter/jquery.tweet.js"></script>
<script type="text/javascript" src="resources/autolinx/js/twitter/twitter_feed.js"></script> -->

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

</head>

<body ng-controller="aboutUsController" ng-init='init()'>
<!--Header Start-->
<input type="hidden" id="vehicleLocation" value="${myprofile.address}">
<header class="clearfix affix-topno_resize no_header_resize_mobile header-inner" no_resize="">
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
            <li class="address"><a href="http://maps.google.com/?q=${myprofile.address}" target="_blank"><i class="fa fa-map-marker"></i>${myprofile.address} </a></li>
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
              <li><a href="${pageContext.request.contextPath}">Home</a></li>
              <li ng-if="${newCount != 0 && usedCount == 0}"><a href="${pageContext.request.contextPath}/findVehicles/New"">Inventory</a></li>
              <li ng-if="${newCount == 0 && usedCount != 0}"><a href="${pageContext.request.contextPath}/findVehicles/Used">Inventory</a></li>
              <li class="dropdown" ng-if="${newCount != 0 && usedCount != 0}"><a href="" class="dropdown-toggle" data-toggle="dropdown">Inventory <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                      <li><a href="${pageContext.request.contextPath}/findVehicles/New">New</a></li>
                      <li><a href="${pageContext.request.contextPath}/findVehicles/Used">Used</a></li>
                      <li ng-if="${comingSoonCount != 0}"><a href="${pageContext.request.contextPath}/findVehicles/comingSoon" >Coming Soon</a></li>
                  </ul>
              </li>
              <li><a href="${pageContext.request.contextPath}/warranty">Warranty</a></li>
              <li class="active"><a href="${pageContext.request.contextPath}/aboutUs">About Us</a></li>
              <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
              <li><a href="${pageContext.request.contextPath}/contactUs">Contact Us</a></li>
            </ul>
          </div>
          <!-- /.navbar-collapse --> 
        </div>
        <!-- /.container-fluid --> 
      </nav>
    </div>
    <div class="header_shadow"></div>
  </div>
</header>
<!--Header End-->

<div class="clearfix"></div>
<section id="secondary-banner" class="dynamic-image-3"><!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <h2>About Us</h2>
        <h4>Located on Sonoma Boulevard in Vallejo, CA - in the heart of beautiful and historic Solano County.</h4>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li>About Us</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!--#secondary-banner ends-->
<div class="message-shadow"></div>
<div class="clearfix"></div>
<section class="content">
  <div class="container">
    <div class="inner-page about-us row">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 padding-left-none padding-bottom-40 xs-padding-left-none xs-padding-right-none">
        <h3 class="margin-bottom-25">${aboutUsVM.mainTitle}</h3>
        <p><span class="firstcharacter">T</span>${aboutUsVM.text}</p>
        <p><img class="alignleft margin-top-10 margin-bottom-20 margin-right-25 margin-left-none" src="${hostnameimg}${aboutUsVM.imageUrl}" alt="automotive">${aboutUsVM.text1}</p>
        <p>
      <!--   <p >Sincerely, 
          The Autolinx Team</p> -->
        <p style="width:39%"><br>${myprofile.fullAddress}<br>
     
          ${myphone}
          <br>
          <a href="#">${myprofile.email}</a><br>
        </p>
        <h3>Directions</h3>
      </div>
      <%--  --%>
      <div class="col-lg-4 col-md-4 col-sm-4 padding-right-none padding-bottom-40 xs-padding-left-none xs-padding-right-none">
        <div class="right-container">
          <h3 class="margin-bottom-25">WHAT WE SPECIALIZE IN</h3>
          <div class="progressbar">
            <div class="bs-example">
            
             <c:forEach var="optionCar" items='${countCar}'> 
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="${optionCar.count}">${optionCar.carName}</div>
              </div>
              </c:forEach> 
             <!--  <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="9">BMW</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="8">Audi</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="7">Jaguar</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="6">Land Rover</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="5">Lamborghini</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="40">Ferrari</div>
              </div> -->
            </div>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
	  <div class="margin-top-30 xs-margin-top-none padding-bottom-40">
	    <c:if test="${testimonial.size()>=1}">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 xs-padding-bottom-40 xs-padding-left-none xs-padding-right-none sm-padding-bottom-40 testimonials scroll_effect fadeInUp padding-left-none" data-wow-delay=".2s">
                    <h3 class="margin-bottom-25">TESTIMONIALS</h3>
                    <div class="testimonial">
                        <ul class="testimonial_slider">
                         	  <c:forEach var="option" items='${testimonial}'> 
                            	 <li>
                              	  <blockquote class="style1"><span>${option.testimonials}</span><strong>${option.signature}</strong></blockquote>
                            	</li>
                         	   </c:forEach> 
							
                        </ul>

                    </div>
                    <div class="clearfix"></div>
                </div>
               </c:if>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 latest-news margin-padding-none xs-padding-bottom-40 xs-padding-left-none xs-padding-right-none sm-margin-bottom-none scroll_effect fadeInUp" data-wow-delay=".4s">
                    <h3 class="margin-bottom-25">LATEST AUTOMOTIVE NEWS</h3>
                    <div class="arrow1 pull-right blog_post_controls"></div>
                    <ul class="recent_blog_posts">
                    	 <c:forEach var="option" items='${blogLists.blogList}'> 
                        <li>
                         
                            <div class="blog-list">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 list-info padding-bottom-15 padding-horizontal-5">
                                    <h4>${option.title}</h4>
                                    <span>${option.postedDate}</span> 
                                    <p id='longText'>${option.description}<a href="${pageContext.request.contextPath}/blog">[...]</a></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                           
                        </li>
                          </c:forEach>
                       <!--   <li>
                            <div class="blog-list">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 list-info padding-bottom-15 padding-horizontal-5">
                                    <h4>Autolinx Celebrity Profile - Paul Newman</h4>
                                    <span>May 22, 2015  /</span> <span class="text-red">7 Comments</span>
                                    <p>[caption id="attachment_5761" align="aligncenter" width="493"] Paul was just another guy swept up in the dirt, guts<a href="#">[...]</a></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                        <li>
                            <div class="blog-list">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 list-info padding-bottom-15 padding-horizontal-5">
                                    <h4>Ask Your Dealer -  Should I Buy or Finance My Used Luxury Car</h4>
                                    <span>May 26, 2015 /</span> <span class="text-red">0 Comments</span>
                                    <p>You have finally decided to buy that BMW, Lexus, Mercedes, you always dreamed about, however buying a luxury ca<a href="#">[...]</a></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </li>  -->
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            
    </div>
	
	
	
	
  </div>
  <!--container ends--> 
</section>

<!-- Footer Map -->
 <div id="map-canvas" style="width:100%; height:390px"></div>

<!--Footer Start-->


<!--content ends-->
<div class="clearfix"></div>
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
          <li><a target="_blank" href="${myprofile.facebook}" class="facebook"></a></li>
          <li><a target="_blank" href="${myprofile.googleplus}" class="google"></a> </li>
          <li><a target="_blank" href="${myprofile.twitter}" class="twitter"></a></li>
          <li><a target="_blank" href="http://www.yelp.com/biz/autolinx-luxury-pre-owned-vallejo" class="yelp"></a></li>
          <li><a target="_blank" href="${myprofile.instagram}" class="instagram"></a></li>
          <li><a target="_blank" href="${myprofile.pinterest}" class="pinterest"></a></li>
        </ul>
        <div class="clear"></div>
        <ul class="f-nav">
          <li><a href="${pageContext.request.contextPath}">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/findVehicles">Inventory</a></li>
          <li><a href="${pageContext.request.contextPath}/warranty"> Warranty</a></li>
          <li><a href="${pageContext.request.contextPath}/aboutUs"> About Us</a></li>
          <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
          <li><a href="${pageContext.request.contextPath}/contactUs">Contact</a></li>
        </ul>
      </div>
    </div>
  </div>
</section>
<div class="back_to_top"> <img src="http://demo.themesuite.com/automotive/images/arrow-up.png" alt="scroll up" /> </div>

<!-- Bootstrap core JavaScript --> <script src="resources/autolinx/js/retina.js"></script> 
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key&amp;sensor=false"></script> 
<script src="resources/autolinx/js/main.js"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.fancybox.js"></script> 
<script src="resources/autolinx/js/modernizr.custom.js"></script> <script defer src="resources/autolinx/js/jquery.flexslider.js"></script> 
<script src="resources/autolinx/js/jquery.bxslider.js" type="text/javascript"></script> 
<script src="resources/autolinx/js/jquery.selectbox-0.2.js" type="text/javascript"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.mousewheel.js"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.easing.js"></script>
</body>
</html>

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