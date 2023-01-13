<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="container container--70">
    <sec:authorize access="isAnonymous()">
        <ul class="nav--actions">
            <li><a href="<c:url value="/login"/>" class="btn btn--small btn--without-border">Zaloguj</a></li>
            <li><a href="<c:url value="/register"/>" class="btn btn--small btn--highlighted">Załóż konto</a></li>
        </ul>
    </sec:authorize>
    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
        <ul class="nav--actions">
            <li class="logged-user">
                Witaj <sec:authentication property="name"/>
                <ul class="dropdown">
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <li><a href="<c:url value="/admin/panel" /> ">Panel Administratora</a></li>
                    </sec:authorize>
                    <li><a href="<c:url value="/app/dashboard" /> ">Profil</a></li>
                    <li><a href="<c:url value="/#" /> ">Moje zbiórki</a></li>
                    <li><a href="<c:url value="/logout" /> ">Wyloguj</a></li>
                </ul>
            </li>
        </ul>
    </sec:authorize>
    <ul>
        <li><a href="<c:url value="/"/>" class="btn btn--without-border active">Start</a></li>
        <li><a href="<c:url value="/#steps"/>" class="btn btn--without-border">O co chodzi?</a></li>
        <li><a href="<c:url value="/#about-us"/>" class="btn btn--without-border">O nas</a></li>
        <li><a href="<c:url value="/#help" />" class="btn btn--without-border">Fundacje i organizacje</a></li>
        <li><a href="<c:url value="/form#steps"/> " class="btn btn--without-border">Przekaż dary</a></li>
        <li><a href="<c:url value="/#contact"/>" class="btn btn--without-border">Kontakt</a></li>
    </ul>
</nav>
