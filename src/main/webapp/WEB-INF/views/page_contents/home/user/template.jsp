<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

<body>
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
            <div class="app-brand demo">
                <a href="index.html" class="app-brand-link">
              <span class="app-brand-logo demo">
                <img src="${contextPath}/frontend/assets/img/favicon/favicon.ico" style="height: 30px; width: 30px;">
              </span>
                    <span class="app-brand-text demo menu-text fw-bolder ms-2">mummoo</span>
                </a>

                <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                    <i class="bx bx-chevron-left bx-sm align-middle"></i>
                </a>
            </div>

            <div class="menu-inner-shadow"></div>

            <ul class="menu-inner py-1">
                <!-- Dashboard -->
                <li class="menu-item active">
                    <a href="index.html" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-home-circle"></i>
                        <div data-i18n="Analytics">홈</div>
                    </a>
                </li>


                <li class="menu-header small text-uppercase">
                    <span class="menu-header-text">INFOS</span>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bx-notepad'></i>
                        <div data-i18n="Basic">알림장</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bx-clipboard'></i>
                        <div data-i18n="Basic">공지사항</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bx-photo-album'></i>
                        <div data-i18n="Basic">앨범</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bx-calendar'></i>
                        <div data-i18n="Basic">일정표</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bx-bone'></i>
                        <div data-i18n="Basic">식단표</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bxs-capsule'></i>
                        <div data-i18n="Basic">투약의뢰서</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bx-calendar-check'></i>
                        <div data-i18n="Basic">출석부</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bxs-graduation'></i>
                        <div data-i18n="Basic">교육프로그램</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bx-briefcase-alt-2'></i>
                        <div data-i18n="Basic">입소정보 관리</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="cards-basic.html" class="menu-link">
                        <i class='menu-icon tf-icons bx bx-bus'></i>
                        <div data-i18n="Basic">승하차</div>
                    </a>
                </li>
            </ul>

        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
            <!-- Navbar -->

            <nav
                    class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                    id="layout-navbar"
            >
                <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                    <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                        <i class="bx bx-menu bx-sm"></i>
                    </a>
                </div>

                <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                    <!-- Search -->
                    <div class="navbar-nav align-items-center">
                        <div class="nav-item d-flex align-items-center">
                            <i class="bx bx-search fs-4 lh-0"></i>
                            <input
                                    type="text"
                                    class="form-control border-0 shadow-none"
                                    placeholder="Search..."
                                    aria-label="Search..."
                            />
                        </div>
                    </div>
                    <!-- /Search -->

                    <ul class="navbar-nav flex-row align-items-center ms-auto">
                        <!-- Place this tag where you want the button to render. -->

                        <!-- User -->
                        <li class="nav-item navbar-dropdown dropdown-user dropdown">
                            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);"
                               data-bs-toggle="dropdown">
                                <div class="avatar avatar-online">
                                    <img src="${contextPath}/frontend/assets/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle"/>
                                </div>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <a class="dropdown-item" href="#">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar avatar-online">
                                                    <img src="${contextPath}/frontend/assets/img/avatars/1.png" alt
                                                         class="w-px-40 h-auto rounded-circle"/>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <span class="fw-semibold d-block">John Doe</span>
                                                <small class="text-muted">Admin</small>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">
                                        <i class="bx bx-user me-2"></i>
                                        <span class="align-middle">My Profile</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">
                                        <i class="bx bx-cog me-2"></i>
                                        <span class="align-middle">Settings</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="${contextPath}/pages/login">
                                        <i class="bx bx-power-off me-2"></i>
                                        <span class="align-middle">Log Out</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!--/ User -->
                    </ul>
                </div>
            </nav>

            <!-- / Navbar -->

            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                    <div class="row">
                        <div class="row">
                        </div>
                    </div>
                </div>
            </div>


