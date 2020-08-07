<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="img/favicon.png" type="image/png">
<title>Pearl Fashion</title>
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
<!-- main css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<!--================Header Menu Area =================-->
	<header class="header_area">
		<div class="top_menu row m0">
			<div class="container-fluid">
				<div class="float-right">
					<ul class="right_side">
						<li><a href="LoginServlet"> LOGOUT </a></li>

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
										href="adminview.html">Orders</a></li>
									<li class="nav-item"><a href="productview.html"
										class="nav-link">Products</a></li>
									<li class="nav-item"><a href="addpage.html"
										class="nav-link">Add Products</a></li>


								</ul>
							</div>


						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->






	<!--================Order view area =================-->
	<hr>
	<hr>
	<section class="blog_categorie_area">

		<div class="container">
			<div class="row">
	<%
	List<Map<String, String>> products = (List<Map<String, String>>) request.getAttribute("productList");
	if(products==null){
	%>
				<div>No orders found</div>
	<% 
	} else{
		for(Map<String, String> product:products){
	%>
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="assets/img/product/feature-product/f-p-2.jpg" alt="post">
						<div class="categories_details">
							<div class="categories_text">
								
								<a class="white_bg_btn"
									href="ListOrderServlet">View More</a>
								
								<div class="border_line"></div>
								<p>
									Order ID:
									<%= product.get("orderId") %></p>
								<p>
									Grand Total:
									<%= product.get("grandTotal") %></p>
								<p>
									Total Items:
									<%= product.get("totalItems") %></p>
							</div>
						</div>
					</div>
				</div>
				<%
		}
	}
	%>

			</div>
		</div>
	</section>
	<!--================Order view area =================-->

	<!--  <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Menu 3</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>  -->


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
	<script src="assets/vendors/jquery-ui/jquery-ui.js"></script>
	<script src="assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="assets/js/mail-script.js"></script>
	<script src="assets/vendors/jquery-ui/jquery-ui.js"></script>
	<script src="assets/js/theme.js"></script>

</body>
</html>