﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gas_Book.aspx.cs" Inherits="paytm.user.Gas" %>

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
	<link rel="stylesheet" type="text/css" href="../css/royal_preloader.css">

	<!-- jQuery Files -->
	<script type="text/javascript" src="../js/jquery.min.js"></script>

	<!-- Royal Preloader -->
	<script type="text/javascript" src="../js/royal_preloader.min.js"></script>

	<!-- Stylesheets -->
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet" title="main-css">
	<link href="../css/bootstrap-social.css" rel="stylesheet">
	<link href="./css/animate.min.css" rel="stylesheet">
	<link href="../css/owl.carousel.css" rel="stylesheet" >
	<link href="../css/jquery.snippet.css" rel="stylesheet">
	<link href="../css/buttons.css" rel="stylesheet">

	<!-- Style Switcher / remove for production -->
	<link href="css/style-switcher.css" rel="stylesheet">
	
	

	<!-- Icon Fonts -->
	<link href='../css/ionicons.min.css' rel='stylesheet' type='text/css'>
	<link href='../css/font-awesome.css' rel='stylesheet' type='text/css'>

	<!-- Magnific Popup -->
	<link href='../css/magnific-popup.css' rel='stylesheet' type='text/css'>
</head>
<body class="royal_preloader scrollreveal">

	<div id="royal_preloader"></div>
	
	

	<!-- Begin Boxed or Fullwidth Layout -->
	<div id="bg-boxed">
	    <div class="boxed">

				<header style="margin-bottom:5px">

				

				

		     
				

		  		
 	<!-- Begin Navigation -->
		     	<div class="navbar-wrapper">
					<div class="navbar navbar-main" id="fixed-navbar">
						<div class="container">
							<div class="row">
								<div class="col-sm-12 column-header">
									<div class="navbar-header">
										<!-- Brand -->
										<a href="#" class="navbar-brand">
											<div ><span class="ion-android-friends fa-2x"></span> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
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

                                            <li  >
									        	<a   href="Notification.aspx" > <span class="ion-android-forums fa-lg"></span> Notification</a>
									        
									        </li>

										<li class="dropdown dropdown-main " >
									        	<a href="#" class="dropdown-toggle  " style="color:#00B7EB"   data-toggle="dropdown"><span class="ion-android-promotion fa-lg"></span> Payment<span class="ion-android-dropdown fa-lg"></span></a>
									        	<ul class="dropdown-menu dropdown-subhover dropdown-animation animated fadeIn">
									            	<li ><a href="Recharge.aspx"> <i class="fa fa-bolt"></i> Recharge</a></li>


                                                    <li class="dropdown dropdown-submenu">
											    		<a class="trigger" style="color:#00B7EB" ><span class="ion-android-lightbulb fa-lg"></span> Gas</a>
												    	<ul class="dropdown-menu animated fadeIn dropdown-animation">
												    		<li class="active"><a tabindex="-1" href="Gas_Book.aspx"><span class="ion-android-archive fa-lg"></span> Book Gas</a></li>
												    		<li><a tabindex="-1" href="Gas_Details.aspx?mname=1"> <i class="fa fa-bank"></i> Gas Details</a></li>
												    	
												    	</ul>
													</li>
									            	<li ><a href="Transaction.aspx?mname=0"><span class="ion-android-display fa-lg"></span> Transactions</a></li>

									            	
									        	</ul>
									        </li>

                                           
										
<li class="dropdown dropdown-main  " >
									        	<a href="#" class="dropdown-toggle  " data-toggle="dropdown"><span class="ion-android-inbox fa-lg"></span> Wallet Details<span class="ion-android-dropdown fa-lg"></span></a>
									        	<ul class="dropdown-menu dropdown-subhover dropdown-animation animated fadeIn">
									            	<li  ><a href="My_Wallet.aspx"><i class="fa fa-bookmark"></i> Add Money</a></li>
									            	<li ><a href="Transfer.aspx"><i class="fa fa-briefcase"></i> Transfer Money</a></li>
									            	
									        	</ul>
									        </li>
                                                 <li  >
									        	<a   href="../Chat.aspx" > <span class="ion-android-chat fa-lg"></span> Chat</a>
									        
									        </li>
											<li >
									        	<a   href="Manage_Account.aspx" ><span class="ion-android-settings fa-lg"></span> Manage Account</a>
									        
									        </li>
											<li >
									        	<a href="../Logout.aspx" ><span class="ion-android-hand fa-lg"></span> Logout</a>
									        
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

                       
                	<div class="header">
					<div class="container">
						<div class="row">
							<!-- Page Title -->
							<div class="col-sm-6 col-xs-12">
								<h1>Gas Book </h1>  
							</div>

							<!-- Breadcrumbs -->
							<div class="col-sm-6">
								<ol class="breadcrumb">
									<li><span class="ion-home breadcrumb-home"></span><a href="Notification.aspx">Home</a></li>
										<li>Payment</li>
                                    <li>Gas</li>
                                      <li>Book Gas</li>
								
								</ol>
							</div><!-- /column -->  
						</div><!-- /row -->  
					</div><!-- /container -->  
				</div>
			</header><!-- /header -->
                        <asp:Panel ID="Panel1" Visible="false" runat="server">
<div class="alert alert-danger alert-danger-rw alert-dismissible" role="alert">
								
    <a href="#" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></a>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
							</div></asp:Panel>


                <asp:Panel ID="Panel2" Visible="false" runat="server">
                    <div class="alert alert-success alert-success-rw alert-dismissible" role="alert">
							
                        <a href="Gas_Book.aspx" style="float:right;color:white">×</a>


							 	<b>Congratulation!</b> Gas is booked.
							</div>



                </asp:Panel>
			<!-- Start Payment -->
			<div class="container">
       
				<div class="row">
                     <br />
                      <div class="col-lg-offset-5" ><span style="color:white">asda</span><span  class="bordered-icon-color bordered-icon-lg price">
    <asp:Label Text="text"  ID="money" runat="server" />
					                </span></div>
                    <br />
                    <div class="panel panel-primary" style="border-radius:5px">
                        <div class="panel-heading">Booking</div>
                        <div class="panel-body">
                         
                     
					<div class="col-sm-12">
                        <form runat="server">
                            <fieldset>
                                <div class="form-group" style="margin-bottom:60px">
									<label class="col-sm-3 control-label" for="card-holder-name">Unique ID</label>
									<div class="col-sm-7"><div class="input-group">
							                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
										<input class="form-control checkout-form-border" required="required" id="Acc" runat="server" placeholder="Unique ID" type="text">
									</div></div>
								</div>
                                	
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-holder-name">Money</label>
									<div class="col-sm-7"><div class="input-group">
							                    <div class="input-group-addon"><i class="fa fa-inr"></i></div>
										<input class="form-control checkout-form-border" required="required" disabled="disabled" value="400" runat="server" id="AddMoney"  placeholder="Add Amount" type="number">
									</div></div>
								</div>

							

							

								<div class="col-sm-7 col-sm-offset-3">
									<hr class="mt15 mb15">
									<div class="col-sm-6 text-right mt10">

                                        <asp:Button  class="btn btn-rw btn-primary btn-lg" ID="Button2" OnClick="Button2_Click"  runat="server" Text="Book Now" />
                                         <asp:Button  class="btn btn-rw btn-primary btn-lg" ID="Button3" OnClick="Button3_Click"  formnovalidate="" runat="server" Text="Reset" />
                                       
						</div>
								</div>
							</fieldset>

                        


                        </form>


					</div>
				</div>   </div>
                    </div>
			</div>
			<!-- End Payment -->

			<!-- Start Checkout -->
			
				
			</div>
			<!-- End Checkout -->

			<!-- Begin Footer -->
			
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