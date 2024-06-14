<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>

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
                    <!-- User -->
                    <li class="nav-item navbar-dropdown dropdown-user dropdown">
                        <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);"
                           data-bs-toggle="dropdown">
                            <div class="">
                                <i class='bx bxs-cog'></i>
                            </div>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-start">
<%--                            <li>--%>
<%--                                <a class="dropdown-item" href="#">--%>
<%--                                    <div class="d-flex">--%>
<%--                                        <div class="flex-shrink-0 me-3">--%>
<%--                                            <div class="avatar avatar-online">--%>
<%--                                                <img src="${contextPath}${sessionScope.user.avatar}" alt--%>
<%--                                                     class="w-px-40 h-auto rounded-circle"/>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                        <div class="flex-grow-1">--%>
<%--                                            <span class="fw-semibold d-block">${sessionScope.user.username}</span>--%>
<%--                                            <small class="text-muted">${sessionScope.user.userType}</small>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <div class="dropdown-divider"></div>--%>
<%--                            </li>--%>
                            <li>
                                <a class="dropdown-item" href="${contextPath}/admin/settings">
                                    <i class="bx bx-user me-2"></i>
                                    <span class="align-middle">Settings</span>
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="${contextPath}/admin/settings/inviteAdmin">
                                    <i class="bx bx-cog me-2"></i>
                                    <span class="align-middle">멤버관리</span>
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="${contextPath}/user/billing">
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
                    <a
                            href="${contextPath}/admin/settings">유치원 설정</a>
                </div>
            </div>

            <!-- /Search -->

            <ul class="navbar-nav flex-row align-items-center ms-auto">
<%--                <!-- Place this tag where you want the button to render. -->--%>

