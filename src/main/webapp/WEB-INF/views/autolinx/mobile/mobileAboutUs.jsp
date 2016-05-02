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

</head>

<body ng-controller="MobileContactUsController">
<div id="loading" style='position:fixed;display:none;
    							top:50%;
    							left:50%;
    							z-index:1;'>
    		<img alt="loading" src="${pageContext.request.contextPath}/resources/autolinx/images/loading.gif"/>
    	</div>
<div class="wrapperIn">
<header>
	<div class="toolbar1">
		<ul>
           <li><a href="http://maps.google.com/?q=${myprofile.fullAddress }">Directions</a></li>
            <li><a href="tel:+1${myprofile.phone }"><i class="fa fa-phone">&nbsp; </i>${myphone } </a></li>
            
          </ul>
	</div>
    <div class="logo">
    	<a href="${pageContext.request.contextPath}/mobile/home"><img src="${hostnameimg}${siteLogo.logoPath}" style="height:100px;"></a>
    </div>
</header>
    <div class="topBanner">
    	<img src="${pageContext.request.contextPath}/resources/autolinx/images/mobile/dynamic-header-1.jpg" alt="">
        <h1 class="topBannerText">Contact Us<br> <span>Located on Sonoma Boulevard in Vallejo, CA - in the heart of beautiful and historic Solano County.</span></h1>
    </div>
    <div class="message-shadow1"></div>
    

	<div class="aboutBox">
    	<h3>CONTACT INFORMATION</h3>
        <div class="icon_address">
                  <p><i class="fa fa-map-marker"></i><strong>   Address:</strong></p>
                  <p style="width:37%;">${myprofile.fullAddress }
         </div>     
          <div class="icon_address" style="line-height: 30px;">
         <br><i class="fa fa-phone"></i>&nbsp;&nbsp;Phone:&nbsp;&nbsp;${myphone } 
          <br><i class="fa fa-envelope-o"></i>&nbsp;&nbsp;Email:&nbsp;&nbsp;<a class="linkIn" href="mailto:info@autolinxinc.com">${myprofile.email }</a>
          <br><i class="fa fa-laptop"></i>&nbsp;&nbsp;Web:&nbsp;&nbsp; <a href="http://company.com"> ${myprofile.web}</a><br>
        </div>
        </p>
        
        <h4>BUSINESS HOURS</h4>	
        
        <div class="progressbar">
            <div class="row">
                <div class="col-sm-4">
                  <div class="deparment">
                    <table class="table table-bordered no-border font-12px hours_table ">
                      <thead>
                        <tr>
                          <td colspan="2"><strong>Sales Department</strong></td>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Mon:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Tue:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Wed:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Thu:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Fri:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Sat:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Sun:</td>
                          <td>10:00am - 4:00pm</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="deparment">
                    <table class="table table-bordered no-border font-12px hours_table ">
                      <thead>
                        <tr>
                          <td colspan="2"><strong>Service Department</strong></td>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Mon:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Tue:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Wed:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Thu:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Fri:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Sat:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Sun:</td>
                          <td>10:00am - 4:00pm</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="deparment">
                    <table class="table table-bordered no-border font-12px hours_table ">
                      <thead>
                        <tr>
                          <td colspan="2"><strong>Parts Department</strong></td>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Mon:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Tue:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Wed:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Thu:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Fri:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Sat:</td>
                          <td>9:00am - 7:00pm</td>
                        </tr>
                        <tr>
                          <td>Sun:</td>
                          <td>10:00am - 4:00pm</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
          </div>
		   
    </div>
	
          <input type="hidden" id="contextpath" value="${pageContext.request.contextPath}">
          
	
<footer>
	<h4>CONTACT FORM</h4>
	<p ng-show="showMsg" style="margin-bottom: 3%;color: red;"><b>Thank you for your request, one of our representative will contact you shortly</b></p>
    <form name="fome1" id="fromSubmit" ng-submit="saveContact()" novalidate> 
                   <input type="text" name="name" ng-model="contact.name" ng-class="nameText == 1? 'textborder' : ''" class="inputInner" placeholder="Name  (Required)" required>
                     <span class="help-inline" ng-show="submitted && form1.name.$error.required">Required</span>
                  <input type="text" name="number" ng-model="contact.number" pattern="\d*" title="Please enter numbers" class="inputInner" placeholder="Number" >
                  <input type="email" name="email" ng-model="contact.email" class="inputInner" ng-class="emailText == 1? 'textborder' : ''" placeholder="Email  (Required)" required>
                  <textarea name="message" class="inputInner" ng-model="contact.message" placeholder="Your message" rows="7"></textarea>
                  <input id="submit_btn" ng-show="showMsg == false" type="submit" value="Send Message"> 
                  <input id="submit_btn" ng-show="showMsg" disabled="disabled" type="submit" value="Send Message" style="background-color: burlywood;">   <!-- data-toggle="modal" data-target="#myModal" -->  
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

<style>
	.textborder{
		border: 2px solid red !important;
	}
</style>

<script>
$(document).ready(function() {
    $("#submit_btn").click(function() { 
        //collect input field values
        var user_name       = $("input[name='name']").val(); 
        var user_email      = $("input[name='email']").val();
        var user_message    = $("textarea[name='msg']").val();
        
        //simple validation at client's end
        //we simply change border color to red if empty field using .css()
        var proceed = true;
        if(user_name==""){ 
            $("input[name='name']").css("border", "1px solid red"); 
            proceed = false;
        } else {
			$("input[name='name']").css("border", "none");
		}
        if(user_email==""){ 
            $("input[name='email']").css("border", "1px solid red"); 
            proceed = false;
        } else {
			$("input[name='email']").css("border", "none");
		}
        if(user_message=="") {  
            $("textarea[name='msg']").css("border", "1px solid red"); 
            proceed = false;
        } else {
			$("textarea[name='msg']").css("border", "none");
		}
        
        //everything looks good! proceed...
        if(proceed) {
            //data to be sent to server
            post_data = {'userName':user_name, 'userEmail':user_email, 'userMessage':user_message};
            
            //Ajax post data to server
            $.post('contact_process.php', post_data, function(data){  
                
                //load success massage in #result div element, with slide effect.       
                $("#result").hide().html('<div class="success">'+data+'</div>').slideDown();
                
                //reset values in all input fields
                $('#contact_form input[type="text"]').val('');
				$('#contact_form input[type="email"]').val(''); 
                $('#contact_form textarea').val(''); 
                
            }).fail(function(err) {  //load any error data
                $("#result").hide().html('<div class="success">Thank you for your request, one of our representative will contact you shortly</div>').slideDown();
            });
        }
    });
    
    //reset previously set border colors and hide all message on .keyup()
    $("#contact_form input, #contact_form textarea").keyup(function() { 
        $("#contact_form input, #contact_form textarea").css('border-color',''); 
        $("#result").slideUp();
    });
    
});
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