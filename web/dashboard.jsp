<%-- 
    Document   : dashboard
    Created on : 4 Oct, 2020, 2:44:28 PM
    Author     : Devil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>Flight Ticket Booking a Flat Responsive Widget Template :: w3layouts</title>
	
        <link rel="stylesheet" href="css/style.css" type="text/css">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css">
	<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="keywords" content="Flight Ticket Booking  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
        <div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="admin.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ADMIN</a>
    <a href="retrieve.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">DATA</a>
    <a href="register.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">REGISTRATION</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">LOGIN</a>
    
   </div>
</div>
</head>
<body style="background: darkgrey;">
	<h1><u> Air Ticket Booking</u></h1>
	<div class="main-agileinfo">
		<div class="sap_tabs">			
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
				<ul class="resp-tabs-list">
					<li class="resp-tab-item resp-tab-active" aria-controls="tab_item-0" role="tab"><span style="
   font-size: x-large;
">SEARCH FLIGHTS</span></li>
			
									
				</ul>	
				<div class="clearfix"> </div>	
				<div class="resp-tabs-container">
					<h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Round TripRound Trip</h2><h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>One way</h2><div class="tab-1 resp-tab-content roundtrip resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
						<form action="flightAvailable.jsp" method="post" style="
    border: #FFC107;
    border-style: solid;
">
							<div class="from">
								<h3>From</h3>
        <select name = "from">
            <option value = "#" selected>Select City</option>            
            <option value = "Rajkot" selected>Rajkot</option>
            <option value = "Ahmedabad" selected>Ahmedabad</option>
            <option value = "Jamnagar" selected>Jamnagar</option>
            <option value = "Gandhinagar" selected>Gandhinagar</option>
            <option value = "Mumbai" selected>Mumbai</option>
            <option value = "Pune" selected>Pune</option>
            <option value = "Hyderabad" selected>Hyderabad</option>
            <option value = "Chennai" selected>Chennai</option>
            <option value = "Delhi" selected>Delhi</option>
            <option value = "Indore" selected>Indore)</option>
            <option value = "Kolkata" selected>Kolkata</option>
            
         </select>
							</div>
							<div class="to">
								<h3>To</h3>
        <select name = "to">
            <option value = "#" selected>Select City</option>            
            <option value = "Rajkot" selected>Rajkot</option>
            <option value = "Ahmedabad" selected>Ahmedabad</option>
            <option value = "Jamnagar" selected>Jamnagar</option>
            <option value = "Gandhinagar" selected>Gandhinagar</option>
            <option value = "Mumbai" selected>Mumbai</option>
            <option value = "Pune" selected>Pune</option>
            <option value = "Hyderabad" selected>Hyderabad</option>
            <option value = "Chennai" selected>Chennai</option>
            <option value = "Delhi" selected>Delhi</option>
            <option value = "Indore" selected>Indore)</option>
            <option value = "Kolkata" selected>Kolkata</option>
            
         </select>
							</div>
							<div class="clear"></div>
							<div class="date">
								<div class="depart">
									<h3>Departure</h3>
									<input id="datepicker" name="Text" type="text" value="dd/mm/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'dd/mm/yyyy';}" required=""  style="padding: 6px;" class="hasDatepicker">
									
								</div>
								 
								<div class="clear"></div>
							</div>
							
							<div class="clear"></div>
							
							<div class="clear"></div>
							<input type="submit" value="Search Flights" style="
    margin-top: 29px;
">
						</form>						
					</div>		
					
				</div>						
			</div>
		</div>
	</div>
	
	<!--script for portfolio-->
		<script src="js/jquery.min.js"> </script>
		<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(document).ready(function () {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion           
					width: 'auto', //auto or any width like 600px
					fit: true   // 100% fit in a container
				});
			});		
		</script>
		<!--//script for portfolio-->
				<!-- Calendar -->
				<link rel="stylesheet" href="css/jquery-ui.css">
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->
			<!--quantity-->
									<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--//quantity-->
						<!--load more-->
								<script>
	$(document).ready(function () {
		size_li = $("#myList li").size();
		x=1;
		$('#myList li:lt('+x+')').show();
		$('#loadMore').click(function () {
			x= (x+1 <= size_li) ? x+1 : size_li;
			$('#myList li:lt('+x+')').show();
		});
		$('#showLess').click(function () {
			x=(x-1<0) ? 1 : x-1;
			$('#myList li').not(':lt('+x+')').hide();
		});
	});
</script>
<!-- //load-more -->

<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div></body>
</html>
