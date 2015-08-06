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
<link href="resources/autolinx/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="resources/autolinx/js/html5shiv.js"></script>
      <script src="resources/autolinx/js/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Yellowtail%7COpen%20Sans%3A400%2C300%2C600%2C700%2C800" media="screen" />
<!-- Custom styles for this template -->
<link href="resources/autolinx/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="resources/autolinx/css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="resources/autolinx/css/jquery.bxslider.css" type="text/css" media="screen" />
<link href="resources/autolinx/css/jquery.fancybox.css" rel="stylesheet">
<link href="resources/autolinx/css/jquery.selectbox.css" rel="stylesheet">
<link href="resources/autolinx/css/style.css" rel="stylesheet">
<link href="resources/autolinx/css/mobile.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/autolinx/css/settings.css" media="screen" />
<link href="resources/autolinx/css/animate.min.css" rel="stylesheet">
<link href="resources/autolinx/css/ts.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="resources/autolinx/js/jquery.min.js"></script>
<script src="resources/autolinx/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/wow.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/angular.min.js"></script>
<script type="text/javascript" src="resources/autolinx/js/ng-infinite-scroll.js"></script>
<script type="text/javascript" src="resources/autolinx/scripts/app.js"></script>
<script type="text/javascript" src="resources/autolinx/scripts/controller.js"></script>

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

<body ng-controller="BlogController">
<input type="hidden" id="contextpath" value="${pageContext.request.contextPath}">
<!--Header Start-->
<header class="clearfix affix-topno_resize no_header_resize_mobile header-inner" no_resize="">
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
            <li><a href="tel:18005670123"><i class="fa fa-phone"></i> (707) 552-5469</a></li>
            <li class="address"><a href="contact.html"><i class="fa fa-map-marker"></i>3300 Sonoma Blvd Vallejo, California 94590 </a></li>
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
            <ul class="nav navbar-nav pull-right">
             <li><a href="${pageContext.request.contextPath}">Home</a></li>
              <li><a href="${pageContext.request.contextPath}/findVehicles">Inventory</a></li>
              <li class="active"><a href="${pageContext.request.contextPath}/warranty">Warranty</a></li>
              <li><a href="${pageContext.request.contextPath}/aboutUs">About Us</a></li>
              <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
              <li><a href="">Contact Us</a></li>
            </ul>
          </div>
          <!-- /.navbar-collapse --> 
        </div>
        <!-- /.container-fluid --> 
      </nav>
    </div>
    <div class="header_shadow"></div>
  </div>
</header>
<!--Header End-->
<div class="clearfix"></div>
<section id="secondary-banner" class="dynamic-image-4"><!--for other images just change the class name of this section block like, class="dynamic-image-2" and add css for the changed class-->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <h2>AutoLinx Blog</h2>
        <h4>Latest Industry News</h4>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6 ">
        <ul class="breadcrumb">
          <li><a href="#">Home</a></li>
          <li>AutoLinx Blog</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!--#secondary-banner ends-->
<div class="message-shadow"></div>
<div class="clearfix"></div>
<section class="content" ng-init="init()">
  <div class="container">
    <div class="inner-page blog-container row">
      <div class="col-lg-9 col-md-7 col-sm-7 col-xs-12 padding-left-none padding-right-15" infinite-scroll='loadMore()' infinite-scroll-distance='3'>
        <div class="blog-content margin-bottom-40" ng-repeat="blog in blogList">
          <div class="blog-title">
            <h2 class="margin-bottom-25"><a href="http://www.autolinxinc.com/ask-your-dealer-should-i-buy-or-finance-my-used-luxury-car/">{{blog.title}}</a></h2>
          </div>
          <ul class="margin-top-10 margin-bottom-15">
            <li class="fa fa-calendar"><a href="#">{{blog.postedDate}}</a></li>
            <li class="fa fa-folder-open"> <a href="http://www.autolinxinc.com/category/uncategorized/">Uncategorized</a> </li>
            <li class="fa fa-user"><span class="theme_font">Posted by</span> <a rel="author" title="Posts by Glider LLC" href="http://www.autolinxinc.com/author/glider/">{{blog.postedBy}}</a></li>
            <li class="fa fa-comments"><a title="Comment on Ask Your Dealer &ndash;  Should I Buy or Finance My Used Luxury Car" href="http://www.autolinxinc.com/ask-your-dealer-should-i-buy-or-finance-my-used-luxury-car/#respond">No comments yet</a></li>
          </ul>
          <div class="post-entry clearfix">
            <div compile="{{blog.description}}"></div>
            <div class="clearfix"></div>
            <div class="blog-end margin-top-20">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 read-more"><a href="">Read More...</a></div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-right post-tags"><span class="fa fa-tags tags"> </span></div>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
        
        <div class="clearfix"></div>
        
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <!--container ends--> 
</section>
<!--content ends-->
<div class="clearfix"></div>

<!--footer Start-->
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
            <li><i class="fa fa-map-marker"></i> <strong>Address:</strong> 3300 Sonoma Blvd,Vallejo, California, 94590</li>
            <li><i class="fa fa-phone"></i> <strong>Phone:</strong> (707) 552-5469 </li>
            <li><i class="fa fa-envelope-o"></i> <strong>Email:</strong><a href="#">info@autolinxinc.com</a></li>
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
        <div class="logo-footer margin-bottom-20 md-margin-bottom-20 sm-margin-bottom-10 xs-margin-bottom-20"><a href="#"> <a class="logo-f" href="${pageContext.request.contextPath}"><img src="/glivrImg/images${siteLogo.logoPath}" style="height:100px;"></a> </div>
        <p>Powered by <a href="#">GLIDER AUTOS</a></p>
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
          <li><a href="">Contact</a></li>
        </ul>
      </div>
    </div>
  </div>
</section>
<div class="back_to_top"> <img src="http://demo.themesuite.com/automotive/images/arrow-up.png" alt="scroll up" /> </div>
<!-- Bootstrap core JavaScript --> <script src="resources/autolinx/js/retina.js"></script> 
<script src="resources/autolinx/js/main.js"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.fancybox.js"></script> 
<script src="resources/autolinx/js/modernizr.custom.js"></script> <script defer src="resources/autolinx/js/jquery.flexslider.js"></script> 
<script src="resources/autolinx/js/jquery.bxslider.js" type="text/javascript"></script> 
<script src="resources/autolinx/js/jquery.selectbox-0.2.js" type="text/javascript"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.mousewheel.js"></script> 
<script type="text/javascript" src="resources/autolinx/js/jquery.easing.js"></script>
</body>
</html>