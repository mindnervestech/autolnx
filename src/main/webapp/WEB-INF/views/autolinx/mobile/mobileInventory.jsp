<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/resources/autolinx/js/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/resources/autolinx/js/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yellowtail%7COpen%20Sans%3A400%2C300%2C600%2C700%2C800" media="screen" />
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/jquery.bxslider.css" type="text/css" media="screen" />
<link href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/jquery.fancybox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/jquery.selectbox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/mobile.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/settings.css" media="screen" />
<link href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/mobile-css/ts.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/swiper.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/wow.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key&amp;sensor=false"></script>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/swiper.js"></script>
<!-- Twitter Feed Scripts 
     Uncomment to activate

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/jquery.tweet.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/twitter_feed.js"></script> -->

</head>

<body ng-controller="MobileInventoryController" ng-init='initFunction()'>
<input type="hidden" id="contextpath" value="${pageContext.request.contextPath}">
<div class="wrapperIn">
<header>
	<div class="toolbar1">
		<ul>
           <li><a href="http://maps.google.com/?q=${myprofile.fullAddress }">Directions</a></li>
            <li><a href="tel:+1${myprofile.phone }"><i class="fa fa-phone">&nbsp; </i> ${myphone }</a></li>
            
          </ul>
	</div>
    <div class="logo">
    	<a href="${pageContext.request.contextPath}/mobile/home"><img src="${hostnameimg}${siteLogo.logoPath}" alt="" style="height:100px;"></a>
    </div>
</header>
    <div class="topBanner">
    	<img src="${pageContext.request.contextPath}/resources/autolinx/images/mobile/dynamic-header-1.jpg" alt="">
        <h1 class="topBannerText">Our Inventory</h1>
    </div>
    <div class="message-shadow1"></div>
    <div class="topBottomBox">
        <%-- <div class="listBox">
            <ul>
            	
                <li>
                    <img src="${pageContext.request.contextPath}/resources/autolinx/images/list-logo1.jpg "alt=""><br>
                    <span>Acura</span>
                </li>
            </ul>
        </div> --%>
        <div class="swiper-container">
		   <!-- Additional required wrapper -->
		   <div class="swiper-wrapper">
		       <!-- Slides -->
		       <c:forEach var="row" items="${brandList}" varStatus="loop">
                 <div name="${row.name.substring(0,1).toUpperCase()}" index="${loop.index}" make="${row.make}"  class="swiper-slide">
                 	<img src="${hostnameimg}/Logos/${row.name}" style="width:150px;max-height:150px;;vertical-align: middle;">
                 </div>               	
		   		</c:forEach>
		   </div>
		</div>
        
        <div class="select-dropdown2">
                    
                    <span class="my-dropdown">Year:</span>
                    <div class="min-dropdown">
                   
                      <select name="year" class="css-dropdowns" ng-model="year" ng-change="selectYear()" tabindex="1" >
			              <option value="">All Years</option>
			             <c:forEach var="option" items='${vehicleListYear}'>
										<option value='${option}'>${option}</option>
						</c:forEach> 
			            </select>
                   
                    </div>
                  </div>
        
        <div class="clearClass"></div>
        <div class="alfaList">
            <ul style="text-align: center;">
            	<li ng-repeat="obj in characters">
            	<a id="{{obj.name}}" ng-class="obj.isAvailable? 'activeLetter':'inactiveLetter'" ng-click="setAlphabet(obj.name,obj.index,obj.isAvailable)" 
            	style="cursor: pointer;font-size: 18px;">{{obj.name.toUpperCase()}}</a>
            	</li>
            </ul>
        </div>
        
	</div>
		<p ng-show="VehiclesCount == 0" style="margin-left:33%;"><b>No vehicle found!</b></p>
	<div class="mainBox" infinite-scroll='loadMore()' infinite-scroll-distance='2'>
    
    	<div class="inventoryBox" ng-repeat="vehicle in vehicleList">        	
                <div class="title">{{vehicle.year}} {{vehicle.make}} {{vehicle.model}}</div>
                <div class="imageBoxIn">
                <a href="${pageContext.request.contextPath}/mobile/viewDetails/{{vehicle.vin}}"><img src="${hostnameimg}{{vehicle.path}}" class="preview" alt="preview" style="width:210px;height:140px;"></a>              
                
                </div>
                <div class="leftBox" style="width: 100%;">
                	<table class="options-primary" style="width: 100%;">
                  <tbody>
                    <tr ng-if="vehicle.bodyStyle != null && vehicle.bodyStyle != ''">
                      <td class="primary">Body Style: </td>
                      <td class="spec">{{vehicle.bodyStyle}}</td>
                    </tr>
                    <tr ng-if="vehicle.mileage != null && vehicle.mileage != ''">
                      <td class="option primary">Mileage: </td>
                      <td class="spec">{{vehicle.mileage}}</td>
                    </tr>
                    <tr ng-if="vehicle.transmission != null && vehicle.transmission != ''">
                      <td class="option primary" style="vertical-align: top;">Transmission: </td>
                      <td class="spec" style="white-space: inherit; width: 115px;">{{vehicle.transmission}}</td>
                    </tr>
                    <tr ng-if="vehicle.drivetrain != null && vehicle.drivetrain != ''">
                      <td class="option primary">Drivetrain: </td>
                      <td class="spec">{{vehicle.drivetrain}}</td>
                    </tr>
                    <tr ng-if="vehicle.engine != null && vehicle.engine != ''">
                      <td class="option primary" style="vertical-align: top;">Engine: </td>
                      <td class="spec" style="white-space: inherit;width: 115px;">{{vehicle.engine}}</td>
                    </tr>
                    <tr style="text-align: center;" ng-if="vehicle.price != null && vehicle.price != ''">
<!--                       <td class="option primary">Price: </td> -->
                      <td class="spec1" colspan="2">$ {{(vehicle.price).replace("$","") | number}}</td>
                    </tr>
                     <tr style="text-align: center;" ng-if="vehicle.price != null && vehicle.price != ''">
<!--                       <td class="option primary"> </td> -->
                      <td class="spec" colspan="2">Plus Sales Tax</td>
                    </tr>
                    	
                  </tbody>
                  
                </table>
                <div style="text-align: center;">
                	<a href="http://www.carfax.com/VehicleHistory/p/Report.cfx?vin={{vehicle.vin}}&amp;partner=AAG_0" target="_blank"> <img src="${pageContext.request.contextPath}/resources/autolinx/images/mobile/carfax2.png" alt="CarFax Report"> </a>
                </div>
                    
<%--                 	<div class="gradient_button"><a href="${pageContext.request.contextPath}/mobile/viewDetails/{{vehicle.vin}}"><i class="fa fa-plus-circle"></i> View Details</a></div> --%>
                </div>
        </div>
        
    </div>

<!-- <footer>
	<h4>Subscribe to the official AutoLinx newsletter - Vehi-Linx</h4>
    <form method="post">
          <p>
            <label>Email Address:</label>
            <input type="email" class="inputInner" required placeholder="Your email address" name="EMAIL">
          </p>
          <p>
            <label>First Name:</label>
            <input type="text" class="inputInner" placeholder="Your first name" name="FNAME">
          </p>
          <p>
            <label>Last Name:</label>
            <input type="text" class="inputInner" placeholder="Your last name" name="LNAME">
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
</footer>  -->
<%-- <div class="copyright-wrap">
	<ul class="social">
          <li><a target="_blank" href="${myprofile.facebook}" class="facebook"></a></li>
          <li><a target="_blank" href="${myprofile.googleplus}" class="google"></a> </li>
          <li><a target="_blank" href="${myprofile.twitter}" class="twitter"></a></li>
          <li><a target="_blank" href="http://www.yelp.com/biz/autolinx-luxury-pre-owned-vallejo" class="yelp"></a></li>
          <li><a target="_blank" href="${myprofile.instagram}" class="instagram"></a></li>
          <li><a target="_blank" href="${myprofile.pinterest}" class="pinterest"></a></li>
        </ul>
        <div class="clearClass"></div>
        <ul class="f-nav">
           <li><a href="${pageContext.request.contextPath}/mobile/home">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/mobile/inventory">Inventory</a></li>
          <li><a href="${pageContext.request.contextPath}/mobile/contactUs"> Contact Us</a></li>
        </ul>
</div> --%>
 <div class="back_to_top" style="display: block;"> <img alt="scroll up" src="http://demo.themesuite.com/automotive/images/arrow-up.png"> </div>      
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.parallax.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/main.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.fancybox.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.bxslider.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.selectbox-0.2.js" type="text/javascript"></script> 

</body>
</html>

<style>
 .swiper-container {
       width: 100%;
       height: 150px;
       padding-top: 25px;
       padding-bottom: 10px;
   }
   .swiper-slide {
       background-position: center;
       background-size: cover;
       width: 150px;
       max-height: 150px;
       line-height:150px;
   }
   .alfaList ul li a.active {
    color: #10529e;
}

.topBanner {
    margin: 0px;
    position: relative;
    height: 50px;
    
}


.topBanner img {
    width: 100%;
    height: 100%;
}

.topBannerText {
    margin: 0px;
    position: absolute;
    text-shadow: 0px 1px 0px #000;
    font-weight: 700;
    font-size: 35px;
    color: #FFF;
    left: 5%;
    padding: 0px;
    top: 0%;
}

.activeLetter{
	color: #8e8e8e !important;
}
.inactiveLetter{
	color: #d3d3d3 !important;
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

