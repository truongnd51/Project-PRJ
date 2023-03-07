
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .cart {
  position: relative;
  display: block;
  width: 28px;
  height: 28px;
  height: auto;
  overflow: hidden;
  .material-icons {
    position: relative;
    top: 4px;
    z-index: 1;
    font-size: 24px;
    color: white;
  }
  .count {
    position: absolute;
    top: 0;
    right: 0;
    z-index: 2;
    font-size: 11px;
    border-radius: 50%;
    background: #d60b28;
    width: 16px;
    height: 16px;
    line-height:16px;
    display: block;
    text-align: center;
    color: white;
    font-family: 'Roboto', sans-serif;
    font-weight: bold;
  }
</style>
	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="home"><img src="img/zero.jpg" alt="" width="80" height="80"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="category" class="nav-link dropdown-toggle" role="button" aria-haspopup="true"
								 aria-expanded="false">Shoes</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="product?id=1">Nike</a></li>
									<li class="nav-item"><a class="nav-link" href="product?id=2">Jordan</a></li>
									<li class="nav-item"><a class="nav-link" href="product?id=3">Adidas</a></li>
									<li class="nav-item"><a class="nav-link" href="product?id=4">Vans</a></li>
									<li class="nav-item"><a class="nav-link" href="product?id=5">Puma</a></li>
								</ul>
							</li>
                                                        <li class="nav-item submenu dropdown">
								<a href="category" class="nav-link dropdown-toggle" role="button" aria-haspopup="true"
                                                                   aria-expanded="false" >Accessory</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="product?id=6">Socks</a></li>
									<li class="nav-item"><a class="nav-link" href="product?id=7">Bags</a></li>
                                                                        <li class="nav-item"><a class="nav-link" href="product?id=8">Glasses</a></li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" role="button" aria-haspopup="true"
                                                                   aria-expanded="false" >Sale </a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
								</ul>
							</li>
                                                        <c:if test="${sessionScope.acc == null}">
							<li class="nav-item submenu dropdown">
								<a href="login.jsp" class="nav-link dropdown-toggle" role="button" aria-haspopup="true"
								 aria-expanded="false">Login</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
									<li class="nav-item"><a class="nav-link" href="tracking.html">Tracking</a></li>
									<li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
                                                                        <li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
									<li class="nav-item"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.jsp">Shopping Cart</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
								</ul>
							</li></c:if>
                                                        <c:if test="${sessionScope.acc != null}">
                                                            <li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" role="button" aria-haspopup="true"
                                                                   aria-expanded="false" >Hello ${sessionScope.acc.user} </a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="logout">Log out</a></li>
								</ul>
							</li>
                                                        </c:if>
                                                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                                                            <li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" role="button" aria-haspopup="true"
                                                                   aria-expanded="false" >Admin </a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="manager">Product Management</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Admin</a></li>
								</ul>
							</li>
                                                        </c:if>
							<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item"><a href="show" class="cart"><span class="ti-bag"></span> <span class="count">${requestScope.size}</span></a></li>
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
                            <form action="search" method="post" class="d-flex justify-content-between">
					<input name ="txt" type="text" class="form-control" id="search_input" placeholder="Search Here">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header>
	<!-- End Header Area -->
