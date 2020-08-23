 <!doctype html>
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
							<a href="p_login.html">
								Login
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
										<a class="nav-link" href="#">Orders</a>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link">Products</a>
										
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link">Add Products</a>
										
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
					<h2>Login</h2>
					<div class="page_link">
						<a href="index.html">Home</a>
						<a href="p_login.html">Login</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Login Box Area =================-->
	<section class="login_box_area p_120">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="assets/img/login.jpg" alt="">	
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<b><h3>LOG IN TO ENTER</h3></b>
						<% 
					Boolean failed = (Boolean)	request.getAttribute("failed");
							if(failed!=null && failed){
						%>
						<div style="color:red">Login Failed</div>
						
						<% 
						}
						%> 
						
						<form class="row login_form" action="LoginServlet" method="post" id="contactForm">
							<div class="col-md-12 form-group">
								
 							<input type="text" class="form-control"  name="userName" placeholder="User Name" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control"  name="password" placeholder="Password" required>
							</div>
							<div class="col-md-12 form-group">
									
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="btn submit_btn">Log In</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->

	

	


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