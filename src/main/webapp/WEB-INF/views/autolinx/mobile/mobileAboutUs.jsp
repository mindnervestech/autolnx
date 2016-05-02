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
    	<h3>OUR MISSION IS SIMPLE</h3>
        <p><span class="firstcharacter">T</span>he Autolinx Inc. team has over 30 years of combined experience in the areas of automotive and online sales and strives to provide you with the greatest experience possible when purchasing your new pre-owned vehicle. Our experienced advisors are handpicked for their courtesy, knowledge and enthusiasm. They will make every effort to procure the best selection of quality, pre-owned vehicles on the market. Autolinx offers an upscale car buying experience, supported behind the scenes by some of the industry’s most innovative technology solutions to bring our customers the best quality vehicles at the most competitive prices.</p>     
        
        <p><img class="alignleft" src="${pageContext.request.contextPath}/resources/autolinx/images/DSC_0656.jpg" alt="automotive">Our Mission is to offer a unique and upscale vehicle buying experience to every customer, every time, by combining our collective passions for cars, technology and customer service<br><br> Visit our showroom today and drive away with your new pre-owned quality car. Contact us via phone or email to set up a time convenient for you, or simply drop by for a great cup of coffee.<br><br>

Sincerely, The Autolinx Team</p>
		
        <p style="width:37%;">${myprofile.fullAddress }
          
         <br> ${myphone } 
          <br>
          <a class="linkIn" href="mailto:info@autolinxinc.com">${myprofile.email }</a><br>
        </p>
        
        <a style="text-decoration: none;" href="http://maps.google.com/?q=${myprofile.fullAddress }"><h3>Directions</h3></a>

		
        <h4>WHAT WE SPECIALIZE IN</h4>	
        
        <div class="progressbar">
            <div class="bs-example">
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="100">Mercedes</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="90">BMW</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="80">Audi</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="70">Jaguar</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="60">Land Rover</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="50">Lamborghini</div>
              </div>
              <div class="progress margin-bottom-15">
                <div class="progress-bar progress-bar-danger" data-width="40">Ferrari</div>
              </div>
            </div>
          </div>
		
        <h4>TESTIMONIALS</h4>		
		<div class="testimonial">
            <ul class="testimonial_slider">
                <li>
                    <blockquote class="style1"><span>Let me try and list all the reasons I am giving a five star review to these guys. &nbsp;First of all they have a large selection of amazing cars and good prices. &nbsp;They also have a genuine desire to create a great buying experience. &nbsp;Their level of service and attention to the details of removing stress focusing on fun is obvious in the first 10 minutes you are there. &nbsp;They let me drive 5 cars which were all great and pricing seemed to be very approachable. &nbsp;There was no pressure at all. &nbsp;After the fifth drive Nick asked which car I liked. &nbsp;I selected the very low miles lexus. &nbsp;We sat down and had some lunch then Ed asked what I wanted. &nbsp;I had a trade and told him the deal I was looking for. &nbsp;I asked him if I had made it clear and he said yes. &nbsp;Two minutes later we show hands and I had the most awesome car at thousands less than the Lexus dealer had offered. &nbsp;I want to buy three more now. &nbsp;THESE GUYS ROCK.</span><strong>Charles H.</strong></blockquote>
                </li>
                <li>
                    <blockquote class="style1"><span>I can’t say enough good things about this dealership. I’ve purchased two cars (BMW most recently) and have recommended many friends &ndash; all with great results. Ed and his team are straight shooters, very professional and knowledgable. They only have low mileage, gorgeous cars at very competitive prices &ndash; my biggest issue was which car to buy. If you’re looking for low mileage, honest cars at a great price, make sure to put Autolinx on your list of dealerships to visit.</span><strong>Marco M.</strong> </blockquote>
                </li>
                <li>
                    <blockquote class="style1"><span>What can I say: one of the best used car dealership I have ever walked into. Professional service and they really understand cars. Very knowledgeable people. Keep more cars coming!</span><strong>VP.</strong> </blockquote>
                </li>
                
                <li>
                    <blockquote class="style1"><span>What can I say: one of the best used car dealership I have ever walked into. Professional service and they really understand cars. Very knowledgeable people. Keep more cars coming!</span><strong>VP.</strong> </blockquote>
                </li>
                
            </ul>

        </div>
        
        <div class="clearfix"></div>
		
        
		 <h4>LATEST AUTOMOTIVE NEWS</h4>	
         <div class="arrow1 pull-right blog_post_controls"></div>
         <ul class="recent_blog_posts">
                        <li>
                            <div class="blog-list">
                             
                                    <h4>Ask Your Dealer -  Should I Buy or Finance My Used Luxury Car</h4>
                                    <span>May 26, 2015 /</span> <span class="text-red">0 Comments</span>
                                    <p>You have finally decided to buy that BMW, Lexus, Mercedes, you always dreamed about, however buying a luxury ca<a class="linkIn" href="#">[...]</a></p>
                               
                            </div>
                            <div class="clearfix"></div>
                        </li>
                        <li>
                            <div class="blog-list">
                                
                                    <h4>Autolinx Celebrity Profile - Paul Newman</h4>
                                    <span>May 22, 2015  /</span> <span class="text-red">7 Comments</span>
                                    <p>[caption id="attachment_5761" align="aligncenter" width="493"] Paul was just another guy swept up in the dirt, guts<a class="linkIn" href="#">[...]</a></p>
                               
                            </div>
                            <div class="clearfix"></div>
                        </li>
                        <li>
                            <div class="blog-list">
                                
                                    <h4>Ask Your Dealer -  Should I Buy or Finance My Used Luxury Car</h4>
                                    <span>May 26, 2015 /</span> <span class="text-red">0 Comments</span>
                                    <p>You have finally decided to buy that BMW, Lexus, Mercedes, you always dreamed about, however buying a luxury ca<a class="linkIn" href="#">[...]</a></p>
                              
                            </div>
                            <div class="clearfix"></div>
                        </li>
                    </ul>
         
    	<div class="clearClass"></div>    
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
          
	<h4>Subscribe to the official AutoLinx newsletter-Vehi-Linx</h4>
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