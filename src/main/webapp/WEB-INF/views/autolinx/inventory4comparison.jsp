<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<!--[if IE 7 ]> <html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8 ]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" ng-app="gliderApp">
<!--<![endif]-->
<head>

<!--  -->

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="${hostnameimg}${siteLogo.faviconPath}">
<title>${siteLogo.tabText}</title>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/autolinx/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="resources/autolinx/js/html5shiv.js"></script>
      <script src="resources/autolinx/js/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yellowtail%7COpen%20Sans%3A400%2C300%2C600%2C700%2C800" media="screen" />
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/autolinx/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/css/jquery.bxslider.css" type="text/css" media="screen" />
<link href="${pageContext.request.contextPath}/resources/autolinx/css/jquery.fancybox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/jquery.selectbox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/listing_style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/mobile.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/autolinx/css/settings.css" media="screen" />
<link href="${pageContext.request.contextPath}/resources/autolinx/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/ts.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/wow.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/angular.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/ng-infinite-scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/scripts/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/scripts/controller.js"></script>


<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/css/pnotify_css/pnotify.buttons.css"> 
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/css/pnotify_css/pnotify.core.css"> 


<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.core.js" type="text/javascript"></script>	
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.buttons.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.confirm.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/angular-pnotify.js" type="text/javascript"></script>
<script src="http://www.google.com/recaptcha/api.js?render=explicit&onload=vcRecaptchaApiLoaded" async defer></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/angular-recaptcha.js"></script>
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
 
<body ng-controller="InventoryController" ng-init='initFunction(${vehicle1.year},"${vehicle1.make}","${vehicle1.model}","${vehicle1.bodyStyle}","${vehicle1.fuelType}","${myprofile.locationId}","${type}","${inventoryData.defaultView}","${inventoryData.sortBy}","${inventoryData.sortType}")'>
<!--Header Start-->
<input type="hidden" id="contextpath" value="${pageContext.request.contextPath}">
<header class="clearfix affix-topno_resize no_header_resize_mobile header-inner"  no_resize="">
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
            <li class="address"><a href="http://maps.google.com/?q=${myprofile.address }" target="_blank"><i class="fa fa-map-marker"></i>${myprofile.address}</a></li>
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
            <a class="logo" href="${pageContext.request.contextPath}"><img src="${hostnameimg}${siteLogo.logoPath}" style="height:100px;"></a> </div>
          
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav pull-right" style="margin-top: 14px;">
              <li><a href="${pageContext.request.contextPath}">Home</a></li>
              <li class="active" ng-if="${newCount != 0 && usedCount == 0}"><a href="${pageContext.request.contextPath}/findVehicles/New"">Inventory</a></li>
              <li class="active" ng-if="${newCount == 0 && usedCount != 0}"><a href="${pageContext.request.contextPath}/findVehicles/Used">Inventory</a></li>
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

<div class="clearfix"></div>

<%-- <img class="preview" src="${hostnameimg}{{vehicle.path}}" style="height: 130px !important;"/> --%>
<section id="secondary-banner" class="dynamic-image-1-1"><!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
         <h2>${compareHeader.headerTitle}</h2>
        <h4>${compareHeader.subTitle}</h4>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}">Home</a></li>
          <li>Inventory</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!--#secondary-banner ends-->
<div class="message-shadow"></div>
<div class="clearfix"></div>
<div class="container">
	
</div>
 <section class="content">
    <div class="container">
        <div class="inner-page inventory-4">
            <div class="row">
               
                <c:if test="${vehicles.size() == 4}">
             <c:forEach var="option" items='${vehicles}'>
             	<div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="porche margin-bottom-25 clearfix">
                        <div class="porche-header padding-top-15 padding-bottom-10"> <span>${option.year} ${option.make} ${option.model}</span> <strong>$<fmt:formatNumber type="number" maxFractionDigits="3" value="${option.price}" /></strong> </div>
                        <div class="porche-img padding-bottom-15"> <img src="${hostnameimg}${option.path}" alt=""></div>
                        <div class="car-detail clearfix">
                            <div class="table-responsive">
                                <table class="table">
                                      <tbody>
                                        <tr ng-if="${vehicles[0].bodyStyle != null} || ${vehicles[1].bodyStyle != null} || ${vehicles[2].bodyStyle != null}  || ${vehicles[3].bodyStyle != null}">
                                            <td>Body Style:</td>
                                            <td ng-if="${option.bodyStyle != null}">${option.bodyStyle}</td>
                                             <td ng-if="${option.bodyStyle == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].engine != null} || ${vehicles[1].engine != null} || ${vehicles[2].engine != null} || ${vehicles[3].engine != null}">
                                            <td>Engine:</td>
                                            <td ng-if="${option.engine != null}">${option.engine}</td>
                                             <td ng-if="${option.engine == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].transmission != null} || ${vehicles[1].transmission != null} || ${vehicles[2].transmission != null} || ${vehicles[3].transmission != null}">
                                            <td>TRANSMISSION:</td>
                                            <td ng-if="${option.transmission != null}">${option.transmission}</td>
                                            <td ng-if="${option.transmission == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].drivetrain != null} || ${vehicles[1].drivetrain != null} || ${vehicles[2].drivetrain != null} || ${vehicles[3].drivetrain != null}">
                                            <td>DRIVETRAIN:</td>
                                           <td ng-if="${option.drivetrain != ''} && ${option.drivetrain != null}">${option.drivetrain}</td>
                                             <td ng-if="${option.drivetrain == ''} || ${option.drivetrain == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].extColor != ''} || ${vehicles[1].extColor != ''} || ${vehicles[2].extColor != ''} || ${vehicles[3].extColor != ''}">
                                            <td>EXTERIOR:</td>
                                            <td ng-if="${option.extColor != ''}">${option.extColor}</td>
                                             <td ng-if="${option.extColor == ''}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].intColor != null} || ${vehicles[1].intColor != null} || ${vehicles[2].intColor != null} || ${vehicles[3].intColor != null}">
                                            <td>INTERIOR:</td>
                                            <td ng-if="${option.intColor != null}">${option.intColor}</td>
                                             <td ng-if="${option.intColor == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].mileage != null} || ${vehicles[1].mileage != null} || ${vehicles[2].mileage != null} || ${vehicles[3].mileage != null}">
                                            <td>MILES:</td>
                                            <td ng-if="${option.mileage != null}">${option.mileage}</td>
                                             <td ng-if="${option.mileage == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].doors != null} || ${vehicles[1].doors != null} || ${vehicles[2].doors != null} || ${vehicles[3].doors != null}">
                                            <td>DOORS:</td>
                                            <td ng-if="${option.doors != null}">${option.doors}</td>
                                             <td ng-if="${option.doors == null}">N/A</td>
                                        </tr>
                                        <%-- <tr ng-if="${vehicles[0].bodyStyle != null} || ${vehicles[1].bodyStyle != null} || ${vehicles[2].bodyStyle != null}">
                                            <td>PASSENGERS:</td>
                                            <td ng-if="${option.bodyStyle != null}">${option.bodyStyle}</td>
                                             <td ng-if="${option.bodyStyle == null}">N/A</td>
                                        </tr> --%>
                                        <tr ng-if="${vehicles[0].stock != null} || ${vehicles[1].stock != null} || ${vehicles[2].stock != null} || ${vehicles[3].stock != null}">
                                            <td>STOCK #:</td>
                                            <td ng-if="${option.stock != null}">${option.stock}</td>
                                             <td ng-if="${option.stock == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].vin != null} || ${vehicles[1].vin != null} || ${vehicles[2].vin != null} || ${vehicles[3].vin != null}">
                                            <td>VIN #:</td>
                                            <td ng-if="${option.vin != null}">${option.vin}</td>
                                             <td ng-if="${option.vin == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].cityMileage != null} || ${vehicles[1].cityMileage != null} || ${vehicles[2].cityMileage != null} || ${vehicles[3].cityMileage != null}">
                                            <td>FUEL MILEAGE:</td>
                                            <td ng-if="${option.cityMileage != null}">${option.cityMileage}/${option.highwayMileage}</td>
                                             <td ng-if="${option.cityMileage == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].fuelType != null} || ${vehicles[1].fuelType != null} || ${vehicles[2].fuelType != null} || ${vehicles[3].fuelType != null}">
                                            <td>FUEL TYPE:</td>
                                            <td ng-if="${option.fuelType != null}">${option.fuelType}</td>
                                             <td ng-if="${option.fuelType == null}">N/A</td>
                                        </tr>
                                        <tr ng-if="${vehicles[0].make != null} || ${vehicles[1].make != null} || ${vehicles[2].make != null} || ${vehicles[3].make != null}">
                                            <td>CONDITION:</td>
                                            <td ng-if="${option.make != null}">${option.make}</td>
                                             <td ng-if="${option.make == null}">N/A</td>
                                        </tr>
                                        <!-- <tr>
                                            <td>OWNERS:</td>
                                            <td>N/A</td>
                                        </tr>
                                        <tr>
                                            <td>WARRANTY:</td>
                                            <td>3 Years Limited</td>
                                        </tr> -->
                                       <!--  <tr>
                                            <td>OPTIONS:</td>
                                            <td></td>
                                        </tr> -->
                                    </tbody>
                                </table>
                            </div>
                            <!-- <div class="option-tick-list padding-horizontal-10 clearfix">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <ul>
                                        <li>Adjustable Pedals</li>
                                        <li>Air Conditioning</li>
                                        <li>All-Wheel Drive</li>
                                        <li>Alloy Wheels</li>
                                        <li>Bucket Seats</li>
                                        <li>Cruise Control</li>
                                        <li>Heated Seats</li>
                                        <li>Leather Interior</li>
                                        <li>Navigation</li>
                                        <li>Power Door Locks</li>
                                        <li>Rear View Camera</li>
                                        <li>Tilt Steering</li>
                                    </ul>
                                </div>
                            </div> -->
                            <div class="porche-footer margin-top-25 padding-top-20 padding-bottom-15">
                                <form method="post" action="inventory-listing.html">
                                    <input type="submit" value="View Listing">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
             </c:forEach>  
          </c:if> 
            </div>
        </div>
    </div>
    <!--container ends--> 
</section>
<!--content ends-->
<div class="clearfix"></div>

<!--Footer Start-->
<div class="mainBoxIn">
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
            <li><i class="fa fa-map-marker"></i> <strong>Address:</strong> ${myprofile.address}</li>
            <li><i class="fa fa-phone"></i> <strong>Phone:</strong> ${myphone} </li>
            <li><i class="fa fa-envelope-o"></i> <strong>Email:</strong><a href="#">${myprofile.email}</a></li>
          </ul>
          <i class="fa fa-location-arrow back_icon"></i> </div>
      </div>
    </div>
  </div>


    <div class="copyright-wrap padding-bottom-10">
	
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
            <div class="logo-footer margin-bottom-20 md-margin-bottom-20 sm-margin-bottom-10 xs-margin-bottom-20"><a href="#"> <a class="logo-f" href="#"><img src="${hostnameimg}${siteLogo.logoPath}" alt></a> </div>
            <p>Website developed by <a href="#">Glider, LLC</a></p>
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
    </div>
</div>
  </footer>
  </div>
<section class="copyright-wrap no_footer mainBoxIn1">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="logo-footer margin-bottom-15 md-margin-bottom-15 sm-margin-bottom-10 xs-margin-bottom-15"> <a class="logo-f" href="${pageContext.request.contextPath}"><img src="${hostnameimg}${siteLogo.logoPath}" style="height:100px;"></a>
          <p>Powered by <a href="">GLIDER-AUTOS</a></p>
        </div>
      </div>
    </div>
  </div>
</section>
<div class="back_to_top"> <img src="http://demo.themesuite.com/automotive/images/arrow-up.png" alt="scroll up" /> </div>
<!-- Bootstrap core JavaScript --> <script src="${pageContext.request.contextPath}/resources/autolinx/js/retina.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/main.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.fancybox.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/modernizr.custom.js"></script> <script defer src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.flexslider.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.bxslider.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.selectbox-0.2.js" type="text/javascript"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.mousewheel.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.easing.js"></script>
</body>
</html>
<style>

.dynamic-image-1-1 {
  		background: url(${hostnameimg}${compareHeader.path}) top center;
  	}

	.car_listings .carfax {
  display: block !important;
}
.titleCenter{
	text-align: center;
}

.custom{
	background: #F7F7F7;
    border: 1px solid rgba(0, 0, 0, 0.0980392);
    border-radius: 4px;
    width: 100%;
}



.item-new {
	 content: "newww";
			   	 position: absolute;
			   	 z-index: 1;
			   	 text-transform: uppercase;
			   	 font-family: &quot;Open Sans&quot;, sans-serif;
			   	 font-size: 1em;
			   	 font-weight: 400;
			   	 color: #fff;
			   	 width: 11%;
			   	 display: block;
			   	 background: #428bca;
			   	 left: -2%;
			   	 top: 106px;
			   	 -webkit-transform: rotate(45deg);
			   	 -moz-transform: rotate(-45deg);
			   	 -o-transform: rotate(-45deg);
			   	 writing-mode: lr-tb;
			   	 -ms-transform: rotate(-45deg);
			   	 text-align: center;
			   	 line-height: 1em;

}

.content-grid {
    width: 70%;
    position: absolute;
    top: 90px;
    right: 1.5em
}
.content-grid .items {
    -webkit-align-content: flex-start;
    -ms-flex-line-pack: start;
    align-content: flex-start;
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-box-pack: start;
    -moz-box-pack: start;
    -ms-flex-pack: start;
    -webkit-justify-content: flex-start;
    justify-content: flex-start
}
.content-grid .item {
    position: relative;
    display: block;
    -webkit-box-flex: 0;
    -moz-box-flex: 0;
    height: auto;
    -webkit-flex: 0 1 24.9%;
    -ms-flex: 0 1 24.9%;
    flex: 0 1 24.9%;
    overflow: hidden
}
.content-grid .item:hover .caption {
    display: block
}
.content-grid .item-inner {
    position: relative;
    display: block;
    margin: 5px
}
.content-grid img {
    width: 100%;
    height: auto
}

.clearfix:after,
.clearfix:before {
    content: " ";
    display: table
}

.clearfix:after {
    clear: both
}

.news-grid .item .item-inner a {
    display: inline-block;
    height: 262px
}

news-grid .item-inner a {
        border: none!important
    }
    .news-grid .item-inner a:before {
        content: none!important
    }

.extras-item.item-new:before {
    text-align: center;
    pointer-events: none
}

.extras-item {
    overflow: hidden;
    position: relative
}
.extras-item.item-new:before {
        content: "New";
        position: absolute;
        z-index: 1;
        text-align: center;
        pointer-events: none;
        text-transform: uppercase;
        font-family: "Open Sans", sans-serif;
        font-size: .8em;
        font-weight: 600;
        color: #fff
    }




</style>

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
