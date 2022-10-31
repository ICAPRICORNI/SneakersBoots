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
                        <!-- <a href="/accounts/profile"><i class="fa fa-user-o" style="margin-right: 10px"></i>ICAPRICORNI</a> -->
                        <!-- <a href="/accounts/sign_out"><i class="fa fa-sign-out" style="margin-right: 10px"></i>Вийти</a> -->

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

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Каталог</h4>
                        <div class="breadcrumb__links">
                            <a href="${pageContext.request.contextPath}/index">Головна</a>
                            <span>Каталог</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">Категорія</a>
                                    </div>
                                    <div id="collapseOne" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a href="#">Чоловіче взуття</a></li>
                                                    <li><a href="#">Жіноче взуття</a></li>
                                                    <li><a href="#">Кросівки</a></li>
                                                    <li><a href="#">Кеди</a></li>
                                                    <li><a href="#">Черевики</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseTwo">Бренд</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__brand">
                                                <ul>
                                                    <li><a href="#">Adidas</a></li>
                                                    <li><a href="#">Nike</a></li>
                                                    <li><a href="#">Puma</a></li>
                                                    <li><a href="#">New Balance</a></li>
                                                    <li><a href="#">Timberland</a></li>
                                                    <li><a href="#">Converse</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Ціна</a>
                                    </div>
                                    <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <li><a href="#">₴1700 - ₴2000</a></li>
                                                    <li><a href="#">₴2000 - ₴2300</a></li>
                                                    <li><a href="#">₴2300 - ₴2700</a></li>
                                                    <li><a href="#">₴2700 - ₴3000</a></li>
                                                    <li><a href="#">₴3000 - ₴3500</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">Розмір</a>
                                    </div>
                                    <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__size">
                                                <ul>
                                                    <li><a href="#">37</a></li>
                                                    <li><a href="#">38</a></li>
                                                    <li><a href="#">39</a></li>
                                                    <li><a href="#">40</a></li>
                                                    <li><a href="#">41</a></li>
                                                    <li><a href="#">42</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/product/product-2.jpg">
                                </div>
                                <div class="product__item__text">
                                    <h6>Piqué Biker Jacket</h6>
                                    <a href="${pageContext.request.contextPath}/shop-details" class="add-cart">+ Додати до кошика</a>
                                    <h5>₴67.24</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="img/product/product-3.jpg">
                                    <span class="label">Sale</span>
                                </div>
                                <div class="product__item__text">
                                    <h6>Multi-pocket Chest Bag</h6>
                                    <a href="${pageContext.request.contextPath}/shop-details" class="add-cart">+ Додати до кошика</a>
                                    <h5>₴43.48</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/product/product-4.jpg">
                                </div>
                                <div class="product__item__text">
                                    <h6>Diagonal Textured Cap</h6>
                                    <a href="${pageContext.request.contextPath}/shop-details" class="add-cart">+ Додати до кошика</a>
                                    <h5>₴60.9</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="img/product/product-6.jpg">
                                    <span class="label">Sale</span>
                                </div>
                                <div class="product__item__text">
                                    <h6>Ankle Boots</h6>
                                    <a href="${pageContext.request.contextPath}/shop-details" class="add-cart">+ Додати до кошика</a>
                                    <h5>₴98.49</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/product/product-7.jpg">
                                </div>
                                <div class="product__item__text">
                                    <h6>T-shirt Contrast Pocket</h6>
                                    <a href="${pageContext.request.contextPath}/shop-details" class="add-cart">+ Додати до кошика</a>
                                    <h5>₴49.66</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/product/product-8.jpg">
                                </div>
                                <div class="product__item__text">
                                    <h6>Basic Flowing Scarf</h6>
                                    <a href="${pageContext.request.contextPath}/shop-details" class="add-cart">+ Додати до кошика</a>
                                    <h5>₴26.28</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <nav aria-label="Page navigation example">
							  <ul class="pagination pagination-lg justify-content-center">
							    <li class="page-item disabled">
							      <a class="page-link" href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							  </ul>
							</nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

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