<%@ page language="java" contentType="text/html; UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="header__top__links">
                    <!-- <a href="/accounts/profile"><i class="fa fa-user-o" style="margin-right: 10px"></i>ICAPRICORNI</a> -->
                    <!-- <a href="/accounts/sign_out"><i class="fa fa-sign-out" style="margin-right: 10px"></i>Вийти</a> -->
                    <sec:authorize access="isAuthenticated()">
                        <i class="fa fa-user-o" style="margin-right: 10px; color: aliceblue"></i> <span style="color: aliceblue"><sec:authentication property="principal.username" /></span>
                        <form:form action="/logout" method="post" cssStyle="display:inline;">
                            <input type="submit" value="logout"/>
                        </form:form>
                    </sec:authorize>
                    <sec:authorize access="!isAuthenticated()">
                        <a href="${pageContext.request.contextPath}/log-in"><i class="fa fa-user-o" style="margin-right: 10px"></i>Вхід</a>
                        <a href="${pageContext.request.contextPath}/sign-up"><i class="fa fa-user-plus" style="margin-right: 10px"></i>Реєстрація</a>
                    </sec:authorize>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3">
                <div class="header__logo">
                    <a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}/resources/img/logo1.png" alt=""></a>
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