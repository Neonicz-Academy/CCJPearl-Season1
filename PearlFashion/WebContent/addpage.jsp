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
						<H1 style="font-style: initial; color: palevioletred;">PEARL FASHION</H1>
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<div class="row w-100">
							<div class="col-lg-7 pr-0">
								<ul class="nav navbar-nav center_nav pull-right">
									<li class="nav-item active"><a class="nav-link"
										href="AdminOrderViewServlet">Orders</a></li>
									<li class="nav-item"><a href="ProductListServlet"
										class="nav-link">Products</a>
									</li>
									<li class="nav-item">
											<a href="AddProductServlet" class="nav-link">Add Products</a>
									</li>
								</ul>
							</div>							€‹
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->
	<div class="order_details_table">
	<h1>Add Product</h1>
	<div>
		<form class="row login_form" action="AddProductServlet" method="post" id="addproduct" enctype="multipart/form-data">
			<table class="table">
				<tbody>
					<tr></div>
 			 			<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Image</label></td>
								</div>
								<div class="col-md-4">
									<td><input type="file" class="form-control" id="image" name="image"></td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
							</div>
						</div>
					</tr>
					<tr>
						</div>
						<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Product Name</label></td>
								</div>
								<div class="col-md-4">
									<td><input type="text" class="form-control"
										id="productName" name="productName" placeholder="product name" required>
									</td>	
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
							</div>
						</div>
					</tr>
					<tr>
						</div>
						<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Size</label></td>
								</div>
								<div class="col-md-4">
									<td><select name="size">
											<option value="small">Small</option>
											<option value="medium">Medium</option>
											<option value="large">Large</option>
											<option value="xl">XL</option>
											<option value="xxl">XXL</option>
											<option value="xxxl">XXXL</option>
									</select></td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
							</div>
						</div>
					</tr>
					<tr>
						</div>
						<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>brand</label></td>
								</div>
								<div class="col-md-4">
									<td><select name="brandName">
											<option value="Armani">Armani</option>
											<option value="Fendi">Fendi</option>
											<option value="Burberry">Burberry</option>
											<option value="Levi's">Levi's</option>
											<option value="Otto">Otto</option>
											<option value="Pepe jeans">Pepe jeans</option>
											<option value="FabIndia">FabIndia</option>
											<option value="Zara">Zara</option>
											<option value="Babyhug">Babyhug</option>
									</select></td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
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
									<td><select name="colour">
											<option value="emerald">Emerald</option>
											<option value="skyblue">Skyblue</option>
											<option value="wine">Wine</option>
											<option value="lemon">Lemon</option>
											<option value="ivory">Ivory</option>
											<option value="silver">Silver</option>
											<option value="grayl">Gray</option>
											<option value="black">Black</option>
											<option value="peach">Peach</option>
									</select></td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
							</div>
						</tr>
						<tr>
						</div>
						<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Price</label></td>
								</div>
								<div class="col-md-4">
									<td><input type="text" class="form-control"
										id="price" name="price" placeholder="price"
										required></td>
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
							</div>
						</tr>
						<tr>
						
						<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Created By</label></td>
								</div>
								<div class="col-md-4">
									<td><input type="text" class="form-control"
										 name="createdBy" placeholder="Added By" required>
									</td>	
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
							</div>
						</div>
					</tr>
					<tr>
						<div class="table-responsive">
							<div class="col-md-3"></div>
							<div class="table-responsive">
								<div class="col-md-3">
									<td><label>Updated By</label></td>
								</div>
								<div class="col-md-4">
									<td><input type="text" class="form-control"
										 name="updatedBy" placeholder="Updated By" required>
									</td>	
								</div>
								<div class="table-responsive">
									<div class="col-md-2"></div>
								</div>
							</div>
						</div>
					</tr>
				</tbody>
			</table>
			<div class="card_area">
				<center><input type="submit" value="ADD" class="btn submit_btn"></input></center>
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
								<img src="assets/img/logo.png" alt="">
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
	<script src="assets/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="assets/js/jquery.ajaxchimp.min.js"></script>
	<script src="assets/js/mail-script.js"></script>
	<script src="assets/vendors/jquery-ui/jquery-ui.js"></script>
	<script src="assets/vendors/counter-up/jquery.waypoints.min.js"></script>
	<script src="assets/vendors/counter-up/jquery.counterup.js"></script>
	<script src="assets/js/theme.js"></script>
</body>
€‹
</html>




