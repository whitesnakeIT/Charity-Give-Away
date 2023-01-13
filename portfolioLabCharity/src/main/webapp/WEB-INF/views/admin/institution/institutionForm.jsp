<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<title>Institution Form</title>
<jsp:include page="../fragments/header.jsp"/>
<jsp:include page="../fragments/sidebar.jsp"/>
<jsp:include page="../fragments/topbar.jsp"/>

<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Instytucje</h1>

    <!-- Form Example -->
    <div class="card shadow mb-4 ">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj nową instytucję</h6>
        </div>
        <div class="card-body">
            <form:form method="post" modelAttribute="institution">
                Nazwa
                <label>
                    <form:input path="name"/>
                    <form:errors path="name"/>
                </label>
                <div></div>
                Opis
                <label>
                    <form:input path="description"/>
                    <form:errors path="description"/>
                </label>
                <input class="btn-primary" type="submit" value="Dodaj">
            </form:form>
        </div>
    </div>
</div>
<jsp:include page="../fragments/footer.jsp"/>
