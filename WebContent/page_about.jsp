<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Unify | Welcome...</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS Global Compulsory-->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/headers/header1.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="shortcut icon" href="favicon.ico">        
    <!-- CSS Implementing Plugins -->    
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css" type="text/css" media="screen">          
    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/themes/default.css" id="style_color">
    <link rel="stylesheet" href="assets/css/themes/headers/default.css" id="style_color-header-1">    
</head> 

<body>
<!--=== Style Switcher ===-->    
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
</div><!--/style-switcher-->
<!--=== End Style Switcher ===-->    

<!--=== Top ===-->    
<div class="top">
    <div class="container">         
        <ul class="loginbar pull-right">
            <li>
                <i class="icon-globe"></i>
                <a>Languages</a>
                <ul class="lenguages">
                    <li class="active">
                        <a href="#">English <i class="icon-ok"></i></a> 
                    </li>
                    <li><a href="#">Spanish</a></li>
                    <li><a href="#">Russian</a></li>
                    <li><a href="#">German</a></li>
                </ul>
            </li>
            <li class="devider"></li>   
            <li><a href="page_faq.html">Help</a></li>  
            <li class="devider"></li>   
            <li><a href="page_login.html">Login</a></li>   
        </ul>
    </div>      
</div><!--/top-->
<!--=== End Top ===-->    

<!--=== Header ===-->    
<div class="header">
    <div class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">
                    <img id="logo-header" src="assets/img/logo1-default.png" alt="Logo">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Home
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="index.html">Option 1: Default Page</a></li>
                            <li><a href="page_home1.html">Option 2: Layer Slider</a></li>
                            <li><a href="page_home2.html">Option 3: Revolution Slider</a></li>
                            <li><a href="page_home3.html">Option 4: Amazing Content</a></li>
                            <li><a href="page_home4.html">Option 5: Home Sidebar</a></li>
                            <li><a href="page_home5.html">Option 6: Home Flatty</a></li>
                            <li><a href="page_home6.html">Option 7: Home Magazine</a></li>
                            <li><a href="page_home7.html">Option 8: Home Portfolio</a></li>
                        </ul>
                    </li>
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Pages
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="active"><a href="page_about.html">About Us</a></li>
                            <li><a href="page_about1.html">About Us Option</a></li>
                            <li><a href="page_services.html">Services</a></li>
                            <li><a href="page_services1.html">Services Option</a></li>
                            <li><a href="page_pricing.html">Pricing Tables</a></li>
                            <li><a href="page_invoice.html">Invoice Page</a></li>
                            <li><a href="page_meet_our_team.html">Meet Our Team</a></li>
                            <li><a href="page_coming_soon.html">Coming Soon</a></li>
                            <li><a href="page_faq.html">FAQs Page</a></li>
                            <li><a href="page_search.html">Funny Boxes</a></li>
                            <li><a href="page_gallery.html">Gallery Page</a></li>
                            <li><a href="page_registration.html">Registration Page</a></li>
                            <li><a href="page_registration1.html">Registration Option</a></li>
                            <li><a href="page_login.html">Login Page</a></li>
                            <li><a href="page_login1.html">Login Option</a></li>
                            <li><a href="page_404_error.html">404 Error</a></li>
                            <li><a href="page_404_error1.html">404 Error Option</a></li>
                            <li><a href="page_clients.html">Clients Page</a></li>
                            <li><a href="page_privacy.html">Privacy Policy</a></li>
                            <li><a href="page_terms.html">Terms Of Service</a></li>
                            <li><a href="page_2_columns_left.html">2 Columns Page Left</a></li>
                            <li><a href="page_2_columns_right.html">2 Columns Page Right</a></li>
                            <li><a href="page_3_columns.html">3 Columns Page</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Features
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="feature_grid.html">Grid Layout</a></li>
                            <li><a href="feature_boxes.html">Content Boxes</a></li>
                            <li><a href="feature_typography.html">Typography</a></li>
                            <li><a href="feature_tagline_boxes.html">Tagline Boxes</a></li>
                            <li><a href="feature_buttons.html">Buttons</a></li>
                            <li><a href="feature_icons.html">Icons</a></li>
                            <li><a href="feature_thumbails.html">Thumbails</a></li>
                            <li><a href="feature_components.html">Components</a></li>
                            <li><a href="feature_accardion_and_tabs.html">Accardion and Tabs</a></li>
                            <li><a href="feature_navigations.html">Navigations</a></li>
                            <li><a href="feature_tables.html">Tables</a></li>
                            <li><a href="feature_forms.html">Forms</a></li>
                            <li><a href="feature_testimonials.html">Testimonials</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Portfolio
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="portfolio_text_blocks.html">Portfolio Text Blocks</a></li>
                            <li><a href="portfolio_2_column.html">Portfolio 2 Columns</a></li>
                            <li><a href="portfolio_3_column.html">Portfolio 3 Columns</a></li>
                            <li><a href="portfolio_4_column.html">Portfolio 4 Columns</a></li>
                            <li><a href="portfolio_item.html">Portfolio Item Option 1</a></li>
                            <li><a href="portfolio_item1.html">Portfolio Item Option 2</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Blog
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="blog_page.html">Blog Page</a></li>
                            <li><a href="blog_large.html">Blog Large</a></li>
                            <li><a href="blog_medium.html">Blog Medium</a></li>
                            <li><a href="blog_full_width.html">Blog Full Width</a></li>
                            <li><a href="blog_left_sidebar.html">Blog Left Sidebar</a></li>
                            <li><a href="blog_right_sidebar.html">Blog Right Sidebar</a></li>
                            <li><a href="blog_item_option1.html">Blog Item Option 1</a></li>
                            <li><a href="blog_item_option2.html">Blog Item Option 2</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Contacts
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="page_contact1.html">Contacts Default</a></li>
                            <li><a href="page_contact2.html">Contacts Option 1</a></li>
                            <li><a href="page_contact3.html">Contacts Option 2</a></li>
                        </ul>
                    </li>                    
                    <li class="hidden-sm"><a class="search"><i class="icon-search search-btn"></i></a></li>
                </ul>
                <div class="search-open">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">
                            <button class="btn-u" type="button">Go</button>
                        </span>
                    </div><!-- /input-group -->
                </div>                
            </div><!-- /navbar-collapse -->
        </div>    
    </div>    
</div><!--/header-->
<!--=== End Header ===-->    

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
        <h1 class="pull-left">About Us</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="">Pages</a></li>
            <li class="active">About Us</li>
        </ul>
    </div><!--/container-->
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">		
	<div class="row margin-bottom-30">
    	<div class="col-md-6 md-margin-bottom-40">
            <p>Unify is an incredibly beautiful responsive Bootstrap Template for corporate and creative professionals. It works on all major web browsers, tablets and phone. Lorem sequat ipsum dolor lorem sit amet, consectetur adipiscing dolor elit. Unify is an incredibly beautiful responsive Bootstrap Template for It works on all major web.</p>
            <ul class="list-unstyled">
                <li><i class="icon-ok color-green"></i> Donec id elit non mi porta gravida</li>
                <li><i class="icon-ok color-green"></i> Corporate and Creative</li>
                <li><i class="icon-ok color-green"></i> Responsive Bootstrap Template</li>
                <li><i class="icon-ok color-green"></i> Elit non mi porta gravida</li>
                <li><i class="icon-ok color-green"></i> Award winning digital agency</li>
            </ul><br />

            <!-- Blockquotes -->
            <blockquote>
                <p>Award winning digital agency. We bring a personal and effective approach to every project we work on, which is why.</p>
                <small>CEO Jack Bour</small>
            </blockquote>
        </div>

    	<div class="col-md-6 md-margin-bottom-40">
            <div class="responsive-video">
                <iframe src="http://player.vimeo.com/video/9679622" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> 
            </div>
        </div>
    </div><!--/row-->

	<!-- Meer Our Team -->
	<div class="headline"><h2>Meet Our Team</h2></div>
    <div class="row team">
        <div class="col-sm-3">
            <div class="thumbnail-style">
                <img class="img-responsive" src="assets/img/team/1.jpg" alt="" />
                <h3><a>Jack Bour</a> <small>Chief Executive Officer</small></h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                <ul class="list-unstyled list-inline team-socail">
                	<li><a href="#"><i class="icon-facebook"></i></a></li>
                	<li><a href="#"><i class="icon-twitter"></i></a></li>
                	<li><a href="#"><i class="icon-google-plus"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="thumbnail-style">
                <img class="img-responsive" src="assets/img/team/3.jpg" alt="" />
                <h3><a>Kate Metus</a> <small>Project Manager</small></h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                <ul class="list-unstyled list-inline team-socail">
                	<li><a href="#"><i class="icon-facebook"></i></a></li>
                	<li><a href="#"><i class="icon-twitter"></i></a></li>
                	<li><a href="#"><i class="icon-google-plus"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="thumbnail-style">
                <img class="img-responsive" src="assets/img/team/2.jpg" alt="" />
                <h3><a>Porta Gravida</a> <small>VP of Operations</small></h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                <ul class="list-unstyled list-inline team-socail">
                	<li><a href="#"><i class="icon-facebook"></i></a></li>
                	<li><a href="#"><i class="icon-twitter"></i></a></li>
                	<li><a href="#"><i class="icon-google-plus"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="thumbnail-style">
                <img class="img-responsive" src="assets/img/team/4.jpg" alt="" />
                <h3><a>Donec Elit</a> <small>Director, R &amp; D Talent</small></h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                <ul class="list-unstyled list-inline team-socail">
                	<li><a href="#"><i class="icon-facebook"></i></a></li>
                	<li><a href="#"><i class="icon-twitter"></i></a></li>
                	<li><a href="#"><i class="icon-google-plus"></i></a></li>
                </ul>
            </div>
        </div>
    </div><!--/team-->
	<!-- End Meer Our Team -->

    <!-- Our Clients -->
    <div id="clients-flexslider" class="flexslider home clients">
        <div class="headline"><h2>Our Clients</h2></div>    
        <ul class="slides">
            <li>
                <a href="#">
                    <img src="assets/img/clients/hp_grey.png" alt="" /> 
                    <img src="assets/img/clients/hp.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/igneus_grey.png" alt="" /> 
                    <img src="assets/img/clients/igneus.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/vadafone_grey.png" alt="" /> 
                    <img src="assets/img/clients/vadafone.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/walmart_grey.png" alt="" /> 
                    <img src="assets/img/clients/walmart.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/shell_grey.png" alt="" /> 
                    <img src="assets/img/clients/shell.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/natural_grey.png" alt="" /> 
                    <img src="assets/img/clients/natural.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/aztec_grey.png" alt="" /> 
                    <img src="assets/img/clients/aztec.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/gamescast_grey.png" alt="" /> 
                    <img src="assets/img/clients/gamescast.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/cisco_grey.png" alt="" /> 
                    <img src="assets/img/clients/cisco.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/everyday_grey.png" alt="" /> 
                    <img src="assets/img/clients/everyday.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/cocacola_grey.png" alt="" /> 
                    <img src="assets/img/clients/cocacola.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/spinworkx_grey.png" alt="" /> 
                    <img src="assets/img/clients/spinworkx.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/shell_grey.png" alt="" /> 
                    <img src="assets/img/clients/shell.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/natural_grey.png" alt="" /> 
                    <img src="assets/img/clients/natural.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/gamescast_grey.png" alt="" /> 
                    <img src="assets/img/clients/gamescast.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/everyday_grey.png" alt="" /> 
                    <img src="assets/img/clients/everyday.png" class="color-img" alt="" />
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="assets/img/clients/spinworkx_grey.png" alt="" /> 
                    <img src="assets/img/clients/spinworkx.png" class="color-img" alt="" />
                </a>
            </li>
        </ul>
    </div><!--/flexslider-->
    <!-- //End Our Clients -->
</div><!--/container-->		
<!--=== End Content Part ===-->

<!--=== Footer ===-->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4 md-margin-bottom-40">
                <!-- About -->
                <div class="headline"><h2>About</h2></div>  
                <p class="margin-bottom-25 md-margin-bottom-40">Unify is an incredibly beautiful responsive Bootstrap Template for corporate and creative professionals.</p>    

                <!-- Monthly Newsletter -->
                <div class="headline"><h2>Monthly Newsletter</h2></div> 
                <p>Subscribe to our newsletter and stay up to date with the latest news and deals!</p>
                <form class="footer-subsribe">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Email Address">                            
                        <span class="input-group-btn">
                            <button class="btn-u" type="button">Subscribe</button>
                        </span>
                    </div><!-- /input-group -->                    
                </form>                         
            </div><!--/col-md-4-->  
            
            <div class="col-md-4 md-margin-bottom-40">
                <div class="posts">
                    <div class="headline"><h2>Recent Blog Entries</h2></div>
                    <dl class="dl-horizontal">
                        <dt><a href="#"><img src="assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                    <dt><a href="#"><img src="assets/img/sliders/elastislide/10.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                    <dt><a href="#"><img src="assets/img/sliders/elastislide/11.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                </div>
            </div><!--/col-md-4-->

            <div class="col-md-4">
                <!-- Monthly Newsletter -->
                <div class="headline"><h2>Contact Us</h2></div> 
                <address class="md-margin-bottom-40">
                    25, Lorem Lis Street, Orange <br />
                    California, US <br />
                    Phone: 800 123 3456 <br />
                    Fax: 800 123 3456 <br />
                    Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
                </address>

                <!-- Stay Connected -->
                <div class="headline"><h2>Stay Connected</h2></div> 
                <ul class="social-icons">
                    <li><a href="#" data-original-title="Feed" class="social_rss"></a></li>
                    <li><a href="#" data-original-title="Facebook" class="social_facebook"></a></li>
                    <li><a href="#" data-original-title="Twitter" class="social_twitter"></a></li>
                    <li><a href="#" data-original-title="Goole Plus" class="social_googleplus"></a></li>
                    <li><a href="#" data-original-title="Pinterest" class="social_pintrest"></a></li>
                    <li><a href="#" data-original-title="Linkedin" class="social_linkedin"></a></li>
                    <li><a href="#" data-original-title="Vimeo" class="social_vimeo"></a></li>
                </ul>
            </div><!--/col-md-4-->
        </div><!--/row-->   
    </div><!--/container--> 
</div><!--/footer-->    
<!--=== End Footer ===-->

<!--=== Copyright ===-->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-md-6">                      
                <p class="copyright-space">
                    2013 &copy; Unify. ALL Rights Reserved. 
                    <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                </p>
            </div>
            <div class="col-md-6">  
                <a href="index.html">
                    <img id="logo-footer" src="assets/img/logo2-default.png" class="pull-right" alt="" />
                </a>
            </div>
        </div><!--/row-->
    </div><!--/container--> 
</div><!--/copyright--> 
<!--=== End Copyright ===-->

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="assets/plugins/hover-dropdown.min.js"></script> 
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        App.initSliders();        
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
<![endif]-->

</body>
</html> 