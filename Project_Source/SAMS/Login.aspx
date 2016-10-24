<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="paytm.Admin.Admin_Login" %>

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
	<title>Login</title>
	
	<!-- Royal Preloader CSS -->
	<link rel="stylesheet" type="text/css" href="css/royal_preloader.css">

	<!-- jQuery Files -->
	<script type="text/javascript" src="../js/jquery.min.js"></script>

	<!-- Royal Preloader -->
	<script type="text/javascript" src="../js/royal_preloader.min.js"></script>
     <link href="../images/favicon.ico" rel="shortcut icon">
	<!-- Stylesheets -->
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link href="../css/style.css" rel="stylesheet" title="main-css">
	<link href="../css/bootstrap-social.css" rel="stylesheet">
	<link href="../css/animate.min.css" rel="stylesheet">
	<link href="../css/owl.carousel.css" rel="stylesheet" >
	<link href="../css/jquery.snippet.css" rel="stylesheet">
	<link href="../css/buttons.css" rel="stylesheet">

	<!-- Style Switcher / remove for production -->
	<link href="../css/style-switcher.css" rel="stylesheet">
	


	<!-- Icon Fonts -->
	<link href='../css/ionicons.min.css' rel='stylesheet' type='text/css'>
	<link href='../css/font-awesome.css' rel='stylesheet' type='text/css'>

	<!-- Magnific Popup -->
	<link href='../css/magnific-popup.css' rel='stylesheet' type='text/css'>
</head>
<body class="royal_preloader scrollreveal" style="background-image:url(../images/backgrounds/bg5.jpg)">

	<div id="royal_preloader"></div>
	
	<!-- Start Switcher -->
	

	<!-- Begin Boxed or Fullwidth Layout -->
	<div id="bg-boxed">
	    <div class="boxed">

			
            <asp:Panel ID="Panel1" Visible="false" runat="server">
<div class="alert alert-danger alert-danger-rw alert-dismissible" role="alert">
								
    <a href="#" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></a>
							 	<b>Be careful.</b> Invalid Credentials
							</div></asp:Panel>
			<!-- Begin Content -->
			<div class="content-40mg">
				<div class="container">

					<div class="row">
                        <div style="margin-bottom:40px">.</div>

                        <div class=" col-sm-offset-5" >

     <img src="images/ceo.png" style="margin-bottom:15px" class="img-circle img-responsive col-sm-3" alt="Alternate Text" />
                        </div>
                            
						<!-- Begin Login -->
						<div class="col-sm-6 col-sm-offset-3">
							<div class="panel no-margin panel-default">
							    <div class="panel-heading">Login Access</div>
							    <div class="panel-body">
							        <form  runat="server">
                                           <div class="form-group">
							                <div class="input-group row">
							                 <div class="col-lg-5">
                                                 <div class="radio">
											<label>
												<asp:RadioButton ID="RadioButton1"  GroupName="yo"  Checked="true" runat="server" />
												Other
											</label>
                                                </div></div>
                                                    <div class="col-lg-2"> 
                                                        
                                                        
                                                            <div class="radio">
											<label>
												<asp:RadioButton ID="RadioButton2"  GroupName="yo"  runat="server" />
												Company
											</label></div>
                                                </div>
                                                        
							            </div></div>
							            <div class="form-group">
							                <div class="input-group">
							                    <div class="input-group-addon"><span class="ion-android-mail" style="font-size:9px;"></span></div>
							                    <input class="form-control" type="email" required="required" id="email" runat="server" placeholder="Enter email">
							                </div>
							            </div>
							            <div class="form-group">
							            	<div class="input-group">
							                    <div class="input-group-addon"><span class="ion-ios7-locked"></span></div>
							                	<input type="password" required="required" class="form-control" id="pass" runat="server" placeholder="Password">
							                </div>
							            </div>
							         
							            <hr class="mb20 mt15">
							      
                                        <asp:Button ID="Button1" OnClick="Button1_Click" class="btn btn-rw btn-primary" runat="server" Text="Login" />
							        </form><!-- /form -->
							    </div><!-- /panel body -->
							</div><!-- /panel -->
						</div><!-- /column-->
						<!-- End Login -->

						<!-- Begin Register -->
						
						<!-- End Register -->

					</div><!-- /row -->

				</div><!-- /container -->
			</div><!-- /content -->
			<!-- End Content -->

			

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