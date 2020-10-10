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
							<a href="LogoutServlet">
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
										<a class="nav-link" href="AdminOrderViewServlet">Orders</a>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="ProductListServlet" class="nav-link" >Products</a>
										
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

	
<!--================Order Details Area =================-->
	<section class="order_details p_120">
		<div class="container">
		
			<div class="order_details_table">
				<h1>Product view</h1>
				<div> <!--<div  class="table-responsive">-->
				<form class="row login_form" action="ProductListServlet" method="post" id="contactForm" novalidate="novalidate">
	<%
	List<Map<String, String>> productList = (List<Map<String, String>>) request.getAttribute("productList");
	if(productList == null)
	{
	%>
	 	 <div>
	   		No products found
	   	</div>
	<%
	} 
	else
	{
	%>
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
						<%
						 for(Map<String, String> row : productList)
						 {
						%>
							<tr>
								<td>
									<div class="r-md-3">
									
									
										<img class="img-fluid" src="http://localhost:8080/PearlFashion/ProductListImageServlet?productId=<%= row.get("productId") %>" alt="" height="100" width="100">	
									</div>
								</td>
								<td>
									<h5><%= row.get("productId") %></h5>
								</td>
								<td>
									<p><%= row.get("productName") %></p>
									
								</td>
								<td>
									<p><%= row.get("size") %></p>
								</td>
								<td>
									<p><%= row.get("price") %></p>
								</td>
								<td>
									<p><%= row.get("brandName") %></p>
								</td>
								<td>
									<p><%= row.get("colour") %></p>
								</td>
								<td>
									
                                    <%-- <a class="main_btn" href="UpdateServlet?productId=<%= row.get("productId") %>">EDIT</a> --%>
									<a class="main_btn" href="DeleteServlet?productId=<%= row.get("productId") %>">DELETE</a>
								</td>
								
							</tr>
							<%
								 }
							%>
								                                                      
						</tbody>
					</table>
					<%
						}
					%>
					</form>
					
				</div>
			</div>
		</div>
		
	</section>	<!--================End Order Details Area =================-->


	




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