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
<meta name="google-site-verification" content="9Z8MSVa9CjEuNBRNdXR_BU1sIVo7fRHRxbaHJxL0GZ4" />
<link rel="shortcut icon" href="${hostnameimg}${siteLogo.faviconPath}">
<title>${siteLogo.tabText}</title>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/autolinx/css/bootstrap.min.css" rel="stylesheet">
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
<script src="${pageContext.request.contextPath}/resources/autolinx/js/bootstrap.min.js"></script>
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


<script src="http://www.google.com/recaptcha/api.js?render=explicit&onload=vcRecaptchaApiLoaded" async defer></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/angular-recaptcha.js"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.core.js" type="text/javascript"></script>	
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.buttons.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.confirm.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/angular-pnotify.js" type="text/javascript"></script>
<!-- Twitter Feed Scripts 
     Uncomment to activate

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/jquery.tweet.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/twitter_feed.js"></script> -->

<style>
.bx-loading{
	display:none;
}
</style>
</head>

<body ng-controller="MobileHomeController">
<%-- <div id="loading" style='position:fixed;display:none;
    							top:50%;
    							left:50%;
    							z-index:1;'>
    		<img alt="loading" src="${pageContext.request.contextPath}/resources/autolinx/images/loading.gif"/>
    	</div> --%>
<input type="hidden" id="contextpath" value="${pageContext.request.contextPath}">
<div class="wrapperIn">
<header>
	<div class="toolbar">
		<ul>
         
            <li><a href="tel:+1${myprofile.phone }"><i class="fa fa-phone"> </i>&nbsp;${myphone}</a></li>
            
          </ul>
	</div>
    <div class="logo">
    	<a href="${pageContext.request.contextPath}/mobile/home"><img src="${hostnameimg}${siteLogo.logoPath}" alt="" style="height:100px;"></a>
    </div>
</header>
    <div class="message-wrap">
    	<h2>
        	<strong>${siteContent.heading1}</strong> ${siteContent.heading2} 
        </h2>
        <a class="default-btn pull-right action_button lg-button mainBoxIn1" style="cursor:pointer;" data-toggle="modal" data-target="#carBrandModal">Follow car brand</a>
    </div>
    <div class="message-shadow"></div>
     <!-- <div class="row">
        	 <div class="col-md-6"> -->
    <div class="boxIn">
    	<div class="boxInLeft setImgs setheight" style="background-image: url('${pageContext.request.contextPath}/resources/autolinx/images/inventory_mobile.jpg');">
        	<%-- <img src="${pageContext.request.contextPath}/resources/autolinx/images/inventory_mobile.jpg" alt=""> --%>
            <p class="boxInText">
            	<a href="${pageContext.request.contextPath}/mobile/inventory">Inventory</a>
            </p>
        </div>
        <div class="boxInLeft setImgs setheight" style="background-image: url('${pageContext.request.contextPath}/resources/autolinx/images/new_arrivals_mobile.jpg');">
        	<%-- <img src="${pageContext.request.contextPath}/resources/autolinx/images/new_arrivals_mobile.jpg" alt=""> --%>
             <p class="boxInText">
            	<a href="${pageContext.request.contextPath}/mobile/newArrivals">New Arrivals</a>
            </p>
        </div>
        
        <div class="boxInLeft setImgs setheight" style="background-image: url('${pageContext.request.contextPath}/resources/autolinx/images/directions_mobile.jpg');">
        	<%-- <img src="${pageContext.request.contextPath}/resources/autolinx/images/directions_mobile.jpg" alt=""> --%>
            <p class="boxInText">
            	<a href=" http://maps.google.com/?q=${myprofile.fullAddress }">Directions</a>
            </p>
        </div>
        <div class="boxInLeft setImgs setheight" style="background-image: url('${pageContext.request.contextPath}/resources/autolinx/images/about_us_mobile.jpg');">
        	<%-- <img src="${pageContext.request.contextPath}/resources/autolinx/images/about_us_mobile.jpg" alt=""> --%>
            <p class="boxInText">
            	<a href="${pageContext.request.contextPath}/mobile/contactUs">Contact Us</a>
            </p>
        </div>      
    </div>
    <div class="clearClass"></div>
    <div class="recent-vehicles">
    	<h5>Recent Vehicles</h5>
        <p>
        	Browse through the vast selection of vehicles that have recently been added to our inventory.
        </p>
        <div class="arrow3 clearfix margin-top-15 xs-margin-bottom-25" id="slideControls3"><span class="prev-btn"></span><span class="next-btn"></span></div>
    </div>
	
    <div class="carasouel-slider3">
               <div class="slide" ng-repeat="recent in recentVehicles" style="float: left; list-style: none; position: relative; margin-right: 30px; width: 170px;">
                <div class="car-block">
                
                 <!-- <img class="preview" src="${hostnameimg}{{vehicle.path}}" alt="preview">    <img src="resources/autolinx/images/DSC_0002-167x119.jpg"-->
                  <div class="img-flex"><a href="viewDetails/{{recent.vin}}"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a>  <img src="${hostnameimg}{{recent.path}}" alt="" class="img-responsive no_border" style="height:121px;"> </div>
                  <div class="car-block-bottom">
                    <h6><strong>{{recent.year}} {{recent.make}} {{recent.model}}</strong></h6>
                    <h6></h6>
                       <h5>{{recent.price}}</h5>
                  </div>
                </div>
              </div>
              
            </div>
    
    <div class="searchBox">
    	<h4 class="welcome-wrap"><strong>SEARCH</strong> OUR INVENTORY</h4>
        <div class="search-form">
            <form method="post" modelAttribute="userform" action="${pageContext.request.contextPath}/mobile/findVehicle">
              <div class="select-wrapper clearfix">
                <div class="col-md-6" style="margin-left:26%;">
                  <div class="my-dropdown make-dropdown">
                      <select name="year" ng-model="year" class="css-dropdowns" tabindex="1" >
                        <option value="">Year</option>
                        <c:forEach var="option" items='${vehicleListYear}'>
							<option value='${option}'>${option}</option>
						</c:forEach> 
                      </select>
                     </div>
                </div> 
                <div class="col-md-6" style="margin-left:26%;">
                <div class="my-dropdown">
                      <select name="fuelType" ng-model="fuelType" class="css-dropdowns" tabindex="1" >
                       <option value="">Fuel Type</option>
            		   <option value="Eco-Friendly">Eco-Friendly</option>
              		   <option value="Electric">Electric</option>
              		   <option value="Flexible-Fuel">Flexible-Fuel</option>
              		   <option value="Gas">Gas</option>
              		   <option value="Hybrid">Hybrid</option>
              		   <option value="premium unleaded (required)">premium unleaded (required)</option>
                      </select>
                     </div>
                     </div>
                </div>
              
             <!--  <div class="select-wrapper clearfix">
                <div class="col-md-6">
                  <div class="my-dropdown body-styles-dropdownn">
                    <select name="bodyStyle" ng-model="bodyStyle" class="css-dropdowns" tabindex="1" >
           	            <option value="">All Body Styles</option>
           			    <option value="2dr Hatchback">2dr Hatchback</option>
         			    <option value="4dr Hatchback">4dr Hatchback</option>
      			        <option value="Convertible">Convertible</option>
      			        <option value="Coupe">Coupe</option>
       				    <option value="Hatchback">Hatchback</option>
    				    <option value="SUV">SUV</option>
    			        <option value="Sedan">Sedan</option>
     			        <option value="Sports Utility Vehicle">Sports Utility Vehicle</option>
                    </select>
                  </div>
                </div>
               
              </div> -->
              <div class="select-wrapper clearfix">
                <div class="col-md-6" style="margin-left:26%;">
                  <div class="my-dropdown model-dropdown">
                    <select name="model" ng-model="model" class="css-dropdowns" tabindex="1" >
                    	   <option value="">Model</option>
                        <c:forEach var="option" items='${vehicleListModel}'>
							<option value='${option}'>${option}</option>
						</c:forEach> 
                    </select>
                  </div>
                </div>
                 <div class="col-md-6" style="margin-left:26%;">
                  <div class="my-dropdown body-styles-dropdownn">
                    <select name="bodyStyle" ng-model="bodyStyle" class="css-dropdowns" tabindex="1" >
           	            <option value="">Body Styles</option>
           			    <option value="2dr Hatchback">2dr Hatchback</option>
         			    <option value="4dr Hatchback">4dr Hatchback</option>
      			        <option value="Convertible">Convertible</option>
      			        <option value="Coupe">Coupe</option>
       				    <option value="Hatchback">Hatchback</option>
    				    <option value="SUV">SUV</option>
    			        <option value="Sedan">Sedan</option>
     			        <option value="Sports Utility Vehicle">Sports Utility Vehicle</option>
                    </select>
                  </div>
                </div>
              
              </div>
            <div class="select-wrapper clearfix">
                <div class="col-md-6" style="margin-left:26%;">
                  <div class="my-dropdown make-dropdown">
                    <select name="make" ng-model="make" class="css-dropdowns" tabindex="1" >
                    	<option value="">Makes</option>
                        <c:forEach var="option" items='${vehicleListMake}'>
											<option value='${option}'>${option}</option>
						</c:forEach>
                     
                    </select>
                  </div>
                </div>
              <!--   <div class="col-md-6">
                  <div class="my-dropdown">
                    <input class="full-width" type="search" value="" placeholder="Refine with keywords">
                  </div>
                </div> -->
              </div>
              <div class="clear"></div>
              <div class="col-md-6" style="margin-left:26%;">
                <div class="form-element">
                  <input type="submit" value="Find My New Vehicle" class="find_new_vehicle pull-right md-button">
                </div>
              </div>
            </form>
          </div>
    </div>
    
   	
        <div class="tableBox">
        	<h5>What are our Hours of Operation?</h5>
        	<table class="table table-bordered no-border font-13px">
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

	.setImgs{
		background-size: cover;
		background-repeat: no-repeat;
		height: 200px;
		width: 50%;
	}

	@media (max-width: 450px) {
    .setheight {
        height: 160px;
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