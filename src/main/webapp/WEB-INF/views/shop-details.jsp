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

                <a href="${pageContext.request.contextPath}/log-in"><i class="fa fa-user-o" style="margin-right: 10px"></i>Вхід</a>
                <a href="${pageContext.request.contextPath}/sign-up"><i class="fa fa-user-plus" style="margin-right: 10px"></i>Реєстрація</a>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="${pageContext.request.contextPath}/shopping-cart"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
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

                        <a href="${pageContext.request.contextPath}/log-in"><i class="fa fa-user-o" style="margin-right: 10px"></i>Вхід</a>
                        <a href="${pageContext.request.contextPath}/sign-up"><i class="fa fa-user-plus" style="margin-right: 10px"></i>Реєстрація</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="${pageContext.request.contextPath}/index"><img src="img/logo1.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/index">Головна</a></li>
                            <li><a href="${pageContext.request.contextPath}/shop">Каталог</a></li>
                            <li><a href="${pageContext.request.contextPath}/contact">Контакти</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="${pageContext.request.contextPath}/shopping-cart"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
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

        <div class="product__details__content">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="product__details__text">
                            <h4>Hooded thermal anorak</h4>
                            <h3>₴270.00 <span>70.00</span></h3>
                            <p>Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable
                                cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening
                            with placket.</p>
                           <form>
                                <div class="form-check form-check-inline">
                                    <span style="margin-bottom: 2px;">Розмір:</span>
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" style="margin-left: 10px;">
                                    <label class="form-check-label" for="inlineRadio1">36</label>
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" style="margin-left: 10px;">
                                    <label class="form-check-label" for="inlineRadio1">37</label>
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" style="margin-left: 10px;">
                                    <label class="form-check-label" for="inlineRadio1">38</label>
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" style="margin-left: 10px;">
                                    <label class="form-check-label" for="inlineRadio1">39</label>
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" style="margin-left: 10px;">
                                    <label class="form-check-label" for="inlineRadio1">40</label>
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" style="margin-left: 10px;">
                                    <label class="form-check-label" for="inlineRadio1">41</label>
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" style="margin-left: 10px;">
                                    <label class="form-check-label" for="inlineRadio1">42</label>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-dark" style="margin-top: 30px;">Додати у кошик</button>
                                </div>
                           </form>
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
                <li class="nav-item"><a href="${pageContext.request.contextPath}/index" class="nav-link px-2 text-muted">Головна</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/shop" class="nav-link px-2 text-muted">Каталог</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/contact" class="nav-link px-2 text-muted">Контакти</a></li>
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