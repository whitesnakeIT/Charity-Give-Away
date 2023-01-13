<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../fragments/headers/whiteBgHeader.jsp"/>
    <title>Edit Details</title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="">
    <form:form method="post" modelAttribute="userSlim">
        Email<br>
        <label>
            <form:input path="email"/><br>
            <form:errors path="email"/><br>
        </label><br>
        Username<br>
        <label>
            <form:input path="username"/><br>
            <form:errors path="username"/><br>
        </label>
        <br>
        Enter the password to confirm<br>
        <label>
            <input type="password" name="passwordToCheck"><br>
            <c:choose>
                <c:when test="${wrongPassword}">
                    <p class="error">Password is wrong!</p>
                </c:when>
            </c:choose>
        </label><br>

        <input class="bg-black btn btn-outline-danger" type="submit" value="Edit details">
    </form:form>
</div>
<div class="d-flex align-items-center justify-content-center py-3">
    <a class="btn btn-outline-danger" href="<c:url value="/app/account/edit-password"/>">Edit password</a>
</div>
<jsp:include page="../fragments/footer.jsp"/>