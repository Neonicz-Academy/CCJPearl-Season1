<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>

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
					<a class="navbar-brand logo_h" href="index.html">
						<H1 style="font-style:initial; color:palevioletred;">PEARL FASHION</H1>
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
			<div class="container">
				<div class="banner_content text-center">
					<h2>Order Confirmation</h2>
					<div class="page_link">
						<a href="HomeProductsServlet">Home</a>
						<a href="confirmation.html">Confirmation</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Order Details Area =================-->
	<section class="order_details p_120">
		<div class="container">
			<h3 class="title_confirmation">Thank you. Your order has been received.</h3>
			<div class="row order_d_inner">
	
				<div class="col-lg-4">
					<div class="details_item">
						<h4>Order Info</h4>
						<ul class="list">
							<li>
								<a href="#">
									<span>Order number</span> : 60235</a>
							</li>
							<li>
								<a href="#">
									<span>Date</span> : Los Angeles</a>
							</li>
							<li>
								<a href="#">
									<span>Total</span> : USD 2210</a>
							</li>
							<li>
								<a href="#">
									<span>Payment method</span> : Check payments</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="details_item">
						<h4>Billing Address</h4>
						<ul class="list">
							<li>
								<a href="#">
									<span>Street</span> : 56/8</a>
							</li>
							<li>
								<a href="#">
									<span>City</span> : Los Angeles</a>
							</li>
							<li>
								<a href="#">
									<span>Country</span> : United States</a>
							</li>
							<li>
								<a href="#">
									<span>Postcode </span> : 36952</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="details_item">
						<h4>Shipping Address</h4>
						<ul class="list">
							<li>
								<a href="#">
									<span>Street</span> : 56/8</a>
							</li>
							<li>
								<a href="#">
									<span>City</span> : Los Angeles</a>
							</li>
							<li>
								<a href="#">
									<span>Country</span> : United States</a>
							</li>
							<li>
								<a href="#">
									<span>Postcode </span> : 36952</a>
							</li>
						</ul>
					</div>
				</div>
		
			</div>
			<div class="order_details_table">
				<h2>Order Details</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Product</th>
								<th scope="col">Quantity</th>
								<th scope="col">Total</th>
							</tr>
						</thead>
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
						<tbody>
							<tr>
								<td>
									<p><%=  product.get("productName") %></p>
								</td>
								<td>
									<h5>x1 </h5>
								</td>
								<td>
									<p><%= product.get("price") %></p>
								</td>
							</tr>
<%
		}
	}
%>
							<!-- <tr>
								<td>
									<p>Long Sleeve TShirt</p>
								</td>
								<td>
									<h5>x 01</h5>
								</td>
								<td>
									<p>150.00</p>
								</td>
							</tr>
							<tr>
								<td>
									<p>Long Sleeve TShirt</p>
								</td>
								<td>
									<h5>x 01</h5>
								</td>
								<td>
									<p>150.00</p>
								</td>
							</tr> -->
							<tr>
								<td>
									<h4>Subtotal</h4>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p>450.00</p>
								</td>
							</tr>
							<tr>
								<td>
									<h4>Shipping</h4>
								</td>
								<td>
									<h5></h5>
								</td>
								
							</tr>
							<tr>
								<td>
									<h4>Total</h4>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p>450.00</p>
								</td>
							</tr>
						</tbody>
	
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Order Details Area =================-->




				
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
			<!--End of footer-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="assets/js/jquery-3.2.1.min.js"></script>
	<script src="assets/js/popper.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/stellar.js"></script>
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
</body>

</html>