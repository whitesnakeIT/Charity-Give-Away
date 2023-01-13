<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<title>Edycja użyktownika</title>
<jsp:include page="../fragments/header.jsp"/>
<jsp:include page="../fragments/sidebar.jsp"/>
<jsp:include page="../fragments/topbar.jsp"/>

<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Edycja</h1>

    <!-- Form Example -->
    <div class="card shadow mb-4 ">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edytuj dane użytkownika</h6>
        </div>
        <div class="card-body">
            <form:form method="post" modelAttribute="user">
                Email
                <label>
                    <form:input path="email"/>
                    <form:errors path="email"/>
                </label>
                <div></div>
                Password
                <label>
                    <form:input path="password"/>
                    <form:errors path="password"/>
                </label>
                <div></div>
                Username
                <label>
                    <form:input path="username"/>
                    <form:errors path="username"/>
                </label>
                <input class="btn-primary" type="submit" value="Edit">
            </form:form>
        </div>
    </div>
</div>
<jsp:include page="../fragments/footer.jsp"/>
