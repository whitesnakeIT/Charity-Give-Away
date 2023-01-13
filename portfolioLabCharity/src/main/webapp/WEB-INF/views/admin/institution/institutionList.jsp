<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<title>Lista instytucji</title>
<jsp:include page="../fragments/header.jsp"/>
<jsp:include page="../fragments/sidebar.jsp"/>

<%--<!-- Content Wrapper -->--%>
<%--<div id="content-wrapper" class="d-flex flex-column">--%>

<%--  <!-- Main Content -->--%>
<%--  <div id="content">--%>

<%--    <!-- Topbar -->--%>
<%--    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">--%>

<%--      <!-- Sidebar Toggle (Topbar) -->--%>
<%--      <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">--%>
<%--        <i class="fa fa-bars"></i>--%>
<%--      </button>--%>
<jsp:include page="../fragments/topbar.jsp"/>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Instytucje</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista zaufanych instytucji:</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nazwa</th>
                        <th>Opis</th>
                        <th>Edytuj</th>
                        <th>Usuń</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${institutions}" var="institution">
                        <tr>
                            <td>${institution.id}</td>
                            <td>${institution.name}</td>
                            <td>${institution.description}</td>
                            <td><a href="edit/${institution.id}">Edytuj</a></td>
                            <td><a href="delete/${institution.id}">Usuń</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<a class="btn btn-outline-primary" href="<c:url value="/admin/institutions/add"/>" >Dodaj instytucję</a>
</div>
<!-- /.container-fluid -->


<jsp:include page="../fragments/footer.jsp"/>