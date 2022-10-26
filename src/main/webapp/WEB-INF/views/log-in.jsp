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
                        <!-- <a href="/accounts/profile"><i class="fa fa-user-o" style="margin-right: 10px"></i>ICAPRICORNI</a> -->
                        <!-- <a href="/accounts/sign_out"><i class="fa fa-sign-out" style="margin-right: 10px"></i>Вийти</a> -->

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

    <!-- Log-in Form Begin -->
    <div class="section">
        <div class="container">
            <div class="row text-center">
                <form id="form2" class="form-auth" action="/accounts/sign_in" method="post">
                    <div class="form-group">
                        <label for="login" class="form-label">Логін:</label>
                        <input type="text" id="login" name="login" class="form-control"
                        placeholder="Введіть логін" required>
                    </div>
                    <div class="form-group">
                        <label for="pass1" class="form-label">Пароль:</label>
                        <input type="password" id="pass1" name="pass1" class="form-control"
                        placeholder="Введіть пароль" required>
                    </div>
                    <div class="form-group text-center" style="margin-top: 20px">
                        <input type="checkbox" id="remember" name="remember" valeu="yes">&nbsp;
                        <label for="remember" class="form-label">Залишатися в системі</label>
                    </div>
                    <p>
                    <input id="submit" type="submit" value="Увійти" class="btn btn-outline-primary my-btn">
                    </p>
                </form>
            </div>
        </div>
    </div>
    <!-- Log-in Form End -->

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
    <script src="{% static 'js/sign_up.js' %}"></script>
</body>

</html>