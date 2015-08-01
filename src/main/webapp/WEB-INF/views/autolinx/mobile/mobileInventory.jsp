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
<link rel="shortcut icon" href="/glivrImg/images${siteLogo.faviconPath}">
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/wow.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key&amp;sensor=false"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/angular.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/ng-infinite-scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/scripts/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/scripts/controller.js"></script>

<!-- Twitter Feed Scripts 
     Uncomment to activate

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/jquery.tweet.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/twitter_feed.js"></script> -->

</head>

<body ng-controller="MobileInventoryController">
<input type="hidden" id="contextpath" value="${pageContext.request.contextPath}">
<div class="wrapperIn">
<header>
	<div class="toolbar1">
		<ul>
           <li><a href="https://www.google.com/maps/dir//AutoLinx+-+Luxury+Pre-Owned,+3300+Sonoma+Blvd,+Vallejo,+CA+94590,+United+States/@38.1202427,-122.2546659,15z/data=!4m12!1m3!3m2!1s0x0:0xce9d2ad188e1093!2sAutoLinx+-+Luxury+Pre-Owned!4m7!1m0!1m5!1m1!1s0x80857351d3b20b31:0xce9d2ad188e1093!2m2!1d-122.2546659!2d38.1202427">Directions</a></li>
            <li><a href="#"><i class="fa fa-phone"> </i> (707) 552-5469</a></li>
            
          </ul>
	</div>
    <div class="logo">
    	<a href="${pageContext.request.contextPath}/mobile/home"><img src="/glivrImg/images${siteLogo.logoPath}" alt="" style="height:100px;"></a>
    </div>
</header>
    <div class="topBanner">
    	<img src="${pageContext.request.contextPath}/resources/autolinx/images/mobile/dynamic-header-1.jpg" alt="">
        <h1 class="topBannerText">Our Inventory</h1>
    </div>
    <div class="message-shadow1"></div>
    <div class="topBottomBox">
        <div class="listBox">
            <ul>
            	
                <li>
                    <img src="${pageContext.request.contextPath}/resources/autolinx/images/list-logo1.jpg "alt=""><br>
                    <span>Acura</span>
                </li>
            </ul>
        </div>
        <div class="select-dropdown2">
                    
                    <span class="my-dropdown">Sort By:</span>
                    <div class="min-dropdown">
                   
                      <select name="max-price" class="css-dropdowns" tabindex="1" ng-model="year" ng-change="selectYear()">
                        <option value="">All Years</option>
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
        
        <div class="clearClass"></div>
        <div class="alfaList">
            <ul>
                <li><a ng-click="setAlphabet('A')" style="cursor: pointer;">A</a></li>
                <li><a ng-click="setAlphabet('B')" style="cursor: pointer;">B</a></li>
                <li><a ng-click="setAlphabet('C')" style="cursor: pointer;">C</a></li>
                <li><a ng-click="setAlphabet('D')" style="cursor: pointer;">D</a></li>
                <li><a ng-click="setAlphabet('E')" style="cursor: pointer;">E</a></li>
                <li><a ng-click="setAlphabet('F')" style="cursor: pointer;">F</a></li>
                <li><a ng-click="setAlphabet('G')" style="cursor: pointer;">G</a></li>
                <li><a ng-click="setAlphabet('H')" style="cursor: pointer;">H</a></li>
                <li><a ng-click="setAlphabet('I')" style="cursor: pointer;">I</a></li>
                <li><a ng-click="setAlphabet('J')" style="cursor: pointer;">J</a></li>
                <li><a ng-click="setAlphabet('K')" style="cursor: pointer;">K</a></li>
                <li><a ng-click="setAlphabet('L')" style="cursor: pointer;">L</a></li>
                <li><a ng-click="setAlphabet('M')" style="cursor: pointer;">M</a></li>
                <li><a ng-click="setAlphabet('N')" style="cursor: pointer;">N</a></li>
                <li><a ng-click="setAlphabet('O')" style="cursor: pointer;">O</a></li>
                <li><a ng-click="setAlphabet('P')" style="cursor: pointer;">P</a></li>
                <li><a ng-click="setAlphabet('Q')" style="cursor: pointer;">Q</a></li>
                <li><a ng-click="setAlphabet('R')" style="cursor: pointer;">R</a></li>
                <li><a ng-click="setAlphabet('S')" style="cursor: pointer;">S</a></li>
                <li><a ng-click="setAlphabet('T')" style="cursor: pointer;">T</a></li>
                <li><a ng-click="setAlphabet('V')" style="cursor: pointer;">V</a></li>
            </ul>
        </div>
        
	</div>
		<p ng-show="VehiclesCount == 0" style="margin-left:40%;"><b>No vehicle found!</b></p>
	<div class="mainBox" infinite-scroll='loadMore()' infinite-scroll-distance='2'>
    
    	<div class="inventoryBox" ng-repeat="vehicle in vehicleList">        	
                <div class="title">{{vehicle.year}} {{vehicle.make}} {{vehicle.model}}</div>
                <div class="imageBoxIn">
                <a href="${pageContext.request.contextPath}/mobile/viewDetails/{{vehicle.vin}}"><img src="/glivrImg/images{{vehicle.path}}" class="preview" alt="preview" style="width:200px;height:150px;"></a>              
                
                </div>
                <div class="leftBox">
                	<table class="options-primary">
                  <tbody>
                    <tr>
                      <td class="primary">Body Style: </td>
                      <td class="spec">{{vehicle.bodyStyle}}</td>
                    </tr>
                    <tr>
                      <td class="option primary">Mileage: </td>
                      <td class="spec">{{vehicle.mileage}}</td>
                    </tr>
                    <tr>
                      <td class="option primary">Transmission: </td>
                      <td class="spec">{{vehicle.transmission}}</td>
                    </tr>
                    <tr>
                      <td class="option primary">Drivetrain: </td>
                      <td class="spec">{{vehicle.drivetrain}}</td>
                    </tr>
                    <tr>
                      <td class="option primary">Engine: </td>
                      <td class="spec">{{vehicle.engine}}</td>
                    </tr>
                    <tr>
                      <td class="option primary">Price: </td>
                      <td class="spec1">{{vehicle.price}}</td>
                    </tr>
                     <tr>
                      <td class="option primary"> </td>
                      <td class="spec">Plus Sales Tax</td>
                    </tr>
                    	
                  </tbody>
                  
                </table>
                	<a href="${pageContext.request.contextPath}/mobile/viewDetails/{{vehicle.vin}}" target="_blank"> <img src="${pageContext.request.contextPath}/resources/autolinx/images/mobile/carfax2.png" alt="CarFax Report"> </a>
                    
                	<div class="gradient_button"><a href="${pageContext.request.contextPath}/mobile/viewDetails/{{vehicle.vin}}"><i class="fa fa-plus-circle"></i> View Details</a></div>
                </div>
        </div>
        
    </div>

<footer>
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
</footer> 
<div class="copyright-wrap">
	<ul class="social">
          <li><a target="_blank" href="https://www.facebook.com/AutoLinxVallejo" class="facebook"></a></li>
          <li><a target="_blank" href="https://plus.google.com/b/100362181731377676567/100362181731377676567/about" class="google"></a> </li>
          <li><a target="_blank" href="https://twitter.com/autolinxvallejo" class="twitter"></a></li>
          <li><a target="_blank" href="http://www.yelp.com/biz/autolinx-luxury-pre-owned-vallejo" class="yelp"></a></li>
          <li><a target="_blank" href="https://instagram.com/autolinxinc/" class="instagram"></a></li>
          <li><a target="_blank" href="https://www.pinterest.com/autolinx0344/" class="pinterest"></a></li>
        </ul>
        <div class="clearClass"></div>
        <ul class="f-nav">
           <li><a href="${pageContext.request.contextPath}/mobile/home">Home</a></li>
          <li><a href="${pageContext.request.contextPath}/mobile/inventory">Inventory</a></li>
          <li><a href="#"> Warranty</a></li>
          <li><a href="about-us.html"> About Us</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
</div>
 <div class="back_to_top" style="display: block;"> <img alt="scroll up" src="http://demo.themesuite.com/automotive/images/arrow-up.png"> </div>      
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.parallax.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/main.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.fancybox.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.bxslider.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.selectbox-0.2.js" type="text/javascript"></script> 

</body>
</html>

