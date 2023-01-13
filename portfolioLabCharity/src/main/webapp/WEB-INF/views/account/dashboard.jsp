<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<title>Dashboard</title>
<jsp:include page="../fragments/headers/whiteBgHeader.jsp"/>
<div>
    <h1 class="text-white d-flex justify-content-center">User info</h1>

    <ul class="list-group justify-content-center d-flex mt-3">
        <li class="list-group-item bg-danger justify-content-center d-flex">Email: <c:out
                value="${user.email}"/></li>
        <li class="list-group-item bg-danger justify-content-center d-flex">Username: <c:out
                value="${user.username}"/></li>
        <li class="list-group-item bg-danger justify-content-center d-flex">Password: <c:out
                value="${user.password}"/></li>
    </ul>

</div>
<div class="d-flex align-items-center justify-content-center py-3">
    <a class="btn btn-outline-danger" href="<c:url value="/app/account/edit-details"/>">Edit details</a>
</div><jsp:include page="../fragments/footer.jsp"/>