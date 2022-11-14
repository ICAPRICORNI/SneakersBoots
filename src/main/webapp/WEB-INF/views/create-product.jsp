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
<jsp:include page="_header.jsp"/>
<!-- Header Section End -->

<!-- Log-in Form Begin -->
<div class="section">
    <div class="container">
        <div class="row text-center">
            <form id="form2" class="form-auth" enctype="multipart/form-data" action="${pageContext.request.contextPath}/products/create" method="post">
                <div class="form-group">
                    <label for="name" class="form-label">Назва:</label>
                    <input type="text" id="name" name="name" class="form-control" value="${product.name}" required>
                </div>
                <div class="form-group">
                    <label for="description" class="form-label">Опис:</label>
                    <input type="text" id="description" name="description" class="form-control" value="${product.description}" required>
                </div>
                <div class="form-group">
                    <label for="brand" class="form-label">Бренд:</label>
                    <input type="text" id="brand" name="brand" class="form-control" value="${product.brand}" required>
                </div>
                <div class="form-group">
                    <label for="categories" class="form-label">Категорії (розділені комою):</label>
                    <input type="text" id="categories" name="categories" class="form-control" value="${product.categories}" required>
                </div>
                <div class="form-group">
                    <label for="sizes" class="form-label">Розміри (розділені комою):</label>
                    <input type="text" id="sizes" name="sizes" class="form-control" value="${product.sizes}" required>
                </div>
                <div class="form-group">
                    <label for="price" class="form-label">Ціна:</label>
                    <input type="text" id="price" name="price" class="form-control" value="${product.price}" required>
                </div>
                <div class="form-group">
                    <label for="oldPrice" class="form-label">Стара ціна:</label>
                    <input type="text" id="oldPrice" name="oldPrice" class="form-control" value="${product.oldPrice}">
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="status" id="DISCOUNT" value="DISCOUNT" style="margin-left: 10px;">
                    <label class="form-check-label" for="DISCOUNT">DISCOUNT</label>
                    <input class="form-check-input" type="radio" name="status" id="NEW" value="NEW" style="margin-left: 10px;">
                    <label class="form-check-label" for="NEW">NEW</label>
                    <input class="form-check-input" type="radio" name="status" id="NONE" value="NONE" style="margin-left: 10px;">
                    <label class="form-check-label" for="NONE">NONE</label>
                </div>
                <div class="form-group">
                    <label for="pictures" class="form-label">Зображення:</label>
                    <input type="file" id="pictures" name="pictures" multiple required class="form-control-file">
                </div>
                <p>
                    <input id="submit" type="submit" value="Зберегти" class="btn btn-outline-dark my-btn">
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