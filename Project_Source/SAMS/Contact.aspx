<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="paytm.Contact" %>

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
	    </div><!-- end opener icon -->
	    <div class="form_holder">
	        <div class="row">
	            <div class="col-sm-12">
	                <div class="predefined_styles"> 
	                    <!-- MODULE #1 -->
	                    <a href="#" data-rel="width-full" class="styleswitch2">Full Width</a><br>
	                    <a href="#" data-rel="width-boxed" class="styleswitch2">Boxed Layout</a>  
	                    <!-- END MODULE #1 -->
	                    <hr>         
	                    <h4>Colors</h4>
	                    <!-- MODULE #2 -->
	                    <a href="#" data-rel="main-css" class="styleswitch"><div class="btn orange-css-square"></div></a>  


	                    <a href="#" data-rel="blue" class="styleswitch"><div class="btn blue-css-square"></div></a>    

	                    <a href="#" data-rel="green" class="styleswitch"><div class="btn green-css-square"></div></a>      

	                    <a href="#" data-rel="purple" class="styleswitch"><div class="btn purple-css-square"></div></a>

	                    <a href="#" data-rel="dark-blue" class="styleswitch"><div class="btn dark-blue-css-square"></div></a>



	                    <a href="#" data-rel="red" class="styleswitch"><div class="btn red-css-square"></div></a>
	                    <a href="#" data-rel="silver" class="styleswitch"><div class="btn silver-css-square"></div></a>
	                    <a href="#" data-rel="seagul" class="styleswitch"><div class="btn seagul-css-square"></div></a>
	                    <a href="#" data-rel="pinkish" class="styleswitch"><div class="btn pinkish-css-square"></div></a>
	                    <!-- END MODULE #2 -->
	                </div><!-- end predefined_styles -->
	            </div><!-- end col -->
	        </div><!-- end row -->
	    </div><!-- end form_holder -->
	</div><!-- end demo_changer -->
	<!-- End Switcher -->

	<!-- Begin Boxed or Fullwidth Layout -->
	<div id="bg-boxed">
	    <div class="boxed">

			<!-- Begin Header -->
			<header>

						
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
									        	<a href="index.aspx" ><span class="ion-android-inbox fa-lg"></span> Home</a>
									        
									        </li>

                                           
											<li >
									        	<a href="offers.aspx" ><span class="ion-android-promotion fa-lg"></span> Offers</a>
									        
									        </li>
											<li >
									        	<a href="About.aspx" ><span class="ion-android-chat fa-lg"></span> About us</a>
									        
									        </li>
											<li >
									        	<a href="Contact.aspx" style="color:#00B7EB"><span class="ion-android-contact fa-lg"></span>  Contact us</a>
									        
									        </li>
										
											
										
										</ul><!-- /navbar right -->  
									</nav><!-- /nav -->
								</div>
							</div>
						</div><!-- /container header -->   
					</div><!-- /navbar -->
				</div><!-- /navbar wrapper -->
				<!-- End Navigation -->

				<!-- End Navigation -->

				<!-- Begin Page Header -->
				<div class="header">
					<div class="container">
						<div class="row">
							<!-- Page Title -->
							<div class="col-sm-6 col-xs-12">
								<h1>Contact </h1>
							</div>

							<!-- Breadcrumbs -->
							<div class="col-sm-6">
								<ol class="breadcrumb">
									<li><span class="ion-home breadcrumb-home"></span><a href="Index.aspx">Home</a></li>
							
									<li>Contact Us</li>
								</ol>
							</div><!-- /column --> 
						</div><!-- /row -->  
					</div><!-- /container -->  
				</div><!-- /page header -->
				
			</header><!-- /header -->
			<!-- End Header -->
                  <asp:Panel ID="Panel1" Visible="false" runat="server">
<div class="alert alert-info alert-info alert-dismissible" role="alert">
								
    <a href="#" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></a>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
							</div></asp:Panel>
			<!-- Begin Map -->
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-12 no-padding" style="margin-bottom: -7px;">
						
                     
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13832.339614231409!2d78.11478882481707!3d29.91945780889315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39094617e711e699%3A0x1b21859917cd7197!2sGurukul+Kangri+Vishwavidyalaya%2C+Jagjeetpur%2C+Haridwar%2C+Uttarakhand!5e0!3m2!1sen!2sin!4v1460791679624"  style="border: 0px none; border-color:#fff; width:100%;" height="350"></iframe>
                    
                    </div>
				</div>
			</div>
			<!-- End Map -->
         

			<!-- Begin Contact -->
			<section class="mt40 mb40">
				<div class="container">

					<!-- Form + Sidebar -->
					<div class="row">
                        	<div class="heading mb20"><h4><span class="ion-android-mail mr15"></span>Send us a Message</h4></div>
						<div class="col-sm-8">
						
							
							<form  runat="server">
			                    <div class="form-group">
			                        <input type="text" id="name1" required="required" runat="server" placeholder="Name" class="form-control" >
			                    </div>
			                    <div class="form-group">
			                        <input type="email" id="email1" runat="server" required="required" placeholder="Email Address" class="form-control" >
			                    </div>
			                    <div class="form-group">
			                        <textarea class="form-control" runat="server" required="required" placeholder="Message" id="Message1" rows="7"></textarea>
			                    </div>
			                
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" class="btn btn-rw btn-primary" Text="Contact Us" />
                          
			                </form>
						</div>
						<div class="col-sm-4 mt30-xs">
							<div><br /> <br />  </div>
							<div class="panel panel-primary no-margin">
							    <div class="panel-heading">
							        <h3 class="panel-title"><span class="ion-android-system-home"></span> Information</h3>
							    </div>
							    <div class="panel-body">
							        <address class="no-margin">
			                            <strong>SAMS WALLET.</strong><br>
			                             Gurukul Kangri <br>
			                            Haridwar,  01334 690 011<br>
			                            <abbr title="Phone">P:</abbr> +8533011660, +8449591769<br>
			                            Mail: <a href="#">samswallet@gmail.com</a>
			                        </address>
							    </div>
							</div>
						</div>
					</div>

				</div><!-- /container -->
			</section><!-- /section -->
			<!-- End Contact -->

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

    <!-- Main Javascript -->
	<script type="text/javascript" src="../js/main.js"></script>
</body>


</html>