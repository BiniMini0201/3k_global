<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<title>3K Global</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- CSS Global Compulsory-->
<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/headers/header1.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="shortcut icon" href="favicon.ico">
<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">
<link rel="stylesheet"
	href="assets/plugins/bxslider/jquery.bxslider.css">
<link rel="stylesheet"
	href="assets/plugins/layer_slider/css/layerslider.css" type="text/css">
<!-- CSS Theme -->
<link rel="stylesheet" href="assets/css/themes/default.css"
	id="style_color">
<link rel="stylesheet" href="assets/css/themes/headers/default.css"
	id="style_color-header-1">
</head>

<body>
	<!--=== Style Switcher ===-->
	<!--
<i class="style-switcher-btn icon-cogs hidden-xs"></i>
<div class="style-switcher">
    <div class="theme-close"><i class="icon-remove"></i></div>
    <div class="theme-heading">Theme Colors</div>
    <ul class="list-unstyled">
        <li class="theme-default theme-active" data-style="default" data-header="light"></li>
        <li class="theme-blue" data-style="blue" data-header="light"></li>
        <li class="theme-orange" data-style="orange" data-header="light"></li>
        <li class="theme-red" data-style="red" data-header="light"></li>
        <li class="theme-light last" data-style="light" data-header="light"></li>
    </ul>
    <div style="margin-bottom:18px;"></div>
    <div class="theme-heading">Layouts</div>
    <div class="text-center">
        <a href="#" class="btn-u btn-u-green btn-block active-switcher-btn wide-layout-btn">Wide</a>
        <a href="#" class="btn-u btn-u-green btn-block boxed-layout-btn">Boxed</a>
    </div>
</div>
-->
	<!--/style-switcher-->
	<!--=== End Style Switcher ===-->

	<!--=== Top ===-->
	<div class="top">
		<div class="container">
			<ul class="loginbar pull-right">
				<li><a href="page_faq.html">공지사항</a></li>
				<li class="devider"></li>
				<li><a href="page_faq.html">찾아오시는길</a></li>
			</ul>
		</div>
	</div>
	<!--/top-->
	<!--=== End Top ===-->

	<!--=== Header ===-->
	<div class="header">
		<div class="navbar navbar-default" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->

				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-responsive-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><h1>3K Global</h1> <!--<img id="logo-header" src="N:/ë´ ë¬¸ì/(ì£¼)3Kê¸ë¡ë² - NEW/ì¨ë¼ì¸ì¼íëª°ê´ë ¨/ííì´ì§/assets/img/hplogo.jpg" alt="Logo">
                    --> </a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-responsive-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown" data-delay="0"
							data-close-others="false"> 3K Global <i
								class="icon-angle-down"></i>
						</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-delay="0" data-close-others="false"> 회사소개 <i
								class="icon-angle-down"></i>
						</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-delay="0" data-close-others="false"> 회사연혁 <i
								class="icon-angle-down"></i>
						</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-delay="0" data-close-others="false"> 공지사항 <i
								class="icon-angle-down"></i>
						</a></li>
						<!--
                    <li class="hidden-sm"><a class="search"><i class="icon-search search-btn"></i></a></li>
                    -->
					</ul>
					<!-- 
                <div class="search-open">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">
                            <button class="btn-u" type="button">Go</button>
                        </span>
                    </div>
                     -->
					<!-- /input-group -->
				</div>
			</div>
			<!-- /navbar-collapse -->
		</div>
	</div>
	<!--/header-->
	<!--=== End Header ===-->

	<!--=== Slider ===-->
	<div class="layer_slider">
		<div id="layerslider-container-fw">
			<div id="layerslider"
				style="width: 100%; height: 500px; margin: 0px auto;">
				<!--First Slide-->
				<div class="ls-layer"
					style="slidedirection: right; transition2d: 24, 25, 27, 28;">

					<img src="assets/img/3k2.jpg" class="ls-bg" alt="Slide background">
					<!--
                <img src="assets/img/mockup/iphone1.png" alt="Slider Image" class="ls-s-1" style=" top:110px; left: 240px; slidedirection : left; slideoutdirection : bottom; durationin : 1500; durationout : 1500; ">
                -->
					<!--
                <img src="assets/img/mockup/iphone.png" alt="Slider image" class="ls-s-1" style=" top:60px; left: 40px; slidedirection : left; slideoutdirection : bottom; durationin : 2500; durationout : 2500; ">
                -->
					<!--
                <span class="ls-s-1" style=" text-transform: uppercase; line-height: 45px; font-size:35px; color:#fff; top:200px; left: 590px; slidedirection : top; slideoutdirection : bototm; durationin : 3500; durationout : 3500; ">
                    Fully Responsive <br> Bootstrap 3 Template
                </span>
                -->
					<!--
                <a class="btn-u btn-u-orange ls-s1" href="#" style=" padding: 9px 20px; font-size:25px; top:340px; left: 590px; slidedirection : bottom; slideoutdirection : top; durationin : 3500; durationout : 3500; ">
                    Download Now
                </a>
                -->
				</div>
				<!--End First Slide-->

				<!--Second Slide-->
				<div class="ls-layer" style="slidedirection: top;">
					<img src="assets/img/3k.jpg" class="ls-bg" alt="Slide background">
					<!--    
                <i class="icon-chevron-sign-right ls-s-1" style=" color: #fff; font-size: 24px; top:70px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 1500; durationout : 500; "></i> 
                -->
					<!--
                <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:70px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 1500; durationout : 500; ">
                    Fully Responsive and Easy to Customize
                </span>
                -->
					<!--
                <i class="icon-chevron-sign-right ls-s-1" style=" color: #fff; font-size: 24px; top:120px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 2500; durationout : 1500; "></i> 
                -->
					<!--
                <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:120px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 2500; durationout : 1500; ">
                    Revolution and Layer Slider Included 
                </span>
                -->
					<!--
                <i class="icon-chevron-sign-right ls-s-1" style=" color: #fff; font-size: 24px; top:170px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 3500; durationout : 3500; "></i> 
                -->
					<!--
                <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:170px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 3500; durationout : 2500; ">
                    1000+ Glyphicons Pro and Font Awesome Icons 
                </span>
                -->
					<!--
                <i class="icon-chevron-sign-right ls-s-1" style=" color: #fff; font-size: 24px; top:220px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 4500; durationout : 3500; "></i> 
                -->
					<!--
                <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:220px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 4500; durationout : 3500; ">
                    Revolution and Layer Slider Included 
                </span>
                -->
					<!--
                <i class="icon-chevron-sign-right ls-s-1" style=" color: #fff; font-size: 24px; top:270px; left: 40px; slidedirection : left; slideoutdirection : top; durationin : 5500; durationout : 4500; "></i> 
                -->
					<!--
                <span class="ls-s-2" style=" color: #fff; font-weight: 200; font-size: 22px; top:270px; left: 70px; slidedirection : top; slideoutdirection : bottom; durationin : 5500; durationout : 4500; ">
                    60+ Template Pages and 20+ Plugins Included
                </span>
                -->
					<!--
                <a class="btn-u btn-u-blue ls-s1" href="#" style=" padding: 9px 20px; font-size:25px; top:340px; left: 40px; slidedirection : bottom; slideoutdirection : bottom; durationin : 6500; durationout : 3500; ">
                    Twitter Bootstrap 3
                </a>
                -->
					<!--
                <img src="assets/img/mockup/iphone1.png" alt="Slider Image" class="ls-s-1" style=" top:30px; left: 650px; slidedirection : right; slideoutdirection : bottom; durationin : 1500; durationout : 1500; ">
                -->
				</div>
				<!--End Second Slide-->

				<!--Third Slide-->
				<div class="ls-layer"
					style="slidedirection: right; transition2d: 92, 93, 105;">
					<img src="assets/img/sliders/layer/bg2.jpg" class="ls-bg"
						alt="Slide background"> <span class="ls-s-1"
						style="color: #777; line-height: 45px; font-weight: 200; font-size: 35px; top: 100px; left: 50px; slidedirection: top; slideoutdirection: bottom; durationin: 1000; durationout: 1000;">
						Unify is Fully Responsive <br> Twitter Bootstrap 3 Template
					</span> <a class="btn-u btn-u-green ls-s-1" href="#"
						style="padding: 9px 20px; font-size: 25px; top: 220px; left: 50px; slidedirection: bottom; slideoutdirection: bottom; durationin: 2000; durationout: 2000;">
						Find Out More </a> <img src="assets/img/mockup/iphone.png"
						alt="Slider Image" class="ls-s-1"
						style="top: 30px; left: 670px; slidedirection: right; slideoutdirection: bottom; durationin: 3000; durationout: 3000;">
				</div>
				<!--End Third Slide-->
			</div>
		</div>
	</div>
	<!--/layer_slider-->
	<!--=== End Slider ===-->

	<!--=== Purchase Block ===-->
	<!--<div class="purchase">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <span>Unify is a clean and fully responsive incredible Template.</span>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi  vehicula sem ut volutpat. Ut non libero magna fusce condimentum eleifend enim a feugiat.</p>
            </div>            
            <div class="col-md-3">
                <a href="#" class="btn-buy hover-effect">Purchase Now</a>            
            </div>
        </div>
    </div>
</div>-->
	<!--/row-->

	<!-- End Purchase Block -->

	<!--=== Content Part ===-->
	<div class="container">
		<!-- Service Blocks -->
		<div class="row margin-bottom-10">
			<div class="col-md-4 service-alternative">
				<div class="service">
					<i class="icon-resize-small service-icon"></i>
					<div class="desc">
						<h4>ê³µì§ì¬í­1</h4>
						<p>ê³µì§ì¬í­1 ì¸ë¶ë´ì©</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 service-alternative">
				<div class="service">
					<i class="icon-cogs service-icon"></i>
					<div class="desc">
						<h4>ê³µì§ì¬í­2</h4>
						<p>ê³µì§ì¬í­2 ì¸ë¶ë´ì©</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 service-alternative">
				<div class="service">
					<i class="icon-plane service-icon"></i>
					<div class="desc">
						<h4>ê³µì§ì¬í­3</h4>
						<p>ê³µì§ì¬í­3 ì¸ë¶ì¬í­</p>
					</div>
				</div>
			</div>
		</div>
		<!--/row-->
		<!-- End Service Blokcs -->

		<!-- Recent Works -->
		<div class="row margin-bottom-40">
			<div class="col-lg-12">
				<div class="headline">
					<h2>íì¬ìê°</h2>
				</div>
				<ul class="bxslider recent-work">
					<li><a href="#"> <em class="overflow-hidden"><img
								src="assets/img/main/1.jpg" alt="" /></em> <span> <strong>Happy
									New Year</strong> <i>Anim pariatur cliche reprehenderit</i>
						</span>
					</a></li>
					<li><a href="#"> <em class="overflow-hidden"><img
								src="assets/img/main/2.jpg" alt="" /></em> <span> <strong>Award
									Winning Agency</strong> <i>Responsive Bootstrap Template</i>
						</span>
					</a></li>
					<li><a href="#"> <em class="overflow-hidden"><img
								src="assets/img/main/3.jpg" alt="" /></em> <span> <strong>Wolf
									Moon Officia</strong> <i>Pariatur prehe cliche reprehrit</i>
						</span>
					</a></li>
					<li><a href="#"> <em class="overflow-hidden"><img
								src="assets/img/main/4.jpg" alt="" /></em> <span> <strong>Food
									Truck Quinoa Nesciunt</strong> <i>Craft labore wes anderson cred</i>
						</span>
					</a></li>
				</ul>
			</div>
		</div>
		<!--/row-->
		<!-- End Recent Works -->

		<!-- Info Blokcs -->

		<div class="row margin-bottom-10">
			<!-- Welcome Block -->
			<div class="col-md-8">
				<div class="headline">
					<h2>íì¬ì°í</h2>
				</div>
				<div class="row">
					<div class="col-sm-4">
						<img class="img-responsive margin-bottom-20" src="" alt="" />
					</div>
					<div class="col-sm-8">
						<p>Unify is an incredibly beautiful responsive Bootstrap
							Template for corporate and creative professionals. It works on
							all major web browsers, tablets and phone.</p>
						<!-- 
                    <ul class="list-unstyled margin-bottom-20">
                        <li><i class="icon-ok color-green"></i> Donec id elit non mi porta gravida</li>
                        <li><i class="icon-ok color-green"></i> Corporate and Creative</li>
                        <li><i class="icon-ok color-green"></i> Responsive Bootstrap Template</li>
                        <li><i class="icon-ok color-green"></i> Corporate and Creative</li>
                    </ul>
                    -->
					</div>
				</div>

				<blockquote class="hero-unify">
					<p>ë¬¸êµ¬ íë§ë</p>
					<small>CEO, @@@</small>
				</blockquote>
			</div>
			<!--/col-md-8-->

			<!-- Latest Shots -->
			<!--
        <div class="col-md-4">
			<div class="headline"><h2>ì´ì¡ê³¼ì </h2></div>
			<div id="myCarousel" class="carousel slide carousel-v1">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="assets/img/main/5.jpg" alt="">
                        <div class="carousel-caption">
                            <p>Facilisis odio, dapibus ac justo acilisis gestinas.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="assets/img/main/4.jpg" alt="">
                        <div class="carousel-caption">
                            <p>Cras justo odio, dapibus ac facilisis into egestas.</p>
                        </div>
                        </div>
                    <div class="item">
                        <img src="assets/img/main/3.jpg" alt="">
                        <div class="carousel-caption">
                            <p>Justo cras odio apibus ac afilisis lingestas de.</p>
                        </div>
                    </div>
                </div>
                
                <div class="carousel-arrow">
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <i class="icon-angle-left"></i>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <i class="icon-angle-right"></i>
                    </a>
                </div>
			</div>
        </div>
        -->
			<!--/col-md-4-->
		</div>
		<!--/row-->
		<!-- End Info Blokcs -->

		<!-- Our Clients -->
		<div id="clients-flexslider" class="flexslider home clients">
			<div class="headline">
				<h2>ë©íìì²´</h2>
			</div>
			<ul class="slides">
				<li><a href="#"> <img src="assets/img/clients/hp_grey.png"
						alt="" /> <img src="assets/img/clients/hp.png" class="color-img"
						alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/igneus_grey.png" alt="" /> <img
						src="assets/img/clients/igneus.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/vadafone_grey.png" alt="" /> <img
						src="assets/img/clients/vadafone.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/walmart_grey.png" alt="" /> <img
						src="assets/img/clients/walmart.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/shell_grey.png" alt="" /> <img
						src="assets/img/clients/shell.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/natural_grey.png" alt="" /> <img
						src="assets/img/clients/natural.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/aztec_grey.png" alt="" /> <img
						src="assets/img/clients/aztec.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/gamescast_grey.png" alt="" /> <img
						src="assets/img/clients/gamescast.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/cisco_grey.png" alt="" /> <img
						src="assets/img/clients/cisco.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/everyday_grey.png" alt="" /> <img
						src="assets/img/clients/everyday.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/cocacola_grey.png" alt="" /> <img
						src="assets/img/clients/cocacola.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/spinworkx_grey.png" alt="" /> <img
						src="assets/img/clients/spinworkx.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/shell_grey.png" alt="" /> <img
						src="assets/img/clients/shell.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/natural_grey.png" alt="" /> <img
						src="assets/img/clients/natural.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/gamescast_grey.png" alt="" /> <img
						src="assets/img/clients/gamescast.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/everyday_grey.png" alt="" /> <img
						src="assets/img/clients/everyday.png" class="color-img" alt="" />
				</a></li>
				<li><a href="#"> <img
						src="assets/img/clients/spinworkx_grey.png" alt="" /> <img
						src="assets/img/clients/spinworkx.png" class="color-img" alt="" />
				</a></li>
			</ul>
		</div>
		<!--/flexslider-->
		<!-- End Our Clients -->
	</div>
	<!--/container-->
	<!-- End Content Part -->

	<!--=== Footer ===-->
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 md-margin-bottom-40">
					<form action="">
						<!-- About -->
						<div class="headline">
							<h2>About</h2>
						</div>
						<p class="margin-bottom-25 md-margin-bottom-40">ìëíì­ëê¹.
							ë² í¸ë¨ì° ëë ì ë¨ ì­ê¾¸ë¯¸ ì ë¬¸ ìììì²´
							(ì£¼)3Kê¸ë¡ë² ìëë¤.</p>

						<!-- Monthly Newsletter -->
						<!--
                <div class="headline"><h2>Monthly Newsletter</h2></div> 
                <p>Subscribe to our newsletter and stay up to date with the latest news and deals!</p>
                <form class="footer-subsribe">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Email Address">                            
                        <span class="input-group-btn">
                            <button class="btn-u" type="button">Subscribe</button>
                        </span>
                    </div>
                    -->
						<!-- /input-group -->
					</form>
				</div>
				<!--/col-md-4-->

				<div class="col-md-4 md-margin-bottom-40">
					<div class="posts">
						<div class="headline">
							<h2>Recent Blog Entries</h2>
						</div>
						<dl class="dl-horizontal">
							<dt>
								<a href="#"><img src="assets/img/sliders/elastislide/6.jpg"
									alt="" /></a>
							</dt>
							<dd>
								<p>
									<a href="#">Anim moon officia Unify is an incredibly
										beautiful responsive Bootstrap Template</a>
								</p>
							</dd>
						</dl>
					</div>
				</div>
				<!--/col-md-4-->

				<div class="col-md-4">
					<!-- Monthly Newsletter -->
					<div class="headline">
						<h2>@@@</h2>
					</div>
					<address class="md-margin-bottom-40">
						Kim Myung ho <br /> Korea, ëíë¯¼êµ­ <br /> Phone:
						84-3852-3714 <br /> Fax: 84-8-5417-1259 <br /> Email: <a
							href="mailto:steer98@naver.com" class="">steer98@naver.com</a>
					</address>

					<!-- Stay Connected -->

					<!--<div class="headline"><h2>SNS Story</h2></div>
                <ul class="social-icons">-->
					<!--<li><a href="#" data-original-title="Feed" class="social_rss"></a></li>
                    <li><a href="#" data-original-title="Facebook" class="social_facebook"></a></li>
                    <li><a href="#" data-original-title="Twitter" class="social_twitter"></a></li>
                    <li><a href="#" data-original-title="Goole Plus" class="social_googleplus"></a></li>
                    <li><a href="#" data-original-title="Pinterest" class="social_pintrest"></a></li>
                    <li><a href="#" data-original-title="Linkedin" class="social_linkedin"></a></li>
                    <li><a href="#" data-original-title="Vimeo" class="social_vimeo"></a></li>

                </ul>
            </div>
             -->
					<!--/col-md-4-->

				</div>
				<!--/row-->
			</div>
			<!--/container-->
		</div>
		<!--/footer-->
		<!--=== End Footer ===-->

		<!--=== Copyright ===-->
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<p class="copyright-space">
							2015 &copy; 3K Global <a href="#">Privacy Policy</a> | <a
								href="#">Terms of Service</a>
						</p>
					</div>
					<div class="col-md-6">
						<a href="index.html"> 3K Global <!--<img id="logo-footer" src="assets/img/logo2-default.png" class="pull-right" alt="" />-->
						</a>
					</div>
				</div>
				<!--/row-->
			</div>
			<!--/container-->
		</div>
	</div>
	<!--/copyright-->
	<!--=== End Copyright ===-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="assets/plugins/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/hover-dropdown.min.js"></script>
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript"
		src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bxslider/jquery.bxslider.js"></script>
	<!-- Layer Slider -->
	<script src="assets/plugins/layer_slider/jQuery/jquery-easing-1.3.js"
		type="text/javascript"></script>
	<script
		src="assets/plugins/layer_slider/jQuery/jquery-transit-modified.js"
		type="text/javascript"></script>
	<script src="assets/plugins/layer_slider/js/layerslider.transitions.js"
		type="text/javascript"></script>
	<script
		src="assets/plugins/layer_slider/js/layerslider.kreaturamedia.jquery.js"
		type="text/javascript"></script>
	<!-- End Layer Slider -->
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/pages/index.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			App.initSliders();
			App.initBxSlider();
			Index.initLayerSlider();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/layer_slider/assets/js/html5.js"></script>
<![endif]-->
</body>
</html>
