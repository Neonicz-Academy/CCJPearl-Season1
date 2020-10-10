<!doctype html>
<%@page import="java.util.ArrayList"%>
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
						<H1 style="font-style: initial; color: palevioletred">PEARL FASHION</H1>
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
										href="home">Home</a></li>
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
					<h2>Shopping Cart</h2>
					<div class="page_link">
						<!-- <a href="HomeProductsServlet">Home</a> <a href="AddCartServlet">Cart</a> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->

	<!--================Cart Area =================-->
	<section class="cart_area"> 
		<div class="container">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Product</th>
								<th scope="col">Price</th>
								<th scope="col">Quantity</th>
								<th scope="col">Total</th>
							</tr>
						</thead>
						<tbody id="productContainer">
							
							<tr class="bottom_button">
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
		 						<td>
									<h5>Subtotal</h5>
								</td>
								<td> 
								<!-- Long total += products.get("price"); -->
									<h5 id="subtotal">subtotal</h5>
								</td>
							</tr>
							<tr class="out_button_area">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="checkout_btn_inner">
					
					<div>
					<form class="login_form" action="CreateOrderServlet" method="post" id="addOrder">
						<div class="row">
							<div class="col-md-4">
							Name: <input type="text" name="customerName" placeholder="Type Your Name" required="required">
							</div>
							<div class="col-md-4">
							Mobile: <input type="tel" name="mobile" placeholder="Your contact Number" required="required">
							</div>
							<div class="col-md-4">
							Address: <input type="text" name="address" placeholder="Your Address">
							</div>
						</div>
						<div class="row p-2">
							<input type="hidden" class="form-control" id="cartItems" name="cart">
							<input type="hidden" class="form-control" id="grandTotal" name="grandTotal">
							<div class="col-md-12">
								<a class="gray_btn" href="${pageContext.request.contextPath}">Continue Shopping</a>  <input type="submit" value="Proceed To CheckOut" class="btn submit_btn"></input>
							</div>
						</div>
					</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Cart Area =================-->

	<!----------- Footer ------------>
	<footer class="footer-bs">
		<div class="row">
			<div class="col-md-6 footer-brand animated fadeInLeft">
				<h2>PEARL FASHIONS</h2>
				<a class="navbar-brand logo_h" href="index.html"> 
				<img src="assets/img/logo.png" alt="">
				</a>
				<p>
					Always deliver more than expected. <br>We see our customer as
					invited guests to a party, and we are the hosts. It's our job every
					day to make every important aspects of the customer experience a
					little bit better.
				</p>
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
		<section style="text-align: center; margin: 10px auto;">
			<p>
				 <a href="http://enfoplus.net"></a>
			</p>
		</section>
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
	<script src="assets/js/script.js" async></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>

	$(document).ready(function(){
		var myCookie = getCookie("cartCookie");
		document.getElementById('cartItems').value = myCookie;
    	if((myCookie != null) && (myCookie != ''))
    	{
    		var jsonObject = JSON.parse(myCookie);
      		var res = []; 
      		var subTotal = 0;
       		for(var i in jsonObject) 
           		{
				var cartItems = jsonObject[i]; 
				for(var item in cartItems) 
           		{
							var row = '<tr>'+
							'<td>'+
								'<div class="media">'+
									'<div class="d-flex">'+
									'<img src="http://localhost:8080/PearlFashion/HomeImageServlet?productId='+cartItems[item].productId+'" alt="">'+
										//'<img src="'+cartItems[item].image+'" alt="">'+
									'</div>'+
									'<div id="productNameContainer">'+
									'</div>'+
									'<div  id="pNameDiv" class="media-body">'+
										'<p>'+cartItems[item].name+'</p>'+
									'</div>'+
								'</div>'+
							'</td>'+
							'<td>'+
								'<h5>'+cartItems[item].price+'</h5>'+
							'</td>'+
							'<td>'+
								'<div class="product_count">'+
									'<input type="text" name="qty" id="sst" maxlength="12" value="'+cartItems[item].qty+'" title="Quantity:" class="input-text qty">'+
								'</div>'+
							'</td>'+
							'<td>'+
								'<h5>'+cartItems[item].TotalPrice+'</h5>'+
							'</td>'+
						'</tr>';
					subTotal = subTotal + cartItems[item].TotalPrice;
					$("#productContainer").prepend(row);
           		}	
				$('#subtotal').text(subTotal);
				document.getElementById('grandTotal').value = subTotal;
    	}		

  		}
        
		});

	function getCookie(cartCookie) 
	{
		  var name = cartCookie + "=";
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