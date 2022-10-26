<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SneakersBoots</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <!-- <a href="/accounts/profile"><i class="fa fa-user-o" style="margin-right: 10px"></i>ICAPRICORNI</a> -->
                <!-- <a href="/accounts/sign_out"><i class="fa fa-sign-out" style="margin-right: 10px"></i>Вийти</a> -->

                <a href="./log-in.html"><i class="fa fa-user-o" style="margin-right: 10px"></i>Вхід</a>
                <a href="./sign-up.html"><i class="fa fa-user-plus" style="margin-right: 10px"></i>Реєстрація</a>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="./shopping-cart.html"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="price">$0.00</div>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="header__top__links">
                        <!-- <a href="./log-in.html"><i class="fa fa-user-o" style="margin-right: 10px"></i>ICAPRICORNI</a> -->
                        <!-- <a href="./sign-up.html"><i class="fa fa-sign-out" style="margin-right: 10px"></i>Вийти</a> -->

                        <a href="./log-in.html"><i class="fa fa-user-o" style="margin-right: 10px"></i>Вхід</a>
                        <a href="./sign-up.html"><i class="fa fa-user-plus" style="margin-right: 10px"></i>Реєстрація</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo1.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="./index.html">Головна</a></li>
                            <li><a href="./shop.html">Каталог</a></li>
                            <li><a href="./contact.html">Контакти</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="./shopping-cart.html"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">₴0.00</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Shop Details Section Begin -->


    <section class="shop-details">
    	<div class="container-sm slide">
			<div id="carouselControls" class="carousel slide carousel-fade" data-ride="carousel">
				<ol class="carousel-indicators">
				    <li data-target="#carouselControls" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselControls" data-slide-to="1"></li>
				    <li data-target="#carouselControls" data-slide-to="2"></li>
				</ol>
			  <div class="carousel-inner">
			    <div class="carousel-item active" data-interval="10000">
			      <img src="img/shop-details/product-big-2.png" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item" data-interval="10000">
			      <img src="img/shop-details/product-big-3.png" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item" data-interval="10000">
			      <img src="img/shop-details/product-big-4.png" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselControls" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselControls" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
		</div>

    	<!-- <div class="slider">
	      <span id="slide-1"></span>
	      <span id="slide-2"></span>
	      <span id="slide-3"></span>
	      <div class="image-container">
	        <img src="img/product/product-1.jpg" class="slide" width="500" height="500" />
	        <img src="img/product/product-2.jpg" class="slide" width="500" height="500" />
	        <img src="img/product/product-2.jpg" class="slide" width="500" height="500" />
	      </div>
	      <div class="buttons">
	        <a href="#slide-1"></a>
	        <a href="#slide-2"></a>
	        <a href="#slide-3"></a>
	      </div>
	    </div> -->


	    <!-- <div class="container-sm slide">
		    <div class="carousel slide" id="carouselControls" data-ride="carousel">
		    	<div class="carousel-inner">
		    		<div class="carousel-item active">
		    			<img class="d-block w-100" src="img/shop-details/product-big-2.png" alt="">
		    		</div>
		    		<div class="carousel-item">
		    			<img class="d-block w-100" src="img/shop-details/product-big-3.png" alt="">
		    		</div>
		    		<div class="carousel-item">
		    			<img class="d-block w-100" src="img/shop-details/product-big-4.png" alt="">
		    		</div>
		    	</div>
		    	<a class="carousel-control-prev" role="button" href="#carouselControls" data-slide="prev">
		    		<span class="carousel-control-prev-icon"></span>
		    	</a>
		    	<a class="carousel-control-next" role="button" href="#carouselControls" data-slide="next">
		    		<span class="carousel-control-next-icon"></span>
		    	</a>
		    </div>
	    </div> -->



        <!-- <div class="product__details__pic">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__breadcrumb">
                            <a href="./index.html">Головна</a>
                            <a href="./shop.html">Каталог</a>
                            <span>Інформація</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="img/shop-details/thumb-1.png">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="img/shop-details/thumb-2.png">
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="img/shop-details/thumb-3.png">
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="img/shop-details/product-big-2.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="img/shop-details/product-big-3.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="img/shop-details/product-big.png" alt="">
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-4" role="tabpanel">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <div class="product__details__content">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="product__details__text">
                            <h4>Hooded thermal anorak</h4>
                            <h3>$270.00 <span>70.00</span></h3>
                            <p>Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable
                                cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening
                            with placket.</p>
                            <div class="product__details__option">
                                <div class="product__details__option__size">
                                    <span>Розмір:</span>
                                    <label for="xxl">36
                                        <input type="radio" id="36">
                                    </label>
                                    <label class="active" for="xl">37
                                        <input type="radio" id="37">
                                    </label>
                                    <label for="l">38
                                        <input type="radio" id="38">
                                    </label>
                                    <label for="sm">39
                                        <input type="radio" id="39">
                                    </label>
                                    <label for="sm">40
                                        <input type="radio" id="40">
                                    </label>
                                    <label for="sm">41
                                        <input type="radio" id="41">
                                    </label>
                                    <label for="sm">42
                                        <input type="radio" id="42">
                                    </label>
                                </div>

                            </div>
                            <div class="product__details__cart__option">
                                <a href="#" class="primary-btn">Додати у кошик</a>
                            </div>
                            <div class="product__details__last__option">
                                <ul>
                                    <li><span>ID:</span> 3812912</li>
                                    <li><span>Категорія:</span> Clothes</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </section>
    <!-- Shop Details Section End -->

    <!-- Footer Section Begin -->
    <div class="footer">
        <footer class="py-3 my-4">
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="./index.html" class="nav-link px-2 text-muted">Головна</a></li>
                <li class="nav-item"><a href="./shop.html" class="nav-link px-2 text-muted">Каталог</a></li>
                <li class="nav-item"><a href="./contact.html" class="nav-link px-2 text-muted">Контакти</a></li>
            </ul>
            <p class="text-center text-muted">&copy; 2022 SneakersBoots</p>
        </footer>
    </div>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>

</html>