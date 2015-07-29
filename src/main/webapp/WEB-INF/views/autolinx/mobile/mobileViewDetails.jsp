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

<body>
<div class="wrapperIn">
<header>
	<div class="toolbar">
		<ul>
           <li><a href="#">Directions</a></li>
            <li><a href="#"><i class="fa fa-phone"> </i> (707) 552-5469</a></li>
            
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
                	<h2>${vehicle.make}-detail</h2>
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
	                	                
	                	                	<li class="trade gradient_button"><a data-toggle="modal" data-target="#tradeInApp">Trade-In Appraisal</a></li>
	                	                
	                	                	<li class="pdf gradient_button"><a class="generate_pdf" onclick = "window.open('http://www.carfax.com/VehicleHistory/p/Report.cfx?vin=${vehicle.vin}&amp;partner=AAG_0')">Carfax Report</a></li>
	                	                	
	                	                	<li class="schedule gradient_button"><a data-toggle="modal" data-target="#otherInfo">Email To Friend</a></li>
	                	                	
	                	                	<li class="next1 gradient_button"><a href="${pageContext.request.contextPath}/mobile/viewDetails/${vehicle.nextVehicle}">Next Vehicle</a></li>
	                	                
	            </ul> 
	        </div>
          <div class="clearClass"></div>
          
        <div class="playerBox">
            <ul>
            	<li>
                	<div class="sc_player_container1"><a href="${vehicle.mobileUrl}"><img alt="" src="${pageContext.request.contextPath}/resources/autolinx/images/sit-inside-button.png"></a></div>
                </li>
                <li>
                                	<div class="sc_player_container1"><div class="sc_player_container1">
                                    <a onclick='playpause_audio();' href="javascript:void(0);">
                                    <img alt="" src="${pageContext.request.contextPath}/resources/autolinx/images/engine-sound-idle.png" id="start_engine"><img alt="" src="${pageContext.request.contextPath}/resources/autolinx/images/engine-sound-pressed.png" id="stop_engine" style="display:none;"></a></div></div>
</div>
                                </li>
				 <audio controls preload="none" class='audioDemo' style='display:none;'>
					<source src="/glivrImg/images${vehicle.audioUrl}" type="audio/mpeg">
					<source src="/glivrImg/images${vehicle.audioUrl}" type="audio/ogg">
				</audio>
				
                
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
          <li><a href="index.html">Home</a></li>
          <li><a href="inventory.html">Inventory</a></li>
          <li><a href="#"> Warranty</a></li>
          <li><a href="about-us.html"> About Us</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Contact</a></li>
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
     <form name="fome1" action="${pageContext.request.contextPath}/requestMore" method="post">
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Request More Info</h4>
        </div>
        <input type="text" name="vin" value="${vehicle.vin}" style="display: none;">
        <div class="modal-body">
           <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" style="width: 220px !important;" required>
        	 </div>
        	</div>
        	 <div class="row"> 
        	  <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Preferred Contact:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="radio" name="preferred" value="email">Email
				<input type="radio" name="preferred" value="phone" style="margin-left: 37px;">Phone
        	 </div> 
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" style="width: 220px !important;">
        	 </div>
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Phone:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="phone" pattern="\d*" title="Please enter numbers" style="width: 220px !important;">
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
     <form method="post"  action="${pageContext.request.contextPath}/scheduleTest">
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Request More Info</h4>
        </div>
           <input type="text" name="vin" value="${vehicle.vin}" style="display: none;">
        <div class="modal-body">
           <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" class="customBorder" style="width: 220px !important;" required>
        	 </div>
        	</div>
        	 <div class="row"> 
        	  <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Preferred Contact:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="radio" name="preferred" value="email">Email
				<input type="radio" name="preferred" value="phone" pattern="\d*" title="Please enter numbers" style="margin-left: 37px;">Phone
        	 </div> 
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" style="width: 220px !important;">
        	 </div>
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Phone:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="phone" style="width: 220px !important;">
        	 </div>
        	 </div>
        	 <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Best Day:</label>
        	 </div>
        	 <div class="col-md-6">
<!--         	 	<input type="text" name="bestDay" style="width: 220px !important;"> -->
        	 	<input name="bestDay"
										class="input-filter form-control meal-font-text-size"
										data-provide="datepicker" data-date-autoclose="true" data-date-format="dd-mm-yyyy" style="width: 220px !important;" required>
        	 	
        	 </div>
        	 </div>
        	 <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Best Time:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="bestTime" style="width: 220px !important;">
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


<div class="modal fade" id="tradeInApp" role="dialog">
    <div class="modal-dialog" style="width: 961px">
     <form method="post"  action="${pageContext.request.contextPath}/tradeInApp">
      <div class="modal-content" style="width: 996px;height: 620px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Trade-In</h4>
        </div>
           <input type="text" name="vin" value="${vehicle.vin}" style="display: none;">
        <div class="modal-body">
          	<div class="fancybox-outer"><div class="fancybox-inner" style="overflow: auto; width: 970px; height: 430px;"><div id="trade_fancybox_form" class="" style="">

		            <table class="left_table">
		                <tbody><tr>
		                    <td colspan="2"><h4>Contact Information</h4></td>
		                </tr>
		                <tr>
		                    <td>First Name<br><input type="text" name="first_name"></td>
		                    <td>Last Name<br><input type="text" name="last_name"></td>
		                </tr>
		                <tr>
		                    <td>Work Phone<br><input type="text" name="work_phone"></td>
		                    <td>Phone<br><input type="text" pattern="\d*" title="Please enter numbers" name="phone"></td>
		                </tr>
		                <tr>
		                    <td>Email<br><input type="email" name="email"></td>
		                    <td>Preferred Contact<br>  
		                    	<input type="radio" name="preferred" value="email" id="email" style="width: 14%;"> Email  
		                    	<input type="radio" name="preferred" value="phone" id="phone" style="width: 14%;"> Phone </td>
		                </tr>
		                <tr>
		                    <td colspan="2">Comments<br><textarea name="comments" style="width: 89%;" rows="5"></textarea></td>
		                </tr>
		            </tbody></table>
		            
		            <table class="right_table">
		                <tbody><tr>
		                    <td colspan="2"><h4>Options</h4></td>
		                </tr>

		                		                <tr>
		                	<td><select name="options" multiple style="height: 200px;"> 
			                	<option value="Adaptive Cruise Control">Adaptive Cruise Control</option>
			                	<option value="Airbags">Airbags</option>
			                	<option value="Air Conditioning">Air Conditioning</option>
			                	<option value="Alarm System">Alarm System</option>
			                	<option value="Anti-theft Protection">Anti-theft Protection</option>
			                	<option value="Audio Interface">Audio Interface</option>
			                	<option value="Automatic Climate Control">Automatic Climate Control</option>
			                	<option value="Automatic Headlights">Automatic Headlights</option>
			                	<option value="Auto Start/Stop">Auto Start/Stop</option>
			                	<option value="Bi-Xenon Headlights">Bi-Xenon Headlights</option>
			                	<option value="Bluetooth Handset">Bluetooth Handset</option>
			                	<option value="BOSE Surround Sound">BOSE Surround Sound</option>
			                	<option value="Burmester Surround Sound">Burmester Surround Sound</option>
			                	<option value="CD/DVD Autochanger">CD/DVD Autochanger</option>
			                	<option value="CDR Audio">CDR Audio</option>
			                	<option value="Cruise Control">Cruise Control</option>
			                	<option value="Direct Fuel Injection">Direct Fuel Injection</option>
			                	<option value="Electric Parking Brake">Electric Parking Brake</option>
			                	<option value="Floor Mats">Floor Mats</option>
			                	<option value="Garage Door Opener">Garage Door Opener</option>
			                	<option value="Leather Package">Leather Package</option>
			                	<option value="Locking Rear Differential">Locking Rear Differential</option>
			                	<option value="Luggage Compartments">Luggage Compartments</option>
			                	<option value="Manual Transmission">Manual Transmission</option>
			                	<option value="Navigation Module">Navigation Module</option>
			                	<option value="Online Services">Online Services</option>
			                	<option value="ParkAssist">ParkAssist</option>
			                	<option value="Porsche Communication">Porsche Communication</option>
			                	<option value="Power Steering">Power Steering</option>
			                	<option value="Reversing Camera">Reversing Camera</option>
			                	<option value="Roll-over Protection">Roll-over Protection</option>
			                	<option value="Seat Heating">Seat Heating</option>
			                	<option value="Seat Ventilation">Seat Ventilation</option>
			                	<option value="Sound Package Plus">Sound Package Plus</option>
			                	<option value="Sport Chrono Package">Sport Chrono Package</option>
			                	<option value="Steering Wheel Heating">Steering Wheel Heating</option>
			                	<option value="Tire Pressure Monitoring">Tire Pressure Monitoring</option>
			                	<option value="Universal Audio Interface">Universal Audio Interface</option>
			                	<option value="Voice Control System">Voice Control System</option>
			                	<option value="Wind Deflector">Wind Deflector</option>		
			             	</select></td>

		        		</tr>
		            </tbody></table>
		            
		            <div style="clear:both;"></div>
		            
		            <table class="left_table">    
		                <tbody><tr><td colspan="2"><h4>Vehicle Information</h4></td></tr>
		                
		                <tr>
		                    <td>Year<br><input type="text" name="year"></td>
		                    <td>Make<br><input type="text" name="make"></td>
		                </tr>
		                <tr>
		                    <td>Model<br><input type="text" name="model"></td>
		                    <td>Exterior Colour<br><input type="text" name="exterior_colour"></td>
		                </tr>
		                <tr>
		                    <td>VIN<br><input type="text" name="vin"></td>
		                    <td>Kilometres<br><input type="text" name="kilometres"></td>
		                </tr>
		                <tr>
		                    <td>Engine<br><input type="text" name="engine"></td>
		                    <td>Doors<br>
		                    	<select name="doors" class="css-dropdowns" style="display: none;">
		                    		<option value="2">2</option>
		                    		<option value="3">3</option>
		                    		<option value="4">4</option>
		                    		<option value="5">5</option>
		                    	</select></td>
		                </tr>
		                <tr>
		                    <td>Transmission<br>
		                    	<select name="transmission" class="css-dropdowns" style="display: none;">
		                    		<option value="Automatic">Automatic</option>
		                    		<option value="Manual">Manual</option>
		                    	</select></td>
		                    <td>Drivetrain<br>
		                    	<select name="drivetrain" class="css-dropdowns" style="display: none;">
		                    		<option value="2WD">2WD</option>
		                    		<option value="4WD">4WD</option>
		                    		<option value="AWD">AWD</option>
		                    	</select></td>
		                </tr>
		            
		            </tbody></table>
		               
		            <table class="right_table">
		                <tbody><tr><td colspan="2"><h4>Vehicle Rating</h4></td></tr>
		                
		                <tr>
		                    <td>Body (dents, dings, rust, rot, damage)<br>
		                    	<select name="body_rating" class="css-dropdowns" style="display: none;">
		                    			<option value="10">10 - best</option>
		                    			<option value="9">9</option>
		                    			<option value="8">8</option>
		                    			<option value="7">7</option>
		                    			<option value="6">6</option>
		                    			<option value="5">5</option>
		                    			<option value="4">4</option>
		                    			<option value="3">3</option>
		                    			<option value="2">2</option>
		                    			<option value="1">1 - worst</option>
		                    	</select></td>
		                    <td>Tires ( tread  wear , mismatched )  <br>
		                    		<select name="tire_rating" class="css-dropdowns" style="display: none;">
		                    				<option value="10">10 - best</option>
		                    				<option value="9">9</option>
		                    				<option value="8">8</option>
		                    				<option value="7">7</option>
		                    				<option value="6">6</option>
		                    				<option value="5">5</option>
		                    				<option value="4">4</option>
		                    				<option value="3">3</option>
		                    				<option value="2">2</option>
		                    				<option value="1">1 - worst</option>
		                    		</select></td>
		                </tr>
		                <tr>
		                    <td>Engine (running condition, burns oil, knocking)<br>
		                    		<select name="engine_rating" class="css-dropdowns" style="display: none;">
		                    			<option value="10">10 - best</option>
		                    			<option value="9">9</option>
		                    			<option value="8">8</option>
		                    			<option value="7">7</option>
		                    			<option value="6">6</option>
		                    			<option value="5">5</option>
		                    			<option value="4">4</option>
		                    			<option value="3">3</option>
		                    			<option value="2">2</option>
		                    			<option value="1">1 - worst</option>
		                    			</select></td>
		                    <td>Transmission / Clutch (slipping, hard shift, grinds)<br>
		                    	   <select name="transmission_rating" class="css-dropdowns" style="display: none;">
		                    	   		<option value="10">10 - best</option>
		                    	   		<option value="9">9</option>
		                    	   		<option value="8">8</option>
		                    	   		<option value="7">7</option>
		                    	   		<option value="6">6</option>
		                    	   		<option value="5">5</option>
		                    	   		<option value="4">4</option>
		                    	   		<option value="3">3</option>
		                    	   		<option value="2">2</option>
		                    	   		<option value="1">1 - worst</option>
		                    	   	</select></td>
		                </tr>
		                <tr>
		                    <td>Glass (chips, scratches, cracks, pitted)<br>
		                    	<select name="glass_rating" class="css-dropdowns" style="display: none;">
		                    			<option value="10">10 - best</option>
		                    			<option value="9">9</option>
		                    			<option value="8">8</option>
		                    			<option value="7">7</option>
		                    			<option value="6">6</option>
		                    			<option value="5">5</option>
		                    			<option value="4">4</option>
		                    			<option value="3">3</option>
		                    			<option value="2">2</option>
		                    			<option value="1">1 - worst</option>
		                    	</select></td>
		                    <td>Interior (rips, tears, burns, faded/worn, stains)<br>
		                    	<select name="interior_rating" class="css-dropdowns" style="display: none;">
		                    		<option value="10">10 - best</option>
		                    		<option value="9">9</option>
		                    		<option value="8">8</option>
		                    		<option value="7">7</option>
		                    		<option value="6">6</option>
		                    		<option value="5">5</option>
		                    		<option value="4">4</option>
		                    		<option value="3">3</option>
		                    		<option value="2">2</option>
		                    		<option value="1">1 - worst</option>
		                    	</select></td>
		                </tr>
		                <tr>
		                    <td colspan="2">Exhaust (rusted, leaking, noisy)<br>
		                    	<select name="exhaust_rating" class="css-dropdowns" style="display: none;">
		                    		<option value="10">10 - best</option>
		                    		<option value="9">9</option>
		                    		<option value="8">8</option>
		                    		<option value="7">7</option>
		                    		<option value="6">6</option>
		                    		<option value="5">5</option>
		                    		<option value="4">4</option>
		                    		<option value="3">3</option>
		                    		<option value="2">2</option>
		                    		<option value="1">1 - worst</option>
		                    	</select></td>
		                </tr>
		            </tbody></table>
		            
		            <div style="clear:both;"></div>
		            
		            <table class="left_table">
		                <tbody><tr><td><h4>Vehicle History</h4></td></tr>
		                
		                <tr>
		                    <td>Was it ever a lease or rental return? <br>
		                    	<select name="rental_return" class="css-dropdowns" style="display: none;">
		                    		<option value="Yes">Yes</option>
		                    		<option value="No">No</option>
		                    	</select></td>
		                </tr>
		                <tr>
		                    <td>Is the odometer operational and accurate? <br>
		                    	<select name="odometer_accurate" class="css-dropdowns"  style="display: none;">
		                    		<option value="Yes">Yes</option>
		                    		<option value="No">No</option>
		                    	</select></td>
		                </tr>
		                <tr>
		                    <td>Detailed service records available? <br>
		                    	<select name="service_records" class="css-dropdowns" style="display: none;">
		                    		<option value="Yes">Yes</option>
		                    		<option value="No">No</option>
		                    	</select></td>
		                </tr>
		            </tbody></table>
		            
		            <table class="right_table">
		                <tbody><tr>
		                    <td><h4>Title History</h4></td>
		                </tr>
		                
		                <tr>
		                    <td>Is there a lienholder? <br><input type="text" name="lienholder"></td>
		                </tr>
		                <tr>
		                    <td>Who holds this title? <br><input type="text" name="titleholder"></td>
		                </tr>
		            </tbody></table>
		            
		            <div style="clear:both;"></div>
		                   
		            <table style="width: 100%;">
		                <tbody><tr><td colspan="2"><h4>Vehicle Assessment</h4></td></tr>
		                
		                <tr>
		                    <td>Does all equipment and accessories work correctly?<br><textarea name="equipment" rows="5" style="width: 89%;"></textarea></td>
		                    <td>Did you buy the vehicle new?<br><textarea name="vehiclenew" rows="5" style="width: 89%;"></textarea></td>
		                </tr>
		                <tr>
		                    <td>Has the vehicle ever been in any accidents? Cost of repairs?<br><textarea name="accidents" rows="5" style="width: 89%;"></textarea></td>
		                    <td>Is there existing damage on the vehicle? Where?<br><textarea name="damage" rows="5" style="width: 89%;"></textarea></td>
		                </tr>
		                <tr>
		                    <td>Has the vehicle ever had paint work performed?<br><textarea name="paint" rows="5" style="width: 89%;"></textarea></td>
		                    <td>Is the title designated 'Salvage' or 'Reconstructed'? Any other?<br><textarea name="salvage" rows="5" style="width: 89%;"></textarea></td>
		                </tr>
<!-- 		                		                <tr><td colspan="2"><input type="submit" value="Submit"> <i class="fa fa-refresh fa-spin loading_icon_form"></i></td></tr> -->
		            </tbody></table>
		                
					</div></div></div>
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
     <form method="post"  action="${pageContext.request.contextPath}/otherInfo">
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">More Info</h4>
        </div>
           <input type="text" name="vin" value="${vehicle.vin}" style="display: none;">
        <div class="modal-body">
           <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" class="customBorder" style="width: 220px !important;" required>
        	 </div>
        	</div>
        	
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" style="width: 220px !important;">
        	 </div>
        	 </div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Friend Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="fname" style="width: 220px !important;">
        	 </div>
        	 </div>
        	 <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Friend Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="femail" style="width: 220px !important;">
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
  		  		
    </style>