<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.Map" %>

<!doctype html>
<html lang="en">
€‹
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="assets/img/favicon.png" type="image/png">
<title>PEARL FASHION</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/vendors/linericon/style.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="assets/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="assets/vendors/lightbox/simpleLightbox.css">
<link rel="stylesheet"
	href="assets/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="assets/vendors/animate-css/animate.css">
<link rel="stylesheet" href="assets/vendors/jquery-ui/jquery-ui.css">
<!-- main css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>
	€‹
	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="top_menu row m0">
			<div class="container-fluid">
				<div class="float-left">
					<!--<p>Call Us:  81 37 03 89 11</p> -->
				</div>
				<div class="float-right">
					<ul class="right_side">
						<li><a href="LogoutServlet"> LOGOUT </a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="#">
						<H1 style="font-style: initial; color: palevioletred;">PEARL
							FASHION</H1>
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<div class="row w-100">
							<div class="col-lg-7 pr-0">
								<ul class="nav navbar-nav center_nav pull-right">
									<li class="nav-item active"><a class="nav-link"
										href="AdminOrederViewServlet">Orders</a></li>
									<li class="nav-item"><a href="ProductListServlet"
										class="nav-link">Products</a>
									</li>
									<li class="nav-item">
										<a href="AddProductServlet" class="nav-link">Add Products</a>
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
		<% 
		Map<String, String> productDetail = (Map<String, String>) request.getAttribute("productDetail");
		if(productDetail == null){
		%>
		<div>
   			No products found
   		</div>
		<%
		} else
		{
		%>

	<div class="order_details_table">
		<h1> Delete Product</h1>
			<div>
				<form class="row login_form" action="DeleteServlet?productId=<%=productDetail.get("productId") %>" method="post" id="addproduct">			
				<table class="table">
				<tbody>
					<tr>
							<div class="table-responsive">
								<div class="table-responsive">
									<div class="col-md-3">
										<td><label>Product Name</label></td>
									</div>
									<div class="col-md-4">
										<td><%=productDetail.get("productName")%></td>
									</div>
									<div class="table-responsive">
										<div class="col-md-2">
										</div>
									</div>
								</div>
							</div>
					</tr>
						<tr>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Size</label></td>
								</div>
								<div class="col-md-4">
									<td>
										<%=productDetail.get("size")%>
									</td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
							</div>
					</tr>
					<tr>
						<div class="table-responsive">
								<div class="col-md-3">
									<td><label>brand</label></td>
								</div>
								<div class="col-md-4">
									<td>
										<%=productDetail.get("brandName")%>
									</td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2">
									</div>
							</tr>
						<tr>
						</div>
						<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Colour</label></td>
								</div>
								<div class="col-md-4">
									<td>
										<%=productDetail.get("colour")%>
									</td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
						<tr>
						</div>
						<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Price</label></td>
								</div>
								<div class="col-md-4">
									<td><%=productDetail.get("price") %>
										</td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
						<input type="text" name="productId" value="<%=productDetail.get("productId") %>" style="display:none">					
					</tr>
				</tbody>
			</table>
				<%
						}
				%>
				<div class="card_area">
					<input type="submit" value="DELETE" class="btn submit_btn"></input>
				</div>
		</form>
	</div>
</div>
</section>
	
	<!----------- Footer ------------>
				<footer class="footer-bs">
					<div class="row">
						<div class="col-md-6 footer-brand animated fadeInLeft">
							<h2>PEARL FASHION</h2>
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
					<section style="text-align:center; margin:10px auto;"><p><a href="http://enfoplus.net"></a></p></section>
				</footer>

			</div>
			<!--End of footer------------------------------------->
    
	
	<!--================End Order Details Area =================-->
	€‹
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/stellar.js"></script>
	<script src="vendors/lightbox/simpleLightbox.min.js"></script>
	<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="vendors/isotope/isotope-min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="vendors/jquery-ui/jquery-ui.js"></script>
	<script src="vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="vendors/counter-up/jquery.counterup.js"></script>
	<script src="js/theme.js"></script>
</body>
€‹
</html>