

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/zero.jpg">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Zero Sneaker</title>
	<!--
		CSS
		============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>

	<!-- Start Header Area -->
        <jsp:include page="menu.jsp"></jsp:include>
	<!-- End Header Area -->

	<!-- start banner Area -->
	<section class="banner-area">
		<div class="container">
			<div class="row fullscreen align-items-center justify-content-start">
				<div class="col-lg-12">
					<div class="active-banner-slider owl-carousel">
						<!-- single-slide -->
						<div class="row single-slide align-items-center d-flex">
							<div class="col-lg-5 col-md-6">
								<div class="banner-content">
									<h1> Jordan New <br>Collection!</h1>
									<p>This Jordan 1 Retro High is composed of a white and grey leather upper with traditional Dior 
                                                                            monogram print Swoosh. These shoes are made in Italy with premium materials. Co-branded icy 
                                                                            translucent soles, Dior branded tongue and Wings logo, and a silver "Air Dior" hang tag completes the design.</p>
									<div class="add-bag d-flex align-items-center">
										<a class="add-btn" href="buy?id=28&num=1"><span class="lnr lnr-cross"></span></a>
										<span class="add-text text-uppercase">Add to Bag</span>
									</div>
								</div>
							</div>
							<div class="col-lg-7">
								<div class="banner-img">
									<img class="img-fluid" src="img/banner/banner.png" alt="">
								</div>
							</div>
						</div>
						<!-- single-slide -->
						<div class="row single-slide">
							<div class="col-lg-5">
								<div class="banner-content">
									<h1>Nike New <br>Collection!</h1>
									<p>With its lightweight upper and plush support system, 
                                                                            the KD Trey 5 X can help you float like KD, 
                                                                            waiting for the perfect moment to drive to the hoop. 
                                                                            A secure midfoot strap is suited for scoring binges and defensive stands, 
                                                                            so that you can lock in and keep winning. 
                                                                            This version is made for outdoor-court use with its extra-durable rubber outsole.</p>
									<div class="add-bag d-flex align-items-center">
										<a class="add-btn" href=""><span class="lnr lnr-cross"></span></a>
										<span class="add-text text-uppercase">Add to Bag</span>
									</div>
								</div>
							</div>
							<div class="col-lg-7">
								<div class="banner-img">
									<img class="img-fluid" src="img/banner/LV.png" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
            
	</section>
	<!-- End banner Area -->

	<!-- start product Area -->
	<section class="owl-carousel active-product-area section_gap">
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>NEW ARRIVALS</h1>
							 
						</div>
					</div>
				</div>
				<div class="row">
					<!-- single product -->
                                        <c:forEach items="${requestScope.listN}" var="o">
					<div class="col-lg-3 col-md-6">
						<div class="single-product photo">
                                                    <a href="detail?pid=${o.id}" ><img class="photo" src=${o.image} alt="" ></a>
							<div class="product-details">
								<a href="detail?pid=${o.id}" ><h6>${o.name}</h6></a>
								<div class="price">
									<h6>$${o.price}</h6>
<!--									<h6 class="l-through">$210.00</h6>-->
								</div>                                                              
								<div class="prd-bottom " >
									<a href="buy?id=${o.id}&num=1" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">add to bag</p>
									</a>
                                                                        
									<a href="detail?pid=${o.id}" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">view more</p>
									</a>
                                                                                <a class="social-info" ><input type="hidden" name="num" value="1"> </a>
								</div>
							</div>
						</div>
					</div>
                                        </c:forEach>
				</div>
			</div>
		</div>
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>BESTSELLER</h1>
							
						</div>
					</div>
				</div>
				<div class="row">
                                    <c:forEach items="${requestScope.listP}" var="o">
					<div class="col-lg-3 col-md-6">
						<div class="single-product photo">
                                                    <a href="detail?pid=${o.id}" ><img class="photo" src=${o.image} alt=""></a>
							<div class="product-details">
								<a href="detail?pid=${o.id}" ><h6>${o.name}</h6></a>
								<div class="price">
									<h6>$${o.price}</h6>
									<!--<h6 class="l-through">$210.00</h6>-->
								</div>
								<div class="prd-bottom">
									<a href="buy?id=${o.id}&num=1" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">add to bag</p>
									</a>
									<a href="detail?pid=${o.id}" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">view more</p>
									</a>
								</div>
							</div>
						</div>
					</div>
                                    </c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- end product Area -->

	<!-- Start exclusive deal Area -->
	<section class="exclusive-deal-area">
		<div class="container-fluid">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-6 no-padding exclusive-left">
					<div class="row clock_sec clockdiv" id="clockdiv">
						<div class="col-lg-12">
							<h1>Exclusive Hot Deal Ends Soon!</h1>
							<p>Who are in extremely love with eco friendly system.</p>
						</div>
						<div class="col-lg-12">
							<div class="row clock-wrap">
								<div class="col clockinner1 clockinner">
									<h1 class="days">10</h1>
									<span class="smalltext">Days</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="hours">23</h1>
									<span class="smalltext">Hours</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="minutes">47</h1>
									<span class="smalltext">Mins</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="seconds">59</h1>
									<span class="smalltext">Secs</span>
								</div>
							</div>
						</div>
					</div>
					<a href="category" class="primary-btn">Shop Now</a>
				</div>
				<div class="col-lg-6 no-padding exclusive-right">
					<div class="active-exclusive-product-slider">
						<!-- single exclusive carousel -->
						<div class="single-exclusive-slider">
                                                    <img class="img-fluid" src="http://ticosneaker.com.vn/wp-content/uploads/2021/12/4a8c0766f09b3ac5638a20.jpg" alt=""></br>
							<div class="product-details">
								<div class="price">
									<h6>$3000</h6>
									<h6 class="l-through">$5000</h6>
								</div>
								<h4>Jordan 1 Retro High</h4>
								<div class="add-bag d-flex align-items-center justify-content-center">
									<a class="add-btn" href="buy?id=28&num=1"><span class="ti-bag"></span></a>
									<span class="add-text text-uppercase">Add to Bag</span>
								</div>
							</div>
						</div>
						<!-- single exclusive carousel -->
						<div class="single-exclusive-slider">
							<img class="img-fluid" src="https://vn.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-gi%C3%A0y-th%E1%BB%83-thao-lv-trainer-gi%C3%A0y--BM9U5PMI02_PM1_Worn%20view.png?wid=2048&hei=2048" alt=""></br>
							<div class="product-details">
								<div class="price">
									<h6>$1300</h6>
									<h6 class="l-through">$2000</h6>
								</div>
								<h4>Louis Vuitton LV Trainer</h4>
								<div class="add-bag d-flex align-items-center justify-content-center">
									<a class="add-btn" href="buy?id=29&num=1"><span class="ti-bag"></span></a>
									<span class="add-text text-uppercase">Add to Bag</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End exclusive deal Area -->

	<!-- Start brand Area -->
	<section class="brand-area section_gap">
		<div class="container">
			<div class="row">
				<a class="col single-img" href="product?id=1">
					<img class="img-fluid d-block mx-auto" src="img/brand/nike1.png" alt="">
				</a>
				<a class="col single-img" href="product?id=2">
                                    <img class="img-fluid d-block mx-auto" src="img/brand/jordan1.png" alt="" width="100" height="100">
				</a>
				<a class="col single-img" href="product?id=3">
					<img class="img-fluid d-block mx-auto" src="img/brand/adidas.png" alt="">
				</a>
				<a class="col single-img" href="product?id=4">
					<img class="img-fluid d-block mx-auto" src="img/brand/vans1.png" alt="">
				</a>
				<a class="col single-img" href="product?id=5">
					<img class="img-fluid d-block mx-auto" src="img/brand/puma1.png" alt="">
				</a>
			</div>
		</div>
	</section>
	<!-- End brand Area -->

	<!-- Start related-product Area -->
	<section class="related-product-area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="section-title">
						<h1>You Might Also Like</h1>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
                                            <c:forEach items="${requestScope.listN}" var="o">
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex ">
                                                            <a href="detail?pid=${o.id}"><img class="photo2" src=${o.image} alt="" height="70px" width="70px"></a>
								<div class="desc">
									<a href="detail?pid=${o.id}" class="title">${o.name}</a>
									<div class="price">
										<h6>$${o.price}</h6>
<!--										<h6 class="l-through">${o.promotion}</h6>-->
									</div>
								</div>
							</div>
						</div>
                                            </c:forEach>
					</div>
				</div>                         
			</div>
		</div>
	</section>
	<!-- End related-product Area -->
        
	<!-- Start feedback Area -->
	<section class="brand-area section_gap">
            <div class=" text-center">
            <div class="section-title">
                   <h1>Feedback</h1>
		</div>					 
            </div>
		<div class="">
			<div class="row">
				<a class="col " href="">
					<img class="img-fluid d-block mx-auto" src="https://theme.hstatic.net/200000289033/1000684389/14/gallery_item_1.jpg?v=197" alt="">
				</a>
				<a class="col " href="">
                                    <img class="img-fluid d-block mx-auto" src="https://theme.hstatic.net/200000289033/1000684389/14/gallery_item_2.jpg?v=197" alt="">
				</a>
				<a class="col " href="">
					<img class="img-fluid d-block mx-auto" src="https://theme.hstatic.net/200000289033/1000684389/14/gallery_item_3.jpg?v=197" alt="">
				</a>
				<a class="col " href="">
					<img class="img-fluid d-block mx-auto" src="https://theme.hstatic.net/200000289033/1000684389/14/gallery_item_4.jpg?v=197" alt="">
				</a>
				<a class="col " href="product?id=5">
					<img class="img-fluid d-block mx-auto" src="https://theme.hstatic.net/200000289033/1000684389/14/gallery_item_5.jpg?v=197" alt="">
				</a>
			</div>
		</div>
	</section>
	<!-- End feedback Area -->

        <!-- start features Area -->
	<section class="features-area section_gap">
		<div class="container">
			<div class="row features-inner">
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon1.png" alt="">
						</div>
						<h6>Free Delivery</h6>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon2.png" alt="">
						</div>
						<h6>Return Policy</h6>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon3.png" alt="">
						</div>
						<h6>24/7 Support</h6>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon4.png" alt="">
						</div>
						<h6>Secure Payment</h6>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end features Area -->

	<!-- start footer Area -->
        <jsp:include page="footer.jsp"></jsp:include>
	<!-- End footer Area -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/countdown.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>
