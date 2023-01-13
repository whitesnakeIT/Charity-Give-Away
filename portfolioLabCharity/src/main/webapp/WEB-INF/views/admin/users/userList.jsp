<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<title>Lista wszystkich użytkowników</title>
<jsp:include page="../fragments/header.jsp"/>
<jsp:include page="../fragments/sidebar.jsp"/>

<jsp:include page="../fragments/topbar.jsp"/>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Użytkownicy</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Email</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Enabled</th>
                        <th>Aktywność</th>
                        <th>Edytuj</th>
                        <th>Usuń</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userList}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.email}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                            <td>${user.enabled}</td>
                            <c:if test="${user.enabled==true}">
                                <td><a href="<c:url value="/admin/users/block/${user.id}"/>">Blokuj</a></td>
                            </c:if>
                            <c:if test="${user.enabled==false}">
                                <td><a href="<c:url value="/admin/users/unblock/${user.id}"/>">Odblokuj</a></td>
                            </c:if>
                            <td><a href="<c:url value="/admin/users/edit/${user.id}"/>">Edytuj</a></td>
                            <td><a href="<c:url value="/admin/users/delete/${user.id}"/>">Usuń</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->


<jsp:include page="../fragments/footer.jsp"/>