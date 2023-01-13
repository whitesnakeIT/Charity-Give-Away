<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>

<%--<head>--%>

<%--    <meta charset="utf-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--    <meta name="description" content="">--%>
<%--    <meta name="author" content="">--%>

<%--    <title>Oddam w dobre ręce</title>--%>

<%--    <!-- Custom fonts for this template-->--%>
<%--    <link href="../../../../resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">--%>
<%--    <link--%>
<%--            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"--%>
<%--            rel="stylesheet">--%>

<%--    <!-- Custom styles for this template-->--%>
<%--    <link href="../../../../resources/admin/css/sb-admin-2.min.css" rel="stylesheet">--%>

<%--</head>--%>

<%--<body id="page-top">--%>
<jsp:include page="fragments/header.jsp"/>

<%--<!-- Page Wrapper -->--%>
<%--<div id="wrapper">--%>

   <%-- <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="/admin/panel"/>">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Admin panel</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="<c:url value="/"/>">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Oddaj niechciane rzeczy</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Interface
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Użytkownicy</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Typy użytkowników</h6>
                    <a class="collapse-item" href="<c:url value="/admin/admins/all"/>">Administratorzy</a>
                    <a class="collapse-item" href="<c:url value="/admin/users/all"/>">Zwykli użytkownicy</a>
                </div>
            </div>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
               aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Instytucje</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Instytucje</h6>
                    <a class="collapse-item" href="<c:url value="/admin/institutions/list"/>">Lista</a>
                    <a class="collapse-item" href="<c:url value="/admin/institutions/add"/>">Dodaj instytucję</a>

                </div>
            </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        &lt;%&ndash;    <!-- Heading -->&ndash;%&gt;
        &lt;%&ndash;    <div class="sidebar-heading">&ndash;%&gt;
        &lt;%&ndash;      Addons&ndash;%&gt;
        &lt;%&ndash;    </div>&ndash;%&gt;

        &lt;%&ndash;    <!-- Nav Item - Pages Collapse Menu -->&ndash;%&gt;
        &lt;%&ndash;    <li class="nav-item">&ndash;%&gt;
        &lt;%&ndash;      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"&ndash;%&gt;
        &lt;%&ndash;         aria-expanded="true" aria-controls="collapsePages">&ndash;%&gt;
        &lt;%&ndash;        <i class="fas fa-fw fa-folder"></i>&ndash;%&gt;
        &lt;%&ndash;        <span>Pages</span>&ndash;%&gt;
        &lt;%&ndash;      </a>&ndash;%&gt;
        &lt;%&ndash;      <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">&ndash;%&gt;
        &lt;%&ndash;        <div class="bg-white py-2 collapse-inner rounded">&ndash;%&gt;
        &lt;%&ndash;          <h6 class="collapse-header">Login Screens:</h6>&ndash;%&gt;
        &lt;%&ndash;          <a class="collapse-item" href="login.html">Login</a>&ndash;%&gt;
        &lt;%&ndash;          <a class="collapse-item" href="register.html">Register</a>&ndash;%&gt;
        &lt;%&ndash;          <a class="collapse-item" href="forgot-password.html">Forgot Password</a>&ndash;%&gt;
        &lt;%&ndash;          <div class="collapse-divider"></div>&ndash;%&gt;
        &lt;%&ndash;          <h6 class="collapse-header">Other Pages:</h6>&ndash;%&gt;
        &lt;%&ndash;          <a class="collapse-item" href="404.html">404 Page</a>&ndash;%&gt;
        &lt;%&ndash;          <a class="collapse-item" href="blank.html">Blank Page</a>&ndash;%&gt;
        &lt;%&ndash;        </div>&ndash;%&gt;
        &lt;%&ndash;      </div>&ndash;%&gt;
        &lt;%&ndash;    </li>&ndash;%&gt;

        &lt;%&ndash;    <!-- Nav Item - Charts -->&ndash;%&gt;
        &lt;%&ndash;    <li class="nav-item">&ndash;%&gt;
        &lt;%&ndash;      <a class="nav-link" href="charts.html">&ndash;%&gt;
        &lt;%&ndash;        <i class="fas fa-fw fa-chart-area"></i>&ndash;%&gt;
        &lt;%&ndash;        <span>Charts</span></a>&ndash;%&gt;
        &lt;%&ndash;    </li>&ndash;%&gt;

        &lt;%&ndash;    <!-- Nav Item - Tables -->&ndash;%&gt;
        &lt;%&ndash;    <li class="nav-item">&ndash;%&gt;
        &lt;%&ndash;      <a class="nav-link" href="tables.html">&ndash;%&gt;
        &lt;%&ndash;        <i class="fas fa-fw fa-table"></i>&ndash;%&gt;
        &lt;%&ndash;        <span>Tables</span></a>&ndash;%&gt;
        &lt;%&ndash;    </li>&ndash;%&gt;

        &lt;%&ndash;    <!-- Divider -->&ndash;%&gt;
        &lt;%&ndash;    <hr class="sidebar-divider d-none d-md-block">&ndash;%&gt;

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

        &lt;%&ndash;    <!-- Sidebar Message -->&ndash;%&gt;
        &lt;%&ndash;    <div class="sidebar-card d-none d-lg-flex">&ndash;%&gt;
        &lt;%&ndash;      <img class="sidebar-card-illustration mb-2" src="../../../../resources/admin/img/undraw_rocket.svg" alt="...">&ndash;%&gt;
        &lt;%&ndash;      <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>&ndash;%&gt;
        &lt;%&ndash;      <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>&ndash;%&gt;
        &lt;%&ndash;    </div>&ndash;%&gt;

    </ul>
    <!-- End of Sidebar -->
--%>
    <jsp:include page="fragments/sidebar.jsp"/>
    <!-- Content Wrapper -->
<%--    <div id="content-wrapper" class="d-flex flex-column">--%>

<%--        <!-- Main Content -->--%>
<%--        <div id="content">--%>

<%--            <!-- Topbar -->--%>
<%--            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">--%>

<%--                <!-- Sidebar Toggle (Topbar) -->--%>
<%--                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">--%>
<%--                    <i class="fa fa-bars"></i>--%>
<%--                </button>--%>

                <!-- Topbar Search -->
                <%--        <form--%>
                <%--                class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">--%>
                <%--          <div class="input-group">--%>
                <%--            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."--%>
                <%--                   aria-label="Search" aria-describedby="basic-addon2">--%>
                <%--            <div class="input-group-append">--%>
                <%--              <button class="btn btn-primary" type="button">--%>
                <%--                <i class="fas fa-search fa-sm"></i>--%>
                <%--              </button>--%>
                <%--            </div>--%>
                <%--          </div>--%>
                <%--        </form>--%>

                <jsp:include page="fragments/topbar.jsp"/>
<%--                <!-- Topbar Navbar -->--%>
<%--                <ul class="navbar-nav ml-auto">--%>

<%--                    &lt;%&ndash;          <!-- Nav Item - Search Dropdown (Visible Only XS) -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;          <li class="nav-item dropdown no-arrow d-sm-none">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <i class="fas fa-search fa-fw"></i>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <!-- Dropdown - Messages -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                 aria-labelledby="searchDropdown">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <form class="form-inline mr-auto w-100 navbar-search">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="input-group">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <input type="text" class="form-control bg-light border-0 small"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                         placeholder="Search for..." aria-label="Search"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                         aria-describedby="basic-addon2">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="input-group-append">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    <button class="btn btn-primary" type="button">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                      <i class="fas fa-search fa-sm"></i>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    </button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </form>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;          </li>&ndash;%&gt;--%>

<%--                    &lt;%&ndash;          <!-- Nav Item - Alerts -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;          <li class="nav-item dropdown no-arrow mx-1">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <i class="fas fa-bell fa-fw"></i>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <!-- Counter - Alerts -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <span class="badge badge-danger badge-counter">3+</span>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <!-- Dropdown - Alerts -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                 aria-labelledby="alertsDropdown">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <h6 class="dropdown-header">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                Alerts Center&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </h6>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item d-flex align-items-center" href="#">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="mr-3">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="icon-circle bg-primary">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    <i class="fas fa-file-alt text-white"></i>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="small text-gray-500">December 12, 2019</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <span class="font-weight-bold">A new monthly report is ready to download!</span>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item d-flex align-items-center" href="#">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="mr-3">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="icon-circle bg-success">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    <i class="fas fa-donate text-white"></i>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="small text-gray-500">December 7, 2019</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  $290.29 has been deposited into your account!&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item d-flex align-items-center" href="#">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="mr-3">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="icon-circle bg-warning">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    <i class="fas fa-exclamation-triangle text-white"></i>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="small text-gray-500">December 2, 2019</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  Spending Alert: We've noticed unusually high spending for your account.&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;          </li>&ndash;%&gt;--%>

<%--                    &lt;%&ndash;          <!-- Nav Item - Messages -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;          <li class="nav-item dropdown no-arrow mx-1">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <i class="fas fa-envelope fa-fw"></i>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <!-- Counter - Messages -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <span class="badge badge-danger badge-counter">7</span>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <!-- Dropdown - Messages -->&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                 aria-labelledby="messagesDropdown">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <h6 class="dropdown-header">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                Message Center&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </h6>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item d-flex align-items-center" href="#">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="dropdown-list-image mr-3">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <img class="rounded-circle" src="../../../../resources/admin/img/undraw_profile_1.svg"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                       alt="...">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="status-indicator bg-success"></div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="font-weight-bold">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="text-truncate">Hi there! I am wondering if you can help me with a&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    problem I've been having.</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="small text-gray-500">Emily Fowler · 58m</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item d-flex align-items-center" href="#">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="dropdown-list-image mr-3">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <img class="rounded-circle" src="../../../../resources/admin/img/undraw_profile_2.svg"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                       alt="...">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="status-indicator"></div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="text-truncate">I have the photos that you ordered last month, how&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    would you like them sent to you?</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="small text-gray-500">Jae Chun · 1d</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item d-flex align-items-center" href="#">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="dropdown-list-image mr-3">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <img class="rounded-circle" src="../../../../resources/admin/img/undraw_profile_3.svg"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                       alt="...">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="status-indicator bg-warning"></div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="text-truncate">Last month's report looks great, I am very happy with&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    the progress so far, keep up the good work!</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="small text-gray-500">Morgan Alvarez · 2d</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item d-flex align-items-center" href="#">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div class="dropdown-list-image mr-3">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                       alt="...">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="status-indicator bg-success"></div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                <div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="text-truncate">Am I a good boy? The reason I ask is because someone&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    told me that people say this to all dogs, even if they aren't good...</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                  <div class="small text-gray-500">Chicken the Dog · 2w</div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;              <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;          </li>&ndash;%&gt;--%>

<%--                    <div class="topbar-divider d-none d-sm-block"></div>--%>

<%--                    <!-- Nav Item - User Information -->--%>
<%--                    <li class="nav-item dropdown no-arrow">--%>
<%--                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"--%>
<%--                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                            <span class="mr-2 d-none d-lg-inline text-gray-600 small"><sec:authentication--%>
<%--                                    property="name"/></span>--%>
<%--                            <img class="img-profile rounded-circle"--%>
<%--                                 src="../../../resources/admin/img/undraw_profile.svg">--%>
<%--                        </a>--%>
<%--                        <!-- Dropdown - User Information -->--%>
<%--                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"--%>
<%--                             aria-labelledby="userDropdown">--%>
<%--                            &lt;%&ndash;              <a class="dropdown-item" href="#">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                Profile&ndash;%&gt;--%>
<%--                            &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;              <a class="dropdown-item" href="#">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                Settings&ndash;%&gt;--%>
<%--                            &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;              <a class="dropdown-item" href="#">&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;                Activity Log&ndash;%&gt;--%>
<%--                            &lt;%&ndash;              </a>&ndash;%&gt;--%>
<%--                            &lt;%&ndash;              <div class="dropdown-divider"></div>&ndash;%&gt;--%>
<%--                            <a class="dropdown-item" href="<c:url value="/logout"/> " data-toggle="modal"--%>
<%--                               data-target="#logoutModal">--%>
<%--                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>--%>
<%--                                Wyloguj--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </li>--%>

<%--                </ul>--%>

<%--            </nav>--%>
<%--            <!-- End of Topbar -->--%>

            <%--      <!-- Begin Page Content -->--%>
            <%--      <div class="container-fluid">--%>

            <%--        <!-- Page Heading -->--%>
            <%--        <div class="d-sm-flex align-items-center justify-content-between mb-4">--%>
            <%--          <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>--%>
            <%--          <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i--%>
            <%--                  class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>--%>
            <%--        </div>--%>

            <%--        <!-- Content Row -->--%>
            <%--        <div class="row">--%>

            <%--          <!-- Earnings (Monthly) Card Example -->--%>
            <%--          <div class="col-xl-3 col-md-6 mb-4">--%>
            <%--            <div class="card border-left-primary shadow h-100 py-2">--%>
            <%--              <div class="card-body">--%>
            <%--                <div class="row no-gutters align-items-center">--%>
            <%--                  <div class="col mr-2">--%>
            <%--                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">--%>
            <%--                      Earnings (Monthly)</div>--%>
            <%--                    <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>--%>
            <%--                  </div>--%>
            <%--                  <div class="col-auto">--%>
            <%--                    <i class="fas fa-calendar fa-2x text-gray-300"></i>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--            </div>--%>
            <%--          </div>--%>

            <%--          <!-- Earnings (Monthly) Card Example -->--%>
            <%--          <div class="col-xl-3 col-md-6 mb-4">--%>
            <%--            <div class="card border-left-success shadow h-100 py-2">--%>
            <%--              <div class="card-body">--%>
            <%--                <div class="row no-gutters align-items-center">--%>
            <%--                  <div class="col mr-2">--%>
            <%--                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">--%>
            <%--                      Earnings (Annual)</div>--%>
            <%--                    <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>--%>
            <%--                  </div>--%>
            <%--                  <div class="col-auto">--%>
            <%--                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--            </div>--%>
            <%--          </div>--%>

            <%--          <!-- Earnings (Monthly) Card Example -->--%>
            <%--          <div class="col-xl-3 col-md-6 mb-4">--%>
            <%--            <div class="card border-left-info shadow h-100 py-2">--%>
            <%--              <div class="card-body">--%>
            <%--                <div class="row no-gutters align-items-center">--%>
            <%--                  <div class="col mr-2">--%>
            <%--                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks--%>
            <%--                    </div>--%>
            <%--                    <div class="row no-gutters align-items-center">--%>
            <%--                      <div class="col-auto">--%>
            <%--                        <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>--%>
            <%--                      </div>--%>
            <%--                      <div class="col">--%>
            <%--                        <div class="progress progress-sm mr-2">--%>
            <%--                          <div class="progress-bar bg-info" role="progressbar"--%>
            <%--                               style="width: 50%" aria-valuenow="50" aria-valuemin="0"--%>
            <%--                               aria-valuemax="100"></div>--%>
            <%--                        </div>--%>
            <%--                      </div>--%>
            <%--                    </div>--%>
            <%--                  </div>--%>
            <%--                  <div class="col-auto">--%>
            <%--                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--            </div>--%>
            <%--          </div>--%>

            <%--          <!-- Pending Requests Card Example -->--%>
            <%--          <div class="col-xl-3 col-md-6 mb-4">--%>
            <%--            <div class="card border-left-warning shadow h-100 py-2">--%>
            <%--              <div class="card-body">--%>
            <%--                <div class="row no-gutters align-items-center">--%>
            <%--                  <div class="col mr-2">--%>
            <%--                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">--%>
            <%--                      Pending Requests</div>--%>
            <%--                    <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>--%>
            <%--                  </div>--%>
            <%--                  <div class="col-auto">--%>
            <%--                    <i class="fas fa-comments fa-2x text-gray-300"></i>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--            </div>--%>
            <%--          </div>--%>
            <%--        </div>--%>

            <%--        <!-- Content Row -->--%>

            <%--        <div class="row">--%>

            <%--          <!-- Area Chart -->--%>
            <%--          <div class="col-xl-8 col-lg-7">--%>
            <%--            <div class="card shadow mb-4">--%>
            <%--              <!-- Card Header - Dropdown -->--%>
            <%--              <div--%>
            <%--                      class="card-header py-3 d-flex flex-row align-items-center justify-content-between">--%>
            <%--                <h6 class="m-0 font-weight-bold text-primary">Earnings Overview</h6>--%>
            <%--                <div class="dropdown no-arrow">--%>
            <%--                  <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"--%>
            <%--                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
            <%--                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>--%>
            <%--                  </a>--%>
            <%--                  <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"--%>
            <%--                       aria-labelledby="dropdownMenuLink">--%>
            <%--                    <div class="dropdown-header">Dropdown Header:</div>--%>
            <%--                    <a class="dropdown-item" href="#">Action</a>--%>
            <%--                    <a class="dropdown-item" href="#">Another action</a>--%>
            <%--                    <div class="dropdown-divider"></div>--%>
            <%--                    <a class="dropdown-item" href="#">Something else here</a>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <!-- Card Body -->--%>
            <%--              <div class="card-body">--%>
            <%--                <div class="chart-area">--%>
            <%--                  <canvas id="myAreaChart"></canvas>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--            </div>--%>
            <%--          </div>--%>

            <%--          <!-- Pie Chart -->--%>
            <%--          <div class="col-xl-4 col-lg-5">--%>
            <%--            <div class="card shadow mb-4">--%>
            <%--              <!-- Card Header - Dropdown -->--%>
            <%--              <div--%>
            <%--                      class="card-header py-3 d-flex flex-row align-items-center justify-content-between">--%>
            <%--                <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>--%>
            <%--                <div class="dropdown no-arrow">--%>
            <%--                  <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"--%>
            <%--                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
            <%--                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>--%>
            <%--                  </a>--%>
            <%--                  <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"--%>
            <%--                       aria-labelledby="dropdownMenuLink">--%>
            <%--                    <div class="dropdown-header">Dropdown Header:</div>--%>
            <%--                    <a class="dropdown-item" href="#">Action</a>--%>
            <%--                    <a class="dropdown-item" href="#">Another action</a>--%>
            <%--                    <div class="dropdown-divider"></div>--%>
            <%--                    <a class="dropdown-item" href="#">Something else here</a>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <!-- Card Body -->--%>
            <%--              <div class="card-body">--%>
            <%--                <div class="chart-pie pt-4 pb-2">--%>
            <%--                  <canvas id="myPieChart"></canvas>--%>
            <%--                </div>--%>
            <%--                <div class="mt-4 text-center small">--%>
            <%--                                        <span class="mr-2">--%>
            <%--                                            <i class="fas fa-circle text-primary"></i> Direct--%>
            <%--                                        </span>--%>
            <%--                  <span class="mr-2">--%>
            <%--                                            <i class="fas fa-circle text-success"></i> Social--%>
            <%--                                        </span>--%>
            <%--                  <span class="mr-2">--%>
            <%--                                            <i class="fas fa-circle text-info"></i> Referral--%>
            <%--                                        </span>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--            </div>--%>
            <%--          </div>--%>
            <%--        </div>--%>

            <%--        <!-- Content Row -->--%>
            <%--        <div class="row">--%>

            <%--          <!-- Content Column -->--%>
            <%--          <div class="col-lg-6 mb-4">--%>

            <%--            <!-- Project Card Example -->--%>
            <%--            <div class="card shadow mb-4">--%>
            <%--              <div class="card-header py-3">--%>
            <%--                <h6 class="m-0 font-weight-bold text-primary">Projects</h6>--%>
            <%--              </div>--%>
            <%--              <div class="card-body">--%>
            <%--                <h4 class="small font-weight-bold">Server Migration <span--%>
            <%--                        class="float-right">20%</span></h4>--%>
            <%--                <div class="progress mb-4">--%>
            <%--                  <div class="progress-bar bg-danger" role="progressbar" style="width: 20%"--%>
            <%--                       aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>--%>
            <%--                </div>--%>
            <%--                <h4 class="small font-weight-bold">Sales Tracking <span--%>
            <%--                        class="float-right">40%</span></h4>--%>
            <%--                <div class="progress mb-4">--%>
            <%--                  <div class="progress-bar bg-warning" role="progressbar" style="width: 40%"--%>
            <%--                       aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>--%>
            <%--                </div>--%>
            <%--                <h4 class="small font-weight-bold">Customer Database <span--%>
            <%--                        class="float-right">60%</span></h4>--%>
            <%--                <div class="progress mb-4">--%>
            <%--                  <div class="progress-bar" role="progressbar" style="width: 60%"--%>
            <%--                       aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>--%>
            <%--                </div>--%>
            <%--                <h4 class="small font-weight-bold">Payout Details <span--%>
            <%--                        class="float-right">80%</span></h4>--%>
            <%--                <div class="progress mb-4">--%>
            <%--                  <div class="progress-bar bg-info" role="progressbar" style="width: 80%"--%>
            <%--                       aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>--%>
            <%--                </div>--%>
            <%--                <h4 class="small font-weight-bold">Account Setup <span--%>
            <%--                        class="float-right">Complete!</span></h4>--%>
            <%--                <div class="progress">--%>
            <%--                  <div class="progress-bar bg-success" role="progressbar" style="width: 100%"--%>
            <%--                       aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--            </div>--%>

            <%--            <!-- Color System -->--%>
            <%--            <div class="row">--%>
            <%--              <div class="col-lg-6 mb-4">--%>
            <%--                <div class="card bg-primary text-white shadow">--%>
            <%--                  <div class="card-body">--%>
            <%--                    Primary--%>
            <%--                    <div class="text-white-50 small">#4e73df</div>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <div class="col-lg-6 mb-4">--%>
            <%--                <div class="card bg-success text-white shadow">--%>
            <%--                  <div class="card-body">--%>
            <%--                    Success--%>
            <%--                    <div class="text-white-50 small">#1cc88a</div>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <div class="col-lg-6 mb-4">--%>
            <%--                <div class="card bg-info text-white shadow">--%>
            <%--                  <div class="card-body">--%>
            <%--                    Info--%>
            <%--                    <div class="text-white-50 small">#36b9cc</div>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <div class="col-lg-6 mb-4">--%>
            <%--                <div class="card bg-warning text-white shadow">--%>
            <%--                  <div class="card-body">--%>
            <%--                    Warning--%>
            <%--                    <div class="text-white-50 small">#f6c23e</div>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <div class="col-lg-6 mb-4">--%>
            <%--                <div class="card bg-danger text-white shadow">--%>
            <%--                  <div class="card-body">--%>
            <%--                    Danger--%>
            <%--                    <div class="text-white-50 small">#e74a3b</div>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <div class="col-lg-6 mb-4">--%>
            <%--                <div class="card bg-secondary text-white shadow">--%>
            <%--                  <div class="card-body">--%>
            <%--                    Secondary--%>
            <%--                    <div class="text-white-50 small">#858796</div>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <div class="col-lg-6 mb-4">--%>
            <%--                <div class="card bg-light text-black shadow">--%>
            <%--                  <div class="card-body">--%>
            <%--                    Light--%>
            <%--                    <div class="text-black-50 small">#f8f9fc</div>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--              <div class="col-lg-6 mb-4">--%>
            <%--                <div class="card bg-dark text-white shadow">--%>
            <%--                  <div class="card-body">--%>
            <%--                    Dark--%>
            <%--                    <div class="text-white-50 small">#5a5c69</div>--%>
            <%--                  </div>--%>
            <%--                </div>--%>
            <%--              </div>--%>
            <%--            </div>--%>

            <%--          </div>--%>

            <%--          <div class="col-lg-6 mb-4">--%>

            <%--            <!-- Illustrations -->--%>
            <%--            <div class="card shadow mb-4">--%>
            <%--              <div class="card-header py-3">--%>
            <%--                <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>--%>
            <%--              </div>--%>
            <%--              <div class="card-body">--%>
            <%--                <div class="text-center">--%>
            <%--                  <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;"--%>
            <%--                       src="../../../../resources/admin/img/undraw_posting_photo.svg" alt="...">--%>
            <%--                </div>--%>
            <%--                <p>Add some quality, svg illustrations to your project courtesy of <a--%>
            <%--                        target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a--%>
            <%--                  constantly updated collection of beautiful svg images that you can use--%>
            <%--                  completely free and without attribution!</p>--%>
            <%--                <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on--%>
            <%--                  unDraw &rarr;</a>--%>
            <%--              </div>--%>
            <%--            </div>--%>

            <%--            <!-- Approach -->--%>
            <%--            <div class="card shadow mb-4">--%>
            <%--              <div class="card-header py-3">--%>
            <%--                <h6 class="m-0 font-weight-bold text-primary">Development Approach</h6>--%>
            <%--              </div>--%>
            <%--              <div class="card-body">--%>
            <%--                <p>SB Admin 2 makes extensive use of Bootstrap 4 utility classes in order to reduce--%>
            <%--                  CSS bloat and poor page performance. Custom CSS classes are used to create--%>
            <%--                  custom components and custom utility classes.</p>--%>
            <%--                <p class="mb-0">Before working with this theme, you should become familiar with the--%>
            <%--                  Bootstrap framework, especially the utility classes.</p>--%>
            <%--              </div>--%>
            <%--            </div>--%>

            <%--          </div>--%>
            <%--        </div>--%>

            <%--      </div>--%>
            <%--      <!-- /.container-fluid -->--%>

                <!-- End of Main Content -->
        <jsp:include page="fragments/footer.jsp"/>
