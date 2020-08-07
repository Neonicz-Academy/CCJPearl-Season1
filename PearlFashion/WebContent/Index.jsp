<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!doctype html>
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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<!-- main css -->
	<link rel="stylesheet" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
</head>

<body>

	<!--================Header Menu Area =================-->
		
	<header class="header_area">
		<div class="top_menu row m0">
			<div class="container-fluid">
				
			</div>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.jsp">
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
										<a href="AddCartServlet" class="icons" >
											<i class="lnr lnr lnr-cart"></i><span class="cart-items"></span>
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
	<section class="home_banner_area">
		<div class="overlay"></div>
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content row">
					<div class="offset-lg-2 col-lg-8">
						<h3>Fashion for
							<br />Upcoming Winter</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->
	
	
	<!--================Product Area =================-->
	<section class="cat_product_area section_gap"> 
		<div class="container-fluid">
			<p style="text-align: center;color: palevioletred;font-size: 100px;font-family: 'Times New Roman', Times, serif;"> Products</p>
			<div class="row flex-row-reverse">
				<div class="col-lg-12">
					
					<div class="latest_product_inner row">
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
		
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="f_p_item">
								<div class="f_p_img">
									<img class="img-fluid" src="assets/img/product/<%= product.get("image") %>" alt="">
									<div class="p_icon">
										
										<a href="cart.jsp">
											<i class="lnr lnr-cart"></i>
										</a>
									</div>
								</div>
								<a href="ProductDetailServlet?productId=<%= product.get("productId") %>">
									</h4><%= product.get("productName") %></h4>
								</a> 
								<h5><%= product.get("price") %></h5>
								<div> <%= product.get("productId") %> </div>
							</div>
						</div>
						<%
		}
	}
	%>
						
					 </div>
				</div>
		   </div>
	</div>
</section>
				
				


				
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
					<section style="text-align:center; margin:10px auto;"><p>Footer Designed by <a href="http://enfoplus.net">Prince J. Sargbah</a></p></section>
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
	<script src="assets/vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="vendors/flipclock/timer.js"></script>
	<script src="vendors/counter-up/jquery.counterup.js"></script>
	<script src="assets/js/mail-script.js"></script>
	<script src="assets/js/theme.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <script src="assets/js/script.js"></script>
</body>

</html>