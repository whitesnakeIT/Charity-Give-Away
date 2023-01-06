<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../fragments/headers/whiteBgHeader.jsp"/>

<title>Registration</title>
<section class="login-page">

    <h2>Załóż konto</h2>
    <form:form method="post" modelAttribute="user">
        <div class="form-group">
            <form:input path="email" placeholder="Email"/>
        </div>
        <form:errors path="email" cssClass="error"/>
        <div class="form-group">
            <form:password path="password" placeholder="Hasło"/>
        </div>
        <form:errors path="password" cssClass="error"/>

        <div class="form-group">
            <input type="password" name="password2" placeholder="Powtórz hasło"/>
        </div>
        <c:if test="${passwordsNotMatch}">
        <h4 class="error">Passwords not match!</h4>
        </c:if>
        <div class="form-group form-group--buttons">
            <a href="<c:url value="/login"/>" class="btn btn--without-border">Zaloguj się</a>
            <button class="btn" type="submit">Załóż konto</button>
        </div>
    </form:form>
</section>
<jsp:include page="../fragments/footer.jsp"/>
