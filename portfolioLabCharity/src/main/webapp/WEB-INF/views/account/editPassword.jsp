<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include page="../fragments/headers/whiteBgHeader.jsp"/>
<title>Edit Password</title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="">
<form:form method="post">
    Old password<br>
    <label>
        <input type="password" name="oldPassword"/><br>

    </label><br>
    New Password<br>
    <label>
        <input type="password" name="newPassword"/><br>
    </label><br>
    Confirm new password<br>
    <label>
        <input type="password" name="confirmNewPassword"/><br>
    </label><br>

    <input class="" type="submit" value="Edit password">
</form:form>
</div>
<jsp:include page="../fragments/footer.jsp"/>