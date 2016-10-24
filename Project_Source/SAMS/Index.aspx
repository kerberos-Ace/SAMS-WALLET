<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="paytm.Index" %>

<!DOCTYPE html>
<html lang="en">


<head>
	<meta charset="utf-8"/>
	<meta name="author" content="Denis Samardjiev" />
	<meta name="description" content="Raleway | Mega Bootstrap Template">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
	<link rel="apple-touch-icon" sizes="144x144" href="apple-touch-icon-144x144.html">
	<link rel="apple-touch-icon" sizes="114x114" href="apple-touch-icon-114x114.html">
	<link rel="apple-touch-icon" sizes="72x72" href="apple-touch-icon-72x72.html">
	<link rel="apple-touch-icon" href="apple-touch-icon.html">
	<title>SAMS WALLET</title>
	   <link href="../images/favicon.ico" rel="shortcut icon">
	<!-- Royal Preloader CSS -->
	<link rel="stylesheet" type="text/css" href="css/royal_preloader.css">

	<!-- jQuery Files -->
	<script type="text/javascript" src="../js/jquery.min.js"></script>

	<!-- Royal Preloader -->
	<script type="text/javascript" src="../js/royal_preloader.min.js"></script>

	<!-- Revolution Slider CSS -->
	<link rel="stylesheet" type="text/css" href="revolution/css/settings.css">
	<link rel="stylesheet" type="text/css" href="revolution/css/layers.css">
		
	<!-- Revolution Slider Navigation CSS -->
	<link rel="stylesheet" type="text/css" href="revolution/css/navigation.css">

	<!-- Stylesheets -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" title="main-css">
	<link href="css/bootstrap-social.css" rel="stylesheet">
	<link href="css/animate.min.css" rel="stylesheet">
	<link href="css/owl.carousel.css" rel="stylesheet" >
	<link href="css/jquery.snippet.css" rel="stylesheet">
	<link href="css/buttons.css" rel="stylesheet">

	<!-- Style Switcher / remove for production -->
	<link href="css/style-switcher.css" rel="stylesheet">
	
	<!-- Alternate Stylesheets / choose what color you want and include regularly AFTER style.css above -->
	<link rel="alternate stylesheet" type="text/css" href="css/colors/blue.css" title="blue">
	<link rel="alternate stylesheet" type="text/css" href="css/colors/green.css" title="green">
	<link rel="alternate stylesheet" type="text/css" href="css/colors/purple.css" title="purple">
	<link rel="alternate stylesheet" type="text/css" href="css/colors/dark-blue.css" title="dark-blue">
	<link rel="alternate stylesheet" type="text/css" href="css/colors/red.css" title="red">
	<link rel="alternate stylesheet" type="text/css" href="css/colors/silver.css" title="silver">
	<link rel="alternate stylesheet" type="text/css" href="css/colors/pinkish.css" title="pinkish">
	<link rel="alternate stylesheet" type="text/css" href="css/colors/seagul.css" title="seagul">
	<link rel="alternate stylesheet" type="text/css" href="css/width-full.css" title="width-full">
	<link rel="alternate stylesheet" type="text/css" href="css/width-boxed.css" title="width-boxed">

	<!-- Icon Fonts -->
	<link href='css/ionicons.min.css' rel='stylesheet' type='text/css'>
	<link href='css/font-awesome.css' rel='stylesheet' type='text/css'>

	<!-- Magnific Popup -->
	<link href='css/magnific-popup.css' rel='stylesheet' type='text/css'>
</head>
<body class="royal_preloader scrollreveal">

	<div id="royal_preloader"></div>
	
	<!-- Start Switcher -->
	<div class="demo_changer">
	    <div class="demo-icon">
	        <i class="fa fa-cog fa-spin fa-2x"></i>
	    </div><!-- End opener icon -->
	    <div class="form_holder">
	        <div class="row">
	            <div class="col-sm-12">
	                <div class="predefined_styles"> 
	               
	                    <h4>Colors</h4>
	                    <!-- Module #2 -->
	                    <a href="#" data-rel="main-css" class="styleswitch"><div class="btn orange-css-square"></div></a>
	                    <a href="#" data-rel="blue" class="styleswitch"><div class="btn blue-css-square"></div></a>    
	                    <a href="#" data-rel="green" class="styleswitch"><div class="btn green-css-square"></div></a>
	                    <a href="#" data-rel="purple" class="styleswitch"><div class="btn purple-css-square"></div></a>
	                    <a href="#" data-rel="dark-blue" class="styleswitch"><div class="btn dark-blue-css-square"></div></a>
	                    <a href="#" data-rel="red" class="styleswitch"><div class="btn red-css-square"></div></a>
	                    <a href="#" data-rel="silver" class="styleswitch"><div class="btn silver-css-square"></div></a>
	                    <a href="#" data-rel="seagul" class="styleswitch"><div class="btn seagul-css-square"></div></a>
	                    <a href="#" data-rel="pinkish" class="styleswitch"><div class="btn pinkish-css-square"></div></a>
	                    <!-- End Module #2 -->
	                </div><!-- End predefined_styles -->
	            </div><!-- End col -->
	        </div><!-- End row -->
	    </div><!-- End form_holder -->
	</div><!-- End demo_changer -->
	<!-- End Switcher -->

	<!-- Begin Boxed or Fullwidth Layout -->
	<div id="bg-boxed">
	    <div class="boxed">
            
      <asp:Panel ID="Panel1" Visible="false" runat="server">
<div class="alert alert-danger alert-danger-rw alert-dismissible" role="alert">
								<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
							 	<b>Be careful.</b> Invalid Credentials
							</div></asp:Panel>
			<!-- Begin Header -->
			<header>

				<!-- Begin Top Bar -->
				<div class="top-bar">
					<div class="container">
						<div class="row">
							<!-- Address and Phone -->
						
							<!-- Social Buttons -->
							<div class="col-sm-5 col-sm-offset-7 text-right">
				                <ul class="topbar-list list-inline">
					                <li>						
							            <a class="btn btn-social-icon btn-rw btn-primary btn-xs" target="_blank" href="https://twitter.com/SAMAS_WALLET">
											<i class="fa fa-twitter"></i>
										</a>
									
										<a class="btn btn-social-icon btn-rw btn-primary btn-xs" target="_blank" href=" https://www.facebook.com/SAMS-Wallet-1131653856869110/?skip_nax_wizard=true&success=1">
											<i class="fa fa-facebook"></i>
										</a>
									</li><li><a data-toggle="modal" data-target="#login"><span class="ion-android-locate fa-lg"></span> Login</a></li><li><a href="register.aspx"><span class="ion-android-add-contact fa-lg"></span> Register</a></li>
								</ul>
							</div>
						</div><!--/row --> 
					</div><!--/container header -->   
				</div><!--/top bar -->   
				<!-- End Top Bar -->

				<!-- Login -->
				<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="loginLabel" aria-hidden="true">
				    <div class="modal-dialog modal-sm">
				        <div class="modal-content">
				            <div class="modal-header">
				                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				                <h4 class="modal-title" id="loginLabel">Login</h4>
				            </div> <form role="form" runat="server">
				            <div class="modal-body">
					           
						            <div class="form-group">
						                <label for="exampleInputEmail1">Email address</label>
                                        <div class="input-group">
							                    <div class="input-group-addon"><span class="ion-ios7-email"></span></div>
						                <input type="email" class="form-control" id="email" required="required" runat="server" placeholder="Enter email">
						            </div></div>
						            <div class="form-group">
						                <label for="exampleInputPassword1">Password</label><div class="input-group">
							                    <div class="input-group-addon"><span class="ion-ios7-locked"></span></div>
						                <input type="password" class="form-control" runat="server" required="required" id="pass" placeholder="Password">
						            </div></div>
						          
						      <!-- /form -->
				            </div>
				            <div class="modal-footer">
				               
    <asp:Button ID="Button1" class="btn btn-rw btn-primary" OnClick="Button1_Click" runat="server" Text="Login" />
				            </div>  </form>
				        </div><!-- /modal content -->
				    </div><!-- /modal dialog -->
				</div><!-- /modal holder -->
				<!-- End Login -->


		     	<!-- Begin Navigation -->
		     	<div class="navbar-wrapper">
					<div class="navbar navbar-main" id="fixed-navbar">
						<div class="container">
							<div class="row">
								<div class="col-sm-12 column-header">
									<div class="navbar-header">
										<!-- Brand -->
										<a href="Index.aspx" class="navbar-brand">
										<div ></div> <img src="../images/logo1.png"  >
										</a>
										<!-- Mobile Navigation -->
										<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
								            <span class="sr-only">Toggle navigation</span>
								            <span class="icon-bar"></span>
								            <span class="icon-bar"></span>
								            <span class="icon-bar"></span>
										</button>
									</div><!-- /navbar header -->   

									<!-- Main Navigation - Explained in Documentation -->
									<nav class="navbar-collapse collapse navHeaderCollapse" role="navigation">
										<ul class="nav navbar-nav navbar-right">
											<li >
									        	<a href="index.aspx" style="color:#00B7EB" ><span class="ion-android-inbox fa-lg"></span> Home</a>
									        
									        </li>

                                           
											<li >
									        	<a href="offers.aspx" ><span class="ion-android-promotion fa-lg"></span> Offers</a>
									        
									        </li>
											<li >
									        	<a href="About.aspx" ><span class="ion-android-chat fa-lg"></span> About us</a>
									        
									        </li>
											<li >
									        	<a href="Contact.aspx" ><span class="ion-android-contact fa-lg"></span>  Contact us</a>
									        
									        </li>
										
											
										
										</ul><!-- /navbar right -->  
									</nav><!-- /nav -->
								</div>
							</div>
						</div><!-- /container header -->   
					</div><!-- /navbar -->
				</div><!-- /navbar wrapper -->
				<!-- End Navigation -->

			</header><!-- /header -->
			<!-- End Header -->

			<!-- Start Slider Revolution -->
						<!-- Start Slider Revolution -->
			<div class="rev_slider_wrapper">
				<div class="rev_slider" data-version="5.0" id="slider1">
					<ul>

						<!-- Slide 1 -->
						<li data-delay="9000" 
						data-description="Raleway Bootstrap Template" 
						data-easein="default"
						data-easeout="default" 
						data-masterspeed="default" 
						data-param1="test" 
						data-rotate="0" 
						data-slotamount="default" 
						data-title="SAMS WALLET"
						data-thumb="images/bg11.jpg"
						data-transition="slideremoveup">

							<!-- MAIN IMAGE -->
							<img alt=""
							data-bgfit="cover"
							data-bgposition="center center"
							data-bgrepeat="no-repeat"
							data-no-retina=""
							height="800"
							src="images/bg11.jpg"
							style="background-color:#000;"
							width="1732">

						

							<div class="tp-caption"
							data-x="center"
							data-y="196"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="y:50px;opacity:0;s:700;e:Power3.easeOut;"
							data-transform_out="y:50px;opacity:0;s:500;e:Power2.easeInOut;"
							style="padding: 0px 3px; font-size: 46px; visibility: visible; border-bottom:2px solid rgba(255, 255, 255, 0.24); color:#fff; font-family: 'Raleway' sans-serif;">
							Welcome to <span class="heavy">SAMS WALLET</span>
							</div>
							
							<div class="tp-caption"
							data-x="center"
							data-y="295"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="y:150px;opacity:0;s:700;e:Power3.easeOut;"
							data-transform_out="y:150px;opacity:0;s:500;e:Power2.easeInOut;"
							style="padding: 0px 3px; font-size: 24px; visibility: visible; color:black; font-family: 'Open Sans' sans-serif; text-align:center;">
							<p>SAMS WALLET is to get recharge on go  <br>mobiles, bill payments </p>
							</div>

						</li>
						
						<!-- Slide 2 -->
						<li data-delay="10000"
						data-description="Some Description"
						data-easein="default"
						data-easeout="default"
						data-masterspeed="default"
						data-param1="test"
						data-rotate="0"
						data-slotamount="default"
						data-thumb="images/bg4.jpg"
						data-title="Features"
						data-transition="slideremoveleft">

							<!-- MAIN IMAGE -->
							<img alt="" 
							data-bgfit="cover"
							data-bgposition="center center" 
							data-bgrepeat="no-repeat"
							data-no-retina="" 
							height="800" 
							src="images/bg4.jpg" 
							style="background-color:#000;"
							width="1732">

							<div class="tp-caption" 
							data-x="320"
							data-y="105"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="y:10px;opacity:0;s:700;e:Power3.easeOut;"
							data-transform_out="y:10px;opacity:0;s:500;e:Power2.easeInOut;"
							style="color:#fff;font-size:35px;font-family:'Raleway' sans-serif;font-weight:200;border:2px solid #fff;padding:0 17px;">
							A variety of features, for <strong>various</strong> needs.
							</div>

							<div class="tp-caption background-mainsub" 
							data-x="320"
							data-y="195"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="x:100px;opacity:0;s:1200;e:Power3.easeOut;"
							data-transform_out="y:100px;opacity:0;s:500;e:Power2.easeInOut;"
							style="color:#fff;font-size:27px;font-family:'FontAwesome' sans-serif;line-height:50px;text-align:center;padding-left:12px;padding-right:12px;border-radius:50%">
							
								<span class="fa fa-check"></span>

							</div>

							<div class="tp-caption" 
							data-x="390"
							data-y="200"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="x:130px;opacity:0;s:1200;e:Power3.easeOut;"
							data-transform_out="y:130px;opacity:0;s:500;e:Power2.easeInOut;"
							style="color:#fff;font-size:24px;font-family:'Open Sans' sans-serif;font-weight:300;">
							a complete solutions to  <strong>all</strong> 
							</div>

							<div class="tp-caption background-mainsub" 
							data-x="320"
							data-y="260"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="x:160px;opacity:0;s:1200;e:Power3.easeOut;"
							data-transform_out="y:160px;opacity:0;s:500;e:Power2.easeInOut;"
							style="color:#fff;font-size:27px;font-family:'FontAwesome' sans-serif;line-height:50px;text-align:center;padding-left:12px;padding-right:12px;border-radius:50%">
							
								<span class="fa fa-check"></span>

							</div>

							<div class="tp-caption" 
							data-x="390"
							data-y="265"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="x:190px;opacity:0;s:1200;e:Power3.easeOut;"
							data-transform_out="y:190px;opacity:0;s:500;e:Power2.easeInOut;"
							style="color:#fff;font-size:24px;font-family:'Open Sans' sans-serif;font-weight:300;">
							A variety of benefits at a single place.
							</div>

							<div class="tp-caption background-mainsub" 
							data-x="320"
							data-y="324"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="x:220px;opacity:0;s:1200;e:Power3.easeOut;"
							data-transform_out="y:220px;opacity:0;s:500;e:Power2.easeInOut;"
							style="color:#fff;font-size:27px;font-family:'FontAwesome' sans-serif;line-height:50px;text-align:center;padding-left:12px;padding-right:12px;border-radius:50%">
							
								<span class="fa fa-check"></span>

							</div>

							<div class="tp-caption" 
							data-x="390"
							data-y="329"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="x:260px;opacity:0;s:1200;e:Power3.easeOut;"
							data-transform_out="y:260px;opacity:0;s:500;e:Power2.easeInOut;"
							style="color:#fff;font-size:24px;font-family:'Open Sans' sans-serif;font-weight:300;">
							Easy to use and manage.
							</div>

							<div class="tp-caption" 
							data-x="325"
							data-y="395"
							data-speed="600"
							data-start="1200"
							data-end="9400"
							data-endspeed="600"
							data-transform_idle="o:1;"
							data-transform_in="y:70px;opacity:0;s:1000;e:Power3.easeOut;"
							data-transform_out="y:70px;opacity:0;s:500;e:Power2.easeInOut;"
							style="color:#fff;font-size:17px;font-family:'Open Sans' sans-serif;font-weight:300;">
							<strong>and much more</strong>
							</div>

						</li>

							<!-- Slide 3 -->
						<li data-delay="9000" 
					
						data-easein="default"
						data-easeout="default" 
						data-masterspeed="default" 
						data-param1="test" 
						data-rotate="0" 
						data-slotamount="default" 
						data-title="Recharge"
						data-thumb="images/bg7.jpg"
						data-transition="slideremoveup">

							<!-- MAIN IMAGE -->
							<img alt=""
							data-bgfit="cover"
							data-bgposition="center center"
							data-bgrepeat="no-repeat"
							data-no-retina=""
							height="800"
							src="images/bg7.jpg"
							style="background-color:#000;"
							width="1732">

						

							

						</li>
					</ul>
				</div>
			</div><!-- /rev slider -->
			<!-- End Slider Revolution -->

			<!-- End Slider Revolution -->

			<!-- Begin 3 Services -->
			<div class="background-light-grey pt40 pb40 border-bottom">
				<div class="container">
					<div class="row">
						<!-- Content 1 -->
						<div class="col-sm-4 fadeInUp-animated text-center">
						    <span class="ion-beaker bordered-icon-sm bordered-icon-color"></span>
						    <h4 class="mt15">Recharge</h4>
						    <p class="p15xs no-margin">The Simplest & Fastest way to do a Online Recharge for Prepaid Mobile.</p>
						</div>
						<!-- Content 2 -->
						<div class="col-sm-4 fadeInUp-animated text-center mt20-xs">
						    <span class="ion-beer bordered-icon-sm bordered-icon-color"></span>
						    <h4 class="mt15">Offers</h4>
						    <p class="p15xs no-margin">Promo codes can be used to get cashbacks on your Mobile Recharges. </p>
						</div>
						<!-- Content 3 -->
						<div class="col-sm-4 fadeInUp-animated text-center mt20-xs">
						    <span class="ion-help-buoy bordered-icon-sm bordered-icon-color"></span>
						    <h4 class="mt15">Bill Payments</h4>
						    <p class="p15xs no-margin">Pay your Gas Bills with a single click. Just login and pay your bills instantly.</p>
						</div>
					</div>
				</div><!-- /container -->
			</div><!-- /cta -->
		
		
			<!-- Begin Footer -->
			<footer class="footer-light">
			    <div class="container">
			        <div class="row">

			            <!-- About -->
			            <div class="col-sm-4">
			                <div class="heading-footer"><h4>About</h4></div>
			                <p>
                       On SAMS WALLET you can recharge your phone .<br />
                             
                                Use coupons to get discount.<br />
                                 You can also pay your bills  .



			           </p>
			            </div>
			            
			            <!-- Social -->
			          

			            <!-- Contact -->
			            <div class="col-sm-4 mg25-xs">
			                <div class="heading-footer"><h4>Contact us</h4></div>
			                <p><span class="ion-home footer-info-icons"></span><small class="address">Gurukul Kangri Haridwar, 01334 690 011</small></p>
			                <p><span class="ion-email footer-info-icons"></span><small class="address"><a href="#">samswallet@gmail.com</a></small></p>
			                <p><span class="ion-ios7-telephone footer-info-icons"></span><small class="address">+8533011660, +8449591769</small></p>
			            </div>

			            <!-- Recent Work -->
			            <div class="col-sm-4 hidden-xs">
			                <div class="heading-footer"><h4>Team Members</h4></div>
			                <div class="col-xs-6 recent-work-padding">
			                    <a href="images/Team/Team1.jpg" class="thumbnail image-zoom-link">
			                      <img src="images/Team/thumbs/Team1.jpg" alt="..." class="thumbnail img-responsive">
			                    </a>
			                </div>
			                <div class="col-xs-6 recent-work-padding">
			                    <a href="images/Team/Team2.jpg" class="thumbnail image-zoom-link">
			                      <img src="images/Team/thumbs/Team2.jpg" alt="..." class="thumbnail img-responsive">
			                    </a>
			                </div>
			               
                           
			            </div>
			        </div><!-- /row -->

			        <!-- Copyright -->
			        <div class="row">
			            <hr>
			            <div class="col-sm-11 col-xs-10">
			                <p class="copyright">© 2016 SAMS Wallet. All rights reserved.</p>
			            </div>
			            <div class="col-sm-1 col-xs-2 text-right">
			                <a href="#" class="scroll-top"><div class="footer-scrolltop-holder"><span class="ion-ios7-arrow-up footer-scrolltop"></span></div></a>
			            </div>
			        </div><!-- /row -->
			        
			    </div><!-- /container -->
			</footer><!-- /footer -->
			<!-- End Footer --> 

		</div><!-- /boxed -->
	</div><!-- /bg boxed-->
	<!-- End Boxed or Fullwidth Layout -->
	
	<!-- Javascript Files -->
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="../js/jquery.mixitup.min.js"></script>
	<script type="text/javascript" src="../js/scrollReveal.js"></script>
	<script type="text/javascript" src="../js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="../js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="../js/jquery.snippet.min.js"></script>
	<script type="text/javascript" src="../js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="../js/style-switcher.js"></script><!-- Remove for production -->
	<script type="text/javascript" src="../js/activate-snippet.js"></script>
	<script type="text/javascript" src="../js/skrollr.min.js"></script>

	<!-- On Scroll Animations - scrollReveal.js -->
    <script>
        var config = {
            easing: 'hustle',
            mobile: true,
            delay: 'onload'
        }
        window.sr = new scrollReveal(config);
    </script>

	<!-- Slider Revolution JS -->
	<script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js"></script>

	<!-- Slider Revolution Extensions (Load Extensions only on Local File Systems The following part can be removed on Server for On Demand Loading) -->	
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="../js/main.js"></script>

	<!-- Slider Revolution Main -->
	<script type="text/javascript">
	    jQuery(document).ready(function () {
	        jQuery("#slider1").revolution({
	            sliderType: "standard",
	            startDelay: 2500,
	            spinner: "spinner2",
	            sliderLayout: "auto",
	            viewPort: {
	                enable: false,
	                outof: 'wait',
	                visible_area: '100%'
	            }
                 ,
	            delay: 9000,
	            navigation: {
	                keyboardNavigation: "off",
	                keyboard_direction: "horizontal",
	                mouseScrollNavigation: "off",
	                onHoverStop: "off",
	                arrows: {
	                    style: "erinyen",
	                    enable: true,
	                    hide_onmobile: true,
	                    hide_under: 600,
	                    hide_onleave: true,
	                    hide_delay: 200,
	                    hide_delay_mobile: 1200,
	                    tmp: '<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div>    <div class="tp-arr-img-over"></div>	<span class="tp-arr-titleholder">{{title}}</span> </div>',
	                    left: {
	                        h_align: "left",
	                        v_align: "center",
	                        h_offset: 30,
	                        v_offset: 0
	                    },
	                    right: {
	                        h_align: "right",
	                        v_align: "center",
	                        h_offset: 30,
	                        v_offset: 0
	                    }
	                }
                    ,
	                touch: {
	                    touchenabled: "on",
	                    swipe_treshold: 75,
	                    swipe_min_touches: 1,
	                    drag_block_vertical: false,
	                    swipe_direction: "horizontal"
	                }
                    ,
	                bullets: {
	                    enable: true,
	                    hide_onmobile: true,
	                    hide_under: 600,
	                    style: "hermes",
	                    hide_onleave: true,
	                    hide_delay: 200,
	                    hide_delay_mobile: 1200,
	                    direction: "horizontal",
	                    h_align: "center",
	                    v_align: "bottom",
	                    h_offset: 0,
	                    v_offset: 30,
	                    space: 5
	                }
	            },
	            gridwidth: 1240,
	            gridheight: 497
	        });
	    });
	</script>
</body>
</html>