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
                <!-- <a href="/accounts/sign_out"><i class="fa fa-sign-out" style="margin-right: 10px"></i>??????????</a> -->

                <a href="${pageContext.request.contextPath}/log-in"><i class="fa fa-user-o" style="margin-right: 10px"></i>????????</a>
                <a href="${pageContext.request.contextPath}/sign-up"><i class="fa fa-user-plus" style="margin-right: 10px"></i>????????????????????</a>
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
    <jsp:include page="_header.jsp"/>
    <!-- Header Section End -->

    <!-- Sign-up Form Begin-->
    <div class="section">
        <div class="container">
            <div class="row text-center">
                <form id="form1" class="form-auth" action="${pageContext.request.contextPath}/create-user" method="POST">
                    <div class="form-group">
                        <label for="login" class="form-label">??????????:</label>
                        <input type="text" id="login" name="login" class="form-control"
                        placeholder="?????????????? ??????????" value="${user.login}" required>
                        <span id ="login_err" class="error"></span>
                    </div>
                    <div class="form-group">
                        <label for="password" class="form-label">????????????:</label>
                        <input type="password" id="password" name="password" class="form-control"
                        placeholder="?????????????? ????????????" value="${user.password}" required>
                        <span id ="pass1_err" class="error"></span>
                    </div>
                    <div class="form-group">
                        <label for="passwordConfirm" class="form-label">?????????????????????? ????????????:</label>
                        <input type="password" id="passwordConfirm" name="passwordConfirm" class="form-control"
                        placeholder="?????????????????????? ????????????" value="${user.passwordConfirm}" required>
                        <span id ="pass2_err" class="error"></span>
                    </div>
                    <div class="form-group">
                        <label for="email" class="form-label">E-mail:</label>
                        <input type="email" id="email" name="email" class="form-control"
                            placeholder="?????????????? E-Mail" value="${user.email}" required>
                        <span id ="email_err" class="error"></span>
                    </div>
                    <p>
                    <input id="submit" type="submit" value="??????????????????????????????" class="btn btn-outline-dark" style="margin-top: 15px;">
                    </p>
                </form>
            </div>
        </div>
    </div>
    <!-- Sign-up Form End-->

    <!-- Footer Section Begin -->
    <div class="footer">
        <footer class="py-3 my-4">
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="${pageContext.request.contextPath}/index" class="nav-link px-2 text-muted">??????????????</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/shop" class="nav-link px-2 text-muted">??????????????</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/contact" class="nav-link px-2 text-muted">????????????????</a></li>
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