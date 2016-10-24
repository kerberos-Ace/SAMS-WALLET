<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="paytm.Chat" %>

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
    <style>
			@media only screen and (max-width : 540px) 
			{
				.chat-sidebar
				{
					display: none !important;
				}
				
				.chat-popup
				{
					display: none !important;
                  
				}
			}
			
		
			
			.chat-sidebar
			{
				width: 200px;
				position: fixed;
				height: 100%;
				right: 0px;
				top: 0px;
				padding-top: 10px;
				padding-bottom: 10px;
				border: 1px solid rgba(29, 49, 91, .3);
              background-color:#4e5d6c;
                
			}
			
			.sidebar-name 
			{
				padding-left: 10px;
				padding-right: 10px;
				margin-bottom: 4px;
				font-size: 12px;
			}
			
			.sidebar-name span
			{
				padding-left: 5px;
			}
			
			.sidebar-name a
			{
				display: block;
				height: 100%;
				text-decoration: none;
				color: inherit;
			}
			
		
			.sidebar-name img
			{
				width: 32px;
				height: 32px;
				vertical-align:middle;
			}
			
			.popup-box
			{
				display: none;
				position: fixed;
				bottom: 0px;
				right: 220px;
				height: 285px;
				background-color: rgb(237, 239, 244);
				width: 300px;
				border: 1px solid rgba(29, 49, 91, .3);
                 z-index:999;
			}
			
			.popup-box .popup-head
			{
				background-color: #6d84b4;
				padding: 5px;
				color: white;
				font-weight: bold;
				font-size: 14px;
				clear: both;
			}
			
			.popup-box .popup-head .popup-head-left
			{
				float: left;
			}
			
			.popup-box .popup-head .popup-head-right
			{
				float: right;
				opacity: 0.5;
			}
			
			.popup-box .popup-head .popup-head-right a
			{
				text-decoration: none;
				color: inherit;
			}
			
			.popup-box .popup-messages
			{
				height: 100%;
				overflow-y: scroll;
			}
			
			#carbonads { 
			    max-width: 300px; 
			    background: #f8f8f8;
			}

			.carbon-text { 
			    display: block; 
			    width: 130px; 
			}

			.carbon-poweredby { 
			    float: right; 
			}
			.carbon-text {
			    padding: 8px 0; 
			}

			#carbonads { 
			    padding: 15px;
			    border: 1px solid #ccc; 
			}

			.carbon-text {
			    font-size: 12px;
			    color: #333333;
			    text-decoration: none;
			}


			.carbon-poweredby {
			    font-size: 75%;
			    text-decoration: none;
			}

			#carbonads { 
			    position: fixed; 
			    top: 5px;
			    left: 5px;
			}

		</style>
		
		<script>
		    //this function can remove a array element.
		    Array.remove = function (array, from, to) {
		        var rest = array.slice((to || from) + 1 || array.length);
		        array.length = from < 0 ? array.length + from : from;
		        return array.push.apply(array, rest);
		    };

		    //this variable represents the total number of popups can be displayed according to the viewport width
		    var total_popups = 0;

		    //arrays of popups ids
		    var popups = [];

		    //this is used to close a popup
		    function close_popup(id) {
		        for (var iii = 0; iii < popups.length; iii++) {
		            if (id == popups[iii]) {
		                Array.remove(popups, iii);

		                document.getElementById(id).style.display = "none";

		                calculate_popups();

		                return;
		            }
		        }
		    }

		    //displays the popups. Displays based on the maximum number of popups that can be displayed on the current viewport width
		    function display_popups() {
		        var right = 220;

		        var iii = 0;
		        for (iii; iii < total_popups; iii++) {
		            if (popups[iii] != undefined) {
		                var element = document.getElementById(popups[iii]);
		                element.style.right = right + "px";
		                right = right + 320;
		                element.style.display = "block";
		            }
		        }

		        for (var jjj = iii; jjj < popups.length; jjj++) {
		            var element = document.getElementById(popups[jjj]);
		            element.style.display = "none";
		        }
		    }

		    //creates markup for a new popup. Adds the id to popups array.
		    function register_popup(id, name) {

		        for (var iii = 0; iii < popups.length; iii++) {
		            //already registered. Bring it to front.
		            if (id == popups[iii]) {
		                Array.remove(popups, iii);

		                popups.unshift(id);

		                calculate_popups();


		                return;
		            }
		        }

		        //  var element = '<div class="popup-box chat-popup" id="' + id + '">';
		        // element = element + '<div class="popup-head">';
		        // element = element + '<div class="popup-head-left">' + name + '</div>';
		        // element = element + '<div class="popup-head-right"><a href="javascript:close_popup(\'' + id + '\');">&#10005;</a></div>';
		        // element = element + '<div style="clear: both"></div></div><div class="popup-messages ">asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br>asdsad<br></div>';
		        //  element = element + '<div class="popup-footer">1weqweqw2asda</div></div>';



		        var element = '<div class="panel panel-default popup-box chat-popup" id="' + id + '">';
		        element = element + ' <div class="panel-heading" ><span  id="' + id + '-h" >' + name + '</span><span style="float:right"> <a href="javascript:close_popup(\'' + id + '\');">&#10005;</a> </span> </div>';
		        element = element + '  <div style="height:68%;color:black;overflow-y: scroll; " data-spy="scroll" class="panel-body" id="' + id + '-p" >';


		        element = element + '   </div> <div class="panel-footer"><div class="row"><div class="col-md-7"> <input  class="   btn-sm""  id="' + id + '-t" type="text"/></div><div class="col-md-4"> <input  class="sendmessage btn btn-success  btn-sm"  value="Send Message"   id="' + id + '-b" type="button"/></div></div> </div> </div>';









		        document.getElementsByTagName("body")[0].innerHTML = document.getElementsByTagName("body")[0].innerHTML + element;

		        popups.unshift(id);

		        calculate_popups();




		        var xmlHttp2;



		        var sid = document.getElementById('Label4').innerHTML;
		        var newid = document.getElementById('Label1').innerHTML;
		        xmlHttp2 = new XMLHttpRequest();
		        var url2 = "ajax1.aspx?sid=" + sid + "&rid=" + id + "&newid=" + newid + "&status=1";
		        xmlHttp2.open("GET", url2, true);
		        xmlHttp2.onreadystatechange = OnResponse2;
		        xmlHttp2.send(null);



		        function OnResponse2() {

		            if (xmlHttp2.readyState == 4) {
		                var res2 = xmlHttp2.responseText;

		                $('#' + id + '-p').empty();
		                $('#' + id + '-p').append(res2);


		            }
		        }






















		    }

		    //calculate the total number of popups suitable and then populate the toatal_popups variable.
		    function calculate_popups() {
		        var width = window.innerWidth;
		        if (width < 540) {
		            total_popups = 0;
		        }
		        else {
		            width = width - 200;
		            //320 is width of a single popup box
		            total_popups = parseInt(width / 320);
		            total_popups = total_popups - 1;
		        }

		        display_popups();

		    }

		    //recalculate when window is loaded and also when window is resized.
		    window.addEventListener("resize", calculate_popups);
		    window.addEventListener("load", calculate_popups);

		</script>

	</head>

<body class="royal_preloader scrollreveal">
     <style>
                #cond {
width: 960px; 
position: relative;
margin:0 auto;
line-height: 1.4em;
}

                @media only screen and (max-width: 479px) {
                    #cond {
                        width: 90%;
                    }
                }
            </style>

		<script async type="text/javascript" src="..Scripts/carbond123.js?zoneid=1673&amp;serve=C6AILKT&amp;placement=qnimate" id="_carbonads_js"></script>
    
    
    
       <script>
           $(function () {
               // Reference the auto-generated proxy for the hub.
               var chat = $.connection.chatHub;


               // Create a function that the hub can call back to display messages.
               chat.client.addNewMessageToPage = function (name1, message, status) {
                   // Add the message to the page.
                   // message=id

                   if (status == 1) {

                       if ($("#" + message + "-i").length != 0) {
                           $("#" + message + "-i").attr("src", "css/g.png");

                       }



                   }
                   else
                       if (status == 2) {


                           if ($("#" + message + "-i").length != 0) {
                               $("#" + message + "-i").attr("src", "css/d.png");

                           }
                       }

                       else if (status == 3) {
                           var arr = name1.split('}');
                           //  alert(arr[1] + " sent a mesage"+arr[0]);

                           $('#' + arr[0] + '-p').append('<div style="border-radius:5px" class="cond alert alert-dismissible alert-success">' + message + '</div>');


                           //   sound

                           var audioElement = document.createElement('audio');
                           audioElement.setAttribute('src', 'css/q.mp3');
                           audioElement.setAttribute('autoplay', 'autoplay');
                           //audioElement.load()

                           $.get();

                           audioElement.addEventListener("load", function () {
                               audioElement.play();
                           }, true);

                           $('.play').click(function () {
                               audioElement.play();
                           });

                            var msg = new SpeechSynthesisUtterance(arr[1] + ' sent a message');
                            window.speechSynthesis.speak(msg);
                             var msg1 = new SpeechSynthesisUtterance(message);
                             window.speechSynthesis.speak(msg1);

                           register_popup(arr[0], arr[1]);
                       }

               };



               $.connection.hub.qs = { "id": $('#Label4').text() + "}" + $('#Label1').text() };


               // Start the connection.

               //  $('<p>Text</p>').appendTo('#Content');
               $.connection.hub.start().done(function () {

                   // function myFunction(clicked_id) {

                   $(document).on("click", ".sendmessage", function () {
                       // $('.sendmessage').click(function () {
                       var id = this.id;


                       var arr = id.split('-');
                       var value1 = $('#' + arr[0] + '-t').val();
                       if (!value1.length == 0) {
                     

                           $('#' + arr[0] + '-p').append('<div style="border-radius:5px" class="cond alert alert-dismissible alert-warning">' + value1 + '</div>');

                           // send to server
                           chat.server.send(arr[0], value1, document.getElementById('Label1').innerHTML, document.getElementById('Label4').innerHTML);
                           $('#' + arr[0] + '-t').val('');
                       }
                   }

                   );



               });
           });




    </script>

    
    
        <br />
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
									        	<a   href="user/Notification.aspx" > <span class="ion-android-forums fa-lg"></span> Notification</a>
									        
									        </li>

										<li class="dropdown dropdown-main " >
									        	<a href="#" class="dropdown-toggle  "  data-toggle="dropdown"><span class="ion-android-promotion fa-lg"></span> Payment<span class="ion-android-dropdown fa-lg"></span></a>
									        	<ul class="dropdown-menu dropdown-subhover dropdown-animation animated fadeIn">
									            	<li ><a href="user/Recharge.aspx"> <i class="fa fa-bolt"></i> Recharge</a></li>


                                                    <li class="dropdown dropdown-submenu">
											    		<a class="trigger"><span class="ion-android-lightbulb fa-lg"></span> Gas</a>
												    	<ul class="dropdown-menu animated fadeIn dropdown-animation">
												    		<li><a tabindex="-1" href="user/Gas_Book.aspx"><span class="ion-android-archive fa-lg"></span> Book Gas</a></li>
												    		<li><a tabindex="-1" href="user/Gas_Details.aspx?mname=1"> <i class="fa fa-bank"></i> Gas Details</a></li>
												    	
												    	</ul>
													</li>
									            	<li ><a href="user/Transaction.aspx?mname=0"><span class="ion-android-display fa-lg"></span> Transactions</a></li>

									            	
									        	</ul>
									        </li>

                                           
										
<li class="dropdown dropdown-main " >
									        	<a href="#" class="dropdown-toggle  " data-toggle="dropdown"><span class="ion-android-inbox fa-lg"></span> Wallet Details<span class="ion-android-dropdown fa-lg"></span></a>
									        	<ul class="dropdown-menu dropdown-subhover dropdown-animation animated fadeIn">
									            	<li ><a href="user/My_Wallet.aspx"><i class="fa fa-bookmark"></i> Add Money</a></li>
									            	<li ><a href="user/Transfer.aspx"><i class="fa fa-briefcase"></i> Transfer Money</a></li>
									            	
									        	</ul>
									        </li>
                                                  <li class="active" >
									        	<a   href="Chat.aspx" > <span class="ion-android-chat fa-lg"></span> Chat</a>
									        
									        </li>
											<li >
									        	<a   href="user/Manage_Account.aspx" ><span class="ion-android-settings fa-lg"></span> Manage Account</a>
									        
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
                      <div hidden="hidden" class="play">Play</div>
                       
                	<div class="header">
					<div class="container">
						<div class="row">
							<!-- Page Title -->
							<div class="col-sm-6 col-xs-12">
								<h1>Chat</h1>  
							</div>

							<!-- Breadcrumbs -->
							<div class="col-sm-6">
								<ol class="breadcrumb">
									<li><span class="ion-home breadcrumb-home"></span><a href="Notification.aspx">Home</a></li>
										<li>Chat</li>
								
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
							
                        <a href="Chat.aspx" style="float:right;color:white">×</a>

                        <asp:Label ID="Label3" Visible="false" runat="server" Text="Label"></asp:Label>
							 	<b>Congratulation!</b> Friend Request has been sent.
							</div>



                </asp:Panel>
          
			<!-- Start Payment -->
			<div class="container">
       
				<div class="row">

                   <br />
                      <br />
                    <form runat="server">
                       
                         
<!-- Begin 3 Columns --> 
					<div class="row mb20">
                        	<div class="col-sm-3">
					
                            <div class="heading"><h1>Friends</h1></div>

                                   <div  id="frnd" runat="server"></div>


                            </div>
						
					
						<div class="col-sm-5">
							   <div class="heading"><h1>Send Request</h1></div>
<div class="alert alert-success alert-success-rw alert-dismissible" role="alert">
								<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
							 	<b>Make Friends!</b> <br />Just enter unique id. 
							</div>
                            <div class="alert alert-info alert-info-rw" role="alert">
                              <fieldset>
                                <div class="form-group">
									<label class="col-sm-3 control-label" for="card-holder-name">Unique ID</label>
									<div class="col-sm-8"><div class="input-group">
							                    <div class="input-group-addon"><span class="fa fa-user"></span></div>
										<input class="form-control checkout-form-border"  id="uid" runat="server" placeholder="Unique ID" type="text">
									</div></div>
								</div>
                                  	<div class="col-sm-7 col-sm-offset-5">
									
									<div class="col-sm-6 text-right mt10">

                                        <asp:Button  class="btn btn-warning btn-rw" ID="Button1" OnClick="Button1_Click"  runat="server" Text="Send Request" />
                                        
                                       
						</div>
                                          <asp:Label ID="Label4" Font-Size="0.5px" runat="server" Text="Label"></asp:Label>
								</div>
                                	</fieldset>


                            </div>
       
                    

						</div>
					


                        	<div class="col-sm-4">
							                       <div class="heading"><h1>Friend Request</h1></div>

                            <div  id="frndrequest" runat="server">
                           
                                </div>
						</div>


						

<!-- * 3 COL SYNTAX * --></div></form>
                 
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
     <script src="/Scripts/jquery.signalR-1.0.0.js"></script>
    <script src="/signalr/hubs"></script>


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
