<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>PEARL FASHION</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="vendors/animate-css/animate.css">
	<link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
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
						<!--<li>
							<a href="contact.html">
								Contact Us
							</a>
						</li>-->
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
										<a class="nav-link" href="adminview.html">Orders</a>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="productview.html" class="nav-link" >Products</a>
										
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
			<!--<h3 class="title_confirmation">Thank you. Your order has been received.</h3>-->
			<!--<div class="row order_d_inner">
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
			</div> -->
			<div class="order_details_table">
				<h2>Product view</h2>
				<div> <!--<div  class="table-responsive">-->
				<form class="row login_form" action="p_del_edit.html" method="post" id="contactForm" novalidate="novalidate">
	
					<table class="table">
						<thead>
							<tr>
								<th scope="img"><b>image</b></th>

								<th scope="id"><b>Product id</b></th>
								<th scope="name"><b>Product name</b></th>
								<th scope="col"><b>size</b></th>
								<th scope="col"><b>Price</b></th>
								<th scope="col"><b>Brand</b></th>
								<th scope="col"><b>colour</b></th>
								
								<th scope="col"><b>Action</b></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="r-md-3">
										<img class="img-fluid" src="img/product/feature-product/f-p-1.jpg" alt="" height="100" width="100">	
									</div>
								</td>
								<td>
									<h5>A001</h5>
								</td>
								<td>
									<p>Jeans</p>
									
								</td>
								<td>
									<p>32</p>
								</td>
								<td>
									<p>Rs.720.00</p>
								</td>
								<td>
									<p>levis</p>
								</td>
								<td>
									<p>Green</p>
								</td>
								<td>
									<a class="main_btn" href="deletedit.html">Edit</a>
                                    <a class="main_btn" href="deletedit.html">Delete</a>
								</td>
								
							</tr>
							<tr>
								<td>
									<div class="r-md-3">
										<img class="img-fluid" src="img/product/feature-product/f-p-2.jpg" alt="" height="100" width="100">	
									</div>								</td>
								<td>
									<h5>P003</h5>
								</td>
								<td>
									<p>Modern suit</p>
									
								</td>
								<td>
									<p>XXL</p>
								</td>
								<td>
									<p>Rs.1500.00</p>
								</td>
								<td>
									<p>Raymond</p>
								</td>
								<td>
									<P>Blue</p>
								</td>
								<td>
									<a class="main_btn" href="deletedit.html">Edit</a>
                                    <a class="main_btn" href="deletedit.html">Delete</a>
								</td>
								
							</tr>
							<tr>
								<td>
									<div class="r-md-3">
										<img class="img-fluid" src="img/product/feature-product/f-p-3.jpg" alt="" height="100" width="100">	
									</div>								</td>
								<td>
									<h5>L010</h5>
								</td>
								<td>
									<p>Baby suit</p>
									
								</td>
								<td>
									<p>small</p>
								</td>
								<td>
									<p>Rs.1000.00</p>
								</td>
								<td>
									<p>babyhug</p>
								</td>
								<td>
									<p>peach</p>
								</td>
								<td>
									<a class="main_btn" href="deletedit.html">Edit</a>
                                    <a class="main_btn" href="deletedit.html">Delete</a>
								</td>
								
							</tr>
						
							                                                      
						</tbody>
					</table>
					<form>
					<!--<div class="card_area">
							<a class="main_btn" href="#">Accept the order</a>
							<a class="icon_btn" href="#">
								<i class="lnr lnr lnr-heart"></i>
							</a>
							<a class="main_btn" href="#">Reject</a>
							<a class="icon_btn" href="#">
								<i class="lnr lnr lnr-diamond"></i>
								
							</a>
						</div>-->
				</div>
			</div>
		</div>
		
	</section>
	<!--================End Order Details Area =================-->


	




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

</html>