<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>PEARL FASHION</title>
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
					<!--<p>Call Us:  81 37 03 89 11</p> -->
				</div>
				<div class="float-right">
					<ul class="right_side">
						<li>
							<a href="login.html">
								LOGOUT
							</a>
						</li>
						
					</ul>
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
										<a class="nav-link" href="adminview.html">Order</a>
									</li>
									<li class="nav-item">
										<a href="productview.html" class="nav-link">Products</a>
										
										</li>
										<li class="nav-item">
											<a href="addpage.html" class="nav-link">Add Products</a>
											
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


	<!--================Order Details Area =================-->
	<section class="order_details p_120">
		<div class="container">
			<div class="order_details_table">
				<h2>Order ID</h2>

				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><b>Product id</b></th>
								<th scope="col"><b>Product name</b></th>
								<th scope="col"><b>size</b></th>
								<th scope="col"><b>Price</b></th>
								<th scope="col"><b>Quantity</b></th>
								
								<th scope="col"><b>Image</b></th>
								<th scope="col"><b>Grant Total</b></th>
							</tr>
						</thead>
	
						<tbody>
																	<%
	List<Map<String, String>> products = (List<Map<String, String>>) request.getAttribute("productList");
	if(products==null){
	%>
				<div>No orders found</div>
	<% 
	} else{
		for(Map<String, String> product:products){
	%>
							<tr>
								<td>
									<h5><%= product.get("productId")%></h5>
								</td>
								<td>
									<p><%= product.get("productName")%></p>
									
								</td>
								<td>
									<p><%= product.get("size") %></p>
								</td>
								<td>
									<p><%= product.get("price") %></p>
								</td>
								<td>
									<p><%= product.get("quantity") %></p>
								</td>
								
								<td>
									<div class="r-md-3">
										<img class="img-fluid" src="http://localhost:8080/PearlFashion/ListOrderImageServlet?productId=<%= product.get("productId") %>" alt="" height="100" width="100">	
									</div>
								</td>
								<td>
									<p><%= product.get("total") %></p>
								</td>
								<td>
								
							
						</div>
								</td>
							</tr>
							      											<%
		}
	}
	%>                                     
						</tbody>
							
							
						</div>
					</table>
	
					<div class="card_area">
							<a class="main_btn" href="#">Accept</a>
							
							<a class="main_btn" href="#">Reject</a>
					</div>
	
					
			</div>
		</div>
		
	</section>
	<!--================End Order Details Area =================-->






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