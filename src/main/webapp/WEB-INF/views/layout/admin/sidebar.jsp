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
                <a href="${contextPath}/pages/home" class="app-brand-link">
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
                    <a href="${contextPath}/pages/home" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-home-circle"></i>
                        <div data-i18n="Analytics">홈</div>
                    </a>
                </li>


                <li class="menu-header small text-uppercase">
                    <span class="menu-header-text">Settings</span>
                </li>
                <!-- Settings -->

                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class='menu-icon tf-icons bx bx-envelope'></i>
                        <div data-i18n="Layouts">초대 및 관리</div>
                    </a>

                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="${contextPath}/admin/settings/inviteAdmin" class="menu-link">
                                <div data-i18n="Without menu">관리자 관리</div>
                            </a>
                        </li>

                        <li class="menu-item">
                            <a href="${contextPath}/admin/settings/inviteUser" class="menu-link">
                                <div data-i18n="Basic">원생관리</div>
                            </a>
                        </li>

                        <li class="menu-item">
                            <a href="${contextPath}/admin/settings/inviteTeacher" class="menu-link">
                                <div data-i18n="Basic">교사관리</div>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class='menu-icon tf-icons bx bxs-cog'></i>
                        <div data-i18n="Layouts">유치원 관리</div>
                    </a>

                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="${contextPath}/admin/settings/center" class="menu-link">
                                <i class='menu-icon tf-icons bx bxs-graduation'></i>
                                <div data-i18n="Basic">원 기본 정보 설정</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${contextPath}/admin/settings/classes" class="menu-link">
                                <i class='menu-icon tf-icons bx bxs-capsule'></i>
                                <div data-i18n="Basic">반 정보 관리</div>
                            </a>
                        </li>

<%--                        <li class="menu-item">--%>
<%--                            <a href="${contextPath}/admin/settings/users" class="menu-link">--%>
<%--                                <div data-i18n="Basic">원생관리</div>--%>
<%--                            </a>--%>
<%--                        </li>--%>

                        <li class="menu-item">
                            <a href="${contextPath}/admin/settings/coupons" class="menu-link">
                                <i class='menu-icon tf-icons bx bx-briefcase-alt-2'></i>
                                <div data-i18n="Basic">쿠폰 관리</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${contextPath}/admin/settings/classes" class="menu-link">
                                <i class='menu-icon tf-icons bx bx-bus'></i>
                                <div data-i18n="Basic">등하원 전자출결 설정</div>
                            </a>
                        </li>

                    </ul>
                </li>

                <li class="menu-header small text-uppercase">
                    <span class="menu-header-text">INFOS</span>
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

        </aside>
        <!-- / Menu -->