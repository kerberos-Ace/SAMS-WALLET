<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="paytm.Admin.Transactions" %>

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
    	   <link href="../images/favicon.ico" rel="shortcut icon">
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
															<div > <span class="ion-android-contact fa-lg"></span> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
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
									        	<a   href="Users_Detail.aspx" ><span class="ion-android-contacts fa-lg"></span> User Details</a>
									        
									        </li>
                                            
											<li >
									        	<a   href="Coupon_Details.aspx" ><span class="ion-android-promotion fa-lg"></span> Coupon Details</a>
									        
									        </li>
										
									            	<li class="active" ><a href="Transactions.aspx?mname=0"><span class="ion-android-display fa-lg"></span> Transactions</a></li>

									            	
									        	

                                           
										

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
								<h1>Transaction Details </h1>  
							</div>

							<!-- Breadcrumbs -->
							<div class="col-sm-6">
								<ol class="breadcrumb">
									<li><span class="ion-home breadcrumb-home"></span><a href="Users_Detail.aspx">Home</a></li>
										<li>Payment</li>
                                    <li>Transactions</li>
                                
								
								</ol>
							</div><!-- /column -->  
						</div><!-- /row -->  
					</div><!-- /container -->  
				</div>
			</header><!-- /header -->
                      


              
			<!-- Start Payment -->
			<div class="container">
       <form runat="server">
				<div class="row">
                    
                  	<div class="col-sm-12 mt40">

                             <div  class="row">



                                       <div class="form-group  col-lg-2">
							            	<div   data-toggle="tooltip" data-placement="left" title="" data-original-title=" Unique Id" class="input-group">
							                    <div  class="input-group-addon"><i class="fa fa-user"></i></div>
					
                                                 <input class="form-control checkout-form-border"  runat="server" id="u_name"  placeholder="Unique Id" type="text">



							                </div>
							            </div>

							            
							            <div class="form-group  col-lg-3">
							            	<div class="input-group"  data-toggle="tooltip" data-placement="top" title="" data-original-title="Transaction Mode">
							                    <div class="input-group-addon"><i class="fa fa-cubes"></i></div>
							                	
                            <asp:DropDownList ID="DropDownList1"  required="" class="form-control " runat="server">
                               
                             <asp:ListItem Value="0">All</asp:ListItem>
                                 <asp:ListItem Value="1">Transfer From Bank </asp:ListItem>
                                   <asp:ListItem Value="2">Transfer To Wallet </asp:ListItem>
                                    <asp:ListItem Value="3">Gas Book </asp:ListItem>
                                     <asp:ListItem Value="6">Recharge</asp:ListItem>
                                 <asp:ListItem Value="4">Recharge (Discount coupon) </asp:ListItem>
                                 <asp:ListItem Value="5">Recharge (Without coupon) </asp:ListItem>
                                                </asp:DropDownList>




							                </div>
							            </div>


                                       <div class="form-group  col-lg-3">
							            	<div class="input-group"  data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Starting Date">
							                    <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
							                	
                         <input class="form-control checkout-form-border"  required="required" runat="server" id="d2"   type="date">

							                </div>
							            </div>
                                    <div class="form-group  col-lg-3">
							            	<div class="input-group" data-toggle="tooltip" data-placement="top" title="" data-original-title="Ending Date">
							                    <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
							                	
                         <input class="form-control checkout-form-border" required="required" runat="server" id="Date1"  type="date">

							                </div>
							            </div>

                          <div class="form-group col-lg-1">
							                <div class="input-group">
							                
							                 
                                                      <asp:Button ID="Button1"  class="btn btn-rw btn-primary" OnClick="Button1_Click"  runat="server" Text="Filters" />
							              </div>
							            </div>

                          </div>

                     
						
						
					</div>
                   
                 
                    
                    </div>
           <br />

               <div class="row" id="pane" runat="server">

                        


                    </div>
       </form>
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
