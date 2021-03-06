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
<title>${vehicle.year} ${vehicle.make} ${vehicle.model} ${vehicle.trim}</title>
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


<script src='https://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js'></script>
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
<script src="http://static.getclicky.com/inc/javascript/video/html.js"></script>
<script src='//static.getclicky.com/inc/javascript/video/youtube.js'></script>
<script src='//ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js'></script>
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
  
</script>


<script type="text/javascript">
function initialize() {
    var mapCanvas = document.getElementById('map-canvas');
    var mapOptions = {
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      center: new google.maps.LatLng(37.7870882, -122.39112790000001),
      zoom: 12,
    }
    var map = new google.maps.Map(mapCanvas, mapOptions)
    
    var address = $('#vehicleLocation').val();
    console.log(address);
    geocoder = new google.maps.Geocoder();
    geocoder.geocode({ 'address': address }, function (results, status) {
    	
    	console.log(results[0].geometry.location);
        if (status == google.maps.GeocoderStatus.OK) {
            map.setCenter(results[0].geometry.location);
             new google.maps.Marker({
                map: map,
                position: results[0].geometry.location
            }); 

        }
        else {
            alert("Geocode was not successful for the following reason: " + status);
        }
    });
  }
	 
$(document).ready(function() 
{
		//initialize();
	  	google.maps.event.addDomListener(window, 'load', initialize); 
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

<body ng-controller="VehicleDetailsController" ng-init="initFun('${vehicle.typeofVehicle}','${vehicle.virtualTour}','${vehicle.videoUrl}')">
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
<section id="secondary-banner" ng-class="${vehHeader.make_flag == 1}?'dynamic-image-1-1':'dynamic-image-8'" style="background-size: 100%" ><!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
    <div class="container">
        <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12" ng-if="${vehHeader.make_flag == 1}">
                <h2> ${vehHeader.headerTitle} </h2>
        		<h4> ${vehHeader.subTitle} </h4>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12" ng-if="${vehHeader.make_flag == 0}">
                <h2>Vehicle Profile</h2>
                <h4>See all the vehicle's details with 360<sup>o</sup> view, engine sound and history report</h4>
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
     
    <!-- style="color:#C7081B;font-weight: 700;" -->
      <h2 ng-if="${vehicle.comingSoonFlag == 1}" class="col-lg-9 col-md-8 col-sm-12 col-xs-12 xs-padding-left-15">SOMETHING GREAT IS COMING ON <strong style="color: #ff0000;
  " >${vehicle.comingSoonDate} </strong> </h2>
      <h2 ng-if="${vehicle.label != null} && ${vehicle.comingSoonFlag != 1}" class="col-lg-9 col-md-8 col-sm-12 col-xs-12 xs-padding-left-15"><strong style="color:#ff0000;"></strong>${vehicle.label}</h2>
      <h2 ng-if="${vehicle.label == null} && ${vehicle.comingSoonFlag != 1}" class="col-lg-9 col-md-8 col-sm-12 col-xs-12 xs-padding-left-15"><strong style="color:#ff0000;">FIND</strong> YOUR OWN WAY! </h2>
      <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12 "> 
      	<a ng-if="${vehicle.comingSoonFlag != 1}" class="default-btn pull-right action_button lg-button mainBoxIn1" style="cursor:pointer;" data-toggle="modal" data-target="#priceAlertModal">Price Alert</a>
      	<a ng-if="${vehicle.comingSoonFlag == 1}" class="default-btn pull-right action_button lg-button mainBoxIn1" style="cursor:pointer;" data-toggle="modal" data-target="#priceAlertModal">Notify me</a>
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
        <!-- ng-class="vehicle.price == '0' ?'titleCenter':''" -->
            <div class="inventory-heading margin-bottom-10 clearfix" ng-if="${vehicle.price == '$0'}" style="text-align: center;margin-left: 100px;">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
                        <h2>${vehicle.year} ${vehicle.make} ${vehicle.model} ${vehicle.trim}</h2>
                        
                    </div>
                   
                </div>
            </div>
             <div class="inventory-heading margin-bottom-10 clearfix" ng-if="${vehicle.price != '$0'}">
                <div class="row">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
                        <h2>${vehicle.year} ${vehicle.make} ${vehicle.model} ${vehicle.trim}</h2>
                        
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 text-right">
                        <h2> <c:set var="string2" value="${fn:split(vehicle.price, '$')}"/> <c:set var="string3" value="${fn:join(string2, '')}" />  $<fmt:formatNumber value="${string3}" type="number"/> </h2>
                       
                        <em>Plus Taxes & Licensing</em> </div>
                </div>
            </div>
            <c:choose>
				    <c:when test="${vehicle.flagD!='0'}">
				    	<div style="text-align:left;"><span class="videoTxtActive" id = "virtualTour"ng-click="setFlag('virtualTour')" ng-if="${vehicle.videoUrl!=''} && ${vehicle.virtualTour!=''}">360</span> &nbsp; <span ng-if="${vehicle.videoUrl!=''} && ${vehicle.virtualTour!=''}">|</span> &nbsp; <span id="video" ng-click="setFlag('video')" ng-if="${vehicle.videoUrl!=''} && ${vehicle.virtualTour!=''}">VIDEO</span></div>
				    	<div style="text-align:right;" ng-if="flag=='virtualTour'">    Experience the tour in full screen by clicking the button in the top right. <img src="${pageContext.request.contextPath}/resources/autolinx/images/arrowpoint.png"> </div>
				    </c:when>
				    <%-- <c:when test="${vehicle.videoUrl==''}">
				        <div style="text-align:right;">    Experience the tour in full screen by clicking the button in the top right. <img src="${pageContext.request.contextPath}/resources/autolinx/images/arrowpoint.png"> </div>
				    </c:when> --%>
				</c:choose>
            

            <div class="content-nav margin-bottom-30" ng-if="flag != null">
                   <p>
				       <p ng-if="flag=='video'">
                   		<iframe  width="1400" height="500" frameborder="0" allowfullscreen="allowfullscreen" scrolling="no" marginheight="0" marginwidth="0" src="${vehicle.videoUrl}"></iframe>
                   		</p>
				        <br />
				    
				       <p ng-if="flag=='virtualTour'">
                   		<iframe width="1400" height="500" frameborder="0" allowfullscreen="allowfullscreen" scrolling="no" marginheight="0" marginwidth="0" src="${vehicle.virtualTour}"></iframe>
                   		</p>
				        <br />
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
	                	                
	                	                	<c:choose>
	                	                	<c:when test="${vehicle.pdfPath != null}">
												<li class="next1 gradient_button"><a  target="_blank" data-toggle="modal" data-target="#pdfModal"  >PDF Brochure</a></li>
											</c:when>
	                	                	</c:choose>
	                	                	<li class="request gradient_button"><a  data-toggle="modal" data-target="#myModal" href="#${vehicle.vin}#requestmoreinfohow" onclick="clicky.log('#${vehicle.vin}#requestmoreinfoshow','click'); return false;">Request More Info</a></li>
	                	                
	                	                	<li class="schedule gradient_button"><a  data-toggle="modal" data-target="#scheduleTest" href="#${vehicle.vin}#scheduletestshow" onclick="clicky.log('#${vehicle.vin}#scheduletestshow','click'); return false;">Schedule Test Drive</a></li>
	                	                
	                	                	<li class="trade gradient_button"><a data-toggle="modal" data-target="#tradeInApp" href="#${vehicle.vin}#tradeinappshow" onclick="clicky.log('#${vehicle.vin}#tradeinappshow','click'); return false;">Trade-In Appraisal</a></li>
	                	                
	                	                	<li class="pdf gradient_button"><a class="generate_pdf" onclick = "window.open('http://www.carfax.com/VehicleHistory/p/Report.cfx?vin=${vehicle.vin}&amp;partner=AAG_0')">Carfax Report</a></li>
	                	                	<li class="schedule gradient_button"><a data-toggle="modal" data-target="#otherInfo" href="#${vehicle.vin}#emailtofriendshow" onclick="clicky.log('#${vehicle.vin}#emailtofriendshow','click'); return false;">Email To Friend</a></li>
	                	                	<li class="next1 gradient_button"><a href="${pageContext.request.contextPath}/vehicleDetails/${vehicle.nextVehicle}">Next Vehicle</a></li>
	                	                	
	                	                	<%-- href="${hostnameimg}${vehicle.pdfPath}" --%>
	                	                
	            </ul> 
	        </div>
            
            
            
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 left-content padding-left-none"> 
				
                    <!--OPEN OF SLIDER-->
                    <div class="listing-slider">
                        <section class="slider home-banner">
                            <div class="flexslider" id="home-slider-canvas">
                                <ul class="slides">
                                <%-- <c:forEach var="row" items="${vehicle.images}">
                                	<c:choose>
										<c:when test="${row.isDefault == true}">
											<li data-thumb="${hostnameimg}${row.path}"> 
                                    		<img data-full-image="${hostnameimg}${row.path}" alt="" src="${hostnameimg}${row.path}" draggable="false">
                                     		</li>
										</c:when>
										<c:otherwise>
										
										</c:otherwise>
									</c:choose>
                                 </c:forEach> --%>
                                    
                                    <c:forEach var="row" items="${vehicle.images}">
                                    <li data-thumb="${hostnameimg}${row.path}"> <img data-full-image="${hostnameimg}${row.path}" alt="" src="${hostnameimg}${row.path}" draggable="false"> </li>
                                     </c:forEach>
                                    
                                </ul>
                            </div>
                        </section>
                        <section class="home-slider-thumbs">
                            <div class="flexslider" id="home-slider-thumbs">
                                <ul class="slides">
                                <c:forEach var="row" items="${vehicle.images}">
                                    <li data-thumb="${hostnameimg}${row.path}"> <a href="#"><img alt="" src="${hostnameimg}${row.path}" draggable="false" style="height: 130px;"></a> </li>
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
	                        <!--<li	><a data-toggle="tab" href="#location" >Vehicle Location</a></li> onclick="initialize()" -->
	                    </ul>
	                    <div class="tab-content margin-top-15 margin-bottom-20" id="myTabContent">
	                        <div id="vehicle" class="tab-pane fade in active">                                    
	                                <div class="features-holder">
	   <c:if test="${vehicle.drivetrain != null || vehicle.fuelType != null || vehicle.fuelTank != null || vehicle.headlights != null || vehicle.groundClearance != null || vehicle.height != null || vehicle.length != null || vehicle.width != null || vehicle.acceleration!= null}">                             
			<h4>Vehicle Overview</h4>
</c:if>
<ul>

	<c:if test="${vehicle.drivetrain != null}">
			<li><b>Drive Type:</b> ${vehicle.drivetrain}</li>								
	</c:if>
	<c:if test="${vehicle.fuelType != null}">
			<li><b>Fuel Type:</b> ${vehicle.fuelType}</li>								
	</c:if>
	<c:if test="${vehicle.fuelTank != null}">
			<li><b>Fuel Tank:</b> ${vehicle.fuelTank}</li>								
	</c:if>
	<c:if test="${vehicle.headlights != null}">
			<li><b>HeadLights:</b> ${vehicle.headlights}</li>							
	</c:if> 
	<c:if test="${vehicle.mirrors != null}">
			<li><b>Mirrors:</b> ${vehicle.mirrors}</li>							
	</c:if>    
	<c:if test="${vehicle.groundClearance != null}">
			<li><b>Ground Clearance:</b> ${vehicle.groundClearance}</li>						
	</c:if>
	<c:if test="${vehicle.roof != null}">
			<li><b>Roof:</b> ${vehicle.roof}</li>							
	</c:if>
	<c:if test="${vehicle.height != null}">
			<li><b>Height:</b> ${vehicle.height}</li>						
	</c:if>
	<c:if test="${vehicle.length != null}">
			<li><b>Length:</b> ${vehicle.length}</li>						
	</c:if>  
	<c:if test="${vehicle.width != null}">
			<li><b>Width:</b> ${vehicle.width}</li>					
	</c:if>
	<c:if test="${vehicle.acceleration!= null}">
			<li><b>Acceleration:</b> ${vehicle.acceleration}</li>					
	</c:if>
	<c:if test="${vehicle.seats!= null}">
			<li><b>Seats:</b> ${vehicle.seats}</li>					
	</c:if>
</ul>
</div>


<div class="features-holder">
<c:if test="${vehicle.engineType != null || vehicle.cylinders != null || vehicle.displacement!= null || vehicle.camType!= null || vehicle.valves!= null || vehicle.fuelQuality!= null || vehicle.horsePower!= null || vehicle.gears != null || vehicle.brakes != null}">
	<h4>Engine, Transmission & Brakes</h4>
</c:if>	
<ul>
	<c:if test="${vehicle.engineType != null}">
			<li><b>Engine Type:</b> ${vehicle.engineType}</li>							
	</c:if>
	<c:if test="${vehicle.cylinders != null}">
			<li><b>Cylinders:</b> ${vehicle.cylinders}</li>						
	</c:if>
	<c:if test="${vehicle.displacement!= null}">
			<li><b>Displacement:</b> ${vehicle.displacement}</li>				
	</c:if>
	<c:if test="${vehicle.camType!= null}">
			<li><b>Cam Type:</b> ${vehicle.camType}</li>			
	</c:if>
	<c:if test="${vehicle.valves!= null}">
			<li><b>Valves:</b> ${vehicle.valves}</li>				
	</c:if>
	
	<c:if test="${vehicle.fuelQuality!= null}">
			<li><b>Fuel Quality:</b> ${vehicle.fuelQuality}</li>			
	</c:if>
	<c:if test="${vehicle.horsePower!= null}">
			<li><b>Max. Horse Power:</b> ${vehicle.horsePower}</li>				
	</c:if>
	<c:if test="${vehicle.transmission!= null}">
			<li><b>Transmission:</b> ${vehicle.transmission}</li>			
	</c:if> 
	<c:if test="${vehicle.gears != null}">
			<li><b>Gears:</b> ${vehicle.gears}</li>			
	</c:if>
	
	<c:if test="${vehicle.brakes != null}">
			<li><b>Brakes:</b> ${vehicle.brakes}</li>		
	</c:if>
	<c:if test="${vehicle.frontBrakeDiameter != null}">
			<li><b>Front Brake Diameter:</b> ${vehicle.frontBrakeDiameter}</li>			
	</c:if>
	<c:if test="${vehicle.frontBrakeType != null}">
			<li><b>Front Brake Type:</b> ${vehicle.frontBrakeType}</li>		
	</c:if>
	<c:if test="${vehicle.rearBrakeDiameter != null}">
			<li><b>Rear Brake Diameter:</b> ${vehicle.rearBrakeDiameter}</li>
	</c:if>
	<c:if test="${vehicle.rearBrakeType!= null}">
			<li><b>Rear Brake Type:</b> ${vehicle.rearBrakeType}</li>	
	</c:if>
	
	

</ul>
</div>
<div class="features-holder">
<c:if test="${vehicle.activeHeadRestraints != null || vehicle.bodySideReinforcements != null || vehicle.crumpleZones != null || vehicle.impactAbsorbingBumpers != null ||vehicle.impactSensors != null || vehicle.parkingSensors != null || vehicle.seatbelts != null}">	
	<h4>Safety</h4>
</c:if>	
<ul>
	<c:if test="${vehicle.activeHeadRestraints != null}">
			<li><b>Active Head Restraints:</b> ${vehicle.activeHeadRestraints}</li>						
	</c:if>
	<c:if test="${vehicle.bodySideReinforcements != null}">
			<li><b>Body Side Reinforcement:</b> ${vehicle.bodySideReinforcements}</li>						
	</c:if>
	<c:if test="${vehicle.crumpleZones != null}">
		<li><b>Crumple Zones:</b> ${vehicle.crumpleZones}</li>						
	</c:if>
	<c:if test="${vehicle.impactAbsorbingBumpers != null}">
			<li><b>Impact Absorbing Bumpers:</b> ${vehicle.impactAbsorbingBumpers}</li>						
	</c:if>
	<c:if test="${vehicle.impactSensors != null}">
			<li><b>Impact Sensors:</b> ${vehicle.impactSensors}</li>							
	</c:if>
	<c:if test="${vehicle.parkingSensors != null}">
			<li><b>Parking Sensors:</b> ${vehicle.parkingSensors}</li>					
	</c:if>
	<c:if test="${vehicle.seatbelts != null}">
			<li><b>Audi Side Assist:</b> ${vehicle.audiSideAssist}</li>					
	</c:if>
		

</ul>
</div>


<div class="features-holder">
<c:if test="${vehicle.intColor != null || vehicle.comfortFeatures != null || vehicle.powerOutlets != null || vehicle.powerSteering != null || vehicle.rearViewCamera != null || vehicle.rearViewMonitor != null || vehicle.remoteTrunkRelease != null}">
	<h4>Interior & Comfort</h4>
</c:if>
<ul>

	<c:if test="${vehicle.intColor != null}">
		<li><b>Interior Color:</b> ${vehicle.intColor}</li>					
	</c:if>
	<c:if test="${vehicle.comfortFeatures != null}">
		<li><b>Comfort Features:</b> ${vehicle.comfortFeatures}</li>					
	</c:if>
	<c:if test="${vehicle.powerOutlets != null}">
		<li><b>Power Outlet(s):</b> ${vehicle.powerOutlets}</li>				
	</c:if>
	<c:if test="${vehicle.powerSteering != null}">
		<li><b>Power Steering:</b> ${vehicle.powerSteering}</li>					
	</c:if>
	<c:if test="${vehicle.rearViewCamera != null}">
		<li><b>Rear View Camera:</b> ${vehicle.rearViewCamera}</li>						
	</c:if>
	<c:if test="${vehicle.rearViewMonitor != null}">
		<li><b>Rear View Monitor:</b> ${vehicle.rearViewMonitor}</li>					
	</c:if> 
	<c:if test="${vehicle.remoteTrunkRelease != null}">
		<li><b>Remote Trunk Release:</b> ${vehicle.remoteTrunkRelease}</li>				
	</c:if>
	<c:if test="${vehicle.steeringWheel != null}">
		<li><b>Steering Wheel:</b> ${vehicle.steeringWheel}</li>				
	</c:if>
	<c:if test="${vehicle.steeringWheelControls != null}">
		<li><b>Steering Wheel Mounted Controls:</b> ${vehicle.steeringWheelControls}</li>				
	</c:if>


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
	                        <!-- <div id="location" class="tab-pane fade">
	                        	<div id="map-canvas"></div>
	                        </div> -->
	            
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
					<source src="${hostnameimg}${vehicle.audioUrl}" type="audio/mpeg">
					<source src="${hostnameimg}${vehicle.audioUrl}" type="audio/ogg">
		
				</audio>
                            </ul>
                        </div>
                          	
						</div>
					    </c:otherwise>
					</c:choose>
					
	                        <div class="table-responsive">
	                            <table class="table">
	                                <tbody>
	                                <c:if test="${vehicle.year != null}">
											<tr><td>Year: </td><td>${vehicle.year}</td></tr>								
									</c:if>
									<c:if test="${vehicle.model != null}">
											<tr><td>Model: </td><td>${vehicle.model}</td></tr>								
									</c:if>
									<c:if test="${vehicle.bodyStyle != null}">
											<tr><td>Body Style: </td><td>${vehicle.bodyStyle}</td></tr>								
									</c:if>
									<c:if test="${vehicle.mileage != null}">
											<tr><td ng-if="typeofV == 'Used'">Mileage: </td><td ng-if="typeofV == 'Used'">${vehicle.mileage}</td></tr>								
									</c:if>
									<c:if test="${vehicle.doors != null}">
											<tr><td>Doors: </td><td>${vehicle.doors}</td></tr>								
									</c:if>
									<c:if test="${vehicle.seats != null}">
											<tr><td>Seats: </td><td>${vehicle.seats}</td></tr>								
									</c:if>
									<c:if test="${vehicle.drivetrain != null}">
											<tr><td>Drivetrain: </td><td>${vehicle.drivetrain}</td></tr>								
									</c:if>
									<c:if test="${vehicle.engine != null}">
											<tr><td>Engine: </td><td>${vehicle.engine}</td></tr>								
									</c:if>
	                                <c:if test="${vehicle.transmission != null}">
											<tr><td>Transmission: </td><td>${vehicle.transmission}</td></tr>								
									</c:if>
									<c:if test="${vehicle.brakes != null}">
											<tr><td>Brakes: </td><td>${vehicle.brakes}</td></tr>								
									</c:if>
									<c:if test="${vehicle.horsePower != null}">
											<tr><td>Horse Power: </td><td>${vehicle.horsePower}</td></tr>								
									</c:if>	
									<c:if test="${vehicle.acceleration != null}">
											<tr><td>Acceleration: </td><td>${vehicle.acceleration}</td></tr>								
									</c:if>	
									<c:if test="${vehicle.extColor != null}">
											<tr><td>Exterior Color: </td><td>${vehicle.extColor}</td></tr>								
									</c:if>	
									<c:if test="${vehicle.intColor != null}">
											<tr><td>Interior Color: </td><td>${vehicle.intColor}</td></tr>								
									</c:if>	
									<c:if test="${vehicle.locAddress != null}">
											<tr><td>Location:</td><td><a style="color: black;font-weight: bold;" href="http://maps.google.com/?q=${vehicle.locAddress }" target="_blank">${vehicle.loc}</a></td></tr>	
									</c:if>	
									<c:if test="${vehicle.price != null}">
										<c:if test="${vehicle.price != '$0'}">
    										<tr><td>Price: </td><td>  <c:set var="string2" value="${fn:split(vehicle.price, '$')}"/> <c:set var="string3" value="${fn:join(string2, '')}" />  $<fmt:formatNumber value="${string3}" type="number"/></td></tr>								
									</c:if>
									</c:if>	
									<c:if test="${vehicle.cityMileage != null}">
												<tr><td>MPG: </td><td> ${vehicle.cityMileage} City / ${vehicle.highwayMileage} Highway</td></tr>								
									</c:if>	
	                                <c:if test="${vehicle.vin != null}">
												<tr><td>VIN Number: </td><td>${vehicle.vin}</td></tr>	                                </tbody>								
									</c:if>	
	                                	
	                            </table>
	                        </div>
	                    </div>

	                     <div class="efficiency-rating text-center padding-vertical-15 margin-bottom-40" ng-if="${vehicle.cityMileage != null} || ${vehicle.highwayMileage != null}">
	                        <h3>Fuel Efficiency Rating</h3>
	                        <ul>
	                        		                            <li class="city_mpg"><small>City:</small> <strong>${vehicle.cityMileage}</strong></li>
	                            <li class="fuel"><img class="aligncenter" alt="" src=""></li>
	                            <li class="hwy_mpg"><small>Highway:</small> <strong>${vehicle.highwayMileage}</strong></li>
	                        </ul>
	                        <p>Actual rating will vary with options, driving conditions, driving habits and vehicle condition.</p>
	                    </div>
	                    
												<div class="mainBoxIn1" ng-if="${vehHeader.social_flag == 1}" >
	                    	                    <ul data-title="${vehicle.year} ${vehicle.make} ${vehicle.model}" data-url="${hostname}/${vehicle.vin}" class="social-likes pull-right listing_share social-likes_visible social-likes_ready ">  
	                        <li title="Share link on Facebook" class="facebook"></li>
	                        <li title="Share link on Google+" class="plusone"></li>
	                        <li title="Share image on Pinterest" class="pinterest"></li>
	                        <li title="Share link on Twitter" class="twitter"></li>
	                    </ul>
	                    </div>	                    
	                    <div class="clearfix"></div>
	                    <div class="widget loan_calculator margin-top-40 mainBoxIn1" ng-if="${vehHeader.finance_flag == 1}" ><div class="financing_calculator"><h3 class="side-widget-title margin-bottom-25">Financing Calculator</h3>                <div class="table-responsive">
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
                                    <div class="img-flex"> <a href="${pageContext.request.contextPath}/vehicleDetails/${option.vin}"><span class="align-center"><i class="fa fa-3x fa-plus-square-o"></i></span></a> <img src="${hostnameimg}${option.path}" alt="" class="img-responsive"> </div>
                                    <div class="car-block-bottom">
                                        <h6><strong>${option.year} ${option.make}</strong></h6>
                                        <h6 ng-if="${option.mileage != null}"><strong>Milage:</strong>${option.mileage}</h6>
                                        <h5 ng-if="${option.price != '$0'}"> <c:set var="string2" value="${fn:split(option.price, '$')}"/> <c:set var="string3" value="${fn:join(string2, '')}" />  $<fmt:formatNumber value="${string3}" type="number"/> </h5>
                                        <h5 ng-if="${option.price == '$0'}"> ${option.comingSoonDate} </h5>
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
        <div class="logo-footer margin-bottom-20 md-margin-bottom-20 sm-margin-bottom-10 xs-margin-bottom-20"><a href="#"> <a class="logo-f" href="#"><img src="${hostnameimg}${siteLogo.logoPath}" style="height:100px;"></a> </div>
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
           <!-- <div
                vc-recaptcha
                theme="'light'"
                key="model.key"
                on-create="setWidgetId(widgetId)"
                on-success="setResponse(response)"
                on-expire="cbExpiration()"
            ></div>
           <input type="button" ng-if="showButton == 0" disabled value="Submit"> -->
            <input type="submit" ng-if="showButton == 0" value="Submit">
        </div>
      </div>
      </form>
    </div>
  </div>
  
  <a id="pdfDownloalModal1" target="_blank" data-toggle="modal" data-target="#pdfDownloalModal"> </a>
  
  <div class="modal fade" id="pdfDownloalModal" role="dialog">
    <div class="modal-dialog">
      	<div class="modal-content" style="width: 514px;margin-left: 80px;">
      		<div class="modal-header">
          		<button id="pdfDwnPopclose" type="button" class="close" data-dismiss="modal">&times;</button>
          		<h4 class="modal-title">Download PDF Brochure</h4>
        	</div>
        	<div class="modal-body">
        		<div class="row">
        	 		<div class="col-md-8">
        	 			<label style="font-weight: initial;padding: 0px;">Please Download our Brochure</label>
        	 		</div>
        	</div>
        	</div><div class="modal-footer">
            <button><a id="openPdf1" hide="true" href="{{pdfPathOpen}}" target="_blank" style="color: white;"> Open PDF </a></button>
        </div>
      	</div>
    </div>
  </div>
  
      <div class="modal fade" id="pdfModal" role="dialog">
    <div class="modal-dialog">
     <form name="fome1" ng-submit="savePdfData('${vehicle.vin}')"  method="post"> <%--  action="${pageContext.request.contextPath}/requestMore" --%>
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
        <div class="modal-header">
          <button id="pdfPopclose" type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Download PDF Brochure</h4>
        </div>
        <div class="modal-body">
        
        
           <div class="row">
        	 <div class="col-md-8">
        	 	<label style="font-weight: initial;padding: 0px;">Please enter your information to download our Brochure</label>
        	 </div>
        	</div>
        
           <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	  <%--  <input type="text" name="vin" ng-model="request.vin" value="${vehicle.vin}" style="display: none;"> --%>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" ng-model="pdf.name" style="width: 220px !important;" required>
        	 </div>
        	</div>
        	  <div class="row">
        	 <div class="col-md-6">
        	 	<label style="font-weight: initial;padding: 0px;">Email:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="email" name="email" ng-model="pdf.email" style="width: 220px !important;">
        	 </div>
        	 </div>
        	 
        	 
        	 <div>
        	 <input type="hidden" id="pdfPath" value="${vehicle.pdfPath}" ng-model="pdf.pdfPath">
        	 <input type="hidden" id="pdfRootPath" value="${hostnameimg}/" ng-model="pdf.pdfPath">
        	 </div>
        	 
        	 
        </div>
       
        <div class="modal-footer">
            <input type="submit"  value="Submit" />
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
        	 <div class="col-md-6" ng-if="${vehicle.comingSoonFlag != 1}">
        	 	<input name="bestDay"
										class="input-filter form-control meal-font-text-size"
										data-provide="datepicker" ng-model="schedule.bestDay" data-date-autoclose="true" data-date-format="dd-mm-yyyy" style="width: 220px !important;" required>
        	 	
        	 </div>
        	 <div class="col-md-6" ng-if="${vehicle.comingSoonFlag == 1}">
        	 	<input name="bestDay"
										class="input-filter form-control meal-font-text-size" 
										data-provide="datepicker" ng-model="schedule.bestDay" data-date-autoclose="true" data-date-start-date="${vehicle.comingSoonDate1}" data-date-format="dd-mm-yyyy" style="width: 220px !important;" required>
        	 	
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
           <!-- <div
                vc-recaptcha
                theme="'light'"
                key="model.key"
                on-create="setWidgetId(widgetId)"
                on-success="setResponse(response)"
                on-expire="cbExpiration()"
            ></div>
           <input type="button" ng-if="showButton == 0" disabled value="Submit"> -->
            <input type="submit" ng-if="showButton == 0" value="Submit">
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
        
        <!-- <div
                vc-recaptcha
                theme="'light'"
                key="model.key"
                on-create="setWidgetId(widgetId)"
                on-success="setResponse(response)"
                on-expire="cbExpiration()"
            ></div>
           <input type="button" ng-if="showButton == 0" disabled value="Submit"> -->
            <input type="submit" ng-if="showButton == 0" value="Submit">
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
  <div class="modal fade" id="confirpopUp" role="dialog">
    <div class="modal-dialog">
     <form name="fome1" ng-submit="savePriceAlertConfir()"  method="post"> <%--  action="${pageContext.request.contextPath}/requestMore" --%>
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
      
        <div class="modal-body">
           
        	  <div class="row">
        	 <div class="col-md-12">
        	 	<label style="font-weight: initial;padding: 0px;">Thank you for your interest. We will notify you when vehicle is available</label>
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
  <div class="modal fade" id="priceAlertModal" role="dialog">
    <div class="modal-dialog">
     <form name="fome1" ng-submit="savePriceAlert('${vehicle.vin}')" method="post"> <%--  action="${pageContext.request.contextPath}/requestMore" --%>
      <div class="modal-content" style="width: 514px;margin-left: 80px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 ng-if="${vehicle.comingSoonFlag != 1}" class="modal-title">Price alert email</h4>
          <h4 ng-if="${vehicle.comingSoonFlag == 1}" class="modal-title">Price alert email</h4>
          
        </div>
      
        <div class="modal-body">
           
            <div ng-if="${vehicle.comingSoonFlag == 1}" class="row">
        	 <div class="col-md-3">
        	 	<label style="font-weight: initial;padding: 0px;">Name:</label>
        	 </div>
        	 <div class="col-md-6">
        	 	<input type="text" name="name" ng-model="priceAlert.name" style="width: 220px !important;" required>
        	 </div>
        	 </div>
           
           
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


.dynamic-image-1-1 {
 	background: url(${hostnameimg}${vehHeader.path}) no-repeat center;
 	}
 
.car-info .table>tbody>tr>td {
	line-height: 18px;
}
.titleCenter{
	text-align: center;
}

.videoTxt{
    color: gray;
    font-size: 16px;
}
.videoTxtActive{
    color: black;
    font-size: 16px;
}
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
  
 <div id=""></div>

<script type="text/javascript">
swfobject.embedSWF("http://www.youtube.com/v/7-F_0HHGMIk?enablejsapi=1&playerapiid={div-id}", 
	"myvideo", "425", "356", "8", null, null, { allowScriptAccess: "always" });
</script> 
  
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

<!-- <script type="text/javascript">
  var clicky_custom = {};
  clicky_custom.href = '/some/page?some=query';
  clicky_custom.title = 'Some page';
  clicky_custom.session = {
    username: 'bobjones',
    session_id: '5678'
  };
  clicky_custom.timer = 200;
</script> -->

<script type="text/javascript">
  //$scope.randomNum
  	/* var pairs = document.cookie.split(";");
  	 console.log(pairs);
	  var cookies = {};
	  for (var i=0; i<pairs.length; i++){
	    var pair = pairs[i].split("=");
	    cookies[pair[0]] = unescape(pair[1]);
	  }
	  var myCookies = cookies;	
  	var	test=myCookies._jsuid */
  	var d = new Date();
  	var test = d.getMilliseconds();
  console.dir("****");
  console.dir(test);		
  
  console.dir(test);
  var clicky_custom = {
    /* href: '/some/page?some=query',
    title: 'Some page', */
    session: {
      session_Id: test,
    },
    timer: 200
  };
</script>

<script type="text/javascript">
swfobject.embedSWF("http://www.youtube.com/v/RdGVz104b3E?enablejsapi=1&playerapiid=ab", 
	"ab", "425", "356", "8", null, null, { allowScriptAccess: "always" });
</script>

 <noscript><p><img alt="Clicky" width="1" height="1" src="//in.getclicky.com/100875513ns.gif" /></p></noscript>
<script src='https://static.getclicky.com/inc/javascript/video/youtube.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js'></script>
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
