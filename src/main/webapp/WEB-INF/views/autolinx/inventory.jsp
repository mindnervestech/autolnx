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
 
<body ng-controller="InventoryController" ng-init='initFunction(${vehicle1.year},"${vehicle1.make}","${vehicle1.model}","${vehicle1.bodyStyle}","${vehicle1.fuelType}","${myprofile.locationId}","${type}")'>
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
              <%-- <li class="active"><a href="${pageContext.request.contextPath}/findVehicles">Inventory</a></li> --%>
              <li class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown">Inventory <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                      <li><a href="${pageContext.request.contextPath}/findVehicles/New">New</a></li>
                      <li><a href="${pageContext.request.contextPath}/findVehicles/Used">Used</a></li>
                  </ul>
              </li>
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
<section id="secondary-banner" class="dynamic-image-1"><!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <h2>Inventory</h2>
        <h4>Unlimited Listings, Any Vehicle Type</h4>
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
 
<section class="content mainBoxIn1">
  <div class="container">
    <div class="inner-page row">
      <div class="listing-view margin-bottom-20">
        <div class="row">   
        	
          <div class="col-lg-3 col-md-2 col-sm-2 col-xs-12 padding-none"> <span class="ribbon"><strong>{{VehiclesCount}} Vehicles Matching:</strong></span> <span class="ribbon-item">All Listings</span></div>
          <div class="col-lg-3 col-md-2 col-sm-2 col-xs-12 padding-none"> 
          	<div class="my-dropdown prices-dropdown" style="width: 96px !important;">
            <div> <span>Sort By Price:</span></div>
         </div> 
          <div class="my-dropdown prices-dropdown" style="width: 121px !important;margin-left: 12px;">
            <select name="price" ng-model="price" ng-change="selectPrice()" class="css-dropdowns" tabindex="1" >
			  <option value="lowToHigh">Low To High</option>
              <option value="highToLow">High To Low</option>
            </select>
          </div>
          
          </div>
          <div class="col-lg-3 col-md-2 col-sm-2 col-xs-12 padding-none"> 
          	<div class="my-dropdown prices-dropdown" style="width: 122px !important;">
            <div> <span>Sort By Alphabet:</span></div>
         </div> 
          <div class="my-dropdown prices-dropdown" style="width: 121px !important;margin-left: 12px;">
            <select name="alphbet" ng-model="alphbet" ng-change="selectAlphbet()" class="css-dropdowns" tabindex="1" >
			  <option value="a_z" selected>A-Z</option>
              <option value="z_a">Z-A</option>
            </select>
          </div>
          
          </div>
          <div class="col-lg-2 col-md-4 col-sm-4 col-xs-12 padding-none pull-right select_view"> <span class="align-right" style="padding: 0px;">Select View:</span>
            <ul class="page-view nav nav-tabs">
              <li class="active" id="listView"><a ng-click="showListView()"><i class="fa fa-align-left"></i></a></li>
              <li style="display: none;"><a href="#list-left-sidebar" data-toggle="tab"><i class="fa"></i></a></li>
              <li style="display: none;"><a href="inventory-wide-sidebar-right.html"><i class="fa"></i></a></li>
              <li id="gridView"><a ng-click="showGridView()"><i class="fa"></i></a></li>
              <li style="display: none;"><a href="inventory-boxed-sidebar-left.html"><i class="fa"></i></a></li>
              <li style="display: none;"><a href="inventory-boxed-sidebar-right.html"><i class="fa"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
      <form method="post" action="#" class="listing_sort">
        <div class="select-wrapper listing_select clearfix margin-top-none margin-bottom-15">
          <div class="my-dropdown makers-dropdown">
                    <select name="make" ng-model="make" ng-change="selectMake()" class="custom" tabindex="1" >
                    	<option value="" selected>All Makes</option>
						<option ng-repeat="make in makeList" value="{{make}}">{{make}}</option>
                    </select>
                  </div>
      
          <div class="my-dropdown models-dropdown">
            <select name="model" class="custom" ng-model="model" ng-change="selectModel()">
               <option value="" selected>All Model</option>
						<option ng-repeat="model in modelList" value="{{model}}">{{model}}</option>
            </select>
          </div>
          <div class="my-dropdown years-dropdown">
         <select name="year" class="custom" ng-model="year" ng-change="selectYear()" tabindex="1" >
              <option value="" selected>Year</option>
							<option ng-repeat="year in yearList" value="{{year}}">{{year}}</option>
            </select>
          </div>
          <div class="my-dropdown fuel-dropdown">
            <select name="fuel" ng-model="fuel" ng-change="selectFuel()"  class="custom" tabindex="1" >
              <option value="" selected>Fuel Type</option>
							<option ng-repeat="fuel in fuelList" value="{{fuel}}">{{fuel}}</option>
            </select>
          </div>
          <div class="my-dropdown body-styles-dropdown">
            <select name="bodyStyle" ng-model="bodyStyle" ng-change="selectBodyStyle()" class="custom" tabindex="1" >
              <option value="" selected>All Body Styles</option>
							<option ng-repeat="bodyStyle in bodyList" value="{{bodyStyle}}">{{bodyStyle}}</option>
            </select>
          </div>
          <div ng-if="type == 'Used'" class="my-dropdown mileage-dropdown">
            <select name="mileage" ng-model="mileage" ng-change="selectMileage()" class="custom" tabindex="1" >
              <option value="">All Mileage</option>
              <option value="10000">&lt; 10000</option>
              <option value="20000">&lt; 20000</option>
              <option value="30000">&lt; 30000</option>
              <option value="40000">&lt; 40000</option>
              <option value="50000">&lt; 50000</option>
              <option value="60000">&lt; 60000</option>
              <option value="70000">&lt; 70000</option>
              <option value="80000">&lt; 80000</option>
              <option value="90000">&lt; 90000</option>
              <option value="100000"> &lt; 100000</option>
            </select>
          </div>
          <div class="my-dropdown mileage-dropdown">
            <select name="vehicleType" ng-model="vehicleType" ng-change="selectVehicleType()" class="custom" tabindex="1" >
              <option value="" selected>All Vehicle Type</option>
							<option ng-repeat="vehicleType in vehicleTypeList" value="vehicleType">{{vehicleType}}</option>
            </select>
          </div>
      	 <!--  <div class="my-dropdown prices-dropdown" style="width: 96px !important;">
            <div> <span><strong>Sort By Price:</strong></span></div>
         </div> 
          <div class="my-dropdown prices-dropdown" style="width: 100px !important;">
            <select name="price" ng-model="price" ng-change="selectPrice()" class="css-dropdowns" tabindex="1" >
			  <option value="lowToHigh">Low To High</option>
              <option value="highToLow">High To Low</option>
            </select>
          </div> -->
         
          <!-- <div class="my-dropdown prices-dropdown">
            <select name="price" class="css-dropdowns" tabindex="1" >
              <option value="">All Prices</option>
              <option>&lt; $10000</option>
              <option>&lt; $20000</option>
              <option>&lt; $30000</option>
              <option>&lt; $40000</option>
              <option>&lt; $50000</option>
              <option>&lt; $60000</option>
              <option>&lt; $70000</option>
              <option>&lt; $80000</option>
              <option>&lt; $90000</option>
              <option> &lt; $100000</option>
            </select>
          </div> -->
         <!--  <div class="my-dropdown conditions-dropdown">
            <select name="price" class="css-dropdowns" tabindex="1" >
              <option value="">Car Status</option>
              <option>Must Go!</option>
              <option>New Arrivals</option>
            </select>
          </div> -->
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 pull-right">
              <ul class="form-links top_buttons">
                <li><a href="#" ng-click="resetFilters()" class="gradient_button">Reset Filters</a></li>
              </ul>
            </div>
        </div>
        <div class="select-wrapper pagination clearfix margin-top-none margin-bottom-15">
          <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 sort-by-menu"></div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 col-lg-offset-1">
              <!-- <div class="controls full"> <a href="#" class="left-arrow"><i class="fa fa-angle-left"></i></a> <span>Page 1 of 4</span> <a href="#" class="right-arrow"><i class="fa fa-angle-right"></i></a> </div> -->
            </div>
            <!-- <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 pull-right">
              <ul class="form-links top_buttons">
                <li><a href="#" ng-click="resetFilters()" class="gradient_button">Reset Filters</a></li>
              </ul>
            </div> -->
          </div>
        </div>
      </form>
      <p ng-show="VehiclesCount == 0" style="margin-left:40%;"><b>No vehicle found!</b></p>
      <div class="clearfix"></div>
      <div class="row" ng-show="listView">
        <div class="inventory-wide-sidebar-left">
          <div class="inventory-wide-sidebar-left col-md-12  car_listings">
            <div class="sidebar" infinite-scroll='loadMore()' infinite-scroll-distance='16'>
              <div class="inventory clearfix margin-bottom-20 styled_input " ng-repeat="vehicle in vehicleList"> <a href="${pageContext.request.contextPath}/vehicleDetails/{{vehicle.vin}}" class="inventory">
                <div class="title">{{vehicle.title}}</div>
                <img class="preview" src="${hostnameimg}{{vehicle.path}}" alt="preview" style="width:210px;height:140px;">
                <table class="options-primary">
                  <tbody>
                    <tr ng-if="vehicle.bodyStyle != null">
                      <td class="option primary">Body Style: </td>
                      <td class="spec">{{vehicle.bodyStyle}}</td>
                    </tr>
                    <tr ng-show="vehicle.typeofVehicle == 'Used' && vehicle.mileage != null">
                      <td class="option primary">Mileage: </td>
                      <td class="spec">{{vehicle.mileage}}</td>
                    </tr>
                    <tr ng-if="vehicle.transmission != null">
                      <td class="option primary">Transmission: </td>
                      <td class="spec">{{vehicle.transmission}}</td>
                    </tr>
                    <tr ng-if="vehicle.drivetrain != null">
                      <td class="option primary">Drivetrain: </td>
                      <td class="spec">{{vehicle.drivetrain}}</td>
                    </tr>
                    <tr ng-if="vehicle.engine != null">
                      <td class="option primary">Engine: </td>
                      <td class="spec">{{vehicle.engine}}</td>
                    </tr>
                  </tbody>
                </table>
                <table class="options-secondary">
                  <tbody>
                    <tr>
                      <td class="option secondary">Exterior Color: </td>
                      <td class="spec">{{vehicle.extColor}}</td>
                    </tr>
                    <tr>
                      <td class="option secondary">Interior Color: </td>
                      <td class="spec">{{vehicle.intColor}}</td>
                    </tr>
                    <tr>
                      <td class="option secondary">MPG: </td>
                      <td class="spec"> {{vehicle.cityMileage}} /  {{vehicle.highwayMileage}}</td>
                    </tr>
                    <tr>
                      <td class="option secondary">Stock Number: </td>
                      <td class="spec">{{vehicle.stock}}</td>
                    </tr>
                    <tr>
                      <td class="option secondary">VIN Number: </td>
                      <td class="spec">{{vehicle.vin}}</td>
                    </tr>
                  </tbody>
                </table>
                <div class="view-details gradient_button" style="top: 110px" ><i class="fa fa-plus-circle"></i> View Details </div>
                
                <div class="clearfix"></div>
                </a>
                <div class="price " style="top: 12px"> <b>Price:</b><br>
                  <div class="figure"><span> <span>$</span>{{(vehicle.price).replace("$","") | number}}</span><br>
                  </div>
                  <div class="tax">Plus Sales Tax</div>
                </div>
                <a target="_blank" href="http://www.carfax.com/VehicleHistory/p/Report.cfx?vin={{vehicle.vin}}&amp;partner=AAG_0"> <img style="left: 250px;top:120px;" class="carfax" alt="CarFax Report" src="${pageContext.request.contextPath}/resources/autolinx/images/Carfax-logo-1.png"></a> </div>
            
              </div>
              </div>
      </div>
      </div>
      
      <div class="inventory_box car_listings boxed boxed_full" infinite-scroll='loadMore()' infinite-scroll-distance='2' ng-show="gridView">
      
      <div class="row">
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12" ng-repeat="vehicle in vehicleList">
          <div class="inventory clearfix margin-bottom-20 styled_input "> <a href="vehicleDetails/{{vehicle.vin}}" class="inventory">
            <div class="title">{{vehicle.title}}</div>
            <img alt="preview" class="preview" src="${hostnameimg}{{vehicle.path}}">
            <table class="options-primary">
              <tbody>
                <tr>
                  <td class="option primary">Body Style: </td>
                  <td class="spec">{{vehicle.bodyStyle}}</td>
                </tr>
                <tr ng-show="vehicle.typeofVehicle == 'Used'">
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
              </tbody>
            </table>
            <table class="options-secondary">
              <tbody>
                <tr>
                  <td class="option secondary">Exterior Color: </td>
                  <td class="spec">{{vehicle.extColor}}</td>
                </tr>
                <tr>
                  <td class="option secondary">Interior Color: </td>
                  <td class="spec">{{vehicle.intColor}}</td>
                </tr>
                <tr>
                  <td class="option secondary">MPG: </td>
                  <td class="spec"> {{vehicle.cityMileage}} /  {{vehicle.highwayMileage}}</td>
                </tr>
                <tr>
                  <td class="option secondary">Stock Number: </td>
                  <td class="spec">{{vehicle.stock}}</td>
                </tr>
                <tr>
                  <td class="option secondary">VIN Number: </td>
                  <td class="spec">{{vehicle.vin}}</td>
                </tr>
              </tbody>
            </table>
            <div class="view-details gradient_button"><i class="fa fa-plus-circle"></i> View Details </div>
            <div class="clearfix"></div>
            </a>
            <div class="price "> <b>Price:</b><br>
              <div class="figure"><span> $ {{(vehicle.price).replace("$","") | number }}</span><br>
              </div>
              <div class="tax">Plus Sales Tax</div>
            </div>
            <a target="_blank" href="http://www.carfax.com/VehicleHistory/p/Report.cfx?vin=WBSDX9C56BE783980&amp;partner=AAG_0"> <img class="carfax" alt="CarFax Report" src="${pageContext.request.contextPath}/resources/autolinx/images/Carfax-logo-1.png"> </a> </div>
        </div>

        <div class="clearfix"></div>
      </div>
      
    </div>
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
              <li><a href="${pageContext.request.contextPath}/warranty"> Warranty</a></li>
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
	.car_listings .carfax {
  display: block !important;
}
.custom{
	background: #F7F7F7;
    border: 1px solid rgba(0, 0, 0, 0.0980392);
    border-radius: 4px;
    width: 100%;
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
