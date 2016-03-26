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
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yellowtail%7COpen%20Sans%3A400%2C300%2C600%2C700%2C800" media="screen" />
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/autolinx/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/css/jquery.bxslider.css" type="text/css" media="screen" />
<link href="${pageContext.request.contextPath}/resources/autolinx/css/jquery.fancybox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/jquery.selectbox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/mobile.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/autolinx/css/social-likes.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/autolinx/css/settings.css" media="screen" />
<link href="${pageContext.request.contextPath}/resources/autolinx/css/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/print.css" rel="stylesheet" type="text/css" media="print">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/ts.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/autolinx/css/datepicker.css" rel="stylesheet">


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/wow.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/social-likes.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/angular.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/ng-infinite-scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/scripts/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/scripts/controller.js"></script>
 <script src="http://www.google.com/recaptcha/api.js?render=explicit&onload=vcRecaptchaApiLoaded" async defer></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/css/pnotify_css/pnotify.buttons.css"> 
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/autolinx/css/pnotify_css/pnotify.core.css"> 

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/angular-recaptcha.js"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.core.js" type="text/javascript"></script>	
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.buttons.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/pnotify.confirm.js" type="text/javascript"></script> 
<script src="${pageContext.request.contextPath}/resources/autolinx/js/pnotify/angular-pnotify.js" type="text/javascript"></script>

<!-- Twitter Feed Scripts 
     Uncomment to activate

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/jquery.tweet.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/autolinx/js/twitter/twitter_feed.js"></script> -->

<script type="text/javascript">

var url= window.location.href;


var res = url.split("?");

console.log(res[1]);
	if(res[1] == "frdEmail"){
		$("#frdEmailSee").click();
	}
	if(res[1] == "shedule"){
		$("#sheduleSee").click();
	}
	if(res[1] == "request"){
		$("#requestSee").click();
	}
	
	if(res[1] == "trade"){
		$("#tradeSee").click();
	}


$("#ab").click(function() {
    console.log("kjjjjjjjjjjjjj");
});
	
  function playpause_audio(){
	  
	
	var  audio = $(".audioDemo");
	 if (audio[0].paused == false) {
        audio.trigger('pause');
		$('#start_engine').show();
		$('#stop_engine').hide();
    } else {
    	$("#enginesound").click();
        audio.trigger('play');
		$('#start_engine').hide();
		$('#stop_engine').show();
    }
  }
  
  function initialize() {
      var mapCanvas = document.getElementById('map-canvas');
      var mapOptions = {
        center: new google.maps.LatLng(44.5403, -78.5463),
        zoom: 12,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      }
      var map = new google.maps.Map(mapCanvas, mapOptions)
      
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
				var url = window.location.href;
				var arr = url.split('/');
				console.log(arr[arr.length-1]);
				window.location.href="http://glider-autos.com/glivr/mobile/viewDetails/"+arr[arr.length-1];
				return false;
		}
	
}); 
				
</script>

</head>

<body ng-controller="VehicleDetailsController" ng-init="initFun('${vehicle.typeofVehicle}')">
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
            <li class="address"><a href="http://maps.google.com/?q=${myprofile.address }" target="_blank"><i class="fa fa-map-marker"></i>${myprofile.fullAddress} </a></li>
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
            <a class="logo" href="${pageContext.request.contextPath}"><img src="/glivrImg/images${siteLogo.logoPath}" style="height:100px;"></a> </div>
          
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav pull-right" style="margin-top: 14px;">
              <li><a href="${pageContext.request.contextPath}">Home</a></li>
              <li class="active"><a href="${pageContext.request.contextPath}/findVehicles">Inventory</a></li>
              <li><a href="${pageContext.request.contextPath}/warranty">Warranty</a></li>
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
<section id="secondary-banner" class="dynamic-image-8"><!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                <h2>Vehicle Profile</h2>
                <h4>See all the vehicle's details with 360º view, engine sound and history report</h4>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 ">
                <ul class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}">Home</a></li>
                    <li>${vehicle.year} ${vehicle.make} ${vehicle.model}</li>
                </ul>
            </div>
        </div>
    </div>
</section>
<!--secondary-banner ends-->
<input type="hidden" id="vehicleLocation" value="${vehicle.location}">
<section class="message-wrap">
  <div class="container">
    <div class="row">
     <!--  <h2 class="col-lg-9 col-md-8 col-sm-12 col-xs-12 xs-padding-left-15">Make your dream car a <span style="color:#ff0000;">REALITY</span></h2> -->
      <h2 class="col-lg-9 col-md-8 col-sm-12 col-xs-12 xs-padding-left-15"><strong style="color:#ff0000;">SET</strong> YOUR OWN PRICE ALERT! </h2>
      <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12 "> 
      	<a class="default-btn pull-right action_button lg-button mainBoxIn1" style="cursor:pointer;" data-toggle="modal" data-target="#priceAlertModal">Follow this car</a>
	  		<div class="boxIn">
            	<ul>
                	<li>
                    	<img src="${pageContext.request.contextPath}/resources/autolinx/images/image-m-1.jpg" alt="">
                        <a href="#"><span>Inventory</span></a>
                    </li>
                    <li>
                    	<img src="${pageContext.request.contextPath}/resources/autolinx/images/image-m-2.jpg" alt="">
                        <a href="#"><span>New Arrivals</span></a>
                    </li>
                     <li>
                    	<img src="${pageContext.request.contextPath}/resources/autolinx/images/image-m-3.jpg" alt="">
                        <a href="#"><span>Directions</span></a>
                    </li>
                     <li>
                    	<img src="${pageContext.request.contextPath}/resources/autolinx/images/image-m-4.jpg" alt="">
                        <a href="#"><span>About Us</span></a>
                    </li>
                </ul>
            </div>	  
	  </div>
    </div>
  </div>
  <div class="message-shadow"></div>
</section>



<div class="clearfix"></div>
<section class="content">
    <div class="container">
        <div class="inner-page inventory-listing">
            <div class="inventory-heading margin-bottom-10 clearfix">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
                        <h2>${vehicle.year} ${vehicle.make} ${vehicle.model} ${vehicle.trim}</h2>
                        
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 text-right">
                        <h2>${vehicle.price}</h2>
                        <em>Plus Taxes & Licensing</em> </div>
                </div>
            </div>
            <c:choose>
				    <c:when test="${vehicle.videoUrl==''}">
				       
				    </c:when>    
				    <c:otherwise>
				        <div style="text-align:right;">    Experience the tour in full screen by clicking the button in the top right. <img src="${pageContext.request.contextPath}/resources/autolinx/images/arrowpoint.png"> </div>
				        
				    </c:otherwise>
				</c:choose>
            

            <div class="content-nav margin-bottom-30">
                   <p>
                   <c:choose>
				    <c:when test="${vehicle.videoUrl==''}">
				       
				    </c:when>    
				    <c:otherwise>
				        <p>
                   		<iframe id="ab" width="1400" height="500" frameborder="0" allowfullscreen="allowfullscreen" scrolling="no" marginheight="0" marginwidth="0" src="${vehicle.videoUrl}"></iframe>
                   		</p>
				        <br />
				    </c:otherwise>
				</c:choose>
                   
                   </p>

	            <ul class="mainBoxIn1">
	            	
	                                
	                	<li class="prev1 gradient_button"><a href="${pageContext.request.contextPath}/vehicleDetails/${vehicle.prevVehicle}">Prev Vehicle</a></li>
	                	                
	                	           <!--   <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      Modal content
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
</div>    -->
	                	                
	                	                
	                	                	<li class="request gradient_button"><a  data-toggle="modal" data-target="#myModal" href="#${vehicle.vin}#requestmoreinfohow" onclick="clicky.log('#${vehicle.vin}#requestmoreinfoshow','click'); return false;">Request More Info</a></li>
	                	                
	                	                	<li class="schedule gradient_button"><a  data-toggle="modal" data-target="#scheduleTest" href="#${vehicle.vin}#scheduletestshow" onclick="clicky.log('#${vehicle.vin}#scheduletestshow','click'); return false;">Schedule Test Drive</a></li>
	                	                
	                	                	<li class="trade gradient_button"><a data-toggle="modal" data-target="#tradeInApp" href="#${vehicle.vin}#tradeinappshow" onclick="clicky.log('#${vehicle.vin}#tradeinappshow','click'); return false;">Trade-In Appraisal</a></li>
	                	                
	                	                	<li class="pdf gradient_button"><a class="generate_pdf" onclick = "window.open('http://www.carfax.com/VehicleHistory/p/Report.cfx?vin=${vehicle.vin}&amp;partner=AAG_0')">Carfax Report</a></li>
	                	                	<li class="schedule gradient_button"><a data-toggle="modal" data-target="#otherInfo" href="#${vehicle.vin}#emailtofriendshow" onclick="clicky.log('#${vehicle.vin}#emailtofriendshow','click'); return false;">Email To Friend</a></li>
	                	                	<li class="next1 gradient_button"><a href="${pageContext.request.contextPath}/vehicleDetails/${vehicle.nextVehicle}">Next Vehicle</a></li>
	                	                	
	                	                
	            </ul> 
	        </div>
            
            
            
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 left-content padding-left-none"> 
				
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
                    <!--Slider End-->
                    <div class="clearfix"></div>
                    <div class="bs-example bs-example-tabs example-tabs margin-top-50 mainBoxIn1">
	                    <ul class="nav nav-tabs" id="myTab">
	                    	
	                        <li class="active"><a data-toggle="tab" href="#vehicle">Features &amp; Options</a></li>	                        	                      
	                        <li><a data-toggle="tab" href="#location" onclick="initialize()">Vehicle Location</a></li>
	                    </ul>
	                    <div class="tab-content margin-top-15 margin-bottom-20" id="myTabContent">
	                        <div id="vehicle" class="tab-pane fade in active">                                    
	                                <div class="features-holder">
<h4>Vehicle Overview</h4>
<ul>
<li><b>Drive Type:</b> ${vehicle.drivetrain}</li>
<li><b>Fuel Type:</b> ${vehicle.fuelType}</li>
<li><b>Fuel Tank:</b> ${vehicle.fuelTank}</li>
<li><b>HeadLights:</b> ${vehicle.headlights}</li>
<li><b>Mirrors:</b> ${vehicle.mirrors}</li>
<li><b>Ground Clearance:</b> ${vehicle.groundClearance}</li>
<li><b>Roof:</b> ${vehicle.roof}</li>
<li><b>Height:</b> ${vehicle.height}</li>
<li><b>Length:</b> ${vehicle.length}</li>
<li><b>Width:</b> ${vehicle.width}</li>
<li><b>Acceleration:</b> ${vehicle.acceleration}</li>
<li><b>Seats:</b> ${vehicle.seats}</li>
</ul>
</div>


<div class="features-holder">
<h4>Engine, Transmission & Brakes</h4>
<ul>
<li><b>Engine Type:</b> ${vehicle.engineType}</li>
<li><b>Cylinders:</b> ${vehicle.cylinders}</li>
<li><b>Displacement:</b> ${vehicle.displacement}</li>
<li><b>Cam Type:</b> ${vehicle.camType}</li>
<li><b>Valves:</b> ${vehicle.valves}</li>
<li><b>Fuel Type:</b> ${vehicle.fuelType}</li>
<li><b>Fuel Quality:</b> ${vehicle.fuelQuality}</li>
<li><b>Max. Horse Power:</b> ${vehicle.horsePower}</li>
<li><b>Transmission:</b> ${vehicle.transmission}</li>
<li><b>Gears:</b> ${vehicle.gears}</li>
<li><b>Brakes:</b> ${vehicle.brakes}</li>
<li><b>Front Brake Diameter:</b> ${vehicle.frontBrakeDiameter}</li>
<li><b>Front Brake Type:</b> ${vehicle.frontBrakeType}</li>
<li><b>Rear Brake Diameter:</b> ${vehicle.rearBrakeDiameter}</li>
<li><b>Rear Brake Type:</b> ${vehicle.rearBrakeType}</li>
</ul>
</div>
<div class="features-holder">
<h4>Safety</h4>
<ul>
<li><b>Active Head Restraints:</b> ${vehicle.activeHeadRestraints}</li>
<li><b>Body Side Reinforcement:</b> ${vehicle.bodySideReinforcements}</li>
<li><b>Crumple Zones:</b> ${vehicle.crumpleZones}</li>
<li><b>Impact Absorbing Bumpers:</b> ${vehicle.impactAbsorbingBumpers}</li>
<li><b>Impact Sensors:</b> ${vehicle.impactSensors}</li>
<li><b>Parking Sensors:</b> ${vehicle.parkingSensors}</li>
<li><b>Seatbealts:</b> ${vehicle.seatbelts}</li>
<li><b>Audi Side Assist:</b> ${vehicle.audiSideAssist}</li>
</ul>
</div>


<div class="features-holder">
<h4>Interior & Comfort</h4>
<ul>
<li><b>Interior Color:</b> ${vehicle.intColor}</li>
<li><b>Comfort Features:</b> ${vehicle.comfortFeatures}</li>
<li><b>Power Outlet(s):</b> ${vehicle.powerOutlets}</li>
<li><b>Power Steering:</b> ${vehicle.powerSteering}</li>
<li><b>Rear View Camera:</b> ${vehicle.rearViewCamera}</li>
<li><b>Rear View Monitor:</b> ${vehicle.rearViewMonitor}</li>
<li><b>Remote Trunk Release:</b> ${vehicle.remoteTrunkRelease}</li>
<li><b>Steering Wheel:</b> ${vehicle.steeringWheel}</li>
<li><b>Steering Wheel Mounted Controls:</b> ${vehicle.steeringWheelControls}</li>
</ul>
</div>


<p>&nbsp;</p>
	                        </div>
	                        <div id="features" class="tab-pane fade">
	                            <ul data-list="There are no features available" class="fa-ul">
	                            	<li>There are no features available</li>	                            </ul>
	                        </div>
	                        <div id="technical" class="tab-pane fade">
	                        	
	                        </div>
	                        <div id="location" class="tab-pane fade">
	                        <div id="map-canvas"></div>
	                        
	                               <%-- <div data-parallax="false" style="height: 350px; id="map" 
	                               position: relative; background-color: rgb(229, 227, 223); 
	                               overflow: hidden;" data-scroll="false" data-zoom="11"
	                               data-latitude="43.653226" data-longitude="-79.3831843" 
	                               class="google_map_init">
	                               <div style="position: absolute; left: 0px; top: 0px; overflow: hidden;
	                                width: 100%; height: 100%; z-index: 0;" class="gm-style">
	                                <div style="position: absolute; left: 0px; top: 0px; 
	                                overflow: hidden; width: 100%; height: 100%; 
	                                z-index: 0; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default;">
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: 1; width: 100%;">
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: 0;">
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: 1; 
	                                visibility: inherit;" aria-hidden="true">
	                                <div style="width: 256px; height: 256px; position: absolute; 
	                                left: -102px; top: -109px;"></div></div></div></div>
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: -1;">
	                                <div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;" aria-hidden="true"><div style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -102px; top: -109px;"><canvas draggable="false" style="-moz-user-select: none; position: absolute; left: 0px; top: 0px; height: 256px; width: 256px;" height="256" width="256"></canvas></div></div></div></div><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"><div style="overflow: hidden;"></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 0;"><div style="position: absolute; left: 0px; top: 0px; z-index: 1; visibility: inherit;" aria-hidden="true"></div></div></div><div style="position: absolute; left: 0px; top: 0px; z-index: 2; width: 100%; height: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 3; width: 100%;"><div style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div><div style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div></div></div><div style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;"><a style="position: static; overflow: visible; float: none; display: inline;" target="_blank" href="https://maps.google.com/maps?ll=43.653226,-79.383184&amp;z=11&amp;t=m&amp;hl=en-US&amp;gl=US&amp;mapclient=apiv3" title="Click to see this area on Google Maps"><div style="width: 62px; height: 26px; cursor: pointer;"><img style="position: absolute; left: 0px; top: 0px; width: 62px; height: 26px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="https://maps.gstatic.com/mapfiles/api-3/images/google_white2.png" draggable="false"></div></a></div><div class="gmnoprint" style="z-index: 1000001; position: absolute; right: 0px; bottom: 0px; width: 12px;"><div draggable="false" style="-moz-user-select: none;" class="gm-style-cc"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto,Arial,sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a style="color: rgb(68, 68, 68); text-decoration: none; cursor: pointer; display: none;">Map Data</a><span style="display: none;"></span></div></div></div><div style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto,Arial,sans-serif; color: rgb(34, 34, 34); box-shadow: 0px 4px 16px rgba(0, 0, 0, 0.2); z-index: 10000002; display: none; width: 0px; height: 0px; position: absolute; left: 5px; top: 5px;"><div style="padding: 0px 0px 10px; font-size: 16px;">Map Data</div><div style="font-size: 13px;"></div><div style="width: 13px; height: 13px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;"><img style="position: absolute; left: -2px; top: -336px; width: 59px; height: 492px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false"></div></div><div class="gmnoscreen" style="position: absolute; right: 0px; bottom: 0px;"><div style="font-family: Roboto,Arial,sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);"></div></div><div class="gmnoprint gm-style-cc" style="z-index: 1000001; position: absolute; -moz-user-select: none; right: 0px; bottom: 0px;" draggable="false"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto,Arial,sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);" href="https://www.google.com/intl/en-US_US/help/terms_maps.html" target="_blank">Terms of Use</a></div></div><div draggable="false" style="-moz-user-select: none; display: none; position: absolute; right: 0px; bottom: 0px;" class="gm-style-cc"><div style="opacity: 0.7; width: 100%; height: 100%; position: absolute;"><div style="width: 1px;"></div><div style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div></div><div style="position: relative; padding-right: 6px; padding-left: 6px; font-family: Roboto,Arial,sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right;"><a target="_new" title="Report errors in the road map or imagery to Google" style="font-family: Roboto,Arial,sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;" href="https://www.google.com/maps/@43.653226,-79.3831843,11z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3">Report a map error</a></div></div><div class="gmnoprint" style="margin: 5px; -moz-user-select: none; position: absolute; left: 0px; top: 0px;" draggable="false" controlwidth="32" controlheight="84"><div controlwidth="32" controlheight="40" style="cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; position: absolute; left: 0px; top: 0px;"><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px;" aria-label="Street View Pegman Control"><img style="position: absolute; left: -9px; top: -102px; width: 1028px; height: 214px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;" aria-label="Pegman is disabled"><img style="position: absolute; left: -107px; top: -102px; width: 1028px; height: 214px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;" aria-label="Pegman is on top of the Map"><img style="position: absolute; left: -58px; top: -102px; width: 1028px; height: 214px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false"></div><div style="width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;" aria-label="Street View Pegman Control"><img style="position: absolute; left: -205px; top: -102px; width: 1028px; height: 214px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="https://maps.gstatic.com/mapfiles/api-3/images/cb_scout2.png" draggable="false"></div></div><div class="gmnoprint" style="opacity: 0.6; display: none; position: absolute;" controlwidth="0" controlheight="0"><div style="width: 22px; height: 22px; overflow: hidden; position: absolute; cursor: pointer;" title="Rotate map 90 degrees"><img style="position: absolute; left: -38px; top: -360px; width: 59px; height: 492px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false"></div></div><div class="gmnoprint" controlwidth="20" controlheight="39" style="position: absolute; left: 6px; top: 45px;"><div style="width: 20px; height: 39px; overflow: hidden; position: absolute;"><img style="position: absolute; left: -39px; top: -401px; width: 59px; height: 492px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px;" src="https://maps.gstatic.com/mapfiles/api-3/images/mapcnt6.png" draggable="false"></div><div style="position: absolute; left: 0px; top: 2px; width: 20px; height: 17px; cursor: pointer;" title="Zoom in"></div><div style="position: absolute; left: 0px; top: 19px; width: 20px; height: 17px; cursor: pointer;" title="Zoom out"></div></div></div><div class="gmnoprint gm-style-mtc" style="margin: 5px; z-index: 0; position: absolute; cursor: pointer; text-align: left; width: 85px; right: 0px; top: 0px;"><div style="direction: ltr; overflow: hidden; text-align: left; position: relative; color: rgb(0, 0, 0); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 1px 6px; border-radius: 2px; background-clip: padding-box; border: 1px solid rgba(0, 0, 0, 0.15); box-shadow: 0px 1px 4px -1px rgba(0, 0, 0, 0.3); font-weight: 500;" draggable="false" title="Change map style">Map<img src="https://maps.gstatic.com/mapfiles/arrow-down.png" draggable="false" style="-moz-user-select: none; border: 0px none; padding: 0px; margin: -2px 0px 0px; position: absolute; right: 6px; top: 50%; width: 7px; height: 4px;"></div><div style="background-color: white; z-index: -1; padding-top: 2px; background-clip: padding-box; border-width: 0px 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgba(0, 0, 0, 0.15) rgba(0, 0, 0, 0.15); -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; box-shadow: 0px 1px 4px -1px rgba(0, 0, 0, 0.3); position: absolute; top: 100%; left: 0px; right: 0px; text-align: left; display: none;"><div style="color: black; font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px; font-weight: 500;" draggable="false" title="Show street map">Map</div><div style="color: black; font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px;" draggable="false" title="Show satellite imagery">Satellite</div><div style="margin: 1px 0px; border-top: 1px solid rgb(235, 235, 235);"></div><div style="color: rgb(0, 0, 0); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap;" draggable="false" title="Show street map with terrain"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img style="position: absolute; left: -52px; top: -44px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px; width: 68px; height: 67px;" src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false"></div></span><label style="vertical-align: middle; cursor: pointer;">Terrain</label></div><div style="margin: 1px 0px; border-top: 1px solid rgb(235, 235, 235); display: none;"></div><div style="color: rgb(184, 184, 184); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap; display: none;" draggable="false" title="Zoom in to show 45 degree view"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(241, 241, 241); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;"><img style="position: absolute; left: -52px; top: -44px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px; width: 68px; height: 67px;" src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false"></div></span><label style="vertical-align: middle; cursor: pointer;">45°</label></div><div style="color: rgb(0, 0, 0); font-family: Roboto,Arial,sans-serif; -moz-user-select: none; font-size: 11px; background-color: rgb(255, 255, 255); padding: 3px 8px 3px 3px; direction: ltr; text-align: left; white-space: nowrap; display: none;" draggable="false" title="Show imagery with street names"><span role="checkbox" style="box-sizing: border-box; position: relative; line-height: 0; font-size: 0px; margin: 0px 5px 0px 0px; display: inline-block; background-color: rgb(255, 255, 255); border: 1px solid rgb(198, 198, 198); border-radius: 1px; width: 13px; height: 13px; vertical-align: middle;"><div style="position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;"><img style="position: absolute; left: -52px; top: -44px; -moz-user-select: none; border: 0px none; padding: 0px; margin: 0px; width: 68px; height: 67px;" src="https://maps.gstatic.com/mapfiles/mv/imgs8.png" draggable="false"></div></span><label style="vertical-align: middle; cursor: pointer;">Labels</label></div></div></div></div></div>
	                                --%>
	                            	                        </div>
	            
	                    </div>
	                </div>
                    <div class="clearfix"></div>
                </div>
					 <div class="content-nav margin-bottom-30 mainBoxIn">
         
	            <ul>
	            	
	                                
	                	<li class="prev1 gradient_button"><a href="#">Prev Vehicle</a></li>
	                	                
	                	                	<li class="request gradient_button"><a class="fancybox_div" href="#request_fancybox_form">Request More Info</a></li>
	                	                
	                	                	<li class="schedule gradient_button"><a class="fancybox_div" href="#schedule_fancybox_form">Schedule Test Drive</a></li>
	                	                
	                	                	<li class="offer gradient_button"><a class="fancybox_div" href="#offer_fancybox_form">Make an Offer</a></li>
	                	                
	                	                	<li class="trade gradient_button"><a class="fancybox_div" href="#trade_fancybox_form">Trade-In Appraisal</a></li>
	                	                
	                	                	<li class="pdf gradient_button"><a class="generate_pdf" href="">PDF Brochure</a></li>
	                	                
	                	                
	                	                
	                	                	<li class="next1 gradient_button"><a href="listings/bmw-m3-white/">Next Vehicle</a></li>
	                	                
	            </ul> 
	        </div>
				<div class="col-lg-4 col-md-4 col-sm-4 right-content padding-right-none">
	                <div class="side-content margin-bottom-50">
	                    <div class="car-info margin-bottom-50">
                    
          
                    <c:choose>
					    <c:when test="${vehicle.audioUrl==''}">
					        
					    </c:when>    
					    <c:otherwise>
					        <div style="text-align:center;">
						  Click on the Engine Sound button to hear it roar!
                        <div class="playerBox">
                        	<ul>
                                <li>
                                	<div class="sc_player_container1"><div class="sc_player_container1">
                                    <a onclick='playpause_audio();' href="javascript:void(0);">
                                    <img alt="" src="${pageContext.request.contextPath}/resources/autolinx/images/engine-sound-idle.png" id="start_engine"><img alt="" src="${pageContext.request.contextPath}/resources/autolinx/images/engine-sound-pressed.png" id="stop_engine" style="display:none;"></a></div></div>

                                </li>
                                <audio controls preload="none" class='audioDemo' style='display:none;'>
					<source src="/glivrImg/images${vehicle.audioUrl}" type="audio/mpeg">
					<source src="/glivrImg/images${vehicle.audioUrl}" type="audio/ogg">
		
				</audio>
                            </ul>
                        </div>
                          	
						</div>
					    </c:otherwise>
					</c:choose>
					
	                        <div class="table-responsive">
	                            <table class="table">
	                                <tbody>
	                                	<tr ng-if="${vehicle.year} != ''"><td>Year: </td><td>${vehicle.year}</td></tr>
	                                	<tr ng-if="${vehicle.make} != ''"><td>Make: </td><td>${vehicle.make}</td></tr>
	                                	<tr ng-if="${vehicle.model} != ''"><td>Model: </td><td>${vehicle.model}</td></tr>
	                                	<tr ng-if="${vehicle.bodyStyle} != ''"><td>Body Style: </td><td>${vehicle.bodyStyle}</td></tr>
	                                	<tr ng-if="${vehicle.mileage} != ''"><td ng-if="typeofV == 'Used'">Mileage: </td><td ng-if="typeofV == 'Used'">${vehicle.mileage}</td></tr>
	                                	<tr ng-if="${vehicle.doors} != ''"><td>Doors: </td><td>${vehicle.doors}</td></tr>
	                                	<tr ng-if="${vehicle.seats} != ''"><td>Seats: </td><td>${vehicle.seats}</td></tr>
	                                	<tr ng-if="${vehicle.drivetrain} != ''"><td>Drivetrain: </td><td>${vehicle.drivetrain}</td></tr>
	                                	<tr ng-if="${vehicle.engine} != ''"><td>Engine: </td><td>${vehicle.engine}</td></tr>
	                                	<tr ng-if="${vehicle.transmission} != ''"><td>Transmission: </td><td>${vehicle.transmission}</td></tr>
	                                	<tr ng-if="${vehicle.brakes} != ''"><td>Brakes: </td><td>${vehicle.brakes}</td></tr>
	                                	<tr ng-if="${vehicle.horsePower} != ''"><td>Horse Power: </td><td>${vehicle.horsePower}</td></tr>
	                                	<tr ng-if="${vehicle.acceleration} != ''"><td>Acceleration: </td><td>${vehicle.acceleration}</td></tr>
	                                	<tr ng-if="${vehicle.extColor} != ''"><td>Exterior Color: </td><td>${vehicle.extColor}</td></tr>
	                                	<tr ng-if="${vehicle.intColor} != ''"><td>Interior Color: </td><td>${vehicle.intColor}</td></tr>
	                                	<tr ng-if="${vehicle.location} != ''"><td>Location:</td><td>${vehicle.location}</td></tr>
	                                	<tr ng-if="${vehicle.price} != ''"><td>Price: </td><td>${vehicle.price}</td></tr>
	                                	<tr ng-if="${vehicle.cityMileage} != ''"><td>MPG: </td><td> ${vehicle.cityMileage} City / ${vehicle.highwayMileage} Highway</td></tr>
	                                	<tr ng-if="${vehicle.vin} != ''"><td>VIN Number: </td><td>${vehicle.vin}</td></tr>	                                </tbody>
	                            </table>
	                        </div>
	                    </div>

	                    	                    <div class="efficiency-rating text-center padding-vertical-15 margin-bottom-40">
	                        <h3>Fuel Efficiency Rating</h3>
	                        <ul>
	                        		                            <li class="city_mpg"><small>City:</small> <strong>${vehicle.cityMileage}</strong></li>
	                            <li class="fuel"><img class="aligncenter" alt="" src=""></li>
	                            <li class="hwy_mpg"><small>Highway:</small> <strong>${vehicle.highwayMileage}</strong></li>
	                        </ul>
	                        <p>Actual rating will vary with options, driving conditions, driving habits and vehicle condition.</p>
	                    </div>
	                    
												<div class="mainBoxIn1">
	                    	                    <ul data-title="${vehicle.year} ${vehicle.make} ${vehicle.model}" data-url="${hostname}/${vehicle.vin}" class="social-likes pull-right listing_share social-likes_visible social-likes_ready ">  
	                        <li title="Share link on Facebook" class="facebook"></li>
	                        <li title="Share link on Google+" class="plusone"></li>
	                        <li title="Share image on Pinterest" class="pinterest"></li>
	                        <li title="Share link on Twitter" class="twitter"></li>
	                    </ul>
	                    </div>	                    
	                    <div class="clearfix"></div>
	                    <div class="widget loan_calculator margin-top-40 mainBoxIn1"><div class="financing_calculator"><h3 class="side-widget-title margin-bottom-25">Financing Calculator</h3>                <div class="table-responsive">
                    <table class="table no-border no-margin">
                        <tbody>
                            <tr>
                                <td>Cost of Vehicle ($):</td>
                                <td><input type="text" value="${vehicle.onlyPrice}" class="number cost"></td>
                            </tr>
                            <tr>
                                <td>Down Payment ($):</td>
                                <td><input type="text" value="1000" class="number down_payment"></td>
                            </tr>
                            <tr>
                                <td>Annual Interest Rate (%):</td>
                                <td><input type="text" value="7" class="number interest"></td>
                            </tr>
                            <tr>
                                <td>Term of Loan in Years:</td>
                                <td><input type="text" value="5" class="number loan_years"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="bi_weekly clearfix">
                    <div class="pull-left">Frequency of Payments:</div>
                                        <div class="styled pull-right">
                        <select class="frequency css-dropdowns" style="display: none;">
						    <option value="0">Monthly</option>
                            <option value="1">Bi-Weekly</option>
                            <option value="2">Weekly</option>
             
                        </select>
	
                    </div>
                </div>
                <a class="btn-inventory pull-right calculate">Calculate My Payment</a>
                <div class="clear"></div>
                <div class="calculation">
                    <div class="table-responsive">
                        <table>
                            <tbody><tr>
                                <td><strong>NUMBER OF PAYMENTS:</strong></td>
                                <td><strong class="payments">00</strong></td>
                            </tr>
                            <tr>
                                <td><strong>PAYMENT AMOUNT:</strong></td>
                                <td><strong class="payment_amount">$0,000</strong></td>
                            </tr>
                        </tbody></table>
                    </div>
                </div>
                
                    		</div>
    		</div></div>	                </div>
            </div>
            <div class="clearfix"></div>
            <div class="recent-vehicles-wrap mainBoxIn1">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 recent-vehicles padding-left-none xs-padding-bottom-20">
                        <h5 class="margin-top-none">Similar Vehicles</h5>
                        <p>Browse through the vast
                            selection of vehicles that
                            have recently been added
                            to our inventory.</p>
                        <div class="arrow3 clearfix" id="slideControls3"><span class="prev-btn"></span><span class="next-btn"></span></div>
                    </div>
                    
                    <div class="col-md-10 col-sm-8 padding-right-none sm-padding-left-none xs-padding-left-none">
                        <div class="carasouel-slider3">
                        <c:forEach var="option" items='${similarVehicle}'>
                        <div class="slide">
                                <div class="car-block">
                                    <div class="img-flex"> <a href="${pageContext.request.contextPath}/vehicleDetails/${option.vin}"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="/glivrImg/images${option.path}" alt="" class="img-responsive"> </div>
                                    <div class="car-block-bottom">
                                        <h6><strong>${option.year} ${option.make}</strong></h6>
                                        <h6>${option.mileage}</h6>
                                        <h5>${option.price}</h5>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                           
                           
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--container ends--> 
</section>
<!--content ends-->
<div class="clearfix"></div>
<section class="message-wrap mainBoxIn">
  <div class="container">
    <div class="row">
      <h2 class="col-lg-9 col-md-8 col-sm-12 col-xs-12 xs-padding-left-15"><strong style="color:#ff0000;">LUXURY</strong> WITHIN REACH </h2>
      <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12 "> 
      	<a href="#" class="default-btn action_button lg-button">Schedule a Test Drive</a>
	  
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
        <div class="logo-footer margin-bottom-20 md-margin-bottom-20 sm-margin-bottom-10 xs-margin-bottom-20"><a href="#"> <a class="logo-f" href="#"><img src="/glivrImg/images${siteLogo.logoPath}" style="height:100px;"></a> </div>
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
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
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
           <div
                vc-recaptcha
                theme="'light'"
                key="model.key"
                on-create="setWidgetId(widgetId)"
                on-success="setResponse(response)"
                on-expire="cbExpiration()"
            ></div>
           <input type="button" ng-if="showButton == 0" disabled value="Submit">
            <input type="submit" ng-if="showButton == 1" value="Submit">
        </div>
      </div>
      </form>
    </div>
  </div>
  
   
   
<div class="modal fade" id="scheduleTest" role="dialog">
    <div class="modal-dialog">
     <form method="post" ng-submit="scheduleTest('${vehicle.vin}')" >  <%--  action="${pageContext.request.contextPath}/scheduleTest" --%>
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
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
           <div
                vc-recaptcha
                theme="'light'"
                key="model.key"
                on-create="setWidgetId(widgetId)"
                on-success="setResponse(response)"
                on-expire="cbExpiration()"
            ></div>
           <input type="button" ng-if="showButton == 0" disabled value="Submit">
            <input type="submit" ng-if="showButton == 1" value="Submit">
        </div>
      </div>
      </form>
    </div>
  </div>


<div class="modal fade" id="tradeInApp" role="dialog">
    <div class="modal-dialog" style="width: 961px">
     <form method="post" ng-submit="tradeInApp('${vehicle.vin}')"> <%-- action="${pageContext.request.contextPath}/tradeInApp" --%>
      <div class="modal-content" style="width: 996px;height: 703px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Trade-In</h4>
        </div>
         <%--   <input type="text" name="vin" value="${vehicle.vin}" style="display: none;"> --%>
        <div class="modal-body">
          	<div class="fancybox-outer"><div class="fancybox-inner" style="overflow: auto; width: 970px; height: 430px;"><div id="trade_fancybox_form" class="" style="">

		            <table class="left_table">
		                <tbody><tr>
		                    <td colspan="2"><h4>Contact Information</h4></td>
		                </tr>
		                <tr>
		                    <td>First Name<br><input type="text" ng-model="tradeIn.first_name" name="first_name"></td>
		                    <td>Last Name<br><input type="text" ng-model="tradeIn.last_name" name="last_name"></td>
		                </tr>
		                <tr>
		                    <td>Work Phone<br><input type="text" ng-model="tradeIn.work_phone" name="work_phone"></td>
		                    <td>Phone<br><input type="text" pattern="\d*" title="Please enter numbers" ng-model="tradeIn.phone" name="phone"></td>
		                </tr>
		                <tr>
		                    <td>Email<br><input type="email" ng-model="tradeIn.email" name="email"></td>
		                    <td>Preferred Contact<br>  
		                    	<input type="radio" name="preferred" ng-model="tradeIn.preferred" value="email" id="email" style="width: 14%;"> Email  
		                    	<input type="radio" name="preferred" ng-model="tradeIn.preferred" value="phone" id="phone" style="width: 14%;"> Phone </td>
		                </tr>
		                <tr>
		                    <td colspan="2">Comments<br><textarea name="comments" ng-model="tradeIn.comments" style="width: 89%;" rows="5"></textarea></td>
		                </tr>
		            </tbody></table>
		            
		            <table class="right_table">
		                <tbody><tr>
		                    <td colspan="2"><h4>Options</h4></td>
		                </tr>

		                		                <tr>
		                	<td><select name="options" ng-model="tradeIn.options" multiple style="height: 200px;"> 
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
		                    <td>Year<br><input type="text" ng-model="tradeIn.year" name="year"></td>
		                    <td>Make<br><input type="text" ng-model="tradeIn.make" name="make"></td>
		                </tr>
		                <tr>
		                    <td>Model<br><input type="text" ng-model="tradeIn.model" name="model"></td>
		                    <td>Exterior Colour<br><input type="text" ng-model="tradeIn.exterior_colour" name="exterior_colour"></td>
		                </tr>
		                <tr>
		                    <td>VIN<br><input type="text" ng-model="tradeIn.vininfo" name="vin"></td>
		                    <td>Kilometres<br><input type="text" ng-model="tradeIn.kilometres" name="kilometres"></td>
		                </tr>
		                <tr>
		                    <td>Engine<br><input type="text" name="engine" ng-model="tradeIn.engine"></td>
		                    <td>Doors<br>
		                    	<select name="doors" ng-model="tradeIn.doors" class="css-dropdowns" style="display: none;">
		                    		<option value="2">2</option>
		                    		<option value="3">3</option>
		                    		<option value="4">4</option>
		                    		<option value="5">5</option>
		                    	</select></td>
		                </tr>
		                <tr>
		                    <td>Transmission<br>
		                    	<select name="transmission" ng-model="tradeIn.transmission" class="css-dropdowns" style="display: none;">
		                    		<option value="Automatic">Automatic</option>
		                    		<option value="Manual">Manual</option>
		                    	</select></td>
		                    <td>Drivetrain<br>
		                    	<select name="drivetrain" ng-model="tradeIn.drivetrain" class="css-dropdowns" style="display: none;">
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
		                    	<select name="body_rating" ng-model="tradeIn.body_rating" class="css-dropdowns" style="display: none;">
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
		                    		<select name="tire_rating" ng-model="tradeIn.tire_rating" class="css-dropdowns" style="display: none;">
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
		                    		<select name="engine_rating" ng-model="tradeIn.engine_rating" class="css-dropdowns" style="display: none;">
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
		                    	   <select name="transmission_rating" ng-model="tradeIn.transmission_rating" class="css-dropdowns" style="display: none;">
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
		                    	<select name="glass_rating" ng-model="tradeIn.glass_rating" class="css-dropdowns" style="display: none;">
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
		                    	<select name="interior_rating" ng-model="tradeIn.interior_rating" class="css-dropdowns" style="display: none;">
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
		                    	<select name="exhaust_rating" ng-model="tradeIn.exhaust_rating" class="css-dropdowns" style="display: none;">
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
		                    	<select name="rental_return" ng-model="tradeIn.rental_return" class="css-dropdowns" style="display: none;">
		                    		<option value="Yes">Yes</option>
		                    		<option value="No">No</option>
		                    	</select></td>
		                </tr>
		                <tr>
		                    <td>Is the odometer operational and accurate? <br>
		                    	<select name="odometer_accurate" ng-model="tradeIn.odometer_accurate" class="css-dropdowns"  style="display: none;">
		                    		<option value="Yes">Yes</option>
		                    		<option value="No">No</option>
		                    	</select></td>
		                </tr>
		                <tr>
		                    <td>Detailed service records available? <br>
		                    	<select name="service_records" ng-model="tradeIn.service_records" class="css-dropdowns" style="display: none;">
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
		                    <td>Is there a lineholder? <br><input type="text"  ng-model="tradeIn.lienholder" name="lienholder"></td>
		                </tr>
		                <tr>
		                    <td>Who holds this title? <br><input type="text" ng-model="tradeIn.titleholder" name="titleholder"></td>
		                </tr>
		            </tbody></table>
		            
		            <div style="clear:both;"></div>
		                   
		            <table style="width: 100%;">
		                <tbody><tr><td colspan="2"><h4>Vehicle Assessment</h4></td></tr>
		                
		                <tr>
		                    <td>Does all equipment and accessories work correctly?<br><textarea name="equipment" ng-model="tradeIn.equipment" rows="5" style="width: 89%;"></textarea></td>
		                    <td>Did you buy the vehicle new?<br><textarea name="vehiclenew" ng-model="tradeIn.vehiclenew" rows="5" style="width: 89%;"></textarea></td>
		                </tr>
		                <tr>
		                    <td>Has the vehicle ever been in any accidents? Cost of repairs?<br><textarea name="accidents" ng-model="tradeIn.accidents" rows="5" style="width: 89%;"></textarea></td>
		                    <td>Is there existing damage on the vehicle? Where?<br><textarea name="damage" ng-model="tradeIn.damage" rows="5" style="width: 89%;"></textarea></td>
		                </tr>
		                <tr>
		                    <td>Has the vehicle ever had paint work performed?<br><textarea name="paint" ng-model="tradeIn.paint" rows="5" style="width: 89%;"></textarea></td>
		                    <td>Is the title designated 'Salvage' or 'Reconstructed'? Any other?<br><textarea name="salvage" ng-model="tradeIn.salvage" rows="5" style="width: 89%;"></textarea></td>
		                </tr>
<!-- 		                		                <tr><td colspan="2"><input type="submit" value="Submit"> <i class="fa fa-refresh fa-spin loading_icon_form"></i></td></tr> -->
		            </tbody></table>
		                
					</div></div></div>
        </div>
       
        <div class="modal-footer">
        
        <div
                vc-recaptcha
                theme="'light'"
                key="model.key"
                on-create="setWidgetId(widgetId)"
                on-success="setResponse(response)"
                on-expire="cbExpiration()"
            ></div>
           <input type="button" ng-if="showButton == 0" disabled value="Submit">
            <input type="submit" ng-if="showButton == 1" value="Submit">
        </div>
      </div>
      </form>
    </div>
  </div>
  
  <div class="modal fade" id="otherInfo" role="dialog">
    <div class="modal-dialog">
     <form method="post" ng-submit="otherInfo('${vehicle.vin}')">    <%-- action="${pageContext.request.contextPath}/otherInfo" --%>
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
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
        	<div
                vc-recaptcha
                theme="'light'"
                key="model.key"
                on-create="setWidgetId(widgetId)"
                on-success="setResponse(response)"
                on-expire="cbExpiration()"
            ></div>
           <input type="button" ng-if="showButton == 0" disabled value="Submit">
            <input type="submit" ng-if="showButton == 1" value="Submit">
        </div>
      </div>
      </form>
    </div>
  </div>
  
  <div class="modal fade" id="priceAlertModal" role="dialog">
    <div class="modal-dialog">
     <form name="fome1" ng-submit="savePriceAlert('${vehicle.vin}')"  method="post"> <%--  action="${pageContext.request.contextPath}/requestMore" --%>
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Price alert email</h4>
        </div>
      
        <div class="modal-body">
           
        	  <div class="row">
        	 <div class="col-md-3">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" ng-model="priceAlert.email" style="width: 220px !important;" required>
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
    
  <a title="Real Time Web Analytics" href="http://clicky.com/100875513"><img alt="Real Time Web Analytics" src="//static.getclicky.com/media/links/badge.gif" border="0" /></a>
<script type="text/javascript">
console.log("find Clicky.....!!!!!");
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
<a href="#${vehicle.vin}#emailtofriend" id="callemail" onclick="clicky.log('#${vehicle.vin}#emailtofriend','click'); return false;"></a>
<a href="#${vehicle.vin}#requestmoreinfo" id="callRequest" onclick="clicky.log('#${vehicle.vin}#requestmoreinfo','click'); return false;"></a>
<a href="#${vehicle.vin}#scheduletest" id="callSchedule" onclick="clicky.log('#${vehicle.vin}#scheduletest','click'); return false;"></a>
<a href="#${vehicle.vin}#tradeinapp" id="callTrade" onclick="clicky.log('#${vehicle.vin}#tradeinapp','click'); return false;"></a>
<a href="#${vehicle.vin}#enginesound" id="enginesound" onclick="clicky.log('#${vehicle.vin}#enginesound','click'); return false;"></a>
<a href="#${vehicle.vin}#virtualTour" id="virtualTour" onclick="clicky.log('#${vehicle.vin}#virtualTour','click'); return false;"></a>
<a href="#${vehicle.vin}#frdEmailSee" id="frdEmailSee" onclick="clicky.log('#${vehicle.vin}#frdEmailSee','click'); return false;"></a>
<a href="#${vehicle.vin}#sheduleSee" id="sheduleSee" onclick="clicky.log('#${vehicle.vin}#sheduleSee','click'); return false;"></a>
<a href="#${vehicle.vin}#requestSee" id="requestSee" onclick="clicky.log('#${vehicle.vin}#requestSee','click'); return false;"></a>
<a href="#${vehicle.vin}#tradeSee" id="tradeSee" onclick="clicky.log('#${vehicle.vin}#tradeSee','click'); return false;"></a>
