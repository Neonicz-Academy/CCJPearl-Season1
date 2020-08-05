<!doctype html>
<html lang="en">
€‹
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
€‹
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
						<li>
							<a href="login.jsp">
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
					<a class="navbar-brand logo_h" href="#">
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
										<a class="nav-link" href="adminview.jsp">Orders</a>
									</li>
									<li class="nav-item">
										<a href="productview.jsp" class="nav-link">Products</a>
										
										</li>
										
								</ul>
							</div>
€‹
							
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Menu Area =================-->
€‹
	
			<div class="order_details_table">
			
				<form class="row login_form" action="AddProductServlet" method="post" id="contactForm" enctype="multipart/form-data" novalidate="novalidate">
					<table class="table">
						<tbody>
							<tr>
								<div class="container">
								</div>
									<div class="table-responsive"><div class="col-md-3">
									</div>
									<div class="col-md-3">
										<td><label>Product id</label></td>
									</div>
									<div class="col-md-4">
										<td><input type="text" class="form-control" id="name" name="productId" placeholder="product id" required>
€‹
										</td>
									</div>
									<div class="table-responsive"><div class="col-md-2">
									</div>
								</div>
							</tr> 
							<tr>
							</div>
									<div class="table-responsive"><div class="col-md-3">
									</div>
								<div class="table-responsive"><div class="col-md-3">
									<td><label>Product Name</label></td>
								</div>
								<div class="col-md-4">
									<td><input type="text" class="form-control" id="name" name="productName" placeholder="product name" required>
									</td>
								</div>
								<div class="table-responsive"><div class="col-md-2">
								</div>	
							</tr>
							<tr>
							</div>
									<div class="table-responsive"><div class="col-md-3">
									</div>
								<div class="table-responsive"><div class="col-md-3">
									<td><label>Brand</label></td>
								</div>
								<div class="col-md-4">
									<td>
									<select name="brandName">
										<option value="small">Armani</option>
										<option value="small">Fendi </option>
										<option value="small">Burberry</option>
										<option value="small">Levi's </option>
										<option value="small">Otto </option>
										<option value="small">Pepe jeans </option>
										<option value="small">FabIndia </option>
										<option value="small">Zara </option>
										<option value="small">Babyhug </option>
									</select>							
									</td>
								</div>
								<div class="table-responsive"><div class="col-md-2">
								
								</div>
									
							</tr>
							<tr></div>
									<div class="table-responsive"><div class="col-md-3">
									</div>
								<div class="table-responsive"><div class="col-md-3">
									<td><label>Colour</label></td>
								</div>
								<div class="col-md-4">
									<td>
										<select name="colour">
											<option value="emerald">Emerald</option>
											<option value="skyblue">Skyblue </option>
											<option value="wine">Wine </option>
											<option value="lemon">Lemon </option>
											<option value="ivory">Ivory </option>
											<option value="silver">Silver </option>
											<option value="grayl">Gray </option>
											<option value="black">Black </option>
											<option value="peach">Peach </option>
										</select>
									</td>
								</div>
								<div class="table-responsive"><div class="col-md-2">
								
								</div>
									
							</tr>
							<tr>
							</div>
									<div class="table-responsive"><div class="col-md-3">
									</div>
							<div class="table-responsive"><div class="col-md-3">
								<td><label>Image</label></td>
							</div>
							<div class="col-md-4">
								<td><input type="file" class="form-control" id="name" name="image">
€‹
								</td>
							</div>
							<div class="table-responsive"><div class="col-md-2">
								
							</div>
									
							</tr>
							<tr>
							</div>
									<div class="table-responsive"><div class="col-md-3">
									</div>
							<div class="table-responsive"><div class="col-md-3">
								<td><label>Size</label></td>
							</div>
							<div class="col-md-4">
								 <td><select name="size">
									<option value="small">Small </option>
									<option value="medium">Medium </option>
									<option value="large">Large </option>
									<option value="xl">XL </option>
									<option value="xxl">XXL </option>
									<option value="xxxl">XXXL </option>
								</select>
								</td>
							</div>
							<div class="table-responsive"><div class="col-md-2">	
							</div>		
							</tr>                                                      
						</tbody>	
					</table></form>
					<div class="card_area">
					
                        <button type="submit" value="submit" class="btn submit_btn">Add product</button>
                            
							
					
					</div>
			</div>
		</div>
		
	</section>
	<!--================End Order Details Area =================-->
€‹
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
</body>€‹
</html>




