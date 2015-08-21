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
<link rel="shortcut icon" href="/glivrImg/images${siteLogo.faviconPath}">
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
<link href="${pageContext.request.contextPath}/resources/autolinx/css/datepicker.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/wow.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key&amp;sensor=false"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/bootstrap-datepicker.js"></script>
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
<!-- Twitter Feed Scripts 
     Uncomment to activate

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/jquery.tweet.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/twitter_feed.js"></script> -->


<script type="text/javascript">

  function playpause_audio(){
	
	var  audio = $(".audioDemo");
	 if (audio[0].paused == false) {
        audio.trigger('pause');
		$('#start_engine').show();
		$('#stop_engine').hide();
    } else {
        audio.trigger('play');
		$('#start_engine').hide();
		$('#stop_engine').show();
    }
  }
 
</script>

</head>

<body ng-controller="MobileVehicleDetailsController">
<input type="hidden" id="contextpath" value="${pageContext.request.contextPath}">
<div class="wrapperIn">
<header>
	<div class="toolbar">
		<ul>
           <li><a href="https://www.google.com/maps/dir//AutoLinx+-+Luxury+Pre-Owned,+3300+Sonoma+Blvd,+Vallejo,+CA+94590,+United+States/@38.1202427,-122.2546659,15z/data=!4m12!1m3!3m2!1s0x0:0xce9d2ad188e1093!2sAutoLinx+-+Luxury+Pre-Owned!4m7!1m0!1m5!1m1!1s0x80857351d3b20b31:0xce9d2ad188e1093!2m2!1d-122.2546659!2d38.1202427">Directions</a></li>
            <li><a href="tel:+1${myprofile.phone }"><i class="fa fa-phone">&nbsp; </i>${myphone } </a></li>
            
          </ul>
	</div>
    <div class="logo">
    	<a href="${pageContext.request.contextPath}/mobile/home"><img src="/glivrImg/images${siteLogo.logoPath}" alt="" style="height:100px;"></a>
    </div>
</header>
    <div class="topBanner">
    	<img src="${pageContext.request.contextPath}/resources/autolinx/images/dynamic-header-2.jpg" alt="">
        <h1 class="topBannerText">Vehicle Profile<br>
        	<span>See all the vehicle's details with 360º view, engine sound and history report</span>
        </h1>
    </div>
    
    <div class="mainBox">
    	<div class="clearClass"></div>
    	<div class="headingRow">
        	<ul>
            	<li>
                	<h2>${vehicle.year} ${vehicle.make} ${vehicle.model} ${vehicle.trim}</h2>
                </li>
                <li>
                	<h2>${vehicle.price}</h2>
                    <em>Plus Taxes &amp; Licensing</em>
                </li>
            </ul>
        </div>      
        <div class="clearClass"></div>  
		        
        <div class="clearClass"></div>
        
        <!--OPEN OF SLIDER-->
        <div class="listing-slider">
                        <section class="slider home-banner">
                            <div class="flexslider" id="home-slider-canvas">
                                <ul class="slides">
                                   
                                    <c:forEach var="row" items="${vehicle.images}">
                                	<c:choose>
										<c:when test="${row.isDefault == true}">
											<li data-thumb="/glivrImg/images${row.path}"> 
                                    		<img data-full-image="/glivrImg/images${row.path}" alt="" src="/glivrImg/images${row.path}" draggable="false">
                                     		</li>
										</c:when>
										<c:otherwise>
										
										</c:otherwise>
									</c:choose>
                                 </c:forEach>
                                    
                                    <c:forEach var="row" items="${vehicle.images}">
                                    <li data-thumb="/glivrImg/images${row.path}"> <img data-full-image="/glivrImg/images${row.path}" alt="" src="/glivrImg/images${row.path}" draggable="false"> </li>
                                     </c:forEach> 
                                    
                                    
                                </ul>
                            </div>
                        </section>
                        <section class="home-slider-thumbs">
                            <div class="flexslider" id="home-slider-thumbs">
                                <ul class="slides">
                                    <c:forEach var="row" items="${vehicle.images}">
                                    <li data-thumb="/glivrImg/images/${row.thumbPath}"> <a href="#"><img alt="" src="/glivrImg/images/${row.path}" draggable="false"></a> </li>
                                 </c:forEach>   
                                    
                                </ul>
                            </div>
                        </section>
                    </div>
        <!--CLOSE OF SLIDER--> 
        
        <div class="content-nav margin-bottom-30">
                   

	            <ul class="mainBoxIn1">
	            	
	                                
	                	<li class="prev1 gradient_button"><a href="${pageContext.request.contextPath}/mobile/viewDetails/${vehicle.prevVehicle}">Prev Vehicle</a></li>
	                	                
	                	                	<li class="request gradient_button"><a  data-toggle="modal" data-target="#myModal" >Request More Info</a></li>
	                	                
	                	                	<li class="schedule gradient_button"><a  data-toggle="modal" data-target="#scheduleTest">Schedule Test Drive</a></li>
	                	                
	                	                	<li class="pdf gradient_button"><a class="generate_pdf" onclick = "window.open('http://www.carfax.com/VehicleHistory/p/Report.cfx?vin=${vehicle.vin}&amp;partner=AAG_0')">Carfax Report</a></li>
	                	                	
	                	                	<li class="schedule gradient_button"><a data-toggle="modal" data-target="#otherInfo">Email To Friend</a></li>
	                	                	
	                	                	<li class="next1 gradient_button"><a href="${pageContext.request.contextPath}/mobile/viewDetails/${vehicle.nextVehicle}">Next Vehicle</a></li>
	                	                
	            </ul> 
	        </div>
          <div class="clearClass"></div>
          
        <div class="playerBox">
            <ul>
            	<c:choose>
				    <c:when test="${vehicle.mobileUrl==''}">
				        
				    </c:when>    
				    <c:otherwise>
				       <li>
                		<div class="sc_player_container1"><a href="${vehicle.mobileUrl}"><img alt="" src="${pageContext.request.contextPath}/resources/autolinx/images/sit-inside-button.png" ></a></div>
                	</li>
				    </c:otherwise>
				</c:choose>
            	
                <c:choose>
				    <c:when test="${vehicle.audioUrl==''}">
				        
				    </c:when>    
				    <c:otherwise>
				        <li>
                                	<div class="sc_player_container1"><div class="sc_player_container1">
                                    <a onclick='playpause_audio();' href="javascript:void(0);">
                                    <img alt="" src="${pageContext.request.contextPath}/resources/autolinx/images/engine-sound-idle.png" id="start_engine" style="align-content: center;"><img alt="" src="${pageContext.request.contextPath}/resources/autolinx/images/engine-sound-pressed.png" id="stop_engine" style="display:none;"></a></div></div>
                                    
                                </li>
						 <audio controls preload="none" class='audioDemo' style='display:none;'>
							<source src="/glivrImg/images${vehicle.audioUrl}" type="audio/mpeg">
							<source src="/glivrImg/images${vehicle.audioUrl}" type="audio/ogg">
						</audio>
				    </c:otherwise>
				</c:choose>
                
            </ul>
        </div>
        
        <div class="car-info">
        <div class="table-responsive">
            <table class="table">
                <tbody>
                    <tr>
                    	<td>Year: </td><td>	${vehicle.year}</td>
                    </tr>
                    <tr>
                    	<td>Make: </td><td>	${vehicle.make}</td>
                    </tr>
                    <tr>
                    	<td>Model: </td><td>${vehicle.model}</td>
                    </tr>
                    <tr>
                    	<td>Body Style: </td><td>${vehicle.bodyStyle}</td>
                    </tr>
                    <tr>
                    	<td>Mileage: </td><td>${vehicle.mileage}</td>
                    </tr>
                    <tr>
                    	<td>Transmission: </td><td>${vehicle.transmission}</td>
                    </tr>
                    <tr>
                    	<td>Condition: </td><td>${vehicle.bodyStyle}</td>
                    </tr>
                     <tr>
                    	<td>Location: </td><td>${vehicle.location}</td>
                    </tr>
                    <tr>
                    	<td>Price: </td><td>${vehicle.price}</td>
                    </tr>
                    <tr>
                    	<td>Drivetrain: </td><td>${vehicle.drivetrain}</td>
                    </tr>
                    <tr>
                    	<td>Engine: </td><td>${vehicle.engine}</td>
                    </tr>
                    <tr>
                    	<td>Exterior Color: </td><td>${vehicle.extColor}</td>
                    </tr>
                    <tr>
                    	<td>Interior Color: </td><td>${vehicle.intColor}</td>
                    </tr>
                    <tr>
                    	<td>MPG: </td><td> ${vehicle.cityMileage} City / ${vehicle.highwayMileage} Highway</td>
                   	</tr>
                    <tr>
                    	<td>VIN Number: </td><td>${vehicle.vin}</td>
                    </tr>	                                
                   </tbody>
            </table>
        </div>
		</div>
        
        <div class="efficiency-rating">
            <h3>Fuel Efficiency Rating</h3>
            <ul>
               	<li class="city_mpg"><small>City:</small> <strong>${vehicle.cityMileage}</strong></li>
                <li class="fuel"><img class="aligncenter" alt="" src=""></li>
                <li class="hwy_mpg"><small>Highway:</small> <strong>${vehicle.highwayMileage}</strong></li>
            </ul>
            <p>Actual rating will vary with options, driving conditions, driving habits and vehicle condition.</p>
        </div>
        
        
        <div class="message-wrap">
        	<h2>Make your dreame car a <strong style="color:#ff0000;">REALITY</strong> </h2>
            <div class="buttonInner">
            	<a href="#">Schedule a Test Drive</a>
            </div>
        </div>
        
        <div class="clearClass"></div>
        
    </div>

<footer class="footer1">
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
          <li><a href="${pageContext.request.contextPath}/mobile/contactUs"> Contact Us</a></li>
        </ul>
</div>
 <div class="back_to_top" style="display: block;"> <img alt="scroll up" src="http://demo.themesuite.com/automotive/images/arrow-up.png"> 

  </div>      
</div>

<!-- Bootstrap core JavaScript --> <script src="${pageContext.request.contextPath}/resources/autolinx/js/retina.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/main.js"></script> 
<script type="text/javascript" src="https://www.google.com/recaptcha/api.js?ver=4.1"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.fancybox.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/modernizr.custom.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/social-likes.min.js"></script><script defer src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.flexslider.js"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.bxslider.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.selectbox-0.2.js" type="text/javascript"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.mousewheel.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.easing.js"></script>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
     <form name="fome1" ng-submit="requestMore('${vehicle.vin}')"  method="post"> <%--  action="${pageContext.request.contextPath}/requestMore" --%>
      <div class="modal-content" style="width: 100%;margin-left: 0px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Request More Info</h4>
        </div>
      
        <div class="modal-body">
           <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	  <%--  <input type="text" name="vin" ng-model="request.vin" value="${vehicle.vin}" style="display: none;"> --%>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" ng-model="request.name" style="width: 220px !important;" required>
        	 </div>
        	</div>
        	 <div class="row"> 
        	  <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Preferred Contact:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="radio" name="preferred" ng-model="request.preferred" value="email">Email
				<input type="radio" name="preferred" ng-model="request.preferred" value="phone" style="margin-left: 37px;">Phone
        	 </div> 
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" ng-model="request.email" style="width: 220px !important;">
        	 </div>
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Phone:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="phone" pattern="\d*" ng-model="request.phone" title="Please enter numbers" style="width: 220px !important;">
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
  
   
   
<div class="modal fade" id="scheduleTest" role="dialog">
    <div class="modal-dialog">
     <form method="post" ng-submit="scheduleTest('${vehicle.vin}')" >  <%--  action="${pageContext.request.contextPath}/scheduleTest" --%>
      <div class="modal-content" style="width: 100%;margin-left: 0px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Schedule Test Drive</h4>
        </div>
          <%--  <input type="text" name="vin" value="${vehicle.vin}" style="display: none;"> --%>
        <div class="modal-body">
           <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" ng-model="schedule.name"  class="customBorder" style="width: 220px !important;" required>
        	 </div>
        	</div>
        	 <div class="row"> 
        	  <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Preferred Contact:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="radio" name="preferred" ng-model="schedule.preferred" value="email">Email
				<input type="radio" name="preferred" ng-model="schedule.preferred" value="phone" pattern="\d*" title="Please enter numbers" style="margin-left: 37px;">Phone
        	 </div> 
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" ng-model="schedule.email" style="width: 220px !important;">
        	 </div>
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Phone:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="phone" ng-model="schedule.phone" style="width: 220px !important;">
        	 </div>
        	 </div>
        	 <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Best Day:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input name="bestDay"
										class="input-filter form-control meal-font-text-size"
										data-provide="datepicker" ng-model="schedule.bestDay" data-date-autoclose="true" data-date-format="dd-mm-yyyy" style="width: 220px !important;" required>
        	 	
        	 </div>
        	 </div>
        	 <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Best Time:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="bestTime" ng-model="schedule.bestTime" style="width: 220px !important;">
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


  <div class="modal fade" id="otherInfo" role="dialog">
    <div class="modal-dialog">
     <form method="post" ng-submit="otherInfo('${vehicle.vin}')">    <%-- action="${pageContext.request.contextPath}/otherInfo" --%>
      <div class="modal-content" style="width: 100%;margin-left: 0px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Email To Friend</h4>
        </div>
          <%--  <input type="text" name="vin" value="${vehicle.vin}" style="display: none;"> --%>
        <div class="modal-body">
           <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" ng-model="friend.name" class="customBorder" style="width: 220px !important;" required>
        	 </div>
        	</div>
        	
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" ng-model="friend.email" style="width: 220px !important;">
        	 </div>
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Friend Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="fname" ng-model="friend.fname" style="width: 220px !important;" required>
        	 </div>
        	 </div>
        	 <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Friend Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="femail" ng-model="friend.femail" style="width: 220px !important;" required>
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

</body>
</html>



<style>
      #map-canvas {
        width: 765px;
        height: 284px;
      }
      input[type="radio"], input[type="checkbox"] {
 		 position: inherit;
 		 left: 0;
		}
		 input[type="text"], textarea, textarea[name="msg"], select, div.custom-select, input[type="file"], input[type="email"]{
  			  border: 1px solid rgb(200, 195, 195) !important;
  		} 	
  		
  		.sbHolder{
  			width: 80% !important;
  		}
  		  		
		.playerBox ul li img {
   			 width: auto !important;
		}
  		  		
    </style>