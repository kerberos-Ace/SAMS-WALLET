<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deposit_Money.aspx.cs" Inherits="paytm.Admin.Fake_Bank" %>

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
    	   <link href="../images/favicon.ico" rel="shortcut icon">
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

				<header>

				

				

		     	<!-- Begin Navigation -->
		     	<div class="navbar-wrapper">
					<div class="navbar navbar-main" id="fixed-navbar">
						<div class="container">
							<div class="row">
								<div class="col-sm-12 column-header">
									<div class="navbar-header">
										<!-- Brand -->
										<a href="#" class="navbar-brand">
										<div class=""><span class="ion-android-folder fa-lg"></span> Bank <span class="ion-android-folder fa-lg"></span></div>
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
									        	<a href="View_Account.aspx" ><span class="ion-android-display fa-lg"></span> Account Details</a>
									        
									        </li>

                                           
											<li >
									        	<a href="Add_Account.aspx" ><span class="ion-android-promotion fa-lg"></span> Add Account</a>
									        
									        </li >
											<li class="active">
									        	<a href="Deposit_Money.aspx" ><span class="ion-android-inbox fa-lg"></span> Deposit Money</a>
									        
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

                        <asp:Panel ID="Panel1" Visible="false" runat="server">
<div class="alert alert-danger alert-danger-rw alert-dismissible" role="alert">
								
    <a href="Fake_Bank.aspx" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></a>
							 	<b>Be careful.</b> Invalid Credentials
							</div></asp:Panel>
                <asp:Panel ID="Panel2" Visible="false" runat="server">
                    <div class="alert alert-success alert-success-rw alert-dismissible" role="alert">
							
                        <a href="Fake_Bank.aspx" class="close" data-dismiss="alert">×<span class="sr-only">Close</span></a>

							 	<b>Congratulation!</b> Amount has been added.
							</div>



                </asp:Panel>
                	<div class="header">
					<div class="container">
						<div class="row">
							<!-- Page Title -->
							<div class="col-sm-6 col-xs-12">
								<h1>Bank Details</h1>
							</div>

							<!-- Breadcrumbs -->
							<div class="col-sm-6">
								<ol class="breadcrumb">
									<li><span class="ion-home breadcrumb-home"></span><a href="View_Account.aspx">Home</a></li>
									
									<li>Deposite Money</li>
								</ol>
							</div><!-- /column -->  
						</div><!-- /row -->  
					</div><!-- /container -->  
				</div>
			</header><!-- /header -->

			<!-- Start Payment -->
			<div class="container">
                     <br />    <br />    <br />    <br />
                <div class="panel panel-primary">
                    <div class="panel-heading">Deposite Money</div>
                    <div class="panel-body">
                   
				<div class="row">
				
					<div class="col-sm-12">
						<form class="form-horizontal"  runat="server">
							<fieldset>
                                	<div class="form-group">
									<label class="col-sm-3 control-label" for="expiry-month">Account Number</label>
									<div class="col-sm-7">
										<div class="row">
										

											<div class="col-xs-12">
											<div class="input-group">
							                    <div class="input-group-addon"><i class="fa fa-cubes"></i></div>

                                                <asp:DropDownList onchange="myfun()" required="" class="form-control checkout-form-border" ID="DropDownList1" runat="server"></asp:DropDownList>

                                                </div>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-holder-name">Money</label>
									<div class="col-sm-7"><div class="input-group">
							                    <div class="input-group-addon"><i class="fa fa-inr"></i></div>
										<input class="form-control checkout-form-border" id="amount" runat="server" required="required" min="1"  placeholder="Amount" type="number">
									</div></div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Password</label>
									<div class="col-sm-7"><div class="input-group">
							                    <div class="input-group-addon"><span class="ion-ios7-locked"></span></div>
										<input class="form-control checkout-form-border" required="required" runat="server" type="password" id="pass" placeholder="Password">
									</div></div>
								</div>

							

								<div class="col-sm-7 col-sm-offset-3">
									<hr class="mt15 mb15">
									<div class="col-sm-6 text-right mt10">
							
                                        <asp:Button class="btn btn-rw btn-primary btn-lg" OnClick="Button1_Click" ID="Button1" runat="server" Text=" Add Amount" />
                                          <asp:Button class="btn btn-rw btn-primary btn-lg" OnClick="Button2_Click" ID="Button2" formnovalidate="" runat="server" Text="Reset" />
                                      
						</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div> 

                            </div>
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
    <script>


        function myfun() {
            var valuee = document.getElementById("DropDownList1").value;

           


            if (valuee != '') {

                xmlHttp = new XMLHttpRequest();
                var url = "../ajax.aspx?email=" + valuee + "&status=2";
                xmlHttp.open("GET", url, true);
                xmlHttp.onreadystatechange = OnResponse;
                xmlHttp.send(null);
            } else  {
                document.getElementById("amount").value = "";
                document.getElementById("pass").value = "";

            }


        }
        function OnResponse() {
            if (xmlHttp.readyState == 4) {
                var res = xmlHttp.responseText;

                if (res.trim() != "invalid") {

                    document.getElementById("amount").value = res;


                }
                else {

                    alert("Try Later !!");



                }

            }

        }
                </script>

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