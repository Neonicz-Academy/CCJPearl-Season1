<!doctype html>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Pearl Fashion</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.css">
	<link rel="stylesheet" href="assets/vendors/linericon/style.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="assets/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="assets/vendors/animate-css/animate.css">
	<link rel="stylesheet" href="assets/vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
</head>

<body>

	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="top_menu row m0">
			<div class="container-fluid">
				<div class="float-left">
					<p>Call Us: 9380090124</p>
				</div>
				
			</div>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.jsp">
						<h1 style="font-style:initial; color:palevioletred;">PEARL FASHION</h1>
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
					 aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<div class="row w-100">
							<div class="col-lg-7 pr-0">
								<ul class="nav navbar-nav center_nav pull-right">
									<li class="nav-item active">
										<a class="nav-link" href="HomeProductsServlet">Home</a>
									</li>
								
										<li class="nav-item">
											<a href="AddCartServlet" class="icons">
												<i class="lnr lnr lnr-cart"></i>
											</a>
										</li>		
								</ul>
							</div>

							
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->

	<!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="overlay"></div>
			<div class="container">
				<div class="banner_content text-center">
					<h2>Product Checkout</h2>
					<div class="page_link">
						<a href="HomeProductsServlet">Home</a>
						<a href="#">Checkout</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

		<!--================Checkout Area =================-->
	<section class="checkout_area section_gap">
		<div class="container">
			
			<form class="" action="confirmation.jsp" method="post" id="">
			<div class="billing_details">
				<div class="row">
					<div class="col-lg-8">
						<h3>Billing Details</h3>
						<form class="row contact_form" action="InvoiceServlet" method="post">
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="first" name="name" placeholder="First name" required>
								<!--<span class="placeholder" data-placeholder="First name"></span>-->
							</div>
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="company" name="company" placeholder="Last name" required>
								<!--<input type="text" class="form-control" id="last" name="name" >
								<span class="placeholder" data-placeholder="Last name"></span>-->
							</div>
							
							<div class="col-md-6 form-group p_star">
							<!--
								<input type="text" class="form-control" id="number" name="number" max>
								<span class="placeholder" data-placeholder="Phone number"></span>-->
								<input type="tel" minlength="10" maxlength="10" id="mobile" name="mobile"placeholder="Mobile Number">



							</div>
							<div class="col-md-6 form-group p_star">
								<input type="email" class="form-control" id="email" name="companyemail" placeholder="Email" required>
								<!--<span class="placeholder" data-placeholder="Email Address"></span>-->
							</div>
							<div class="col-md-12 form-group p_star">
								<select class="country_select"  id="country" required>
								<option value="1">Select Country</option>
									<option value="1">INDIA</option>
									
								</select>
							</div>
							<div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="add1" name="add1" placeholder="Address line 1" required>
								<!--<span class="placeholder" data-placeholder="Address line 01"></span>-->
							</div>
							<div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="add2" name="add2" placeholder="Address Line 2" required>
								<!--<span class="placeholder" data-placeholder="Address line 02"></span>-->
							</div>
							<div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="city" name="city" placeholder="Town/City" required>
								<!--<span class="placeholder" data-placeholder="Town/City"></span>-->
							</div>
							<div class="col-md-12 form-group p_star">
								<select id="country"class="country_select" required>
								<option value="1">Select District</option>
									<option value="1">TVM</option>
									<option value="2">KOLLAM</option>
									<option value="4">PATHANAMTHITTA</option>
									<option value="1">ALAPPY</option>
									<option value="1">KOTTAYAM</option>
									<option value="1">IDUKKI</option>
									<option value="1">ERANAKULAM</option>
									<option value="1">TRISSURE</option>
									<option value="1">MALAPURAM</option>
									<option value="1">KOZHIKOD</option>
									<option value="1">WAYANAD</option>
									<option value="1">KANNUR</option>
									<option value="1">KAZARCODE</option>
								</select>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="zip" name="zip" placeholder="Postcode/ZIP" required>
							</div>
							
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="main_btn" onClick="customerDetails(document.getElementById('city').value , document.getElementById('city').value, document.getElementById('country').value ,document.getElementById('zip').value );">Order</button>
							</div>
							
							
						</form>
					</div>
	
					
					<div class="col-lg-4">
						<div class="order_box">
							<h2>Your Order</h2>
							<ul class="list">
								<li>
									<a href="#">Product
										<span>Total</span>
									</a>
								</li>
													<%
	List<Map<String, String>> products = (List<Map<String, String>>) request.getAttribute("productList");
	if(products==null){
	%>
	   <div>
	   No products found
	   </div>
	<% 
	} else{
		for(Map<String, String> product:products){
	%>
								<li>
									<a href="#"><%= product.get("productName") %>
										<span class="middle"><%= product.get("quantity") %></span>
										<span class="last"><%= product.get("total") %></span>
									</a>
								</li>
								<!-- <li>
									<a href="#">Long Sleeve TShirt
										<span class="middle">x 01</span>
										<span class="last">150.00</span>
									</a>
								</li>
								<li>
									<a href="#">Long Sleeve TShirt
										<span class="middle">x 01</span>
										<span class="last">150.00</span>
									</a>
								</li -->>
							</ul>
<%
		}
	}
%>
							
							<ul class="list list_2">
								<li>
									<a href="#">Subtotal
										<span>450.00</span>
									</a>
								</li>
								
								<li>
									<a href="#">Total
										<span>450.00</span>
									</a>
								</li>
							</ul>
							
								
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
			</form>
		</div>
	</section>
	<!--================End Checkout Area =================-->



				<!----------- Footer ------------>
				<footer class="footer-bs">
					<div class="row">
						<div class="col-md-6 footer-brand animated fadeInLeft">
							<h2>Logo</h2>
							<a class="navbar-brand logo_h" href="index.html">
								<img src="img/logo.png" alt="">
							</a>
							<p>Always deliver more than expected.
								<br>We see our customer as invited guests to a party, and we are the hosts. It's our job every day to make every important aspects of the customer experience a little bit better.</p>
							<p>© 2014 BS3 UI Kit, All rights reserved</p>
						</div>
						<div class="col-md-4 footer-nav animated fadeInUp">
							
							<div class="col-md-6">
								<ul class="list">
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">pearlfashion@gmail.com</a></li>
									<li><a href="#">Call Us : 9380090124</a></li>
									
								</ul>
							</div>
						</div>
						
						
					</div>
					<section style="text-align:center; margin:10px auto;"><p>Designed by <a href="http://enfoplus.net">Prince J. Sargbah</a></p></section>
				</footer>
				
				
			
			</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="assets/js/jquery-3.2.1.min.js"></script>
	<script src="assets/js/popper.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="vjs/stellar.js"></script>
	<script src="assets/vendors/lightbox/simpleLightbox.min.js"></script>
	<script src="assets/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="assets/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="assets/vendors/isotope/isotope-min.js"></script>
	<script src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="assets/js/mail-script.js"></script>
	<script src="assets/vendors/jquery-ui/jquery-ui.js"></script>
	<script src="assets/vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="assets/vendors/counter-up/jquery.counterup.js"></script>
	<script src="assets/js/theme.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
//var user = $.cookie("userInfo");
function customerDetails(street,city,country,zip){
	alert("cookie is ready---------");
	console.log("Called>>>>>>>>>>>>>>>>>>");
	var myCookie = getCookie("userCookie");
	document.cookie="userCookie="+JSON.stringify(myCookie);
	var p = { street:street,city:city, country:country,zip:zip};
	var jsonObject = JSON.parse(p);
	return;
	/* var res;
	res.push(jsonObject);
	res.push(user); 
	document.cookie="userCookie="+JSON.stringify(res);
	console.log(user.userInfo); */
}
           function getCookie(userCookie) {
	  var name = userCookie + "=";
	  var decodedCookie = decodeURIComponent(document.cookie);
	  var ca = decodedCookie.split(';');
	  for(var i = 0; i <ca.length; i++)
		{
	  		var c = ca[i];
	  		while (c.charAt(0) == ' ') 
			{
	     		 c = c.substring(1);
	   		 }
	  		if (c.indexOf(name) == 0) 
			{
	      		return c.substring(name.length, c.length);
	   		 }
	  }
	  return "";
}
</script>
	
</body>

</html>