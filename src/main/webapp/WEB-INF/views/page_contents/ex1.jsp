<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="<%=request.getContextPath()%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="dt" value="<%=System.currentTimeMillis()%>"/>
<!-- Content wrapper -->
<div class="content-wrapper">


    <!-- Content -->

    <div class="container-xxl d-flex align-items-stretch flex-grow-1 p-0">


        <div class="flex-shrink-1 flex-grow-0 w-px-350 border-end container-p-x container-p-y">
            <div class="layout-example-sidebar layout-example-content-inner">
                <ul class="admin-menu-inner menu-inner py-1" >
                    <!-- Dashboard -->
                    <li class="menu-item active">
                        <a href="${contextPath}/pages/home" class="menu-link">
                            <i class="menu-icon tf-icons bx bx-home-circle"></i>
                            <div data-i18n="Analytics">홈</div>
                        </a>
                    </li>

                    <li class="menu-item">
                        <a href="${contextPath}/pages/notes" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-notepad'></i>
                            <div data-i18n="Basic">알림장</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/news" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-clipboard'></i>
                            <div data-i18n="Basic">공지사항</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/album" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-photo-album'></i>
                            <div data-i18n="Basic">앨범</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/calendar" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-calendar'></i>
                            <div data-i18n="Basic">일정표</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/diet" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-bone'></i>
                            <div data-i18n="Basic">식단표</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/med" class="menu-link">
                            <i class='menu-icon tf-icons bx bxs-capsule'></i>
                            <div data-i18n="Basic">투약의뢰서</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/attendance" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-calendar-check'></i>
                            <div data-i18n="Basic">출석부</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/education" class="menu-link">
                            <i class='menu-icon tf-icons bx bxs-graduation'></i>
                            <div data-i18n="Basic">교육프로그램</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/entrance" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-briefcase-alt-2'></i>
                            <div data-i18n="Basic">입소정보 관리</div>
                        </a>
                    </li>
                    <li class="menu-item">
                        <a href="${contextPath}/pages/transportation" class="menu-link">
                            <i class='menu-icon tf-icons bx bx-bus'></i>
                            <div data-i18n="Basic">승하차</div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="flex-shrink-1 flex-grow-1 container-p-x container-p-y">
            <!-- Layout Demo -->
            <div class="layout-demo-wrapper">
                <div class="layout-demo-placeholder">
                    <img src="../../assets/img/layouts/layout-content-navbar-and-sidebar-light.png" class="img-fluid" alt="Layout content navbar + sidebar" data-app-light-img="layouts/layout-content-navbar-and-sidebar-light.png" data-app-dark-img="layouts/layout-content-navbar-and-sidebar-dark.png">
                </div>
                <div class="layout-demo-info">
                    <h4>Layout content navbar + sidebar</h4>
                    <p>Container layout sets a <code>max-width</code> at each responsive breakpoint.</p>
                </div>
            </div>
            <!--/ Layout Demo -->
        </div>

    </div>
    <!-- / Content -->